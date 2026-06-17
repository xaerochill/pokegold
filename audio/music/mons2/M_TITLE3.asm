;	include	group.def
;bank3d	group	G_MUSIC4
	;
	;	title048
	;
	;	Converting on Tue Aug 17 13:22:09 1999
	;
	;				by ver 1.01
	;
;	public	mustitle3
;mustitle3:

Music_M_TITLE3:
	channel_count 4
	channel 1, Music_M_TITLE3_Ch1
	channel 2, Music_M_TITLE3_Ch2
	channel 3, Music_M_TITLE3_Ch3
	channel 4, Music_M_TITLE3_Ch4

Music_M_TITLE3_Ch1:
;----------------------------------------
	tempo 256
; tempo 80
	volume 7, 7
	duty_cycle 3
	pitch_offset 2
	toggle_perfect_pitch
	vibrato 16, 1, 2
	stereo_panning TRUE, FALSE
; P1-10
	note_type 12, 10, 7
	octave 3
	note D_, 6
	octave 2
	note B_, 2
	note B_, 4
	octave 3
	note D_, 4
; P1-11
	volume_envelope 10, 0
	note C_, 6
	volume_envelope 10, 7
	note C_, 6
	note D#, 4
; P1-12
	note D_, 6
	octave 2
	note G_, 2
	note G_, 4
	octave 3
	note D_, 4
; P1-13
	note D#, 8
	tempo 184
; tempo 128
	note G#, 8
	tempo 134
; P1-14
	octave 2
	note G_, 1
	rest 2
	note A_, 1
	note B_, 8
	note G_, 4
; P1-15
	octave 3
	note C_, 1
	rest 2
	note D_, 1
	note E_, 8
	note C_, 4
; P1-16
	octave 2
	note B_, 1
	rest 2
	octave 3
	note C_, 1
	octave 2
	note B_, 8
	note A_, 4
; P1-17
	note A_, 1
	rest 2
	note B_, 1
	octave 3
	note C_, 6
	note E_, 4
	note F#, 2
; P1-18							; Melo
	stereo_panning TRUE, TRUE
	octave 4
	note G_, 1
	stereo_panning TRUE, FALSE
	octave 3
	note D_, 5
	octave 2
	note B_, 2
	octave 3
	note D_, 4
	octave 2
	note B_, 4
; P1-19
	octave 3
	note C_, 6
	note F_, 6
	note C_, 4
; P1-20
	note D_, 6
	volume_envelope 11, 7
	note D#, 1
	note E_, 1
	note F_, 6
	note E_, 1
	note D#, 1
; P1-21
	note D_, 8
	note_type 8, 10, 7
	note C_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 4
; P1-22
	note D_, 9
	octave 2
	note B_, 3
	octave 3
	note D_, 6
	octave 2
	note B_, 6
; P1-23
	octave 3
	note C_, 3
	note D_, 6
	note E_, 3
	note E_, 4
	note E_, 4
	note C_, 4
; P1-24
	note_type 8, 10, 0
	octave 2
	note B_, 6
	note_type 8, 10, 7
	note B_, 6
	note_type 8, 10, 7
	octave 3
	note F_, 4
	note E_, 4
	note C_, 4
; P1-25
	note_type 8, 10, 0
	note D_, 6
	note_type 8, 10, 7
	note D_, 6
	note_type 8, 10, 7
	rest 3
	octave 2
	note B_, 3
	octave 3
	note C_, 3
	note D_, 3
; P1-26
	note D_, 9
	octave 2
	note B_, 3
	octave 3
	note D_, 6
	octave 2
	note B_, 6
; P1-27
	octave 3
	note C_, 9
	note F_, 9
	note C_, 6
; P1-28
	note D_, 9
	note_type 12, 11, 7
	note D#, 1
	note E_, 1
	note F_, 6
	note E_, 1
	note D#, 1
; P1-29
	note D_, 8
	note_type 8, 10, 7
	note C_, 4
	octave 2
	note B_, 4
	octave 3
	note C_, 4
