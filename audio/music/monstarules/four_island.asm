; Four Island, Sevii Islands (Fire Red, based off of Azalea Town from GSC)
; By Monstarules
; https://soundcloud.com/monstarules/four-island

Music_FourIsland:
	channel_count 4
	channel 1, Music_FourIsland_Ch1
	channel 2, Music_FourIsland_Ch2
	channel 3, Music_FourIsland_Ch3
	channel 4, Music_FourIsland_Ch4

Music_FourIsland_Ch1:
	tempo $A0
	volume 7, 7
	stereo_panning TRUE, TRUE
	note_type 12, 10, 2
	octave 3
	sound_call Music_FourIsland_Ch1_Branch1
	sound_call Music_FourIsland_Ch1_Branch1
	volume_envelope 10, 1
	note A_, 2
Music_FourIsland_Ch1_loop:
	volume_envelope 10, 2
	octave 4
	sound_call Music_FourIsland_Ch1_Branch2
	sound_call Music_FourIsland_Ch1_Branch4
	note A_, 2
	volume_envelope 9, 1
	note A_, 2
	volume_envelope 6, 1
	note A_, 2
	volume_envelope 10, 2
	note E_, 2
	volume_envelope 9, 1
	note E_, 2
	volume_envelope 6, 1
	note E_, 2
	volume_envelope 10, 2
	note F_, 2
	volume_envelope 9, 1
	note F_, 2
	sound_call Music_FourIsland_Ch1_Branch3
	sound_call Music_FourIsland_Ch1_Branch5
	sound_call Music_FourIsland_Ch1_Branch2
	sound_call Music_FourIsland_Ch1_Branch6
	note F#, 2
	rest 2
	vibrato 4, 2, 4
	note G#, 8
	volume_envelope 12, 1
	vibrato 0, 0, 0
	note A_, 2
	volume_envelope 10, 2
	octave 4
	sound_call Music_FourIsland_Ch1_Branch2
	sound_call Music_FourIsland_Ch1_Branch4
	note G_, 2
	volume_envelope 9, 1
	note G_, 2
	volume_envelope 10, 2
	note F#, 2
	note G#, 2
	volume_envelope 9, 1
	note G#, 2
	volume_envelope 6, 1
	note G#, 2
	volume_envelope 10, 2
	note E_, 2
	volume_envelope 9, 1
	note E_, 2
	sound_call Music_FourIsland_Ch1_Branch3
	sound_call Music_FourIsland_Ch1_Branch5
	sound_call Music_FourIsland_Ch1_Branch2
	sound_call Music_FourIsland_Ch1_Branch6
	note E_, 2
	rest 2
	vibrato 4, 2, 4
	note G#, 8
	rest 2
	duty_cycle 2
	sound_call Music_FourIsland_Ch1_Branch7
	duty_cycle 1
	volume_envelope 9, 7
	vibrato 4, 2, 4
	octave 3
	note G#, 6
	note E_, 10
	sound_call Music_FourIsland_Ch1_Branch7
	volume_envelope 9, 7
	octave 3
	note B_, 6
	note F#, 8
	volume_envelope 8, 5
	vibrato 0, 0, 0
	octave 4
	note F#, 2
	sound_call Music_FourIsland_Ch1_Branch8
	note A_, 2
	sound_call Music_FourIsland_Ch1_Branch8
	note E_, 2
	volume_envelope 10, 0
	octave 3
	note G#, 4
	volume_envelope 10, 7
	vibrato 0, 2, 4
	note G#, 8
	note G#, 4
	volume_envelope 10, 0
	note E_, 6
	volume_envelope 10, 7
	note E_, 8
	duty_cycle 0
	volume_envelope 10, 1
	note A_, 2
	vibrato 0, 0, 0
	sound_loop 0, Music_FourIsland_Ch1_loop
Music_FourIsland_Ch1_Branch1:
	rest 2
	note C#, 4
	rest 2
	note C#, 4
	note C#, 4
	sound_ret
