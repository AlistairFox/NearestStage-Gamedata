/*
	Common functions used by lighting 
	Material table
	
	/////////////////
	Anomaly Team 2020
	/////////////////
*/
#include "common.h"

// SSS Settings
#include "settings_screenspace_FLORA.h"

////////////////////////
//Material table
#define MAT_FLORA 0.15f
#define MAT_FLORA_ELIPSON 0.04f

// Simple subsurface scattering
float SSS(float3 N, float3 V, float3 L)
{
	const float SSS_DIST = 0.125; //Scattering distortion
	const float SSS_POW = 4; //Scattering power
	const float SSS_SCALE = 1; //Scattering scale
	const float SSS_AMB = 0.5; //Scattering ambient
		
    float3 SSS_vector = L + N * SSS_DIST;
    float SSS_light = pow(saturate(dot(V, -SSS_vector)),SSS_POW); //DICE translucency
    SSS_light  *= (SSS_POW+8)/(8); //blinn normalize
	
    SSS_light  = SSS_light * SSS_SCALE;
    SSS_light  += saturate(dot(N,-L)) * SSS_AMB; //only apply ambient to shaded areas
    return SSS_light;
}