; P1-30
	note D_, 9
	octave 2
	note B_, 3
	octave 3
	note D_, 9
	note_type 8, 11, 7
	note G_, 3
; P1-31
	note A_, 4
	note G_, 4
	note F_, 4
	note F_, 6
	note E_, 6
; P1-32
	note D_, 9
	note F_, 3
	note G_, 3
	note D_, 6
	note G_, 3
;		duty 2
	note_type 8, 5, 4
	octave 2
	note G_, 3
	note B_, 3
	note_type 8, 9, 4
	octave 3
	note D_, 3
	note G_, 3
	tempo 136
; Tempo Change
	note_type 8, 11, 4
	note F_, 3
	note A_, 3
	note_type 8, 13, 4
	octave 4
	note C_, 3
	note F_, 3
	tempo 138
; P1-34
	note_type 8, 11, 4
;		duty 3
	note D_, 9
	note C_, 9
	octave 3
	note A#, 6
; P1-35
	note_type 12, 11, 7
	note F_, 1
	note E_, 1
	note D_, 1
	note E_, 1
	note F_, 4
	octave 4
	note D_, 4
	note F_, 4
; P1-36
	note E_, 6
	octave 3
	note G_, 2
	note_type 8, 11, 7
	note A_, 4
	note G_, 4
	note F_, 4
; P1-37
	note G_, 12
	octave 4
	note C_, 6
	tempo 136
; tempo change
	note C#, 6
; P1-38
	tempo 134
; tempo 144
	sound_call .sub1_38
	octave 4
	note C_, 4
	note C_, 4
	note C#, 4
; P1-40
	sound_call .sub1_38
	octave 4
	note C_, 4
	note C_, 4
	note C#, 4
; P1-42
	sound_call .sub1_38
	octave 3
	note E_, 4
	note E_, 4
	note C_, 4
; P1-44
	note_type 12, 10, 0
	note D_, 6
	note_type 12, 10, 7
	note D_, 10
; P1-45
	volume_envelope 10, 0
	note C_, 8
	volume_envelope 10, 7
	note C_, 8
; P1-46
	volume_envelope 10, 0
	octave 2
	note B_, 8
	volume_envelope 10, 7
	note B_, 8
; P1-47
	octave 3
	note C_, 8
	octave 2
	note B_, 8
; P1-48
	octave 3
	note D_, 8
	octave 2
	note B_, 8
; P1-49
	octave 3
	note C_, 8
	note F_, 8
; P1-50
	note A_, 8
	note G_, 6
	note G_, 1
	note F#, 1
; P1-51
	note F_, 8
	note E_, 8
; P1-52
	volume_envelope 10, 0
	note D_, 16
; P1-53
	volume_envelope 10, 7
	note D_, 16
; P1-54
	volume_envelope 10, 3
	octave 2
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
; P1-55
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note_type 8, 11, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note A_, 2
	note F#, 2
; P1-56
	note_type 12, 11, 7
	note G_, 1
	rest 3
	octave 1
	note G_, 1
	rest 11
	sound_ret

.sub1_38:
	note_type 12, 12, 3
	note D_, 1

.lp1_1:
	rest 1
	octave 2
	note D_, 1
	octave 1
	note A_, 1
	octave 2
	note D_, 1
	sound_loop 5, .lp1_1
	rest 1
	note D_, 1
	octave 1
	note A_, 1
	note_type 8, 11, 7
	sound_ret

Music_M_TITLE3_Ch2:
;----------------------------------------
	duty_cycle 3
	toggle_perfect_pitch
	vibrato 20, 1, 2
	note_type 12, 12, 7
; P2-10
	octave 3
	note G_, 6
	note D_, 2
	note D_, 4
	note G_, 4
; P2-11
	volume_envelope 11, 0
	note F_, 8
	volume_envelope 11, 7
	note F_, 8
; P2-12
	volume_envelope 12, 7
	note G_, 6
	note D_, 2
	note D_, 4
	note G_, 4
; P2-13
	volume_envelope 11, 0
	note G#, 4
	volume_envelope 11, 7
	note G#, 4
	volume_envelope 11, 0
	octave 4
	note C_, 4
	volume_envelope 11, 7
	note C_, 4
