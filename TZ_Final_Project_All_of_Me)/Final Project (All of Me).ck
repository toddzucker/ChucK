Machine.add(me.dir() +"/machineaddstuff/computermusfinaldrums.ck");
Machine.add(me.dir() +"/machineaddstuff/computermusfinalpiano.ck");
Machine.add(me.dir() +"/machineaddstuff/computermusfinalbass.ck");
Machine.add(me.dir() +"/machineaddstuff/computermusfinalrimshot.ck");

SqrOsc s1 => PRCRev reverb => dac;
SqrOsc s2 => reverb => dac;
SqrOsc s3 => reverb => dac;
SqrOsc s4 => reverb => dac;
SqrOsc s5 => reverb => dac;
SqrOsc s6 => reverb => dac;
SqrOsc s7 => reverb => dac;
SqrOsc s8 => reverb => dac;
SqrOsc s9 => reverb => dac;
SqrOsc s10 => reverb => dac;
SqrOsc s11 => reverb => dac;
SqrOsc s12 => reverb => dac;
SqrOsc s13 => reverb => dac;
SqrOsc s14 => reverb => dac;
SqrOsc s15 => reverb => dac;
SqrOsc s16 => reverb => dac;
SqrOsc s17 => reverb => dac;
SqrOsc s18 => reverb => dac;
SqrOsc s19 => reverb => dac;
SqrOsc s20 => reverb => dac;

0.2 => reverb.mix;
0.1 => reverb.gain;

0 => s1.gain;
0 => s2.gain; 
0 => s3.gain; 
0 => s4.gain; 
0 => s5.gain; 
0 => s6.gain; 
0 => s7.gain; 
0 => s8.gain; 
0 => s9.gain;
0 => s10.gain; 
0 => s11.gain; 
0 => s12.gain; 
0 => s13.gain; 
0 => s14.gain; 
0 => s15.gain; 
0 => s16.gain; 
0 => s17.gain; 
0 => s18.gain; 
0 => s19.gain; 
0 => s20.gain;

Hid hi; 
HidMsg msg; 
0 => int device; 
if( me.args() ) me.arg(0) => Std.atoi => device; 
if (!hi.openKeyboard( device ) ) me.exit();
if (!hi.openKeyboard( device ) ) {
    <<< "open failed" >>>;
}
else <<< "open successful:" + hi.name() >>>;


while ( true ){    
    hi => now;
    while ( hi.recv( msg ) ){ 
        if( msg.isButtonDown() ){ 
            if (msg.which == 16){ 
                Std.mtof(60) => s1.freq;
                0.03 => s1.gain;  
            }
            if (msg.which == 3){ 
                Std.mtof(61) => s2.freq;
                0.03 => s2.gain;  
            }
            if (msg.which == 17){ 
                Std.mtof(62) => s3.freq;
                0.03 => s3.gain;  
            }
            if (msg.which == 4){ 
                Std.mtof(63) => s4.freq;
                0.03 => s4.gain;  
            }
            if (msg.which ==18){ 
                Std.mtof(64) => s5.freq;
                0.03 => s5.gain;  
            }
            if (msg.which == 19){ 
                Std.mtof(65) => s6.freq;
                0.03 => s6.gain;  
            }
            if (msg.which == 6){ 
                Std.mtof(66) => s7.freq;
                0.03 => s7.gain;  
            }
            if (msg.which == 20){ 
                Std.mtof(67) => s8.freq;
                0.03 => s8.gain;  
            }
            if (msg.which == 7){ 
                Std.mtof(68) => s9.freq;
                0.03 => s9.gain;  
            }
            if (msg.which == 21){ 
                Std.mtof(69) => s10.freq;
                0.03 => s10.gain;  
            }
            if (msg.which == 8){ 
                Std.mtof(70) => s11.freq;
                0.03 => s11.gain;  
            }
            if (msg.which == 22){ 
                Std.mtof(71) => s12.freq;
                0.03 => s12.gain;  
            }
            if (msg.which == 23){ 
                Std.mtof(72) => s13.freq;
                0.03 => s13.gain;  
            }
            if (msg.which == 10){ 
                Std.mtof(73) => s14.freq;
                0.03 => s14.gain;  
            }
            if (msg.which == 24){ 
                Std.mtof(74) => s15.freq;
                0.03 => s15.gain;  
            }
            if (msg.which == 11){ 
                Std.mtof(75) => s16.freq;
                0.03 => s16.gain;  
            }
            if (msg.which == 25){ 
                Std.mtof(76) => s17.freq;
                0.03 => s17.gain;  
            }
            if (msg.which == 26){ 
                Std.mtof(77) => s18.freq;
                0.03 => s18.gain;  
            }
            if (msg.which == 13){ 
                Std.mtof(78) => s19.freq;
                0.03 => s19.gain;  
            }
            if (msg.which == 27){ 
                Std.mtof(79) => s20.freq;
                0.03 => s20.gain;  
            }
        }
        else{
            if (msg.which == 16) 0. => s1.gain;
            if (msg.which == 3) 0. => s2.gain;
            if (msg.which == 17) 0. => s3.gain;
            if (msg.which == 4) 0. => s4.gain;
            if (msg.which == 18) 0. => s5.gain;
            if (msg.which == 19) 0. => s6.gain;
            if (msg.which == 6) 0. => s7.gain;
            if (msg.which == 20) 0. => s8.gain;
            if (msg.which == 7) 0. => s9.gain;
            if (msg.which == 21) 0. => s10.gain;
            if (msg.which == 8) 0. => s11.gain;
            if (msg.which == 22) 0. => s12.gain;
            if (msg.which == 23) 0. => s13.gain;
            if (msg.which == 10) 0. => s14.gain;
            if (msg.which == 24) 0. => s15.gain;
            if (msg.which == 11) 0. => s16.gain;
            if (msg.which == 25) 0. => s17.gain;
            if (msg.which == 26) 0. => s18.gain;
            if (msg.which == 13) 0. => s19.gain;
            if (msg.which == 27) 0. => s20.gain;
        }
    }
} 
