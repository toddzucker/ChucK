SqrOsc s => ADSR env => ResonZ filt => PRCRev reverb => dac;
SqrOsc s2 => filt => env => reverb => dac;
SqrOsc s3 => filt => env => reverb => dac;
SinOsc s4 => filt => env => reverb => dac;
SinOsc s5 => filt => env => reverb => dac;
SqrOsc s6 => filt => env => reverb => dac;
SinOsc s7 => filt => env => reverb => dac;
SawOsc s8 => filt => env => reverb => dac;
SinOsc s9 => filt => env => reverb => dac;
SawOsc s10 => filt => env => reverb => dac;


0.5 => filt.Q => filt.gain;


0.2 => reverb.mix;
0.5 => reverb.gain;
0.03 => env.gain;

0.3::second => dur T;

env.set(4::T, T, 0.9, 1.5::T);

Std.mtof(35) => s.freq;
Std.mtof(42) => s2.freq;
Std.mtof(47) => s3.freq;
Std.mtof(54) => s4.freq;
Std.mtof(59) => s5.freq;
Std.mtof(61) => s6.freq;
Std.mtof(64) => s7.freq;
Std.mtof(66) => s8.freq;
Std.mtof(71) => s9.freq;
Std.mtof(76) => s10.freq;

env.keyOn();
0. => float x;
while(x <= 0.5){
    x => reverb.gain;
    <<< x >>>;
    x + 0.01 => x;
    20::ms => now;
}
5::T => now;
env.keyOff();
.5::T => now;

env.set(T, T, 0.9, 4::T);

Std.mtof(59) => s6.freq;
Std.mtof(63) => s8.freq;
Std.mtof(75) => s10.freq;


env.keyOn();
2::T => now;
0.5 - x;
while(x >= 0.1){
    x => reverb.gain;
    <<< x >>>;
    x - 0.01 => x;
    65::ms => now;
}
while(x >= 0){
    x => reverb.gain;
    <<< x >>>;
    x - 0.001 => x;
    10::ms => now;
}