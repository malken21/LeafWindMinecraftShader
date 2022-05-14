#version 120

varying vec2 lmcoord;
varying vec2 texcoord;
varying vec4 glcolor;

uniform int worldTime;

attribute vec4 mc_Entity;

void main() {
	gl_Position = ftransform();
	texcoord = (gl_TextureMatrix[0] * gl_MultiTexCoord0).xy;
	lmcoord = (gl_TextureMatrix[1] * gl_MultiTexCoord1).xy;

	if(mc_Entity.x == 18.0) {
		gl_Position.x += sin(worldTime * 0.3 + gl_Vertex.x + gl_Vertex.y + gl_Vertex.z) * 0.03;
	}

	glcolor = gl_Color;
}