void mainImage( out vec4 fragColor, in vec2 fragCoord )
{
    // Normalized pixel coordinates (from 0 to 1)
    vec2 uv = 6.0 * fragCoord/iResolution.xx;
    
    for (int n = 1; n < 8; n++){
         float i = float(n);
         uv += vec2(0.743 / i * sin(i * uv.x + iTime + 0.322 * i) + 0.808, 0.4613 / i * sin(uv.x + iTime +0.322 * i) + 1.6);
    }
    uv += vec2(0.714 / cos(sin(uv.x + iTime + 0.333) * 3.22) + 0.8, 0.432 / sin(uv.x + iTime +0.322) + 1.43);

    // Time varying pixel color
    vec3 col = vec3(0.322 * sin(uv.x) + 0.909, 0.505 * sin(uv.x) + 0.505, sin(uv.x + uv.x));
                    

    // Output to screen
    fragColor = vec4(sin(col),1.0);
}