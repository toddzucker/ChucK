SndBuf kick => Gain master => PRCRev r => HPF filter => dac;
second => dur T;
0.05 => r.mix;
0.2 => r.gain;
150 => filter.freq;
5. => filter.Q;
me.dir()+"/audio/kick_01.wav" => kick.read;
while (true){
    0 => kick.pos;
    .375::T => now;
    0 => kick.pos;
    .375::T => now;
    0 => kick.pos;
    .25::T => now;
    0 => kick.pos;
    0. => filter.Q;
    0.25::T => now;
    5. => filter.Q;
    0 => kick.pos;
    .125::T => now;
    0 => kick.pos;
    .125::T => now;
    0 => kick.pos;
    0. => filter.Q;
    0.25::T => now;
    5. => filter.Q;
    0 => kick.pos;
    .125::T => now;
    0 => kick.pos;
    .125::T => now;
    
    
}
