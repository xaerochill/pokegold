;	include	group.def
;bank3d	group	G_MUSIC4
;	;
;	;	bousan
;	;
;	;	Converting on Mon Jun 07 09:55:44 1999
;	;
;	;				by ver 1.01
;	;
;	public	musbousan
;musbousan:

Music_BOUSAN:
	channel_count 2
	channel 1, Music_BOUSAN_Ch1
	channel 2, Music_BOUSAN_Ch2

Music_BOUSAN_Ch1:
;----------------------------------------
	tempo 144
	stereo_panning FALSE, TRUE
	volume 7, 7
; P2-1
	duty_cycle 3
	note_type 12, 11, 3
	rest 2
; P2-2
	rest 16
; P2-3
	sound_call .sub3
; P2-4
	volume_envelope 11, 3
	octave 3
	note D_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 11, 3
	note E_, 2
	volume_envelope 9, 3
	note E_, 2
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 9, 3
	note A_, 2
	volume_envelope 11, 3
	note F_, 2
	volume_envelope 9, 3
	note F_, 2

.loop:
; P2-5
	volume_envelope 11, 3
	note D_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 11, 3
	octave 2
	note B_, 2
	volume_envelope 9, 3
	note B_, 2
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 9, 3
	note A_, 2
	volume_envelope 11, 3
	note B_, 2
	volume_envelope 9, 3
	note B_, 2
; P2-6
	volume_envelope 11, 3
	octave 3
	note D_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 11, 3
	octave 2
	note B_, 2
	volume_envelope 9, 3
	note B_, 2
	volume_envelope 11, 3
	octave 3
	note D_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 11, 3
	note E_, 2
	volume_envelope 9, 3
	note E_, 2
; P2-7
	volume_envelope 11, 3
	note F_, 2
	volume_envelope 9, 3
	note F_, 2
	volume_envelope 11, 3
	note D_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 11, 3
	note E_, 2
	volume_envelope 9, 3
	note E_, 2
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 9, 3
	note A_, 2
; P2-8
	volume_envelope 11, 3
	note D_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 11, 3
	octave 2
	note B_, 2
	volume_envelope 9, 3
	note B_, 2
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 9, 3
	note A_, 2
	volume_envelope 11, 3
	note B_, 2
	volume_envelope 9, 3
	note B_, 2
; P2-9
	sound_call .sub3
	sound_loop 0, .loop

.sub3:
	volume_envelope 11, 3
	octave 2
	note E_, 2
	volume_envelope 9, 3
	note E_, 2
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 9, 3
	note A_, 2
	volume_envelope 11, 3
	note B_, 2
	volume_envelope 9, 3
	note B_, 2
	volume_envelope 11, 3
	note A_, 2
	volume_envelope 9, 3
	note A_, 2
	sound_ret

Music_BOUSAN_Ch2:
;----------------------------------------
	stereo_panning TRUE, FALSE
; P3-1
	toggle_perfect_pitch
	vibrato 22, 2, 3
	note_type 12, 1, 0
	octave 5
	note B_, 1
	octave 6
	note C_, 1
; P3-2
	octave 5
	note B_, 16
; P3-3 -tie
	toggle_perfect_pitch
	vibrato 7, 2, 3
	note B_, 8
	toggle_perfect_pitch
	vibrato 20, 2, 3
	octave 6
	note D_, 6
	note E_, 1
	note F_, 1
; P3-4
	note E_, 14
	note G_, 1
	note G#, 1

.loop:
; P3-5
	note A_, 12
	note B_, 4
; P3-6
	note D_, 9
	note E_, 1
	note F_, 1
	note D_, 1
	toggle_perfect_pitch
	vibrato 0, 0, 0
	note E_, 4
; P3-7 -tie
	toggle_perfect_pitch
	vibrato 7, 2, 3
	note E_, 8
	toggle_perfect_pitch
	vibrato 20, 2, 3
	octave 5
	note B_, 8
; P3-8
	octave 6
	note F_, 8
	note_type 6, 1, 0
	note E_, 1
	note D#, 1
	note D_, 1
	note C#, 1
	note C_, 1
	octave 5
	note B_, 1
	note A#, 1
	note A_, 1
	rest 4
	octave 6
	note E_, 2
	note F_, 2
; P3-9
	note_type 12, 1, 0
	note E_, 14
	note G_, 1
	note G#, 1
	sound_loop 0, .loop