Music_FourIsland_Ch1_Branch2:
	note C#, 2
	volume_envelope 9, 1
	note C#, 2
	volume_envelope 6, 1
	note C#, 2
	volume_envelope 10, 2
	octave 3
	note B_, 2
	volume_envelope 9, 1
	note B_, 2
	volume_envelope 6, 1
	note B_, 2
	volume_envelope 10, 2
	sound_ret
Music_FourIsland_Ch1_Branch3:
	volume_envelope 13, 2
	octave 3
	note F#, 2
	note A_, 2
	octave 4
	note F#, 2
	volume_envelope 13, 5
	octave 3
	note F#, 4
	volume_envelope 13, 2
	note A_, 2
	octave 4
	note F_, 2
	volume_envelope 12, 5
	octave 3
	note F_, 4
	volume_envelope 12, 2
	note A_, 2
	octave 4
	note E_, 2
	volume_envelope 12, 5
	sound_ret
Music_FourIsland_Ch1_Branch4:
	octave 4
	note C#, 2
	volume_envelope 9, 1
	note C#, 2
	volume_envelope 10, 2
	sound_ret
Music_FourIsland_Ch1_Branch5:
	vibrato 4, 2, 4
	octave 3
	note E_, 8
	rest 2
	volume_envelope 10, 2
	vibrato 0, 0, 0
	note B_, 2
	volume_envelope 9, 1
	note B_, 2
	volume_envelope 6, 1
	note B_, 2
	volume_envelope 10, 2
	octave 4
	note D_, 2
	volume_envelope 9, 1
	note D_, 2
	volume_envelope 6, 1
	note D_, 2
	volume_envelope 3, 1
	note D_, 2
	rest 2
	volume_envelope 10, 2
	sound_ret
Music_FourIsland_Ch1_Branch6:
	note A_, 2
	volume_envelope 9, 1
	note A_, 2
	volume_envelope 10, 2
	note G#, 2
	volume_envelope 9, 1
	note G#, 2
	volume_envelope 6, 1
	note G#, 2
	volume_envelope 10, 2
	note F#, 2
	volume_envelope 9, 1
	note F#, 2
	volume_envelope 6, 1
	note F#, 2
	volume_envelope 10, 2
	note G#, 2
	volume_envelope 9, 1
	note G#, 2
	volume_envelope 12, 5
	note E_, 2
	sound_ret
Music_FourIsland_Ch1_Branch7:
	volume_envelope 10, 1
	vibrato 0, 0, 0
	octave 4
	note E_, 2
	note E_, 2
	note E_, 2
	note E_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	note F_, 2
	sound_ret
Music_FourIsland_Ch1_Branch8:
	octave 5
	note C#, 2
	octave 4
	note B_, 2
	note A_, 2
	note E_, 2
	rest 2
	note A_, 2
	rest 2
	sound_ret

Music_FourIsland_Ch2:
	note_type 12, 12, 2
	rest 2
	octave 3
	note B_, 2
	volume_envelope 9, 1
	note B_, 2
	volume_envelope 6, 1
	note B_, 2
	sound_call Music_FourIsland_Ch2_Branch1
	volume_envelope 3, 1
	note A_, 2
	volume_envelope 1, 1
	note A_, 2
	volume_envelope 12, 2
	note G#, 2
	volume_envelope 9, 1
	note G#, 2
	volume_envelope 6, 1
	note G#, 2
	sound_call Music_FourIsland_Ch2_Branch1
	vibrato 4, 2, 4
	note_type 11, 12, 7
	note E_, 4
	vibrato 0, 0, 0
	note_type 1, 12, 0
	note F_, 1
	volume_envelope 12, 2
	note F#, 1
	volume_envelope 12, 0
	note G_, 1
	volume_envelope 12, 2
	note G#, 1