; P2-14
	volume_envelope 12, 2
	octave 3
	note B_, 1
	rest 2
	note A_, 1
	volume_envelope 11, 0
	note G_, 6
	volume_envelope 11, 7
	note G_, 6
; P2-15
	rest 16
; P2-16
	rest 16
; P2-17
	volume_envelope 12, 7
	octave 4
	note C_, 1
	rest 2
	note D_, 1
	note E_, 8
	note F#, 2
	note E_, 1
	note F#, 1
; P2-18							; Main Theme Start
	octave 3
	note G_, 6
	note B_, 2
	octave 4
	note D_, 8
; P2-19
	stereo_panning TRUE, FALSE
	volume_envelope 9, 7
	octave 2
	note A_, 4
	note F_, 4
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 4
	note F_, 6
	note E_, 1
	note D#, 1
; P2-20
	note D_, 8
	stereo_panning TRUE, FALSE
	volume_envelope 9, 7
	octave 2
	note A_, 6
	octave 3
	note C_, 2
;		duty 2
	stereo_panning FALSE, TRUE
	volume_envelope 10, 3
	octave 4
	note D_, 4
	note D_, 2
	note C_, 4
	note C_, 2
	octave 3
	note B_, 4
; P2-22
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 3
	note G_, 6
	note B_, 2
	octave 4
	note D_, 8
; P2-23
	stereo_panning TRUE, FALSE
	volume_envelope 9, 7
	octave 2
	note A_, 2
	note F_, 4
	note A_, 2
	stereo_panning TRUE, TRUE
	note_type 8, 12, 7
	octave 4
	note C_, 4
	octave 3
	note B_, 4
	octave 4
	note C_, 4
; P2-24
	note D_, 12
	stereo_panning TRUE, FALSE
	note_type 8, 11, 7
	octave 2
	note A_, 9
	stereo_panning FALSE, TRUE
	note_type 12, 12, 7
	note G_, 1
	note A_, 1
; P2-25
	note B_, 6
	note E_, 1
	note F#, 1
	note G_, 4
	note_type 12, 4, -3
	note A_, 4
; P2-26
	stereo_panning TRUE, TRUE
	note_type 12, 12, 7
	octave 3
	note G_, 6
	note B_, 2
	octave 4
	note D_, 8
; P2-27
	stereo_panning TRUE, FALSE
	volume_envelope 9, 7
	octave 2
	note A_, 2
	note F_, 6
	stereo_panning TRUE, TRUE
	volume_envelope 12, 7
	octave 4
	note F_, 6
	note E_, 1
	note D#, 1
; P2-28
	note D_, 8
	stereo_panning TRUE, FALSE
	volume_envelope 9, 7
	octave 3
	note C_, 2
	octave 2
	note A_, 6
; P2-29
	note B_, 6
	note G_, 2
	note_type 8, 12, 7
	note F_, 4
	note G_, 4
	note F_, 4
; P2-30
	stereo_panning TRUE, TRUE
	octave 3
	note G_, 9
	note B_, 3
	octave 4
	note D_, 12
; P2-31
	stereo_panning TRUE, FALSE
	note_type 8, 10, 7
	octave 3
	note D_, 4
	note C_, 4
	note D_, 4
	stereo_panning TRUE, TRUE
	note_type 8, 12, 7
	octave 4
	note F_, 4
	note E_, 4
	note F_, 4
; P2-32
	note G_, 9
	note A#, 3
	note_type 12, 11, 0
	note G_, 8
	note_type 12, 11, 7
	note G_, 8
; P2-33 -tie
	volume_envelope 12, 6
	note A_, 4
	volume_envelope 5, -5
	note A_, 4
; P2-34
	volume_envelope 12, 7
	note A#, 6
	volume_envelope 12, 3
	note F_, 2
	volume_envelope 12, 7
	note F_, 8
; P2-35
	volume_envelope 10, 7
	octave 3
	note A#, 8
	volume_envelope 12, 7
	octave 4
	note A#, 4
	note B_, 4
