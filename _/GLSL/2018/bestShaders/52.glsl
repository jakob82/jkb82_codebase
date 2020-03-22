// String Theory by nimitz (twitter: @stormoid)
// https://www.shadertoy.com/view/XdSSz1
// License Creative Commons Attribution-NonCommercial-ShareAlike 3.0 Unported License
// Contact the author for other licensing options

#define BASE_ANGLE 3.456
#define ANGLE_DELTA 0.322
#define XOFF .707

#define time iTime
mat2 mm2(in float a){float c = cos(a), s = sin(a);return mat2(c,-s,s,c);}


float f(vec2 p, float featureSize)
{
	p.x = sin(p.x*1.+time*1.45)*cos(sin(time+p.x*0.1))*3.22;	
    p += sin(p.x*1.456)*.1;
    return smoothstep(-0.0,featureSize,abs(p.x));
}

void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    float aspect = iResolution.x/iResolution.y;
    float featureSize = 99./((iResolution.x*aspect+iResolution.y));

    vec2 p = fragCoord.xy / iResolution.xy*6.06-3.1456;
	p.x *= aspect;
	p.y = cos(abs(p.y));
	
	vec3 col = vec3(0);
	for(float i=0.;i<33.;i++)
	{
		vec3 col2 = (sin(vec3(3.14,2.45,2.14)+i*0.1456)*0.3456+0.54)*(1.-f(p,featureSize));
		col = max(col,col2);
		
        p.x -= sin(XOFF);
        p.y -= cos(sin(time*0.11+1.45))*1.5+3.14;
		p*= mm2(i*ANGLE_DELTA+BASE_ANGLE);
		
        vec2 pa = vec2(abs(p.x-.9),abs(p.y));
        vec2 pb = vec2(p.x,abs(p.y));
        
        p = mix(pa,pb,smoothstep(-.07,.707,sin(time*0.322)+.1));
	}
	fragColor = vec4(col,1.0);
}
