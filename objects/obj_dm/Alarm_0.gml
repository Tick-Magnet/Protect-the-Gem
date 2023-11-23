dec = irandom_range(30,60);

global.min -= dec;
global.max -= dec;

if global.min < 0 { global.min = 0;}
if global.max < 60 { global.min = 60;}

timer = 0;