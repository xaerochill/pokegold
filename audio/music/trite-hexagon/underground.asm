;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_UndergroundTunnel:
	channel_count 4
	channel 1, Music_UndergroundTunnel_Ch1
	channel 2, Music_UndergroundTunnel_Ch2
	channel 3, Music_UndergroundTunnel_Ch3
	channel 4, Music_UndergroundTunnel_Ch4

Music_UndergroundTunnel_Ch1:
	stereo_panning TRUE, FALSE
	volume 7, 7
	duty_cycle $3
	note_type 6, 7, 7
	tempo 159
;Bar 1
	rest 7
	octave 4
	note A#, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	note A#, 1
	note G#, 1
	note F#, 1
	rest 1
	note F#, 10
	rest 2
	octave 1
	stereo_panning FALSE, TRUE
	duty_cycle $0
	volume_envelope 7, 7
	note B_, 4
;Bar 2
	octave 2
	note E_, 4
	note A_, 4
	octave 3
	note D_, 4
	octave 2
	note A_, 4
	octave 3
	note D_, 4
	note G_, 2
	duty_cycle $1
	volume_envelope 12, 7
	note A_, 16
;Bar 3
	octave 3
	note F_, 8
	octave 1
	volume_envelope 7, 7
	stereo_panning TRUE, TRUE
	pitch_slide 1, 6, E_
	note E_, 8
	stereo_panning FALSE, TRUE
Music_UndergroundTunnel_Ch1_loop:
	octave 2
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 6, 7
	note E_, 2
	duty_cycle $3
	octave 3
	sound_call Music_UndergroundTunnel_Ch1_Type1
;Bar 4
	sound_call Music_UndergroundTunnel_Ch1_Type1
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 1
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 2
	rest 3
Music_UndergroundTunnel_Ch1_Loop1:
	sound_call Music_UndergroundTunnel_Ch1_Type1
	sound_loop 5, Music_UndergroundTunnel_Ch1_Loop1
;Bar 5
	sound_call Music_UndergroundTunnel_Ch1_Type2
;Bar 6
;Bar 7
Music_UndergroundTunnel_Ch1_Loop3:
	sound_call Music_UndergroundTunnel_Ch1_Type3
	sound_loop 6, Music_UndergroundTunnel_Ch1_Loop3
;Bar 8
;Bar 9
	volume_envelope 13, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 1
	volume_envelope 13, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 2
	rest 3
	sound_call Music_UndergroundTunnel_Ch1_Type3
	sound_call Music_UndergroundTunnel_Ch1_Type2
;Bar 10
;Bar 11
Music_UndergroundTunnel_Ch1_Loop4:
	sound_call Music_UndergroundTunnel_Ch1_Type3
	sound_loop 8, Music_UndergroundTunnel_Ch1_Loop4
;Bar 12
;Bar 13
	sound_call Music_UndergroundTunnel_Ch1_Type2
;Bar 14
;Bar 15
Music_UndergroundTunnel_Ch1_Loop5:
	sound_call Music_UndergroundTunnel_Ch1_Type3
	sound_loop 8, Music_UndergroundTunnel_Ch1_Loop5
;Bar 16
;Bar 17
	sound_call Music_UndergroundTunnel_Ch1_Type2
;Bar 18
;Bar 19
Music_UndergroundTunnel_Ch1_Loop2:
	sound_call Music_UndergroundTunnel_Ch1_Type1
	sound_loop 5, Music_UndergroundTunnel_Ch1_Loop2
;Bar 21
	sound_call Music_UndergroundTunnel_Ch1_Type3
	volume_envelope 13, 7
	note D_, 1
	volume_envelope 6, 7
	note D_, 2
	rest 5
	octave 2
	volume_envelope 10, 7
	note B_, 1
	volume_envelope 6, 7
	note B_, 2
	volume_envelope 4, 7
	note B_, 1
	octave 4
	volume_envelope 5, 2 ;Part 2
	duty_cycle $1
	note A_, 2
	octave 5
	note C#, 2
	note E_, 2
	note C#, 2
;Bar 22
Music_UndergroundTunnel_Ch1_Loop7:
	note A_, 2
	note E_, 2
	note C#, 1
	note C#, 1
	note E_, 2
	sound_loop 2, Music_UndergroundTunnel_Ch1_Loop7
	octave 6
	note C#, 2
	octave 5
	note A_, 2
	note E_, 2
	note A_, 2
	note D#, 2
	note F#, 2
	note B_, 2
	note F#, 2
;Bar 23
	sound_call Music_UndergroundTunnel_Ch1_Type4
	octave 6
	note F#, 2
	note D#, 2
	octave 5
	note B_, 2
	octave 6
	note D#, 1
	note D#, 1
	octave 5
	note D#, 2
	note F#, 2
	note B_, 2
	note F#, 2
;Bar 24
	sound_call Music_UndergroundTunnel_Ch1_Type4
	octave 6
	note F#, 2
	note D#, 2
	octave 5
	note B_, 2
	octave 6
	note D#, 2
	octave 5
	note C#, 2
	note F#, 2
	note A_, 2
	note F#, 2
;Bar 25
	sound_call Music_UndergroundTunnel_Ch1_Type5
	octave 6
	note F_, 2
	note C#, 2
	octave 5
	note A_, 1
	note A_, 1
	octave 6
	note C#, 2
	octave 5
	note C#, 2
	note F#, 2
	note A_, 2
	note F#, 2
;Bar 26
	sound_call Music_UndergroundTunnel_Ch1_Type5
	octave 6
	note F#, 2
	note C#, 2
	octave 5
	note A_, 1
	note A_, 1
	octave 6
	note C#, 2
	octave 5
	note D_, 1
	volume_envelope 6, 2
	note D_, 1
	volume_envelope 5, 2
	note F#, 2
	note A_, 2
	note F#, 2
