;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 4.0 (17-Jun-2020)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_CeruleanCityGBS:
	channel_count 4
	channel 1, Music_CeruleanCityGBS_Ch1
	channel 2, Music_CeruleanCityGBS_Ch2
	channel 3, Music_CeruleanCityGBS_Ch3
	channel 4, Music_CeruleanCityGBS_Ch4

Music_CeruleanCityGBS_Ch1:
	volume 6, 6
	pitch_offset $0001
	duty_cycle $3
	vibrato 8, 2, 4
	note_type 12, 10, 4
	tempo 147
	stereo_panning TRUE, FALSE
;Bar 1
	octave 4
	note E_, 2
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
Music_CeruleanCityGBS_Ch1_loop:
	stereo_panning TRUE, FALSE
;Bar 2
	duty_cycle_pattern 3, 3, 3, 3
	volume_envelope 10, 4
	octave 3
	note G#, 1
	rest 1
	duty_cycle_pattern 2, 2, 2, 2
	volume_envelope 9, 2
	octave 4
	note G#, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
;Bar 3
	sound_call Music_CeruleanCityGBS_Ch1_Type2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
;Bar 5
	sound_call Music_CeruleanCityGBS_Ch1_Type2
	note D#, 2
	note B_, 2
	note D#, 2
	note B_, 2
;Bar 6
	octave 3
	note B_, 4
	note B_, 2
	volume_envelope 11, 6
	stereo_panning FALSE, TRUE
	duty_cycle_pattern 0, 0, 0, 0
	sound_call Music_CeruleanCityGBS_Ch1_Bar6
;Bar 7
	octave 3
	note B_, 4
	rest 2
	octave 4
	note C#, 1
	octave 3
	note B_, 1
	note A_, 5
	rest 3
;Bar 8
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	rest 1
	sound_call Music_CeruleanCityGBS_Ch1_Bar6
;Bar 9
	octave 3
	note B_, 4
	rest 2
	note G#, 1
	note B_, 1
	octave 4
	note D#, 5
	rest 3
;Bar 10
	volume_envelope 8, 6
	duty_cycle_pattern 3, 3, 3, 3
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note G#, 1
	rest 3
	duty_cycle_pattern 1, 1, 2, 2
	transpose 1, 0
	sound_call Music_CeruleanCityGBS_Ch1_Type3
	transpose 2, 9
	sound_call Music_CeruleanCityGBS_Ch1_Type3
	transpose 0, 0
;Bar 11
	duty_cycle_pattern 3, 3, 3, 3
	volume_envelope 8, 6
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	rest 3
	duty_cycle_pattern 1, 1, 2, 2
	transpose 2, 4
	sound_call Music_CeruleanCityGBS_Ch1_Type3;D#
	transpose 1, 0
	sound_call Music_CeruleanCityGBS_Ch1_Type3;B_
	transpose 0, 0
;Bar 12
	duty_cycle_pattern 3, 3, 3, 3
	volume_envelope 8, 6
	octave 3
	note A_, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	rest 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
;Bar 13
	volume_envelope 8, 6
	sound_call Music_CeruleanCityGBS_Ch1_2_Bar13
;Bar 14
	duty_cycle_pattern 3, 3, 3, 3
	octave 3
	sound_call Music_CeruleanCityGBS_Ch1_Type4
	volume_envelope 11, 3
	note G#, 2
	volume_envelope 7, 3
	note G#, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type5
;Bar 15
	volume_envelope 11, 3
	octave 4
	note E_, 2
	volume_envelope 7, 3
	note E_, 2
	volume_envelope 11, 3
	note F#, 2
	volume_envelope 7, 3
	note F#, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type4
;Bar 18
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch1_Type4
	transpose 0, 0
	octave 3
	sound_call Music_CeruleanCityGBS_Ch1_Type5
	octave 4
	sound_call Music_CeruleanCityGBS_Ch1_Type5
;Bar 17
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 7, 3
	note A_, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type5
	volume_envelope 10, 4
	stereo_panning TRUE, FALSE
	note E_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	sound_loop 0, Music_CeruleanCityGBS_Ch1_loop

Music_CeruleanCityGBS_Ch1_Type1:
	octave 3
	note B_, 2
	octave 4
	note G#, 2
	sound_ret

