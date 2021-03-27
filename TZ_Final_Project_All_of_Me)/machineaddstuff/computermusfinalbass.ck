TriOsc bass => ADSR env => PRCRev reverb => dac;

1 => env.gain;

0.2 => reverb.mix;
0.9 => reverb.gain;

0.375::second => dur T;
env.set(0.1::T, 0.5::T, 0.9, 0.3::T);


[[36, 36, 39, 39, 38, 38, 31, 31],[36, 28, 29, 30, 31, 33, 34, 35]] @=> int notesVamp[][];
[[36, 40, 43, 40, 45, 43, 36, 38],[36, 31, 33, 35, 36, 40, 38, 39],[36, 48, 45, 43, 40, 36, 43, 41]] @=> int notesC[][];
[[40, 41, 44, 45, 47, 52, 47, 46],[40, 44, 45, 47, 50, 52, 50, 47],[40, 35, 38, 39, 40, 41, 44, 40]] @=> int notesE[][];
[[45, 43, 40, 38, 37, 35, 33, 37],[45, 47, 49, 47, 45, 43, 40, 39],[45, 33, 37, 40, 45, 43, 40, 39]] @=> int notesA[][];
[[38, 50, 48, 45, 41, 40, 38, 39],[38, 40, 41, 43, 45, 41, 48, 50],[38, 41, 45, 48, 45, 41, 38, 41]] @=> int notesDm[][];
[[45, 47, 48, 45, 43, 40, 36, 37],[45, 43, 40, 36, 45, 43, 40, 39],[45, 43, 40, 36, 33, 35, 36, 33]] @=> int notesAm[][];
[[38, 42, 43, 42, 45, 42, 38, 40],[38, 40, 42, 43, 45, 48, 50, 38],[38, 50, 48, 45, 42, 40, 38, 42]]@=> int notesD[][];
[41, 38, 41, 42, 43, 41, 38, 35] @=> int notesDmG[];
[41, 45, 48, 41, 42, 45, 48, 50, 52, 48, 43, 44, 45, 40, 37, 40] @=> int notesTurnaround[];


//vamp
for (int i; i < 3; i++){
    for (int i; i < 8; i++){
        Std.mtof(notesVamp[0][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
}
//transition
for (int i; i < 8; i++){
    Std.mtof(notesVamp[1][i]) => bass.freq;
    env.keyOn();
    .4::T => now;
    env.keyOff();
    .6::T => now;
}
for (int i; i < 2; i++){
    Math.random2(0, 2) => int x;
    for (int i; i < 8; i++){
        Std.mtof(notesC[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesE[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesA[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesDm[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesE[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesAm[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesD[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    for (int i; i < 8; i++){
        Std.mtof(notesDmG[i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }    
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesC[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesE[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesA[x][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    for (int i; i < 8; i++){
        Std.mtof(notesDm[1][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    for (int i; i < 16; i++){
        Std.mtof(notesTurnaround[i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesDmG[i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
    Math.random2(0, 2) => x;
    for (int i; i < 8; i++){
        Std.mtof(notesVamp[0][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
}
//ending
for (int i; i < 2; i++){
    for (int i; i < 8; i++){
        Std.mtof(notesVamp[0][i]) => bass.freq;
        env.keyOn();
        .4::T => now;
        env.keyOff();
        .6::T => now;
    }
}
for (int i; i < 8; i++){
    Std.mtof(notesVamp[1][i]) => bass.freq;
    env.keyOn();
    .4::T => now;
    env.keyOff();
    .6::T => now;
}
Std.mtof(36) => bass.freq;
env.keyOn();
.4::T => now;
env.keyOff();
1.6::T => now;

Std.mtof(36) => bass.freq;
env.keyOn();
.4::T => now;
env.keyOff();
1.6::T => now;

Std.mtof(24) => bass.freq;
env.keyOn();
.4::T => now;
env.keyOff();
.6::T => now;