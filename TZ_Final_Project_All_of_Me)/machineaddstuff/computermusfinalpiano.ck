Rhodey pia[4];
0.375::second => dur T;

pia[0] => dac.left;
pia[1] => dac;
pia[2] => dac;
pia[3] => dac;


[48, 52, 55, 60] @=> int c[];
[48, 51, 54, 57] @=> int ebdim7[];
[48, 50, 53, 57] @=> int dm7[];
[47, 50, 53, 55] @=> int g7[];
[50, 52, 56, 59] @=> int e7[];
[49, 52, 55, 57] @=> int a7[];
[48, 52, 55, 57] @=> int am7[];
[48, 50, 54, 57] @=> int d7[];
[48, 53, 57, 60] @=> int f[];
[48, 52, 58, 62] @=> int finalchord[];
[60, 64, 70, 74] @=> int finalchord2[];

//intro

for (int i; i < 3; i++){
    for (int i; i < 4; i++){
        Std.mtof(c[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(ebdim7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(g7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
}
for (int i; i < 4; i++){
    Std.mtof(c[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
T => now;

for (int i; i < 4; i++){
    Std.mtof(c[i]) => pia[i].freq;
    0. => pia[i].noteOn;
}
3::T => now;

for (int i; i < 4; i++){
    Std.mtof(g7[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
4::T => now;
//head
for (int i; i < 2; i++){
    for (int i; i < 4; i++){
        Std.mtof(c[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(e7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(a7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(e7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(am7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(d7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(g7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(c[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(e7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(a7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    8::T => now;
    for (int i; i < 4; i++){
        Std.mtof(f[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(ebdim7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(c[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(a7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(g7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn; 
    }
    4::T => now;
    for (int i; i < 4; i++){
        Std.mtof(c[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(ebdim7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(g7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
}
for (int i; i < 2; i++){
    for (int i; i < 4; i++){
        Std.mtof(c[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(ebdim7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(dm7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
    
    for (int i; i < 4; i++){
        Std.mtof(g7[i]) => pia[i].freq;
        0.2 => pia[i].noteOn;
    }
    2::T => now;
}
for (int i; i < 4; i++){
    Std.mtof(c[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
T => now;
for (int i; i < 4; i++){
    Std.mtof(c[i]) => pia[i].freq;
    0. => pia[i].noteOn;
}
3::T => now;

for (int i; i < 4; i++){
    Std.mtof(g7[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
4::T => now;
for (int i; i < 4; i++){
    Std.mtof(c[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
2::T => now;
for (int i; i < 4; i++){
    Std.mtof(finalchord[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
2::T => now;

for (int i; i < 4; i++){
    Std.mtof(finalchord[i]) => pia[i].freq;
    0.2 => pia[i].noteOn;
}
8::T => now;