Music_CeruleanCityGBS_Ch1_Type2:
	octave 3
	note A_, 2
	octave 4
	note E_, 2
	sound_loop 2, Music_CeruleanCityGBS_Ch1_Type2
	sound_ret

Music_CeruleanCityGBS_Ch1_Type3:
	octave 5
	volume_envelope 11, 2
	note B_, 1
	volume_envelope 8, 2
	note B_, 1
	volume_envelope 7, 2
	note B_, 1
	volume_envelope 6, 2
	note B_, 1
	sound_ret

Music_CeruleanCityGBS_Ch1_Bar6:
	note G#, 1;
	note G#, 1
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	sound_ret

Music_CeruleanCityGBS_Ch1_2_Bar13:
	octave 5
	note B_, 1
	note F#, 1
	note D#, 1
	note C#, 1
	octave 4
	note B_, 1
	octave 5
	note C#, 1
	note D#, 1
	note F#, 1
	note B_, 5
	rest 3
	sound_ret

Music_CeruleanCityGBS_Ch1_Type4:
	volume_envelope 11, 3;
	note G#, 2
	volume_envelope 7, 3
	note G#, 2
	volume_envelope 5, 3
	note G#, 2
	rest 2
	sound_ret

Music_CeruleanCityGBS_Ch1_Type5:
	volume_envelope 11, 3;
	note B_, 2
	volume_envelope 7, 3
	note B_, 2
	sound_ret

; ============================================================================================================

Music_CeruleanCityGBS_Ch2:
	duty_cycle_pattern 2, 2, 2, 2
	vibrato 8, 2, 4
	note_type 12, 11, 4
	stereo_panning FALSE, TRUE
;Bar 1
	octave 5
	note E_, 2
	note D#, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 2
	note D#, 2
Music_CeruleanCityGBS_Ch2_loop:
;Bar 2
	stereo_panning FALSE, TRUE
	volume_envelope 14, 6
	note E_, 2
	rest 4
	octave 3
	sound_call Music_CeruleanCityGBS_Ch2_Bar2
;Bar 3
	note G#, 4
	rest 2
	note A_, 1
	note G#, 1
	note F#, 6
	rest 8
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch2_Bar2
;Bar 5
	note G#, 4
	rest 2
	note E_, 1
	note G#, 1
	note B_, 6
	rest 8
;Bar 6
	stereo_panning TRUE, FALSE
	duty_cycle_pattern 1, 1, 1, 1
	volume_envelope 12, 7
	octave 4
	sound_call Music_CeruleanCityGBS_Ch2_Bar6
;Bar 7
	volume_envelope 11, 7
	note G#, 4
	rest 2
	volume_envelope 12, 7
	note A_, 1
	note G#, 1
	volume_envelope 11, 7
	note F#, 5
	rest 3
;Bar 8
	volume_envelope 12, 7
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	rest 1
	sound_call Music_CeruleanCityGBS_Ch2_Bar6
;Bar 9
	volume_envelope 11, 7
	note G#, 4
	rest 2
	volume_envelope 12, 7
	note E_, 1
	note G#, 1
	volume_envelope 11, 7
	note B_, 5
	rest 3
;Bar 10
	volume_envelope 13, 5
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 1
	rest 3
	note_type 12, 10, 7
	duty_cycle_pattern 1, 2, 2, 2
	transpose 1, 9
	sound_call Music_CeruleanCityGBS_Ch2_Type1;G#
	transpose 1, 5
	sound_call Music_CeruleanCityGBS_Ch2_Type1;E_
	transpose 0, 0
;Bar 11
	duty_cycle_pattern 1, 1, 1, 1
	volume_envelope 13, 5
	octave 3
	note D#, 1
	note C#, 1
	note D#, 1
	note E_, 1
	note F#, 1
	rest 3
	note_type 12, 10, 7
	duty_cycle_pattern 1, 2, 2, 2
	sound_call Music_CeruleanCityGBS_Ch2_Type1
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch2_Type1;F#
	transpose 0, 0
;Bar 12
	duty_cycle_pattern 2, 2, 2, 2
	volume_envelope 13, 6
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 1
	rest 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note G#, 1
	rest 1
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 1
;Bar 13
	transpose 2, 0
	sound_call Music_CeruleanCityGBS_Ch1_2_Bar13
	transpose 0, 0