; P2-36
	octave 5
	note C_, 6
	volume_envelope 12, 3
	octave 4
	note G_, 2
	volume_envelope 12, 7
	note G_, 8
; P2-37
	volume_envelope 10, 7
	octave 3
	note E_, 8
	volume_envelope 12, 7
	octave 5
	note C_, 4
	note C#, 4
	pitch_offset 1
; P2-38
	stereo_panning FALSE, TRUE
	sound_call .sub2_38
	note C#, 4
; P2-40
	sound_call .sub2_38
	note C#, 4
; P2-42
	sound_call .sub2_38
	octave 4
	note A_, 4
; P2-44
	stereo_panning TRUE, TRUE
	pitch_offset 0
	note_type 12, 11, 0
	octave 3
	note B_, 6
	note_type 12, 11, 7
	note B_, 10
; P2-45
	volume_envelope 12, 7
	note A_, 8
	note F_, 6
	note E_, 1
	note D#, 1
; P2-46
	note D_, 8
	note G_, 8
; P2-47
	note F_, 8
	note A_, 8
; P2-48
	volume_envelope 11, 0
	note G_, 8
	volume_envelope 11, 7
	note G_, 8
; P2-49
	volume_envelope 12, 7
	note F_, 8
	octave 4
	note F_, 6
	note E_, 1
	note D#, 1
; P2-50
	note D_, 8
	octave 2
	note B_, 8
; P2-51
	octave 3
	note C_, 8
	note A_, 6
	note F_, 1
	note A_, 1
; P2-52
	volume_envelope 11, 0
	note G_, 16
; P2-53
	volume_envelope 11, 7
	note G_, 16
; P2-54
	volume_envelope 12, 2
	octave 4
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
; P2-55
	note G_, 1
	rest 3
	volume_envelope 9, 0
	note G_, 4
	note_type 8, 12, 2
	octave 3
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F#, 2
; P2-56
	note_type 12, 12, 7
	note G_, 1
	rest 3
	octave 2
	note G_, 1
	rest 11
	sound_ret

.sub2_38:
	note_type 12, 11, 2
	note D_, 1

.lp2_1:
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note A_, 1
	note D_, 1
	sound_loop 5, .lp2_1
	octave 3
	note A_, 1
	octave 4
	note D_, 1
	note A_, 1
	note_type 8, 11, 7
	octave 5
	note C_, 4
	note C_, 4
	sound_ret

Music_M_TITLE3_Ch3:
;----------------------------------------
	stereo_panning FALSE, TRUE
	toggle_perfect_pitch
	vibrato 16, 1, 4
	pitch_offset 1
	note_type 12, 1, 6
; P3-10
	octave 3
	note B_, 6
	note D_, 2
	note G_, 4
	note D_, 4
; P3-11
	note F_, 2
	note C_, 2
	note F_, 2
	note A_, 4
	note G_, 4
	note F_, 2
; P3-12
	note G_, 2
	note D_, 2
	note G_, 2
	note B_, 4
	note A_, 4
	note G_, 2
; P3-13
	note G#, 2
	note D#, 2
	note G#, 2
	octave 4
	note C_, 2
	note C_, 2
	octave 3
	note A#, 4
	note G#, 2
; P3-14
	octave 2
	note G_, 2
	note D_, 1
	note C#, 1
	note D_, 1
	rest 1
	note G_, 2
	note D_, 1
	rest 1
	note D_, 2
	note G_, 2
	note D_, 2
; P3-15
	note F_, 2
	note C_, 1
	octave 1
	note B_, 1
	octave 2
	note C_, 1
	rest 1
	note F_, 2
	note C_, 1
	rest 1
	note C_, 2
	note F_, 2
	note C_, 2
; P3-16
	note G_, 2
	note D_, 1
	note C#, 1
	note D_, 1
	rest 1
	note G_, 2
	note D_, 1
	rest 1
	note D_, 2
	note G_, 2
	note D_, 2
; P3-17
	note A_, 2
	note F_, 1
	note E_, 1
	note F_, 1
	rest 1
	note A_, 2
	note F_, 2
	note A_, 4
	octave 3
	note C_, 2