;Bar 27
Music_UndergroundTunnel_Ch1_Loop6:
	octave 6
	note D_, 2
	octave 5
	note A_, 2
	note F#, 1
	note F#, 1
	note A_, 2
	sound_loop 2, Music_UndergroundTunnel_Ch1_Loop6
	octave 6
	note F#, 2
	note D_, 2
	octave 5
	note A_, 1
	note A_, 1
	octave 6
	note D_, 2
	octave 5
	note_type 12, 4, 8
	note B_, 10
	note_type 6, 4, 6
;Bar 28
	note B_, 12
	octave 2
	volume_envelope 10, 7
	note B_, 12
;Bar 29
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	stereo_panning TRUE, FALSE
	octave 3
	note C#, 2
	note D#, 2
	duty_cycle $0
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note E_, 1
	volume_envelope 3, 7
	note E_, 1
	rest 2
	volume_envelope 11, 7
	note E_, 1
	volume_envelope 3, 7
	note E_, 1
;Bar 30
	sound_call Music_UndergroundTunnel_Ch1_Bar32
;Bar 31
	sound_call Music_UndergroundTunnel_Ch1_Bar31
;Bar 32
	sound_call Music_UndergroundTunnel_Ch1_Bar32
;Bar 33
	sound_call Music_UndergroundTunnel_Ch1_Bar31
;Bar 34
	sound_call Music_UndergroundTunnel_Ch1_Bar32
;Bar 35
	sound_call Music_UndergroundTunnel_Ch1_Bar31
;Bar 36
	sound_call Music_UndergroundTunnel_Ch1_Bar32
;Bar 37
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note A_, 2
	note B_, 2
	octave 4
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 2
	volume_envelope 11, 7
	note C_, 8
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 2
	octave 3
	duty_cycle $3
	stereo_panning FALSE, TRUE
	volume_envelope 12, 7
	note F#, 2
	volume_envelope 3, 7
	note F#, 2
	rest 8
;Bar 38
	volume_envelope 12, 7
	note F#, 2
	volume_envelope 3, 7
	note F#, 2
	rest 8
	volume_envelope 12, 7
	note F#, 1
	volume_envelope 3, 7
	note F#, 1
	volume_envelope 12, 7
	note F#, 2
	note A_, 4
	note B_, 2
	volume_envelope 3, 7
	note B_, 2
	rest 8
;Bar 39
	volume_envelope 12, 7
	note B_, 2
	volume_envelope 3, 7
	note B_, 2
	rest 8
	volume_envelope 12, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 12, 7
	note B_, 2
	note A_, 2
	note B_, 2
	sound_loop 0, Music_UndergroundTunnel_Ch1_loop

Music_UndergroundTunnel_Ch1_Type1:
	volume_envelope 13, 7
	note E_, 1
	volume_envelope 6, 7
	note E_, 2
	rest 5
	sound_ret

Music_UndergroundTunnel_Ch1_Type2:
	volume_envelope 13, 7
	note C#, 1
	volume_envelope 6, 7
	note C#, 2
	rest 5
	sound_loop 8, Music_UndergroundTunnel_Ch1_Type2
	sound_ret

Music_UndergroundTunnel_Ch1_Type3:
	volume_envelope 13, 7
	note D#, 1
	volume_envelope 6, 7
	note D#, 2
	rest 5
	sound_ret

Music_UndergroundTunnel_Ch1_Type4:
	octave 6;
	note D#, 2
	octave 5
	note B_, 2
	note F#, 1
	note F#, 1
	note B_, 2
	sound_loop 2, Music_UndergroundTunnel_Ch1_Type4
	sound_ret

Music_UndergroundTunnel_Ch1_Type5:
	octave 6;
	note C#, 2
	octave 5
	note A_, 2
	note F#, 1
	note F#, 1
	note A_, 2
	sound_loop 2, Music_UndergroundTunnel_Ch1_Type5
	sound_ret

Music_UndergroundTunnel_Ch1_Bar32:
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note A_, 2
	note B_, 2
	octave 4
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 2
	volume_envelope 11, 7
	note C_, 8
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 2
	octave 3
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	rest 2
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	rest 2
	sound_ret

Music_UndergroundTunnel_Ch1_Bar31:
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note A_, 2
	note B_, 2
	octave 4
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 2
	volume_envelope 11, 7
	note C_, 8
	note D_, 1
	volume_envelope 3, 7
	note D_, 1
	rest 2
	octave 3
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 11, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	rest 4
	sound_ret

; ============================================================================================================

Music_UndergroundTunnel_Ch2:
	duty_cycle $2
	note_type 6, 13, 7
	vibrato 16, 4, 2
;Bar 1
	octave 4
	note A#, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 3
	note B_, 1
	note A#, 1
	note G#, 1
	note F#, 1
	note E_, 1
	note D#, 1
	note C#, 1
	octave 2
	note B_, 1
	note A#, 1
	note G#, 1
	volume_envelope 4, 7
	note G#, 2
	rest 10
	octave 1
	stereo_panning TRUE, FALSE
	volume_envelope 13, 7
	note B_, 2
	volume_envelope 6, 7
	note B_, 2
;Bar 2
	octave 2
	volume_envelope 13, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	octave 3
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 4, 7
	note D_, 2
	octave 2
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	octave 3
	volume_envelope 13, 7
	note D_, 2
	volume_envelope 4, 7
	note D_, 2
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	octave 4
	stereo_panning TRUE, FALSE
	volume_envelope 4, -6
	note C_, 16
	volume_envelope 13, 8
	note C_, 8
