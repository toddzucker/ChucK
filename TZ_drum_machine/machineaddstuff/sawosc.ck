TriOsc bass => ADSR env => PRCRev reverb => LPF filter => dac;

400 => filter.freq;
5. => filter.Q;

1 => env.gain;
0.125::second => dur T;
0.2 => reverb.mix;
0.8 => reverb.gain;
env.set(0.1::T, 0.5::T, 0.9, 0.3::T);
[40, 46, 47, 41, 46, 47, 42] @=> int notes[];


while (true){
    Std.mtof(notes[0]) => bass.freq;
    env.keyOn();
    2::T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[1]) => bass.freq;
    env.keyOn();
    2::T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[2]) => bass.freq;
    env.keyOn();
    3::T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[3]) => bass.freq;
    env.keyOn();
    T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[4]) => bass.freq;
    env.keyOn();
    T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[5]) => bass.freq;
    env.keyOn();
    T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[0]) => bass.freq;
    env.keyOn();
    2::T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[1]) => bass.freq;
    env.keyOn();
    2::T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[2]) => bass.freq;
    env.keyOn();
    3::T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[6]) => bass.freq;
    env.keyOn();
    T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[3]) => bass.freq;
    env.keyOn();
    T => now;
    env.keyOff();
    T => now;
    Std.mtof(notes[3]) => bass.freq;
    env.keyOn();
    T => now;
    env.keyOff();
    T => now;

}   