;Bar 14
	note_type 2, 8, 7
	rest 1
	note_type 12, 13, 3
	transpose 1, 5
	sound_call Music_CeruleanCityGBS_Ch2_Type2
	transpose 0, 0
	volume_envelope 13, 3
	octave 3
	note B_, 2
	volume_envelope 11, 3
	note B_, 2
	volume_envelope 13, 3
	octave 4
	note F#, 2
	volume_envelope 11, 3
	note F#, 2
;Bar 15
	volume_envelope 13, 3
	note G#, 2
	volume_envelope 11, 3
	note G#, 2
	volume_envelope 13, 3
	note A_, 2
	volume_envelope 11, 3
	note A_, 2
	sound_call Music_CeruleanCityGBS_Ch2_Type2
;Bar 16
	sound_call Music_CeruleanCityGBS_Ch2_Type2
	volume_envelope 13, 3
	note G#, 2
	volume_envelope 11, 3
	note G#, 2
	volume_envelope 13, 3
	octave 5
	note D#, 2
	volume_envelope 11, 3
	note D#, 2
;Bar 18
	volume_envelope 13, 3
	note C#, 2
	volume_envelope 11, 3
	note C#, 2
	volume_envelope 13, 3
	note D#, 2
	note_type 2, 11, 3
	note D#, 11
	note_type 12, 11, 6
	stereo_panning FALSE, TRUE
	note E_, 2
	note D#, 2
	note C#, 2
	note D#, 2
	sound_loop 0, Music_CeruleanCityGBS_Ch2_loop

Music_CeruleanCityGBS_Ch2_Type1:
	octave 4
	volume_envelope 13, 2
	note B_, 1
	volume_envelope 10, 2
	note B_, 1
	volume_envelope 8, 2
	note B_, 1
	volume_envelope 6, 2
	note B_, 1
	sound_ret

Music_CeruleanCityGBS_Ch2_Type2:
	octave 4
	volume_envelope 13, 3
	note B_, 2
	volume_envelope 11, 3
	note B_, 2
	volume_envelope 7, 3
	note B_, 2
	rest 2
	sound_ret

Music_CeruleanCityGBS_Ch2_Bar2:
	note E_, 1;
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	sound_ret

Music_CeruleanCityGBS_Ch2_Bar6:
	note E_, 1;
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	rest 1
	note D#, 1
	rest 1
	note E_, 1
	note F#, 1
	note G#, 1
	note A_, 1
	sound_ret

; ============================================================================================================

Music_CeruleanCityGBS_Ch3:
	note_type 12, 1, 5
	stereo_panning TRUE, TRUE
;Bar 1
	rest 8
	octave 4
	note E_, 2
	note D#, 2
	note C#, 2
	note C_, 2
Music_CeruleanCityGBS_Ch3_loop:
;Bar 2
	sound_call Music_CeruleanCityGBS_Ch3_Bar2
;Bar 3
	octave 1
	note F#, 1
	rest 3
	note F#, 1
	rest 2
	octave 2
	note C#, 1
	sound_call Music_CeruleanCityGBS_Ch3_Type1
	sound_call Music_CeruleanCityGBS_Ch3_Type1
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch3_Bar2
;Bar 5
	octave 1
	note F#, 1
	rest 3
	note F#, 1
	rest 2
	octave 2
	note C#, 1
	sound_call Music_CeruleanCityGBS_Ch3_Type1
	octave 1
	note B_, 1
	octave 2
	note B_, 1
	octave 4
	note B_, 1
	octave 3
	note B_, 1
;Bar 6
	sound_call Music_CeruleanCityGBS_Ch3_Type2
	rest 1
	sound_call Music_CeruleanCityGBS_Ch3_Type2
	sound_call Music_CeruleanCityGBS_Ch3_Type4
;Bar 7
	sound_call Music_CeruleanCityGBS_Ch3_Type3
	rest 1
	octave 1
	sound_call Music_CeruleanCityGBS_Ch3_Type3
	octave 2
	note C#, 1
	octave 1
	note B_, 1
	rest 1
	octave 6
	volume_envelope 2, 5
	note D#, 1
	volume_envelope 1, 5
	octave 2
	note B_, 1
	octave 1
	note B_, 1
	octave 2
	note B_, 1
	octave 6
	volume_envelope 2, 5
	note D#, 1
	volume_envelope 1, 5
	octave 1
	note B_, 1
