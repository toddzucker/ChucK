// Listing 7.12 Testing all the presets for the Shakers UG

// Fun with particles, the Shakers instrument
Shakers shak => dac;

// Run through all the presets in order
while(true){
    for (0 => int i; i < 2; i++) {
        11 => shak.preset;
        0.4 => shak.noteOn;
        .25 :: second => now;   
    }
    11 => shak.preset;
    0.8 => shak.noteOn;
    .25 :: second => now;
    11 => shak.preset;
    0.4 => shak.noteOn;
    .25 :: second => now;
}  
