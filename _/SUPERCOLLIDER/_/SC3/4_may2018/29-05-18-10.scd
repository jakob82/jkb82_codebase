b=Buffer.read(s, Platform.resourceDir +/+ "sounds/amen.wav");

{PlayBuf.ar(b.numChannels, b.bufnum, ((ChaosGen.allSubclasses.choose.ar(1)*2)+0.25)*LFDNoise0.kr(2), 1, 0, 1)}.scope

{PlayBuf.ar(b.numChannels, b.bufnum, LFDNoise0.kr(2) + 0.5, LFDNoise0.kr(2) + 0.5, 0, 1)}.scope
{PlayBuf.ar(b.numChannels, b.bufnum, ((ChaosGen.allSubclasses.choose.ar(1)*2)+0.25), 1, 0, 1)}.scope

// to be continued (...)
// nao percam o proximo episodio, porque nos tambem nao