0.375::second => dur T;
SndBuf rimshot => Gain master => PRCRev r => dac;
0.05 => r.mix;
me.dir()+"/audio/snare_03.wav" => rimshot.read;
for (int i; i < 156; i++){   
    0 => rimshot.pos;
    Math.random2f(0., 1) => float x;
    if (x > 0.95){
        Math.random2f(0.23, 0.33) => r.gain;
    }
    else 0 => r.gain;
    T * 2/3 => now;
    0 => rimshot.pos;
    Math.random2f(0., 1) => x;
    if (x > 0.95){
        Math.random2f(0.23, 0.33) => r.gain;
    }
    else 0 => r.gain;
    T * 1/3 => now;    0 => rimshot.pos;
    T * 2/3 => now;
    0 => rimshot.pos;
    Math.random2f(0., 1) => x;
    if (x > 0.8){
        Math.random2f(0.23, 0.23) => r.gain;
    }
    else 0 => r.gain;
    T * 1/3 => now;
}