Music_FourIsland_Ch2_loop:
	note_type 12, 12, 4
	sound_call Music_FourIsland_Ch2_Branch2
	note E_, 6
	volume_envelope 12, 3
	note C#, 4
	octave 3
	note B_, 4
	sound_call Music_FourIsland_Ch2_Branch3
	vibrato 0, 2, 4
	note B_, 8
	volume_envelope 12, 1
	vibrato 0, 0, 0
	note A_, 2
	volume_envelope 12, 5
	note G#, 2
	volume_envelope 12, 1
	note A_, 2
	rest 2
	volume_envelope 12, 7
	vibrato 4, 2, 4
	note B_, 8
	duty_cycle 0
	volume_envelope 12, 5
	vibrato 0, 0, 0
	note E_, 1
	note F#, 1
	volume_envelope 12, 4
	sound_call Music_FourIsland_Ch2_Branch2
	note E_, 4
	volume_envelope 12, 3
	note C#, 2
	note F_, 4
	note C#, 2
	octave 3
	note B_, 2
	sound_call Music_FourIsland_Ch2_Branch3
	note B_, 8
	volume_envelope 12, 1
	note A_, 2
	volume_envelope 13, 5
	note G#, 2
	volume_envelope 13, 2
	note E_, 2
	rest 2
	volume_envelope 13, 7
	vibrato 4, 2, 4
	octave 4
	note E_, 6
	volume_envelope 12, 7
	vibrato 0, 0, 0
	note D_, 2
	note C#, 2
	duty_cycle 1
	octave 3
	sound_call Music_FourIsland_Ch2_Branch4
	note D_, 2
	rest 2
	note C#, 2
	octave 3
	note B_, 2
	octave 4
	note C#, 2
	octave 3
	note B_, 2
	volume_envelope 12, 7
	vibrato 4, 2, 4
	note A_, 10
	vibrato 0, 0, 0
	sound_call Music_FourIsland_Ch2_Branch4
	note F_, 2
	rest 2
	volume_envelope 12, 4
	note G#, 2
	note_type 2, 12, 4
	note G_, 1
	note G#, 11
	note A_, 12
	volume_envelope 12, 2
	note G#, 12
	note C#, 12
	rest 12
	octave 3
	note B_, 12
	rest 12
	duty_cycle 2
	sound_call Music_FourIsland_Ch2_Branch5
	octave 3
	note B_, 12
	rest 12
	duty_cycle 1
	sound_call Music_FourIsland_Ch2_Branch5
	duty_cycle 0
	note F#, 12
	rest 12
	note G#, 12
	note_type 12, 12, 0
	note E_, 4
	volume_envelope 12, 7
	vibrato 0, 2, 4
	note E_, 8
	octave 3
	note B_, 4
	volume_envelope 12, 0
	note G#, 6
	volume_envelope 12, 7
	note G#, 8
	volume_envelope 12, 2
	vibrato 0, 0, 0
	note E_, 1
	note F#, 1
	sound_loop 0, Music_FourIsland_Ch2_loop
Music_FourIsland_Ch2_Branch1:
	volume_envelope 12, 2
	note A_, 2
	volume_envelope 9, 1
	note A_, 2
	volume_envelope 6, 1
	note A_, 2
	sound_ret
Music_FourIsland_Ch2_Branch2:
	note A_, 2
	volume_envelope 12, 2
	note E_, 2
	note G#, 2
	volume_envelope 12, 5
	vibrato 4, 2, 4
	note A_, 4
	note B_, 4
	octave 4
	note_type 11, 12, 5
	note C#, 2
	note_type 1, 12, 2
	note D_, 1
	volume_envelope 12, 0
	vibrato 0, 0, 0
	note D#, 1
	vibrato 4, 2, 4
	note_type 12, 12, 5
	sound_ret