;Bar 3
	volume_envelope 4, -3
	note D_, 8
Music_UndergroundTunnel_Ch2_loop:
	volume_envelope 11, 7
	note E_, 3
	volume_envelope 4, 7
	note E_, 1
	octave 2
	sound_call Music_UndergroundTunnel_Ch2_Type1
;Bar 4
	sound_call Music_UndergroundTunnel_Ch2_Type1
	volume_envelope 13, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 1
	volume_envelope 13, 7
	note G#, 1
	volume_envelope 6, 7
	note G#, 2
	rest 3
	sound_call Music_UndergroundTunnel_Ch2_Type1
	sound_call Music_UndergroundTunnel_Ch2_Type1
;Bar 5
	sound_call Music_UndergroundTunnel_Ch2_Type1
	sound_call Music_UndergroundTunnel_Ch2_Type1
	sound_call Music_UndergroundTunnel_Ch2_Type1
	octave 3
	volume_envelope 14, 7
	vibrato 0, 4, 1
	note C#, 6
;Bar 6
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note E_, 6
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 14, 7
	note A_, 4
	volume_envelope 4, 7
	note A_, 2
	rest 2
	octave 4
	volume_envelope 14, 7
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note E_, 12
;Bar 7
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	rest 4
	volume_envelope 14, 7
	note E_, 8
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note D#, 2
	volume_envelope 4, 7
	note D#, 2
	rest 2
	volume_envelope 14, 7
	note E_, 2
;Bar 8
	note_type 12, 14, 7
	note F#, 12
	note_type 6, 13, 7
	vibrato 16, 4, 2
	duty_cycle $1
	octave 3
	note D#, 4
	octave 4
	note D#, 2
	note D_, 2
;Bar 9
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	octave 3
	volume_envelope 13, 7
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
	volume_envelope 13, 7
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	volume_envelope 13, 7
	note G_, 2
	volume_envelope 4, 7
	note G_, 2
	volume_envelope 13, 7
	note F#, 2
	note G_, 2
	note F#, 2
	note E_, 2
	note D#, 2
	volume_envelope 4, 7
	note D#, 2
	duty_cycle $2
	vibrato 0, 4, 1
	volume_envelope 14, 7
	note C#, 6
;Bar 10
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note E_, 6
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 14, 7
	note A_, 4
	volume_envelope 4, 7
	note A_, 2
	rest 2
	octave 4
	volume_envelope 14, 7
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note E_, 12
;Bar 11
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	rest 4
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 13, 7
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 14, 7
	note D#, 2
	volume_envelope 4, 7
	note D#, 2
	rest 2
	volume_envelope 14, 7
	note C#, 2
;Bar 12
	note D#, 8
	vibrato 16, 4, 2
	octave 3
	duty_cycle $1
	volume_envelope 13, 7
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	rest 2
	volume_envelope 13, 7
	note E_, 2
	note F#, 8
	duty_cycle $0
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
	rest 2
	volume_envelope 13, 7
	note A_, 2
;Bar 13
	note B_, 8
	duty_cycle $3
	octave 4
	note D#, 4
	note C_, 1
	volume_envelope 4, 7
	note C_, 1
	octave 3
	volume_envelope 13, 7
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 13, 7
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
	octave 4
	volume_envelope 13, 7
	note C_, 2
	volume_envelope 4, 7
	note C_, 2
	octave 3
	volume_envelope 11, 7
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
	duty_cycle $2
	volume_envelope 14, 7
	note C#, 1
	volume_envelope 4, 7
	note C#, 1
	volume_envelope 14, 7
	note C#, 1
	volume_envelope 4, 7
	note C#, 1
;Bar 14
	volume_envelope 14, 7
	note C#, 4
	octave 2
	volume_envelope 13, 7
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	octave 3
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	volume_envelope 14, 7
	note A_, 7
	volume_envelope 4, 7
	note A_, 1
	octave 4
	volume_envelope 14, 7
	note C#, 2
	volume_envelope 4, 7
	note C#, 2
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	octave 3
	volume_envelope 14, 7
	note B_, 1
	volume_envelope 4, 7
	note B_, 1
	volume_envelope 14, 7
	note B_, 1
	volume_envelope 4, 7
	note B_, 1
;Bar 15
	volume_envelope 14, 7
	note B_, 2
	volume_envelope 9, 7
	note G#, 1
	note F#, 1
	volume_envelope 14, 7
	note E_, 2
	volume_envelope 4, 7
	note E_, 2
	rest 4
	octave 4
	volume_envelope 14, 7
	note E_, 4
	note C#, 4
	note E_, 4
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	octave 3
	note_type 8, 13, 7
	note F#, 1
	note B_, 1
	octave 4
	note C#, 1
;Bar 16
	note_type 6, 14, 7
	note F#, 12
	duty_cycle $1
	volume_envelope 13, 7
	note A_, 2
	note B_, 2
	note A_, 2
	note G_, 2
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	volume_envelope 13, 7
	note D#, 2
	volume_envelope 13, 7
	note F#, 2
	note D#, 2
	octave 3
	note B_, 2
;Bar 17
	note A_, 2
	note B_, 2
	note A_, 2
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	rest 16
	rest 2
	duty_cycle $2
	volume_envelope 14, 7
	note C#, 2
	volume_envelope 13, 7
	note C_, 2
