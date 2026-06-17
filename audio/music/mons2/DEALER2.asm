;	Dealer02
;	Converting on Sat Mar  4 18:31:20 1995
;				by ver 1.02
;----------------------------------------
Music_DEALER2:
	channel_count 2
	channel 1, Music_DEALER2_Ch1
	channel 2, Music_DEALER2_Ch2

Music_DEALER2_Ch1:
;----------------------------------------
	tempo 124
	volume 7, 7
	duty_cycle 1
	toggle_perfect_pitch
	note_type 12, 11, 2
; P1-1
	octave 3
	note G#, 6
	octave 4
	note E_, 2
	note D#, 2
	note C#, 2
	note C_, 2
; P1-2
	note_type 12, 8, 1
.loop10:
.loop20:
	octave 3
	note E_, 4
	sound_loop 12, .loop10
	note E_, 4;		tempo 4 		e
	note E_, 4;		tempo 4 		e
	note E_, 4;		tempo 4 		e
; P1-3
	note E_, 4;		tempo 4 		e
	note E_, 4;		tempo 4 		e
;	GúY_ÿÿÿÿÿÿÿÿß÷¿ÿÖÿÿÿÿÿÿÿÿÿÿÝ·×®'ïÿÿÿÿÿÿÿÿ~û»7ï÷ÿÿÿÿÿÿÿÿ{·ß¿ßÿßµÿÿÿÿÿÿÿÿÿþïÿû§ßÊÿÿÿÿÿÿÿÿßÝ_¾yÿùÿÿÿÿÿÿÿÿÙÝßÍ÷ßýçÿÿÿÿÿÿÿÿ£}Øûÿ¿®»ÿÿÿÿÿÿÿÿ:NÎ»}¬ÿÿÿÿÿÿÿÿ_½ß²ûÿ[ÿÿÿÿÿÿÿÿo§¿oÿï_
	note A_, 4
	note A#, 4
	octave 4
	note C#, 4
; P2-4
	octave 3
	note B_, 4
	octave 4
	note C#, 4
	octave 3
	note B_, 4
	note A_, 4
; P2-5
	note G#, 2
	note F#, 2
	note E_, 2
	note D#, 2
	note E_, 2
	note F#, 2
	note G#, 2
	note A_, 2
	sound_loop 0, .loop20
;----------------------------------------

Music_DEALER2_Ch2:
;----------------------------------------
	note_type 12, 1, 0
	rest 8
; P3-1
	octave 5
	note C#, 1
	rest 1
	octave 4
	note B_, 1
	rest 1
	note A_, 1
	rest 1
; P3-2
.loop30:
	sound_call .sub31
; P3-3
	note G#, 1
	rest 3
	note E_, 1
	rest 3
	note G#, 1
	rest 3
	note E_, 1
	rest 3
; P3-4
	sound_call .sub31
; P3-5
	note G#, 1
	rest 3
	note E_, 1
	rest 3
	note G#, 1
	rest 3
	note B_, 1
	rest 3
	sound_loop 0, .loop30
.sub31:
	note G#, 1
	rest 3
	note E_, 1
	rest 3
	note G#, 1
	rest 3
	note E_, 1
	rest 1
	note F#, 1
	rest 1
	sound_ret