;Bar 8
	octave 2
	note E_, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	octave 5
	volume_envelope 2, 5
	note E_, 1
	volume_envelope 1, 5
	sound_call Music_CeruleanCityGBS_Ch3_Type2
	sound_call Music_CeruleanCityGBS_Ch3_Type4
;Bar 9
	sound_call Music_CeruleanCityGBS_Ch3_Type5
	rest 1
	octave 1
	sound_call Music_CeruleanCityGBS_Ch3_Type5
	octave 2
	note C#, 1
	octave 1
	note B_, 1
	rest 1
	octave 5
	volume_envelope 2, 5
	note F#, 1
	volume_envelope 1, 5
	octave 1
	note B_, 1
	note G#, 1
	octave 4
	note D#, 1
	octave 5
	volume_envelope 2, 5
	note G#, 1
	volume_envelope 1, 5
	octave 3
	note G#, 1
;Bar 10
	sound_call Music_CeruleanCityGBS_Ch3_Bar10
;Bar 11
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch3_Bar10
	transpose 0, 0
;Bar 12
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	rest 1
	octave 1
	note A_, 1
	rest 1
	note G#, 2
	octave 2
	note G#, 1
	rest 1
	octave 1
	note G#, 1
	rest 1
	note F#, 2
	octave 2
	note F#, 1
	rest 1
;Bar 13
	octave 1
	note F#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 4
	rest 10
;Bar 14
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 3
;Bar 15
	transpose 1, 9
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 3
;Bar 16
	transpose 1, 11
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 3
;Bar 17
	transpose 0, 0
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 1
	sound_loop 0, Music_CeruleanCityGBS_Ch3_loop

Music_CeruleanCityGBS_Ch3_Bar2:
	octave 1
	note E_, 1
	rest 3
	note E_, 1
	rest 2
	note E_, 1
	note E_, 1
	rest 1
	octave 2
	note E_, 1
	rest 1
	octave 1
	note E_, 1
	rest 1
	octave 2
	note E_, 1
	rest 1
	sound_ret

Music_CeruleanCityGBS_Ch3_Type1:
	octave 1;
	note B_, 1
	rest 1
	octave 2
	note B_, 1
	rest 1
	sound_ret

Music_CeruleanCityGBS_Ch3_Type2:
	octave 1;
	note E_, 1
	rest 1
	octave 5
	volume_envelope 2, 5
	note G#, 1
	volume_envelope 1, 5
	sound_ret

Music_CeruleanCityGBS_Ch3_Type3:
	note F#, 1;
	rest 1
	octave 6
	volume_envelope 2, 5
	note C#, 1
	volume_envelope 1, 5
	sound_ret

Music_CeruleanCityGBS_Ch3_Type4:
	octave 1;
	note E_, 1
	note E_, 1
	rest 1
	octave 5
	volume_envelope 2, 5
	note G#, 1
	volume_envelope 1, 5
	octave 2
	note E_, 1
	octave 1
	note E_, 1
	octave 2
	note E_, 1
	octave 5
	volume_envelope 2, 5
	note G#, 1
	volume_envelope 1, 5
	octave 1
	note E_, 1
	sound_ret

Music_CeruleanCityGBS_Ch3_Type5:
	note F#, 1;
	rest 1
	octave 5
	volume_envelope 2, 5
	note E_, 1
	volume_envelope 1, 5
	sound_ret

Music_CeruleanCityGBS_Ch3_Bar10:
	octave 2
	note C#, 1
	rest 3
	note C#, 1
	rest 2
	note C#, 1
	note C#, 1
	rest 1
	octave 3
	note C#, 1
	rest 1
	octave 2
	note C#, 1
	rest 1
	octave 3
	note C#, 1
	rest 1
	sound_ret

Music_CeruleanCityGBS_Ch3_Bar17:
	octave 2
	note A_, 1
	rest 1
	octave 1
	note A_, 1
	rest 1
	octave 2
	note A_, 1
	rest 3
	note A_, 1
	rest 1
	octave 1
	note A_, 1
	rest 1
	octave 2
	note A_, 1
	sound_ret

; ============================================================================================================

Music_CeruleanCityGBS_Ch4:
	toggle_noise $3
	drum_speed 12
;Bar 1
	rest 16
Music_CeruleanCityGBS_Ch4_loop:
	stereo_panning TRUE, TRUE
;Bar 2
	sound_call Music_CeruleanCityGBS_Ch4_Type2
	sound_call Music_CeruleanCityGBS_Ch4_Type1