;Bar 18
	note C#, 4
	volume_envelope 14, 7
	note E_, 8
	volume_envelope 13, 7
	note A_, 4
	octave 4
	note C#, 4
	note E_, 4
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	rest 8
;Bar 19
	octave 3
	volume_envelope 14, 7
	note B_, 2
	volume_envelope 4, 7
	note B_, 2
	octave 4
	volume_envelope 13, 7
	note F#, 2
	volume_envelope 4, 7
	note F#, 2
	octave 3
	volume_envelope 14, 7
	note B_, 8
	octave 4
	note A_, 2
	volume_envelope 4, 7
	note A_, 2
	volume_envelope 14, 7
	note G#, 2
	volume_envelope 13, 7
	note A_, 2
	note G#, 2
	volume_envelope 14, 7
	note F#, 2
;Bar 20
	note E_, 16
	octave 3
	volume_envelope 13, 7
	note F#, 8
	note G#, 8
;Bar 21
	octave 3
	note A_, 8
	note B_, 8
	octave 4
	note D_, 8
	note E_, 2
	volume_envelope 5, 7
	note E_, 2
	rest 2
	volume_envelope 14, 7
	note C#, 1
	volume_envelope 5, 7
	note C#, 1
;Bar 22
	volume_envelope 14, 7
	note D#, 1
	note E_, 7
	volume_envelope 5, 7
	note E_, 2
	rest 6
	volume_envelope 14, 7
	note G#, 8
	note F#, 2
	note E_, 1
	volume_envelope 5, 7
	note E_, 1
	volume_envelope 14, 7
	note D#, 1
	volume_envelope 5, 7
	note D#, 1
	volume_envelope 14, 7
	note E_, 1
	volume_envelope 5, 7
	note E_, 1
;Bar 23
	volume_envelope 14, 7
	note F#, 8
	volume_envelope 5, 7
	note F#, 2
	rest 6
	volume_envelope 10, 7
	note B_, 2
	note A_, 1
	volume_envelope 4, 7
	note A_, 1
	volume_envelope 11, 7
	note F#, 1
	volume_envelope 4, 7
	note F#, 1
	volume_envelope 10, 7
	note D#, 1
	volume_envelope 4, 7
	note D#, 1
	duty_cycle $1
	volume_envelope 14, 7
	note F#, 2
	note D#, 1
	volume_envelope 5, 7
	note D#, 2
	rest 1
	volume_envelope 14, 7
	note E_, 1
	volume_envelope 5, 7
	note E_, 1
;Bar 24
	volume_envelope 13, 7
	note F_, 1
	volume_envelope 14, 7
	note F#, 15
	note B_, 8
	note A_, 2
	volume_envelope 5, 7
	note A_, 2
	rest 2
	volume_envelope 14, 7
	note B_, 1
	volume_envelope 5, 7
	note B_, 1
;Bar 25
	volume_envelope 14, 7
	note G#, 16
	volume_envelope 5, 7
	note G#, 2
	rest 6
	volume_envelope 14, 7
	note A_, 2
	note G#, 1
	volume_envelope 5, 7
	note G#, 1
	volume_envelope 14, 7
	note F#, 1
	volume_envelope 5, 7
	note F#, 1
	volume_envelope 14, 7
	note G#, 1
	volume_envelope 5, 7
	note G#, 1
;Bar 26
	volume_envelope 14, 7
	note A_, 15
	volume_envelope 5, 7
	note A_, 2
	rest 7
	volume_envelope 14, 7
	note A_, 1
	volume_envelope 5, 7
	note A_, 1
	volume_envelope 14, 7
	note D_, 1
	volume_envelope 5, 7
	note D_, 1
	rest 2
	volume_envelope 14, 7
	note F#, 2
;Bar 27
	volume_envelope 13, 7
	note G#, 1
	volume_envelope 14, 7
	note A_, 11
	octave 5
	note C#, 4
	volume_envelope 13, 7
	note D#, 2
	volume_envelope 5, 7
	note D#, 2
	octave 4
	volume_envelope 14, 7
	note G#, 2
	note A_, 2
	vibrato 18, 2, 2
	note_type 12, 11, 8
	note B_, 10
	note_type 6, 11, 5
;Bar 28
	note B_, 12
	volume_envelope 13, 7
	vibrato 0, 0, 0
	note B_, 12
;Bar 29
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	vibrato 8, 2, 2
	stereo_panning FALSE, TRUE
	volume_envelope 14, 7
	octave 5
	note C#, 2
	note D#, 2
	octave 4
	note A_, 2
	note B_, 2
	note A_, 2
	note F#, 2
;Bar 30
	note F#, 2
	rest 2
	note G#, 2
	rest 2
	note C_, 11
	rest 1
	octave 3
	note B_, 2
	octave 4
	volume_envelope 10, 7
	note D_, 1
	note D#, 1
	volume_envelope 13, 7
	note E_, 15
;Bar 31
	note D#, 1
	note D_, 7
	note C#, 1
	note C_, 6
	octave 3
	volume_envelope 10, 7
	note A#, 1
	note A_, 1
	volume_envelope 13, 7
	note G#, 2
	note A_, 2
	rest 1
	volume_envelope 10, 7
	note A#, 1
	volume_envelope 13, 7
	note B_, 4
;Bar 32
	volume_envelope 9, 7
	note G#, 1
	note F#, 1
	volume_envelope 13, 7
	note E_, 12
	rest 4
	note E_, 4
	note A_, 16
;Bar 33
	note G_, 8
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note F_, 2
	note A_, 2
	note B_, 2
	note A_, 2
	note F#, 2
;Bar 34
	note G#, 2
	rest 2
	note A_, 2
	volume_envelope 11, 7
	note G#, 1
	note A#, 1
	octave 5
	volume_envelope 13, 7
	note C_, 7
	volume_envelope 11, 7
	note C#, 1
	volume_envelope 13, 7
	note D_, 3
	volume_envelope 7, 7
	note C_, 1
	octave 4
	volume_envelope 13, 7
	note A_, 4
	note B_, 15
