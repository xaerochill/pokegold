#!/usr/bin/env python3
"""
Wave Plotter for pokegold wave data.
Plots wave patterns from .asm files as line charts.

Usage:
    python tools/wave_plotter.py audio/wave_samples.asm -o waves.png
    python tools/wave_plotter.py audio/wave_samples.asm --all -o all_waves.png
    python tools/wave_plotter.py audio/wave_samples.asm --text
    python tools/wave_plotter.py audio/wave_samples.asm --compare audio/wave_samples.asm --index 0xA -o diff.png
"""

import argparse
import re
import sys

try:
    import matplotlib.pyplot as plt
    HAS_MATPLOTLIB = True
except ImportError:
    HAS_MATPLOTLIB = False


def parse_waves_from_file(filepath):
    """Parse wave data from an .asm file. Returns dict of {index: [32 nybbles]}.
    Also parses commented-out dn lines (prefixed with ;) for reference waves."""
    waves = {}
    with open(filepath) as f:
        content = f.read()

    # Match lines like: dn  0,  2,  4,  6, ... ; 0
    # or without the comment
    pattern = re.compile(
        r'^\s*dn\s+([\d\s,]+?)\s*(?:;.*)?$',
        re.MULTILINE
    )

    # Track the current label to know which section we're in
    current_label = None
    label_pattern = re.compile(r'^(\w+):', re.MULTILINE)

    lines = content.split('\n')
    wave_index = 0
    commented_index = 0

    for line in lines:
        # Check for label
        label_match = re.match(r'^(\w+):', line)
        if label_match:
            current_label = label_match.group(1)
            if current_label != 'WaveSamples':
                wave_index = 0  # reset for new section

        # Check for dn data (active or commented out)
        # Active: dn  0,  2,  4, ...
        # Commented: ;\tdn  2,  1, 14, ...
        dn_match = re.match(r'^\s*;?\s*dn\s+([\d\s,]+)', line)
        if dn_match:
            raw = dn_match.group(1).rstrip()
            values = [int(x.strip()) for x in raw.split(',') if x.strip()]
            if len(values) == 32:
                is_commented = line.strip().startswith(';')
                if is_commented:
                    key = f"commented_{commented_index}"
                    waves[key] = values
                    commented_index += 1
                else:
                    waves[wave_index] = values
                    wave_index += 1

    return waves


def parse_waves_with_names(filepath):
    """Parse waves and extract shape descriptions from comments.
    Also parses commented-out dn lines for reference waves."""
    waves = {}
    with open(filepath) as f:
        lines = f.readlines()

    wave_index = 0
    commented_index = 0
    pending_name = None

    for line in lines:
        # Check for shape description comment before dn line
        # Skip URLs and general notes
        desc_match = re.match(r'^\s*;\s*(?:Wave\s+\$?[\da-fA-F]+:\s*)?(.+)', line)
        if desc_match and 'Used by' not in desc_match.group(1) and 'Source' not in desc_match.group(1) and 'http' not in desc_match.group(1).lower() and 'NOTE:' not in desc_match.group(1):
            pending_name = desc_match.group(1).strip()

        # Check for dn data (active or commented out)
        dn_match = re.match(r'^\s*;?\s*dn\s+([\d\s,]+)', line)
        if dn_match:
            raw = dn_match.group(1).rstrip()
            values = [int(x.strip()) for x in raw.split(',') if x.strip()]
            if len(values) == 32:
                is_commented = line.strip().startswith(';')
                if is_commented:
                    # Extract name from trailing comment (e.g., "; RBY Lavender Town")
                    # Find the LAST semicolon to avoid matching the leading ;
                    last_semi = line.rfind(';')
                    if last_semi >= 0:
                        trailing_text = line[last_semi+1:].strip()
                        if trailing_text and 'dn' not in trailing_text.lower():
                            name = trailing_text
                        else:
                            name = f"Commented Wave {commented_index}"
                    else:
                        name = f"Commented Wave {commented_index}"
                    key = f"commented_{commented_index}"
                    waves[key] = {'values': values, 'name': name}
                    commented_index += 1
                else:
                    # For active waves, use trailing comment as name if it's meaningful
                    trailing = re.search(r';\s*(.+?)\s*$', line)
                    if trailing and not re.match(r'^[\da-fA-F]+$', trailing.group(1).strip()):
                        name = trailing.group(1).strip()
                    else:
                        name = pending_name or f"Wave ${wave_index:02X}"
                    waves[wave_index] = {'values': values, 'name': name}
                    pending_name = None
                    wave_index += 1

    return waves


def plot_waves(waves, title="Wave Patterns", output=None, show=True):
    """Plot multiple waves on a single figure."""
    if not HAS_MATPLOTLIB:
        print("Error: matplotlib is required. Install with: pip install matplotlib")
        if output:
            print(f"(headless mode — cannot display plot, but would save to {output})")
        sys.exit(1)

    n = len(waves)
    if n == 0:
        print("No waves to plot.")
        return

    fig, axes = plt.subplots(n, 1, figsize=(10, 2 * n), squeeze=False)
    fig.suptitle(title, fontsize=14, fontweight='bold')

    for i, (idx, wave_data) in enumerate(sorted(waves.items(), key=lambda x: (str(x[0]), x[0]))):
        ax = axes[i][0]
        if isinstance(wave_data, dict):
            values = wave_data['values']
            name = wave_data['name']
        else:
            values = wave_data
            name = f"Wave ${idx:02X}"

        x = list(range(32))
        ax.plot(x, values, 'b-', linewidth=1.5)
        ax.fill_between(x, values, alpha=0.1, color='blue')
        ax.set_ylim(-0.5, 15.5)
        ax.set_yticks(range(0, 16, 2))
        ax.set_ylabel(name, fontsize=9)
        ax.grid(True, alpha=0.3)
        ax.set_xlim(0, 31)

    axes[-1][0].set_xlabel("Sample Index")
    plt.tight_layout()

    if output:
        plt.savefig(output, dpi=150, bbox_inches='tight')
        print(f"Saved to {output}")
    elif show:
        plt.show()


