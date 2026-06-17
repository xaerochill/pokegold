;	include	group.def
;bank3d	group	G_MUSIC4
	;
	;	town02
	;
	;	Converting on Thu May 27 07:58:45 1999
	;
	;				by ver 1.00
	;
;	public	mustown12
;mustown12:

Music_M_TOWN12:
	channel_count 4
	channel 1, Music_M_TOWN12_Ch1
	channel 2, Music_M_TOWN12_Ch2
	channel 3, Music_M_TOWN12_Ch3
	channel 4, Music_M_TOWN12_Ch4

Music_M_TOWN12_Ch1:
;----------------------------------------
	tempo 152
	volume 7, 7
	duty_cycle 3
	pitch_offset 1
	toggle_perfect_pitch
	vibrato 8, 1, 5
	stereo_panning TRUE, FALSE
; P1-1
	note_type 12, 11, 5
	rest 10
	octave 3
	note C_, 2
	note D_, 2
	note E_, 2

.loop10:
; P1-2
	note A_, 4
	note G#, 2
	note A_, 2
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
; P1-3
	note A_, 6
	note F_, 2
	note C_, 2
	octave 2
	note A#, 2
	octave 3
	note C_, 2
	note E_, 2
; P1-4
	note G_, 4
	note F#, 2
	note G_, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
; P1-5
	note G_, 6
	note E_, 2
	note C_, 2
	octave 2
	note A#, 2
	note A_, 2
	octave 3
	note C_, 2
; P1-6
	volume_envelope 11, 7
	octave 2
	note A#, 6
	octave 3
	note D_, 6
	note A#, 4
; P1-7
	note A_, 6
	note F_, 2
	note C_, 8
; P1-8
	octave 2
	note A#, 6
	octave 3
	note D_, 6
	volume_envelope 11, 5
	note A_, 4
; P1-9
	note G_, 4
	note E_, 4
	note D_, 4
	note E_, 4
; P1-10
	octave 2
	note A#, 6
	octave 3
	note D_, 6
	note A#, 4
; P1-11
	note A_, 6
	note F_, 2
	note C_, 4
	octave 2
	note B_, 4
; P1-12
	note A#, 6
	octave 3
	note C#, 2
	octave 2
	note A#, 4
	note G_, 4
; P1-13
	note A_, 4
	octave 3
	note C_, 4
	octave 2
	note A_, 4
	octave 3
	note C_, 4
	sound_loop 0, .loop10

Music_M_TOWN12_Ch2:
;----------------------------------------
	duty_cycle 3
	toggle_perfect_pitch
	vibrato 16, 3, 6
	stereo_panning FALSE, TRUE
; P2-1
	note_type 12, 12, 3
	octave 3
	note C_, 2
	note D_, 2
	note E_, 2
	note D_, 2
	note E_, 2
	note G_, 2
	note A_, 2
	note A#, 2

.loop20:
; P2-2
	volume_envelope 12, 6
	octave 4
	note C_, 6
	note D_, 4
	volume_envelope 11, 3
	note D_, 2
	note C_, 2
	octave 3
	note A#, 2
; P2-3
	volume_envelope 12, 7
	octave 4
	note C_, 6
	octave 3
	note A_, 2
	note F_, 8
; P2-4
	volume_envelope 12, 6
	note A#, 6
	octave 4
	note C_, 4
	volume_envelope 11, 3
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
; P2-5
	volume_envelope 12, 7
	note A#, 6
	note G_, 2
	note E_, 8
; P2-6
	volume_envelope 10, 0
	note D_, 6
	note F_, 6
	octave 4
	note D_, 4
; P2-7
	note C_, 6
	volume_envelope 10, 5
	octave 3
	note A_, 2
	volume_envelope 12, 7
	note F_, 8
; P2-8
	volume_envelope 10, 0
	note D_, 6
	note F_, 6
	octave 4
	note D_, 4
; P2-9
	volume_envelope 12, 7
	note C_, 16
; P2-10
	volume_envelope 11, 5
	octave 3
	note D_, 6
	note F_, 6
	octave 4
	note D_, 4
; P2-11
	note C_, 6
	octave 3
	note A_, 2
	note F_, 8
; P2-12
	note C#, 6
	note F_, 6
	note G_, 4
; P2-13
	volume_envelope 10, 0
	note F_, 8
	volume_envelope 10, 7
	note F_, 8
	sound_loop 0, .loop20

Music_M_TOWN12_Ch3:
;		init c 25
	note_type 12, 1, 6
	rest 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2

.loop30:
; P3-2
	note A_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note F_, 2
	note G_, 2
	note A_, 2
; P3-3
	note A_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 4
	octave 3
	note F_, 2
	note G_, 2
	note A_, 2
; P3-4
	note A#, 2
	note G_, 2
	note A#, 2
	octave 4
	note C_, 4
	octave 3
	note F_, 2
	note G_, 2
	note A_, 2
; P3-5
	note A#, 4
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
	note E_, 2
; P3-6
	note D_, 2
	note F_, 4
	note A#, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
; P3-7
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	note F_, 2
	note E_, 2
	note D#, 2
; P3-8
	note D_, 2
	note F_, 4
	note A#, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
; P3-9
	note E_, 2
	note G_, 2
	note A#, 2
	octave 4
	note C_, 2
	octave 3
	note A#, 2
	note A_, 2
	note G_, 2
	note F_, 2
; P3-10
	note D_, 2
	note F_, 4
	note A#, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
; P3-11
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	note F_, 2
	note E_, 2
	note D#, 2
; P3-12
	note C#, 2
	note F_, 4
	note A#, 2
	note F_, 2
	note A#, 2
	note A_, 2
	note G_, 2
; P3-13
	note F_, 2
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	note A_, 2
	note F_, 2
	note A_, 2
	sound_loop 0, .loop30

Music_M_TOWN12_Ch4:
;----------------------------------------
	toggle_noise 3
; P4-1
	drum_speed 12
	rest 16

.loop40:
; P4-2
	drum_note 2, 2
	rest 2
	drum_note 8, 2
	drum_note 2, 2
	drum_note 2, 2
	drum_note 7, 2
	drum_note 2, 4
; P4-3
	drum_note 2, 2
	rest 2
	drum_note 8, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 7, 4
	drum_note 2, 2
	drum_note 8, 2
	sound_loop 0, .loop40