Music_FourIsland_Ch2_Branch3:
	volume_envelope 12, 2
	octave 4
	note C#, 2
	volume_envelope 12, 0
	octave 3
	note A_, 12
	volume_envelope 12, 7
	note A_, 16
	duty_cycle 2
	volume_envelope 12, 1
	vibrato 0, 0, 0
	note F#, 2
	note A_, 2
	volume_envelope 12, 7
	octave 4
	note D_, 10
	note_type 2, 12, 0
	note C#, 1
	note D_, 11
	note C#, 12
	octave 3
	note B_, 12
	note_type 12, 12, 5
	note A_, 6
	volume_envelope 12, 1
	note G#, 2
	rest 2
	volume_envelope 12, 4
	note G#, 4
	note A_, 2
	volume_envelope 12, 0
	note B_, 6
	volume_envelope 12, 7
	sound_ret
Music_FourIsland_Ch2_Branch4:
	volume_envelope 12, 2
	note B_, 2
	note A_, 2
	note G#, 2
	octave 4
	note E_, 2
	rest 2
	sound_ret
Music_FourIsland_Ch2_Branch5:
	note A_, 12
	octave 4
	note C#, 12
	octave 3
	note B_, 12
	note A_, 12
	octave 4
	note C#, 12
	rest 12
	sound_ret

Music_FourIsland_Ch3:
	;duty_cycle 6
	octave 2
	note_type 12, 1, 6
	note E_, 1
	note F#, 1
	note A_, 2
	sound_call Music_FourIsland_Ch3_Branch1
	rest 2
	volume_envelope 1, 6
	note A_, 2
	sound_call Music_FourIsland_Ch3_Branch1
	volume_envelope 1, 6
	note D_, 2
Music_FourIsland_Ch3_loop:
	sound_call Music_FourIsland_Ch3_Branch2
	sound_call Music_FourIsland_Ch3_Branch4
	note F#, 2
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	volume_envelope 1, 6
	sound_call Music_FourIsland_Ch3_Branch3
	note C#, 2
	note C_, 2
	rest 2
	octave 2
	note B_, 3
	volume_envelope 2, 6
	vibrato 0, 2, 4
	note B_, 4
	volume_envelope 3, 6
	note B_, 3
	volume_envelope 1, 6
	vibrato 0, 0, 0
	sound_call Music_FourIsland_Ch3_Branch2
	sound_call Music_FourIsland_Ch3_Branch5
	octave 2
	note F#, 2
	octave 3
	sound_call Music_FourIsland_Ch3_Branch4
	sound_call Music_FourIsland_Ch3_Branch3
	note B_, 2
	note G#, 2
	rest 2
	note B_, 3
	volume_envelope 2, 6
	vibrato 0, 2, 4
	note B_, 4
	volume_envelope 3, 6
	note B_, 3
	volume_envelope 1, 6
	vibrato 0, 0, 0
	note E_, 4
	volume_envelope 2, 6
	sound_call Music_FourIsland_Ch3_Branch5
	sound_call Music_FourIsland_Ch3_Branch6
	note G#, 4
	volume_envelope 2, 6
	note G#, 2
	volume_envelope 1, 6
	note C#, 4
	volume_envelope 2, 6
	note C#, 2
	volume_envelope 3, 6
	note C#, 2
	rest 2
	volume_envelope 1, 6
	note E_, 4
	volume_envelope 2, 6
	sound_call Music_FourIsland_Ch3_Branch5
	sound_call Music_FourIsland_Ch3_Branch6
	note C#, 4
	volume_envelope 2, 6
	note C#, 2
	volume_envelope 1, 6
	note D#, 4
	volume_envelope 2, 6
	note D#, 2
	volume_envelope 3, 6
	note D#, 2
	volume_envelope 1, 6
	note F#, 2
	note A_, 2
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	rest 2
	note A_, 2
	rest 2
	note F#, 2
	note A_, 2
	note F#, 2
	octave 2
	note B_, 2
	octave 3
	note C#, 2
	rest 2
	note F#, 2
	rest 2
	note G#, 2
	note E_, 10
	volume_envelope 3, 6
	note E_, 2
	volume_envelope 1, 6
	sound_call Music_FourIsland_Ch3_Branch5
	note E_, 12
	volume_envelope 3, 6
	note E_, 2
	volume_envelope 1, 6
	octave 2
	note D_, 2
	sound_loop 0, Music_FourIsland_Ch3_loop
