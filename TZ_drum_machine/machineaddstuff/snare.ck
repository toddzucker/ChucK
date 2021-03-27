second => dur T;
SndBuf rimshot => Gain master => PRCRev r => dac;
0.05 => r.mix;
0.7 => r.gain;
me.dir()+"/audio/snare_03.wav" => rimshot.read;
while (true){   
    0 => rimshot.pos;
    0 => r.gain;
    .25::T => now;
    0 => rimshot.pos;
    .4 => r.gain;
    0.125::T => now;
    0 => rimshot.pos;
    .4 => r.gain;
    0.125::T => now;
    0 => rimshot.pos;
    0 => r.gain;
    .25::T => now;
    0 => rimshot.pos;
    .4 => r.gain;
    .25::T => now;
    }
    

