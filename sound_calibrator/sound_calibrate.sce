pcl_file = "sound_calibrate.pcl";  
no_logfile = true;

# button 1 should be the right arrow
# button 2 should be the left arrow
# button 3 should be 's'
active_buttons = 9;
/*Buttons: 
	1: S - Adjust Step Size
	2: Up - Increase Attenuation (Reduce Volume)
	3: Down - Decrease Attenuation (Increase Volume)
	4: Left - Switch to previous sound
	5: Right - Switch to next sound
	6: E - Switch which ear to present to
	7: P - Play the sound once
	8: L - Loop the sound repeatedly
	9: R - Repeat sound continuously with 2 second gap
	10: K - Record (Keep) the current attenuation/file match in the output file*/	
button_codes = 1, 2, 3, 4, 5, 6, 7, 8, 9; 
default_font_size = 12;

begin;

picture {} default;

trial {     
   trial_type = first_response;
   
	sound { wavefile { preload = false; } wav; } theSound;
} trial1;

picture {
	text { font_size = 16; caption = "SOUND CALIBRATOR"; } header;
	x = 0; y = 200;
   text { caption = "Attenuation: "; } att;
   x = 0; y = 150;
   text { caption = "Step Size: "; } step;
   x = 0; y = 100;
   text { caption = "Sound selected: "; } snd;
   x = 0; y = 50;
	text { caption = "Ear: "; } ear;
   x = 0; y = 0;
	text { caption = "Looping: OFF"; } loopTxt;
   x = 0; y = -50;
	text { caption = "Repeating: OFF"; } repeatTxt;
   x = 0; y = -100;
   text { font_color = 255, 0, 0; caption = "Press up/down arrow to change attenuation\nleft/right arrow to change sound being tested\n'e' to change the ear\n's' to set step size\nP to Play sound once, L to loop sound continuously and L to stop looping\nR to repeat sound with 2sec gaps and R to stop repeating\nK to Save the value\nQ to quit."; };
   x = 0; y = -250;
} info;

picture {
   text { caption = "Enter Step Size: "; } enter;
   left_x = -200; y = 0;
} prompt;