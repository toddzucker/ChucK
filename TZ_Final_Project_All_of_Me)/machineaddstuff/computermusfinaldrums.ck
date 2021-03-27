0.375::second => dur T;
SndBuf kick => Gain master => PRCRev r => dac;
SndBuf hihat => PRCRev r2 => master;
0.05 => r.mix;
0.2 => r.gain;

0.3 => r2.mix;
0.7 => r2.gain;

me.dir()+"/audio/kick_01.wav" => kick.read;
me.dir()+"/audio/hihat_02.wav" => hihat.read;
for (int i; i < 156; i++){   
    0 => kick.pos;
    0 => hihat.pos;
    Math.random2f(0.13, 0.23) => r.gain;
    Math.random2f(0.65, 0.75) => r2.gain;
    T => now;
    Math.random2f(0.17, 0.27) => r.gain;
    Math.random2f(0.65, 0.75) => r2.gain;
    0 => kick.pos;
    0 => hihat.pos;
    T * 2/3 => now;
    0 => hihat.pos;
    T * 1/3 => now;
}
Math.random2f(0.17, 0.27) => r.gain;
Math.random2f(0.65, 0.75) => r2.gain;
0 => kick.pos;
0 => hihat.pos;
2::T => now;
0 => kick.pos;
2::T => now;
0 => kick.pos;
4::T => now;