Machine.add(me.dir()+"/machineaddstuff/sawosc.ck") => int saw;
Machine.add(me.dir()+"/machineaddstuff/bassdrum.ck") => int drum;
4.0 :: second => now;

Machine.add(me.dir()+"/machineaddstuff/shakers.ck") => int shake;
4.0 :: second => now;

Machine.add(me.dir()+"/machineaddstuff/clap.ck") => int clap;
Machine.add(me.dir()+"/machineaddstuff/snare.ck") => int snare;
8.0 :: second => now;

Machine.remove(saw);
2.0 :: second => now;

Machine.add(me.dir()+"/machineaddstuff/sawosc.ck") => saw;
2.0 :: second => now;

Machine.remove(saw);
2.0 :: second => now;

Machine.add(me.dir()+"/machineaddstuff/sawosc.ck") => saw;
8 :: second => now;

Machine.remove(saw);
4.25 :: second => now;

Machine.remove(drum);
Machine.remove(shake);
Machine.remove(snare);
Machine.remove(clap);