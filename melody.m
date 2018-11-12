fs = 44100; 
t = 0 : 1/fs : 0.3;

f1 = 256; 
f2 = 288;
f3 = 324;
f4 = 342;
f5 = 384;
f6 = 432;
f7 = 484;

A1 = .7;
A2 = .6;
A3 = .5;
A4 = .4;
A5 = .3;
A6 = .2;
A7 = .1;

w = 0; 
y1 = A1 *sin( 2 * pi * f1 * t + w );
y2 = A2 *sin( 2 * pi * f2 * t + w );
y3 = A3 *sin( 2 * pi * f3 * t + w );
y4 = A4 *sin( 2 * pi * f4 * t + w );
y5 = A5 *sin( 2 * pi * f5 * t + w );
y6 = A6 *sin( 2 * pi * f6 * t + w );
y7 = A7 *sin( 2 * pi * f7 * t + w );

y = [y1 y2 y3 y4 y5 y6 y7 y1 y3 y5 y7 y2 y4 y6 y3 y5 y2 y4 y6 y1 y3 y6 y4 y7 y3 y2 y5 y4 y4 y6 y6];
mySpeech = audioread('orig_input.wav');
x1 = mySpeech';
x2 = x1(1:length(y));
melody1 = y+x2;
audiowrite('melody.wav',melody1',44100);
sound(melody1,44100);