;Bar 3
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	sound_call Music_CeruleanCityGBS_Ch4_Type1
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	sound_call Music_CeruleanCityGBS_Ch4_Type1
;Bar 5
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	toggle_noise
	toggle_noise $1
	drum_note 10, 2
	toggle_noise
	toggle_noise $3
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 4, 1
;Bar 6
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	sound_call Music_CeruleanCityGBS_Ch4_Type1
;Bar 7
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	sound_call Music_CeruleanCityGBS_Ch4_Type3
;Bar 8
	drum_note 4, 1
	drum_note 4, 1
	drum_note 8, 1
	drum_note 4, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	sound_call Music_CeruleanCityGBS_Ch4_Type1
;Bar 9
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	toggle_noise
	toggle_noise $1
	drum_note 10, 2
	drum_note 6, 2
	toggle_noise
	toggle_noise $3
	drum_note 4, 2
	drum_note 4, 1
	drum_note 4, 1
;Bar 10
	sound_call Music_CeruleanCityGBS_Ch4_Type2
	sound_call Music_CeruleanCityGBS_Ch4_Type1
;Bar 11
	sound_call Music_CeruleanCityGBS_Ch4_Type1
	sound_call Music_CeruleanCityGBS_Ch4_Type3
;Bar 12
	drum_note 7, 2
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
	toggle_noise
	toggle_noise $1
	drum_note 10, 2
	toggle_noise
	toggle_noise $3
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
	toggle_noise
	toggle_noise $1
	drum_note 10, 2
	toggle_noise
	toggle_noise $3
	drum_note 8, 1
	drum_note 8, 1
;Bar 13
	drum_note 4, 2
	toggle_noise
	toggle_noise $1
	drum_note 6, 2
	drum_note 6, 12
	toggle_noise
	toggle_noise $3 ;Bar 14
Music_CeruleanCityGBS_Ch4_Bar14:
	drum_note 2, 1
	drum_note 2, 1
	drum_note 7, 2
	drum_note 2, 1
	drum_note 2, 1
	drum_note 7, 2
	sound_loop 7, Music_CeruleanCityGBS_Ch4_Bar14
	drum_note 2, 1
	drum_note 2, 1
	toggle_noise
	toggle_noise $1
	drum_note 6, 2
	toggle_noise
	toggle_noise $3
	drum_note 4, 2
	drum_note 4, 1
	drum_note 4, 1
	sound_loop 0, Music_CeruleanCityGBS_Ch4_loop

Music_CeruleanCityGBS_Ch4_Type1:
	toggle_noise
	toggle_noise $1
	drum_note 10, 2;
	toggle_noise
	toggle_noise $3
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	sound_ret

Music_CeruleanCityGBS_Ch4_Type2:
	drum_note 12, 2;
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
	drum_note 8, 1
	drum_note 8, 1
	sound_ret

Music_CeruleanCityGBS_Ch4_Type3:
	toggle_noise
	toggle_noise $1
	drum_note 10, 2;
	toggle_noise
	toggle_noise $3
	drum_note 8, 1
	drum_note 8, 1
	drum_note 4, 2
	toggle_noise
	toggle_noise $1
	drum_note 6, 2
	toggle_noise
	toggle_noise $3
	sound_ret

; ============================================================================================================
; ============================================================================================================

Music_CeruleanCityGBSNight:
	channel_count 4
	channel 1, Music_CeruleanCityGBSNight_Ch1
	channel 2, Music_CeruleanCityGBSNight_Ch2
	channel 3, Music_CeruleanCityGBSNight_Ch3
	channel 4, Music_CeruleanCityGBSNight_Ch4

Music_CeruleanCityGBSNight_Ch1:
	volume 6, 6
	pitch_offset $0001
	duty_cycle $2
	vibrato 8, 1, 4
	note_type 12, 10, 4
	tempo 153
	stereo_panning TRUE, FALSE
;Bar 1
	octave 4
	note E_, 2
	note D#, 2
	note C#, 2
	octave 3
	note B_, 2
	note A_, 2
	note B_, 2
	octave 4
	note C#, 2
	note D#, 2
Music_CeruleanCityGBSNight_Ch1_loop:
	stereo_panning TRUE, FALSE
;Bar 2
	duty_cycle $2
	volume_envelope 10, 4
	octave 3
	note G#, 1
	rest 1
	volume_envelope 9, 2
	octave 4
	note G#, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