def print_wave_table(waves, title="Wave Table"):
    """Print waves as text table for terminal viewing."""
    print(f"\n{title}")
    print("=" * 80)

    for idx in sorted(waves.keys(), key=lambda x: (str(x), x)):
        wave_data = waves[idx]
        if isinstance(wave_data, dict):
            values = wave_data['values']
            name = wave_data['name']
        else:
            values = wave_data
            name = f"Wave {idx}" if isinstance(idx, str) else f"Wave ${idx:02X}"

        idx_str = f"${idx:02X}" if isinstance(idx, int) else idx
        print(f"\n{name} ({idx_str}):")
        # Print as hex nybbles
        hex_str = ' '.join(f'{v:X}' for v in values)
        print(f"  {hex_str}")

        # Print as ASCII bar chart
        for v in values:
            bar = '█' * (v + 1)
            print(f"  {v:2d} {bar}")


def compare_waves(waves1, waves2, index, name1="File 1", name2="File 2", output=None):
    """Compare a specific wave index between two files."""
    if not HAS_MATPLOTLIB:
        print("Error: matplotlib is required for comparison plots.")
        if output:
            print(f"(headless mode — cannot display plot, but would save to {output})")
        sys.exit(1)

    if index not in waves1:
        print(f"Wave ${index:02X} not found in {name1}")
        return
    if index not in waves2:
        print(f"Wave ${index:02X} not found in {name2}")
        return

    v1 = waves1[index]['values'] if isinstance(waves1[index], dict) else waves1[index]
    v2 = waves2[index]['values'] if isinstance(waves2[index], dict) else waves2[index]

    fig, (ax1, ax2, ax3) = plt.subplots(3, 1, figsize=(10, 6))
    fig.suptitle(f"Wave ${index:02X} Comparison", fontsize=14, fontweight='bold')

    x = list(range(32))

    ax1.plot(x, v1, 'b-', linewidth=1.5, label=name1)
    ax1.fill_between(x, v1, alpha=0.1, color='blue')
    ax1.set_ylim(-0.5, 15.5)
    ax1.set_ylabel(name1)
    ax1.grid(True, alpha=0.3)
    ax1.legend()

    ax2.plot(x, v2, 'r-', linewidth=1.5, label=name2)
    ax2.fill_between(x, v2, alpha=0.1, color='red')
    ax2.set_ylim(-0.5, 15.5)
    ax2.set_ylabel(name2)
    ax2.grid(True, alpha=0.3)
    ax2.legend()

    diff = [a - b for a, b in zip(v1, v2)]
    ax3.bar(x, diff, color='green', alpha=0.7)
    ax3.set_ylabel("Difference")
    ax3.set_xlabel("Sample Index")
    ax3.grid(True, alpha=0.3)
    ax3.axhline(y=0, color='black', linewidth=0.5)

    plt.tight_layout()
    if output:
        plt.savefig(output, dpi=150, bbox_inches='tight')
        print(f"Saved to {output}")
    else:
        plt.show()


def main():
    parser = argparse.ArgumentParser(description='Plot pokegold wave patterns')
    parser.add_argument('file', help='Path to .asm file with wave data')
    parser.add_argument('--index', type=lambda x: int(x, 0), help='Plot specific wave index (e.g., 0xA)')
    parser.add_argument('--all', action='store_true', help='Plot all waves')
    parser.add_argument('--text', action='store_true', help='Print text table instead of plot')
    parser.add_argument('--output', '-o', help='Save plot to file (e.g., waves.png)')
    parser.add_argument('--compare', help='Second .asm file for comparison')
    parser.add_argument('--commented', action='store_true', help='Include commented-out dn lines (reference waves)')
    args = parser.parse_args()

    waves = parse_waves_with_names(args.file)

    # Filter out commented waves unless --commented is passed
    if not args.commented:
        waves = {k: v for k, v in waves.items() if not str(k).startswith('commented_')}

    if args.compare:
        waves2 = parse_waves_with_names(args.compare)
        idx = args.index if args.index is not None else 0
        compare_waves(waves, waves2, idx, args.file, args.compare, output=args.output)
        return

    if args.text:
        print_wave_table(waves, title=f"Waves from {args.file}")
        return

    if args.index is not None:
        if args.index in waves:
            plot_waves({args.index: waves[args.index]},
                      title=f"Wave ${args.index:02X} from {args.file}",
                      output=args.output)
        else:
            print(f"Wave ${args.index:02X} not found in {args.file}")
            sys.exit(1)
    elif args.all:
        plot_waves(waves, title=f"All Waves from {args.file}", output=args.output)
    else:
        # Default: show index 0
        plot_waves({0: waves[0]}, title=f"Wave 0 from {args.file}", output=args.output)


if __name__ == '__main__':
    main()