; P3-18
	octave 2
	note G_, 4
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note D_, 2
; P3-19
	note A_, 4
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
; P3-20
	octave 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	note B_, 2
	note G_, 2
; P3-21
	note G_, 4
	note B_, 2
	note A_, 4
	note B_, 2
	octave 3
	note C_, 4
; P3-22
	octave 2
	note G_, 4
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note D_, 2
; P3-23
	note A_, 4
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
; P3-24
	octave 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	note B_, 2
	octave 3
	note C_, 2
; P3-25
	octave 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	octave 3
	note D_, 4
; P3-26
	octave 2
	note G_, 4
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note D_, 2
; P3-27
	note A_, 4
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
; P3-28
	octave 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	note B_, 2
	note G_, 2
; P3-29
	octave 3
	note D_, 4
	octave 2
	note G_, 2
	octave 3
	note D_, 4
	octave 2
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note A_, 2
; P3-30
	note G_, 4
	note D_, 2
	note G_, 4
	note D_, 2
	note G_, 2
	note D_, 2
; P3-31
	note A_, 4
	note F_, 2
	note A_, 4
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
; P3-32
	octave 2
	note B_, 4
	note G_, 2
	note B_, 4
	note G_, 2
	octave 3
	note D_, 2
	octave 2
	note G_, 2
; P3-33
	note G_, 2
	note D_, 2
	note G_, 2
	note A_, 2
; Tempo Change for Part 1
	note A_, 2
	note F_, 2
	note A_, 2
	octave 3
	note C_, 2
; P3-34
	note D_, 6
	octave 2
	note A#, 6
	octave 3
	note F_, 4
; P3-35
	note A#, 6
	note F_, 6
	note D_, 4
; P3-36
	note E_, 6
	note C_, 6
	note E_, 4
; P3-37
	octave 4
	note C_, 6
	octave 3
	note G_, 6
	note E_, 4
; P3-38
	note D_, 1
	rest 1
	stereo_panning TRUE, TRUE
	note_type 12, 1, 6
	pitch_offset 0
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	note A_, 6
	note G_, 2
	note F#, 2
; P3-39
	note D_, 1
	rest 2
	note E_, 1
	note F#, 4
	note_type 8, 1, 6
	octave 3
	note C_, 4
	note C_, 4
	note C#, 4
; P3-40
	note_type 12, 1, 6
	note D_, 1
	rest 1
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	note A_, 6
	note G_, 2
	note F#, 2
; P3-41
	note B_, 1
	rest 2
	note A_, 1
	note A_, 4
	note_type 8, 1, 6
	octave 3
	note C_, 4
	note C_, 4
	note C#, 4
; P3-42
	note_type 12, 1, 6
	note D_, 1
	rest 1
	note_type 12, 1, 6
	octave 4
	note A_, 2
	octave 5
	note D_, 2
	note G_, 6
	note E_, 2
	note G_, 2
; P3-43
	note F#, 1
	note E_, 1
	note D_, 6
	pitch_offset 1
	note_type 8, 1, 6
	octave 3
	note C_, 4
	note C_, 4
	note E_, 2
	note F#, 2
	stereo_panning FALSE, TRUE
; P3-44
	note_type 12, 1, 6
	note G_, 16
; P3-45
	note F_, 16
; P3-46
	note G_, 8
	note D_, 6
	note D_, 1
	note E_, 1
; P3-47
	note F_, 2
	note F_, 12
	note E_, 1
	note D#, 1
; P3-48
	note D_, 8
	note G_, 8
; P3-49
	note F_, 8
	note A_, 8
; P3-50
	note G_, 8
	note D_, 6
	note D_, 1
	note E_, 1
; P3-51
	note F_, 16
; P3-52
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
; P3-53
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
; P3-54
	octave 2
	note G_, 1
	rest 3
	note G_, 1
	rest 5
	note G_, 1
	note G_, 1
	note G_, 1
	rest 3