;Bar 3
	sound_call Music_CeruleanCityGBS_Ch1_Type2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
	octave 3
	note B_, 2
	octave 4
	note D#, 2
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
	sound_call Music_CeruleanCityGBS_Ch1_Type1
;Bar 5
	sound_call Music_CeruleanCityGBS_Ch1_Type2
	note D#, 2
	note B_, 2
	note D#, 2
	note B_, 2
;Bar 6
	octave 3
	note B_, 4
	note B_, 2
	volume_envelope 11, 6
	stereo_panning FALSE, TRUE
	duty_cycle $1
	sound_call Music_CeruleanCityGBS_Ch1_Bar6
;Bar 7
	octave 3
	note B_, 4
	rest 2
	octave 4
	note C#, 1
	octave 3
	note B_, 1
	note A_, 5
	rest 3
;Bar 8
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	note G#, 1
	rest 1
	sound_call Music_CeruleanCityGBS_Ch1_Bar6
;Bar 9
	octave 3
	note B_, 4
	rest 2
	note G#, 1
	note B_, 1
	octave 4
	note D#, 5
	rest 3
;Bar 10
	volume_envelope 8, 6
	duty_cycle $2
	octave 3
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note G#, 1
	rest 3
	transpose 1, 0
	sound_call Music_CeruleanCityGBS_Ch1_Type3
	transpose 2, 9
	sound_call Music_CeruleanCityGBS_Ch1_Type3
	transpose 0, 0
;Bar 11
	duty_cycle $2
	volume_envelope 8, 6
	octave 3
	note B_, 1
	rest 1
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	rest 3
	transpose 2, 4
	sound_call Music_CeruleanCityGBS_Ch1_Type3;D#
	transpose 1, 0
	sound_call Music_CeruleanCityGBS_Ch1_Type3;B_
	transpose 0, 0
;Bar 12
	duty_cycle $2
	volume_envelope 8, 6
	octave 3
	note A_, 1
	note G#, 1
	note A_, 1
	note B_, 1
	octave 4
	note C#, 1
	rest 1
	note C#, 1
	octave 3
	note B_, 1
	octave 4
	note C#, 1
	note D#, 1
	note E_, 1
	rest 1
	note E_, 1
	note F#, 1
	note E_, 1
	note F#, 1
;Bar 13
	volume_envelope 8, 6
	sound_call Music_CeruleanCityGBS_Ch1_2_Bar13
;Bar 14
	duty_cycle $2
	octave 3
	sound_call Music_CeruleanCityGBS_Ch1_Type4
	volume_envelope 11, 3
	note G#, 2
	volume_envelope 7, 3
	note G#, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type5
;Bar 15
	volume_envelope 11, 3
	octave 4
	note E_, 2
	volume_envelope 7, 3
	note E_, 2
	volume_envelope 11, 3
	note F#, 2
	volume_envelope 7, 3
	note F#, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type4
;Bar 18
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch1_Type4
	transpose 0, 0
	octave 3
	sound_call Music_CeruleanCityGBS_Ch1_Type5
	octave 4
	sound_call Music_CeruleanCityGBS_Ch1_Type5
;Bar 17
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 7, 3
	note A_, 2
	sound_call Music_CeruleanCityGBS_Ch1_Type5
	volume_envelope 10, 4
	stereo_panning TRUE, FALSE
	note E_, 2
	note D#, 2
	note C#, 2
	note C_, 2
	sound_loop 0, Music_CeruleanCityGBSNight_Ch1_loop

; ============================================================================================================

Music_CeruleanCityGBSNight_Ch2:
	duty_cycle $2
	vibrato 8, 1, 4
	note_type 12, 11, 4
	stereo_panning FALSE, TRUE
;Bar 1
	octave 5
	note E_, 2
	note D#, 2
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note B_, 2
	octave 5
	note C#, 2
	note D#, 2
Music_CeruleanCityGBSNight_Ch2_loop:
;Bar 2
	stereo_panning FALSE, TRUE
	volume_envelope 14, 6
	note E_, 2
	rest 4
	octave 3
	sound_call Music_CeruleanCityGBS_Ch2_Bar2
;Bar 3
	note G#, 4
	rest 2
	note A_, 1
	note G#, 1
	note F#, 6
	rest 8
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch2_Bar2
;Bar 5
	note G#, 4
	rest 2
	note E_, 1
	note G#, 1
	note B_, 6
	rest 8