;Bar 35
	volume_envelope 9, 7
	note B_, 1
	volume_envelope 13, 7
	note A_, 6
	volume_envelope 9, 7
	note G#, 1
	note G_, 1
	volume_envelope 13, 7
	note F_, 6
	volume_envelope 9, 7
	note D_, 1
	octave 3
	note B_, 1
	volume_envelope 13, 7
	note G#, 2
	note A_, 2
	rest 2
	note B_, 6
;Bar 36
	note A_, 2
	note B_, 2
	rest 2
	octave 4
	note C_, 6
	note E_, 2
	octave 3
	note B_, 2
	rest 2
	octave 4
	note_type 12, 13, 7
	note B_, 13
	note_type 6, 13, 7
;Bar 37
	rest 8
	octave 3
	duty_cycle $2
	stereo_panning TRUE, FALSE
	note B_, 2
	volume_envelope 3, 7
	note B_, 2
	rest 8
;Bar 38
	volume_envelope 12, 7
	note B_, 2
	volume_envelope 3, 7
	note B_, 2
	rest 8
	volume_envelope 12, 7
	note B_, 1
	volume_envelope 3, 7
	note B_, 1
	volume_envelope 12, 7
	note B_, 2
	octave 4
	note C#, 4
	volume_envelope 13, 7
	note D#, 2
	volume_envelope 3, 7
	note D#, 2
	rest 8
;Bar 39
	volume_envelope 13, 7
	note D#, 2
	volume_envelope 3, 7
	note D#, 2
	rest 8
	volume_envelope 12, 7
	note D#, 1
	volume_envelope 3, 7
	note D#, 1
	volume_envelope 12, 7
	note D#, 2
	note C#, 2
	note D#, 2
	sound_loop 0, Music_UndergroundTunnel_Ch2_loop

Music_UndergroundTunnel_Ch2_Type1:
	volume_envelope 12, 7
	note G#, 1
	volume_envelope 5, 7
	note G#, 2
	rest 5
	sound_ret

; ============================================================================================================

Music_UndergroundTunnel_Ch3:
	note_type 6, 2, 15
	load_wave 02, 02, 03, 03, 04, 04, 04, 04, 05, 05, 04, 04, 04, 04, 03, 03, 12, 12, 12, 12, 10, 10, 09, 09, 08, 08, 09, 09, 10, 10, 12, 12
	stereo_panning FALSE, TRUE
;Bar 1
	rest 8
	octave 3
	note D#, 1
	note C#, 1
	octave 2
	note B_, 1
	note A#, 1
	note G#, 1
	note F#, 1
	note F_, 1
	note D#, 1
	octave 2
	stereo_panning TRUE, TRUE
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note F#, 7
	volume_envelope 2, 15
	note F#, 7
;Bar 2
	volume_envelope 1, 15
	note E_, 4
	volume_envelope 2, 15
	note E_, 2
	rest 10
	volume_envelope 1, 15
	note E_, 4
	volume_envelope 2, 15
	note E_, 2
	rest 10
;Bar 3
	volume_envelope 1, 15
	note D_, 4
	volume_envelope 2, 15
	note D_, 2
	rest 10
	volume_envelope 1, 15
	note C_, 4
	volume_envelope 2, 15
	note C_, 2
	rest 2
Music_UndergroundTunnel_Ch3_loop:
	octave 3
	volume_envelope 1, 15
	note E_, 4
	volume_envelope 2, 15
	note E_, 2
	rest 2
;Bar 4
	octave 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 4
	note B_, 2
	octave 3
	volume_envelope 1, 15
	note E_, 4
	volume_envelope 2, 15
	note E_, 2
	rest 2
	octave 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	octave 1
	volume_envelope 1, 15
	note B_, 4
	octave 3
	note E_, 4
	volume_envelope 2, 15
	note E_, 2
	rest 2
;Bar 5
	octave 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	rest 4
	octave 3
	volume_envelope 1, 15
	note E_, 4
	octave 2
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	volume_envelope 1, 15
	note B_, 2
	octave 3
	note C#, 2
	octave 2
	note B_, 2
	note A#, 2
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
;Bar 6
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type1
;Bar 7
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type2
;Bar 8
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type1
;Bar 9
	sound_call Music_UndergroundTunnel_Ch3_Type3
	volume_envelope 1, 15
	note G_, 4
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	volume_envelope 1, 15
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
;Bar 10
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type1
;Bar 11
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type2
;Bar 12
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type1
;Bar 13
	volume_envelope 1, 15
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	rest 4
	volume_envelope 1, 15
	note B_, 4
	note A_, 1
	volume_envelope 2, 15
	note A_, 1
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	volume_envelope 1, 15
	note F#, 2
	note A_, 2
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
;Bar 14
	sound_call Music_UndergroundTunnel_Ch3_Type2
	sound_call Music_UndergroundTunnel_Ch3_Type3
