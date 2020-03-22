/*
  * code written by tiagomoraismorgado (tmm2018)
  * reviewed by lfnoise user on reddit
*/

(
{
    var freqs, mix;
    freqs = [34, 46, 52, 56, 59, 63, 64, 72, 86, 98].midicps;

    mix = 0.25 * Mix.arFill(freqs.size, {|i|
        var freq;
        freq = freqs[i];
        [
            SinOsc.ar(freq, rrand(0,1.5), SinOsc.kr(rrand(0.01, 0.333)))
            + Pulse.ar(freq,                    width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)))
        ,
            SinOsc.ar(freq, rrand(0,1.5), SinOsc.kr(rrand(0.01, 0.333)))
            + Pulse.ar(freq + rrand(-1.0, 1.0), width:rrand(0, 1.5), mul:SinOsc.kr(rrand(0.01, 0.333)))
        ]
    });

    Out.ar(0, GVerb.ar(mix * Blip.kr(rrand(0.01, 0.1)), rrand(1, 300), rrand(1, 30), 0.55, 0.51, 15, -24, -46, -40, mul:0.006));
}.scope;
)