;Bar 6
	stereo_panning TRUE, FALSE
	duty_cycle $2
	volume_envelope 12, 7
	octave 4
	sound_call Music_CeruleanCityGBS_Ch2_Bar6
;Bar 7
	volume_envelope 11, 7
	note G#, 4
	rest 2
	volume_envelope 12, 7
	note A_, 1
	note G#, 1
	volume_envelope 11, 7
	note F#, 5
	rest 3
;Bar 8
	volume_envelope 12, 7
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	note B_, 1
	rest 1
	sound_call Music_CeruleanCityGBS_Ch2_Bar6
;Bar 9
	volume_envelope 11, 7
	note G#, 4
	rest 2
	volume_envelope 12, 7
	note E_, 1
	note G#, 1
	volume_envelope 11, 7
	note B_, 5
	rest 3
;Bar 10
	volume_envelope 13, 5
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 1
	rest 3
	note_type 12, 10, 7
	transpose 1, 9
	sound_call Music_CeruleanCityGBS_Ch2_Type1;G#
	transpose 1, 5
	sound_call Music_CeruleanCityGBS_Ch2_Type1;E_
	transpose 0, 0
;Bar 11
	duty_cycle $2
	volume_envelope 13, 5
	octave 3
	note D#, 1
	note C#, 1
	note D#, 1
	note E_, 1
	note F#, 1
	rest 3
	note_type 12, 10, 7
	sound_call Music_CeruleanCityGBS_Ch2_Type1
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch2_Type1;F#
	transpose 0, 0
;Bar 12
	duty_cycle $2
	volume_envelope 13, 6
	octave 3
	note C#, 1
	octave 2
	note B_, 1
	octave 3
	note C#, 1
	note D#, 1
	note E_, 1
	rest 1
	note E_, 1
	note D#, 1
	note E_, 1
	note F#, 1
	note G#, 1
	rest 1
	note G#, 1
	note A_, 1
	note G#, 1
	note A_, 1
;Bar 13
	transpose 2, 0
	sound_call Music_CeruleanCityGBS_Ch1_2_Bar13
	transpose 0, 0
;Bar 14
	note_type 2, 8, 7
	rest 1
	note_type 12, 13, 3
	transpose 1, 5
	sound_call Music_CeruleanCityGBS_Ch2_Type2
	transpose 0, 0
	volume_envelope 13, 3
	octave 3
	note B_, 2
	volume_envelope 11, 3
	note B_, 2
	volume_envelope 13, 3
	octave 4
	note F#, 2
	volume_envelope 11, 3
	note F#, 2
;Bar 15
	volume_envelope 13, 3
	note G#, 2
	volume_envelope 11, 3
	note G#, 2
	volume_envelope 13, 3
	note A_, 2
	volume_envelope 11, 3
	note A_, 2
	sound_call Music_CeruleanCityGBS_Ch2_Type2
;Bar 16
	sound_call Music_CeruleanCityGBS_Ch2_Type2
	volume_envelope 13, 3
	note G#, 2
	volume_envelope 11, 3
	note G#, 2
	volume_envelope 13, 3
	octave 5
	note D#, 2
	volume_envelope 11, 3
	note D#, 2
;Bar 18
	volume_envelope 13, 3
	note C#, 2
	volume_envelope 11, 3
	note C#, 2
	volume_envelope 13, 3
	note D#, 2
	note_type 2, 11, 3
	note D#, 11
	note_type 12, 11, 6
	stereo_panning FALSE, TRUE
	note E_, 2
	note D#, 2
	note C#, 2
	note D#, 2
	sound_loop 0, Music_CeruleanCityGBSNight_Ch2_loop

; ============================================================================================================

Music_CeruleanCityGBSNight_Ch3:
	note_type 12, 1, 6
	stereo_panning TRUE, TRUE
;Bar 1
	rest 8
	octave 4
	note E_, 2
	note D#, 2
	note C#, 2
	note C_, 2
Music_CeruleanCityGBSNight_Ch3_loop:
;Bar 2
	sound_call Music_CeruleanCityGBS_Ch3_Bar2
;Bar 3
	octave 1
	note F#, 1
	rest 3
	note F#, 1
	rest 2
	octave 2
	note C#, 1
	sound_call Music_CeruleanCityGBS_Ch3_Type1
	sound_call Music_CeruleanCityGBS_Ch3_Type1