;Bar 15
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	rest 2
	volume_envelope 1, 15
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	volume_envelope 1, 15
	note B_, 4
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	volume_envelope 1, 15
	note A_, 4
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	volume_envelope 1, 15
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
;Bar 16
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type1
;Bar 17
	volume_envelope 1, 15
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	rest 4
Music_UndergroundTunnel_Ch3_Type4:
	volume_envelope 1, 15
	note B_, 4
	note_type 4, 1, 15
	load_wave 02, 02, 03, 03, 04, 04, 04, 04, 05, 05, 04, 04, 04, 04, 03, 03, 12, 12, 12, 12, 10, 10, 09, 09, 08, 08, 09, 09, 10, 10, 12, 12
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	note_type 6, 1, 15
	load_wave 02, 02, 03, 03, 04, 04, 04, 04, 05, 05, 04, 04, 04, 04, 03, 03, 12, 12, 12, 12, 10, 10, 09, 09, 08, 08, 09, 09, 10, 10, 12, 12
	sound_loop 2, Music_UndergroundTunnel_Ch3_Type4
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
;Bar 18
	sound_call Music_UndergroundTunnel_Ch3_Type1
	sound_call Music_UndergroundTunnel_Ch3_Type3
;Bar 19
	volume_envelope 1, 15
	note B_, 4
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	volume_envelope 1, 15
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
	volume_envelope 1, 15
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	rest 4
	octave 3
	volume_envelope 1, 15
	note E_, 4
	volume_envelope 2, 15
	note E_, 2
	rest 2
;Bar 20
	octave 2
	volume_envelope 1, 15
	note E_, 2
	volume_envelope 2, 15
	note E_, 2
	rest 4
	volume_envelope 1, 15
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
	octave 1
	volume_envelope 1, 15
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
	octave 2
	volume_envelope 1, 15
	note E_, 4
	octave 3
	note E_, 1
	volume_envelope 2, 15
	note E_, 2
	rest 1
;Bar 21
	octave 2
	volume_envelope 1, 15
	note F#, 4
	octave 3
	note F#, 1
	volume_envelope 2, 15
	note F#, 2
	rest 1
	octave 2
	volume_envelope 1, 15
	note G#, 4
	octave 3
	note G#, 1
	volume_envelope 2, 15
	note G#, 2
	rest 1
	octave 2
	volume_envelope 1, 15
	note E_, 4
	octave 3
	note E_, 1
	volume_envelope 2, 15
	note E_, 2
	rest 1
	octave 2
	volume_envelope 1, 15
	note A_, 1
	volume_envelope 2, 15
	note A_, 1
	volume_envelope 1, 15
	note A_, 2
	volume_envelope 2, 15
	note A_, 2
	volume_envelope 1, 15
	note A_, 2
;Bar 22
	volume_envelope 2, 15
	note A_, 2
	rest 2
	octave 3
	sound_call Music_UndergroundTunnel_Ch3_Type7
	volume_envelope 2, 15
	note E_, 1
	octave 2
	volume_envelope 1, 15
	note A_, 2
	volume_envelope 2, 15
	note A_, 2
	volume_envelope 1, 15
	note A_, 8
	octave 3
	note E_, 4
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	octave 2
	volume_envelope 1, 15
	note B_, 2
	rest 8
;Bar 23
	octave 3
	note D#, 1
	volume_envelope 2, 15
	note D#, 1
	volume_envelope 1, 15
	note D#, 1
	volume_envelope 2, 15
	note D#, 1
	octave 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	volume_envelope 1, 15
	note B_, 4
	octave 3
	note D#, 4
	note D_, 2
	note C#, 2
	octave 2
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 6
;Bar 24
	sound_call Music_UndergroundTunnel_Ch3_Type8
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	volume_envelope 1, 15
	note B_, 8
	octave 3
	note D#, 4
	note C#, 4
	volume_envelope 2, 15
	note C#, 2
	rest 6
;Bar 25
	volume_envelope 1, 15
	note C#, 1
	volume_envelope 2, 15
	note C#, 1
	volume_envelope 1, 15
	note C#, 1
	volume_envelope 2, 15
	note C#, 1
	volume_envelope 1, 15
	note F_, 2
	volume_envelope 2, 15
	note F_, 2
	volume_envelope 1, 15
	note F_, 4
	note C#, 2
	octave 4
	note C#, 2
	octave 3
	note C#, 4
	note F#, 4
	volume_envelope 2, 15
	note F#, 2
	rest 6
;Bar 26
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note C#, 2
	volume_envelope 2, 15
	note C#, 2
	volume_envelope 1, 15
	note F#, 4
	note C#, 2
	volume_envelope 2, 15
	note C#, 2
	volume_envelope 1, 15
	note E_, 4
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note D_, 2
	volume_envelope 2, 15
	note D_, 2
	rest 6
;Bar 27
	sound_call Music_UndergroundTunnel_Ch3_Type9
	volume_envelope 1, 15
	note D#, 2
	volume_envelope 2, 15
	note D#, 2
	octave 2
	volume_envelope 1, 15
	note A_, 4
	octave 3
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	rest 2
	octave 2
	volume_envelope 1, 15
	note F#, 2
	note B_, 4
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
;Bar 28
	sound_call Music_UndergroundTunnel_Ch3_Type10
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
	volume_envelope 1, 15
	note B_, 4
	octave 2
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
	octave 2
	volume_envelope 1, 15
	note B_, 12
;Bar 29
	note B_, 4
	note A_, 4
	note G#, 4
	note F#, 4
	;shift down
	octave 2
	note C#, 2
	note D#, 2
	sound_call Music_UndergroundTunnel_Ch3_Type5
;Bar 30
	sound_call Music_UndergroundTunnel_Ch3_Type6
	sound_call Music_UndergroundTunnel_Ch3_Type7
	volume_envelope 2, 15
	note E_, 2
	rest 1
	octave 3
	volume_envelope 1, 15
	note C_, 2
	octave 2
	note E_, 1
	volume_envelope 2, 15
	note E_, 2
	rest 1
	volume_envelope 1, 15
	note B_, 4
	sound_call Music_UndergroundTunnel_Ch3_Type5
