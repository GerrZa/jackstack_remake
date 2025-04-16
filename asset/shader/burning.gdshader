shader_type canvas_item;

uniform sampler2D noiseTexture : source_color;
uniform sampler2D gradientTexture : source_color;
uniform float progress : hint_range(-1.0, 1.0, 0.001);

uniform vec4 blackColor : source_color;
uniform vec4 phase1Color : source_color;
uniform vec4 phase2Color : source_color;

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	//float safeProgress = progress * direction;
	float safeProgress = progress + (0.001 * sign(progress) * progress);
	
	vec4 gradientColor = texture(gradientTexture, vec2(UV.x, (sign(safeProgress) * UV.y) - (-1.0 + (abs(safeProgress) * 2.0) )));
	float noiseVal = texture(noiseTexture, UV).r + 1.0 - (abs(safeProgress) * 1.5);
	noiseVal = noiseVal * gradientColor.r;
	//if (progress < 0.0){
		//
	//}else{
		//vec4 gradientColor = texture(gradientTexture, vec2(UV.x, UV.y + progress));
		//noiseVal = noiseVal + (gradientColor.r * gradientColor.a);
	//}
	
	if (noiseVal < 1.5/3.0){
		COLOR = vec4(0); // void
	}else if (noiseVal >= 1.5/3.0 && noiseVal < 1.55/3.0){
		COLOR = blackColor; // black
	}else if (noiseVal >= 1.55/3.0 && noiseVal < 1.75/3.0){
		COLOR = phase1Color; //phase 1
	}else if (noiseVal >= 1.75/3.0 && noiseVal < 2.0/3.0){
		COLOR = mix(COLOR, phase2Color, clamp(abs(safeProgress) + 0.3, 0.0, 1.0)) ; // phase 2 
	}else{
		
	}
	//COLOR = gradientColor;
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