;Bar 4
	sound_call Music_CeruleanCityGBS_Ch3_Bar2
;Bar 5
	octave 1
	note F#, 1
	rest 3
	note F#, 1
	rest 2
	octave 2
	note C#, 1
	sound_call Music_CeruleanCityGBS_Ch3_Type1
	octave 1
	note B_, 1
	octave 2
	note B_, 1
	octave 4
	note B_, 1
	octave 3
	note B_, 1
;Bar 6
	sound_call Music_CeruleanCityGBSNight_Ch3_Type2
	rest 1
	sound_call Music_CeruleanCityGBSNight_Ch3_Type2
	sound_call Music_CeruleanCityGBSNight_Ch3_Type4
;Bar 7
	sound_call Music_CeruleanCityGBSNight_Ch3_Type3
	rest 1
	octave 1
	sound_call Music_CeruleanCityGBSNight_Ch3_Type3
	octave 2
	note C#, 1
	octave 1
	note B_, 1
	rest 1
	octave 6
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	octave 2
	note B_, 1
	octave 1
	note B_, 1
	octave 2
	note B_, 1
	octave 6
	volume_envelope 2, 6
	note D#, 1
	volume_envelope 1, 6
	octave 1
	note B_, 1
;Bar 8
	octave 2
	note E_, 1
	octave 3
	note E_, 1
	octave 4
	note E_, 1
	octave 5
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 1, 6
	sound_call Music_CeruleanCityGBSNight_Ch3_Type2
	sound_call Music_CeruleanCityGBSNight_Ch3_Type4
;Bar 9
	sound_call Music_CeruleanCityGBSNight_Ch3_Type5
	rest 1
	octave 1
	sound_call Music_CeruleanCityGBSNight_Ch3_Type5
	octave 2
	note C#, 1
	octave 1
	note B_, 1
	rest 1
	octave 5
	volume_envelope 2, 6
	note F#, 1
	volume_envelope 1, 6
	octave 1
	note B_, 1
	note G#, 1
	octave 4
	note D#, 1
	octave 5
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	octave 3
	note G#, 1
;Bar 10
	sound_call Music_CeruleanCityGBS_Ch3_Bar10
;Bar 11
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch3_Bar10
	transpose 0, 0
;Bar 12
	octave 1
	note A_, 2
	octave 2
	note A_, 1
	rest 1
	octave 1
	note A_, 1
	rest 1
	note G#, 2
	octave 2
	note G#, 1
	rest 1
	octave 1
	note G#, 1
	rest 1
	note F#, 2
	octave 2
	note F#, 1
	rest 1
;Bar 13
	octave 1
	note F#, 1
	rest 1
	note B_, 1
	rest 1
	note B_, 4
	rest 10
;Bar 14
	transpose 1, 7
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 3
;Bar 15
	transpose 1, 9
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 3
;Bar 16
	transpose 1, 11
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 3
;Bar 17
	transpose 0, 0
	sound_call Music_CeruleanCityGBS_Ch3_Bar17
	rest 1
	sound_loop 0, Music_CeruleanCityGBSNight_Ch3_loop

Music_CeruleanCityGBSNight_Ch3_Type2:
	octave 1;
	note E_, 1
	rest 1
	octave 5
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	sound_ret

Music_CeruleanCityGBSNight_Ch3_Type3:
	note F#, 1;
	rest 1
	octave 6
	volume_envelope 2, 6
	note C#, 1
	volume_envelope 1, 6
	sound_ret

Music_CeruleanCityGBSNight_Ch3_Type4:
	octave 1;
	note E_, 1
	note E_, 1
	rest 1
	octave 5
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	octave 2
	note E_, 1
	octave 1
	note E_, 1
	octave 2
	note E_, 1
	octave 5
	volume_envelope 2, 6
	note G#, 1
	volume_envelope 1, 6
	octave 1
	note E_, 1
	sound_ret

Music_CeruleanCityGBSNight_Ch3_Type5:
	note F#, 1;
	rest 1
	octave 5
	volume_envelope 2, 6
	note E_, 1
	volume_envelope 1, 6
	sound_ret

; ============================================================================================================

Music_CeruleanCityGBSNight_Ch4:
	toggle_noise 9
	drum_speed 12
;Bar 1
	rest 16
	sound_call Music_CeruleanCityGBS_Ch4_loop