;Bar 31
	sound_call Music_UndergroundTunnel_Ch3_Type6
	sound_call Music_UndergroundTunnel_Ch3_Type7
	volume_envelope 2, 15
	note E_, 1
	volume_envelope 1, 15
	note A_, 2
	note B_, 2
	octave 3
	note C_, 4
	octave 2
	note A_, 4
	note E_, 1
	volume_envelope 2, 15
	note E_, 1
	volume_envelope 1, 15
	note E_, 1
	volume_envelope 2, 15
	note E_, 1
	rest 2
	volume_envelope 1, 15
	note B_, 2
;Bar 32
	sound_call Music_UndergroundTunnel_Ch3_Type6
	octave 3
	volume_envelope 1, 15
	note C_, 2
	octave 2
	note E_, 1
	volume_envelope 2, 15
	note E_, 2
	rest 1
	volume_envelope 1, 15
	note E_, 1
	volume_envelope 2, 15
	note E_, 1
	volume_envelope 1, 15
	note A_, 2
	volume_envelope 2, 15
	note A_, 2
	octave 3
	volume_envelope 1, 15
	note C_, 4
	octave 2
	note D_, 1
	volume_envelope 2, 15
	note D_, 1
	volume_envelope 1, 15
	note D_, 1
	volume_envelope 2, 15
	note D_, 2
	rest 1
	volume_envelope 1, 15
	note A_, 2
;Bar 33
	note D_, 2
	volume_envelope 2, 15
	note D_, 2
	volume_envelope 1, 15
	note A_, 2
	volume_envelope 2, 15
	note A_, 2
	sound_call Music_UndergroundTunnel_Ch3_Type9
	volume_envelope 1, 15
	note F_, 2
	note A_, 2
	octave 3
	note D_, 4
	octave 2
	note A_, 4
	sound_call Music_UndergroundTunnel_Ch3_Type5
;Bar 34
	note E_, 2
	volume_envelope 2, 15
	note E_, 2
	volume_envelope 1, 15
	note B_, 4
	octave 3
	note C_, 2
	octave 2
	note E_, 2
	volume_envelope 2, 15
	note E_, 2
	octave 3
	volume_envelope 1, 15
	note C_, 2
	note D_, 2
	volume_envelope 2, 15
	note D_, 2
	octave 2
	volume_envelope 1, 15
	note B_, 2
	note A_, 2
	note E_, 1
	volume_envelope 2, 15
	note E_, 1
	volume_envelope 1, 15
	note E_, 1
	volume_envelope 2, 15
	note E_, 1
	rest 2
	volume_envelope 1, 15
	note B_, 2
;Bar 35
	note E_, 2
	volume_envelope 2, 15
	note E_, 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	volume_envelope 1, 15
	note D_, 1
	volume_envelope 2, 15
	note D_, 1
	volume_envelope 1, 15
	note D_, 1
	rest 3
	note A_, 2
	note F_, 2
	volume_envelope 2, 15
	note F_, 2
	volume_envelope 1, 15
	note A_, 2
	volume_envelope 2, 15
	note A_, 2
	volume_envelope 1, 15
	sound_call Music_UndergroundTunnel_Ch3_Type5
;Bar 36
	note E_, 2
	volume_envelope 2, 15
	note E_, 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	sound_call Music_UndergroundTunnel_Ch3_Type7
	volume_envelope 2, 15
	note E_, 2
	rest 1
	octave 3
	volume_envelope 1, 15
	note C_, 2
	octave 2
	note A_, 2
	volume_envelope 2, 15
	note A_, 2
	octave 3
	volume_envelope 1, 15
	note C_, 2
	volume_envelope 2, 15
	note C_, 2
	octave 2
	volume_envelope 1, 15
	sound_call Music_UndergroundTunnel_Ch3_Type5
;Bar 37
	note E_, 2
	volume_envelope 2, 15
	note E_, 2
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	sound_call Music_UndergroundTunnel_Ch3_Type9
	volume_envelope 1, 15
	note D_, 2
	note A_, 2
	octave 3
	note C_, 2
	octave 2
	note A_, 2
	note F_, 2
	note A_, 2
	;shift up
	octave 2
	note B_, 4
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
;Bar 38
	sound_call Music_UndergroundTunnel_Ch3_Type10
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
	volume_envelope 1, 15
	note B_, 4
	octave 2
	sound_call Music_UndergroundTunnel_Ch3_Type8
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
	octave 2
	volume_envelope 1, 15
	note B_, 4
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
;Bar 39
	sound_call Music_UndergroundTunnel_Ch3_Type10
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
	volume_envelope 1, 15
	note B_, 4
	octave 2
	sound_call Music_UndergroundTunnel_Ch3_Type8
	octave 1
	sound_call Music_UndergroundTunnel_Ch3_Type8
	sound_loop 0, Music_UndergroundTunnel_Ch3_loop

Music_UndergroundTunnel_Ch3_Type1:
	volume_envelope 1, 15;
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	rest 4
	volume_envelope 1, 15
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
	sound_ret

Music_UndergroundTunnel_Ch3_Type2:
	volume_envelope 1, 15;
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	octave 1
	volume_envelope 1, 15
	note B_, 4
	octave 2
	note B_, 4
	volume_envelope 2, 15
	note B_, 2
	rest 2
	sound_ret

Music_UndergroundTunnel_Ch3_Type3:
	volume_envelope 1, 15;
	note F#, 2
	volume_envelope 2, 15
	note F#, 2
	rest 4
	volume_envelope 1, 15
	note B_, 4
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	volume_envelope 1, 15
	note F#, 1
	volume_envelope 2, 15
	note F#, 1
	sound_ret