; P3-55
	note G_, 1
	rest 3
	note G_, 1
	rest 3
	note_type 8, 1, 6
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note A_, 2
; P3-56
	note_type 12, 1, 6
	note G_, 1
	rest 3
	octave 1
	note G_, 1
	rest 11
	sound_ret

Music_M_TITLE3_Ch4:
;----------------------------------------
	toggle_noise 5
	stereo_panning TRUE, FALSE
	drum_speed 12
; P4-10
	rest 16
; P4-11
	rest 16
; P4-12
	rest 16
; P4-13
	rest 8
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
;211211116_111111111
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 6
;211211113111_111111111111
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 3
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
;2112111142_1111111114
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
	drum_note 4, 2
;211211112#611111111_111111111#633222211
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 12
; P4-18							; Melody Start
	sound_call .s222221122_141461114
; P4-19
	sound_call .s222221122_141641114
; P4-20
	sound_call .s222221122_141641114
;22222112#61111_14144111#62211
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 12
; P4-22
	sound_call .s222221122_141461114
;222221122_141641111
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 2
; P4-24
	sound_call .s222221122_141641114
;2222211211_1414411111
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
; P4-26
	sound_call .s222221122_141461114
; P4-27
	sound_call .s222221122_141641114
; P4-28
	sound_call .s222221122_141641114
;22222112#61111_14144111#62332
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_speed 6
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_speed 12
; P4-30
	sound_call .s222221122_141461114
; P4-31
	sound_call .s222221122_141641114
;2222211211_1416411111
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
;22222112#61111_14144111#63322
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_speed 6
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_speed 12
;24424_14141
	drum_note 10, 2
	drum_note 4, 4
	drum_note 10, 4
	drum_note 4, 2
	drum_note 10, 4
;244222_141411
	drum_note 10, 2
	drum_note 4, 4
	drum_note 10, 4
	drum_note 4, 2
	drum_note 10, 2
	drum_note 10, 2
;24424_14141
	drum_note 10, 2
	drum_note 4, 4
	drum_note 10, 4
	drum_note 4, 2
	drum_note 10, 4
;442111111_111332211
	drum_note 10, 4
	drum_note 10, 4
	drum_note 10, 2
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
; P4-38							; Slow End First Start!
	sound_call .s211211211211_111111111111
; P4-39
	sound_call .s211211i8441111_111111i8112332
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_speed 12
; P4-40
	sound_call .s211211211211_111111111111
; P4-41
	sound_call .s211211i8441111_111111i8112332
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_speed 12
; P4-42
	sound_call .s211211211211_111111111111
; P4-43
	sound_call .s211211i8441111_111111i8112332
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_speed 12
; P4-44
	drum_note 9, 16

.loop41:
; P4-45
	rest 16
	sound_loop 6, .loop41
; P4-51
	rest 12
	drum_speed 6
	drum_note 3, 1
; Rebirth
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 12
; P4-52
	drum_note 1, 4
	drum_note 1, 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
; P4-53
	drum_note 1, 4
	drum_note 1, 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
; P4-54
	drum_note 1, 4
	drum_note 1, 6
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 4
; P4-55
	drum_note 1, 4
	drum_note 1, 4
	drum_speed 8
	drum_note 1, 2
	drum_note 1, 2
	drum_note 1, 2
	drum_speed 6
	drum_note 2, 1
	drum_note 2, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 2, 1
	drum_note 2, 1
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 12
; P4-56
	drum_note 1, 4
	drum_note 12, 4
	sound_ret

.s222221122_141461114:
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 4, 2
	drum_note 6, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 4, 2
	sound_ret

.s222221122_141641114:
	drum_note 1, 2
	drum_note 4, 2
	drum_note 1, 2
	drum_note 6, 2
	drum_note 4, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 4, 2
	sound_ret

.s211211211211_111111111111:
; P4-38
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	sound_loop 4, .s211211211211_111111111111
	sound_ret

.s211211i8441111_111111i8112332:
; P4-39
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_note 1, 2
	drum_note 1, 1
	drum_note 1, 1
	drum_speed 8
	drum_note 1, 4
	drum_note 1, 4
	sound_ret

