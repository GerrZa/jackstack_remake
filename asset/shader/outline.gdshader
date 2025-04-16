shader_type canvas_item;

uniform float textureDimensionX = 1;
uniform float textureDimensionY = 1;

uniform int enable = 1;

uniform vec4 outlineColor : source_color = vec4(1);

void vertex() {
	// Called for every vertex the material is visible on.
}

void fragment() {
	//float posX = UV.x / textureDimensionX;
	//float posY = UV.y / textureDimensionY;
	
	float pixelSizeX = 1.0 / textureDimensionX;
	float pixelSizeY = 1.0 / textureDimensionY;
	
	if ( (texture(TEXTURE, vec2(UV.x + pixelSizeX, UV.y)).a > 0.0 || texture(TEXTURE, vec2(UV.x - pixelSizeX, UV.y)).a > 0.0 || texture(TEXTURE, vec2(UV.x, UV.y + pixelSizeY)).a > 0.0 || texture(TEXTURE, vec2(UV.x, UV.y - pixelSizeX)).a > 0.0) ){
		if (texture(TEXTURE, UV).a == 0.0 && enable > 0){
			COLOR = outlineColor;
		}
	}
}

//void light() {
//	// Called for every pixel for every light affecting the CanvasItem.
//	// Uncomment to replace the default light processing function with this one.
//}