Music_FourIsland_Ch3_Branch1:
	volume_envelope 3, 6
	note A_, 2
	rest 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	sound_ret
Music_FourIsland_Ch3_Branch2:
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	volume_envelope 1, 6
	note E_, 2
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	volume_envelope 1, 6
	note E_, 2
	volume_envelope 3, 6
	note E_, 2
	volume_envelope 1, 6
	note G#, 2
	octave 3
	sound_ret
Music_FourIsland_Ch3_Branch3:
	note G#, 2
	volume_envelope 3, 6
	note G#, 2
	volume_envelope 1, 6
	note E_, 2
	octave 3
	note D_, 2
	volume_envelope 3, 6
	note D_, 2
	volume_envelope 1, 6
	octave 2
	note D_, 2
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	rest 6
	volume_envelope 1, 6
	note G#, 2
	volume_envelope 3, 6
	note G#, 2
	rest 2
	volume_envelope 1, 6
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	rest 6
	volume_envelope 1, 6
	octave 3
	note D_, 2
	volume_envelope 3, 6
	note D_, 2
	rest 2
	volume_envelope 1, 6
	octave 2
	note A_, 2
	volume_envelope 3, 6
	note A_, 2
	volume_envelope 1, 6
	note G#, 2
	octave 3
	note C#, 2
	volume_envelope 3, 6
	note C#, 2
	rest 2
	volume_envelope 1, 6
	octave 2
	note F#, 2
	note A_, 2
	note G#, 2
	volume_envelope 3, 6
	note G#, 2
	volume_envelope 1, 6
	note E_, 2
	octave 3
	note C#, 2
	volume_envelope 3, 6
	note C#, 2
	volume_envelope 1, 6
	octave 2
	note B_, 2
	volume_envelope 3, 6
	note B_, 2
	rest 2
	volume_envelope 1, 6
	note E_, 2
	volume_envelope 3, 6
	note E_, 2
	rest 2
	volume_envelope 1, 6
	note B_, 2
	volume_envelope 3, 6
	note B_, 2
	volume_envelope 1, 6
	octave 3
	sound_ret
Music_FourIsland_Ch3_Branch4:
	note C#, 2
	volume_envelope 3, 6
	note C#, 2
	volume_envelope 1, 6
	octave 2
	sound_ret
Music_FourIsland_Ch3_Branch5:
	note E_, 2
	volume_envelope 3, 6
	note E_, 2
	volume_envelope 1, 6
	sound_ret
Music_FourIsland_Ch3_Branch6:
	octave 2
	note B_, 4
	volume_envelope 2, 6
	note B_, 2
	volume_envelope 3, 6
	note B_, 2
	volume_envelope 1, 6
	octave 3
	sound_ret

Music_FourIsland_Ch4:
	drum_speed 12
	rest 2
	toggle_noise 3
	drum_note 1, 2
	drum_note 8, 2
	drum_note 7, 2
	drum_note 9, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 9, 2
	drum_note 7, 2
	drum_note 5, 1
	drum_note 5, 1
	drum_note 1, 2
	drum_note 8, 2
	drum_note 7, 2
	drum_note 9, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 7, 1
	drum_note 11, 1
	drum_note 7, 1
	rest 1
	drum_note 7, 1
	drum_note 3, 1
Music_FourIsland_Ch4_loop:
	drum_note 11, 2
	drum_note 8, 2
	drum_note 7, 2
	drum_note 9, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 3, 1
	drum_note 11, 2
	drum_note 9, 2
	drum_note 2, 1
	drum_note 3, 1
	sound_loop 0, Music_FourIsland_Ch4_loop