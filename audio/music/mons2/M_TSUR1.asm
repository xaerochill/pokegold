;	include	group.def
;bank3d	group	G_MUSIC4
;	;
;	;	m_tsur1
;	;
;	;	Converting on Tue Jul 13 12:42:31 1999
;	;
;	;				by ver 1.01
;	;
;	public	musm_tsur1
;musm_tsur1:

Music_M_TSUR1:
	channel_count 3
	channel 1, Music_M_TSUR1_Ch1
	channel 2, Music_M_TSUR1_Ch2
	channel 3, Music_M_TSUR1_Ch3

Music_M_TSUR1_Ch1:
;----------------------------------------
	tempo 144
	volume 7, 7
; P2-1
	stereo_panning FALSE, TRUE
	duty_cycle 2
	note_type 6, 11, 3
	octave 3
	note B_, 1
	octave 4
	note E_, 1
	note G#, 1
	note A_, 1
	note B_, 8

.loop:
; P2-2
	note_type 12, 11, 1
; P1-2
	rest 4
	octave 3
	note C#, 6
	note D_, 4
	note C_, 2
; P1-3
	rest 2
	note C#, 6
	octave 2
	note E_, 4
	note A#, 2
	note B_, 2
	sound_loop 0, .loop

Music_M_TSUR1_Ch2:
; P3-1
	stereo_panning TRUE, FALSE
	note_type 6, 2, 5
	octave 3
	note E_, 1
	note D_, 1
	octave 2
	note B_, 1
	note G#, 1
	note E_, 8
; P3-2
	volume_envelope 2, 3

.loop:
	octave 2
	note A_, 2
	rest 6
	octave 4
	note E_, 2
	rest 2
	octave 2
	note A_, 2
	rest 2
	octave 3
	note D_, 2
	rest 2
	octave 4
	note F#, 8
	note D#, 2
	rest 2
; P3-3
	octave 2
	note A_, 2
	rest 2
	octave 4
	note E_, 2
	rest 6
	octave 2
	note A_, 2
	rest 2
	octave 4
	note D_, 2
	rest 6
	note C#, 4
	note D_, 2
	rest 2
	sound_loop 0, .loop

Music_M_TSUR1_Ch3:
;----------------------------------------
;	execute_music
	rest 4
; P4-1
	note_type 12, 0, 5

.loop:
; P4-2
	note D#, 1
	rest 1
	note F#, 2
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note F#, 4
	note D_, 1
	rest 1
; P4-3
	note D#, 1
	rest 1
	note F#, 4
	note D_, 1
	rest 1
	note G_, 1
	rest 1
	note G_, 1
	rest 1
	note D_, 2
	note D#, 1
	rest 1
	sound_loop 0, .loop

