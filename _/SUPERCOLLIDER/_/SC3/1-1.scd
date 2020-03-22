(
{LFSaw.ar([60, 61], mul: [LFDNoise0.kr([rrand(1, 30)*MouseX.kr(0, 0.505), rrand(1, 30)*MouseY.kr(0, 0.505)])])}.scope;
{LFSaw.ar([30, 31], mul: [LFDNoise1.kr([rrand(1, 30)*MouseX.kr(0, 0.505), rrand(1, 30)*MouseY.kr(0, 0.505)])])}.scope;
{LFSaw.ar([3000, 3100], mul: [LFDNoise3.kr([rrand(1, 30)*MouseX.kr(0, 0.505), rrand(1, 30)*MouseY.kr(0, 0.505)])])}.scope;
)