Music_UndergroundTunnel_Ch3_Type5:
	note E_, 1;
	volume_envelope 2, 15
	note E_, 1
	volume_envelope 1, 15
	note E_, 1
	volume_envelope 2, 15
	note E_, 2
	rest 1
	volume_envelope 1, 15
	note B_, 2
	sound_ret

Music_UndergroundTunnel_Ch3_Type6:
	note E_, 1;
	volume_envelope 2, 15
	note E_, 2
	rest 1
	volume_envelope 1, 15
	note B_, 2
	volume_envelope 2, 15
	note B_, 2
	sound_ret

Music_UndergroundTunnel_Ch3_Type7:
	volume_envelope 1, 15;
	note E_, 1
	volume_envelope 2, 15
	note E_, 1
	volume_envelope 1, 15
	note E_, 1
	sound_ret

Music_UndergroundTunnel_Ch3_Type8:
	volume_envelope 1, 15
	note B_, 1;
	volume_envelope 2, 15
	note B_, 1
	volume_envelope 1, 15
	note B_, 1
	volume_envelope 2, 15
	note B_, 1
	sound_ret

Music_UndergroundTunnel_Ch3_Type9:
	volume_envelope 1, 15;
	note D_, 1
	volume_envelope 2, 15
	note D_, 1
	volume_envelope 1, 15
	note D_, 1
	volume_envelope 2, 15
	note D_, 1
	sound_ret

Music_UndergroundTunnel_Ch3_Type10:
	volume_envelope 1, 15;
	note B_, 4
	octave 2
	note B_, 1
	volume_envelope 2, 15
	note B_, 1
	volume_envelope 1, 15
	note B_, 2
	sound_ret

; ============================================================================================================

Music_UndergroundTunnel_Ch4:
	toggle_noise $5
	drum_speed 6
;Bar 1
	drum_note 11, 1
	drum_note 11, 2
	drum_note 11, 13
	drum_note 12, 2
	drum_note 12, 6
	drum_note 12, 8
;Bar 2
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
;Bar 3
	drum_note 12, 8
	drum_note 12, 8
	drum_note 12, 8
Music_UndergroundTunnel_Ch4_loop:
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 4
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type2
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 2
	drum_note 3, 2
;Bar 5
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 6
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
;Bar 7
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 8
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
;Bar 9
	sound_call Music_UndergroundTunnel_Ch4_Type1
	drum_note 12, 4
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 10
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
;Bar 11
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 12
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
;Bar 13
	sound_call Music_UndergroundTunnel_Ch4_Type1
	drum_note 12, 4
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type2
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 4
	drum_note 3, 2
	drum_note 3, 2
;Bar 14
	drum_note 12, 2
	drum_note 3, 2
	drum_note 12, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type3
	drum_note 12, 4
	drum_note 12, 2
	drum_note 12, 2
;Bar 15
	drum_note 12, 4
	drum_note 3, 4
	drum_note 12, 4
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 16
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
;Bar 17
	sound_call Music_UndergroundTunnel_Ch4_Type1
	drum_speed 4
	drum_note 12, 6
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 12, 6
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_speed 6
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 18
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 2
	drum_note 12, 2
;Bar 19
	drum_note 12, 2
	drum_note 3, 2
	drum_note 12, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 20
	sound_call Music_UndergroundTunnel_Ch4_Type1
	sound_call Music_UndergroundTunnel_Ch4_Type3
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
;Bar 21
	sound_call Music_UndergroundTunnel_Ch4_Type1
	drum_note 12, 4
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type2
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 3, 2
	drum_note 12, 2
;Bar 22
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 2
	drum_note 12, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
;Bar 23
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 12, 2
	drum_note 12, 2
	drum_note 3, 2
	drum_note 12, 2
;Bar 24
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 12, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
;Bar 25
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 26
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 12, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
;Bar 27
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 28
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 12, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
;Bar 29
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type4
;Bar 30
Music_UndergroundTunnel_Ch4_Bar30:
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 3, 1
	drum_note 3, 3
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type4
	sound_loop 7, Music_UndergroundTunnel_Ch4_Bar30
;Bar 37
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type4
	drum_note 3, 1
	drum_note 3, 3
	drum_note 3, 2
	drum_note 3, 1
	drum_note 3, 1
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 38
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	sound_call Music_UndergroundTunnel_Ch4_Type1
;Bar 39
	drum_note 3, 4
	sound_call Music_UndergroundTunnel_Ch4_Type5
	sound_call Music_UndergroundTunnel_Ch4_Type2
	drum_note 3, 2
	drum_note 3, 2
	sound_call Music_UndergroundTunnel_Ch4_Type4
	sound_loop 0, Music_UndergroundTunnel_Ch4_loop

Music_UndergroundTunnel_Ch4_Type1:
	drum_note 12, 2;
	drum_note 3, 2
	drum_note 3, 2
	drum_note 3, 2
	sound_ret

Music_UndergroundTunnel_Ch4_Type2:
	drum_note 12, 1;
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_UndergroundTunnel_Ch4_Type3:
	drum_note 12, 4;
	drum_note 3, 4
	drum_note 12, 1
	drum_note 3, 1;
	drum_note 3, 1;
	drum_note 3, 1;
	drum_note 3, 1;
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	sound_ret

Music_UndergroundTunnel_Ch4_Type4:
	drum_note 3, 1;
	drum_note 3, 1;
	drum_note 3, 1;
	drum_note 3, 1;
	sound_ret

Music_UndergroundTunnel_Ch4_Type5:
	drum_note 12, 2;
	drum_note 12, 2
	drum_note 12, 2
	drum_note 3, 2
	sound_ret

; ============================================================================================================

