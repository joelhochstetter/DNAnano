// switches for output
#declare DRAW_BASES = 1; // possible values are 0, 1; only relevant for DNA ribbons
#declare DRAW_BASES_TYPE = 3; // possible values are 1, 2, 3; only relevant for DNA ribbons
#declare DRAW_FOG = 0; // set to 1 to enable fog

#include "colors.inc"

#include "transforms.inc"
background { rgb <1, 1, 1>}

#default {
   normal{
       ripples 0.25
       frequency 0.20
       turbulence 0.2
       lambda 5
   }
	finish {
		phong 0.1
		phong_size 40.
	}
}

// original window dimensions: 1024x640


// camera settings

camera {
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.199707, 35.596359, 35.014988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301552, 35.210155, 34.993210>,  <24.362658, 34.978432, 34.980145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.301552, 35.210155, 34.993210>,  <24.199707, 35.596359, 35.014988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.301552, 35.210155, 34.993210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754240, 0.163032, 0.636037,
		-0.605224, -0.203004, 0.769736,
		0.254610, -0.965510, -0.054443,
		24.377935, 34.920502, 34.976875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.970737, 35.534000, 35.033749>,  <24.199707, 35.596359, 35.014988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.970737, 35.534000, 35.033749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192101, 35.555313, 34.701267>,  <25.324919, 35.568100, 34.501778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.192101, 35.555313, 34.701267>,  <24.970737, 35.534000, 35.033749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.192101, 35.555313, 34.701267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044090, 0.994678, 0.093119,
		0.831741, -0.088180, 0.548115,
		0.553410, 0.053284, -0.831203,
		25.358124, 35.571297, 34.451908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.552860, 35.755314, 35.299736>,  <24.970737, 35.534000, 35.033749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.552860, 35.755314, 35.299736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720484, 35.700775, 34.940670>,  <25.821058, 35.668053, 34.725231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.720484, 35.700775, 34.940670>,  <25.552860, 35.755314, 35.299736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.720484, 35.700775, 34.940670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131511, 0.969120, -0.208594,
		0.898385, 0.205465, 0.388187,
		0.419058, -0.136346, -0.897664,
		25.846201, 35.659870, 34.671371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.212126, 36.071228, 35.363510>,  <25.552860, 35.755314, 35.299736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.212126, 36.071228, 35.363510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105944, 36.067574, 34.977879>,  <26.042234, 36.065380, 34.746498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.105944, 36.067574, 34.977879>,  <26.212126, 36.071228, 35.363510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.105944, 36.067574, 34.977879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021926, 0.999639, -0.015506,
		0.963874, -0.025255, -0.265159,
		-0.265455, -0.009132, -0.964080,
		26.026308, 36.064835, 34.688656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.664457, 36.552391, 35.061871>,  <26.212126, 36.071228, 35.363510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.664457, 36.552391, 35.061871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350239, 36.504391, 34.819046>,  <26.161709, 36.475590, 34.673351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.350239, 36.504391, 34.819046>,  <26.664457, 36.552391, 35.061871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350239, 36.504391, 34.819046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062540, 0.960598, -0.270812,
		0.615636, -0.250700, -0.747089,
		-0.785545, -0.119999, -0.607058,
		26.114574, 36.468391, 34.636929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.886501, 36.711716, 34.402149>,  <26.664457, 36.552391, 35.061871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.886501, 36.711716, 34.402149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488785, 36.749893, 34.421211>,  <26.250154, 36.772800, 34.432648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488785, 36.749893, 34.421211>,  <26.886501, 36.711716, 34.402149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488785, 36.749893, 34.421211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076052, 0.947430, -0.310792,
		-0.074814, -0.305395, -0.949282,
		-0.994293, 0.095446, 0.047655,
		26.190496, 36.778526, 34.435509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.522722, 36.823086, 33.721741>,  <26.886501, 36.711716, 34.402149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.522722, 36.823086, 33.721741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300863, 37.008358, 33.998241>,  <26.167747, 37.119522, 34.164143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.300863, 37.008358, 33.998241>,  <26.522722, 36.823086, 33.721741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.300863, 37.008358, 33.998241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173889, 0.876925, -0.448069,
		-0.813712, -0.128320, -0.566928,
		-0.554649, 0.463181, 0.691251,
		26.134468, 37.147312, 34.205616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.032145, 37.218033, 33.404053>,  <26.522722, 36.823086, 33.721741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.032145, 37.218033, 33.404053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086061, 37.390125, 33.761093>,  <26.118412, 37.493382, 33.975315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.086061, 37.390125, 33.761093>,  <26.032145, 37.218033, 33.404053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.086061, 37.390125, 33.761093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013301, 0.899952, -0.435787,
		-0.990784, 0.070614, 0.115584,
		0.134793, 0.430234, 0.892597,
		26.126499, 37.519196, 34.028873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.471407, 37.678677, 33.581623>,  <26.032145, 37.218033, 33.404053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.471407, 37.678677, 33.581623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787516, 37.803715, 33.792431>,  <25.977180, 37.878738, 33.918915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787516, 37.803715, 33.792431>,  <25.471407, 37.678677, 33.581623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787516, 37.803715, 33.792431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035366, 0.881921, -0.470069,
		-0.611733, 0.352844, 0.708014,
		0.790274, 0.312596, 0.527021,
		26.024597, 37.897495, 33.950539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.187115, 38.275162, 33.914280>,  <25.471407, 37.678677, 33.581623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.187115, 38.275162, 33.914280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583433, 38.329235, 33.917042>,  <25.821224, 38.361679, 33.918697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.583433, 38.329235, 33.917042>,  <25.187115, 38.275162, 33.914280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.583433, 38.329235, 33.917042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113658, 0.858554, -0.499968,
		-0.073511, 0.494582, 0.866017,
		0.990797, 0.135183, 0.006900,
		25.880672, 38.369789, 33.919113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262293, 38.948635, 34.179020>,  <25.187115, 38.275162, 33.914280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262293, 38.948635, 34.179020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608141, 38.884335, 33.988613>,  <25.815649, 38.845757, 33.874367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608141, 38.884335, 33.988613>,  <25.262293, 38.948635, 34.179020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608141, 38.884335, 33.988613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121594, 0.852324, -0.508683,
		0.487493, 0.497698, 0.717389,
		0.864618, -0.160749, -0.476020,
		25.867527, 38.836109, 33.845806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780388, 39.486031, 34.291172>,  <25.262293, 38.948635, 34.179020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780388, 39.486031, 34.291172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797855, 39.294674, 33.940346>,  <25.808336, 39.179859, 33.729851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.797855, 39.294674, 33.940346>,  <25.780388, 39.486031, 34.291172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.797855, 39.294674, 33.940346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064613, 0.874708, -0.480324,
		0.996954, 0.077645, 0.007288,
		0.043670, -0.478390, -0.877061,
		25.810957, 39.151157, 33.677227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.780083, 39.878735, 33.639252>,  <25.780388, 39.486031, 34.291172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.780083, 39.878735, 33.639252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896015, 39.955475, 33.264191>,  <25.965574, 40.001518, 33.039154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.896015, 39.955475, 33.264191>,  <25.780083, 39.878735, 33.639252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.896015, 39.955475, 33.264191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456306, -0.888886, -0.040826,
		-0.841298, -0.416023, -0.345169,
		0.289832, 0.191849, -0.937652,
		25.982965, 40.013031, 32.982895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.563103, 39.343151, 33.189697>,  <25.780083, 39.878735, 33.639252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.563103, 39.343151, 33.189697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917229, 39.509563, 33.106613>,  <26.129704, 39.609409, 33.056763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.917229, 39.509563, 33.106613>,  <25.563103, 39.343151, 33.189697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.917229, 39.509563, 33.106613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453016, -0.872414, 0.183495,
		-0.104870, -0.256546, -0.960826,
		0.885313, 0.416026, -0.207710,
		26.182823, 39.634373, 33.044300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.998495, 39.125027, 32.642277>,  <25.563103, 39.343151, 33.189697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.998495, 39.125027, 32.642277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178680, 39.275612, 32.966095>,  <26.286791, 39.365963, 33.160385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.178680, 39.275612, 32.966095>,  <25.998495, 39.125027, 32.642277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.178680, 39.275612, 32.966095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192149, -0.926381, 0.323878,
		0.871872, 0.009657, -0.489638,
		0.450463, 0.376464, 0.809542,
		26.313820, 39.388550, 33.208958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594757, 38.591843, 32.721024>,  <25.998495, 39.125027, 32.642277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594757, 38.591843, 32.721024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476118, 38.805138, 33.037930>,  <26.404936, 38.933113, 33.228073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.476118, 38.805138, 33.037930>,  <26.594757, 38.591843, 32.721024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.476118, 38.805138, 33.037930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014333, -0.827020, 0.561990,
		0.954895, 0.178040, 0.237648,
		-0.296596, 0.533235, 0.792270,
		26.387140, 38.965107, 33.275612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.054178, 38.664482, 33.324245>,  <26.594757, 38.591843, 32.721024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.054178, 38.664482, 33.324245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688932, 38.723240, 33.476372>,  <26.469786, 38.758495, 33.567650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.688932, 38.723240, 33.476372>,  <27.054178, 38.664482, 33.324245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.688932, 38.723240, 33.476372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133488, -0.773698, 0.619332,
		0.385230, 0.616289, 0.686867,
		-0.913115, 0.146897, 0.380318,
		26.414997, 38.767307, 33.590466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.120308, 38.713692, 34.134411>,  <27.054178, 38.664482, 33.324245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.120308, 38.713692, 34.134411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746624, 38.595684, 34.054195>,  <26.522413, 38.524879, 34.006065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746624, 38.595684, 34.054195>,  <27.120308, 38.713692, 34.134411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746624, 38.595684, 34.054195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136496, -0.815020, 0.563127,
		-0.329576, 0.498706, 0.801669,
		-0.934210, -0.295017, -0.200540,
		26.466360, 38.507179, 33.994034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.994711, 38.286816, 34.653572>,  <27.120308, 38.713692, 34.134411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.994711, 38.286816, 34.653572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679932, 38.164806, 34.439030>,  <26.491064, 38.091599, 34.310307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.679932, 38.164806, 34.439030>,  <26.994711, 38.286816, 34.653572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.679932, 38.164806, 34.439030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097334, -0.797009, 0.596073,
		-0.609296, 0.521283, 0.597514,
		-0.786946, -0.305026, -0.536353,
		26.443848, 38.073299, 34.278122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612274, 37.998840, 35.098728>,  <26.994711, 38.286816, 34.653572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612274, 37.998840, 35.098728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463923, 37.827969, 34.768887>,  <26.374912, 37.725445, 34.570984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.463923, 37.827969, 34.768887>,  <26.612274, 37.998840, 35.098728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.463923, 37.827969, 34.768887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178038, -0.838752, 0.514585,
		-0.911456, 0.337658, 0.235021,
		-0.370878, -0.427179, -0.824602,
		26.352659, 37.699814, 34.521507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883591, 37.758316, 35.210171>,  <26.612274, 37.998840, 35.098728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883591, 37.758316, 35.210171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103354, 37.546516, 34.951626>,  <26.235212, 37.419437, 34.796497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.103354, 37.546516, 34.951626>,  <25.883591, 37.758316, 35.210171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.103354, 37.546516, 34.951626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044351, -0.754001, 0.655374,
		-0.834377, -0.388734, -0.390770,
		0.549407, -0.529498, -0.646362,
		26.268177, 37.387669, 34.757717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.623861, 37.077244, 35.196850>,  <25.883591, 37.758316, 35.210171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.623861, 37.077244, 35.196850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994638, 37.047539, 35.049736>,  <26.217104, 37.029716, 34.961468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.994638, 37.047539, 35.049736>,  <25.623861, 37.077244, 35.196850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994638, 37.047539, 35.049736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144875, -0.833365, 0.533398,
		-0.346108, -0.547711, -0.761723,
		0.926941, -0.074259, -0.367784,
		26.272720, 37.025261, 34.939400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.164984, 37.270382, 34.669811>,  <25.623861, 37.077244, 35.196850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.164984, 37.270382, 34.669811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309036, 37.224960, 34.299427>,  <25.395468, 37.197708, 34.077194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.309036, 37.224960, 34.299427>,  <25.164984, 37.270382, 34.669811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.309036, 37.224960, 34.299427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337813, -0.909330, 0.242901,
		-0.869590, -0.400279, -0.289120,
		0.360134, -0.113556, -0.925964,
		25.417076, 37.190895, 34.021637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.992474, 36.583595, 34.415848>,  <25.164984, 37.270382, 34.669811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.992474, 36.583595, 34.415848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327534, 36.731960, 34.255466>,  <25.528570, 36.820980, 34.159237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.327534, 36.731960, 34.255466>,  <24.992474, 36.583595, 34.415848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.327534, 36.731960, 34.255466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433455, -0.898068, 0.074766,
		-0.332350, -0.236422, -0.913043,
		0.837652, 0.370915, -0.400951,
		25.578829, 36.843235, 34.135181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.157518, 36.373722, 33.736534>,  <24.992474, 36.583595, 34.415848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.157518, 36.373722, 33.736534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464222, 36.407913, 33.991020>,  <25.648245, 36.428429, 34.143711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.464222, 36.407913, 33.991020>,  <25.157518, 36.373722, 33.736534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464222, 36.407913, 33.991020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126175, -0.991830, -0.018807,
		0.629413, 0.094695, -0.771279,
		0.766759, 0.085479, 0.636219,
		25.694250, 36.433556, 34.181885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.698250, 36.066994, 33.459343>,  <25.157518, 36.373722, 33.736534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.698250, 36.066994, 33.459343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799902, 36.052296, 33.845932>,  <25.860893, 36.043476, 34.077885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.799902, 36.052296, 33.845932>,  <25.698250, 36.066994, 33.459343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.799902, 36.052296, 33.845932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221814, -0.970428, -0.095222,
		0.941390, 0.238576, -0.238465,
		0.254131, -0.036746, 0.966472,
		25.876141, 36.041271, 34.135872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.165691, 35.473286, 33.455223>,  <25.698250, 36.066994, 33.459343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.165691, 35.473286, 33.455223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049517, 35.539818, 33.832153>,  <25.979811, 35.579739, 34.058311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.049517, 35.539818, 33.832153>,  <26.165691, 35.473286, 33.455223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.049517, 35.539818, 33.832153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003645, -0.984577, 0.174914,
		0.956887, 0.054237, 0.285353,
		-0.290439, 0.166333, 0.942326,
		25.962385, 35.589718, 34.114853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.560734, 35.085697, 34.000534>,  <26.165691, 35.473286, 33.455223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.560734, 35.085697, 34.000534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182446, 35.145451, 34.115978>,  <25.955473, 35.181305, 34.185246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.182446, 35.145451, 34.115978>,  <26.560734, 35.085697, 34.000534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.182446, 35.145451, 34.115978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028792, -0.923108, 0.383461,
		0.323705, 0.354337, 0.877303,
		-0.945720, 0.149387, 0.288612,
		25.898729, 35.190266, 34.202560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.131613, 35.192348, 34.497555>,  <26.560734, 35.085697, 34.000534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.131613, 35.192348, 34.497555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337931, 35.141247, 34.836407>,  <27.461721, 35.110588, 35.039719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.337931, 35.141247, 34.836407>,  <27.131613, 35.192348, 34.497555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.337931, 35.141247, 34.836407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.679415, -0.663345, 0.313638,
		0.521875, -0.737328, -0.428946,
		0.515793, -0.127753, 0.847134,
		27.492668, 35.102921, 35.090546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189510, 34.439445, 34.657169>,  <27.131613, 35.192348, 34.497555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189510, 34.439445, 34.657169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228230, 34.629543, 35.006973>,  <27.251461, 34.743603, 35.216858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.228230, 34.629543, 35.006973>,  <27.189510, 34.439445, 34.657169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.228230, 34.629543, 35.006973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554289, -0.704038, 0.443952,
		0.826676, -0.527707, 0.195272,
		0.096798, 0.475242, 0.874514,
		27.257269, 34.772118, 35.269329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070114, 33.922039, 35.077374>,  <27.189510, 34.439445, 34.657169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070114, 33.922039, 35.077374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037191, 34.202095, 35.361073>,  <27.017437, 34.370129, 35.531292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037191, 34.202095, 35.361073>,  <27.070114, 33.922039, 35.077374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037191, 34.202095, 35.361073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390986, -0.677295, 0.623219,
		0.916709, -0.226011, 0.329490,
		-0.082308, 0.700136, 0.709249,
		27.012499, 34.412136, 35.573849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352867, 33.578854, 35.637241>,  <27.070114, 33.922039, 35.077374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352867, 33.578854, 35.637241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102858, 33.874863, 35.736607>,  <26.952852, 34.052467, 35.796227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.102858, 33.874863, 35.736607>,  <27.352867, 33.578854, 35.637241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.102858, 33.874863, 35.736607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470759, -0.611183, 0.636271,
		0.622681, 0.280744, 0.730378,
		-0.625024, 0.740026, 0.248410,
		26.915350, 34.096870, 35.811131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169130, 33.392841, 36.369556>,  <27.352867, 33.578854, 35.637241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169130, 33.392841, 36.369556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881096, 33.629639, 36.224770>,  <26.708275, 33.771717, 36.137897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.881096, 33.629639, 36.224770>,  <27.169130, 33.392841, 36.369556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.881096, 33.629639, 36.224770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692253, -0.648670, 0.316250,
		-0.047577, 0.478297, 0.876909,
		-0.720085, 0.591996, -0.361964,
		26.665070, 33.807236, 36.116180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.651749, 33.491657, 36.947281>,  <27.169130, 33.392841, 36.369556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.651749, 33.491657, 36.947281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488503, 33.569374, 36.590473>,  <26.390554, 33.616005, 36.376389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.488503, 33.569374, 36.590473>,  <26.651749, 33.491657, 36.947281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.488503, 33.569374, 36.590473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790534, -0.563919, 0.238852,
		-0.456617, 0.802648, 0.383741,
		-0.408113, 0.194297, -0.892016,
		26.366068, 33.627663, 36.322868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.105824, 33.952621, 37.010612>,  <26.651749, 33.491657, 36.947281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.105824, 33.952621, 37.010612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136633, 33.662807, 36.736645>,  <26.155119, 33.488918, 36.572266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.136633, 33.662807, 36.736645>,  <26.105824, 33.952621, 37.010612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.136633, 33.662807, 36.736645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816670, -0.439920, 0.373524,
		-0.571941, 0.530583, -0.625592,
		0.077025, -0.724536, -0.684920,
		26.159740, 33.445446, 36.531170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.499466, 34.077229, 36.564232>,  <26.105824, 33.952621, 37.010612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.499466, 34.077229, 36.564232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647451, 33.705887, 36.578609>,  <25.736242, 33.483082, 36.587238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.647451, 33.705887, 36.578609>,  <25.499466, 34.077229, 36.564232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.647451, 33.705887, 36.578609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.832117, -0.313909, 0.457212,
		-0.413169, -0.199064, -0.888631,
		0.369963, -0.928351, 0.035947,
		25.758440, 33.427383, 36.589394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.927858, 33.723652, 36.502357>,  <25.499466, 34.077229, 36.564232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.927858, 33.723652, 36.502357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163164, 33.445961, 36.668243>,  <25.304348, 33.279346, 36.767776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.163164, 33.445961, 36.668243>,  <24.927858, 33.723652, 36.502357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.163164, 33.445961, 36.668243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797843, -0.414623, 0.437647,
		-0.131878, -0.588329, -0.797795,
		0.588265, -0.694231, 0.414715,
		25.339643, 33.237690, 36.792656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.688204, 33.094475, 36.253654>,  <24.927858, 33.723652, 36.502357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.688204, 33.094475, 36.253654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898951, 33.034512, 36.588303>,  <25.025398, 32.998531, 36.789093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898951, 33.034512, 36.588303>,  <24.688204, 33.094475, 36.253654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898951, 33.034512, 36.588303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744454, -0.556356, 0.369129,
		0.410125, -0.817309, -0.404726,
		0.526865, -0.149910, 0.836625,
		25.057011, 32.989540, 36.839291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.477713, 32.429272, 36.408806>,  <24.688204, 33.094475, 36.253654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.477713, 32.429272, 36.408806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658182, 32.573837, 36.735199>,  <24.766464, 32.660576, 36.931034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.658182, 32.573837, 36.735199>,  <24.477713, 32.429272, 36.408806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.658182, 32.573837, 36.735199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674612, -0.460460, 0.576954,
		0.584244, -0.810776, 0.036065,
		0.451174, 0.361412, 0.815980,
		24.793535, 32.682262, 36.979992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.437977, 31.882910, 36.937973>,  <24.477713, 32.429272, 36.408806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.437977, 31.882910, 36.937973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495070, 32.231586, 37.125496>,  <24.529325, 32.440792, 37.238010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.495070, 32.231586, 37.125496>,  <24.437977, 31.882910, 36.937973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.495070, 32.231586, 37.125496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550042, -0.323918, 0.769760,
		0.822849, -0.367733, 0.433234,
		0.142734, 0.871693, 0.468805,
		24.537889, 32.493095, 37.266136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.916563, 31.587700, 36.481495>,  <24.437977, 31.882910, 36.937973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.916563, 31.587700, 36.481495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310236, 31.519115, 36.463657>,  <25.546440, 31.477964, 36.452957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.310236, 31.519115, 36.463657>,  <24.916563, 31.587700, 36.481495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.310236, 31.519115, 36.463657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170559, 0.985070, -0.023377,
		0.047932, 0.015402, 0.998732,
		0.984181, -0.171463, -0.044590,
		25.605490, 31.467676, 36.450279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235502, 32.013050, 37.072056>,  <24.916563, 31.587700, 36.481495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235502, 32.013050, 37.072056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447765, 31.927433, 36.744011>,  <25.575123, 31.876062, 36.547184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.447765, 31.927433, 36.744011>,  <25.235502, 32.013050, 37.072056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.447765, 31.927433, 36.744011> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020806, 0.970586, -0.239855,
		0.847331, 0.110217, 0.519502,
		0.530657, -0.214045, -0.820114,
		25.606962, 31.863220, 36.497978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.840475, 32.480946, 36.981201>,  <25.235502, 32.013050, 37.072056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.840475, 32.480946, 36.981201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691080, 32.349602, 36.634171>,  <25.601444, 32.270794, 36.425953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.691080, 32.349602, 36.634171>,  <25.840475, 32.480946, 36.981201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.691080, 32.349602, 36.634171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011176, 0.936780, -0.349742,
		0.927567, -0.120929, -0.353547,
		-0.373489, -0.328360, -0.867575,
		25.579035, 32.251095, 36.373898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.153400, 32.688198, 36.374657>,  <25.840475, 32.480946, 36.981201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.153400, 32.688198, 36.374657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789368, 32.658428, 36.211578>,  <25.570948, 32.640568, 36.113731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.789368, 32.658428, 36.211578>,  <26.153400, 32.688198, 36.374657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.789368, 32.658428, 36.211578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073825, 0.938896, -0.336190,
		0.407800, -0.336059, -0.848978,
		-0.910082, -0.074422, -0.407691,
		25.516342, 32.636101, 36.089272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.243078, 32.759644, 35.648521>,  <26.153400, 32.688198, 36.374657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.243078, 32.759644, 35.648521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934523, 32.907845, 35.855476>,  <25.749390, 32.996765, 35.979649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.934523, 32.907845, 35.855476>,  <26.243078, 32.759644, 35.648521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.934523, 32.907845, 35.855476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129564, 0.887443, -0.442332,
		-0.623036, -0.274175, -0.732567,
		-0.771388, 0.370503, 0.517387,
		25.703106, 33.018997, 36.010693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.854294, 33.283833, 35.252312>,  <26.243078, 32.759644, 35.648521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.854294, 33.283833, 35.252312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812958, 33.386719, 35.636635>,  <25.788157, 33.448452, 35.867229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.812958, 33.386719, 35.636635>,  <25.854294, 33.283833, 35.252312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.812958, 33.386719, 35.636635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509779, 0.843161, -0.170894,
		-0.854076, 0.472142, -0.218256,
		-0.103339, 0.257219, 0.960812,
		25.781956, 33.463882, 35.924877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.761358, 34.020897, 35.275391>,  <25.854294, 33.283833, 35.252312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.761358, 34.020897, 35.275391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891405, 33.914974, 35.638527>,  <25.969433, 33.851421, 35.856411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.891405, 33.914974, 35.638527>,  <25.761358, 34.020897, 35.275391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.891405, 33.914974, 35.638527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541957, 0.838881, 0.050606,
		-0.774972, 0.475559, 0.416246,
		0.325115, -0.264806, 0.907843,
		25.988939, 33.835533, 35.910881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.706375, 34.606266, 35.667145>,  <25.761358, 34.020897, 35.275391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.706375, 34.606266, 35.667145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993292, 34.367722, 35.811283>,  <26.165442, 34.224594, 35.897766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.993292, 34.367722, 35.811283>,  <25.706375, 34.606266, 35.667145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.993292, 34.367722, 35.811283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640349, 0.768076, -0.003519,
		-0.274678, 0.233274, 0.932810,
		0.717290, -0.596357, 0.360351,
		26.208479, 34.188816, 35.919388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.070900, 35.077461, 35.985146>,  <25.706375, 34.606266, 35.667145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.070900, 35.077461, 35.985146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316566, 34.766720, 35.929581>,  <26.463966, 34.580273, 35.896244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.316566, 34.766720, 35.929581>,  <26.070900, 35.077461, 35.985146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.316566, 34.766720, 35.929581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758130, 0.629676, -0.169548,
		0.219182, -0.001180, 0.975683,
		0.614164, -0.776857, -0.138909,
		26.500816, 34.533661, 35.887909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.659615, 35.346287, 36.303707>,  <26.070900, 35.077461, 35.985146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.659615, 35.346287, 36.303707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779415, 35.052906, 36.059628>,  <26.851295, 34.876877, 35.913181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.779415, 35.052906, 36.059628>,  <26.659615, 35.346287, 36.303707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779415, 35.052906, 36.059628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834969, 0.510952, -0.204337,
		0.461654, -0.448297, 0.765444,
		0.299502, -0.733456, -0.610198,
		26.869267, 34.832870, 35.876568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.369841, 35.279354, 36.403034>,  <26.659615, 35.346287, 36.303707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.369841, 35.279354, 36.403034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331081, 35.118977, 36.038651>,  <27.307825, 35.022751, 35.820019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.331081, 35.118977, 36.038651>,  <27.369841, 35.279354, 36.403034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.331081, 35.118977, 36.038651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874749, 0.402308, -0.270115,
		0.474790, -0.823037, 0.311744,
		-0.096898, -0.400946, -0.910963,
		27.302011, 34.998692, 35.765362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.004240, 35.256439, 36.245728>,  <27.369841, 35.279354, 36.403034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.004240, 35.256439, 36.245728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855610, 35.239925, 35.874733>,  <27.766432, 35.230015, 35.652138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.855610, 35.239925, 35.874733>,  <28.004240, 35.256439, 36.245728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.855610, 35.239925, 35.874733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.768873, 0.546242, -0.332346,
		0.520352, -0.836609, -0.171226,
		-0.371574, -0.041286, -0.927485,
		27.744139, 35.227539, 35.596489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.454639, 34.922661, 35.789806>,  <28.004240, 35.256439, 36.245728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.454639, 34.922661, 35.789806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219923, 35.195713, 35.615593>,  <28.079094, 35.359547, 35.511066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.219923, 35.195713, 35.615593>,  <28.454639, 34.922661, 35.789806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.219923, 35.195713, 35.615593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.809198, 0.474709, -0.346192,
		-0.029572, -0.555574, -0.830941,
		-0.586791, 0.682634, -0.435531,
		28.043886, 35.400505, 35.484932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.621908, 34.855637, 35.069454>,  <28.454639, 34.922661, 35.789806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.621908, 34.855637, 35.069454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492725, 35.194866, 35.237484>,  <28.415215, 35.398403, 35.338303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.492725, 35.194866, 35.237484>,  <28.621908, 34.855637, 35.069454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492725, 35.194866, 35.237484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786844, 0.487254, -0.378761,
		-0.525903, 0.208212, -0.824666,
		-0.322959, 0.848075, 0.420078,
		28.395838, 35.449287, 35.363506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.194626, 35.346272, 34.867607>,  <28.621908, 34.855637, 35.069454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.194626, 35.346272, 34.867607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191061, 35.656471, 35.120121>,  <29.188923, 35.842590, 35.271629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.191061, 35.656471, 35.120121>,  <29.194626, 35.346272, 34.867607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191061, 35.656471, 35.120121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480637, 0.550276, -0.682777,
		-0.876874, -0.309500, 0.367833,
		-0.008910, 0.775504, 0.631280,
		29.188389, 35.889122, 35.309505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.542871, 35.668922, 34.838795>,  <29.194626, 35.346272, 34.867607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.542871, 35.668922, 34.838795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776184, 35.947159, 35.006577>,  <28.916172, 36.114101, 35.107246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.776184, 35.947159, 35.006577>,  <28.542871, 35.668922, 34.838795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.776184, 35.947159, 35.006577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472360, 0.710570, -0.521504,
		-0.660801, 0.106053, 0.743031,
		0.583282, 0.695588, 0.419450,
		28.951168, 36.155834, 35.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.064196, 36.253792, 34.936203>,  <28.542871, 35.668922, 34.838795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.064196, 36.253792, 34.936203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447563, 36.364693, 34.909176>,  <28.677584, 36.431232, 34.892960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.447563, 36.364693, 34.909176>,  <28.064196, 36.253792, 34.936203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447563, 36.364693, 34.909176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245643, 0.681050, -0.689805,
		-0.145233, 0.677719, 0.720836,
		0.958419, 0.277251, -0.067566,
		28.735088, 36.447868, 34.888905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.239883, 37.016380, 35.024593>,  <28.064196, 36.253792, 34.936203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.239883, 37.016380, 35.024593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498690, 36.862217, 34.761433>,  <28.653973, 36.769718, 34.603539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.498690, 36.862217, 34.761433>,  <28.239883, 37.016380, 35.024593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.498690, 36.862217, 34.761433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169044, 0.768864, -0.616662,
		0.743502, 0.510204, 0.432315,
		0.647015, -0.385409, -0.657899,
		28.692795, 36.746593, 34.564064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.759209, 37.504105, 34.965752>,  <28.239883, 37.016380, 35.024593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.759209, 37.504105, 34.965752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675383, 37.281963, 34.643841>,  <28.625088, 37.148678, 34.450695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.675383, 37.281963, 34.643841>,  <28.759209, 37.504105, 34.965752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.675383, 37.281963, 34.643841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017294, 0.825030, -0.564825,
		0.977642, -0.104450, -0.182502,
		-0.209566, -0.555352, -0.804777,
		28.612513, 37.115356, 34.402409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.286541, 37.553463, 34.475613>,  <28.759209, 37.504105, 34.965752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.286541, 37.553463, 34.475613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927443, 37.499565, 34.307854>,  <28.711983, 37.467228, 34.207199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.927443, 37.499565, 34.307854>,  <29.286541, 37.553463, 34.475613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.927443, 37.499565, 34.307854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099893, 0.864995, -0.491736,
		0.429034, -0.483350, -0.763088,
		-0.897748, -0.134744, -0.419396,
		28.658119, 37.459141, 34.182034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.285032, 37.490906, 33.672768>,  <29.286541, 37.553463, 34.475613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.285032, 37.490906, 33.672768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962448, 37.652100, 33.845844>,  <28.768898, 37.748817, 33.949692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.962448, 37.652100, 33.845844>,  <29.285032, 37.490906, 33.672768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.962448, 37.652100, 33.845844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294626, 0.908339, -0.296844,
		-0.512654, -0.111912, -0.851271,
		-0.806462, 0.402985, 0.432691,
		28.720509, 37.772995, 33.975651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002691, 37.969585, 33.222881>,  <29.285032, 37.490906, 33.672768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002691, 37.969585, 33.222881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848497, 38.074402, 33.576771>,  <28.755981, 38.137291, 33.789104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.848497, 38.074402, 33.576771>,  <29.002691, 37.969585, 33.222881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.848497, 38.074402, 33.576771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286272, 0.945479, -0.155299,
		-0.877182, 0.193406, -0.439483,
		-0.385486, 0.262037, 0.884724,
		28.732851, 38.153011, 33.842190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.578678, 38.513683, 33.111752>,  <29.002691, 37.969585, 33.222881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.578678, 38.513683, 33.111752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719824, 38.535900, 33.485363>,  <28.804510, 38.549232, 33.709530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.719824, 38.535900, 33.485363>,  <28.578678, 38.513683, 33.111752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.719824, 38.535900, 33.485363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386089, 0.900648, -0.199420,
		-0.852305, 0.430984, 0.296360,
		0.352863, 0.055545, 0.934025,
		28.825684, 38.552563, 33.765572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296452, 37.898281, 32.600479>,  <28.578678, 38.513683, 33.111752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296452, 37.898281, 32.600479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042850, 37.809418, 32.304184>,  <27.890690, 37.756100, 32.126408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.042850, 37.809418, 32.304184>,  <28.296452, 37.898281, 32.600479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.042850, 37.809418, 32.304184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673296, -0.312606, 0.670037,
		-0.380412, 0.923539, 0.048615,
		-0.634003, -0.222158, -0.740734,
		27.852650, 37.742771, 32.081963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.988033, 37.537727, 33.136284>,  <28.296452, 37.898281, 32.600479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.988033, 37.537727, 33.136284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739908, 37.249416, 33.260025>,  <27.591034, 37.076431, 33.334270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.739908, 37.249416, 33.260025>,  <27.988033, 37.537727, 33.136284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.739908, 37.249416, 33.260025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535558, 0.101063, -0.838429,
		0.573055, -0.685762, -0.448707,
		-0.620311, -0.720775, 0.309351,
		27.553816, 37.033184, 33.352829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.773287, 37.080841, 32.552341>,  <27.988033, 37.537727, 33.136284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.773287, 37.080841, 32.552341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475468, 37.059265, 32.818497>,  <27.296776, 37.046322, 32.978191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.475468, 37.059265, 32.818497>,  <27.773287, 37.080841, 32.552341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.475468, 37.059265, 32.818497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655394, -0.130441, -0.743938,
		0.126922, -0.989988, 0.061767,
		-0.744546, -0.053940, 0.665388,
		27.252104, 37.043083, 33.018112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.438778, 36.403267, 32.440056>,  <27.773287, 37.080841, 32.552341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.438778, 36.403267, 32.440056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218298, 36.705414, 32.581818>,  <27.086010, 36.886700, 32.666874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.218298, 36.705414, 32.581818>,  <27.438778, 36.403267, 32.440056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.218298, 36.705414, 32.581818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678926, -0.159128, -0.716755,
		-0.485014, -0.635692, 0.600547,
		-0.551199, 0.755364, 0.354408,
		27.052938, 36.932022, 32.688141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.767056, 36.120537, 32.693489>,  <27.438778, 36.403267, 32.440056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.767056, 36.120537, 32.693489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812357, 36.480076, 32.524136>,  <26.839539, 36.695797, 32.422523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.812357, 36.480076, 32.524136>,  <26.767056, 36.120537, 32.693489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.812357, 36.480076, 32.524136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493142, -0.319077, -0.809322,
		-0.862546, 0.300446, 0.407121,
		0.113254, 0.898845, -0.423380,
		26.846333, 36.749729, 32.397121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.196426, 36.226440, 32.320339>,  <26.767056, 36.120537, 32.693489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.196426, 36.226440, 32.320339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455816, 36.474709, 32.144043>,  <26.611450, 36.623669, 32.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.455816, 36.474709, 32.144043>,  <26.196426, 36.226440, 32.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455816, 36.474709, 32.144043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343578, -0.278012, -0.897030,
		-0.679292, 0.733127, 0.032966,
		0.648472, 0.620672, -0.440738,
		26.650358, 36.660912, 32.011822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830919, 36.632908, 31.749098>,  <26.196426, 36.226440, 32.320339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830919, 36.632908, 31.749098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217762, 36.645809, 31.648170>,  <26.449867, 36.653549, 31.587614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.217762, 36.645809, 31.648170>,  <25.830919, 36.632908, 31.749098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.217762, 36.645809, 31.648170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220564, -0.387804, -0.894964,
		-0.126719, 0.921178, -0.367933,
		0.967106, 0.032256, -0.252320,
		26.507895, 36.655487, 31.572474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.917774, 37.101379, 31.165272>,  <25.830919, 36.632908, 31.749098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.917774, 37.101379, 31.165272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231911, 36.854111, 31.178570>,  <26.420393, 36.705750, 31.186548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.231911, 36.854111, 31.178570>,  <25.917774, 37.101379, 31.165272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.231911, 36.854111, 31.178570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080807, -0.155607, -0.984509,
		0.613765, 0.770490, -0.172157,
		0.785342, -0.618168, 0.033245,
		26.467514, 36.668659, 31.188543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.057144, 37.141743, 30.497990>,  <25.917774, 37.101379, 31.165272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.057144, 37.141743, 30.497990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322340, 36.871292, 30.626553>,  <26.481457, 36.709023, 30.703690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322340, 36.871292, 30.626553>,  <26.057144, 37.141743, 30.497990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322340, 36.871292, 30.626553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173797, -0.278589, -0.944554,
		0.728175, 0.682089, -0.067193,
		0.662989, -0.676123, 0.321407,
		26.521236, 36.668457, 30.722975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.783308, 37.277962, 30.148613>,  <26.057144, 37.141743, 30.497990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.783308, 37.277962, 30.148613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757011, 36.894653, 30.259895>,  <26.741234, 36.664669, 30.326664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757011, 36.894653, 30.259895>,  <26.783308, 37.277962, 30.148613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757011, 36.894653, 30.259895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213130, -0.285858, -0.934270,
		0.974810, -0.002128, 0.223029,
		-0.065742, -0.958269, 0.278204,
		26.737289, 36.607174, 30.343357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.356758, 36.860443, 29.929317>,  <26.783308, 37.277962, 30.148613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.356758, 36.860443, 29.929317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076567, 36.576626, 29.959970>,  <26.908451, 36.406334, 29.978363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.076567, 36.576626, 29.959970>,  <27.356758, 36.860443, 29.929317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.076567, 36.576626, 29.959970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161541, -0.262230, -0.951389,
		0.695149, -0.654050, 0.298307,
		-0.700481, -0.709545, 0.076633,
		26.866423, 36.363762, 29.982960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.716200, 36.324833, 29.515905>,  <27.356758, 36.860443, 29.929317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.716200, 36.324833, 29.515905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350965, 36.176388, 29.583494>,  <27.131824, 36.087322, 29.624046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.350965, 36.176388, 29.583494>,  <27.716200, 36.324833, 29.515905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.350965, 36.176388, 29.583494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011693, -0.438040, -0.898880,
		0.407598, -0.818779, 0.404308,
		-0.913087, -0.371109, 0.168971,
		27.077040, 36.065056, 29.634186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.793728, 35.554840, 29.438099>,  <27.716200, 36.324833, 29.515905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.793728, 35.554840, 29.438099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423983, 35.692112, 29.371424>,  <27.202135, 35.774475, 29.331419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.423983, 35.692112, 29.371424>,  <27.793728, 35.554840, 29.438099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.423983, 35.692112, 29.371424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016918, -0.473356, -0.880709,
		-0.381140, -0.811274, 0.443358,
		-0.924363, 0.343174, -0.166690,
		27.146673, 35.795063, 29.321417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.474691, 34.885193, 29.223331>,  <27.793728, 35.554840, 29.438099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.474691, 34.885193, 29.223331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258717, 35.195503, 29.092712>,  <27.129131, 35.381691, 29.014341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.258717, 35.195503, 29.092712>,  <27.474691, 34.885193, 29.223331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.258717, 35.195503, 29.092712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086090, -0.436824, -0.895418,
		-0.837291, -0.455356, 0.302644,
		-0.539936, 0.775780, -0.326547,
		27.096735, 35.428238, 28.994749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.174318, 34.570400, 28.726820>,  <27.474691, 34.885193, 29.223331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.174318, 34.570400, 28.726820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087080, 34.951366, 28.641651>,  <27.034737, 35.179947, 28.590549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.087080, 34.951366, 28.641651>,  <27.174318, 34.570400, 28.726820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.087080, 34.951366, 28.641651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028870, -0.224373, -0.974076,
		-0.975500, -0.206294, 0.076431,
		-0.218095, 0.952418, -0.212920,
		27.021652, 35.237091, 28.577776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.497759, 34.613762, 28.311192>,  <27.174318, 34.570400, 28.726820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.497759, 34.613762, 28.311192> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717411, 34.940609, 28.241030>,  <26.849203, 35.136719, 28.198933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717411, 34.940609, 28.241030>,  <26.497759, 34.613762, 28.311192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717411, 34.940609, 28.241030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175068, -0.092754, -0.980177,
		-0.817194, 0.568953, 0.092118,
		0.549130, 0.817122, -0.175404,
		26.882151, 35.185745, 28.188408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.183954, 35.039562, 27.792505>,  <26.497759, 34.613762, 28.311192>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.183954, 35.039562, 27.792505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561808, 35.170780, 27.789461>,  <26.788519, 35.249512, 27.787634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.561808, 35.170780, 27.789461>,  <26.183954, 35.039562, 27.792505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.561808, 35.170780, 27.789461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037071, 0.083643, -0.995806,
		-0.326030, 0.940953, 0.091172,
		0.944632, 0.328042, -0.007612,
		26.845198, 35.269192, 27.787178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.176977, 35.528679, 27.439875>,  <26.183954, 35.039562, 27.792505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.176977, 35.528679, 27.439875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562702, 35.425125, 27.417683>,  <26.794138, 35.362991, 27.404367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.562702, 35.425125, 27.417683>,  <26.176977, 35.528679, 27.439875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.562702, 35.425125, 27.417683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036731, 0.076705, -0.996377,
		0.262202, 0.962858, 0.064458,
		0.964314, -0.258884, -0.055478,
		26.851995, 35.347458, 27.401039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.451628, 36.006748, 26.990421>,  <26.176977, 35.528679, 27.439875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.451628, 36.006748, 26.990421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683907, 35.682159, 26.964193>,  <26.823275, 35.487404, 26.948456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.683907, 35.682159, 26.964193>,  <26.451628, 36.006748, 26.990421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683907, 35.682159, 26.964193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068376, 0.031643, -0.997158,
		0.811244, 0.583530, -0.037111,
		0.580697, -0.811475, -0.065569,
		26.858116, 35.438717, 26.944523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.835339, 36.229214, 26.458483>,  <26.451628, 36.006748, 26.990421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.835339, 36.229214, 26.458483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901739, 35.836868, 26.499195>,  <26.941580, 35.601463, 26.523623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.901739, 35.836868, 26.499195>,  <26.835339, 36.229214, 26.458483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901739, 35.836868, 26.499195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095362, -0.118696, -0.988341,
		0.981504, 0.154359, -0.113240,
		0.166001, -0.980859, 0.101781,
		26.951540, 35.542610, 26.529730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.381952, 36.089470, 25.935656>,  <26.835339, 36.229214, 26.458483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.381952, 36.089470, 25.935656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180929, 35.752842, 26.014843>,  <27.060314, 35.550865, 26.062355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.180929, 35.752842, 26.014843>,  <27.381952, 36.089470, 25.935656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.180929, 35.752842, 26.014843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083808, -0.180485, -0.980001,
		0.860471, -0.509099, 0.020174,
		-0.502559, -0.841572, 0.197968,
		27.030161, 35.500370, 26.074234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.730909, 35.590797, 25.500872>,  <27.381952, 36.089470, 25.935656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.730909, 35.590797, 25.500872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370752, 35.439159, 25.586275>,  <27.154659, 35.348179, 25.637518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.370752, 35.439159, 25.586275>,  <27.730909, 35.590797, 25.500872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.370752, 35.439159, 25.586275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124651, -0.245397, -0.961375,
		0.416844, -0.892227, 0.173699,
		-0.900391, -0.379092, 0.213509,
		27.100636, 35.325432, 25.650328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750093, 35.008530, 25.120991>,  <27.730909, 35.590797, 25.500872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750093, 35.008530, 25.120991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360075, 35.063770, 25.190517>,  <27.126064, 35.096916, 25.232233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.360075, 35.063770, 25.190517>,  <27.750093, 35.008530, 25.120991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.360075, 35.063770, 25.190517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.217449, -0.436366, -0.873098,
		-0.044732, -0.889107, 0.455507,
		-0.975046, 0.138105, 0.173816,
		27.067562, 35.105202, 25.242662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.456400, 34.430126, 24.858553>,  <27.750093, 35.008530, 25.120991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.456400, 34.430126, 24.858553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126240, 34.655888, 24.863710>,  <26.928144, 34.791344, 24.866804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126240, 34.655888, 24.863710>,  <27.456400, 34.430126, 24.858553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126240, 34.655888, 24.863710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153175, -0.201911, -0.967352,
		-0.543373, -0.800426, 0.253109,
		-0.825399, 0.564403, 0.012892,
		26.878620, 34.825207, 24.867579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.935524, 34.064278, 24.550816>,  <27.456400, 34.430126, 24.858553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.935524, 34.064278, 24.550816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829224, 34.448803, 24.521818>,  <26.765444, 34.679520, 24.504419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.829224, 34.448803, 24.521818>,  <26.935524, 34.064278, 24.550816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.829224, 34.448803, 24.521818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038917, -0.085835, -0.995549,
		-0.963256, -0.261748, 0.060222,
		-0.265752, 0.961312, -0.072495,
		26.749498, 34.737198, 24.500071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.327400, 33.952301, 24.177948>,  <26.935524, 34.064278, 24.550816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.327400, 33.952301, 24.177948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437012, 34.335079, 24.139671>,  <26.502779, 34.564747, 24.116705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.437012, 34.335079, 24.139671>,  <26.327400, 33.952301, 24.177948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.437012, 34.335079, 24.139671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034630, -0.089617, -0.995374,
		-0.961098, 0.276075, 0.008581,
		0.274029, 0.956949, -0.095691,
		26.519220, 34.622166, 24.110964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.795544, 34.333591, 23.766655>,  <26.327400, 33.952301, 24.177948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.795544, 34.333591, 23.766655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127283, 34.552425, 23.721252>,  <26.326326, 34.683723, 23.694012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.127283, 34.552425, 23.721252>,  <25.795544, 34.333591, 23.766655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.127283, 34.552425, 23.721252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202361, 0.104751, -0.973692,
		-0.520801, 0.830498, 0.197584,
		0.829347, 0.547083, -0.113506,
		26.376087, 34.716549, 23.687201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.632664, 34.802376, 23.297316>,  <25.795544, 34.333591, 23.766655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.632664, 34.802376, 23.297316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032288, 34.792969, 23.311871>,  <26.272062, 34.787323, 23.320604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.032288, 34.792969, 23.311871>,  <25.632664, 34.802376, 23.297316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.032288, 34.792969, 23.311871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041302, 0.263243, -0.963845,
		0.013091, 0.964443, 0.263967,
		0.999061, -0.023520, 0.036387,
		26.332006, 34.785912, 23.322786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.818743, 35.365650, 22.935936>,  <25.632664, 34.802376, 23.297316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.818743, 35.365650, 22.935936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147888, 35.138355, 22.936668>,  <26.345375, 35.001976, 22.937107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.147888, 35.138355, 22.936668>,  <25.818743, 35.365650, 22.935936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.147888, 35.138355, 22.936668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227538, 0.326541, -0.917386,
		0.520697, 0.755298, 0.397994,
		0.822862, -0.568239, 0.001830,
		26.394747, 34.967884, 22.937218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.341007, 35.775124, 22.664534>,  <25.818743, 35.365650, 22.935936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.341007, 35.775124, 22.664534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443768, 35.395000, 22.594196>,  <26.505424, 35.166927, 22.551994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.443768, 35.395000, 22.594196>,  <26.341007, 35.775124, 22.664534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.443768, 35.395000, 22.594196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344053, 0.259957, -0.902247,
		0.903122, 0.171289, 0.393739,
		0.256900, -0.950306, -0.175841,
		26.520838, 35.109909, 22.541445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832273, 35.895290, 22.179337>,  <26.341007, 35.775124, 22.664534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832273, 35.895290, 22.179337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746456, 35.506622, 22.139675>,  <26.694965, 35.273422, 22.115877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746456, 35.506622, 22.139675>,  <26.832273, 35.895290, 22.179337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746456, 35.506622, 22.139675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182372, 0.059881, -0.981404,
		0.959537, -0.228636, 0.164358,
		-0.214542, -0.971669, -0.099155,
		26.682093, 35.215122, 22.109928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.430880, 35.651413, 21.885271>,  <26.832273, 35.895290, 22.179337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.430880, 35.651413, 21.885271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133575, 35.395958, 21.805563>,  <26.955193, 35.242687, 21.757738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.133575, 35.395958, 21.805563>,  <27.430880, 35.651413, 21.885271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.133575, 35.395958, 21.805563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285560, -0.033492, -0.957776,
		0.604995, -0.768781, 0.207261,
		-0.743261, -0.638635, -0.199270,
		26.910597, 35.204369, 21.745781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.628508, 35.050415, 21.421961>,  <27.430880, 35.651413, 21.885271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.628508, 35.050415, 21.421961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237631, 34.994446, 21.358065>,  <27.003105, 34.960865, 21.319727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.237631, 34.994446, 21.358065>,  <27.628508, 35.050415, 21.421961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.237631, 34.994446, 21.358065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190296, -0.243141, -0.951141,
		0.094250, -0.959845, 0.264223,
		-0.977192, -0.139926, -0.159739,
		26.944473, 34.952469, 21.310143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.582394, 34.395958, 21.109631>,  <27.628508, 35.050415, 21.421961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.582394, 34.395958, 21.109631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275003, 34.630817, 21.007883>,  <27.090569, 34.771732, 20.946835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.275003, 34.630817, 21.007883>,  <27.582394, 34.395958, 21.109631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.275003, 34.630817, 21.007883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266256, -0.068063, -0.961496,
		-0.581852, -0.806614, -0.104027,
		-0.768476, 0.587147, -0.254368,
		27.044460, 34.806961, 20.931572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.284853, 34.197754, 20.416237>,  <27.582394, 34.395958, 21.109631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.284853, 34.197754, 20.416237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154732, 34.573341, 20.460978>,  <27.076660, 34.798695, 20.487822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.154732, 34.573341, 20.460978>,  <27.284853, 34.197754, 20.416237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.154732, 34.573341, 20.460978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100696, 0.152011, -0.983236,
		-0.940234, -0.308585, -0.144000,
		-0.325302, 0.938972, 0.111852,
		27.057140, 34.855034, 20.494534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.970839, 34.420937, 19.795124>,  <27.284853, 34.197754, 20.416237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.970839, 34.420937, 19.795124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037094, 34.775791, 19.967424>,  <27.076847, 34.988705, 20.070805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.037094, 34.775791, 19.967424>,  <26.970839, 34.420937, 19.795124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.037094, 34.775791, 19.967424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354879, 0.353904, -0.865340,
		-0.920122, 0.296200, -0.256207,
		0.165641, 0.887140, 0.430750,
		27.086786, 35.041935, 20.096649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.572664, 34.823322, 19.324348>,  <26.970839, 34.420937, 19.795124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.572664, 34.823322, 19.324348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853245, 35.021957, 19.528843>,  <27.021593, 35.141140, 19.651541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.853245, 35.021957, 19.528843>,  <26.572664, 34.823322, 19.324348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.853245, 35.021957, 19.528843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373687, 0.354554, -0.857117,
		-0.606899, 0.792268, 0.063132,
		0.701450, 0.496592, 0.511238,
		27.063679, 35.170937, 19.682215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.553993, 35.404659, 19.047663>,  <26.572664, 34.823322, 19.324348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.553993, 35.404659, 19.047663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914686, 35.386398, 19.219612>,  <27.131102, 35.375443, 19.322783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.914686, 35.386398, 19.219612>,  <26.553993, 35.404659, 19.047663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.914686, 35.386398, 19.219612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419981, 0.328138, -0.846134,
		-0.102431, 0.943526, 0.315065,
		0.901734, -0.045651, 0.429874,
		27.185205, 35.372704, 19.348574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.748905, 36.060421, 18.968765>,  <26.553993, 35.404659, 19.047663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.748905, 36.060421, 18.968765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066418, 35.823364, 19.023438>,  <27.256926, 35.681129, 19.056242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.066418, 35.823364, 19.023438>,  <26.748905, 36.060421, 18.968765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.066418, 35.823364, 19.023438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393060, 0.328377, -0.858878,
		0.464126, 0.735487, 0.493605,
		0.793782, -0.592645, 0.136682,
		27.304552, 35.645573, 19.064442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.348795, 36.523766, 19.145071>,  <26.748905, 36.060421, 18.968765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.348795, 36.523766, 19.145071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418665, 36.190983, 18.934420>,  <27.460587, 35.991314, 18.808029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.418665, 36.190983, 18.934420>,  <27.348795, 36.523766, 19.145071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.418665, 36.190983, 18.934420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451217, 0.543020, -0.708190,
		0.875153, -0.113921, 0.470244,
		0.174674, -0.831956, -0.526629,
		27.471067, 35.941395, 18.776430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030584, 36.593704, 19.009739>,  <27.348795, 36.523766, 19.145071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030584, 36.593704, 19.009739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899965, 36.308880, 18.761116>,  <27.821594, 36.137985, 18.611942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.899965, 36.308880, 18.761116>,  <28.030584, 36.593704, 19.009739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.899965, 36.308880, 18.761116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567529, 0.378154, -0.731376,
		0.755830, -0.591581, 0.280630,
		-0.326547, -0.712061, -0.621559,
		27.802002, 36.095261, 18.574648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.650497, 36.348553, 18.640316>,  <28.030584, 36.593704, 19.009739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.650497, 36.348553, 18.640316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341825, 36.260948, 18.401470>,  <28.156622, 36.208385, 18.258163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.341825, 36.260948, 18.401470>,  <28.650497, 36.348553, 18.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.341825, 36.260948, 18.401470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497929, 0.376064, -0.781436,
		0.395695, -0.900339, -0.181150,
		-0.771682, -0.219010, -0.597112,
		28.110321, 36.195244, 18.222336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.908037, 36.020943, 18.120428>,  <28.650497, 36.348553, 18.640316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.908037, 36.020943, 18.120428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552521, 36.102268, 17.956129>,  <28.339211, 36.151062, 17.857550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.552521, 36.102268, 17.956129>,  <28.908037, 36.020943, 18.120428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.552521, 36.102268, 17.956129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458128, 0.368838, -0.808750,
		-0.012927, -0.906986, -0.420963,
		-0.888792, 0.203310, -0.410748,
		28.285883, 36.163261, 17.832905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.068863, 36.008083, 17.381868>,  <28.908037, 36.020943, 18.120428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.068863, 36.008083, 17.381868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734564, 36.225857, 17.410484>,  <28.533985, 36.356522, 17.427654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.734564, 36.225857, 17.410484>,  <29.068863, 36.008083, 17.381868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734564, 36.225857, 17.410484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278677, 0.532788, -0.799047,
		-0.473146, -0.647863, -0.596997,
		-0.835746, 0.544435, 0.071542,
		28.483839, 36.389187, 17.431948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.670258, 35.938377, 16.830057>,  <29.068863, 36.008083, 17.381868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.670258, 35.938377, 16.830057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562786, 36.296825, 16.971359>,  <28.498304, 36.511894, 17.056141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.562786, 36.296825, 16.971359>,  <28.670258, 35.938377, 16.830057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.562786, 36.296825, 16.971359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244597, 0.418190, -0.874808,
		-0.931657, -0.148636, -0.331546,
		-0.268678, 0.896116, 0.353254,
		28.482183, 36.565659, 17.077335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.272146, 36.171543, 16.345892>,  <28.670258, 35.938377, 16.830057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.272146, 36.171543, 16.345892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382536, 36.488956, 16.562830>,  <28.448769, 36.679405, 16.692993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.382536, 36.488956, 16.562830>,  <28.272146, 36.171543, 16.345892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.382536, 36.488956, 16.562830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049576, 0.551757, -0.832530,
		-0.959886, 0.256643, 0.112929,
		0.275973, 0.793536, 0.542347,
		28.465328, 36.727016, 16.725534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.973070, 36.690365, 16.048309>,  <28.272146, 36.171543, 16.345892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.973070, 36.690365, 16.048309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267206, 36.873745, 16.247948>,  <28.443687, 36.983772, 16.367731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.267206, 36.873745, 16.247948>,  <27.973070, 36.690365, 16.048309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267206, 36.873745, 16.247948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076117, 0.675927, -0.733027,
		-0.673411, 0.577014, 0.462140,
		0.735340, 0.458452, 0.499097,
		28.487808, 37.011280, 16.397676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.321327, 36.760471, 15.399332>,  <27.973070, 36.690365, 16.048309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.321327, 36.760471, 15.399332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940756, 36.716766, 15.284204>,  <27.712412, 36.690544, 15.215126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940756, 36.716766, 15.284204>,  <28.321327, 36.760471, 15.399332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940756, 36.716766, 15.284204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162028, -0.972662, -0.166363,
		-0.261776, -0.204918, 0.943124,
		-0.951431, -0.109262, -0.287822,
		27.655327, 36.683987, 15.197857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.960426, 36.903816, 15.752898>,  <28.321327, 36.760471, 15.399332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.960426, 36.903816, 15.752898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353966, 36.883316, 15.684300>,  <29.590090, 36.871014, 15.643142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.353966, 36.883316, 15.684300>,  <28.960426, 36.903816, 15.752898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.353966, 36.883316, 15.684300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170449, 0.024170, -0.985070,
		0.054633, 0.998393, 0.015043,
		0.983851, -0.051254, -0.171495,
		29.649120, 36.867939, 15.632852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324259, 37.376286, 15.252534>,  <28.960426, 36.903816, 15.752898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324259, 37.376286, 15.252534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558750, 37.052624, 15.236533>,  <29.699446, 36.858425, 15.226933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.558750, 37.052624, 15.236533>,  <29.324259, 37.376286, 15.252534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.558750, 37.052624, 15.236533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095083, -0.019685, -0.995275,
		0.804545, 0.587264, -0.088477,
		0.586230, -0.809156, -0.040002,
		29.734619, 36.809875, 15.224532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.040796, 37.801319, 15.952599>,  <29.324259, 37.376286, 15.252534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.040796, 37.801319, 15.952599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267441, 38.115677, 15.853542>,  <29.403427, 38.304291, 15.794108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.267441, 38.115677, 15.853542>,  <29.040796, 37.801319, 15.952599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.267441, 38.115677, 15.853542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498338, 0.087493, -0.862557,
		-0.656208, 0.612145, 0.441213,
		0.566613, 0.785890, -0.247641,
		29.437426, 38.351444, 15.779250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.545113, 38.370457, 15.602692>,  <29.040796, 37.801319, 15.952599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.545113, 38.370457, 15.602692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926208, 38.397732, 15.484278>,  <29.154865, 38.414097, 15.413230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.926208, 38.397732, 15.484278>,  <28.545113, 38.370457, 15.602692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.926208, 38.397732, 15.484278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303633, 0.182839, -0.935081,
		-0.009637, 0.980775, 0.194903,
		0.952740, 0.068190, -0.296034,
		29.212030, 38.418190, 15.395468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.649826, 38.959858, 15.097329>,  <28.545113, 38.370457, 15.602692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.649826, 38.959858, 15.097329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936275, 38.686462, 15.040756>,  <29.108145, 38.522423, 15.006813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.936275, 38.686462, 15.040756>,  <28.649826, 38.959858, 15.097329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936275, 38.686462, 15.040756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089372, 0.111170, -0.989775,
		0.692227, 0.721442, 0.018526,
		0.716124, -0.683493, -0.141431,
		29.151114, 38.481415, 14.998326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.238420, 39.145863, 14.709217>,  <28.649826, 38.959858, 15.097329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.238420, 39.145863, 14.709217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217592, 38.751312, 14.646797>,  <29.205095, 38.514584, 14.609345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.217592, 38.751312, 14.646797>,  <29.238420, 39.145863, 14.709217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217592, 38.751312, 14.646797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016857, 0.157107, -0.987438,
		0.998501, -0.048785, -0.024808,
		-0.052069, -0.986376, -0.156049,
		29.201971, 38.455399, 14.599982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792934, 38.961121, 14.389981>,  <29.238420, 39.145863, 14.709217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792934, 38.961121, 14.389981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475983, 38.745033, 14.276638>,  <29.285810, 38.615379, 14.208632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.475983, 38.745033, 14.276638>,  <29.792934, 38.961121, 14.389981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475983, 38.745033, 14.276638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182950, 0.232675, -0.955192,
		0.581947, -0.808716, -0.085534,
		-0.792381, -0.540222, -0.283359,
		29.238268, 38.582966, 14.191630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.362309, 38.695251, 14.940369>,  <29.792934, 38.961121, 14.389981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.362309, 38.695251, 14.940369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989761, 38.670059, 15.083807>,  <29.766233, 38.654945, 15.169869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.989761, 38.670059, 15.083807>,  <30.362309, 38.695251, 14.940369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.989761, 38.670059, 15.083807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331452, 0.260885, 0.906686,
		-0.150651, 0.963314, -0.222106,
		-0.931367, -0.062976, 0.358595,
		29.710352, 38.651165, 15.191385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133457, 39.358856, 15.296863>,  <30.362309, 38.695251, 14.940369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133457, 39.358856, 15.296863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907709, 39.075092, 15.465730>,  <29.772261, 38.904835, 15.567050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.907709, 39.075092, 15.465730>,  <30.133457, 39.358856, 15.296863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.907709, 39.075092, 15.465730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378113, 0.232460, 0.896099,
		-0.733837, 0.665359, 0.137043,
		-0.564371, -0.709408, 0.422168,
		29.738398, 38.862270, 15.592381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.858753, 39.674072, 15.908978>,  <30.133457, 39.358856, 15.296863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.858753, 39.674072, 15.908978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863445, 39.277145, 15.958237>,  <29.866261, 39.038990, 15.987792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.863445, 39.277145, 15.958237>,  <29.858753, 39.674072, 15.908978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.863445, 39.277145, 15.958237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175723, 0.123285, 0.976690,
		-0.984370, 0.010182, 0.175819,
		0.011732, -0.992319, 0.123148,
		29.866964, 38.979450, 15.995181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.469585, 39.556511, 16.535185>,  <29.858753, 39.674072, 15.908978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.469585, 39.556511, 16.535185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674250, 39.216099, 16.487947>,  <29.797049, 39.011852, 16.459606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.674250, 39.216099, 16.487947>,  <29.469585, 39.556511, 16.535185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.674250, 39.216099, 16.487947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171877, -0.033284, 0.984556,
		-0.841821, -0.524055, 0.129243,
		0.511660, -0.851033, -0.118092,
		29.827747, 38.960789, 16.452520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.215784, 38.984322, 16.986004>,  <29.469585, 39.556511, 16.535185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.215784, 38.984322, 16.986004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598433, 38.902138, 16.903385>,  <29.828022, 38.852829, 16.853815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.598433, 38.902138, 16.903385>,  <29.215784, 38.984322, 16.986004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.598433, 38.902138, 16.903385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167575, -0.191885, 0.967005,
		-0.238316, -0.959669, -0.149131,
		0.956622, -0.205462, -0.206546,
		29.885420, 38.840500, 16.841421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.338465, 38.387829, 17.274525>,  <29.215784, 38.984322, 16.986004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.338465, 38.387829, 17.274525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715416, 38.500362, 17.202110>,  <29.941587, 38.567883, 17.158661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.715416, 38.500362, 17.202110>,  <29.338465, 38.387829, 17.274525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.715416, 38.500362, 17.202110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261947, -0.283893, 0.922382,
		0.208102, -0.916655, -0.341229,
		0.942378, 0.281333, -0.181036,
		29.998129, 38.584763, 17.147799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787022, 37.908772, 17.635073>,  <29.338465, 38.387829, 17.274525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787022, 37.908772, 17.635073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039835, 38.211147, 17.566853>,  <30.191523, 38.392574, 17.525921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.039835, 38.211147, 17.566853>,  <29.787022, 37.908772, 17.635073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.039835, 38.211147, 17.566853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372948, -0.103796, 0.922028,
		0.679295, -0.646360, -0.347529,
		0.632034, 0.755940, -0.170551,
		30.229445, 38.437931, 17.515688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419333, 37.653664, 17.897974>,  <29.787022, 37.908772, 17.635073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419333, 37.653664, 17.897974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386694, 38.052269, 17.904900>,  <30.367111, 38.291431, 17.909056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386694, 38.052269, 17.904900>,  <30.419333, 37.653664, 17.897974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386694, 38.052269, 17.904900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456493, 0.021926, 0.889457,
		0.885978, 0.080482, -0.456691,
		-0.081599, 0.996515, 0.017314,
		30.362215, 38.351223, 17.910093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.849737, 37.854519, 18.455576>,  <30.419333, 37.653664, 17.897974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.849737, 37.854519, 18.455576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628349, 38.181850, 18.393597>,  <30.495516, 38.378250, 18.356409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.628349, 38.181850, 18.393597>,  <30.849737, 37.854519, 18.455576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.628349, 38.181850, 18.393597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162645, 0.288659, 0.943516,
		0.816834, 0.497006, -0.292861,
		-0.553470, 0.818328, -0.154950,
		30.462309, 38.427349, 18.347111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.372007, 38.454620, 18.619656>,  <30.849737, 37.854519, 18.455576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.372007, 38.454620, 18.619656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987413, 38.563805, 18.632528>,  <30.756657, 38.629314, 18.640251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.987413, 38.563805, 18.632528>,  <31.372007, 38.454620, 18.619656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.987413, 38.563805, 18.632528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102822, 0.248641, 0.963123,
		0.254895, 0.929338, -0.267131,
		-0.961486, 0.272962, 0.032179,
		30.698967, 38.645695, 18.642181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.443630, 39.034988, 19.044672>,  <31.372007, 38.454620, 18.619656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.443630, 39.034988, 19.044672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052469, 38.952091, 19.055685>,  <30.817774, 38.902351, 19.062294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.052469, 38.952091, 19.055685>,  <31.443630, 39.034988, 19.044672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.052469, 38.952091, 19.055685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026395, 0.008266, 0.999617,
		-0.207395, 0.978254, -0.002613,
		-0.977901, -0.207247, 0.027535,
		30.759098, 38.889915, 19.063946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168497, 39.515759, 19.593307>,  <31.443630, 39.034988, 19.044672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168497, 39.515759, 19.593307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907257, 39.214813, 19.558867>,  <30.750513, 39.034245, 19.538202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.907257, 39.214813, 19.558867>,  <31.168497, 39.515759, 19.593307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.907257, 39.214813, 19.558867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068272, -0.054739, 0.996164,
		-0.754189, 0.656471, -0.015616,
		-0.653098, -0.752362, -0.086102,
		30.711329, 38.989105, 19.533035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783726, 39.560860, 20.135696>,  <31.168497, 39.515759, 19.593307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783726, 39.560860, 20.135696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714958, 39.188869, 20.005718>,  <30.673697, 38.965675, 19.927731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.714958, 39.188869, 20.005718>,  <30.783726, 39.560860, 20.135696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.714958, 39.188869, 20.005718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218278, -0.285697, 0.933130,
		-0.960624, 0.231353, -0.153876,
		-0.171921, -0.929975, -0.324946,
		30.663382, 38.909878, 19.908234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214745, 39.314640, 20.532841>,  <30.783726, 39.560860, 20.135696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214745, 39.314640, 20.532841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394066, 38.984959, 20.394444>,  <30.501659, 38.787151, 20.311405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.394066, 38.984959, 20.394444>,  <30.214745, 39.314640, 20.532841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.394066, 38.984959, 20.394444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233482, -0.481601, 0.844717,
		-0.862850, -0.297906, -0.408341,
		0.448304, -0.824204, -0.345994,
		30.528557, 38.737698, 20.290646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673435, 38.766232, 20.606333>,  <30.214745, 39.314640, 20.532841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673435, 38.766232, 20.606333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037548, 38.600639, 20.605553>,  <30.256016, 38.501286, 20.605085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.037548, 38.600639, 20.605553>,  <29.673435, 38.766232, 20.606333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.037548, 38.600639, 20.605553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208917, -0.463432, 0.861153,
		-0.357402, -0.783487, -0.508342,
		0.910284, -0.413979, -0.001948,
		30.310633, 38.476444, 20.604967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.599428, 38.127346, 20.927738>,  <29.673435, 38.766232, 20.606333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.599428, 38.127346, 20.927738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986395, 38.216724, 20.975357>,  <30.218575, 38.270351, 21.003927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.986395, 38.216724, 20.975357>,  <29.599428, 38.127346, 20.927738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.986395, 38.216724, 20.975357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028167, -0.372287, 0.927690,
		0.251611, -0.900818, -0.353863,
		0.967419, 0.223449, 0.119045,
		30.276621, 38.283760, 21.011070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.944111, 37.510963, 21.073263>,  <29.599428, 38.127346, 20.927738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.944111, 37.510963, 21.073263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103537, 37.836685, 21.242054>,  <30.199192, 38.032116, 21.343328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.103537, 37.836685, 21.242054>,  <29.944111, 37.510963, 21.073263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.103537, 37.836685, 21.242054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268291, -0.336455, 0.902673,
		0.877022, -0.472984, 0.084371,
		0.398563, 0.814300, 0.421976,
		30.223106, 38.080975, 21.368647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377829, 37.246883, 21.706980>,  <29.944111, 37.510963, 21.073263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377829, 37.246883, 21.706980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283245, 37.625416, 21.795111>,  <30.226496, 37.852535, 21.847988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.283245, 37.625416, 21.795111>,  <30.377829, 37.246883, 21.706980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.283245, 37.625416, 21.795111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402322, -0.301762, 0.864336,
		0.884434, 0.115738, 0.452084,
		-0.236459, 0.946332, 0.220325,
		30.212307, 37.909317, 21.861208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.783396, 37.370918, 22.303692>,  <30.377829, 37.246883, 21.706980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.783396, 37.370918, 22.303692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510290, 37.662228, 22.280214>,  <30.346426, 37.837013, 22.266129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.510290, 37.662228, 22.280214>,  <30.783396, 37.370918, 22.303692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.510290, 37.662228, 22.280214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108151, -0.021292, 0.993906,
		0.722590, 0.684952, 0.093302,
		-0.682765, 0.728277, -0.058693,
		30.305460, 37.880711, 22.262606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.015318, 37.898972, 22.788906>,  <30.783396, 37.370918, 22.303692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.015318, 37.898972, 22.788906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627934, 37.958492, 22.708961>,  <30.395504, 37.994205, 22.660995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.627934, 37.958492, 22.708961>,  <31.015318, 37.898972, 22.788906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.627934, 37.958492, 22.708961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187469, 0.093242, 0.977835,
		0.164139, 0.984461, -0.062405,
		-0.968459, 0.148802, -0.199861,
		30.337395, 38.003132, 22.649004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815447, 38.289257, 23.304665>,  <31.015318, 37.898972, 22.788906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815447, 38.289257, 23.304665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462427, 38.142254, 23.187332>,  <30.250614, 38.054054, 23.116934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.462427, 38.142254, 23.187332>,  <30.815447, 38.289257, 23.304665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.462427, 38.142254, 23.187332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313784, -0.004304, 0.949485,
		-0.350204, 0.930011, -0.111519,
		-0.882551, -0.367506, -0.293330,
		30.197662, 38.032001, 23.099333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.337936, 38.597054, 23.687054>,  <30.815447, 38.289257, 23.304665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.337936, 38.597054, 23.687054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141638, 38.272247, 23.560694>,  <30.023859, 38.077362, 23.484879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.141638, 38.272247, 23.560694>,  <30.337936, 38.597054, 23.687054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.141638, 38.272247, 23.560694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335134, -0.158753, 0.928699,
		-0.804272, 0.561625, -0.194227,
		-0.490746, -0.812019, -0.315900,
		29.994413, 38.028641, 23.465923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.729263, 38.579304, 24.082460>,  <30.337936, 38.597054, 23.687054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.729263, 38.579304, 24.082460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803505, 38.206795, 23.957056>,  <29.848049, 37.983292, 23.881813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803505, 38.206795, 23.957056>,  <29.729263, 38.579304, 24.082460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803505, 38.206795, 23.957056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417522, -0.363563, 0.832765,
		-0.889509, -0.023666, -0.456304,
		0.185604, -0.931269, -0.313512,
		29.859186, 37.927414, 23.863003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084675, 38.166744, 24.216520>,  <29.729263, 38.579304, 24.082460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084675, 38.166744, 24.216520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378885, 37.904240, 24.149204>,  <29.555412, 37.746738, 24.108814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.378885, 37.904240, 24.149204>,  <29.084675, 38.166744, 24.216520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.378885, 37.904240, 24.149204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324659, -0.559443, 0.762640,
		-0.594643, -0.506302, -0.624546,
		0.735524, -0.656264, -0.168294,
		29.599543, 37.707363, 24.098717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.841476, 37.477474, 24.011053>,  <29.084675, 38.166744, 24.216520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.841476, 37.477474, 24.011053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201681, 37.441204, 24.181164>,  <29.417803, 37.419441, 24.283230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.201681, 37.441204, 24.181164>,  <28.841476, 37.477474, 24.011053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.201681, 37.441204, 24.181164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350693, -0.729682, 0.587008,
		0.257090, -0.677748, -0.688885,
		0.900510, -0.090673, 0.425275,
		29.471834, 37.414001, 24.308746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840803, 36.741779, 24.198942>,  <28.841476, 37.477474, 24.011053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840803, 36.741779, 24.198942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134821, 36.927361, 24.396713>,  <29.311232, 37.038708, 24.515375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.134821, 36.927361, 24.396713>,  <28.840803, 36.741779, 24.198942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.134821, 36.927361, 24.396713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193474, -0.555383, 0.808775,
		0.649827, -0.690146, -0.318470,
		0.735046, 0.463949, 0.494428,
		29.355335, 37.066544, 24.545042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.030224, 36.350033, 24.693499>,  <28.840803, 36.741779, 24.198942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.030224, 36.350033, 24.693499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223639, 36.678898, 24.813663>,  <29.339687, 36.876217, 24.885761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.223639, 36.678898, 24.813663>,  <29.030224, 36.350033, 24.693499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223639, 36.678898, 24.813663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032853, -0.325912, 0.944829,
		0.874706, -0.466731, -0.130581,
		0.483539, 0.822158, 0.300411,
		29.368700, 36.925545, 24.903788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.415129, 36.168999, 25.243616>,  <29.030224, 36.350033, 24.693499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.415129, 36.168999, 25.243616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363190, 36.562271, 25.295002>,  <29.332027, 36.798233, 25.325834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.363190, 36.562271, 25.295002>,  <29.415129, 36.168999, 25.243616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.363190, 36.562271, 25.295002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002661, -0.129215, 0.991613,
		0.991531, 0.129099, 0.014161,
		-0.129846, 0.983177, 0.128464,
		29.324236, 36.857224, 25.333542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860558, 36.355801, 25.688873>,  <29.415129, 36.168999, 25.243616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860558, 36.355801, 25.688873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593596, 36.653248, 25.704906>,  <29.433418, 36.831715, 25.714527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.593596, 36.653248, 25.704906>,  <29.860558, 36.355801, 25.688873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.593596, 36.653248, 25.704906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054035, -0.005328, 0.998525,
		0.742731, 0.668588, -0.036625,
		-0.667406, 0.743614, 0.040084,
		29.393373, 36.876331, 25.716932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.008806, 36.731941, 26.354830>,  <29.860558, 36.355801, 25.688873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.008806, 36.731941, 26.354830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648876, 36.881828, 26.265476>,  <29.432919, 36.971760, 26.211864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.648876, 36.881828, 26.265476>,  <30.008806, 36.731941, 26.354830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.648876, 36.881828, 26.265476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174904, 0.159218, 0.971626,
		0.399657, 0.913364, -0.077728,
		-0.899824, 0.374722, -0.223384,
		29.378929, 36.994244, 26.198462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.004313, 37.369698, 26.648077>,  <30.008806, 36.731941, 26.354830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.004313, 37.369698, 26.648077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624504, 37.251728, 26.605316>,  <29.396620, 37.180946, 26.579659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.624504, 37.251728, 26.605316>,  <30.004313, 37.369698, 26.648077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.624504, 37.251728, 26.605316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182039, 0.240485, 0.953430,
		-0.255481, 0.924763, -0.282033,
		-0.949522, -0.294924, -0.106904,
		29.339647, 37.163250, 26.573246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.684919, 37.895206, 26.962311>,  <30.004313, 37.369698, 26.648077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.684919, 37.895206, 26.962311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418955, 37.596478, 26.957485>,  <29.259377, 37.417240, 26.954590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.418955, 37.596478, 26.957485>,  <29.684919, 37.895206, 26.962311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.418955, 37.596478, 26.957485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479117, 0.414061, 0.773952,
		-0.573012, 0.520389, -0.633130,
		-0.664910, -0.746826, -0.012065,
		29.219482, 37.372429, 26.953865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.013163, 38.177250, 26.985966>,  <29.684919, 37.895206, 26.962311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.013163, 38.177250, 26.985966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978548, 37.806892, 27.133064>,  <28.957779, 37.584679, 27.221323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.978548, 37.806892, 27.133064>,  <29.013163, 38.177250, 26.985966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.978548, 37.806892, 27.133064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313799, 0.375673, 0.872009,
		-0.945538, -0.039939, -0.323053,
		-0.086536, -0.925891, 0.367746,
		28.952587, 37.529125, 27.243387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313536, 38.165096, 27.296337>,  <29.013163, 38.177250, 26.985966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313536, 38.165096, 27.296337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519285, 37.855789, 27.444653>,  <28.642735, 37.670204, 27.533642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.519285, 37.855789, 27.444653>,  <28.313536, 38.165096, 27.296337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.519285, 37.855789, 27.444653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241223, 0.284451, 0.927847,
		-0.822941, -0.566702, -0.040215,
		0.514373, -0.773264, 0.370788,
		28.673597, 37.623810, 27.555889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.903673, 37.839348, 27.799719>,  <28.313536, 38.165096, 27.296337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.903673, 37.839348, 27.799719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279102, 37.720348, 27.869658>,  <28.504360, 37.648949, 27.911621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.279102, 37.720348, 27.869658>,  <27.903673, 37.839348, 27.799719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279102, 37.720348, 27.869658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145695, 0.117667, 0.982307,
		-0.312812, -0.947442, 0.067094,
		0.938574, -0.297502, 0.174845,
		28.560675, 37.631100, 27.922112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.885124, 37.569267, 28.471218>,  <27.903673, 37.839348, 27.799719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.885124, 37.569267, 28.471218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277431, 37.618053, 28.410271>,  <28.512815, 37.647324, 28.373703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.277431, 37.618053, 28.410271>,  <27.885124, 37.569267, 28.471218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.277431, 37.618053, 28.410271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103979, 0.334159, 0.936764,
		0.165164, -0.934593, 0.315052,
		0.980770, 0.121961, -0.152369,
		28.571663, 37.654640, 28.364559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.143377, 37.308582, 29.056009>,  <27.885124, 37.569267, 28.471218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.143377, 37.308582, 29.056009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417170, 37.562531, 28.912664>,  <28.581446, 37.714901, 28.826658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.417170, 37.562531, 28.912664>,  <28.143377, 37.308582, 29.056009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.417170, 37.562531, 28.912664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060677, 0.440244, 0.895826,
		0.726501, -0.634920, 0.262817,
		0.684481, 0.634871, -0.358363,
		28.622515, 37.752991, 28.805155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.725800, 37.289658, 29.539381>,  <28.143377, 37.308582, 29.056009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.725800, 37.289658, 29.539381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771938, 37.647984, 29.367699>,  <28.799622, 37.862980, 29.264688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.771938, 37.647984, 29.367699>,  <28.725800, 37.289658, 29.539381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.771938, 37.647984, 29.367699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117035, 0.416825, 0.901421,
		0.986407, -0.154208, -0.056761,
		0.115347, 0.895811, -0.429206,
		28.806541, 37.916725, 29.238937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.318260, 37.672459, 29.828281>,  <28.725800, 37.289658, 29.539381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.318260, 37.672459, 29.828281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076263, 37.959194, 29.689644>,  <28.931067, 38.131237, 29.606461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076263, 37.959194, 29.689644>,  <29.318260, 37.672459, 29.828281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076263, 37.959194, 29.689644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195104, 0.555484, 0.808314,
		0.771959, 0.421400, -0.475921,
		-0.604990, 0.716839, -0.346595,
		28.894766, 38.174248, 29.585665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.643177, 38.399769, 30.084097>,  <29.318260, 37.672459, 29.828281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.643177, 38.399769, 30.084097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275154, 38.519802, 29.983343>,  <29.054340, 38.591824, 29.922892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.275154, 38.519802, 29.983343>,  <29.643177, 38.399769, 30.084097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.275154, 38.519802, 29.983343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095662, 0.795524, 0.598323,
		0.379926, 0.526396, -0.760634,
		-0.920057, 0.300082, -0.251884,
		28.999138, 38.609825, 29.907778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.754328, 39.006207, 29.849857>,  <29.643177, 38.399769, 30.084097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.754328, 39.006207, 29.849857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374813, 38.981388, 29.973763>,  <29.147104, 38.966496, 30.048105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.374813, 38.981388, 29.973763>,  <29.754328, 39.006207, 29.849857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374813, 38.981388, 29.973763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128379, 0.820186, 0.557507,
		-0.288654, 0.568723, -0.770216,
		-0.948787, -0.062047, 0.309762,
		29.090178, 38.962772, 30.066690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.893120, 39.786797, 29.826185>,  <29.754328, 39.006207, 29.849857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.893120, 39.786797, 29.826185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198265, 39.641373, 30.040051>,  <30.381353, 39.554119, 30.168369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.198265, 39.641373, 30.040051>,  <29.893120, 39.786797, 29.826185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.198265, 39.641373, 30.040051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572848, -0.003388, -0.819654,
		0.299803, 0.931565, 0.205679,
		0.762865, -0.363558, 0.534662,
		30.427124, 39.532307, 30.200449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.462095, 40.246525, 29.793510>,  <29.893120, 39.786797, 29.826185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.462095, 40.246525, 29.793510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575607, 39.868385, 29.857729>,  <30.643715, 39.641502, 29.896261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575607, 39.868385, 29.857729>,  <30.462095, 40.246525, 29.793510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575607, 39.868385, 29.857729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513200, 0.008304, -0.858229,
		0.809996, 0.325944, 0.487512,
		0.283782, -0.945353, 0.160548,
		30.660742, 39.584778, 29.905893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.036392, 40.225052, 29.404047>,  <30.462095, 40.246525, 29.793510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.036392, 40.225052, 29.404047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998039, 39.839703, 29.504219>,  <30.975027, 39.608494, 29.564322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.998039, 39.839703, 29.504219>,  <31.036392, 40.225052, 29.404047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.998039, 39.839703, 29.504219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650906, -0.251025, -0.716455,
		0.753079, 0.094313, 0.651135,
		-0.095880, -0.963375, 0.250430,
		30.969275, 39.550690, 29.579348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.730328, 39.954063, 29.536287>,  <31.036392, 40.225052, 29.404047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.730328, 39.954063, 29.536287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478601, 39.664921, 29.422134>,  <31.327566, 39.491436, 29.353642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.478601, 39.664921, 29.422134>,  <31.730328, 39.954063, 29.536287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.478601, 39.664921, 29.422134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586018, -0.200196, -0.785178,
		0.510437, -0.661364, 0.549592,
		-0.629315, -0.722855, -0.285383,
		31.289806, 39.448063, 29.336519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162674, 39.278454, 29.222425>,  <31.730328, 39.954063, 29.536287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162674, 39.278454, 29.222425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790091, 39.232590, 29.084303>,  <31.566540, 39.205070, 29.001429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.790091, 39.232590, 29.084303>,  <32.162674, 39.278454, 29.222425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.790091, 39.232590, 29.084303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359391, -0.438033, -0.823993,
		-0.056774, -0.891616, 0.449219,
		-0.931458, -0.114663, -0.345308,
		31.510653, 39.198193, 28.980711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.198700, 38.669922, 28.853968>,  <32.162674, 39.278454, 29.222425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.198700, 38.669922, 28.853968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866724, 38.848194, 28.719757>,  <31.667540, 38.955158, 28.639231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.866724, 38.848194, 28.719757>,  <32.198700, 38.669922, 28.853968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.866724, 38.848194, 28.719757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150560, -0.400191, -0.903980,
		-0.537159, -0.800761, 0.265031,
		-0.829935, 0.445678, -0.335528,
		31.617743, 38.981895, 28.619099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877787, 38.231823, 28.333879>,  <32.198700, 38.669922, 28.853968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877787, 38.231823, 28.333879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696463, 38.579090, 28.253092>,  <31.587669, 38.787453, 28.204618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.696463, 38.579090, 28.253092>,  <31.877787, 38.231823, 28.333879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.696463, 38.579090, 28.253092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112781, -0.168902, -0.979159,
		-0.884190, -0.466639, -0.021348,
		-0.453308, 0.868171, -0.201969,
		31.560471, 38.839542, 28.192501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.445145, 38.000824, 27.899923>,  <31.877787, 38.231823, 28.333879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.445145, 38.000824, 27.899923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505447, 38.392567, 27.846052>,  <31.541630, 38.627613, 27.813728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505447, 38.392567, 27.846052>,  <31.445145, 38.000824, 27.899923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505447, 38.392567, 27.846052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113420, -0.152472, -0.981778,
		-0.982042, 0.132736, -0.134065,
		0.150759, 0.979353, -0.134679,
		31.550674, 38.686375, 27.805649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.085114, 38.267521, 27.303661>,  <31.445145, 38.000824, 27.899923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.085114, 38.267521, 27.303661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382603, 38.529938, 27.355022>,  <31.561096, 38.687386, 27.385839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.382603, 38.529938, 27.355022>,  <31.085114, 38.267521, 27.303661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.382603, 38.529938, 27.355022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260384, -0.107385, -0.959515,
		-0.615689, 0.747050, -0.250687,
		0.743725, 0.656038, 0.128404,
		31.605721, 38.726749, 27.393543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072037, 38.633190, 26.623936>,  <31.085114, 38.267521, 27.303661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072037, 38.633190, 26.623936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417854, 38.741558, 26.793247>,  <31.625345, 38.806580, 26.894835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.417854, 38.741558, 26.793247>,  <31.072037, 38.633190, 26.623936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417854, 38.741558, 26.793247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478090, -0.183790, -0.858866,
		-0.154886, 0.944894, -0.288417,
		0.864546, 0.270916, 0.423278,
		31.677217, 38.822834, 26.920231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.305021, 39.017216, 26.157375>,  <31.072037, 38.633190, 26.623936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.305021, 39.017216, 26.157375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623243, 38.942890, 26.388050>,  <31.814177, 38.898296, 26.526455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.623243, 38.942890, 26.388050>,  <31.305021, 39.017216, 26.157375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.623243, 38.942890, 26.388050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550407, -0.176234, -0.816084,
		0.253270, 0.966652, -0.037931,
		0.795554, -0.185812, 0.576687,
		31.861910, 38.887146, 26.561056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.728283, 39.562763, 26.069693>,  <31.305021, 39.017216, 26.157375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.728283, 39.562763, 26.069693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960238, 39.262360, 26.196001>,  <32.099411, 39.082115, 26.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.960238, 39.262360, 26.196001>,  <31.728283, 39.562763, 26.069693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.960238, 39.262360, 26.196001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448132, -0.029654, -0.893475,
		0.680376, 0.659621, 0.319357,
		0.579885, -0.751013, 0.315773,
		32.134201, 39.037056, 26.290733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456314, 39.822300, 26.064602>,  <31.728283, 39.562763, 26.069693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456314, 39.822300, 26.064602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443901, 39.422604, 26.055201>,  <32.436451, 39.182785, 26.049561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443901, 39.422604, 26.055201>,  <32.456314, 39.822300, 26.064602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443901, 39.422604, 26.055201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521029, 0.003893, -0.853530,
		0.852974, -0.038737, 0.520513,
		-0.031036, -0.999242, -0.023504,
		32.434589, 39.122829, 26.048149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.161129, 39.546452, 25.919558>,  <32.456314, 39.822300, 26.064602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.161129, 39.546452, 25.919558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898197, 39.280617, 25.777433>,  <32.740437, 39.121117, 25.692160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898197, 39.280617, 25.777433>,  <33.161129, 39.546452, 25.919558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898197, 39.280617, 25.777433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408529, 0.081943, -0.909059,
		0.633263, -0.742705, 0.217640,
		-0.657329, -0.664586, -0.355308,
		32.701000, 39.081242, 25.670841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527542, 39.151943, 25.489799>,  <33.161129, 39.546452, 25.919558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527542, 39.151943, 25.489799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155083, 39.046337, 25.389198>,  <32.931606, 38.982975, 25.328838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155083, 39.046337, 25.389198>,  <33.527542, 39.151943, 25.489799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155083, 39.046337, 25.389198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238713, 0.080002, -0.967789,
		0.275628, -0.961196, -0.011471,
		-0.931153, -0.264012, -0.251501,
		32.875736, 38.967133, 25.313747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.491955, 38.553509, 25.065107>,  <33.527542, 39.151943, 25.489799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.491955, 38.553509, 25.065107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146633, 38.736038, 24.978870>,  <32.939442, 38.845554, 24.927128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.146633, 38.736038, 24.978870>,  <33.491955, 38.553509, 25.065107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.146633, 38.736038, 24.978870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187092, -0.107384, -0.976456,
		-0.468727, -0.883313, 0.007331,
		-0.863303, 0.456319, -0.215594,
		32.887642, 38.872932, 24.914192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.374413, 38.260658, 24.471317>,  <33.491955, 38.553509, 25.065107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.374413, 38.260658, 24.471317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099926, 38.551388, 24.482935>,  <32.935234, 38.725826, 24.489906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.099926, 38.551388, 24.482935>,  <33.374413, 38.260658, 24.471317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.099926, 38.551388, 24.482935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081125, -0.036790, -0.996025,
		-0.722864, -0.685840, 0.084209,
		-0.686211, 0.726822, 0.029045,
		32.894062, 38.769436, 24.491648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.797127, 38.095928, 24.167999>,  <33.374413, 38.260658, 24.471317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.797127, 38.095928, 24.167999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813747, 38.493111, 24.123604>,  <32.823719, 38.731419, 24.096966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.813747, 38.493111, 24.123604>,  <32.797127, 38.095928, 24.167999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813747, 38.493111, 24.123604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041813, -0.109260, -0.993133,
		-0.998261, 0.045907, 0.036978,
		0.041552, 0.992953, -0.110989,
		32.826214, 38.790997, 24.090307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.591537, 38.158745, 23.573788>,  <32.797127, 38.095928, 24.167999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.591537, 38.158745, 23.573788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687328, 38.542152, 23.635603>,  <32.744804, 38.772198, 23.672693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.687328, 38.542152, 23.635603>,  <32.591537, 38.158745, 23.573788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.687328, 38.542152, 23.635603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012291, 0.162152, -0.986689,
		-0.970823, 0.234394, 0.050614,
		0.239481, 0.958523, 0.154540,
		32.759174, 38.829708, 23.681965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237087, 38.498005, 23.046076>,  <32.591537, 38.158745, 23.573788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237087, 38.498005, 23.046076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536491, 38.739307, 23.156214>,  <32.716133, 38.884090, 23.222296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536491, 38.739307, 23.156214>,  <32.237087, 38.498005, 23.046076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536491, 38.739307, 23.156214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342492, 0.003867, -0.939513,
		-0.567836, 0.797535, -0.203717,
		0.748506, 0.603261, 0.275345,
		32.761044, 38.920284, 23.238817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.008560, 39.191135, 22.847792>,  <32.237087, 38.498005, 23.046076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.008560, 39.191135, 22.847792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407700, 39.208698, 22.867277>,  <32.647182, 39.219238, 22.878969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.407700, 39.208698, 22.867277>,  <32.008560, 39.191135, 22.847792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.407700, 39.208698, 22.867277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045450, 0.072510, -0.996332,
		-0.047280, 0.996401, 0.070359,
		0.997847, 0.043909, 0.048715,
		32.707054, 39.221870, 22.881891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.248337, 39.774933, 22.496908>,  <32.008560, 39.191135, 22.847792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.248337, 39.774933, 22.496908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547588, 39.509613, 22.504158>,  <32.727139, 39.350422, 22.508507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.547588, 39.509613, 22.504158>,  <32.248337, 39.774933, 22.496908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547588, 39.509613, 22.504158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102833, 0.088916, -0.990717,
		0.655532, 0.743052, 0.134730,
		0.748133, -0.663301, 0.018123,
		32.772030, 39.310623, 22.509594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.678303, 40.003414, 21.935038>,  <32.248337, 39.774933, 22.496908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.678303, 40.003414, 21.935038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809010, 39.632851, 22.009857>,  <32.887432, 39.410511, 22.054749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.809010, 39.632851, 22.009857>,  <32.678303, 40.003414, 21.935038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.809010, 39.632851, 22.009857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092771, -0.165519, -0.981834,
		0.940541, 0.338184, 0.031858,
		0.326767, -0.926410, 0.187051,
		32.907040, 39.354927, 22.065973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.334881, 39.842884, 21.594742>,  <32.678303, 40.003414, 21.935038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.334881, 39.842884, 21.594742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177654, 39.479572, 21.652054>,  <33.083317, 39.261585, 21.686441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.177654, 39.479572, 21.652054>,  <33.334881, 39.842884, 21.594742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177654, 39.479572, 21.652054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291520, -0.270880, -0.917409,
		0.872073, -0.318837, 0.371256,
		-0.393070, -0.908277, 0.143280,
		33.059734, 39.207088, 21.695038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538254, 39.479195, 21.001635>,  <33.334881, 39.842884, 21.594742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538254, 39.479195, 21.001635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282066, 39.214092, 21.156837>,  <33.128353, 39.055031, 21.249960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.282066, 39.214092, 21.156837>,  <33.538254, 39.479195, 21.001635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.282066, 39.214092, 21.156837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021657, -0.520618, -0.853515,
		0.767676, -0.538250, 0.347795,
		-0.640472, -0.662755, 0.388009,
		33.089924, 39.015266, 21.273241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.684639, 38.927742, 20.642614>,  <33.538254, 39.479195, 21.001635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.684639, 38.927742, 20.642614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330372, 38.826199, 20.798122>,  <33.117809, 38.765274, 20.891426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.330372, 38.826199, 20.798122>,  <33.684639, 38.927742, 20.642614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.330372, 38.826199, 20.798122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088133, -0.730165, -0.677563,
		0.455871, -0.634362, 0.624313,
		-0.885671, -0.253859, 0.388769,
		33.064671, 38.750042, 20.914753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.742741, 38.206635, 20.755001>,  <33.684639, 38.927742, 20.642614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.742741, 38.206635, 20.755001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356514, 38.303635, 20.717335>,  <33.124779, 38.361835, 20.694735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.356514, 38.303635, 20.717335>,  <33.742741, 38.206635, 20.755001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.356514, 38.303635, 20.717335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166085, -0.853258, -0.494334,
		-0.200223, -0.461675, 0.864157,
		-0.965570, 0.242501, -0.094165,
		33.066841, 38.376385, 20.689085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.452545, 37.478264, 20.819017>,  <33.742741, 38.206635, 20.755001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.452545, 37.478264, 20.819017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187031, 37.715706, 20.637016>,  <33.027721, 37.858170, 20.527817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.187031, 37.715706, 20.637016>,  <33.452545, 37.478264, 20.819017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187031, 37.715706, 20.637016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386530, -0.793079, -0.470766,
		-0.640298, -0.136617, 0.755880,
		-0.663787, 0.593601, -0.455000,
		32.987896, 37.893787, 20.500517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768520, 37.152851, 20.827990>,  <33.452545, 37.478264, 20.819017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768520, 37.152851, 20.827990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763947, 37.424831, 20.534723>,  <32.761200, 37.588020, 20.358763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.763947, 37.424831, 20.534723>,  <32.768520, 37.152851, 20.827990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.763947, 37.424831, 20.534723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456591, -0.655863, -0.601139,
		-0.889603, 0.327882, 0.317961,
		-0.011436, 0.679953, -0.733166,
		32.760517, 37.628819, 20.314774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.084007, 37.095898, 20.511969>,  <32.768520, 37.152851, 20.827990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.084007, 37.095898, 20.511969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337555, 37.267838, 20.254772>,  <32.489681, 37.371002, 20.100454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.337555, 37.267838, 20.254772>,  <32.084007, 37.095898, 20.511969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.337555, 37.267838, 20.254772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322675, -0.608567, -0.724932,
		-0.702918, 0.666989, -0.247048,
		0.633867, 0.429852, -0.642993,
		32.527714, 37.396793, 20.061874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749733, 37.166325, 19.923687>,  <32.084007, 37.095898, 20.511969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749733, 37.166325, 19.923687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124638, 37.225567, 19.797447>,  <32.349579, 37.261112, 19.721703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.124638, 37.225567, 19.797447>,  <31.749733, 37.166325, 19.923687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.124638, 37.225567, 19.797447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253260, -0.332859, -0.908331,
		-0.239582, 0.931273, -0.274466,
		0.937262, 0.148108, -0.315601,
		32.405815, 37.270000, 19.702766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.663446, 37.493179, 19.336319>,  <31.749733, 37.166325, 19.923687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.663446, 37.493179, 19.336319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047482, 37.387505, 19.299580>,  <32.277901, 37.324100, 19.277536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.047482, 37.387505, 19.299580>,  <31.663446, 37.493179, 19.336319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.047482, 37.387505, 19.299580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153810, -0.224418, -0.962278,
		0.233611, 0.937998, -0.256096,
		0.960088, -0.264189, -0.091847,
		32.335506, 37.308247, 19.272026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.792479, 37.771420, 18.806829>,  <31.663446, 37.493179, 19.336319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.792479, 37.771420, 18.806829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089714, 37.506439, 18.844736>,  <32.268055, 37.347450, 18.867479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.089714, 37.506439, 18.844736>,  <31.792479, 37.771420, 18.806829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.089714, 37.506439, 18.844736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102586, -0.252706, -0.962089,
		0.661283, 0.705196, -0.255741,
		0.743088, -0.662449, 0.094767,
		32.312641, 37.307705, 18.873167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.270401, 37.872555, 18.247463>,  <31.792479, 37.771420, 18.806829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.270401, 37.872555, 18.247463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326885, 37.493462, 18.361906>,  <32.360775, 37.266006, 18.430573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326885, 37.493462, 18.361906>,  <32.270401, 37.872555, 18.247463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326885, 37.493462, 18.361906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220365, -0.311845, -0.924225,
		0.965142, 0.067462, -0.252883,
		0.141211, -0.947735, 0.286109,
		32.369247, 37.209141, 18.447739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.487202, 37.578682, 17.672428>,  <32.270401, 37.872555, 18.247463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.487202, 37.578682, 17.672428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381985, 37.253124, 17.879652>,  <32.318855, 37.057789, 18.003986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.381985, 37.253124, 17.879652>,  <32.487202, 37.578682, 17.672428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.381985, 37.253124, 17.879652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213854, -0.474426, -0.853924,
		0.940784, -0.335408, -0.049260,
		-0.263043, -0.813892, 0.518061,
		32.303070, 37.008957, 18.035070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874950, 37.000462, 17.429577>,  <32.487202, 37.578682, 17.672428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874950, 37.000462, 17.429577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537647, 36.850201, 17.583353>,  <32.335266, 36.760044, 17.675619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.537647, 36.850201, 17.583353>,  <32.874950, 37.000462, 17.429577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.537647, 36.850201, 17.583353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116571, -0.570398, -0.813054,
		0.524714, -0.730431, 0.437204,
		-0.843260, -0.375655, 0.384443,
		32.284668, 36.737503, 17.698687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.899971, 36.256386, 17.435255>,  <32.874950, 37.000462, 17.429577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.899971, 36.256386, 17.435255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514133, 36.361431, 17.445002>,  <32.282631, 36.424458, 17.450850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.514133, 36.361431, 17.445002>,  <32.899971, 36.256386, 17.435255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.514133, 36.361431, 17.445002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199722, -0.666985, -0.717804,
		-0.172252, -0.697256, 0.695819,
		-0.964594, 0.262613, 0.024368,
		32.224754, 36.440216, 17.452312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621086, 35.687714, 17.185188>,  <32.899971, 36.256386, 17.435255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621086, 35.687714, 17.185188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290627, 35.912743, 17.172552>,  <32.092350, 36.047760, 17.164970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.290627, 35.912743, 17.172552>,  <32.621086, 35.687714, 17.185188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.290627, 35.912743, 17.172552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363556, -0.575045, -0.732905,
		-0.430476, -0.594002, 0.679597,
		-0.826146, 0.562570, -0.031590,
		32.042782, 36.081512, 17.163074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378525, 35.492527, 16.859022>,  <32.621086, 35.687714, 17.185188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378525, 35.492527, 16.859022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662117, 35.243473, 16.991484>,  <33.832272, 35.094040, 17.070961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.662117, 35.243473, 16.991484>,  <33.378525, 35.492527, 16.859022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662117, 35.243473, 16.991484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003425, 0.466527, 0.884500,
		-0.705218, -0.628229, 0.328627,
		0.708982, -0.622640, 0.331155,
		33.874813, 35.056683, 17.090830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.226971, 35.420383, 17.493357>,  <33.378525, 35.492527, 16.859022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.226971, 35.420383, 17.493357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599548, 35.276001, 17.511766>,  <33.823093, 35.189369, 17.522812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.599548, 35.276001, 17.511766>,  <33.226971, 35.420383, 17.493357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.599548, 35.276001, 17.511766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173356, 0.551394, 0.816034,
		-0.319933, -0.752112, 0.576168,
		0.931446, -0.360959, 0.046026,
		33.878983, 35.167713, 17.525574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.345329, 35.122627, 18.166233>,  <33.226971, 35.420383, 17.493357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.345329, 35.122627, 18.166233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705746, 35.186520, 18.004930>,  <33.921997, 35.224854, 17.908150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.705746, 35.186520, 18.004930>,  <33.345329, 35.122627, 18.166233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.705746, 35.186520, 18.004930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318309, 0.388030, 0.864934,
		0.294628, -0.907700, 0.298789,
		0.901040, 0.159726, -0.403254,
		33.976059, 35.234436, 17.883955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973602, 34.743263, 18.658356>,  <33.345329, 35.122627, 18.166233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973602, 34.743263, 18.658356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108307, 35.047539, 18.436384>,  <34.189129, 35.230103, 18.303202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.108307, 35.047539, 18.436384>,  <33.973602, 34.743263, 18.658356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.108307, 35.047539, 18.436384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408075, 0.413222, 0.814078,
		0.848569, -0.500600, -0.171262,
		0.336758, 0.760689, -0.554929,
		34.209335, 35.275745, 18.269905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698750, 34.739311, 18.535162>,  <33.973602, 34.743263, 18.658356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698750, 34.739311, 18.535162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616161, 35.130024, 18.512318>,  <34.566608, 35.364452, 18.498611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.616161, 35.130024, 18.512318>,  <34.698750, 34.739311, 18.535162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.616161, 35.130024, 18.512318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524811, 0.159815, 0.836082,
		0.825800, 0.142651, -0.545624,
		-0.206467, 0.976786, -0.057110,
		34.554222, 35.423061, 18.495184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308788, 35.024967, 18.649782>,  <34.698750, 34.739311, 18.535162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308788, 35.024967, 18.649782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068184, 35.336388, 18.721375>,  <34.923820, 35.523239, 18.764330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.068184, 35.336388, 18.721375>,  <35.308788, 35.024967, 18.649782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068184, 35.336388, 18.721375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488895, 0.181573, 0.853237,
		0.631795, 0.600735, -0.489850,
		-0.601513, 0.778556, 0.178979,
		34.887730, 35.569954, 18.775068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.726795, 35.590614, 18.862619>,  <35.308788, 35.024967, 18.649782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.726795, 35.590614, 18.862619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354542, 35.687794, 18.972088>,  <35.131187, 35.746101, 19.037769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354542, 35.687794, 18.972088>,  <35.726795, 35.590614, 18.862619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354542, 35.687794, 18.972088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334957, 0.264331, 0.904396,
		0.147380, 0.933331, -0.327372,
		-0.930636, 0.242946, 0.273669,
		35.075352, 35.760677, 19.054188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.895470, 35.966064, 19.372221>,  <35.726795, 35.590614, 18.862619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.895470, 35.966064, 19.372221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498333, 35.951683, 19.417791>,  <35.260052, 35.943054, 19.445133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.498333, 35.951683, 19.417791>,  <35.895470, 35.966064, 19.372221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.498333, 35.951683, 19.417791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098102, 0.298800, 0.949260,
		-0.068172, 0.953638, -0.293133,
		-0.992839, -0.035956, 0.113924,
		35.200481, 35.940895, 19.451969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.612133, 36.566662, 19.639254>,  <35.895470, 35.966064, 19.372221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.612133, 36.566662, 19.639254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321938, 36.314049, 19.748678>,  <35.147820, 36.162479, 19.814333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.321938, 36.314049, 19.748678>,  <35.612133, 36.566662, 19.639254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321938, 36.314049, 19.748678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002953, 0.400331, 0.916366,
		-0.688231, 0.664003, -0.292300,
		-0.725486, -0.631534, 0.273559,
		35.104290, 36.124588, 19.830746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991287, 36.888180, 19.955547>,  <35.612133, 36.566662, 19.639254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991287, 36.888180, 19.955547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028522, 36.515144, 20.095043>,  <35.050865, 36.291325, 20.178741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028522, 36.515144, 20.095043>,  <34.991287, 36.888180, 19.955547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028522, 36.515144, 20.095043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095905, 0.340234, 0.935437,
		-0.991028, -0.120523, -0.057769,
		0.093086, -0.932585, 0.348741,
		35.056450, 36.235371, 20.199665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481853, 36.814648, 20.341158>,  <34.991287, 36.888180, 19.955547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481853, 36.814648, 20.341158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719872, 36.522419, 20.475136>,  <34.862682, 36.347084, 20.555523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.719872, 36.522419, 20.475136>,  <34.481853, 36.814648, 20.341158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.719872, 36.522419, 20.475136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107127, 0.340942, 0.933961,
		-0.796519, -0.591633, 0.124613,
		0.595047, -0.730568, 0.334946,
		34.898384, 36.303249, 20.575621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.212364, 36.592941, 21.044333>,  <34.481853, 36.814648, 20.341158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.212364, 36.592941, 21.044333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584133, 36.445415, 21.049164>,  <34.807194, 36.356899, 21.052063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.584133, 36.445415, 21.049164>,  <34.212364, 36.592941, 21.044333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.584133, 36.445415, 21.049164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168870, 0.454202, 0.874747,
		-0.328105, -0.810972, 0.484428,
		0.929424, -0.368814, 0.012077,
		34.862961, 36.334770, 21.052788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193165, 36.060539, 21.545944>,  <34.212364, 36.592941, 21.044333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193165, 36.060539, 21.545944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577911, 36.143017, 21.474070>,  <34.808762, 36.192505, 21.430944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577911, 36.143017, 21.474070>,  <34.193165, 36.060539, 21.545944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577911, 36.143017, 21.474070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173224, 0.049124, 0.983657,
		0.211656, -0.977276, 0.011532,
		0.961871, 0.206199, -0.179685,
		34.866474, 36.204876, 21.420164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.554558, 35.720455, 22.068758>,  <34.193165, 36.060539, 21.545944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.554558, 35.720455, 22.068758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791733, 36.020443, 21.951471>,  <34.934036, 36.200436, 21.881100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.791733, 36.020443, 21.951471>,  <34.554558, 35.720455, 22.068758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791733, 36.020443, 21.951471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202950, 0.213199, 0.955697,
		0.779256, -0.626175, -0.025792,
		0.592935, 0.749967, -0.293219,
		34.969612, 36.245434, 21.863506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.209396, 35.621483, 22.452747>,  <34.554558, 35.720455, 22.068758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.209396, 35.621483, 22.452747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155376, 35.998920, 22.331818>,  <35.122967, 36.225384, 22.259260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.155376, 35.998920, 22.331818>,  <35.209396, 35.621483, 22.452747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.155376, 35.998920, 22.331818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317967, 0.330252, 0.888724,
		0.938435, 0.023890, -0.344630,
		-0.135046, 0.943590, -0.302324,
		35.114864, 36.281998, 22.241121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.565571, 35.936413, 22.939352>,  <35.209396, 35.621483, 22.452747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.565571, 35.936413, 22.939352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331303, 36.209511, 22.764610>,  <35.190742, 36.373371, 22.659765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.331303, 36.209511, 22.764610>,  <35.565571, 35.936413, 22.939352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.331303, 36.209511, 22.764610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229614, 0.377131, 0.897246,
		0.777343, 0.625802, -0.064108,
		-0.585675, 0.682748, -0.436853,
		35.155602, 36.414333, 22.633554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.832085, 36.641163, 23.204201>,  <35.565571, 35.936413, 22.939352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.832085, 36.641163, 23.204201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450897, 36.654732, 23.083738>,  <35.222183, 36.662872, 23.011461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.450897, 36.654732, 23.083738>,  <35.832085, 36.641163, 23.204201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450897, 36.654732, 23.083738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255755, 0.443097, 0.859217,
		0.162590, 0.895832, -0.413582,
		-0.952971, 0.033925, -0.301157,
		35.165005, 36.664909, 22.993391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.573174, 37.237553, 23.457884>,  <35.832085, 36.641163, 23.204201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.573174, 37.237553, 23.457884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248730, 37.014256, 23.388069>,  <35.054062, 36.880276, 23.346180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.248730, 37.014256, 23.388069>,  <35.573174, 37.237553, 23.457884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.248730, 37.014256, 23.388069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465741, 0.435931, 0.770097,
		-0.353818, 0.705922, -0.613586,
		-0.811109, -0.558246, -0.174536,
		35.005398, 36.846783, 23.335709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.063938, 37.716564, 23.706493>,  <35.573174, 37.237553, 23.457884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.063938, 37.716564, 23.706493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893227, 37.356998, 23.666889>,  <34.790798, 37.141258, 23.643127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.893227, 37.356998, 23.666889>,  <35.063938, 37.716564, 23.706493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.893227, 37.356998, 23.666889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413686, 0.096697, 0.905270,
		-0.804190, 0.427311, -0.413138,
		-0.426781, -0.898919, -0.099010,
		34.765194, 37.087322, 23.637186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.406288, 37.800629, 23.942923>,  <35.063938, 37.716564, 23.706493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.406288, 37.800629, 23.942923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488956, 37.409966, 23.966347>,  <34.538559, 37.175568, 23.980402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.488956, 37.409966, 23.966347>,  <34.406288, 37.800629, 23.942923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.488956, 37.409966, 23.966347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349269, -0.017736, 0.936855,
		-0.913946, -0.214075, -0.344781,
		0.206672, -0.976656, 0.058560,
		34.550957, 37.116970, 23.983915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.812336, 37.521885, 24.220062>,  <34.406288, 37.800629, 23.942923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.812336, 37.521885, 24.220062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088623, 37.244358, 24.301577>,  <34.254395, 37.077843, 24.350485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088623, 37.244358, 24.301577>,  <33.812336, 37.521885, 24.220062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088623, 37.244358, 24.301577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316745, -0.036943, 0.947791,
		-0.650066, -0.719202, -0.245280,
		0.690715, -0.693818, 0.203788,
		34.295837, 37.036213, 24.362713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404690, 37.137249, 24.611012>,  <33.812336, 37.521885, 24.220062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404690, 37.137249, 24.611012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771988, 36.988670, 24.665939>,  <33.992367, 36.899525, 24.698896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.771988, 36.988670, 24.665939>,  <33.404690, 37.137249, 24.611012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.771988, 36.988670, 24.665939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222316, -0.196543, 0.954959,
		-0.327729, -0.907412, -0.263053,
		0.918243, -0.371449, 0.137319,
		34.047462, 36.877235, 24.707136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.295464, 36.514275, 24.928797>,  <33.404690, 37.137249, 24.611012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.295464, 36.514275, 24.928797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656406, 36.643070, 25.043392>,  <33.872971, 36.720348, 25.112150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656406, 36.643070, 25.043392>,  <33.295464, 36.514275, 24.928797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656406, 36.643070, 25.043392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233619, -0.193173, 0.952946,
		0.362185, -0.926825, -0.099086,
		0.902355, 0.321994, 0.286488,
		33.927113, 36.739670, 25.129339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.416691, 36.074894, 25.454531>,  <33.295464, 36.514275, 24.928797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.416691, 36.074894, 25.454531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637417, 36.405636, 25.498014>,  <33.769852, 36.604080, 25.524105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.637417, 36.405636, 25.498014>,  <33.416691, 36.074894, 25.454531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.637417, 36.405636, 25.498014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186526, -0.004683, 0.982439,
		0.812843, -0.562396, 0.151646,
		0.551810, 0.826854, 0.108709,
		33.802959, 36.653690, 25.530626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.840569, 35.930340, 25.983700>,  <33.416691, 36.074894, 25.454531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.840569, 35.930340, 25.983700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856960, 36.329758, 25.969652>,  <33.866795, 36.569408, 25.961224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.856960, 36.329758, 25.969652>,  <33.840569, 35.930340, 25.983700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.856960, 36.329758, 25.969652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167569, 0.041518, 0.984986,
		0.985008, -0.034484, 0.169027,
		0.040984, 0.998543, -0.035117,
		33.869255, 36.629322, 25.959118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332760, 36.092510, 26.350220>,  <33.840569, 35.930340, 25.983700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332760, 36.092510, 26.350220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146183, 36.446194, 26.340399>,  <34.034237, 36.658405, 26.334507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146183, 36.446194, 26.340399>,  <34.332760, 36.092510, 26.350220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146183, 36.446194, 26.340399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097151, 0.078798, 0.992145,
		0.879201, 0.460393, -0.122657,
		-0.466442, 0.884211, -0.024552,
		34.006252, 36.711456, 26.333033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673870, 36.497704, 26.843075>,  <34.332760, 36.092510, 26.350220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673870, 36.497704, 26.843075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310143, 36.649796, 26.775476>,  <34.091908, 36.741051, 26.734917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.310143, 36.649796, 26.775476>,  <34.673870, 36.497704, 26.843075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.310143, 36.649796, 26.775476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118093, 0.153619, 0.981048,
		0.398989, 0.912043, -0.094786,
		-0.909319, 0.380234, -0.168998,
		34.037346, 36.763866, 26.724777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620411, 37.162411, 27.199839>,  <34.673870, 36.497704, 26.843075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620411, 37.162411, 27.199839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242229, 37.042805, 27.148146>,  <34.015320, 36.971039, 27.117130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.242229, 37.042805, 27.148146>,  <34.620411, 37.162411, 27.199839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.242229, 37.042805, 27.148146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167878, 0.107281, 0.979953,
		-0.279158, 0.948198, -0.151628,
		-0.945456, -0.299017, -0.129233,
		33.958591, 36.953098, 27.109375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.233086, 37.544746, 27.768162>,  <34.620411, 37.162411, 27.199839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.233086, 37.544746, 27.768162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989796, 37.259918, 27.627867>,  <33.843822, 37.089020, 27.543690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989796, 37.259918, 27.627867>,  <34.233086, 37.544746, 27.768162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989796, 37.259918, 27.627867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478568, -0.023564, 0.877734,
		-0.633277, 0.701708, -0.326444,
		-0.608221, -0.712075, -0.350738,
		33.807331, 37.046295, 27.522646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.554924, 37.727303, 27.859861>,  <34.233086, 37.544746, 27.768162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.554924, 37.727303, 27.859861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556068, 37.328411, 27.830137>,  <33.556755, 37.089077, 27.812302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.556068, 37.328411, 27.830137>,  <33.554924, 37.727303, 27.859861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556068, 37.328411, 27.830137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313772, -0.071455, 0.946806,
		-0.949494, 0.020611, -0.313107,
		0.002859, -0.997231, -0.074313,
		33.556927, 37.029243, 27.807844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982071, 37.524693, 28.300108>,  <33.554924, 37.727303, 27.859861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982071, 37.524693, 28.300108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173229, 37.174541, 28.270912>,  <33.287926, 36.964451, 28.253395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.173229, 37.174541, 28.270912>,  <32.982071, 37.524693, 28.300108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173229, 37.174541, 28.270912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419891, -0.300633, 0.856336,
		-0.771560, -0.378595, -0.511235,
		0.477899, -0.875378, -0.072988,
		33.316597, 36.911930, 28.249016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.452557, 36.996033, 28.439287>,  <32.982071, 37.524693, 28.300108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.452557, 36.996033, 28.439287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816044, 36.839615, 28.497696>,  <33.034134, 36.745766, 28.532742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.816044, 36.839615, 28.497696>,  <32.452557, 36.996033, 28.439287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.816044, 36.839615, 28.497696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261404, -0.260395, 0.929442,
		-0.325430, -0.882768, -0.338845,
		0.908715, -0.391044, 0.146019,
		33.088657, 36.722301, 28.541502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.227386, 36.320271, 28.782408>,  <32.452557, 36.996033, 28.439287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.227386, 36.320271, 28.782408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609722, 36.415478, 28.851360>,  <32.839123, 36.472603, 28.892731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.609722, 36.415478, 28.851360>,  <32.227386, 36.320271, 28.782408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609722, 36.415478, 28.851360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105090, -0.270948, 0.956840,
		0.274454, -0.932702, -0.233969,
		0.955841, 0.238021, 0.172380,
		32.896473, 36.486885, 28.903074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562397, 35.763073, 29.121443>,  <32.227386, 36.320271, 28.782408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562397, 35.763073, 29.121443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796345, 36.073582, 29.215538>,  <32.936714, 36.259888, 29.271996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.796345, 36.073582, 29.215538>,  <32.562397, 35.763073, 29.121443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.796345, 36.073582, 29.215538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151533, -0.180341, 0.971862,
		0.796849, -0.604057, 0.012154,
		0.584868, 0.776268, 0.235239,
		32.971806, 36.306461, 29.286110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028290, 35.421894, 29.524067>,  <32.562397, 35.763073, 29.121443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028290, 35.421894, 29.524067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056644, 35.807705, 29.625780>,  <33.073658, 36.039192, 29.686808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056644, 35.807705, 29.625780>,  <33.028290, 35.421894, 29.524067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056644, 35.807705, 29.625780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026509, -0.256657, 0.966139,
		0.997132, -0.061742, -0.043762,
		0.070883, 0.964528, 0.254285,
		33.077908, 36.097065, 29.702066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543896, 35.536640, 30.082947>,  <33.028290, 35.421894, 29.524067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543896, 35.536640, 30.082947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310692, 35.860947, 30.103960>,  <33.170769, 36.055531, 30.116568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310692, 35.860947, 30.103960>,  <33.543896, 35.536640, 30.082947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310692, 35.860947, 30.103960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059960, -0.107418, 0.992404,
		0.810247, 0.575435, 0.111240,
		-0.583013, 0.810763, 0.052532,
		33.135788, 36.104176, 30.119720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730736, 35.822464, 30.684132>,  <33.543896, 35.536640, 30.082947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730736, 35.822464, 30.684132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409565, 36.051708, 30.618586>,  <33.216862, 36.189255, 30.579258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.409565, 36.051708, 30.618586>,  <33.730736, 35.822464, 30.684132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409565, 36.051708, 30.618586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150530, 0.071043, 0.986050,
		0.576753, 0.816395, 0.029227,
		-0.802930, 0.573107, -0.163866,
		33.168686, 36.223640, 30.569426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.839931, 36.378391, 31.176731>,  <33.730736, 35.822464, 30.684132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.839931, 36.378391, 31.176731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452560, 36.377792, 31.077009>,  <33.220139, 36.377434, 31.017176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.452560, 36.377792, 31.077009>,  <33.839931, 36.378391, 31.176731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.452560, 36.377792, 31.077009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229084, 0.399895, 0.887471,
		0.098364, 0.916560, -0.387611,
		-0.968424, -0.001501, -0.249305,
		33.162033, 36.377342, 31.002218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.614929, 37.016907, 31.461374>,  <33.839931, 36.378391, 31.176731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.614929, 37.016907, 31.461374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294289, 36.787361, 31.394312>,  <33.101902, 36.649635, 31.354074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294289, 36.787361, 31.394312>,  <33.614929, 37.016907, 31.461374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294289, 36.787361, 31.394312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365330, 0.248196, 0.897180,
		-0.473248, 0.780435, -0.408605,
		-0.801605, -0.573864, -0.167658,
		33.053806, 36.615200, 31.344015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103882, 37.377323, 31.658247>,  <33.614929, 37.016907, 31.461374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103882, 37.377323, 31.658247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951733, 37.008297, 31.684141>,  <32.860443, 36.786880, 31.699678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.951733, 37.008297, 31.684141>,  <33.103882, 37.377323, 31.658247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.951733, 37.008297, 31.684141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242888, 0.167193, 0.955538,
		-0.892368, 0.347739, -0.287675,
		-0.380375, -0.922564, 0.064737,
		32.837620, 36.731529, 31.703562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501022, 37.307629, 32.030113>,  <33.103882, 37.377323, 31.658247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501022, 37.307629, 32.030113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637051, 36.934593, 32.078495>,  <32.718666, 36.710773, 32.107525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.637051, 36.934593, 32.078495>,  <32.501022, 37.307629, 32.030113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.637051, 36.934593, 32.078495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224181, 0.044521, 0.973530,
		-0.913288, -0.358186, -0.193928,
		0.340071, -0.932588, 0.120959,
		32.739071, 36.654816, 32.114784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.969355, 37.038433, 32.581718>,  <32.501022, 37.307629, 32.030113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.969355, 37.038433, 32.581718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304760, 36.820576, 32.575371>,  <32.506004, 36.689861, 32.571564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.304760, 36.820576, 32.575371>,  <31.969355, 37.038433, 32.581718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.304760, 36.820576, 32.575371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020364, 0.002221, 0.999790,
		-0.544498, -0.838662, 0.012954,
		0.838515, -0.544648, -0.015869,
		32.556313, 36.657181, 32.570610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.934980, 36.449596, 32.946751>,  <31.969355, 37.038433, 32.581718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.934980, 36.449596, 32.946751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305378, 36.599709, 32.930241>,  <32.527615, 36.689777, 32.920334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.305378, 36.599709, 32.930241>,  <31.934980, 36.449596, 32.946751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305378, 36.599709, 32.930241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066309, -0.054041, 0.996335,
		0.371676, -0.925334, -0.074926,
		0.925992, 0.375282, -0.041272,
		32.583176, 36.712292, 32.917858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.318619, 36.058643, 33.330891>,  <31.934980, 36.449596, 32.946751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.318619, 36.058643, 33.330891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003201, 35.873459, 33.168972>,  <31.813948, 35.762348, 33.071823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.003201, 35.873459, 33.168972>,  <32.318619, 36.058643, 33.330891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.003201, 35.873459, 33.168972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392093, 0.128603, -0.910892,
		0.473763, -0.877001, 0.080114,
		-0.788550, -0.462959, -0.404793,
		31.766636, 35.734570, 33.047535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712715, 36.466011, 33.773857>,  <32.318619, 36.058643, 33.330891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712715, 36.466011, 33.773857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662613, 36.612003, 34.142879>,  <32.632553, 36.699596, 34.364292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.662613, 36.612003, 34.142879>,  <32.712715, 36.466011, 33.773857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.662613, 36.612003, 34.142879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241948, -0.890563, 0.385173,
		0.962171, 0.271455, 0.023243,
		-0.125256, 0.364979, 0.922552,
		32.625034, 36.721497, 34.419643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.285824, 36.108700, 34.138187>,  <32.712715, 36.466011, 33.773857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.285824, 36.108700, 34.138187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007473, 36.212788, 34.405930>,  <32.840462, 36.275242, 34.566574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.007473, 36.212788, 34.405930>,  <33.285824, 36.108700, 34.138187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.007473, 36.212788, 34.405930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240070, -0.794136, 0.558313,
		0.676843, 0.549212, 0.490153,
		-0.695881, 0.260219, 0.669355,
		32.798710, 36.290852, 34.606735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460018, 35.903843, 34.842438>,  <33.285824, 36.108700, 34.138187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460018, 35.903843, 34.842438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079525, 36.001556, 34.917789>,  <32.851231, 36.060184, 34.963001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.079525, 36.001556, 34.917789>,  <33.460018, 35.903843, 34.842438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.079525, 36.001556, 34.917789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055782, -0.736805, 0.673800,
		0.303394, 0.630432, 0.714499,
		-0.951231, 0.244283, 0.188375,
		32.794155, 36.074841, 34.974300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406265, 35.970146, 35.547642>,  <33.460018, 35.903843, 34.842438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406265, 35.970146, 35.547642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073391, 35.826740, 35.378441>,  <32.873665, 35.740696, 35.276920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.073391, 35.826740, 35.378441>,  <33.406265, 35.970146, 35.547642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.073391, 35.826740, 35.378441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065516, -0.693946, 0.717040,
		-0.550612, 0.624425, 0.554004,
		-0.832186, -0.358515, -0.423005,
		32.823734, 35.719185, 35.251541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.013775, 36.572109, 35.779156>,  <33.406265, 35.970146, 35.547642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.013775, 36.572109, 35.779156> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216568, 36.428864, 36.092773>,  <33.338242, 36.342915, 36.280945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.216568, 36.428864, 36.092773>,  <33.013775, 36.572109, 35.779156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.216568, 36.428864, 36.092773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777662, 0.582355, -0.236862,
		-0.371768, 0.729806, 0.573735,
		0.506981, -0.358115, 0.784043,
		33.368664, 36.321430, 36.327988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.355320, 37.148426, 35.868011>,  <33.013775, 36.572109, 35.779156>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.355320, 37.148426, 35.868011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527790, 36.866199, 36.092960>,  <33.631271, 36.696865, 36.227932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.527790, 36.866199, 36.092960>,  <33.355320, 37.148426, 35.868011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.527790, 36.866199, 36.092960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866669, 0.497224, -0.040660,
		-0.250938, 0.504925, 0.825882,
		0.431178, -0.705563, 0.562376,
		33.657143, 36.654530, 36.261673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.774200, 37.447659, 36.345943>,  <33.355320, 37.148426, 35.868011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.774200, 37.447659, 36.345943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942558, 37.086639, 36.309597>,  <34.043571, 36.870029, 36.287788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.942558, 37.086639, 36.309597>,  <33.774200, 37.447659, 36.345943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.942558, 37.086639, 36.309597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907038, 0.417490, 0.054625,
		-0.011367, -0.105406, 0.994364,
		0.420895, -0.902547, -0.090862,
		34.068829, 36.815876, 36.282337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217152, 37.169254, 36.987659>,  <33.774200, 37.447659, 36.345943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217152, 37.169254, 36.987659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312279, 37.071575, 36.611614>,  <34.369354, 37.012970, 36.385986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.312279, 37.071575, 36.611614>,  <34.217152, 37.169254, 36.987659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.312279, 37.071575, 36.611614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.937499, 0.310852, 0.156416,
		0.254040, -0.918554, 0.302858,
		0.237820, -0.244193, -0.940112,
		34.383625, 36.998318, 36.329582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997833, 36.934017, 36.882008>,  <34.217152, 37.169254, 36.987659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997833, 36.934017, 36.882008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868172, 37.059872, 36.525150>,  <34.790375, 37.135384, 36.311035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.868172, 37.059872, 36.525150>,  <34.997833, 36.934017, 36.882008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.868172, 37.059872, 36.525150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904846, 0.378270, -0.195362,
		0.276003, -0.870582, -0.407319,
		-0.324155, 0.314640, -0.892146,
		34.770924, 37.154263, 36.257507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.340412, 36.285561, 37.284214>,  <34.997833, 36.934017, 36.882008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.340412, 36.285561, 37.284214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635769, 36.533684, 37.178387>,  <35.812984, 36.682556, 37.114891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.635769, 36.533684, 37.178387>,  <35.340412, 36.285561, 37.284214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.635769, 36.533684, 37.178387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406736, -0.722574, -0.558975,
		-0.537906, 0.305133, -0.785844,
		0.738392, 0.620307, -0.264568,
		35.857288, 36.719776, 37.099014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.420124, 35.989231, 36.734722>,  <35.340412, 36.285561, 37.284214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.420124, 35.989231, 36.734722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737633, 36.227474, 36.784000>,  <35.928139, 36.370422, 36.813568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737633, 36.227474, 36.784000>,  <35.420124, 35.989231, 36.734722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737633, 36.227474, 36.784000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556843, -0.630179, -0.541110,
		-0.244656, 0.498117, -0.831879,
		0.793769, 0.595612, 0.123196,
		35.975765, 36.406158, 36.820961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838970, 35.816654, 36.122147>,  <35.420124, 35.989231, 36.734722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838970, 35.816654, 36.122147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067905, 36.009205, 36.387688>,  <36.205265, 36.124737, 36.547012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.067905, 36.009205, 36.387688>,  <35.838970, 35.816654, 36.122147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.067905, 36.009205, 36.387688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800974, -0.501640, -0.326801,
		0.175701, 0.718771, -0.672679,
		0.572337, 0.481379, 0.663855,
		36.239605, 36.153618, 36.586845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.468700, 36.107101, 35.765282>,  <35.838970, 35.816654, 36.122147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.468700, 36.107101, 35.765282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528561, 36.021332, 36.151367>,  <36.564476, 35.969872, 36.383018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.528561, 36.021332, 36.151367>,  <36.468700, 36.107101, 35.765282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.528561, 36.021332, 36.151367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819583, -0.519159, -0.242400,
		0.553072, 0.827344, 0.098044,
		0.149648, -0.214420, 0.965210,
		36.573456, 35.957005, 36.440929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.208122, 36.169201, 35.878452>,  <36.468700, 36.107101, 35.765282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.208122, 36.169201, 35.878452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052994, 35.918453, 36.148746>,  <36.959915, 35.768005, 36.310925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.052994, 35.918453, 36.148746>,  <37.208122, 36.169201, 35.878452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.052994, 35.918453, 36.148746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702966, -0.675341, -0.223055,
		0.596182, 0.388516, 0.702582,
		-0.387822, -0.626873, 0.675740,
		36.936646, 35.730392, 36.351467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.805855, 35.944977, 36.247597>,  <37.208122, 36.169201, 35.878452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.805855, 35.944977, 36.247597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507999, 35.684391, 36.305706>,  <37.329285, 35.528038, 36.340572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507999, 35.684391, 36.305706>,  <37.805855, 35.944977, 36.247597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507999, 35.684391, 36.305706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589911, -0.744170, -0.313393,
		0.312269, -0.147669, 0.938447,
		-0.744642, -0.651463, 0.145270,
		37.284607, 35.488953, 36.349285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158401, 35.335606, 36.381626>,  <37.805855, 35.944977, 36.247597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158401, 35.335606, 36.381626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779747, 35.220264, 36.324032>,  <37.552555, 35.151062, 36.289474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.779747, 35.220264, 36.324032>,  <38.158401, 35.335606, 36.381626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.779747, 35.220264, 36.324032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321462, -0.812467, -0.486373,
		0.023260, -0.506706, 0.861805,
		-0.946636, -0.288351, -0.143989,
		37.495754, 35.133759, 36.280834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055717, 34.595879, 36.627392>,  <38.158401, 35.335606, 36.381626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055717, 34.595879, 36.627392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749290, 34.665287, 36.379837>,  <37.565434, 34.706932, 36.231304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.749290, 34.665287, 36.379837>,  <38.055717, 34.595879, 36.627392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.749290, 34.665287, 36.379837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188709, -0.859715, -0.474635,
		-0.614429, -0.480394, 0.625858,
		-0.766072, 0.173525, -0.618889,
		37.519470, 34.717346, 36.194172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574654, 34.106285, 36.566647>,  <38.055717, 34.595879, 36.627392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574654, 34.106285, 36.566647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576828, 34.272388, 36.202774>,  <37.578133, 34.372051, 35.984451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.576828, 34.272388, 36.202774>,  <37.574654, 34.106285, 36.566647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.576828, 34.272388, 36.202774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263551, -0.878131, -0.399282,
		-0.964630, -0.237577, -0.114218,
		0.005438, 0.415262, -0.909686,
		37.578461, 34.396969, 35.929867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019993, 33.869148, 36.106346>,  <37.574654, 34.106285, 36.566647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019993, 33.869148, 36.106346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355572, 33.965572, 35.911182>,  <37.556919, 34.023426, 35.794083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355572, 33.965572, 35.911182>,  <37.019993, 33.869148, 36.106346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355572, 33.965572, 35.911182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270219, -0.962736, -0.011031,
		-0.472389, -0.122589, -0.872823,
		0.838946, 0.241064, -0.487912,
		37.607254, 34.037891, 35.764809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.045616, 33.547916, 35.441795>,  <37.019993, 33.869148, 36.106346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.045616, 33.547916, 35.441795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379219, 33.613922, 35.652393>,  <37.579380, 33.653526, 35.778751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.379219, 33.613922, 35.652393>,  <37.045616, 33.547916, 35.441795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.379219, 33.613922, 35.652393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152262, -0.986009, 0.067839,
		0.530322, 0.023587, -0.847468,
		0.834011, 0.165014, 0.526494,
		37.629421, 33.663425, 35.810341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.560268, 34.029747, 35.565163>,  <37.045616, 33.547916, 35.441795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.560268, 34.029747, 35.565163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917744, 34.176624, 35.668308>,  <37.132229, 34.264751, 35.730198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.917744, 34.176624, 35.668308>,  <36.560268, 34.029747, 35.565163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917744, 34.176624, 35.668308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427912, 0.524605, 0.735990,
		0.134973, -0.768087, 0.625959,
		0.893685, 0.367193, 0.257866,
		37.185848, 34.286781, 35.745667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388939, 34.496758, 36.097523>,  <36.560268, 34.029747, 35.565163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388939, 34.496758, 36.097523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718563, 34.689213, 36.217144>,  <36.916336, 34.804688, 36.288918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.718563, 34.689213, 36.217144>,  <36.388939, 34.496758, 36.097523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.718563, 34.689213, 36.217144> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566468, 0.705959, 0.425130,
		-0.006573, -0.519737, 0.854302,
		0.824057, 0.481140, 0.299055,
		36.965782, 34.833553, 36.306862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.300419, 34.745323, 36.792881>,  <36.388939, 34.496758, 36.097523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.300419, 34.745323, 36.792881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610947, 34.969082, 36.676678>,  <36.797264, 35.103336, 36.606956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.610947, 34.969082, 36.676678>,  <36.300419, 34.745323, 36.792881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610947, 34.969082, 36.676678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360778, 0.772254, 0.522937,
		0.516880, -0.301156, 0.801336,
		0.776321, 0.559400, -0.290512,
		36.843842, 35.136902, 36.589523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.667122, 35.025169, 37.384647>,  <36.300419, 34.745323, 36.792881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.667122, 35.025169, 37.384647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730030, 35.252453, 37.061558>,  <36.767776, 35.388821, 36.867706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.730030, 35.252453, 37.061558>,  <36.667122, 35.025169, 37.384647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730030, 35.252453, 37.061558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433045, 0.774747, 0.460692,
		0.887546, 0.277327, 0.367902,
		0.157269, 0.568204, -0.807719,
		36.777210, 35.422913, 36.819241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.801945, 35.685932, 37.671715>,  <36.667122, 35.025169, 37.384647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.801945, 35.685932, 37.671715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715218, 35.745029, 37.285728>,  <36.663181, 35.780487, 37.054134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.715218, 35.745029, 37.285728>,  <36.801945, 35.685932, 37.671715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.715218, 35.745029, 37.285728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331438, 0.918626, 0.215116,
		0.918226, 0.366468, -0.150206,
		-0.216816, 0.147741, -0.964968,
		36.650173, 35.789352, 36.996239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.083031, 36.365791, 37.470066>,  <36.801945, 35.685932, 37.671715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.083031, 36.365791, 37.470066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789337, 36.298092, 37.207081>,  <36.613121, 36.257473, 37.049290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.789337, 36.298092, 37.207081>,  <37.083031, 36.365791, 37.470066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.789337, 36.298092, 37.207081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363466, 0.915944, 0.170116,
		0.573409, 0.363871, -0.734030,
		-0.734231, -0.169249, -0.657465,
		36.569069, 36.247318, 37.009842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093117, 36.968380, 37.039066>,  <37.083031, 36.365791, 37.470066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093117, 36.968380, 37.039066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733265, 36.797443, 37.003181>,  <36.517353, 36.694881, 36.981651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.733265, 36.797443, 37.003181>,  <37.093117, 36.968380, 37.039066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733265, 36.797443, 37.003181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432521, 0.900311, 0.048642,
		0.059979, 0.082560, -0.994779,
		-0.899626, -0.427346, -0.089709,
		36.463375, 36.669239, 36.976269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.736183, 37.494675, 36.597588>,  <37.093117, 36.968380, 37.039066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.736183, 37.494675, 36.597588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465141, 37.258011, 36.772308>,  <36.302517, 37.116013, 36.877140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.465141, 37.258011, 36.772308>,  <36.736183, 37.494675, 36.597588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.465141, 37.258011, 36.772308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594093, 0.790459, 0.149094,
		-0.433483, -0.158472, -0.887118,
		-0.677603, -0.591661, 0.436798,
		36.261860, 37.080513, 36.903347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.931015, 38.051998, 36.136906>,  <36.736183, 37.494675, 36.597588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.931015, 38.051998, 36.136906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176884, 38.367508, 36.138691>,  <37.324406, 38.556812, 36.139763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176884, 38.367508, 36.138691>,  <36.931015, 38.051998, 36.136906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176884, 38.367508, 36.138691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134636, -0.110486, 0.984716,
		0.777209, -0.604676, -0.174110,
		0.614670, 0.788771, 0.004459,
		37.361286, 38.604141, 36.140030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.506824, 37.769566, 36.302864>,  <36.931015, 38.051998, 36.136906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.506824, 37.769566, 36.302864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478134, 38.150146, 36.422592>,  <37.460922, 38.378494, 36.494431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.478134, 38.150146, 36.422592>,  <37.506824, 37.769566, 36.302864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.478134, 38.150146, 36.422592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121659, -0.289507, 0.949413,
		0.989977, 0.104509, -0.094989,
		-0.071722, 0.951454, 0.299319,
		37.456619, 38.435581, 36.512386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.023071, 37.913868, 36.809498>,  <37.506824, 37.769566, 36.302864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.023071, 37.913868, 36.809498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708599, 38.149181, 36.885227>,  <37.519917, 38.290371, 36.930664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.708599, 38.149181, 36.885227>,  <38.023071, 37.913868, 36.809498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.708599, 38.149181, 36.885227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182438, -0.071771, 0.980594,
		0.590454, 0.805465, -0.050900,
		-0.786181, 0.588282, 0.189325,
		37.472744, 38.325665, 36.942024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.498539, 38.592796, 36.906128>,  <38.023071, 37.913868, 36.809498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.498539, 38.592796, 36.906128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321747, 38.896454, 36.714981>,  <38.215672, 39.078648, 36.600292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.321747, 38.896454, 36.714981>,  <38.498539, 38.592796, 36.906128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.321747, 38.896454, 36.714981> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635311, -0.111178, -0.764211,
		-0.633272, -0.641362, -0.433152,
		-0.441980, 0.759140, -0.477870,
		38.189152, 39.124195, 36.571621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285660, 38.414639, 36.305553>,  <38.498539, 38.592796, 36.906128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285660, 38.414639, 36.305553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367249, 38.806080, 36.316349>,  <38.416203, 39.040947, 36.322826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.367249, 38.806080, 36.316349>,  <38.285660, 38.414639, 36.305553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.367249, 38.806080, 36.316349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630966, -0.110334, -0.767924,
		-0.748518, 0.173660, -0.639972,
		0.203968, 0.978606, 0.026986,
		38.428440, 39.099663, 36.324444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.777355, 38.636177, 35.771496>,  <38.285660, 38.414639, 36.305553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.777355, 38.636177, 35.771496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136158, 38.480648, 35.687408>,  <39.351440, 38.387329, 35.636955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136158, 38.480648, 35.687408>,  <38.777355, 38.636177, 35.771496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136158, 38.480648, 35.687408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427695, 0.883576, 0.190710,
		0.111593, -0.260978, 0.958873,
		0.897008, -0.388824, -0.210220,
		39.405262, 38.364002, 35.624344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237610, 38.748455, 36.281944>,  <38.777355, 38.636177, 35.771496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237610, 38.748455, 36.281944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465134, 38.709812, 35.955235>,  <39.601646, 38.686626, 35.759209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.465134, 38.709812, 35.955235>,  <39.237610, 38.748455, 36.281944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.465134, 38.709812, 35.955235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410094, 0.894139, 0.179828,
		0.712940, -0.437243, 0.548211,
		0.568806, -0.096611, -0.816778,
		39.635777, 38.680828, 35.710201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.921448, 38.681812, 36.493526>,  <39.237610, 38.748455, 36.281944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.921448, 38.681812, 36.493526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879227, 38.847431, 36.131882>,  <39.853893, 38.946804, 35.914894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.879227, 38.847431, 36.131882>,  <39.921448, 38.681812, 36.493526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.879227, 38.847431, 36.131882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510617, 0.802746, 0.308009,
		0.853304, -0.429145, -0.296153,
		-0.105555, 0.414046, -0.904115,
		39.847561, 38.971645, 35.860649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.495270, 39.057621, 36.322689>,  <39.921448, 38.681812, 36.493526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.495270, 39.057621, 36.322689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261547, 39.274975, 36.081585>,  <40.121315, 39.405388, 35.936924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.261547, 39.274975, 36.081585>,  <40.495270, 39.057621, 36.322689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.261547, 39.274975, 36.081585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580484, 0.798896, 0.157492,
		0.567122, -0.257870, -0.782225,
		-0.584304, 0.543386, -0.602761,
		40.086258, 39.437992, 35.900757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.131107, 38.821274, 36.031925>,  <40.495270, 39.057621, 36.322689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.131107, 38.821274, 36.031925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905029, 38.494499, 35.986031>,  <40.769382, 38.298435, 35.958496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.905029, 38.494499, 35.986031>,  <41.131107, 38.821274, 36.031925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.905029, 38.494499, 35.986031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534270, -0.256517, -0.805453,
		0.628574, -0.516539, 0.581449,
		-0.565199, -0.816937, -0.114732,
		40.735470, 38.249416, 35.951611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.628704, 38.396236, 35.789059>,  <41.131107, 38.821274, 36.031925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.628704, 38.396236, 35.789059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266312, 38.265022, 35.682030>,  <41.048878, 38.186295, 35.617813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.266312, 38.265022, 35.682030>,  <41.628704, 38.396236, 35.789059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.266312, 38.265022, 35.682030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350323, -0.226132, -0.908921,
		0.237651, -0.917201, 0.319789,
		-0.905978, -0.328035, -0.267576,
		40.994518, 38.166611, 35.601757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554253, 37.636177, 35.618298>,  <41.628704, 38.396236, 35.789059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554253, 37.636177, 35.618298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299732, 37.859955, 35.405830>,  <41.147018, 37.994221, 35.278351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.299732, 37.859955, 35.405830>,  <41.554253, 37.636177, 35.618298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.299732, 37.859955, 35.405830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349414, -0.404862, -0.844983,
		-0.687774, -0.723261, 0.062135,
		-0.636299, 0.559447, -0.531171,
		41.108841, 38.027790, 35.246479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.174809, 37.246861, 35.135899>,  <41.554253, 37.636177, 35.618298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.174809, 37.246861, 35.135899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203236, 37.615303, 34.982796>,  <41.220291, 37.836369, 34.890934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.203236, 37.615303, 34.982796>,  <41.174809, 37.246861, 35.135899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203236, 37.615303, 34.982796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501339, -0.364727, -0.784623,
		-0.862327, -0.136127, -0.487711,
		0.071072, 0.921110, -0.382760,
		41.224556, 37.891636, 34.867970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.079170, 37.297707, 34.403275>,  <41.174809, 37.246861, 35.135899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.079170, 37.297707, 34.403275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298950, 37.622044, 34.483906>,  <41.430817, 37.816647, 34.532284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.298950, 37.622044, 34.483906>,  <41.079170, 37.297707, 34.403275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.298950, 37.622044, 34.483906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596545, -0.211780, -0.774134,
		-0.585014, 0.545597, -0.600069,
		0.549448, 0.810847, 0.201578,
		41.463783, 37.865299, 34.544380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.611294, 36.848122, 34.640530>,  <41.079170, 37.297707, 34.403275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.611294, 36.848122, 34.640530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823124, 36.530643, 34.520798>,  <41.950222, 36.340157, 34.448959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.823124, 36.530643, 34.520798>,  <41.611294, 36.848122, 34.640530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.823124, 36.530643, 34.520798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782829, 0.321386, 0.532813,
		-0.326689, -0.516491, 0.791525,
		0.529579, -0.793692, -0.299331,
		41.981998, 36.292538, 34.431000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004097, 36.596783, 35.253235>,  <41.611294, 36.848122, 34.640530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004097, 36.596783, 35.253235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165779, 36.445610, 34.920059>,  <42.262787, 36.354908, 34.720154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.165779, 36.445610, 34.920059>,  <42.004097, 36.596783, 35.253235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.165779, 36.445610, 34.920059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.888744, 0.377556, 0.259974,
		0.216229, -0.845352, 0.488493,
		0.404203, -0.377931, -0.832940,
		42.287041, 36.332230, 34.670177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.628998, 36.186157, 35.284100>,  <42.004097, 36.596783, 35.253235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.628998, 36.186157, 35.284100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631042, 36.393349, 34.941948>,  <42.632271, 36.517662, 34.736656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.631042, 36.393349, 34.941948>,  <42.628998, 36.186157, 35.284100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.631042, 36.393349, 34.941948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889344, 0.388744, 0.240721,
		0.457211, -0.761957, -0.458671,
		0.005113, 0.517977, -0.855380,
		42.632576, 36.548740, 34.685333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.834747, 35.724415, 34.880280>,  <42.628998, 36.186157, 35.284100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.834747, 35.724415, 34.880280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171295, 35.708908, 35.095909>,  <43.373222, 35.699604, 35.225288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.171295, 35.708908, 35.095909>,  <42.834747, 35.724415, 34.880280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.171295, 35.708908, 35.095909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466746, -0.555001, 0.688565,
		0.272492, -0.830946, -0.485054,
		0.841366, -0.038769, 0.539074,
		43.423706, 35.697277, 35.257629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.991882, 35.040352, 34.974316>,  <42.834747, 35.724415, 34.880280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.991882, 35.040352, 34.974316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124649, 35.271065, 35.272888>,  <43.204308, 35.409492, 35.452030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.124649, 35.271065, 35.272888>,  <42.991882, 35.040352, 34.974316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.124649, 35.271065, 35.272888> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488094, -0.572117, 0.659125,
		0.807216, -0.583101, 0.091629,
		0.331914, 0.576780, 0.746430,
		43.224224, 35.444099, 35.496819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.530594, 34.651180, 35.555855>,  <42.991882, 35.040352, 34.974316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.530594, 34.651180, 35.555855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308483, 34.943462, 35.714722>,  <43.175217, 35.118832, 35.810043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.308483, 34.943462, 35.714722>,  <43.530594, 34.651180, 35.555855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.308483, 34.943462, 35.714722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375943, -0.646510, 0.663846,
		0.741847, 0.219304, 0.633694,
		-0.555274, 0.730705, 0.397166,
		43.141899, 35.162674, 35.833870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.027805, 34.193668, 35.816872>,  <43.530594, 34.651180, 35.555855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.027805, 34.193668, 35.816872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670029, 34.024998, 35.876423>,  <43.455364, 33.923794, 35.912155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.670029, 34.024998, 35.876423>,  <44.027805, 34.193668, 35.816872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.670029, 34.024998, 35.876423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180834, -0.645552, -0.741998,
		0.408991, -0.636751, 0.653662,
		-0.894441, -0.421675, 0.148879,
		43.401695, 33.898495, 35.921085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.169365, 33.520054, 35.999096>,  <44.027805, 34.193668, 35.816872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.169365, 33.520054, 35.999096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798500, 33.531464, 35.849670>,  <43.575981, 33.538311, 35.760017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.798500, 33.531464, 35.849670>,  <44.169365, 33.520054, 35.999096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.798500, 33.531464, 35.849670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278394, -0.614801, -0.737914,
		-0.250716, -0.788166, 0.562081,
		-0.927167, 0.028527, -0.373561,
		43.520351, 33.540020, 35.737602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.177036, 33.710964, 35.268730>,  <44.169365, 33.520054, 35.999096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.177036, 33.710964, 35.268730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380253, 33.948952, 35.019600>,  <44.502182, 34.091743, 34.870121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.380253, 33.948952, 35.019600>,  <44.177036, 33.710964, 35.268730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.380253, 33.948952, 35.019600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753351, 0.043605, 0.656172,
		0.417559, -0.802566, -0.426066,
		0.508042, 0.594967, -0.622821,
		44.532665, 34.127441, 34.832752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.922764, 33.509293, 34.946499>,  <44.177036, 33.710964, 35.268730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.922764, 33.509293, 34.946499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846100, 33.893406, 35.027618>,  <44.800102, 34.123875, 35.076290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.846100, 33.893406, 35.027618>,  <44.922764, 33.509293, 34.946499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.846100, 33.893406, 35.027618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842748, 0.055118, 0.535480,
		0.503033, 0.273539, -0.819838,
		-0.191662, 0.960280, 0.202798,
		44.788601, 34.181492, 35.088459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.474434, 33.904819, 34.685265>,  <44.922764, 33.509293, 34.946499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.474434, 33.904819, 34.685265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297215, 34.074501, 35.001179>,  <45.190884, 34.176311, 35.190727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.297215, 34.074501, 35.001179>,  <45.474434, 33.904819, 34.685265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.297215, 34.074501, 35.001179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855318, -0.063921, 0.514145,
		0.268587, 0.903307, -0.334511,
		-0.443048, 0.424206, 0.789783,
		45.164299, 34.201763, 35.238113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.736111, 34.453560, 34.901917>,  <45.474434, 33.904819, 34.685265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.736111, 34.453560, 34.901917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574192, 34.285065, 35.226559>,  <45.477043, 34.183968, 35.421345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.574192, 34.285065, 35.226559>,  <45.736111, 34.453560, 34.901917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.574192, 34.285065, 35.226559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.896751, -0.009293, 0.442438,
		-0.178830, 0.906902, 0.381509,
		-0.404793, -0.421240, 0.811603,
		45.452755, 34.158691, 35.470039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.774052, 34.908817, 35.570148>,  <45.736111, 34.453560, 34.901917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.774052, 34.908817, 35.570148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763145, 34.511410, 35.614285>,  <45.756603, 34.272964, 35.640766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.763145, 34.511410, 35.614285>,  <45.774052, 34.908817, 35.570148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.763145, 34.511410, 35.614285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927610, 0.015990, 0.373208,
		-0.372554, 0.112528, 0.921163,
		-0.027267, -0.993520, 0.110340,
		45.754967, 34.213352, 35.647385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.870892, 34.777344, 36.292030>,  <45.774052, 34.908817, 35.570148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.870892, 34.777344, 36.292030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000542, 34.491440, 36.044140>,  <46.078331, 34.319897, 35.895405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.000542, 34.491440, 36.044140>,  <45.870892, 34.777344, 36.292030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.000542, 34.491440, 36.044140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914136, 0.068011, 0.399661,
		-0.243513, -0.696056, 0.675431,
		0.324123, -0.714759, -0.619729,
		46.097778, 34.277012, 35.858223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.301704, 34.294376, 36.583263>,  <45.870892, 34.777344, 36.292030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.301704, 34.294376, 36.583263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.420326, 34.283195, 36.201420>,  <46.491501, 34.276485, 35.972313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.420326, 34.283195, 36.201420>,  <46.301704, 34.294376, 36.583263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.420326, 34.283195, 36.201420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.951077, 0.099338, 0.292548,
		0.086651, -0.994661, 0.056044,
		0.296553, -0.027953, -0.954607,
		46.509293, 34.274811, 35.915039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.832527, 33.771687, 36.500885>,  <46.301704, 34.294376, 36.583263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.832527, 33.771687, 36.500885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849663, 34.055950, 36.219990>,  <46.859943, 34.226509, 36.051453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.849663, 34.055950, 36.219990>,  <46.832527, 33.771687, 36.500885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.849663, 34.055950, 36.219990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992833, 0.048210, 0.109356,
		0.111569, -0.701887, -0.703496,
		0.042840, 0.710655, -0.702235,
		46.862514, 34.269146, 36.009319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.248920, 33.578857, 35.981518>,  <46.832527, 33.771687, 36.500885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.248920, 33.578857, 35.981518> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.210526, 33.969131, 36.060337>,  <47.187489, 34.203297, 36.107628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.210526, 33.969131, 36.060337>,  <47.248920, 33.578857, 35.981518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.210526, 33.969131, 36.060337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994568, 0.086007, 0.058636,
		0.040262, 0.201605, -0.978639,
		-0.095991, 0.975683, 0.197047,
		47.181728, 34.261837, 36.119450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.786392, 34.005150, 35.694653>,  <47.248920, 33.578857, 35.981518>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.786392, 34.005150, 35.694653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638699, 34.184334, 36.020351>,  <47.550083, 34.291843, 36.215771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.638699, 34.184334, 36.020351>,  <47.786392, 34.005150, 35.694653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.638699, 34.184334, 36.020351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.898471, -0.051867, 0.435959,
		0.237523, 0.892550, -0.383325,
		-0.369233, 0.447956, 0.814249,
		47.527927, 34.318722, 36.264626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.068447, 33.697044, 35.079239>,  <47.786392, 34.005150, 35.694653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.068447, 33.697044, 35.079239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777645, 33.889175, 34.882977>,  <47.603165, 34.004456, 34.765217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.777645, 33.889175, 34.882977>,  <48.068447, 33.697044, 35.079239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.777645, 33.889175, 34.882977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.014818, 0.703448, 0.710592,
		0.686472, 0.523875, -0.504293,
		-0.727006, 0.480328, -0.490660,
		47.559544, 34.033276, 34.735779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.178604, 34.385700, 34.917809>,  <48.068447, 33.697044, 35.079239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.178604, 34.385700, 34.917809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780777, 34.411270, 34.950668>,  <47.542080, 34.426613, 34.970383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.780777, 34.411270, 34.950668>,  <48.178604, 34.385700, 34.917809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.780777, 34.411270, 34.950668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102974, 0.719577, 0.686736,
		-0.015209, 0.691464, -0.722251,
		-0.994568, 0.063928, 0.082147,
		47.482407, 34.430450, 34.975311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.909550, 35.011894, 34.739330>,  <48.178604, 34.385700, 34.917809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.909550, 35.011894, 34.739330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690594, 34.830227, 35.020500>,  <47.559219, 34.721226, 35.189201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.690594, 34.830227, 35.020500>,  <47.909550, 35.011894, 34.739330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.690594, 34.830227, 35.020500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230469, 0.725645, 0.648324,
		-0.804519, 0.516886, -0.292537,
		-0.547387, -0.454169, 0.702921,
		47.526379, 34.693977, 35.231377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.506592, 33.526932, 23.358866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.107042, 33.543854, 23.350296>,  <29.867311, 33.554005, 23.345154>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.107042, 33.543854, 23.350296>,  <30.506592, 33.526932, 23.358866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107042, 33.543854, 23.350296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015072, 0.145102, 0.989302,
		0.044958, 0.988512, -0.144301,
		-0.998875, 0.042302, -0.021422,
		29.807381, 33.556545, 23.343870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.250330, 34.143299, 23.740202>,  <30.506592, 33.526932, 23.358866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.250330, 34.143299, 23.740202> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.943703, 33.886436, 23.741636>,  <29.759727, 33.732319, 23.742496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.943703, 33.886436, 23.741636>,  <30.250330, 34.143299, 23.740202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.943703, 33.886436, 23.741636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120388, 0.149196, 0.981452,
		-0.630779, 0.751916, -0.191677,
		-0.766567, -0.642154, 0.003588,
		29.713732, 33.693790, 23.742712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.853558, 34.405041, 24.343708>,  <30.250330, 34.143299, 23.740202>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.853558, 34.405041, 24.343708> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.714230, 34.038708, 24.263783>,  <29.630632, 33.818909, 24.215826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.714230, 34.038708, 24.263783>,  <29.853558, 34.405041, 24.343708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.714230, 34.038708, 24.263783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233757, -0.121564, 0.964666,
		-0.907761, 0.382723, -0.171738,
		-0.348322, -0.915831, -0.199815,
		29.609734, 33.763958, 24.203838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.130545, 34.398121, 24.526630>,  <29.853558, 34.405041, 24.343708>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.130545, 34.398121, 24.526630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.261494, 34.020386, 24.539644>,  <29.340063, 33.793747, 24.547453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.261494, 34.020386, 24.539644>,  <29.130545, 34.398121, 24.526630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.261494, 34.020386, 24.539644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257656, -0.056091, 0.964607,
		-0.909087, -0.324169, -0.261677,
		0.327374, -0.944335, 0.032532,
		29.359705, 33.737083, 24.549404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.664824, 34.136284, 24.947018>,  <29.130545, 34.398121, 24.526630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.664824, 34.136284, 24.947018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.932817, 33.839344, 24.944889>,  <29.093615, 33.661179, 24.943613>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.932817, 33.839344, 24.944889>,  <28.664824, 34.136284, 24.947018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.932817, 33.839344, 24.944889> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225964, -0.210753, 0.951064,
		-0.707148, -0.635998, -0.308947,
		0.669986, -0.742354, -0.005320,
		29.133814, 33.616638, 24.943293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.414289, 33.655472, 25.333258>,  <28.664824, 34.136284, 24.947018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.414289, 33.655472, 25.333258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.797602, 33.541164, 25.330967>,  <29.027590, 33.472580, 25.329592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.797602, 33.541164, 25.330967>,  <28.414289, 33.655472, 25.333258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.797602, 33.541164, 25.330967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057609, -0.212736, 0.975410,
		-0.279963, -0.934387, -0.220324,
		0.958281, -0.285772, -0.005729,
		29.085087, 33.455433, 25.329248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.361670, 33.059986, 25.725513>,  <28.414289, 33.655472, 25.333258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.361670, 33.059986, 25.725513> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.734255, 33.205143, 25.715025>,  <28.957806, 33.292236, 25.708731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.734255, 33.205143, 25.715025>,  <28.361670, 33.059986, 25.725513>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.734255, 33.205143, 25.715025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007915, 0.092265, 0.995703,
		0.363752, -0.927252, 0.088814,
		0.931462, 0.362892, -0.026223,
		29.013693, 33.314011, 25.707159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749001, 32.646240, 26.322470>,  <28.361670, 33.059986, 25.725513>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749001, 32.646240, 26.322470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.919167, 32.998753, 26.240129>,  <29.021265, 33.210258, 26.190725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.919167, 32.998753, 26.240129>,  <28.749001, 32.646240, 26.322470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.919167, 32.998753, 26.240129> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136709, 0.162273, 0.977230,
		0.894614, -0.443868, -0.051445,
		0.425413, 0.881277, -0.205853,
		29.046791, 33.263134, 26.178373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.207287, 32.739285, 26.856180>,  <28.749001, 32.646240, 26.322470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.207287, 32.739285, 26.856180> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196407, 33.107834, 26.701090>,  <29.189880, 33.328964, 26.608036>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.196407, 33.107834, 26.701090>,  <29.207287, 32.739285, 26.856180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196407, 33.107834, 26.701090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265109, 0.380630, 0.885911,
		0.963835, -0.078693, -0.254617,
		-0.027200, 0.921373, -0.387727,
		29.188248, 33.384247, 26.584772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.840269, 33.078739, 27.157331>,  <29.207287, 32.739285, 26.856180>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.840269, 33.078739, 27.157331> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.583780, 33.369366, 27.058592>,  <29.429888, 33.543743, 26.999348>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.583780, 33.369366, 27.058592>,  <29.840269, 33.078739, 27.157331>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.583780, 33.369366, 27.058592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222619, 0.483990, 0.846282,
		0.734355, 0.487700, -0.472093,
		-0.641220, 0.726569, -0.246850,
		29.391415, 33.587337, 26.984537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.172449, 33.678268, 27.328251>,  <29.840269, 33.078739, 27.157331>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.172449, 33.678268, 27.328251> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.779621, 33.753666, 27.329041>,  <29.543924, 33.798904, 27.329515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.779621, 33.753666, 27.329041>,  <30.172449, 33.678268, 27.328251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.779621, 33.753666, 27.329041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095534, 0.488648, 0.867235,
		0.162503, 0.851876, -0.497896,
		-0.982072, 0.188494, 0.001976,
		29.484999, 33.810215, 27.329634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.137869, 34.378372, 27.610964>,  <30.172449, 33.678268, 27.328251>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.137869, 34.378372, 27.610964> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.765734, 34.249954, 27.681845>,  <29.542452, 34.172901, 27.724373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.765734, 34.249954, 27.681845>,  <30.137869, 34.378372, 27.610964>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.765734, 34.249954, 27.681845> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030593, 0.413596, 0.909946,
		-0.365426, 0.851978, -0.374962,
		-0.930337, -0.321047, 0.177204,
		29.486633, 34.153641, 27.735006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.940994, 34.774876, 28.171854>,  <30.137869, 34.378372, 27.610964>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.940994, 34.774876, 28.171854> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.631647, 34.521767, 28.156330>,  <29.446039, 34.369904, 28.147017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.631647, 34.521767, 28.156330>,  <29.940994, 34.774876, 28.171854>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.631647, 34.521767, 28.156330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341920, 0.364778, 0.866041,
		-0.533849, 0.683037, -0.498464,
		-0.773367, -0.632770, -0.038807,
		29.399637, 34.331936, 28.144688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.308891, 35.105930, 28.355280>,  <29.940994, 34.774876, 28.171854>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.308891, 35.105930, 28.355280> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.265350, 34.719414, 28.448608>,  <29.239225, 34.487503, 28.504606>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.265350, 34.719414, 28.448608>,  <29.308891, 35.105930, 28.355280>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265350, 34.719414, 28.448608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401955, 0.257459, 0.878719,
		-0.909166, 0.001867, -0.416429,
		-0.108854, -0.966287, 0.233323,
		29.232695, 34.429527, 28.518606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.603632, 35.053150, 28.576828>,  <29.308891, 35.105930, 28.355280>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.603632, 35.053150, 28.576828> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.835777, 34.765598, 28.729874>,  <28.975065, 34.593067, 28.821701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.835777, 34.765598, 28.729874>,  <28.603632, 35.053150, 28.576828>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.835777, 34.765598, 28.729874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335728, 0.216845, 0.916660,
		-0.741934, -0.660450, -0.115499,
		0.580362, -0.718877, 0.382616,
		29.009886, 34.549934, 28.844658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.124733, 34.609718, 29.020817>,  <28.603632, 35.053150, 28.576828>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.124733, 34.609718, 29.020817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.492342, 34.504753, 29.138483>,  <28.712908, 34.441772, 29.209082>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.492342, 34.504753, 29.138483>,  <28.124733, 34.609718, 29.020817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.492342, 34.504753, 29.138483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254054, 0.176302, 0.950986,
		-0.301413, -0.948713, 0.095359,
		0.919025, -0.262413, 0.294164,
		28.768049, 34.426029, 29.226732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.041109, 34.113503, 29.471476>,  <28.124733, 34.609718, 29.020817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.041109, 34.113503, 29.471476> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.410685, 34.238468, 29.559778>,  <28.632431, 34.313446, 29.612761>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.410685, 34.238468, 29.559778>,  <28.041109, 34.113503, 29.471476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.410685, 34.238468, 29.559778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189586, -0.127267, 0.973581,
		0.332254, -0.941383, -0.058358,
		0.923940, 0.312413, 0.220758,
		28.687866, 34.332191, 29.626005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235447, 33.892002, 30.213688>,  <28.041109, 34.113503, 29.471476>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235447, 33.892002, 30.213688> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515980, 34.169476, 30.148041>,  <28.684299, 34.335960, 30.108652>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.515980, 34.169476, 30.148041>,  <28.235447, 33.892002, 30.213688>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.515980, 34.169476, 30.148041> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128691, 0.103234, 0.986297,
		0.701124, -0.712840, -0.016870,
		0.701330, 0.693688, -0.164116,
		28.726379, 34.377583, 30.098806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.700499, 33.606602, 30.706612>,  <28.235447, 33.892002, 30.213688>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.700499, 33.606602, 30.706612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.792662, 33.978718, 30.592436>,  <28.847960, 34.201988, 30.523930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<28.792662, 33.978718, 30.592436>,  <28.700499, 33.606602, 30.706612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.792662, 33.978718, 30.592436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246018, 0.228114, 0.942040,
		0.941482, -0.287275, -0.176309,
		0.230406, 0.930289, -0.285440,
		28.861784, 34.257805, 30.506804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.354815, 33.719849, 30.950375>,  <28.700499, 33.606602, 30.706612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.354815, 33.719849, 30.950375> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.191210, 34.083542, 30.919371>,  <29.093046, 34.301758, 30.900768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.191210, 34.083542, 30.919371>,  <29.354815, 33.719849, 30.950375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.191210, 34.083542, 30.919371> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319336, 0.222184, 0.921227,
		0.854829, 0.352042, -0.381226,
		-0.409013, 0.909231, -0.077509,
		29.068506, 34.356312, 30.896118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.848202, 34.205299, 31.347015>,  <29.354815, 33.719849, 30.950375>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.848202, 34.205299, 31.347015> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.512587, 34.415794, 31.291739>,  <29.311218, 34.542091, 31.258572>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.512587, 34.415794, 31.291739>,  <29.848202, 34.205299, 31.347015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.512587, 34.415794, 31.291739> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070901, 0.357580, 0.931187,
		0.539437, 0.771501, -0.337333,
		-0.839036, 0.526234, -0.138192,
		29.260876, 34.573666, 31.250280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449074, 34.421928, 31.092047>,  <29.848202, 34.205299, 31.347015>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449074, 34.421928, 31.092047> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836710, 34.372952, 31.177717>,  <31.069292, 34.343567, 31.229120>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.836710, 34.372952, 31.177717>,  <30.449074, 34.421928, 31.092047>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836710, 34.372952, 31.177717> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211076, -0.037909, -0.976734,
		0.127710, 0.991752, -0.010893,
		0.969091, -0.122440, 0.214176,
		31.127438, 34.336220, 31.241970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769741, 34.900974, 30.718472>,  <30.449074, 34.421928, 31.092047>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769741, 34.900974, 30.718472> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.049717, 34.626644, 30.798204>,  <31.217701, 34.462048, 30.846045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.049717, 34.626644, 30.798204>,  <30.769741, 34.900974, 30.718472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.049717, 34.626644, 30.798204> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186215, -0.094201, -0.977983,
		0.689501, 0.721645, 0.061776,
		0.699937, -0.685824, 0.199333,
		31.259699, 34.420898, 30.858004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.316763, 35.014835, 30.284878>,  <30.769741, 34.900974, 30.718472>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.316763, 35.014835, 30.284878> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.355186, 34.628963, 30.382996>,  <31.378241, 34.397442, 30.441866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.355186, 34.628963, 30.382996>,  <31.316763, 35.014835, 30.284878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.355186, 34.628963, 30.382996> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241735, -0.216447, -0.945893,
		0.965576, 0.150156, 0.212405,
		0.096057, -0.964678, 0.245295,
		31.384003, 34.339561, 30.456583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.984650, 34.806335, 29.984549>,  <31.316763, 35.014835, 30.284878>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.984650, 34.806335, 29.984549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.775942, 34.471565, 30.050652>,  <31.650717, 34.270702, 30.090313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.775942, 34.471565, 30.050652>,  <31.984650, 34.806335, 29.984549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.775942, 34.471565, 30.050652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262956, -0.342070, -0.902132,
		0.811548, -0.427250, 0.398556,
		-0.521771, -0.836926, 0.165258,
		31.619411, 34.220486, 30.100229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.482975, 34.377659, 29.683764>,  <31.984650, 34.806335, 29.984549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.482975, 34.377659, 29.683764> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149876, 34.158150, 29.713095>,  <31.950016, 34.026443, 29.730694>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.149876, 34.158150, 29.713095>,  <32.482975, 34.377659, 29.683764>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149876, 34.158150, 29.713095> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218028, -0.446792, -0.867664,
		0.508915, -0.706557, 0.491713,
		-0.832748, -0.548775, 0.073330,
		31.900051, 33.993519, 29.735094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.689774, 33.713585, 29.674858>,  <32.482975, 34.377659, 29.683764>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.689774, 33.713585, 29.674858> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.307571, 33.718090, 29.556952>,  <32.078251, 33.720791, 29.486208>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.307571, 33.718090, 29.556952>,  <32.689774, 33.713585, 29.674858>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.307571, 33.718090, 29.556952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274540, -0.331545, -0.902610,
		-0.107891, -0.943372, 0.313702,
		-0.955504, 0.011260, -0.294764,
		32.020920, 33.721470, 29.468523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.538822, 33.154915, 29.219419>,  <32.689774, 33.713585, 29.674858>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.538822, 33.154915, 29.219419> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.213543, 33.370384, 29.131296>,  <32.018375, 33.499668, 29.078423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.213543, 33.370384, 29.131296>,  <32.538822, 33.154915, 29.219419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.213543, 33.370384, 29.131296> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075327, -0.277942, -0.957640,
		-0.577093, -0.795345, 0.185445,
		-0.813197, 0.538678, -0.220309,
		31.969584, 33.531986, 29.065203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.159214, 32.721310, 28.812990>,  <32.538822, 33.154915, 29.219419>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.159214, 32.721310, 28.812990> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.006977, 33.080288, 28.723774>,  <31.915634, 33.295673, 28.670244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.006977, 33.080288, 28.723774>,  <32.159214, 32.721310, 28.812990>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006977, 33.080288, 28.723774> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170447, -0.168979, -0.970770,
		-0.908898, -0.407487, -0.088653,
		-0.380595, 0.897441, -0.223040,
		31.892799, 33.349522, 28.656862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.646719, 32.640648, 28.341778>,  <32.159214, 32.721310, 28.812990>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.646719, 32.640648, 28.341778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.793282, 33.007847, 28.281088>,  <31.881218, 33.228168, 28.244675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.793282, 33.007847, 28.281088>,  <31.646719, 32.640648, 28.341778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.793282, 33.007847, 28.281088> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219168, -0.243628, -0.944781,
		-0.904275, 0.312920, -0.290463,
		0.366406, 0.918001, -0.151724,
		31.903204, 33.283249, 28.235571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.417645, 32.770229, 27.675705>,  <31.646719, 32.640648, 28.341778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.417645, 32.770229, 27.675705> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694929, 33.052235, 27.735580>,  <31.861300, 33.221439, 27.771505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.694929, 33.052235, 27.735580>,  <31.417645, 32.770229, 27.675705>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.694929, 33.052235, 27.735580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204573, 0.006674, -0.978828,
		-0.691090, 0.709159, -0.139601,
		0.693213, 0.705017, 0.149687,
		31.902893, 33.263741, 27.780487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.258392, 33.390141, 27.146824>,  <31.417645, 32.770229, 27.675705>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.258392, 33.390141, 27.146824> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.641701, 33.439453, 27.249987>,  <31.871687, 33.469040, 27.311884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.641701, 33.439453, 27.249987>,  <31.258392, 33.390141, 27.146824>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.641701, 33.439453, 27.249987> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262537, -0.022632, -0.964656,
		-0.113085, 0.992114, -0.054053,
		0.958272, 0.123279, 0.257908,
		31.929182, 33.476437, 27.327358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.444586, 34.025486, 26.819706>,  <31.258392, 33.390141, 27.146824>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.444586, 34.025486, 26.819706> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.798470, 33.862446, 26.910170>,  <32.010799, 33.764622, 26.964447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.798470, 33.862446, 26.910170>,  <31.444586, 34.025486, 26.819706>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.798470, 33.862446, 26.910170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325836, 0.193802, -0.925350,
		0.333345, 0.892357, 0.304270,
		0.884710, -0.407603, 0.226159,
		32.063881, 33.740166, 26.978018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031017, 34.458126, 26.605204>,  <31.444586, 34.025486, 26.819706>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031017, 34.458126, 26.605204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.190754, 34.092968, 26.639030>,  <32.286594, 33.873875, 26.659327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.190754, 34.092968, 26.639030>,  <32.031017, 34.458126, 26.605204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.190754, 34.092968, 26.639030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418851, 0.099614, -0.902575,
		0.815531, 0.395856, 0.422146,
		0.399341, -0.912894, 0.084566,
		32.310555, 33.819099, 26.664400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724617, 34.513165, 26.476351>,  <32.031017, 34.458126, 26.605204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724617, 34.513165, 26.476351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628975, 34.136608, 26.381186>,  <32.571590, 33.910675, 26.324087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.628975, 34.136608, 26.381186>,  <32.724617, 34.513165, 26.476351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.628975, 34.136608, 26.381186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336748, 0.149414, -0.929665,
		0.910729, -0.302408, 0.281286,
		-0.239110, -0.941395, -0.237911,
		32.557243, 33.854191, 26.309813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.133114, 34.370384, 26.032490>,  <32.724617, 34.513165, 26.476351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.133114, 34.370384, 26.032490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.868580, 34.078308, 25.963846>,  <32.709858, 33.903061, 25.922661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.868580, 34.078308, 25.963846>,  <33.133114, 34.370384, 26.032490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.868580, 34.078308, 25.963846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264181, -0.012620, -0.964391,
		0.702026, -0.683124, 0.201249,
		-0.661338, -0.730194, -0.171608,
		32.670177, 33.859249, 25.912363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.524063, 33.815166, 25.646160>,  <33.133114, 34.370384, 26.032490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.524063, 33.815166, 25.646160> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.140095, 33.739140, 25.563768>,  <32.909714, 33.693523, 25.514334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.140095, 33.739140, 25.563768>,  <33.524063, 33.815166, 25.646160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.140095, 33.739140, 25.563768> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233250, -0.134283, -0.963101,
		0.155399, -0.972543, 0.173235,
		-0.959920, -0.190071, -0.205978,
		32.852119, 33.682117, 25.501974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.566826, 33.187740, 25.118479>,  <33.524063, 33.815166, 25.646160>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.566826, 33.187740, 25.118479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207783, 33.363400, 25.103245>,  <32.992359, 33.468796, 25.094105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.207783, 33.363400, 25.103245>,  <33.566826, 33.187740, 25.118479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.207783, 33.363400, 25.103245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001262, -0.088962, -0.996034,
		-0.440799, -0.893997, 0.080406,
		-0.897605, 0.439153, -0.038086,
		32.938499, 33.495144, 25.091820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.307014, 32.770985, 24.622438>,  <33.566826, 33.187740, 25.118479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.307014, 32.770985, 24.622438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.050076, 33.077503, 24.627802>,  <32.895912, 33.261414, 24.631020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.050076, 33.077503, 24.627802>,  <33.307014, 32.770985, 24.622438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.050076, 33.077503, 24.627802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038136, -0.014481, -0.999168,
		-0.765464, -0.642324, 0.038525,
		-0.642348, 0.766296, 0.013411,
		32.857372, 33.307392, 24.631824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.831192, 32.634933, 24.174755>,  <33.307014, 32.770985, 24.622438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.831192, 32.634933, 24.174755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795170, 33.032837, 24.194117>,  <32.773556, 33.271580, 24.205734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795170, 33.032837, 24.194117>,  <32.831192, 32.634933, 24.174755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795170, 33.032837, 24.194117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230383, 0.026476, -0.972740,
		-0.968924, -0.098749, 0.226792,
		-0.090053, 0.994760, 0.048404,
		32.768154, 33.331264, 24.208637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<32.198566, 32.807995, 23.722437> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335209, 33.179890, 23.777422>,  <32.417194, 33.403027, 23.810413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335209, 33.179890, 23.777422>,  <32.198566, 32.807995, 23.722437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335209, 33.179890, 23.777422> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510344, 0.306323, -0.803564,
		-0.789209, 0.204353, 0.579127,
		0.341611, 0.929734, 0.137463,
		32.437691, 33.458809, 23.818661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.672808, 33.277737, 23.716185>,  <32.198566, 32.807995, 23.722437>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.672808, 33.277737, 23.716185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987526, 33.494713, 23.598402>,  <32.176357, 33.624901, 23.527733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.987526, 33.494713, 23.598402>,  <31.672808, 33.277737, 23.716185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987526, 33.494713, 23.598402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516856, 0.318293, -0.794701,
		-0.337356, 0.777461, 0.530797,
		0.786798, 0.542443, -0.294457,
		32.223564, 33.657444, 23.510065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.409601, 33.848869, 23.411972>,  <31.672808, 33.277737, 23.716185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.409601, 33.848869, 23.411972> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786259, 33.835373, 23.278004>,  <32.012253, 33.827274, 23.197622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.786259, 33.835373, 23.278004>,  <31.409601, 33.848869, 23.411972>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.786259, 33.835373, 23.278004> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317861, 0.238357, -0.917688,
		0.110790, 0.970592, 0.213723,
		0.941642, -0.033737, -0.334921,
		32.068752, 33.825253, 23.177528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.509487, 34.387753, 22.968597>,  <31.409601, 33.848869, 23.411972>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.509487, 34.387753, 22.968597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774313, 34.109695, 22.856564>,  <31.933208, 33.942860, 22.789343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.774313, 34.109695, 22.856564>,  <31.509487, 34.387753, 22.968597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774313, 34.109695, 22.856564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156338, 0.237395, -0.958750,
		0.732960, 0.678541, 0.048492,
		0.662063, -0.695145, -0.280083,
		31.972933, 33.901154, 22.772539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.743311, 34.719799, 22.332436>,  <31.509487, 34.387753, 22.968597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.743311, 34.719799, 22.332436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891294, 34.348385, 22.320101>,  <31.980083, 34.125538, 22.312700>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.891294, 34.348385, 22.320101>,  <31.743311, 34.719799, 22.332436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.891294, 34.348385, 22.320101> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113817, -0.012357, -0.993425,
		0.922051, 0.371034, -0.110255,
		0.369957, -0.928537, -0.030836,
		32.002281, 34.069824, 22.310850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.148636, 34.751709, 21.771933>,  <31.743311, 34.719799, 22.332436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.148636, 34.751709, 21.771933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082390, 34.363628, 21.842674>,  <32.042645, 34.130779, 21.885118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.082390, 34.363628, 21.842674>,  <32.148636, 34.751709, 21.771933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.082390, 34.363628, 21.842674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335218, -0.113272, -0.935306,
		0.927471, -0.214183, -0.306471,
		-0.165612, -0.970204, 0.176855,
		32.032707, 34.072567, 21.895731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.413910, 34.421593, 21.235043>,  <32.148636, 34.751709, 21.771933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.413910, 34.421593, 21.235043> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142117, 34.167633, 21.382122>,  <31.979040, 34.015255, 21.470369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.142117, 34.167633, 21.382122>,  <32.413910, 34.421593, 21.235043>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.142117, 34.167633, 21.382122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374019, -0.131406, -0.918065,
		0.631200, -0.761335, -0.148177,
		-0.679483, -0.634903, 0.367697,
		31.938272, 33.977161, 21.492432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.499123, 33.852592, 20.878769>,  <32.413910, 34.421593, 21.235043>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.499123, 33.852592, 20.878769> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129971, 33.796909, 21.022392>,  <31.908480, 33.763500, 21.108566>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.129971, 33.796909, 21.022392>,  <32.499123, 33.852592, 20.878769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.129971, 33.796909, 21.022392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302638, -0.314396, -0.899758,
		0.238138, -0.939030, 0.248020,
		-0.922876, -0.139206, 0.359056,
		31.853107, 33.755146, 21.130110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.265198, 33.176197, 20.670759>,  <32.499123, 33.852592, 20.878769>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.265198, 33.176197, 20.670759> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933058, 33.384953, 20.748892>,  <31.733774, 33.510204, 20.795771>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.933058, 33.384953, 20.748892>,  <32.265198, 33.176197, 20.670759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.933058, 33.384953, 20.748892> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428939, -0.374847, -0.821889,
		-0.355694, -0.766252, 0.535107,
		-0.830357, 0.521869, 0.195344,
		31.683952, 33.541519, 20.807491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.876547, 32.745213, 20.411844>,  <32.265198, 33.176197, 20.670759>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.876547, 32.745213, 20.411844> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653486, 33.075386, 20.446911>,  <31.519650, 33.273491, 20.467951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.653486, 33.075386, 20.446911>,  <31.876547, 32.745213, 20.411844>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.653486, 33.075386, 20.446911> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336492, -0.128246, -0.932913,
		-0.758814, -0.549740, 0.349268,
		-0.557651, 0.825432, 0.087668,
		31.486191, 33.323017, 20.473211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.262241, 32.549198, 20.211687>,  <31.876547, 32.745213, 20.411844>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.262241, 32.549198, 20.211687> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254446, 32.947159, 20.172100>,  <31.249769, 33.185936, 20.148348>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.254446, 32.947159, 20.172100>,  <31.262241, 32.549198, 20.211687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.254446, 32.947159, 20.172100> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196619, -0.100866, -0.975278,
		-0.980286, 0.000454, 0.197581,
		-0.019487, 0.994900, -0.098967,
		31.248600, 33.245628, 20.142410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.614634, 32.822544, 19.827076>,  <31.262241, 32.549198, 20.211687>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.614634, 32.822544, 19.827076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894518, 33.101204, 19.763720>,  <31.062449, 33.268398, 19.725706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.894518, 33.101204, 19.763720>,  <30.614634, 32.822544, 19.827076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.894518, 33.101204, 19.763720> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151691, -0.071777, -0.985818,
		-0.698135, 0.713815, 0.055451,
		0.699712, 0.696646, -0.158389,
		31.104431, 33.310196, 19.716204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.466925, 33.278172, 19.238932>,  <30.614634, 32.822544, 19.827076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.466925, 33.278172, 19.238932> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858194, 33.361034, 19.245371>,  <31.092957, 33.410751, 19.249235>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.858194, 33.361034, 19.245371>,  <30.466925, 33.278172, 19.238932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.858194, 33.361034, 19.245371> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017034, -0.002731, -0.999851,
		-0.207083, 0.978304, -0.006200,
		0.978175, 0.207158, 0.016099,
		31.151648, 33.423183, 19.250200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.541056, 33.789150, 18.741997>,  <30.466925, 33.278172, 19.238932>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.541056, 33.789150, 18.741997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.914404, 33.671009, 18.823566>,  <31.138412, 33.600124, 18.872507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.914404, 33.671009, 18.823566>,  <30.541056, 33.789150, 18.741997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.914404, 33.671009, 18.823566> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201573, -0.038727, -0.978707,
		0.296965, 0.954602, 0.023390,
		0.933370, -0.295357, 0.203922,
		31.194414, 33.582401, 18.884743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.933203, 34.208347, 18.251072>,  <30.541056, 33.789150, 18.741997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.933203, 34.208347, 18.251072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130283, 33.884346, 18.378281>,  <31.248531, 33.689945, 18.454607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.130283, 33.884346, 18.378281>,  <30.933203, 34.208347, 18.251072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.130283, 33.884346, 18.378281> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439770, -0.083585, -0.894212,
		0.750897, 0.580438, 0.315033,
		0.492703, -0.810003, 0.318023,
		31.278093, 33.641346, 18.473688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.555880, 34.278111, 17.917593>,  <30.933203, 34.208347, 18.251072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.555880, 34.278111, 17.917593> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550856, 33.892277, 18.022980>,  <31.547842, 33.660774, 18.086212>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.550856, 33.892277, 18.022980>,  <31.555880, 34.278111, 17.917593>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.550856, 33.892277, 18.022980> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471656, -0.238049, -0.849043,
		0.881693, 0.113603, 0.457942,
		-0.012558, -0.964586, 0.263468,
		31.547089, 33.602901, 18.102020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.259216, 33.939152, 17.899561>,  <31.555880, 34.278111, 17.917593>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.259216, 33.939152, 17.899561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989901, 33.645756, 17.862316>,  <31.828310, 33.469719, 17.839970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.989901, 33.645756, 17.862316>,  <32.259216, 33.939152, 17.899561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.989901, 33.645756, 17.862316> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418117, -0.273852, -0.866131,
		0.609800, -0.622091, 0.491067,
		-0.673292, -0.733490, -0.093112,
		31.787912, 33.425709, 17.834383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.570774, 33.492008, 17.569630>,  <32.259216, 33.939152, 17.899561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.570774, 33.492008, 17.569630> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204018, 33.343441, 17.511164>,  <31.983965, 33.254303, 17.476084>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.204018, 33.343441, 17.511164>,  <32.570774, 33.492008, 17.569630>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.204018, 33.343441, 17.511164> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231378, -0.196199, -0.952875,
		0.325234, -0.907500, 0.265831,
		-0.916890, -0.371415, -0.146165,
		31.928951, 33.232018, 17.467314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.717010, 32.905411, 17.075191>,  <32.570774, 33.492008, 17.569630>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.717010, 32.905411, 17.075191> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335423, 33.025181, 17.068361>,  <32.106472, 33.097042, 17.064262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.335423, 33.025181, 17.068361>,  <32.717010, 32.905411, 17.075191>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.335423, 33.025181, 17.068361> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067080, 0.157532, -0.985233,
		-0.292316, -0.941024, -0.170366,
		-0.953966, 0.299427, -0.017075,
		32.049232, 33.115009, 17.063238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.409527, 32.558586, 16.533812>,  <32.717010, 32.905411, 17.075191>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.409527, 32.558586, 16.533812> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.189274, 32.887112, 16.593460>,  <32.057121, 33.084229, 16.629250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.189274, 32.887112, 16.593460>,  <32.409527, 32.558586, 16.533812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.189274, 32.887112, 16.593460> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210961, 0.309763, -0.927115,
		-0.807648, -0.479045, -0.343833,
		-0.550636, 0.821318, 0.149119,
		32.024082, 33.133507, 16.638195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.077042, 32.650463, 15.970451>,  <32.409527, 32.558586, 16.533812>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.077042, 32.650463, 15.970451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050320, 33.005966, 16.151846>,  <32.034286, 33.219269, 16.260683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.050320, 33.005966, 16.151846>,  <32.077042, 32.650463, 15.970451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.050320, 33.005966, 16.151846> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330383, 0.448565, -0.830443,
		-0.941480, 0.094349, -0.323595,
		-0.066802, 0.888756, 0.453487,
		32.030277, 33.272594, 16.287891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638422, 33.124252, 15.517648>,  <32.077042, 32.650463, 15.970451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638422, 33.124252, 15.517648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870592, 33.344524, 15.757601>,  <32.009895, 33.476688, 15.901572>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.870592, 33.344524, 15.757601>,  <31.638422, 33.124252, 15.517648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.870592, 33.344524, 15.757601> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310435, 0.531407, -0.788186,
		-0.752818, 0.643708, 0.137493,
		0.580426, 0.550678, 0.599882,
		32.044720, 33.509727, 15.937566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.524572, 33.922527, 15.333440>,  <31.638422, 33.124252, 15.517648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.524572, 33.922527, 15.333440> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881418, 33.828850, 15.487989>,  <32.095528, 33.772644, 15.580719>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881418, 33.828850, 15.487989>,  <31.524572, 33.922527, 15.333440>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881418, 33.828850, 15.487989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450825, 0.517806, -0.727072,
		-0.029791, 0.822819, 0.567523,
		0.892115, -0.234193, 0.386373,
		32.149052, 33.758591, 15.603901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797579, 34.023678, 15.565466>,  <31.524572, 33.922527, 15.333440>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797579, 34.023678, 15.565466> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578558, 34.269173, 15.337954>,  <30.447145, 34.416470, 15.201447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.578558, 34.269173, 15.337954>,  <30.797579, 34.023678, 15.565466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.578558, 34.269173, 15.337954> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535713, 0.265052, 0.801722,
		0.642803, 0.743690, 0.183657,
		-0.547554, 0.613737, -0.568781,
		30.414291, 34.453293, 15.167319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.750130, 34.611248, 15.904066>,  <30.797579, 34.023678, 15.565466>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.750130, 34.611248, 15.904066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402014, 34.498020, 15.742839>,  <30.193144, 34.430084, 15.646103>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.402014, 34.498020, 15.742839>,  <30.750130, 34.611248, 15.904066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402014, 34.498020, 15.742839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462157, 0.186362, 0.866995,
		-0.170305, 0.940819, -0.293012,
		-0.870292, -0.283071, -0.403067,
		30.140926, 34.413097, 15.621919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.182995, 35.122093, 16.030758>,  <30.750130, 34.611248, 15.904066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.182995, 35.122093, 16.030758> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001122, 34.766190, 16.014765>,  <29.891998, 34.552647, 16.005169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.001122, 34.766190, 16.014765>,  <30.182995, 35.122093, 16.030758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.001122, 34.766190, 16.014765> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519228, 0.228326, 0.823571,
		-0.723647, 0.395225, -0.565802,
		-0.454683, -0.889755, -0.039985,
		29.864717, 34.499264, 16.002769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.376659, 35.178173, 16.212383>,  <30.182995, 35.122093, 16.030758>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.376659, 35.178173, 16.212383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488035, 34.800060, 16.280405>,  <29.554861, 34.573193, 16.321218>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.488035, 34.800060, 16.280405>,  <29.376659, 35.178173, 16.212383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.488035, 34.800060, 16.280405> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535144, -0.005665, 0.844742,
		-0.797553, -0.326214, -0.507437,
		0.278442, -0.945279, 0.170054,
		29.571568, 34.516476, 16.331421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.790287, 34.910431, 16.474174>,  <29.376659, 35.178173, 16.212383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.790287, 34.910431, 16.474174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070442, 34.643707, 16.576012>,  <29.238535, 34.483673, 16.637114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.070442, 34.643707, 16.576012>,  <28.790287, 34.910431, 16.474174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.070442, 34.643707, 16.576012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453395, -0.140152, 0.880222,
		-0.551259, -0.731930, -0.400490,
		0.700390, -0.666810, 0.254593,
		29.280560, 34.443665, 16.652390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.407415, 34.368294, 16.681423>,  <28.790287, 34.910431, 16.474174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.407415, 34.368294, 16.681423> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.766560, 34.335278, 16.854414>,  <28.982046, 34.315468, 16.958208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.766560, 34.335278, 16.854414>,  <28.407415, 34.368294, 16.681423>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.766560, 34.335278, 16.854414> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438730, -0.250181, 0.863091,
		0.036963, -0.964675, -0.260838,
		0.897858, -0.082535, 0.432479,
		29.035917, 34.310516, 16.984158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.245062, 33.796543, 17.045038>,  <28.407415, 34.368294, 16.681423>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.245062, 33.796543, 17.045038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571251, 33.967537, 17.201120>,  <28.766964, 34.070133, 17.294769>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.571251, 33.967537, 17.201120>,  <28.245062, 33.796543, 17.045038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.571251, 33.967537, 17.201120> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419074, -0.028928, 0.907491,
		0.399227, -0.903559, 0.155558,
		0.815472, 0.427485, 0.390207,
		28.815893, 34.095783, 17.318182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.398804, 33.375755, 17.541805>,  <28.245062, 33.796543, 17.045038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.398804, 33.375755, 17.541805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.536922, 33.739868, 17.633150>,  <28.619793, 33.958336, 17.687958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.536922, 33.739868, 17.633150>,  <28.398804, 33.375755, 17.541805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.536922, 33.739868, 17.633150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067306, -0.218684, 0.973472,
		0.936077, -0.351507, -0.014243,
		0.345297, 0.910286, 0.228363,
		28.640512, 34.012955, 17.701658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.678593, 33.279934, 18.198742>,  <28.398804, 33.375755, 17.541805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.678593, 33.279934, 18.198742> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.713451, 33.678238, 18.186953>,  <28.734367, 33.917221, 18.179878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.713451, 33.678238, 18.186953>,  <28.678593, 33.279934, 18.198742>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.713451, 33.678238, 18.186953> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043550, 0.025751, 0.998719,
		0.995243, -0.088321, -0.041121,
		0.087149, 0.995759, -0.029475,
		28.739595, 33.976967, 18.178110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.229317, 33.374485, 18.674053>,  <28.678593, 33.279934, 18.198742>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.229317, 33.374485, 18.674053> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.018538, 33.713020, 18.642950>,  <28.892071, 33.916142, 18.624289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.018538, 33.713020, 18.642950>,  <29.229317, 33.374485, 18.674053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.018538, 33.713020, 18.642950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099230, 0.152128, 0.983367,
		0.844086, 0.510466, -0.164145,
		-0.526946, 0.846334, -0.077756,
		28.860455, 33.966919, 18.619623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.614347, 33.804714, 19.051683>,  <29.229317, 33.374485, 18.674053>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.614347, 33.804714, 19.051683> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274288, 34.012520, 19.017391>,  <29.070253, 34.137203, 18.996817>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.274288, 34.012520, 19.017391>,  <29.614347, 33.804714, 19.051683>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.274288, 34.012520, 19.017391> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023600, 0.200248, 0.979461,
		0.526016, 0.830663, -0.182501,
		-0.850147, 0.519519, -0.085730,
		29.019243, 34.168377, 18.991673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.727598, 34.443661, 19.223383>,  <29.614347, 33.804714, 19.051683>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.727598, 34.443661, 19.223383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.350315, 34.330414, 19.292904>,  <29.123945, 34.262466, 19.334618>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.350315, 34.330414, 19.292904>,  <29.727598, 34.443661, 19.223383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.350315, 34.330414, 19.292904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204256, -0.081619, 0.975509,
		-0.261996, 0.955607, 0.134812,
		-0.943206, -0.283116, 0.173804,
		29.067354, 34.245480, 19.345045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.680429, 34.815430, 19.851648>,  <29.727598, 34.443661, 19.223383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.680429, 34.815430, 19.851648> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.376556, 34.555912, 19.833986>,  <29.194233, 34.400200, 19.823389>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.376556, 34.555912, 19.833986>,  <29.680429, 34.815430, 19.851648>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.376556, 34.555912, 19.833986> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095284, -0.178225, 0.979366,
		-0.643277, 0.739799, 0.197214,
		-0.759682, -0.648794, -0.044157,
		29.148651, 34.361275, 19.820740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217855, 35.027000, 20.418478>,  <29.680429, 34.815430, 19.851648>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217855, 35.027000, 20.418478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.115538, 34.654778, 20.313683>,  <29.054148, 34.431446, 20.250805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.115538, 34.654778, 20.313683>,  <29.217855, 35.027000, 20.418478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.115538, 34.654778, 20.313683> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038826, -0.260895, 0.964586,
		-0.965952, 0.256906, 0.030605,
		-0.255793, -0.930555, -0.261987,
		29.038799, 34.375610, 20.235086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.627457, 34.867023, 20.910110>,  <29.217855, 35.027000, 20.418478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.627457, 34.867023, 20.910110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742533, 34.514778, 20.759510>,  <28.811579, 34.303429, 20.669149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.742533, 34.514778, 20.759510>,  <28.627457, 34.867023, 20.910110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742533, 34.514778, 20.759510> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118603, -0.422851, 0.898404,
		-0.950352, -0.213806, -0.226093,
		0.287688, -0.880616, -0.376499,
		28.828838, 34.250595, 20.646561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.292412, 34.395256, 21.307554>,  <28.627457, 34.867023, 20.910110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.292412, 34.395256, 21.307554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602222, 34.190250, 21.159264>,  <28.788109, 34.067245, 21.070290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.602222, 34.190250, 21.159264>,  <28.292412, 34.395256, 21.307554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.602222, 34.190250, 21.159264> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066975, -0.516347, 0.853757,
		-0.628986, -0.686087, -0.365599,
		0.774527, -0.512515, -0.370725,
		28.834581, 34.036495, 21.048046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.153542, 33.812973, 21.557293>,  <28.292412, 34.395256, 21.307554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.153542, 33.812973, 21.557293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542459, 33.809479, 21.463858>,  <28.775810, 33.807381, 21.407797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.542459, 33.809479, 21.463858>,  <28.153542, 33.812973, 21.557293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.542459, 33.809479, 21.463858> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192448, -0.537292, 0.821146,
		-0.132678, -0.843351, -0.520726,
		0.972296, -0.008735, -0.233588,
		28.834148, 33.806858, 21.393782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.326044, 33.171780, 21.771317>,  <28.153542, 33.812973, 21.557293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.326044, 33.171780, 21.771317> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676207, 33.363953, 21.749937>,  <28.886303, 33.479256, 21.737108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.676207, 33.363953, 21.749937>,  <28.326044, 33.171780, 21.771317>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.676207, 33.363953, 21.749937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338444, -0.530202, 0.777394,
		0.345142, -0.698624, -0.626739,
		0.875404, 0.480428, -0.053450,
		28.938828, 33.508080, 21.733902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.705563, 32.731552, 22.064602>,  <28.326044, 33.171780, 21.771317>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.705563, 32.731552, 22.064602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942484, 33.053749, 22.072201>,  <29.084637, 33.247066, 22.076759>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.942484, 33.053749, 22.072201>,  <28.705563, 32.731552, 22.064602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.942484, 33.053749, 22.072201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338780, -0.270369, 0.901182,
		0.731030, -0.527337, -0.433025,
		0.592303, 0.805491, 0.018996,
		29.120174, 33.295395, 22.077900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333366, 32.480877, 22.366835>,  <28.705563, 32.731552, 22.064602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333366, 32.480877, 22.366835> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.355061, 32.874443, 22.434906>,  <29.368076, 33.110584, 22.475748>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.355061, 32.874443, 22.434906>,  <29.333366, 32.480877, 22.366835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.355061, 32.874443, 22.434906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309169, -0.178600, 0.934086,
		0.949459, 0.001954, -0.313884,
		0.054235, 0.983920, 0.170177,
		29.371330, 33.169621, 22.485960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.988569, 32.653896, 22.792904>,  <29.333366, 32.480877, 22.366835>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.988569, 32.653896, 22.792904> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703945, 32.931328, 22.837851>,  <29.533171, 33.097786, 22.864819>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.703945, 32.931328, 22.837851>,  <29.988569, 32.653896, 22.792904>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.703945, 32.931328, 22.837851> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026979, -0.132834, 0.990771,
		0.702105, 0.708027, 0.075807,
		-0.711562, 0.693580, 0.112365,
		29.490477, 33.139400, 22.871561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<32.794357, 32.635597, 26.739990> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.655952, 33.010651, 26.726595>,  <32.572910, 33.235683, 26.718557>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.655952, 33.010651, 26.726595>,  <32.794357, 32.635597, 26.739990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.655952, 33.010651, 26.726595> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194740, -0.036859, 0.980162,
		0.917797, 0.345671, 0.195348,
		-0.346014, 0.937631, -0.033487,
		32.552147, 33.291939, 26.716549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173645, 33.089901, 27.226652>,  <32.794357, 32.635597, 26.739990>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173645, 33.089901, 27.226652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.843159, 33.306370, 27.164045>,  <32.644867, 33.436253, 27.126482>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.843159, 33.306370, 27.164045>,  <33.173645, 33.089901, 27.226652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.843159, 33.306370, 27.164045> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128780, 0.089039, 0.987668,
		0.548433, 0.836186, -0.003874,
		-0.826219, 0.541171, -0.156515,
		32.595295, 33.468719, 27.117090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.143467, 33.639664, 27.774635>,  <33.173645, 33.089901, 27.226652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.143467, 33.639664, 27.774635> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.773510, 33.610119, 27.625437>,  <32.551537, 33.592392, 27.535917>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.773510, 33.610119, 27.625437>,  <33.143467, 33.639664, 27.774635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.773510, 33.610119, 27.625437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378993, 0.099721, 0.920011,
		-0.030757, 0.992270, -0.120223,
		-0.924888, -0.073860, -0.372996,
		32.496044, 33.587959, 27.513538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.741100, 34.238846, 28.074120>,  <33.143467, 33.639664, 27.774635>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.741100, 34.238846, 28.074120> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.469765, 33.971375, 27.952316>,  <32.306965, 33.810890, 27.879234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.469765, 33.971375, 27.952316>,  <32.741100, 34.238846, 28.074120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.469765, 33.971375, 27.952316> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535025, 0.165477, 0.828472,
		-0.503596, 0.724901, -0.470011,
		-0.678336, -0.668682, -0.304507,
		32.266266, 33.770771, 27.860964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108936, 34.528301, 28.132847>,  <32.741100, 34.238846, 28.074120>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108936, 34.528301, 28.132847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.031471, 34.136749, 28.159025>,  <31.984993, 33.901817, 28.174732>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.031471, 34.136749, 28.159025>,  <32.108936, 34.528301, 28.132847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.031471, 34.136749, 28.159025> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538068, 0.161758, 0.827235,
		-0.820352, 0.124989, -0.558032,
		-0.193661, -0.978883, 0.065446,
		31.973373, 33.843082, 28.178659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.420238, 34.462025, 28.306137>,  <32.108936, 34.528301, 28.132847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.420238, 34.462025, 28.306137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.575743, 34.110458, 28.416677>,  <31.669044, 33.899517, 28.483002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.575743, 34.110458, 28.416677>,  <31.420238, 34.462025, 28.306137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575743, 34.110458, 28.416677> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371066, 0.125183, 0.920130,
		-0.843313, -0.460253, -0.277470,
		0.388758, -0.878918, 0.276353,
		31.692369, 33.846783, 28.499582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.943230, 34.232132, 28.802664>,  <31.420238, 34.462025, 28.306137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.943230, 34.232132, 28.802664> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.255886, 33.991482, 28.868496>,  <31.443480, 33.847092, 28.907995>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.255886, 33.991482, 28.868496>,  <30.943230, 34.232132, 28.802664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255886, 33.991482, 28.868496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249863, -0.060259, 0.966404,
		-0.571495, -0.796503, -0.197425,
		0.781640, -0.601625, 0.164579,
		31.490377, 33.810993, 28.917870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.735806, 33.663261, 29.192392>,  <30.943230, 34.232132, 28.802664>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.735806, 33.663261, 29.192392> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.125902, 33.709972, 29.267513>,  <31.359961, 33.737999, 29.312586>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.125902, 33.709972, 29.267513>,  <30.735806, 33.663261, 29.192392>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.125902, 33.709972, 29.267513> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197964, 0.082457, 0.976735,
		0.098568, -0.989730, 0.103531,
		0.975241, 0.116771, 0.187803,
		31.418474, 33.745003, 29.323854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.905914, 33.185501, 29.793463>,  <30.735806, 33.663261, 29.192392>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.905914, 33.185501, 29.793463> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.208019, 33.447105, 29.776270>,  <31.389282, 33.604069, 29.765955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.208019, 33.447105, 29.776270>,  <30.905914, 33.185501, 29.793463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.208019, 33.447105, 29.776270> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053729, 0.127139, 0.990429,
		0.653215, -0.745726, 0.131163,
		0.755264, 0.654010, -0.042982,
		31.434599, 33.643307, 29.763374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.350723, 32.965202, 30.222860>,  <30.905914, 33.185501, 29.793463>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.350723, 32.965202, 30.222860> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.417213, 33.359051, 30.201347>,  <31.457108, 33.595360, 30.188440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.417213, 33.359051, 30.201347>,  <31.350723, 32.965202, 30.222860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.417213, 33.359051, 30.201347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049997, 0.062885, 0.996768,
		0.984819, -0.163001, 0.059682,
		0.166228, 0.984620, -0.053781,
		31.467081, 33.654438, 30.185213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775707, 33.095222, 30.744804>,  <31.350723, 32.965202, 30.222860>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775707, 33.095222, 30.744804> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.663038, 33.468128, 30.653994>,  <31.595438, 33.691872, 30.599506>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.663038, 33.468128, 30.653994>,  <31.775707, 33.095222, 30.744804>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.663038, 33.468128, 30.653994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098385, 0.263421, 0.959651,
		0.954454, 0.247969, -0.165919,
		-0.281670, 0.932266, -0.227027,
		31.578537, 33.747807, 30.585886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.128799, 33.509415, 31.127323>,  <31.775707, 33.095222, 30.744804>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.128799, 33.509415, 31.127323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849245, 33.779503, 31.032974>,  <31.681513, 33.941555, 30.976364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.849245, 33.779503, 31.032974>,  <32.128799, 33.509415, 31.127323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.849245, 33.779503, 31.032974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130378, 0.444530, 0.886225,
		0.703253, 0.588615, -0.398709,
		-0.698883, 0.675223, -0.235874,
		31.639580, 33.982071, 30.962212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.444370, 34.165024, 31.255398>,  <32.128799, 33.509415, 31.127323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.444370, 34.165024, 31.255398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.048141, 34.200298, 31.297346>,  <31.810406, 34.221462, 31.322515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.048141, 34.200298, 31.297346>,  <32.444370, 34.165024, 31.255398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.048141, 34.200298, 31.297346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124424, 0.258361, 0.958002,
		0.057388, 0.962015, -0.266897,
		-0.990568, 0.088186, 0.104871,
		31.750971, 34.226753, 31.328808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.282852, 34.796959, 31.691977>,  <32.444370, 34.165024, 31.255398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.282852, 34.796959, 31.691977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.954357, 34.571613, 31.728170>,  <31.757259, 34.436405, 31.749886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.954357, 34.571613, 31.728170>,  <32.282852, 34.796959, 31.691977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954357, 34.571613, 31.728170> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014104, 0.138490, 0.990263,
		-0.570405, 0.814522, -0.105789,
		-0.821242, -0.563359, 0.090484,
		31.707985, 34.402607, 31.755316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558460, 35.441502, 31.660124>,  <32.282852, 34.796959, 31.691977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558460, 35.441502, 31.660124> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609566, 35.837852, 31.677286>,  <32.640228, 36.075665, 31.687584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.609566, 35.837852, 31.677286>,  <32.558460, 35.441502, 31.660124>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.609566, 35.837852, 31.677286> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030292, 0.047139, -0.998429,
		-0.991342, 0.126259, 0.036039,
		0.127760, 0.990877, 0.042906,
		32.647892, 36.135117, 31.690159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.116158, 35.688805, 31.142389>,  <32.558460, 35.441502, 31.660124>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.116158, 35.688805, 31.142389> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.393860, 35.967319, 31.215269>,  <32.560482, 36.134426, 31.258997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.393860, 35.967319, 31.215269>,  <32.116158, 35.688805, 31.142389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.393860, 35.967319, 31.215269> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111108, 0.146429, -0.982962,
		-0.711099, 0.702672, 0.024297,
		0.694258, 0.696283, 0.182198,
		32.602139, 36.176205, 31.269928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.896345, 36.245049, 30.782944>,  <32.116158, 35.688805, 31.142389>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.896345, 36.245049, 30.782944> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.293030, 36.262993, 30.831106>,  <32.531040, 36.273758, 30.860004>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.293030, 36.262993, 30.831106>,  <31.896345, 36.245049, 30.782944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.293030, 36.262993, 30.831106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098020, 0.341766, -0.934659,
		-0.083077, 0.938714, 0.334536,
		0.991711, 0.044857, 0.120406,
		32.590542, 36.276451, 30.867228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.036823, 36.838779, 30.391958>,  <31.896345, 36.245049, 30.782944>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.036823, 36.838779, 30.391958> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.400394, 36.679718, 30.442114>,  <32.618538, 36.584282, 30.472208>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.400394, 36.679718, 30.442114>,  <32.036823, 36.838779, 30.391958>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.400394, 36.679718, 30.442114> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226128, 0.217465, -0.949513,
		0.350308, 0.891394, 0.287580,
		0.908928, -0.397652, 0.125390,
		32.673073, 36.560421, 30.479731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531769, 37.257271, 29.976906>,  <32.036823, 36.838779, 30.391958>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531769, 37.257271, 29.976906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.710297, 36.904686, 30.038641>,  <32.817413, 36.693134, 30.075682>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.710297, 36.904686, 30.038641>,  <32.531769, 37.257271, 29.976906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.710297, 36.904686, 30.038641> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368522, 0.023884, -0.929312,
		0.815469, 0.471646, 0.335499,
		0.446320, -0.881464, 0.154336,
		32.844193, 36.640247, 30.084942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.261177, 37.400047, 29.917381>,  <32.531769, 37.257271, 29.976906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.261177, 37.400047, 29.917381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.218887, 37.008751, 29.845972>,  <33.193512, 36.773975, 29.803125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.218887, 37.008751, 29.845972>,  <33.261177, 37.400047, 29.917381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.218887, 37.008751, 29.845972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522426, 0.098114, -0.847021,
		0.846105, -0.182818, 0.500684,
		-0.105727, -0.978239, -0.178524,
		33.187168, 36.715279, 29.792416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850384, 37.141796, 29.661818>,  <33.261177, 37.400047, 29.917381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850384, 37.141796, 29.661818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.570400, 36.884125, 29.538471>,  <33.402409, 36.729523, 29.464464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.570400, 36.884125, 29.538471>,  <33.850384, 37.141796, 29.661818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570400, 36.884125, 29.538471> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411321, -0.010645, -0.911428,
		0.583838, -0.764803, 0.272415,
		-0.699963, -0.644177, -0.308364,
		33.360413, 36.690872, 29.445961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.195770, 36.644993, 29.218403>,  <33.850384, 37.141796, 29.661818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.195770, 36.644993, 29.218403> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.811405, 36.603367, 29.115788>,  <33.580784, 36.578392, 29.054218>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.811405, 36.603367, 29.115788>,  <34.195770, 36.644993, 29.218403>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.811405, 36.603367, 29.115788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268022, -0.117674, -0.956199,
		0.069323, -0.987584, 0.140968,
		-0.960915, -0.104069, -0.256536,
		33.523132, 36.572147, 29.038826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.277363, 36.139595, 28.690908>,  <34.195770, 36.644993, 29.218403>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.277363, 36.139595, 28.690908> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.917580, 36.302952, 28.628702>,  <33.701710, 36.400967, 28.591379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.917580, 36.302952, 28.628702>,  <34.277363, 36.139595, 28.690908>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.917580, 36.302952, 28.628702> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166246, -0.009331, -0.986040,
		-0.404145, -0.912758, -0.059501,
		-0.899460, 0.408395, -0.155513,
		33.647743, 36.425468, 28.582048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.009838, 35.836487, 28.105694>,  <34.277363, 36.139595, 28.690908>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.009838, 35.836487, 28.105694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.785007, 36.164085, 28.151850>,  <33.650108, 36.360645, 28.179544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.785007, 36.164085, 28.151850>,  <34.009838, 35.836487, 28.105694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.785007, 36.164085, 28.151850> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033686, 0.116731, -0.992592,
		-0.826398, -0.561801, -0.038024,
		-0.562078, 0.818996, 0.115391,
		33.616383, 36.409782, 28.186466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.519650, 35.767742, 27.604689>,  <34.009838, 35.836487, 28.105694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.519650, 35.767742, 27.604689> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550896, 36.156921, 27.691650>,  <33.569641, 36.390430, 27.743828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.550896, 36.156921, 27.691650>,  <33.519650, 35.767742, 27.604689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550896, 36.156921, 27.691650> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023566, 0.219813, -0.975257,
		-0.996666, 0.071057, 0.040099,
		0.078113, 0.972951, 0.217406,
		33.574329, 36.448807, 27.756872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.055660, 36.066799, 27.221289>,  <33.519650, 35.767742, 27.604689>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.055660, 36.066799, 27.221289> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.299885, 36.375751, 27.291307>,  <33.446419, 36.561123, 27.333319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.299885, 36.375751, 27.291307>,  <33.055660, 36.066799, 27.221289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.299885, 36.375751, 27.291307> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129611, 0.315501, -0.940032,
		-0.781293, 0.551257, 0.292741,
		0.610559, 0.772383, 0.175049,
		33.483051, 36.607468, 27.343822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.771008, 36.620823, 26.817881>,  <33.055660, 36.066799, 27.221289>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.771008, 36.620823, 26.817881> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.141632, 36.738724, 26.911352>,  <33.364006, 36.809464, 26.967434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.141632, 36.738724, 26.911352>,  <32.771008, 36.620823, 26.817881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.141632, 36.738724, 26.911352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189893, 0.169713, -0.967025,
		-0.324693, 0.940381, 0.101277,
		0.926561, 0.294755, 0.233677,
		33.419601, 36.827148, 26.981455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904686, 37.260349, 26.469398>,  <32.771008, 36.620823, 26.817881>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904686, 37.260349, 26.469398> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.264206, 37.117653, 26.571293>,  <33.479919, 37.032036, 26.632429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.264206, 37.117653, 26.571293>,  <32.904686, 37.260349, 26.469398>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.264206, 37.117653, 26.571293> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298669, 0.073018, -0.951559,
		0.320856, 0.931347, 0.172175,
		0.898804, -0.356737, 0.254736,
		33.533848, 37.010632, 26.647715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.724945, 37.962955, 26.663725>,  <32.904686, 37.260349, 26.469398>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.724945, 37.962955, 26.663725> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.545750, 38.297104, 26.536314>,  <32.438232, 38.497593, 26.459867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.545750, 38.297104, 26.536314>,  <32.724945, 37.962955, 26.663725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545750, 38.297104, 26.536314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383026, 0.142591, 0.912666,
		0.807833, 0.530872, 0.256089,
		-0.447992, 0.835370, -0.318527,
		32.411350, 38.547714, 26.440756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933319, 38.439758, 27.180561>,  <32.724945, 37.962955, 26.663725>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933319, 38.439758, 27.180561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.615940, 38.589504, 26.988605>,  <32.425514, 38.679352, 26.873432>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.615940, 38.589504, 26.988605>,  <32.933319, 38.439758, 27.180561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.615940, 38.589504, 26.988605> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345118, 0.372720, 0.861378,
		0.501335, 0.849076, -0.166533,
		-0.793446, 0.374366, -0.479889,
		32.377907, 38.701813, 26.844639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.803493, 39.008610, 27.462494>,  <32.933319, 38.439758, 27.180561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.803493, 39.008610, 27.462494> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.442043, 38.950535, 27.301304>,  <32.225174, 38.915688, 27.204590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.442043, 38.950535, 27.301304>,  <32.803493, 39.008610, 27.462494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.442043, 38.950535, 27.301304> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428327, 0.310635, 0.848553,
		0.001976, 0.939375, -0.342885,
		-0.903622, -0.145190, -0.402974,
		32.170956, 38.906979, 27.180412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.453735, 39.656109, 27.630941>,  <32.803493, 39.008610, 27.462494>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.453735, 39.656109, 27.630941> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.194141, 39.361225, 27.555748>,  <32.038383, 39.184296, 27.510632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.194141, 39.361225, 27.555748>,  <32.453735, 39.656109, 27.630941>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194141, 39.361225, 27.555748> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570515, 0.308108, 0.761303,
		-0.503321, 0.601322, -0.620548,
		-0.648984, -0.737212, -0.187986,
		31.999447, 39.140060, 27.499352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813263, 39.964649, 27.638823>,  <32.453735, 39.656109, 27.630941>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813263, 39.964649, 27.638823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729315, 39.577820, 27.696392>,  <31.678946, 39.345722, 27.730934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.729315, 39.577820, 27.696392>,  <31.813263, 39.964649, 27.638823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.729315, 39.577820, 27.696392> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555449, 0.239072, 0.796443,
		-0.804631, 0.087208, -0.587336,
		-0.209872, -0.967078, 0.143925,
		31.666353, 39.287697, 27.739569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.075001, 39.996784, 27.978121>,  <31.813263, 39.964649, 27.638823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.075001, 39.996784, 27.978121> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.241274, 39.637047, 28.032370>,  <31.341038, 39.421204, 28.064919>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.241274, 39.637047, 28.032370>,  <31.075001, 39.996784, 27.978121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.241274, 39.637047, 28.032370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452119, -0.074940, 0.888804,
		-0.789174, -0.430779, -0.437760,
		0.415684, -0.899340, 0.135623,
		31.365980, 39.367245, 28.073057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.544081, 39.560219, 28.129074>,  <31.075001, 39.996784, 27.978121>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.544081, 39.560219, 28.129074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.869501, 39.392494, 28.290224>,  <31.064754, 39.291859, 28.386913>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.869501, 39.392494, 28.290224>,  <30.544081, 39.560219, 28.129074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.869501, 39.392494, 28.290224> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471141, -0.069245, 0.879336,
		-0.340821, -0.905197, -0.253891,
		0.813552, -0.419314, 0.402874,
		31.113567, 39.266701, 28.411087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.328331, 38.909428, 28.539539>,  <30.544081, 39.560219, 28.129074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.328331, 38.909428, 28.539539> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.698626, 38.997524, 28.662510>,  <30.920801, 39.050381, 28.736292>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.698626, 38.997524, 28.662510>,  <30.328331, 38.909428, 28.539539>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.698626, 38.997524, 28.662510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285701, -0.125309, 0.950091,
		0.247774, -0.967363, -0.053079,
		0.925734, 0.220243, 0.307425,
		30.976345, 39.063595, 28.754738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.449751, 38.479858, 29.085938>,  <30.328331, 38.909428, 28.539539>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.449751, 38.479858, 29.085938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.700611, 38.785812, 29.144772>,  <30.851128, 38.969383, 29.180071>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.700611, 38.785812, 29.144772>,  <30.449751, 38.479858, 29.085938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.700611, 38.785812, 29.144772> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321567, 0.082268, 0.943306,
		0.709422, -0.638890, 0.297556,
		0.627148, 0.764886, 0.147084,
		30.888756, 39.015278, 29.188896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773272, 38.273155, 29.727118>,  <30.449751, 38.479858, 29.085938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773272, 38.273155, 29.727118> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.836025, 38.666073, 29.686165>,  <30.873676, 38.901825, 29.661592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.836025, 38.666073, 29.686165>,  <30.773272, 38.273155, 29.727118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.836025, 38.666073, 29.686165> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233194, 0.137579, 0.962649,
		0.959692, -0.127148, 0.250650,
		0.156883, 0.982296, -0.102383,
		30.883091, 38.960762, 29.655451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.182760, 38.469135, 30.274624>,  <30.773272, 38.273155, 29.727118>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.182760, 38.469135, 30.274624> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020828, 38.812630, 30.148972>,  <30.923670, 39.018726, 30.073580>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.020828, 38.812630, 30.148972>,  <31.182760, 38.469135, 30.274624>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.020828, 38.812630, 30.148972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207839, 0.248132, 0.946168,
		0.890458, 0.448326, 0.078029,
		-0.404830, 0.858740, -0.314131,
		30.899380, 39.070251, 30.054731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.544882, 38.963417, 30.708975>,  <31.182760, 38.469135, 30.274624>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.544882, 38.963417, 30.708975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.198801, 39.097443, 30.559761>,  <30.991152, 39.177860, 30.470234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.198801, 39.097443, 30.559761>,  <31.544882, 38.963417, 30.708975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.198801, 39.097443, 30.559761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388318, 0.022918, 0.921240,
		0.317228, 0.941915, 0.110285,
		-0.865202, 0.335069, -0.373033,
		30.939240, 39.197964, 30.447851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.993050, 39.253830, 22.909164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593891, 39.228321, 22.913994>,  <33.354397, 39.213017, 22.916891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593891, 39.228321, 22.913994>,  <33.993050, 39.253830, 22.909164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593891, 39.228321, 22.913994> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002573, 0.224764, 0.974410,
		-0.064850, 0.972324, -0.224455,
		-0.997892, -0.063768, 0.012075,
		33.294525, 39.209190, 22.917616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.751831, 39.749523, 23.436579>,  <33.993050, 39.253830, 22.909164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.751831, 39.749523, 23.436579> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433376, 39.515770, 23.373764>,  <33.242302, 39.375519, 23.336075>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.433376, 39.515770, 23.373764>,  <33.751831, 39.749523, 23.436579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.433376, 39.515770, 23.373764> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277922, 0.122601, 0.952748,
		-0.537514, 0.802164, -0.260020,
		-0.796139, -0.584381, -0.157039,
		33.194534, 39.340454, 23.326653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206150, 40.052895, 23.713717>,  <33.751831, 39.749523, 23.436579>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206150, 40.052895, 23.713717> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068085, 39.677486, 23.711317>,  <32.985245, 39.452240, 23.709877>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068085, 39.677486, 23.711317>,  <33.206150, 40.052895, 23.713717>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.068085, 39.677486, 23.711317> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250519, 0.085971, 0.964287,
		-0.904489, 0.334341, -0.264793,
		-0.345165, -0.938523, -0.005999,
		32.964535, 39.395931, 23.709517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581623, 40.033413, 24.083397>,  <33.206150, 40.052895, 23.713717>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581623, 40.033413, 24.083397> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681843, 39.646206, 24.078142>,  <32.741974, 39.413883, 24.074989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.681843, 39.646206, 24.078142>,  <32.581623, 40.033413, 24.083397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.681843, 39.646206, 24.078142> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334000, -0.099169, 0.937342,
		-0.908664, -0.230461, -0.348164,
		0.250547, -0.968015, -0.013137,
		32.757008, 39.355801, 24.074202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079311, 39.778194, 24.507605>,  <32.581623, 40.033413, 24.083397>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079311, 39.778194, 24.507605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323444, 39.461655, 24.493418>,  <32.469925, 39.271732, 24.484905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.323444, 39.461655, 24.493418>,  <32.079311, 39.778194, 24.507605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.323444, 39.461655, 24.493418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358391, -0.315788, 0.878541,
		-0.706433, -0.523493, -0.476349,
		0.610335, -0.791349, -0.035468,
		32.506546, 39.224251, 24.482777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.678679, 39.286263, 24.730375>,  <32.079311, 39.778194, 24.507605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.678679, 39.286263, 24.730375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057804, 39.161823, 24.758289>,  <32.285278, 39.087162, 24.775038>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.057804, 39.161823, 24.758289>,  <31.678679, 39.286263, 24.730375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.057804, 39.161823, 24.758289> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146578, -0.230809, 0.961895,
		-0.283139, -0.921924, -0.264364,
		0.947811, -0.311100, 0.069783,
		32.342148, 39.068497, 24.779224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618254, 38.663830, 25.120338>,  <31.678679, 39.286263, 24.730375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618254, 38.663830, 25.120338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004681, 38.756123, 25.166779>,  <32.236538, 38.811497, 25.194643>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004681, 38.756123, 25.166779>,  <31.618254, 38.663830, 25.120338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.004681, 38.756123, 25.166779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028149, -0.352755, 0.935292,
		0.256757, -0.906822, -0.334290,
		0.966066, 0.230733, 0.116099,
		32.294502, 38.825344, 25.201609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.003418, 37.992664, 25.374567>,  <31.618254, 38.663830, 25.120338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.003418, 37.992664, 25.374567> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188618, 38.338242, 25.453802>,  <32.299736, 38.545586, 25.501343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.188618, 38.338242, 25.453802>,  <32.003418, 37.992664, 25.374567>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188618, 38.338242, 25.453802> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205149, -0.112963, 0.972190,
		0.862290, -0.490761, 0.124935,
		0.463000, 0.863940, 0.198087,
		32.327518, 38.597424, 25.513227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.443748, 37.779072, 25.934816>,  <32.003418, 37.992664, 25.374567>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.443748, 37.779072, 25.934816> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423664, 38.178455, 25.944202>,  <32.411613, 38.418087, 25.949835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.423664, 38.178455, 25.944202>,  <32.443748, 37.779072, 25.934816>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.423664, 38.178455, 25.944202> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176745, -0.032007, 0.983736,
		0.982975, 0.045246, 0.178080,
		-0.050210, 0.998463, 0.023465,
		32.408600, 38.477993, 25.951242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.322933, 37.772457, 26.165945>,  <32.443748, 37.779072, 25.934816>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.322933, 37.772457, 26.165945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578289, 37.473122, 26.238003>,  <33.731503, 37.293522, 26.281237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.578289, 37.473122, 26.238003>,  <33.322933, 37.772457, 26.165945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.578289, 37.473122, 26.238003> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242505, -0.026577, -0.969786,
		0.730517, 0.662783, 0.164510,
		0.638385, -0.748340, 0.180144,
		33.769806, 37.248619, 26.292046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.979275, 37.952522, 25.747576>,  <33.322933, 37.772457, 26.165945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.979275, 37.952522, 25.747576> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956150, 37.562057, 25.831255>,  <33.942276, 37.327778, 25.881462>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.956150, 37.562057, 25.831255>,  <33.979275, 37.952522, 25.747576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.956150, 37.562057, 25.831255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312164, -0.216716, -0.924980,
		0.948267, 0.011826, 0.317252,
		-0.057815, -0.976163, 0.209197,
		33.938805, 37.269207, 25.894014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608116, 37.705029, 25.636543>,  <33.979275, 37.952522, 25.747576>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608116, 37.705029, 25.636543> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384182, 37.374622, 25.610376>,  <34.249821, 37.176380, 25.594677>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.384182, 37.374622, 25.610376>,  <34.608116, 37.705029, 25.636543>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384182, 37.374622, 25.610376> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369129, -0.177938, -0.912185,
		0.741839, -0.534824, 0.404523,
		-0.559838, -0.826015, -0.065418,
		34.216232, 37.126820, 25.590752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.096931, 37.132992, 25.564423>,  <34.608116, 37.705029, 25.636543>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.096931, 37.132992, 25.564423> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740158, 37.036827, 25.411242>,  <34.526093, 36.979130, 25.319332>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.740158, 37.036827, 25.411242>,  <35.096931, 37.132992, 25.564423>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740158, 37.036827, 25.411242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428296, -0.177691, -0.885996,
		0.144956, -0.954268, 0.261456,
		-0.891936, -0.240411, -0.382952,
		34.472576, 36.964703, 25.296356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.278442, 36.603889, 25.037249>,  <35.096931, 37.132992, 25.564423>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.278442, 36.603889, 25.037249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900501, 36.689072, 24.937719>,  <34.673737, 36.740181, 24.878002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900501, 36.689072, 24.937719>,  <35.278442, 36.603889, 25.037249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900501, 36.689072, 24.937719> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164298, -0.349025, -0.922598,
		-0.283312, -0.912597, 0.294789,
		-0.944849, 0.212950, -0.248821,
		34.617046, 36.752956, 24.863073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.116959, 36.078735, 24.558493>,  <35.278442, 36.603889, 25.037249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.116959, 36.078735, 24.558493> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845676, 36.364723, 24.490536>,  <34.682907, 36.536316, 24.449762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845676, 36.364723, 24.490536>,  <35.116959, 36.078735, 24.558493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.845676, 36.364723, 24.490536> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017529, -0.246858, -0.968893,
		-0.734664, -0.654130, 0.179953,
		-0.678204, 0.714966, -0.169892,
		34.642216, 36.579212, 24.439568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.623653, 35.808563, 24.075668>,  <35.116959, 36.078735, 24.558493>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.623653, 35.808563, 24.075668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615223, 36.208256, 24.062393>,  <34.610165, 36.448071, 24.054428>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.615223, 36.208256, 24.062393>,  <34.623653, 35.808563, 24.075668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.615223, 36.208256, 24.062393> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017853, -0.033564, -0.999277,
		-0.999618, -0.020469, 0.018547,
		-0.021076, 0.999227, -0.033186,
		34.608898, 36.508022, 24.052437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.039200, 35.971985, 23.537842>,  <34.623653, 35.808563, 24.075668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.039200, 35.971985, 23.537842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274208, 36.292946, 23.579752>,  <34.415215, 36.485523, 23.604898>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.274208, 36.292946, 23.579752>,  <34.039200, 35.971985, 23.537842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274208, 36.292946, 23.579752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145998, 0.022245, -0.989035,
		-0.795931, 0.596374, -0.104079,
		0.587520, 0.802398, 0.104775,
		34.450462, 36.533665, 23.611185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.825459, 36.451591, 22.981909>,  <34.039200, 35.971985, 23.537842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.825459, 36.451591, 22.981909> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197041, 36.562088, 23.080488>,  <34.419991, 36.628384, 23.139635>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.197041, 36.562088, 23.080488>,  <33.825459, 36.451591, 22.981909>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.197041, 36.562088, 23.080488> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270119, -0.050569, -0.961498,
		-0.253140, 0.959758, -0.121593,
		0.928954, 0.276238, 0.246448,
		34.475727, 36.644958, 23.154423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.982250, 36.847954, 22.441412>,  <33.825459, 36.451591, 22.981909>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.982250, 36.847954, 22.441412> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337536, 36.799816, 22.618765>,  <34.550709, 36.770935, 22.725176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.337536, 36.799816, 22.618765>,  <33.982250, 36.847954, 22.441412>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337536, 36.799816, 22.618765> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427108, -0.139256, -0.893413,
		0.169261, 0.982917, -0.072290,
		0.888217, -0.120344, 0.443382,
		34.604000, 36.763714, 22.751780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.420345, 37.445427, 22.157415>,  <33.982250, 36.847954, 22.441412>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.420345, 37.445427, 22.157415> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640530, 37.137917, 22.287626>,  <34.772640, 36.953411, 22.365753>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.640530, 37.137917, 22.287626>,  <34.420345, 37.445427, 22.157415>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.640530, 37.137917, 22.287626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428959, -0.074067, -0.900282,
		0.716230, 0.635210, 0.289004,
		0.550463, -0.768780, 0.325528,
		34.805668, 36.907284, 22.385284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.015152, 37.507290, 21.889599>,  <34.420345, 37.445427, 22.157415>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.015152, 37.507290, 21.889599> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042019, 37.116535, 21.970779>,  <35.058140, 36.882084, 22.019487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.042019, 37.116535, 21.970779>,  <35.015152, 37.507290, 21.889599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042019, 37.116535, 21.970779> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262003, -0.179003, -0.948321,
		0.962727, 0.116873, 0.243922,
		0.067170, -0.976882, 0.202952,
		35.062168, 36.823471, 22.031666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693653, 37.231560, 21.563343>,  <35.015152, 37.507290, 21.889599>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693653, 37.231560, 21.563343> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471405, 36.908165, 21.640940>,  <35.338055, 36.714127, 21.687498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471405, 36.908165, 21.640940>,  <35.693653, 37.231560, 21.563343>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.471405, 36.908165, 21.640940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197438, -0.354946, -0.913800,
		0.807654, -0.469424, 0.356842,
		-0.555620, -0.808488, 0.193991,
		35.304718, 36.665619, 21.699137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064949, 36.689892, 21.139055>,  <35.693653, 37.231560, 21.563343>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064949, 36.689892, 21.139055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701462, 36.557510, 21.240795>,  <35.483368, 36.478081, 21.301840>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.701462, 36.557510, 21.240795>,  <36.064949, 36.689892, 21.139055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.701462, 36.557510, 21.240795> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143551, -0.324392, -0.934967,
		0.391944, -0.886136, 0.247272,
		-0.908721, -0.330958, 0.254349,
		35.428844, 36.458221, 21.317101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<25.832850, 34.391029, 21.503817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.146347, 34.631485, 21.566275>,  <26.334446, 34.775757, 21.603748>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.146347, 34.631485, 21.566275>,  <25.832850, 34.391029, 21.503817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.146347, 34.631485, 21.566275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037365, -0.205313, 0.977983,
		0.619961, -0.772321, -0.138451,
		0.783742, 0.601138, 0.156144,
		26.381470, 34.811825, 21.613117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.310905, 33.985939, 21.957598>,  <25.832850, 34.391029, 21.503817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.310905, 33.985939, 21.957598> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.455421, 34.356274, 22.001955>,  <26.542131, 34.578476, 22.028570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.455421, 34.356274, 22.001955>,  <26.310905, 33.985939, 21.957598>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.455421, 34.356274, 22.001955> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028129, -0.129693, 0.991155,
		0.932030, -0.354973, -0.072899,
		0.361288, 0.925837, 0.110892,
		26.563808, 34.634026, 22.035223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.006704, 33.921406, 22.362686>,  <26.310905, 33.985939, 21.957598>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.006704, 33.921406, 22.362686> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.851261, 34.285679, 22.418753>,  <26.757996, 34.504242, 22.452393>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.851261, 34.285679, 22.418753>,  <27.006704, 33.921406, 22.362686>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.851261, 34.285679, 22.418753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133078, -0.095052, 0.986537,
		0.911743, 0.402028, -0.084253,
		-0.388607, 0.910680, 0.140164,
		26.734678, 34.558884, 22.460802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.515213, 34.324135, 22.826647>,  <27.006704, 33.921406, 22.362686>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.515213, 34.324135, 22.826647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.152071, 34.489777, 22.852915>,  <26.934185, 34.589161, 22.868675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.152071, 34.489777, 22.852915>,  <27.515213, 34.324135, 22.826647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.152071, 34.489777, 22.852915> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014772, -0.124938, 0.992055,
		0.419023, 0.901612, 0.107308,
		-0.907856, 0.414108, 0.065671,
		26.879715, 34.614010, 22.872616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.621328, 34.897305, 23.390455>,  <27.515213, 34.324135, 22.826647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.621328, 34.897305, 23.390455> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.223549, 34.858593, 23.373928>,  <26.984882, 34.835365, 23.364012>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.223549, 34.858593, 23.373928>,  <27.621328, 34.897305, 23.390455>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.223549, 34.858593, 23.373928> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071801, 0.336974, 0.938772,
		-0.076933, 0.936526, -0.342052,
		-0.994447, -0.096782, -0.041319,
		26.925215, 34.829559, 23.361532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.323498, 35.587421, 23.623009>,  <27.621328, 34.897305, 23.390455>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.323498, 35.587421, 23.623009> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.036673, 35.309288, 23.642300>,  <26.864576, 35.142406, 23.653873>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.036673, 35.309288, 23.642300>,  <27.323498, 35.587421, 23.623009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036673, 35.309288, 23.642300> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006941, 0.076311, 0.997060,
		-0.696972, 0.714622, -0.059546,
		-0.717065, -0.695336, 0.048227,
		26.821552, 35.100689, 23.656767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.815727, 35.883083, 24.098803>,  <27.323498, 35.587421, 23.623009>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.815727, 35.883083, 24.098803> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.730017, 35.492374, 24.099329>,  <26.678591, 35.257950, 24.099644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.730017, 35.492374, 24.099329>,  <26.815727, 35.883083, 24.098803>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.730017, 35.492374, 24.099329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301475, 0.067415, 0.951088,
		-0.929085, 0.203398, -0.308917,
		-0.214275, -0.976772, 0.001315,
		26.665733, 35.199341, 24.099724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.258825, 35.919060, 24.369167>,  <26.815727, 35.883083, 24.098803>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.258825, 35.919060, 24.369167> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.423174, 35.557610, 24.417564>,  <26.521782, 35.340736, 24.446602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.423174, 35.557610, 24.417564>,  <26.258825, 35.919060, 24.369167>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.423174, 35.557610, 24.417564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169861, 0.054513, 0.983959,
		-0.895731, -0.424830, -0.131094,
		0.410869, -0.903630, 0.120991,
		26.546434, 35.286522, 24.453861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.870539, 35.653980, 24.854527>,  <26.258825, 35.919060, 24.369167>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.870539, 35.653980, 24.854527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.198742, 35.427296, 24.884478>,  <26.395664, 35.291286, 24.902449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.198742, 35.427296, 24.884478>,  <25.870539, 35.653980, 24.854527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.198742, 35.427296, 24.884478> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137274, -0.068190, 0.988183,
		-0.554908, -0.821091, -0.133745,
		0.820508, -0.566710, 0.074876,
		26.444895, 35.257282, 24.906940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776320, 35.086296, 25.384417>,  <25.870539, 35.653980, 24.854527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776320, 35.086296, 25.384417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.173281, 35.120434, 25.348967>,  <26.411457, 35.140915, 25.327698>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.173281, 35.120434, 25.348967>,  <25.776320, 35.086296, 25.384417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.173281, 35.120434, 25.348967> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083800, 0.058539, 0.994762,
		0.090093, -0.994630, 0.050942,
		0.992401, 0.085352, -0.088624,
		26.471001, 35.146038, 25.322380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.114233, 34.619953, 25.789658>,  <25.776320, 35.086296, 25.384417>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.114233, 34.619953, 25.789658> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.400921, 34.898350, 25.772217>,  <26.572933, 35.065388, 25.761751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.400921, 34.898350, 25.772217>,  <26.114233, 34.619953, 25.789658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.400921, 34.898350, 25.772217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172581, -0.116444, 0.978088,
		0.675668, -0.708541, -0.203574,
		0.716721, 0.695996, -0.043603,
		26.615936, 35.107147, 25.759136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.426670, 34.392689, 26.394238>,  <26.114233, 34.619953, 25.789658>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.426670, 34.392689, 26.394238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.623251, 34.725418, 26.291056>,  <26.741199, 34.925056, 26.229147>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<26.623251, 34.725418, 26.291056>,  <26.426670, 34.392689, 26.394238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.623251, 34.725418, 26.291056> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203367, 0.178391, 0.962714,
		0.846826, -0.525589, -0.081495,
		0.491454, 0.831825, -0.257954,
		26.770687, 34.974964, 26.213669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.090242, 34.281395, 26.612923>,  <26.426670, 34.392689, 26.394238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.090242, 34.281395, 26.612923> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.046194, 34.678650, 26.597212>,  <27.019766, 34.917004, 26.587786>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.046194, 34.678650, 26.597212>,  <27.090242, 34.281395, 26.612923>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.046194, 34.678650, 26.597212> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434111, 0.083608, 0.896971,
		0.894104, 0.081723, -0.440341,
		-0.110119, 0.993142, -0.039277,
		27.013159, 34.976593, 26.585428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.802731, 34.555882, 26.809238>,  <27.090242, 34.281395, 26.612923>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.802731, 34.555882, 26.809238> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.524464, 34.838844, 26.859236>,  <27.357504, 35.008621, 26.889235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<27.524464, 34.838844, 26.859236>,  <27.802731, 34.555882, 26.809238>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.524464, 34.838844, 26.859236> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393145, 0.229293, 0.890428,
		0.601234, 0.668582, -0.437625,
		-0.695668, 0.707406, 0.124991,
		27.315763, 35.051067, 26.896732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.572145, 34.586071, 26.777834>,  <27.802731, 34.555882, 26.809238>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.572145, 34.586071, 26.777834> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.803055, 34.264835, 26.836887>,  <28.941601, 34.072094, 26.872320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.803055, 34.264835, 26.836887>,  <28.572145, 34.586071, 26.777834>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.803055, 34.264835, 26.836887> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024793, -0.163481, -0.986235,
		0.816174, 0.572988, -0.074462,
		0.577274, -0.803093, 0.147635,
		28.976236, 34.023907, 26.881178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955868, 34.580990, 26.188353>,  <28.572145, 34.586071, 26.777834>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955868, 34.580990, 26.188353> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.058838, 34.207623, 26.288324>,  <29.120619, 33.983601, 26.348309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.058838, 34.207623, 26.288324>,  <28.955868, 34.580990, 26.188353>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.058838, 34.207623, 26.288324> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319961, -0.161719, -0.933526,
		0.911788, 0.320280, 0.257027,
		0.257424, -0.933417, 0.249930,
		29.136065, 33.927597, 26.363304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.610394, 34.425804, 25.884893>,  <28.955868, 34.580990, 26.188353>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.610394, 34.425804, 25.884893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.460890, 34.065018, 25.971388>,  <29.371187, 33.848545, 26.023285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.460890, 34.065018, 25.971388>,  <29.610394, 34.425804, 25.884893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.460890, 34.065018, 25.971388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416652, -0.371554, -0.829668,
		0.828678, -0.219999, 0.514678,
		-0.373757, -0.901969, 0.216236,
		29.348763, 33.794426, 26.036259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.194168, 33.896152, 25.765902>,  <29.610394, 34.425804, 25.884893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.194168, 33.896152, 25.765902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.846998, 33.697853, 25.753637>,  <29.638697, 33.578873, 25.746279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.846998, 33.697853, 25.753637>,  <30.194168, 33.896152, 25.765902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.846998, 33.697853, 25.753637> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212063, -0.314028, -0.925427,
		0.449151, -0.809703, 0.377683,
		-0.867924, -0.495749, -0.030662,
		29.586620, 33.549129, 25.744438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.368195, 33.337879, 25.332155>,  <30.194168, 33.896152, 25.765902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.368195, 33.337879, 25.332155> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.968660, 33.352554, 25.344660>,  <29.728939, 33.361359, 25.352163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.968660, 33.352554, 25.344660>,  <30.368195, 33.337879, 25.332155>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.968660, 33.352554, 25.344660> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038185, -0.206541, -0.977693,
		-0.029409, -0.977750, 0.207702,
		-0.998838, 0.036684, 0.031261,
		29.669008, 33.363560, 25.354038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.055727, 32.686718, 25.120943>,  <30.368195, 33.337879, 25.332155>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.055727, 32.686718, 25.120943> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.798088, 32.980137, 25.034174>,  <29.643505, 33.156189, 24.982113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.798088, 32.980137, 25.034174>,  <30.055727, 32.686718, 25.120943>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.798088, 32.980137, 25.034174> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051734, -0.324703, -0.944400,
		-0.763193, -0.597062, 0.247089,
		-0.644096, 0.733543, -0.216922,
		29.604858, 33.200199, 24.969097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.737568, 32.465572, 24.543270>,  <30.055727, 32.686718, 25.120943>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.737568, 32.465572, 24.543270> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.601006, 32.841507, 24.548079>,  <29.519068, 33.067070, 24.550964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.601006, 32.841507, 24.548079>,  <29.737568, 32.465572, 24.543270>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.601006, 32.841507, 24.548079> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077748, -0.015493, -0.996853,
		-0.936696, -0.341264, 0.078359,
		-0.341404, 0.939840, 0.012020,
		29.498585, 33.123459, 24.551685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265850, 32.540501, 23.943527>,  <29.737568, 32.465572, 24.543270>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265850, 32.540501, 23.943527> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.345070, 32.920372, 24.040590>,  <29.392603, 33.148296, 24.098827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.345070, 32.920372, 24.040590>,  <29.265850, 32.540501, 23.943527>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.345070, 32.920372, 24.040590> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269866, 0.290823, -0.917929,
		-0.942310, 0.116312, 0.313885,
		0.198051, 0.949681, 0.242657,
		29.404486, 33.205276, 24.113388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.690468, 32.901470, 23.666996>,  <29.265850, 32.540501, 23.943527>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.690468, 32.901470, 23.666996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.997923, 33.155262, 23.699564>,  <29.182396, 33.307537, 23.719105>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.997923, 33.155262, 23.699564>,  <28.690468, 32.901470, 23.666996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.997923, 33.155262, 23.699564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036168, 0.170185, -0.984748,
		-0.638659, 0.753972, 0.153759,
		0.768640, 0.634479, 0.081421,
		29.228516, 33.345604, 23.723989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.492809, 33.540577, 23.368965>,  <28.690468, 32.901470, 23.666996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.492809, 33.540577, 23.368965> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.892160, 33.518749, 23.362455>,  <29.131771, 33.505653, 23.358549>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.892160, 33.518749, 23.362455>,  <28.492809, 33.540577, 23.368965>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.892160, 33.518749, 23.362455> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004147, 0.354703, -0.934970,
		0.056793, 0.933385, 0.354354,
		0.998377, -0.054569, -0.016274,
		29.191673, 33.502380, 23.357573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.750467, 34.173656, 23.048784>,  <28.492809, 33.540577, 23.368965>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.750467, 34.173656, 23.048784> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.001804, 33.867855, 22.991203>,  <29.152607, 33.684376, 22.956654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.001804, 33.867855, 22.991203>,  <28.750467, 34.173656, 23.048784>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.001804, 33.867855, 22.991203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075095, 0.243788, -0.966917,
		0.774304, 0.596745, 0.210593,
		0.628343, -0.764502, -0.143954,
		29.190308, 33.638504, 22.948017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.144337, 34.454723, 22.529806>,  <28.750467, 34.173656, 23.048784>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.144337, 34.454723, 22.529806> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.217901, 34.061745, 22.517279>,  <29.262039, 33.825958, 22.509762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.217901, 34.061745, 22.517279>,  <29.144337, 34.454723, 22.529806>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.217901, 34.061745, 22.517279> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141510, 0.057992, -0.988237,
		0.972703, 0.177316, 0.149691,
		0.183911, -0.982444, -0.031317,
		29.273075, 33.767010, 22.507883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.802404, 34.338139, 22.179083>,  <29.144337, 34.454723, 22.529806>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.802404, 34.338139, 22.179083> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.550140, 34.029667, 22.144325>,  <29.398781, 33.844585, 22.123470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.550140, 34.029667, 22.144325>,  <29.802404, 34.338139, 22.179083>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.550140, 34.029667, 22.144325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007658, 0.105778, -0.994360,
		0.776020, -0.627770, -0.060804,
		-0.630661, -0.771178, -0.086893,
		29.360943, 33.798313, 22.118258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152771, 34.192924, 21.611624>,  <29.802404, 34.338139, 22.179083>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152771, 34.192924, 21.611624> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.812641, 33.982685, 21.622139>,  <29.608562, 33.856541, 21.628448>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.812641, 33.982685, 21.622139>,  <30.152771, 34.192924, 21.611624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.812641, 33.982685, 21.622139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246016, 0.352860, -0.902755,
		0.465213, -0.774102, -0.429352,
		-0.850325, -0.525601, 0.026286,
		29.557543, 33.825005, 21.630026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.686346, 33.698708, 21.541683>,  <30.152771, 34.192924, 21.611624>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.686346, 33.698708, 21.541683> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.056683, 33.710529, 21.390984>,  <31.278885, 33.717621, 21.300564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.056683, 33.710529, 21.390984>,  <30.686346, 33.698708, 21.541683>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.056683, 33.710529, 21.390984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375848, 0.031924, 0.926131,
		0.039406, -0.999053, 0.018446,
		0.925843, 0.029562, -0.376750,
		31.334436, 33.719395, 21.277958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.058922, 33.160011, 21.898098>,  <30.686346, 33.698708, 21.541683>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.058922, 33.160011, 21.898098> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.329126, 33.429840, 21.779011>,  <31.491249, 33.591740, 21.707558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.329126, 33.429840, 21.779011>,  <31.058922, 33.160011, 21.898098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.329126, 33.429840, 21.779011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503928, -0.127602, 0.854268,
		0.538278, -0.727095, -0.426133,
		0.675510, 0.674574, -0.297719,
		31.531780, 33.632214, 21.689695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.657484, 32.855373, 21.997814>,  <31.058922, 33.160011, 21.898098>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.657484, 32.855373, 21.997814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.745098, 33.245132, 21.977509>,  <31.797667, 33.478989, 21.965324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.745098, 33.245132, 21.977509>,  <31.657484, 32.855373, 21.997814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.745098, 33.245132, 21.977509> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481153, -0.062603, 0.874398,
		0.848832, -0.215949, -0.482546,
		0.219034, 0.974396, -0.050765,
		31.810808, 33.537453, 21.962278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333458, 32.814625, 22.188473>,  <31.657484, 32.855373, 21.997814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333458, 32.814625, 22.188473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.226559, 33.197807, 22.230223>,  <32.162418, 33.427719, 22.255272>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.226559, 33.197807, 22.230223>,  <32.333458, 32.814625, 22.188473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.226559, 33.197807, 22.230223> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496414, 0.044024, 0.866969,
		0.825926, 0.283506, -0.487310,
		-0.267244, 0.957959, 0.104375,
		32.146385, 33.485195, 22.261536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.976604, 33.188072, 22.330587>,  <32.333458, 32.814625, 22.188473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.976604, 33.188072, 22.330587> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.670650, 33.410576, 22.460529>,  <32.487080, 33.544079, 22.538494>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.670650, 33.410576, 22.460529>,  <32.976604, 33.188072, 22.330587>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.670650, 33.410576, 22.460529> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538476, 0.275338, 0.796387,
		0.353552, 0.784070, -0.510133,
		-0.764882, 0.556258, 0.324857,
		32.441185, 33.577454, 22.557987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.309692, 33.707150, 22.782211>,  <32.976604, 33.188072, 22.330587>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.309692, 33.707150, 22.782211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.926189, 33.754555, 22.885542>,  <32.696087, 33.782997, 22.947540>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.926189, 33.754555, 22.885542>,  <33.309692, 33.707150, 22.782211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.926189, 33.754555, 22.885542> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274238, 0.147057, 0.950351,
		0.074641, 0.982002, -0.173494,
		-0.958761, 0.118514, 0.258326,
		32.638561, 33.790108, 22.963039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287796, 34.284187, 23.224688>,  <33.309692, 33.707150, 22.782211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287796, 34.284187, 23.224688> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962307, 34.066891, 23.307394>,  <32.767014, 33.936512, 23.357018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.962307, 34.066891, 23.307394>,  <33.287796, 34.284187, 23.224688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.962307, 34.066891, 23.307394> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291169, -0.073078, 0.953876,
		-0.503073, 0.836391, 0.217640,
		-0.813719, -0.543239, 0.206768,
		32.718193, 33.903919, 23.369425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.093987, 34.633476, 23.787682>,  <33.287796, 34.284187, 23.224688>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.093987, 34.633476, 23.787682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.885483, 34.292274, 23.798122>,  <32.760380, 34.087555, 23.804388>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.885483, 34.292274, 23.798122>,  <33.093987, 34.633476, 23.787682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.885483, 34.292274, 23.798122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167982, -0.072566, 0.983115,
		-0.836705, 0.516839, 0.181114,
		-0.521255, -0.853001, 0.026103,
		32.729107, 34.036373, 23.805954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.600307, 34.625767, 24.379179>,  <33.093987, 34.633476, 23.787682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.600307, 34.625767, 24.379179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.633728, 34.231308, 24.321852>,  <32.653782, 33.994633, 24.287457>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.633728, 34.231308, 24.321852>,  <32.600307, 34.625767, 24.379179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633728, 34.231308, 24.321852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064398, -0.148862, 0.986759,
		-0.994420, -0.073217, -0.075943,
		0.083552, -0.986144, -0.143316,
		32.658794, 33.935463, 24.278856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.054504, 34.334171, 24.530603>,  <32.600307, 34.625767, 24.379179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.054504, 34.334171, 24.530603> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.296574, 34.017735, 24.566240>,  <32.441814, 33.827873, 24.587624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.296574, 34.017735, 24.566240>,  <32.054504, 34.334171, 24.530603>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.296574, 34.017735, 24.566240> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191351, -0.035914, 0.980864,
		-0.772754, -0.610642, -0.173110,
		0.605174, -0.791092, 0.089094,
		32.478127, 33.780407, 24.592968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.671732, 33.887939, 24.895981>,  <32.054504, 34.334171, 24.530603>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.671732, 33.887939, 24.895981> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.053207, 33.779339, 24.947779>,  <32.282093, 33.714180, 24.978857>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.053207, 33.779339, 24.947779>,  <31.671732, 33.887939, 24.895981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053207, 33.779339, 24.947779> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159726, -0.092285, 0.982838,
		-0.254894, -0.958003, -0.131377,
		0.953686, -0.271504, 0.129496,
		32.339314, 33.697887, 24.986628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.604166, 33.360676, 25.349890>,  <31.671732, 33.887939, 24.895981>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.604166, 33.360676, 25.349890> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987770, 33.466053, 25.391653>,  <32.217934, 33.529278, 25.416712>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.987770, 33.466053, 25.391653>,  <31.604166, 33.360676, 25.349890>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987770, 33.466053, 25.391653> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092166, -0.058449, 0.994027,
		0.267973, -0.962902, -0.031773,
		0.959008, 0.263444, 0.104410,
		32.275471, 33.545086, 25.422976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.899921, 32.794369, 25.712030>,  <31.604166, 33.360676, 25.349890>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.899921, 32.794369, 25.712030> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.134842, 33.111622, 25.776546>,  <32.275795, 33.301975, 25.815256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.134842, 33.111622, 25.776546>,  <31.899921, 32.794369, 25.712030>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.134842, 33.111622, 25.776546> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050370, -0.234711, 0.970759,
		0.807801, -0.562002, -0.177795,
		0.587299, 0.793136, 0.161291,
		32.311031, 33.349564, 25.824934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.281654, 32.569736, 26.218439>,  <31.899921, 32.794369, 25.712030>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.281654, 32.569736, 26.218439> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341827, 32.965168, 26.221992>,  <32.377930, 33.202427, 26.224125>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.341827, 32.965168, 26.221992>,  <32.281654, 32.569736, 26.218439>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.341827, 32.965168, 26.221992> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007791, -0.007798, 0.999939,
		0.988590, -0.150490, 0.006529,
		0.150430, 0.988581, 0.008882,
		32.386955, 33.261742, 26.224657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<36.043728, 35.850601, 20.951303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671860, 35.992889, 20.989599>,  <35.448738, 36.078262, 21.012577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.671860, 35.992889, 20.989599>,  <36.043728, 35.850601, 20.951303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.671860, 35.992889, 20.989599> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235506, -0.374068, -0.897000,
		-0.283267, -0.856467, 0.431536,
		-0.929676, 0.355720, 0.095742,
		35.392956, 36.099606, 21.018322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553089, 35.260311, 20.982195>,  <36.043728, 35.850601, 20.951303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553089, 35.260311, 20.982195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385262, 35.596958, 20.846170>,  <35.284565, 35.798946, 20.764557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.385262, 35.596958, 20.846170>,  <35.553089, 35.260311, 20.982195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.385262, 35.596958, 20.846170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188007, -0.447076, -0.874515,
		-0.888042, -0.302983, 0.345808,
		-0.419565, 0.841620, -0.340060,
		35.259392, 35.849445, 20.744152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.892712, 35.036369, 20.663778>,  <35.553089, 35.260311, 20.982195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.892712, 35.036369, 20.663778> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947487, 35.396111, 20.497690>,  <34.980354, 35.611954, 20.398037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.947487, 35.396111, 20.497690>,  <34.892712, 35.036369, 20.663778>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.947487, 35.396111, 20.497690> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273699, -0.368499, -0.888424,
		-0.952017, 0.235307, 0.195689,
		0.136941, 0.899355, -0.415221,
		34.988567, 35.665916, 20.373123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.331459, 35.202835, 20.209101>,  <34.892712, 35.036369, 20.663778>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.331459, 35.202835, 20.209101> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569252, 35.498886, 20.083372>,  <34.711929, 35.676517, 20.007935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.569252, 35.498886, 20.083372>,  <34.331459, 35.202835, 20.209101>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.569252, 35.498886, 20.083372> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245252, -0.205379, -0.947455,
		-0.765793, 0.640336, 0.059423,
		0.594486, 0.740128, -0.314321,
		34.747597, 35.720924, 19.989077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.945408, 35.642242, 19.686356>,  <34.331459, 35.202835, 20.209101>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.945408, 35.642242, 19.686356> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324474, 35.742805, 19.607639>,  <34.551914, 35.803143, 19.560410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.324474, 35.742805, 19.607639>,  <33.945408, 35.642242, 19.686356>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324474, 35.742805, 19.607639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215180, 0.047600, -0.975414,
		-0.235860, 0.966710, 0.099207,
		0.947664, 0.251408, -0.196790,
		34.608772, 35.818230, 19.548603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.862698, 36.266598, 19.339615>,  <33.945408, 35.642242, 19.686356>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.862698, 36.266598, 19.339615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229115, 36.147873, 19.231716>,  <34.448967, 36.076637, 19.166977>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.229115, 36.147873, 19.231716>,  <33.862698, 36.266598, 19.339615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.229115, 36.147873, 19.231716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282654, -0.000596, -0.959222,
		0.284546, 0.954936, -0.084440,
		0.916046, -0.296810, -0.269747,
		34.503929, 36.058830, 19.150791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186417, 36.642349, 18.739927>,  <33.862698, 36.266598, 19.339615>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186417, 36.642349, 18.739927> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386150, 36.295956, 18.750715>,  <34.505993, 36.088120, 18.757189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.386150, 36.295956, 18.750715>,  <34.186417, 36.642349, 18.739927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.386150, 36.295956, 18.750715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047541, -0.058467, -0.997157,
		0.865103, 0.496634, -0.070365,
		0.499336, -0.865988, 0.026969,
		34.535950, 36.036160, 18.758806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444313, 36.603012, 18.024324>,  <34.186417, 36.642349, 18.739927>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444313, 36.603012, 18.024324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480171, 36.241432, 18.191580>,  <34.501686, 36.024483, 18.291933>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.480171, 36.241432, 18.191580>,  <34.444313, 36.603012, 18.024324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.480171, 36.241432, 18.191580> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166516, -0.400316, -0.901121,
		0.981955, 0.150412, 0.114633,
		0.089650, -0.903949, 0.418139,
		34.507065, 35.970249, 18.317022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836796, 36.106079, 17.506430>,  <34.444313, 36.603012, 18.024324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836796, 36.106079, 17.506430> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632057, 35.859642, 17.745909>,  <34.509216, 35.711781, 17.889597>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.632057, 35.859642, 17.745909>,  <34.836796, 36.106079, 17.506430>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632057, 35.859642, 17.745909> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015738, -0.690067, -0.723575,
		0.858935, -0.379779, 0.343509,
		-0.511843, -0.616097, 0.598699,
		34.478504, 35.674812, 17.925518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.199429, 35.543789, 17.473289>,  <34.836796, 36.106079, 17.506430>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.199429, 35.543789, 17.473289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837208, 35.437439, 17.605524>,  <34.619877, 35.373627, 17.684864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.837208, 35.437439, 17.605524>,  <35.199429, 35.543789, 17.473289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.837208, 35.437439, 17.605524> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040264, -0.721866, -0.690861,
		0.422324, -0.638920, 0.642981,
		-0.905550, -0.265878, 0.330586,
		34.565544, 35.357677, 17.704700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.022495, 34.718121, 17.256718>,  <35.199429, 35.543789, 17.473289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.022495, 34.718121, 17.256718> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664402, 34.859974, 17.364641>,  <34.449547, 34.945087, 17.429396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.664402, 34.859974, 17.364641>,  <35.022495, 34.718121, 17.256718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664402, 34.859974, 17.364641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443927, -0.657261, -0.609047,
		-0.038654, -0.665012, 0.745831,
		-0.895229, 0.354637, 0.269811,
		34.395832, 34.966366, 17.445583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.581009, 34.063534, 17.314375>,  <35.022495, 34.718121, 17.256718>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.581009, 34.063534, 17.314375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335140, 34.375740, 17.268812>,  <34.187618, 34.563065, 17.241474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.335140, 34.375740, 17.268812>,  <34.581009, 34.063534, 17.314375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335140, 34.375740, 17.268812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533585, -0.517797, -0.668710,
		-0.580921, -0.350255, 0.734746,
		-0.614669, 0.780517, -0.113908,
		34.150738, 34.609894, 17.234640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867592, 33.975811, 17.621521>,  <34.581009, 34.063534, 17.314375>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867592, 33.975811, 17.621521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829906, 34.198700, 17.291521>,  <33.807297, 34.332436, 17.093521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.829906, 34.198700, 17.291521>,  <33.867592, 33.975811, 17.621521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.829906, 34.198700, 17.291521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593835, -0.696575, -0.402670,
		-0.799052, 0.451978, 0.396523,
		-0.094210, 0.557224, -0.825000,
		33.801643, 34.365868, 17.044022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153217, 33.873970, 17.377886>,  <33.867592, 33.975811, 17.621521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153217, 33.873970, 17.377886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370594, 33.991871, 17.063486>,  <33.501019, 34.062611, 16.874846>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.370594, 33.991871, 17.063486>,  <33.153217, 33.873970, 17.377886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.370594, 33.991871, 17.063486> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.498523, -0.640015, -0.584684,
		-0.675389, 0.709578, -0.200867,
		0.543437, 0.294753, -0.786000,
		33.533627, 34.080296, 16.827686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.657787, 34.099548, 16.818617>,  <33.153217, 33.873970, 17.377886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.657787, 34.099548, 16.818617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.405090, 34.014256, 16.520508>,  <32.253471, 33.963081, 16.341642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.405090, 34.014256, 16.520508>,  <32.657787, 34.099548, 16.818617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.405090, 34.014256, 16.520508> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649460, -0.379293, 0.659043,
		-0.423206, 0.900372, 0.101130,
		-0.631742, -0.213231, -0.745275,
		32.215569, 33.950287, 16.296925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.010365, 34.385471, 16.946022>,  <32.657787, 34.099548, 16.818617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.010365, 34.385471, 16.946022> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000168, 34.055977, 16.719463>,  <31.994051, 33.858280, 16.583529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.000168, 34.055977, 16.719463>,  <32.010365, 34.385471, 16.946022>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.000168, 34.055977, 16.719463> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589598, -0.445160, 0.673949,
		-0.807295, 0.351125, -0.474328,
		-0.025489, -0.823738, -0.566397,
		31.992521, 33.808857, 16.549543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.215464, 34.155136, 16.859083>,  <32.010365, 34.385471, 16.946022>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.215464, 34.155136, 16.859083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.455227, 33.843582, 16.785282>,  <31.599085, 33.656651, 16.741001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.455227, 33.843582, 16.785282>,  <31.215464, 34.155136, 16.859083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.455227, 33.843582, 16.785282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315098, -0.441498, 0.840115,
		-0.735814, -0.445436, -0.510064,
		0.599409, -0.778888, -0.184504,
		31.635050, 33.609917, 16.729931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848316, 33.586361, 17.021875>,  <31.215464, 34.155136, 16.859083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848316, 33.586361, 17.021875> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224842, 33.451534, 17.028944>,  <31.450758, 33.370640, 17.033186>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.224842, 33.451534, 17.028944>,  <30.848316, 33.586361, 17.021875>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.224842, 33.451534, 17.028944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170098, -0.428505, 0.887384,
		-0.291531, -0.838315, -0.460693,
		0.941316, -0.337062, 0.017673,
		31.507236, 33.350414, 17.034246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.679987, 32.863186, 17.323074>,  <30.848316, 33.586361, 17.021875>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.679987, 32.863186, 17.323074> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061668, 32.976955, 17.360176>,  <31.290676, 33.045216, 17.382437>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.061668, 32.976955, 17.360176>,  <30.679987, 32.863186, 17.323074>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.061668, 32.976955, 17.360176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072990, -0.079348, 0.994171,
		0.290125, -0.955410, -0.054954,
		0.954201, 0.284422, 0.092756,
		31.347929, 33.062283, 17.388002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.966057, 32.446091, 17.827702>,  <30.679987, 32.863186, 17.323074>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.966057, 32.446091, 17.827702> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190468, 32.776928, 17.814053>,  <31.325115, 32.975430, 17.805864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.190468, 32.776928, 17.814053>,  <30.966057, 32.446091, 17.827702>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190468, 32.776928, 17.814053> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055690, 0.078836, 0.995331,
		0.825920, -0.556510, 0.090290,
		0.561030, 0.827092, -0.034120,
		31.358776, 33.025055, 17.803816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.518013, 32.297142, 18.380423>,  <30.966057, 32.446091, 17.827702>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.518013, 32.297142, 18.380423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.522549, 32.691166, 18.311691>,  <31.525270, 32.927582, 18.270452>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.522549, 32.691166, 18.311691>,  <31.518013, 32.297142, 18.380423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.522549, 32.691166, 18.311691> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026485, 0.172076, 0.984728,
		0.999585, -0.006617, 0.028041,
		0.011341, 0.985062, -0.171829,
		31.525951, 32.986683, 18.260143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.037514, 32.591034, 18.749697>,  <31.518013, 32.297142, 18.380423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.037514, 32.591034, 18.749697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826824, 32.922100, 18.672213>,  <31.700409, 33.120739, 18.625721>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.826824, 32.922100, 18.672213>,  <32.037514, 32.591034, 18.749697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.826824, 32.922100, 18.672213> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205211, 0.344962, 0.915909,
		0.824891, 0.442683, -0.351548,
		-0.526728, 0.827667, -0.193712,
		31.668806, 33.170399, 18.614100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365829, 33.026535, 19.174089>,  <32.037514, 32.591034, 18.749697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365829, 33.026535, 19.174089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.010281, 33.188072, 19.087545>,  <31.796951, 33.284996, 19.035620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.010281, 33.188072, 19.087545>,  <32.365829, 33.026535, 19.174089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010281, 33.188072, 19.087545> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053513, 0.377498, 0.924463,
		0.455013, 0.833310, -0.313938,
		-0.888875, 0.403843, -0.216360,
		31.743618, 33.309227, 19.022638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.397217, 33.655678, 19.394339>,  <32.365829, 33.026535, 19.174089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.397217, 33.655678, 19.394339> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.002285, 33.596699, 19.370852>,  <31.765327, 33.561314, 19.356758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.002285, 33.596699, 19.370852>,  <32.397217, 33.655678, 19.394339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.002285, 33.596699, 19.370852> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104577, 0.326117, 0.939527,
		-0.119378, 0.933760, -0.337403,
		-0.987326, -0.147444, -0.058719,
		31.706087, 33.552467, 19.353235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.012520, 34.266323, 19.680277>,  <32.397217, 33.655678, 19.394339>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.012520, 34.266323, 19.680277> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773603, 33.945560, 19.685802>,  <31.630253, 33.753101, 19.689117>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.773603, 33.945560, 19.685802>,  <32.012520, 34.266323, 19.680277>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773603, 33.945560, 19.685802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182254, 0.152485, 0.971356,
		-0.781042, 0.577664, -0.237228,
		-0.597291, -0.801906, 0.013815,
		31.594416, 33.704990, 19.689947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.512747, 34.532188, 20.064201>,  <32.012520, 34.266323, 19.680277>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.512747, 34.532188, 20.064201> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434511, 34.140373, 20.083193>,  <31.387569, 33.905285, 20.094587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.434511, 34.140373, 20.083193>,  <31.512747, 34.532188, 20.064201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.434511, 34.140373, 20.083193> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184084, 0.084225, 0.979295,
		-0.963254, 0.182798, -0.196790,
		-0.195588, -0.979536, 0.047480,
		31.375835, 33.846512, 20.097437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.854626, 34.491749, 20.493401>,  <31.512747, 34.532188, 20.064201>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.854626, 34.491749, 20.493401> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.034088, 34.134399, 20.503138>,  <31.141766, 33.919991, 20.508980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.034088, 34.134399, 20.503138>,  <30.854626, 34.491749, 20.493401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034088, 34.134399, 20.503138> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083493, 0.069018, 0.994115,
		-0.889797, -0.443982, 0.105556,
		0.448654, -0.893374, 0.024342,
		31.168684, 33.866386, 20.510441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.530518, 34.220951, 20.950006>,  <30.854626, 34.491749, 20.493401>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.530518, 34.220951, 20.950006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879227, 34.025154, 20.941881>,  <31.088451, 33.907677, 20.937006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.879227, 34.025154, 20.941881>,  <30.530518, 34.220951, 20.950006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.879227, 34.025154, 20.941881> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129384, 0.190047, 0.973212,
		-0.472516, -0.851048, 0.229010,
		0.871773, -0.489489, -0.020312,
		31.140759, 33.878307, 20.935787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129538, 33.552559, 21.071684>,  <30.530518, 34.220951, 20.950006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129538, 33.552559, 21.071684> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754353, 33.644291, 21.175711>,  <29.529242, 33.699329, 21.238127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.754353, 33.644291, 21.175711>,  <30.129538, 33.552559, 21.071684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.754353, 33.644291, 21.175711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204545, 0.239678, -0.949061,
		-0.279981, -0.943378, -0.177900,
		-0.937962, 0.229331, 0.260069,
		29.472963, 33.713089, 21.253731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830793, 33.292965, 20.556145>,  <30.129538, 33.552559, 21.071684>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830793, 33.292965, 20.556145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.534286, 33.510082, 20.714081>,  <29.356382, 33.640354, 20.808842>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.534286, 33.510082, 20.714081>,  <29.830793, 33.292965, 20.556145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534286, 33.510082, 20.714081> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368874, 0.162020, -0.915249,
		-0.560764, -0.824090, 0.080123,
		-0.741266, 0.542794, 0.394840,
		29.311907, 33.672920, 20.832533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379770, 33.106609, 20.137383>,  <29.830793, 33.292965, 20.556145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379770, 33.106609, 20.137383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.237488, 33.444130, 20.298117>,  <29.152119, 33.646641, 20.394558>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.237488, 33.444130, 20.298117>,  <29.379770, 33.106609, 20.137383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237488, 33.444130, 20.298117> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496553, 0.193625, -0.846135,
		-0.791775, -0.500511, 0.350117,
		-0.355708, 0.843800, 0.401837,
		29.130775, 33.697269, 20.418669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.683950, 33.130524, 20.010212>,  <29.379770, 33.106609, 20.137383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.683950, 33.130524, 20.010212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.808039, 33.506634, 20.066267>,  <28.882492, 33.732300, 20.099899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.808039, 33.506634, 20.066267>,  <28.683950, 33.130524, 20.010212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.808039, 33.506634, 20.066267> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367148, 0.254471, -0.894677,
		-0.876906, 0.226098, 0.424164,
		0.310222, 0.940279, 0.140136,
		28.901106, 33.788719, 20.108309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.119801, 33.587395, 19.878725>,  <28.683950, 33.130524, 20.010212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.119801, 33.587395, 19.878725> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.455080, 33.798695, 19.824497>,  <28.656248, 33.925472, 19.791960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.455080, 33.798695, 19.824497>,  <28.119801, 33.587395, 19.878725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.455080, 33.798695, 19.824497> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337240, 0.306693, -0.890061,
		-0.428592, 0.791768, 0.435215,
		0.838199, 0.528245, -0.135570,
		28.706539, 33.957169, 19.783827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.799313, 34.077587, 19.562576>,  <28.119801, 33.587395, 19.878725>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.799313, 34.077587, 19.562576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.188595, 34.140171, 19.495180>,  <28.422165, 34.177723, 19.454742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.188595, 34.140171, 19.495180>,  <27.799313, 34.077587, 19.562576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.188595, 34.140171, 19.495180> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206612, 0.273508, -0.939417,
		-0.100898, 0.949059, 0.298506,
		0.973207, 0.156460, -0.168491,
		28.480556, 34.187111, 19.444633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.787601, 34.652683, 19.065853>,  <27.799313, 34.077587, 19.562576>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.787601, 34.652683, 19.065853> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.142248, 34.469795, 19.037987>,  <28.355036, 34.360062, 19.021267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.142248, 34.469795, 19.037987>,  <27.787601, 34.652683, 19.065853>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142248, 34.469795, 19.037987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000454, 0.151493, -0.988458,
		0.462501, 0.876354, 0.134524,
		0.886619, -0.457224, -0.069668,
		28.408234, 34.332626, 19.017086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.375494, 34.911278, 19.369556>,  <27.787601, 34.652683, 19.065853>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.375494, 34.911278, 19.369556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.079403, 35.163383, 19.275890>,  <27.901749, 35.314648, 19.219690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.079403, 35.163383, 19.275890>,  <28.375494, 34.911278, 19.369556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.079403, 35.163383, 19.275890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354148, -0.069439, 0.932608,
		0.571525, 0.773273, 0.274606,
		-0.740229, 0.630260, -0.234167,
		27.857334, 35.352463, 19.205641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.310913, 35.298893, 19.989866>,  <28.375494, 34.911278, 19.369556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.310913, 35.298893, 19.989866> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.966856, 35.346378, 19.791447>,  <27.760422, 35.374870, 19.672394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.966856, 35.346378, 19.791447>,  <28.310913, 35.298893, 19.989866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.966856, 35.346378, 19.791447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509979, -0.183128, 0.840468,
		0.008932, 0.975895, 0.218056,
		-0.860141, 0.118711, -0.496050,
		27.708815, 35.381992, 19.642632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.985487, 35.862820, 20.273733>,  <28.310913, 35.298893, 19.989866>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.985487, 35.862820, 20.273733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.684690, 35.668240, 20.095802>,  <27.504211, 35.551491, 19.989044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.684690, 35.668240, 20.095802>,  <27.985487, 35.862820, 20.273733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.684690, 35.668240, 20.095802> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470414, -0.076683, 0.879108,
		-0.461754, 0.870336, -0.171169,
		-0.751993, -0.486452, -0.444827,
		27.459093, 35.522305, 19.962355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.352324, 36.176460, 20.629494>,  <27.985487, 35.862820, 20.273733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.352324, 36.176460, 20.629494> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.247496, 35.828278, 20.462816>,  <27.184599, 35.619370, 20.362810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.247496, 35.828278, 20.462816>,  <27.352324, 36.176460, 20.629494>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.247496, 35.828278, 20.462816> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697341, -0.127672, 0.705276,
		-0.667109, 0.475408, -0.573543,
		-0.262069, -0.870452, -0.416693,
		27.168875, 35.567142, 20.337809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.643612, 36.098465, 20.767097>,  <27.352324, 36.176460, 20.629494>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.643612, 36.098465, 20.767097> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.779663, 35.730160, 20.690660>,  <26.861294, 35.509178, 20.644798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.779663, 35.730160, 20.690660>,  <26.643612, 36.098465, 20.767097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779663, 35.730160, 20.690660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393833, -0.324000, 0.860186,
		-0.853938, -0.217314, -0.472827,
		0.340127, -0.920760, -0.191091,
		26.881701, 35.453934, 20.633333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.021112, 35.611797, 20.793476>,  <26.643612, 36.098465, 20.767097>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.021112, 35.611797, 20.793476> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.350977, 35.393501, 20.852945>,  <26.548897, 35.262524, 20.888628>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.350977, 35.393501, 20.852945>,  <26.021112, 35.611797, 20.793476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.350977, 35.393501, 20.852945> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358884, -0.301678, 0.883285,
		-0.437191, -0.781767, -0.444639,
		0.824661, -0.545738, 0.148673,
		26.598375, 35.229782, 20.897547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730623, 34.958530, 20.940615>,  <26.021112, 35.611797, 20.793476>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730623, 34.958530, 20.940615> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.108200, 35.006359, 21.063692>,  <26.334747, 35.035057, 21.137539>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.108200, 35.006359, 21.063692>,  <25.730623, 34.958530, 20.940615>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108200, 35.006359, 21.063692> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297060, -0.098822, 0.949731,
		0.143970, -0.987895, -0.057761,
		0.943943, 0.119574, 0.307692,
		26.391382, 35.042233, 21.156000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<31.266394, 37.066963, 17.139692> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.468435, 36.721798, 17.146067>,  <31.589661, 36.514698, 17.149891>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.468435, 36.721798, 17.146067>,  <31.266394, 37.066963, 17.139692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.468435, 36.721798, 17.146067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308376, 0.197690, 0.930496,
		-0.806085, -0.465084, 0.365955,
		0.505104, -0.862911, 0.015934,
		31.619967, 36.462925, 17.150846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.045738, 36.771740, 17.669535>,  <31.266394, 37.066963, 17.139692>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.045738, 36.771740, 17.669535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.412388, 36.624779, 17.606525>,  <31.632378, 36.536602, 17.568720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.412388, 36.624779, 17.606525>,  <31.045738, 36.771740, 17.669535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.412388, 36.624779, 17.606525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284199, 0.321819, 0.903141,
		-0.281124, -0.872609, 0.399404,
		0.916624, -0.367405, -0.157523,
		31.687376, 36.514557, 17.559269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.190193, 36.397366, 18.273935>,  <31.045738, 36.771740, 17.669535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.190193, 36.397366, 18.273935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540998, 36.470875, 18.096363>,  <31.751482, 36.514980, 17.989820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.540998, 36.470875, 18.096363>,  <31.190193, 36.397366, 18.273935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.540998, 36.470875, 18.096363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408432, 0.201455, 0.890280,
		0.253049, -0.962102, 0.101617,
		0.877011, 0.183781, -0.443932,
		31.804102, 36.526009, 17.963184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.726078, 36.135536, 18.686546>,  <31.190193, 36.397366, 18.273935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.726078, 36.135536, 18.686546> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.969336, 36.363159, 18.465157>,  <32.115292, 36.499733, 18.332323>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.969336, 36.363159, 18.465157>,  <31.726078, 36.135536, 18.686546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.969336, 36.363159, 18.465157> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471069, 0.302494, 0.828608,
		0.638948, -0.764638, -0.084105,
		0.608144, 0.569057, -0.553475,
		32.151779, 36.533875, 18.299114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.404247, 36.053741, 18.959063>,  <31.726078, 36.135536, 18.686546>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.404247, 36.053741, 18.959063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408718, 36.409584, 18.776426>,  <32.411400, 36.623089, 18.666843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.408718, 36.409584, 18.776426>,  <32.404247, 36.053741, 18.959063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.408718, 36.409584, 18.776426> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568796, 0.369893, 0.734610,
		0.822403, -0.267919, -0.501869,
		0.011178, 0.889606, -0.456592,
		32.412071, 36.676464, 18.639448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181625, 36.351841, 18.900419>,  <32.404247, 36.053741, 18.959063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181625, 36.351841, 18.900419> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.909702, 36.644936, 18.888073>,  <32.746548, 36.820793, 18.880665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.909702, 36.644936, 18.888073>,  <33.181625, 36.351841, 18.900419>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.909702, 36.644936, 18.888073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459769, 0.458594, 0.760463,
		0.571376, 0.502778, -0.648647,
		-0.679810, 0.732738, -0.030868,
		32.705761, 36.864758, 18.878813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.591316, 36.964928, 19.094202>,  <33.181625, 36.351841, 18.900419>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.591316, 36.964928, 19.094202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.208500, 37.069771, 19.143810>,  <32.978809, 37.132675, 19.173574>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.208500, 37.069771, 19.143810>,  <33.591316, 36.964928, 19.094202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208500, 37.069771, 19.143810> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265523, 0.620282, 0.738070,
		0.116528, 0.739290, -0.663228,
		-0.957036, 0.262109, 0.124018,
		32.921391, 37.148403, 19.181015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.641788, 37.558567, 19.427113>,  <33.591316, 36.964928, 19.094202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.641788, 37.558567, 19.427113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251484, 37.480927, 19.467525>,  <33.017300, 37.434341, 19.491774>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.251484, 37.480927, 19.467525>,  <33.641788, 37.558567, 19.427113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.251484, 37.480927, 19.467525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030373, 0.577374, 0.815915,
		-0.216706, 0.793072, -0.569276,
		-0.975764, -0.194104, 0.101032,
		32.958755, 37.422695, 19.497835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278652, 38.120785, 19.292458>,  <33.641788, 37.558567, 19.427113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278652, 38.120785, 19.292458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044785, 37.892265, 19.522860>,  <32.904465, 37.755154, 19.661100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.044785, 37.892265, 19.522860>,  <33.278652, 38.120785, 19.292458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.044785, 37.892265, 19.522860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068107, 0.742058, 0.666866,
		-0.808411, 0.350664, -0.472766,
		-0.584666, -0.571301, 0.576005,
		32.869385, 37.720875, 19.695662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605202, 38.505947, 19.391058>,  <33.278652, 38.120785, 19.292458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605202, 38.505947, 19.391058> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.688499, 38.236176, 19.674406>,  <32.738476, 38.074314, 19.844416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.688499, 38.236176, 19.674406>,  <32.605202, 38.505947, 19.391058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.688499, 38.236176, 19.674406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050200, 0.715922, 0.696373,
		-0.976788, -0.180574, 0.115228,
		0.208241, -0.674424, 0.708369,
		32.750973, 38.033848, 19.886917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.139641, 38.735256, 19.933605>,  <32.605202, 38.505947, 19.391058>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.139641, 38.735256, 19.933605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389503, 38.485973, 20.121824>,  <32.539421, 38.336403, 20.234755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.389503, 38.485973, 20.121824>,  <32.139641, 38.735256, 19.933605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.389503, 38.485973, 20.121824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010933, 0.609492, 0.792717,
		-0.780821, -0.490033, 0.387538,
		0.624659, -0.623207, 0.470547,
		32.576900, 38.299011, 20.262989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.786949, 38.620014, 20.589357>,  <32.139641, 38.735256, 19.933605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.786949, 38.620014, 20.589357> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.177086, 38.541481, 20.629679>,  <32.411167, 38.494362, 20.653872>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.177086, 38.541481, 20.629679>,  <31.786949, 38.620014, 20.589357>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.177086, 38.541481, 20.629679> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017916, 0.384801, 0.922826,
		-0.219970, -0.901877, 0.371795,
		0.975343, -0.196333, 0.100803,
		32.469688, 38.482582, 20.659920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.457312, 37.884762, 20.580322>,  <31.786949, 38.620014, 20.589357>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.457312, 37.884762, 20.580322> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096134, 38.055656, 20.598944>,  <30.879429, 38.158192, 20.610117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096134, 38.055656, 20.598944>,  <31.457312, 37.884762, 20.580322>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096134, 38.055656, 20.598944> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027843, 0.166245, -0.985691,
		-0.428860, -0.888726, -0.162005,
		-0.902942, 0.427234, 0.046552,
		30.825253, 38.183826, 20.612909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.194752, 37.738899, 19.880993>,  <31.457312, 37.884762, 20.580322>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.194752, 37.738899, 19.880993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967272, 38.036518, 20.021265>,  <30.830784, 38.215088, 20.105429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967272, 38.036518, 20.021265>,  <31.194752, 37.738899, 19.880993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967272, 38.036518, 20.021265> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130592, 0.339254, -0.931586,
		-0.812113, -0.575588, -0.095767,
		-0.568698, 0.744046, 0.350680,
		30.796661, 38.259731, 20.126469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555363, 37.659302, 19.467190>,  <31.194752, 37.738899, 19.880993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555363, 37.659302, 19.467190> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557375, 38.025803, 19.627415>,  <30.558582, 38.245705, 19.723549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.557375, 38.025803, 19.627415>,  <30.555363, 37.659302, 19.467190>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.557375, 38.025803, 19.627415> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097350, 0.399114, -0.911719,
		-0.995237, -0.034408, 0.091205,
		0.005031, 0.916255, 0.400563,
		30.558884, 38.300678, 19.747583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943655, 37.971653, 19.375185>,  <30.555363, 37.659302, 19.467190>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943655, 37.971653, 19.375185> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163364, 38.301262, 19.430746>,  <30.295189, 38.499027, 19.464083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.163364, 38.301262, 19.430746>,  <29.943655, 37.971653, 19.375185>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.163364, 38.301262, 19.430746> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173953, 0.275332, -0.945480,
		-0.817337, 0.495163, 0.294573,
		0.549272, 0.824018, 0.138904,
		30.328146, 38.548466, 19.472418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525660, 38.509521, 19.275724>,  <29.943655, 37.971653, 19.375185>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525660, 38.509521, 19.275724> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899656, 38.631981, 19.204102>,  <30.124054, 38.705456, 19.161127>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899656, 38.631981, 19.204102>,  <29.525660, 38.509521, 19.275724>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899656, 38.631981, 19.204102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227623, 0.130811, -0.964923,
		-0.271987, 0.942954, 0.191994,
		0.934992, 0.306148, -0.179059,
		30.180155, 38.723824, 19.150383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422434, 39.086014, 18.740210>,  <29.525660, 38.509521, 19.275724>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422434, 39.086014, 18.740210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797596, 38.948235, 18.723747>,  <30.022694, 38.865566, 18.713869>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.797596, 38.948235, 18.723747>,  <29.422434, 39.086014, 18.740210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.797596, 38.948235, 18.723747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081117, -0.102413, -0.991429,
		0.337280, 0.933203, -0.123994,
		0.937903, -0.344447, -0.041157,
		30.078966, 38.844902, 18.711401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.792484, 39.487747, 18.333391>,  <29.422434, 39.086014, 18.740210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.792484, 39.487747, 18.333391> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014563, 39.155636, 18.313848>,  <30.147810, 38.956367, 18.302122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.014563, 39.155636, 18.313848>,  <29.792484, 39.487747, 18.333391>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.014563, 39.155636, 18.313848> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097657, -0.006739, -0.995197,
		0.825966, 0.557302, -0.084824,
		0.555197, -0.830283, -0.048859,
		30.181122, 38.906551, 18.299191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.388731, 39.694950, 17.931799>,  <29.792484, 39.487747, 18.333391>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.388731, 39.694950, 17.931799> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358391, 39.296326, 17.918488>,  <30.340187, 39.057152, 17.910500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.358391, 39.296326, 17.918488>,  <30.388731, 39.694950, 17.931799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.358391, 39.296326, 17.918488> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011426, 0.034243, -0.999348,
		0.997054, -0.075423, -0.013984,
		-0.075853, -0.996563, -0.033280,
		30.335634, 38.997356, 17.908503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.898935, 39.556976, 17.421711>,  <30.388731, 39.694950, 17.931799>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.898935, 39.556976, 17.421711> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701252, 39.210457, 17.450802>,  <30.582642, 39.002544, 17.468256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.701252, 39.210457, 17.450802>,  <30.898935, 39.556976, 17.421711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.701252, 39.210457, 17.450802> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030457, -0.100859, -0.994434,
		0.868811, -0.489241, 0.076230,
		-0.494207, -0.866297, 0.072727,
		30.552990, 38.950569, 17.472620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.155588, 39.132763, 16.908392>,  <30.898935, 39.556976, 17.421711>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.155588, 39.132763, 16.908392> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.801580, 38.960815, 16.979898>,  <30.589176, 38.857647, 17.022802>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.801580, 38.960815, 16.979898>,  <31.155588, 39.132763, 16.908392>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.801580, 38.960815, 16.979898> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069828, -0.257078, -0.963864,
		0.460289, -0.865521, 0.197502,
		-0.885018, -0.429866, 0.178768,
		30.536076, 38.831856, 17.033529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.035503, 38.408619, 16.553421>,  <31.155588, 39.132763, 16.908392>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.035503, 38.408619, 16.553421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673801, 38.557343, 16.637407>,  <30.456781, 38.646576, 16.687799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.673801, 38.557343, 16.637407>,  <31.035503, 38.408619, 16.553421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.673801, 38.557343, 16.637407> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320705, -0.266728, -0.908848,
		-0.281937, -0.889155, 0.360436,
		-0.904246, 0.371832, 0.209956,
		30.402525, 38.668884, 16.700397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.551056, 37.864052, 16.334942>,  <31.035503, 38.408619, 16.553421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.551056, 37.864052, 16.334942> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.323145, 38.191963, 16.357988>,  <30.186398, 38.388710, 16.371817>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.323145, 38.191963, 16.357988>,  <30.551056, 37.864052, 16.334942>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.323145, 38.191963, 16.357988> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522409, -0.307190, -0.795439,
		-0.634382, -0.483325, 0.603288,
		-0.569780, 0.819775, 0.057618,
		30.152210, 38.437897, 16.375275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823505, 37.710011, 16.266790>,  <30.551056, 37.864052, 16.334942>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823505, 37.710011, 16.266790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831533, 38.100525, 16.180567>,  <29.836349, 38.334835, 16.128834>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.831533, 38.100525, 16.180567>,  <29.823505, 37.710011, 16.266790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.831533, 38.100525, 16.180567> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580725, -0.164119, -0.797386,
		-0.813853, 0.141183, 0.563659,
		0.020070, 0.976285, -0.215557,
		29.837555, 38.393410, 16.115900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.448372, 37.629486, 16.961599>,  <29.823505, 37.710011, 16.266790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.448372, 37.629486, 16.961599> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121677, 37.472408, 16.792490>,  <28.925661, 37.378162, 16.691025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.121677, 37.472408, 16.792490>,  <29.448372, 37.629486, 16.961599>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121677, 37.472408, 16.792490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227374, -0.454381, 0.861300,
		-0.530326, 0.799582, 0.281821,
		-0.816735, -0.392691, -0.422774,
		28.876657, 37.354603, 16.665657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777441, 37.850368, 17.355049>,  <29.448372, 37.629486, 16.961599>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777441, 37.850368, 17.355049> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693544, 37.503082, 17.175180>,  <28.643206, 37.294708, 17.067259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.693544, 37.503082, 17.175180>,  <28.777441, 37.850368, 17.355049>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.693544, 37.503082, 17.175180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340459, -0.366270, 0.865987,
		-0.916568, 0.334729, -0.218770,
		-0.209742, -0.868218, -0.449673,
		28.630623, 37.242619, 17.040279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.142353, 37.730610, 17.530766>,  <28.777441, 37.850368, 17.355049>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.142353, 37.730610, 17.530766> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267628, 37.380959, 17.382275>,  <28.342793, 37.171165, 17.293180>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.267628, 37.380959, 17.382275>,  <28.142353, 37.730610, 17.530766>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.267628, 37.380959, 17.382275> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365475, -0.471721, 0.802438,
		-0.876552, -0.115638, -0.467209,
		0.313185, -0.874132, -0.371225,
		28.361584, 37.118717, 17.270906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.578327, 37.197868, 17.789007>,  <28.142353, 37.730610, 17.530766>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.578327, 37.197868, 17.789007> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840380, 36.930695, 17.647772>,  <27.997612, 36.770390, 17.563030>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.840380, 36.930695, 17.647772>,  <27.578327, 37.197868, 17.789007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.840380, 36.930695, 17.647772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345796, -0.680614, 0.645902,
		-0.671725, -0.301065, -0.676865,
		0.655142, -0.667926, -0.353079,
		28.036919, 36.730316, 17.541845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.183908, 36.673946, 17.647285>,  <27.578327, 37.197868, 17.789007>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.183908, 36.673946, 17.647285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543648, 36.500240, 17.667631>,  <27.759491, 36.396015, 17.679838>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.543648, 36.500240, 17.667631>,  <27.183908, 36.673946, 17.647285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.543648, 36.500240, 17.667631> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332909, -0.604692, 0.723546,
		-0.283456, -0.667652, -0.688399,
		0.899347, -0.434268, 0.050864,
		27.813452, 36.369961, 17.682890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.041080, 35.893932, 17.491003>,  <27.183908, 36.673946, 17.647285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.041080, 35.893932, 17.491003> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368795, 35.966648, 17.708525>,  <27.565424, 36.010277, 17.839037>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.368795, 35.966648, 17.708525>,  <27.041080, 35.893932, 17.491003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.368795, 35.966648, 17.708525> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332018, -0.622819, 0.708422,
		0.467477, -0.760952, -0.449908,
		0.819286, 0.181794, 0.543803,
		27.614582, 36.021187, 17.871666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.302402, 35.192642, 17.709579>,  <27.041080, 35.893932, 17.491003>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.302402, 35.192642, 17.709579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450306, 35.460381, 17.967340>,  <27.539049, 35.621025, 18.121998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.450306, 35.460381, 17.967340>,  <27.302402, 35.192642, 17.709579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.450306, 35.460381, 17.967340> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122107, -0.652534, 0.747857,
		0.921069, -0.355213, -0.159549,
		0.369759, 0.669346, 0.644402,
		27.561234, 35.661182, 18.160662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.765766, 34.814720, 18.179295>,  <27.302402, 35.192642, 17.709579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.765766, 34.814720, 18.179295> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655302, 35.152203, 18.363424>,  <27.589024, 35.354691, 18.473902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.655302, 35.152203, 18.363424>,  <27.765766, 34.814720, 18.179295>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655302, 35.152203, 18.363424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272945, -0.528078, 0.804136,
		0.921541, 0.096426, 0.376118,
		-0.276160, 0.843703, 0.460327,
		27.572454, 35.405315, 18.501522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.305185, 35.143688, 18.699205>,  <27.765766, 34.814720, 18.179295>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.305185, 35.143688, 18.699205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447380, 34.772923, 18.651104>,  <28.532696, 34.550465, 18.622242>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.447380, 34.772923, 18.651104>,  <28.305185, 35.143688, 18.699205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.447380, 34.772923, 18.651104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237488, 0.214009, -0.947523,
		0.904007, 0.308272, 0.296209,
		0.355486, -0.926913, -0.120255,
		28.554026, 34.494850, 18.615028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.692307, 35.213356, 18.146793>,  <28.305185, 35.143688, 18.699205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.692307, 35.213356, 18.146793> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728523, 34.815407, 18.164812>,  <28.750254, 34.576637, 18.175623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.728523, 34.815407, 18.164812>,  <28.692307, 35.213356, 18.146793>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.728523, 34.815407, 18.164812> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420084, -0.002856, -0.907481,
		0.902957, 0.101088, 0.417672,
		0.090543, -0.994873, 0.045045,
		28.755686, 34.516945, 18.178326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.348248, 35.093758, 18.005556>,  <28.692307, 35.213356, 18.146793>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.348248, 35.093758, 18.005556> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162073, 34.749260, 17.923943>,  <29.050367, 34.542561, 17.874975>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.162073, 34.749260, 17.923943>,  <29.348248, 35.093758, 18.005556>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.162073, 34.749260, 17.923943> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543741, -0.096343, -0.833705,
		0.698365, -0.498978, 0.513134,
		-0.465437, -0.861243, -0.204032,
		29.022442, 34.490887, 17.862732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.911896, 34.652939, 17.787359>,  <29.348248, 35.093758, 18.005556>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.911896, 34.652939, 17.787359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578140, 34.485928, 17.643435>,  <29.377886, 34.385723, 17.557079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.578140, 34.485928, 17.643435>,  <29.911896, 34.652939, 17.787359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.578140, 34.485928, 17.643435> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.496171, -0.284719, -0.820213,
		0.240013, -0.862907, 0.444730,
		-0.834391, -0.417524, -0.359814,
		29.327824, 34.360672, 17.535490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.203262, 34.006340, 17.495474>,  <29.911896, 34.652939, 17.787359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.203262, 34.006340, 17.495474> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854162, 34.113682, 17.332359>,  <29.644701, 34.178085, 17.234491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.854162, 34.113682, 17.332359>,  <30.203262, 34.006340, 17.495474>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.854162, 34.113682, 17.332359> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403276, -0.074387, -0.912050,
		-0.275089, -0.960443, -0.043300,
		-0.872751, 0.268356, -0.407787,
		29.592337, 34.194187, 17.210024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.048134, 33.543049, 17.045853>,  <30.203262, 34.006340, 17.495474>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.048134, 33.543049, 17.045853> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829334, 33.856911, 16.929153>,  <29.698055, 34.045227, 16.859135>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.829334, 33.856911, 16.929153>,  <30.048134, 33.543049, 17.045853>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.829334, 33.856911, 16.929153> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316799, -0.128563, -0.939739,
		-0.774876, -0.606459, -0.178253,
		-0.546997, 0.784652, -0.291746,
		29.665236, 34.092308, 16.841629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.823164, 33.250462, 16.389956>,  <30.048134, 33.543049, 17.045853>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.823164, 33.250462, 16.389956> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748053, 33.643341, 16.391916>,  <29.702986, 33.879070, 16.393093>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.748053, 33.643341, 16.391916>,  <29.823164, 33.250462, 16.389956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.748053, 33.643341, 16.391916> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260518, 0.054619, -0.963923,
		-0.947032, -0.179726, -0.266137,
		-0.187778, 0.982199, 0.004904,
		29.691719, 33.938000, 16.393387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.241203, 33.386459, 15.937565>,  <29.823164, 33.250462, 16.389956>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.241203, 33.386459, 15.937565> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471895, 33.711826, 15.967869>,  <29.610310, 33.907047, 15.986051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.471895, 33.711826, 15.967869>,  <29.241203, 33.386459, 15.937565>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.471895, 33.711826, 15.967869> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064463, 0.047134, -0.996806,
		-0.814387, 0.579772, -0.025251,
		0.576731, 0.813414, 0.075759,
		29.644915, 33.955849, 15.990597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893154, 34.047966, 15.516966>,  <29.241203, 33.386459, 15.937565>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893154, 34.047966, 15.516966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292261, 34.063015, 15.539045>,  <29.531725, 34.072044, 15.552293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.292261, 34.063015, 15.539045>,  <28.893154, 34.047966, 15.516966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.292261, 34.063015, 15.539045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053137, 0.053752, -0.997139,
		-0.040477, 0.997845, 0.051633,
		0.997767, 0.037618, 0.055198,
		29.591591, 34.074299, 15.555605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<28.230675, 34.562519, 31.621992> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.594385, 34.728226, 31.637964>,  <28.812613, 34.827652, 31.647547>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.594385, 34.728226, 31.637964>,  <28.230675, 34.562519, 31.621992>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.594385, 34.728226, 31.637964> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072473, 0.252080, -0.964989,
		-0.409832, 0.874548, 0.259234,
		0.909277, 0.414271, 0.039930,
		28.867168, 34.852509, 31.649942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133263, 35.172016, 31.175859>,  <28.230675, 34.562519, 31.621992>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133263, 35.172016, 31.175859> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.502907, 35.021835, 31.204283>,  <28.724693, 34.931725, 31.221336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.502907, 35.021835, 31.204283>,  <28.133263, 35.172016, 31.175859>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.502907, 35.021835, 31.204283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018287, -0.142292, -0.989656,
		0.381683, 0.915853, -0.124628,
		0.924112, -0.375456, 0.071059,
		28.780140, 34.909199, 31.225601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.470591, 35.495789, 30.647957>,  <28.133263, 35.172016, 31.175859>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.470591, 35.495789, 30.647957> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.667988, 35.159428, 30.736811>,  <28.786427, 34.957611, 30.790123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.667988, 35.159428, 30.736811>,  <28.470591, 35.495789, 30.647957>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.667988, 35.159428, 30.736811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049928, -0.227591, -0.972476,
		0.868316, 0.491000, -0.070329,
		0.493492, -0.840905, 0.222136,
		28.816036, 34.907158, 30.803452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.160490, 35.530289, 30.369509>,  <28.470591, 35.495789, 30.647957>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.160490, 35.530289, 30.369509> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.088623, 35.139713, 30.417336>,  <29.045504, 34.905369, 30.446032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.088623, 35.139713, 30.417336>,  <29.160490, 35.530289, 30.369509>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.088623, 35.139713, 30.417336> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276184, -0.166725, -0.946533,
		0.944162, -0.137036, 0.299630,
		-0.179665, -0.976434, 0.119568,
		29.034723, 34.846783, 30.453205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.670181, 35.228672, 29.993999>,  <29.160490, 35.530289, 30.369509>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.670181, 35.228672, 29.993999> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.374201, 34.963306, 30.038467>,  <29.196613, 34.804089, 30.065147>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.374201, 34.963306, 30.038467>,  <29.670181, 35.228672, 29.993999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.374201, 34.963306, 30.038467> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081723, -0.252704, -0.964086,
		0.667678, -0.704291, 0.241204,
		-0.739950, -0.663411, 0.111168,
		29.152216, 34.764282, 30.071817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943369, 34.707047, 29.757059>,  <29.670181, 35.228672, 29.993999>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943369, 34.707047, 29.757059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.552029, 34.628254, 29.731678>,  <29.317225, 34.580978, 29.716450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.552029, 34.628254, 29.731678>,  <29.943369, 34.707047, 29.757059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.552029, 34.628254, 29.731678> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121951, -0.301034, -0.945784,
		0.167205, -0.933046, 0.318540,
		-0.978351, -0.196986, -0.063451,
		29.258524, 34.569157, 29.712643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.921389, 34.059837, 29.629332>,  <29.943369, 34.707047, 29.757059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.921389, 34.059837, 29.629332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563095, 34.184345, 29.502352>,  <29.348120, 34.259052, 29.426165>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.563095, 34.184345, 29.502352>,  <29.921389, 34.059837, 29.629332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.563095, 34.184345, 29.502352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098064, -0.558105, -0.823955,
		-0.433643, -0.769174, 0.469388,
		-0.895733, 0.311273, -0.317447,
		29.294376, 34.277729, 29.407118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561544, 33.487396, 29.262764>,  <29.921389, 34.059837, 29.629332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561544, 33.487396, 29.262764> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.391113, 33.824127, 29.130230>,  <29.288855, 34.026165, 29.050709>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.391113, 33.824127, 29.130230>,  <29.561544, 33.487396, 29.262764>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391113, 33.824127, 29.130230> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039769, -0.383319, -0.922759,
		-0.903813, -0.379989, 0.196801,
		-0.426076, 0.841828, -0.331337,
		29.263290, 34.076675, 29.030828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.049376, 33.227791, 28.820150>,  <29.561544, 33.487396, 29.262764>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.049376, 33.227791, 28.820150> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.106131, 33.612232, 28.725370>,  <29.140184, 33.842899, 28.668503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.106131, 33.612232, 28.725370>,  <29.049376, 33.227791, 28.820150>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.106131, 33.612232, 28.725370> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086441, -0.226425, -0.970185,
		-0.986101, 0.158140, 0.050952,
		0.141888, 0.961105, -0.236948,
		29.148697, 33.900562, 28.654285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494722, 33.404240, 28.325926>,  <29.049376, 33.227791, 28.820150>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494722, 33.404240, 28.325926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.767973, 33.691616, 28.273485>,  <28.931923, 33.864040, 28.242020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.767973, 33.691616, 28.273485>,  <28.494722, 33.404240, 28.325926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.767973, 33.691616, 28.273485> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069282, -0.114957, -0.990951,
		-0.727007, 0.686027, -0.028756,
		0.683126, 0.718436, -0.131104,
		28.972910, 33.907146, 28.234154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.266870, 33.694767, 27.803034>,  <28.494722, 33.404240, 28.325926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.266870, 33.694767, 27.803034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.647686, 33.814846, 27.779375>,  <28.876175, 33.886894, 27.765179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.647686, 33.814846, 27.779375>,  <28.266870, 33.694767, 27.803034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.647686, 33.814846, 27.779375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080874, 0.060456, -0.994889,
		-0.295091, 0.951958, 0.081835,
		0.952040, 0.300201, -0.059148,
		28.933298, 33.904907, 27.761631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.307354, 34.290302, 27.374468>,  <28.266870, 33.694767, 27.803034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.307354, 34.290302, 27.374468> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.663054, 34.109421, 27.346903>,  <28.876474, 34.000893, 27.330364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.663054, 34.109421, 27.346903>,  <28.307354, 34.290302, 27.374468>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.663054, 34.109421, 27.346903> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041970, 0.069363, -0.996708,
		0.455491, 0.889216, 0.042702,
		0.889251, -0.452199, -0.068915,
		28.929829, 33.973763, 27.326229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.088919, 35.027336, 27.392696>,  <28.307354, 34.290302, 27.374468>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.088919, 35.027336, 27.392696> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708700, 35.150452, 27.376095>,  <27.480568, 35.224323, 27.366133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.708700, 35.150452, 27.376095>,  <28.088919, 35.027336, 27.392696>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.708700, 35.150452, 27.376095> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004433, 0.147075, 0.989115,
		0.310546, 0.940018, -0.141166,
		-0.950548, 0.307792, -0.041506,
		27.423536, 35.242790, 27.363644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.081680, 35.697510, 27.672798>,  <28.088919, 35.027336, 27.392696>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.081680, 35.697510, 27.672798> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.704222, 35.569969, 27.708261>,  <27.477747, 35.493443, 27.729540>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.704222, 35.569969, 27.708261>,  <28.081680, 35.697510, 27.672798>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704222, 35.569969, 27.708261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041429, 0.151980, 0.987515,
		-0.328349, 0.935539, -0.130205,
		-0.943648, -0.318855, 0.088661,
		27.421127, 35.474312, 27.734859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.774397, 36.155254, 28.159492>,  <28.081680, 35.697510, 27.672798>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.774397, 36.155254, 28.159492> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.483614, 35.881195, 28.141167>,  <27.309145, 35.716759, 28.130171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.483614, 35.881195, 28.141167>,  <27.774397, 36.155254, 28.159492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483614, 35.881195, 28.141167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221302, 0.170599, 0.960167,
		-0.650044, 0.708140, -0.275644,
		-0.726958, -0.685152, -0.045816,
		27.265526, 35.675648, 28.127422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.045771, 36.472393, 28.214207>,  <27.774397, 36.155254, 28.159492>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.045771, 36.472393, 28.214207> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.024078, 36.090714, 28.331890>,  <27.011063, 35.861706, 28.402500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.024078, 36.090714, 28.331890>,  <27.045771, 36.472393, 28.214207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.024078, 36.090714, 28.331890> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318902, 0.295764, 0.900458,
		-0.946235, -0.044992, -0.320336,
		-0.054231, -0.954201, 0.294210,
		27.007809, 35.804455, 28.420153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.397493, 36.369343, 28.495121>,  <27.045771, 36.472393, 28.214207>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.397493, 36.369343, 28.495121> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.593784, 36.070190, 28.673941>,  <26.711559, 35.890697, 28.781233>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.593784, 36.070190, 28.673941>,  <26.397493, 36.369343, 28.495121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.593784, 36.070190, 28.673941> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459122, 0.214117, 0.862184,
		-0.740535, -0.628349, -0.238297,
		0.490729, -0.747885, 0.447050,
		26.741003, 35.845825, 28.808056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.909252, 36.095585, 29.036240>,  <26.397493, 36.369343, 28.495121>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.909252, 36.095585, 29.036240> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.278646, 35.980927, 29.138224>,  <26.500284, 35.912132, 29.199413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.278646, 35.980927, 29.138224>,  <25.909252, 36.095585, 29.036240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.278646, 35.980927, 29.138224> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185316, 0.248587, 0.950717,
		-0.335901, -0.925223, 0.176446,
		0.923487, -0.286649, 0.254959,
		26.555693, 35.894932, 29.214712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.873505, 35.615181, 29.672977>,  <25.909252, 36.095585, 29.036240>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.873505, 35.615181, 29.672977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.244537, 35.764629, 29.672054>,  <26.467157, 35.854298, 29.671499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.244537, 35.764629, 29.672054>,  <25.873505, 35.615181, 29.672977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.244537, 35.764629, 29.672054> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063427, 0.163559, 0.984493,
		0.368202, -0.913049, 0.175411,
		0.927580, 0.373618, -0.002310,
		26.522812, 35.876713, 29.671362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.113363, 35.382652, 30.186821>,  <25.873505, 35.615181, 29.672977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.113363, 35.382652, 30.186821> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.347229, 35.700375, 30.120796>,  <26.487549, 35.891006, 30.081182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.347229, 35.700375, 30.120796>,  <26.113363, 35.382652, 30.186821>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.347229, 35.700375, 30.120796> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024872, 0.220912, 0.974977,
		0.810895, -0.565927, 0.148915,
		0.584663, 0.794307, -0.165060,
		26.522629, 35.938667, 30.071278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577684, 35.366447, 30.825552>,  <26.113363, 35.382652, 30.186821>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577684, 35.366447, 30.825552> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.635124, 35.733177, 30.676517>,  <26.669588, 35.953213, 30.587097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<26.635124, 35.733177, 30.676517>,  <26.577684, 35.366447, 30.825552>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<26.635124, 35.733177, 30.676517> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199961, 0.341841, 0.918238,
		0.969224, -0.206359, -0.134241,
		0.143598, 0.916821, -0.372584,
		26.678204, 36.008224, 30.564743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257229, 35.677170, 31.102427>,  <26.577684, 35.366447, 30.825552>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257229, 35.677170, 31.102427> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.019257, 35.980492, 30.995819>,  <26.876472, 36.162483, 30.931854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.019257, 35.980492, 30.995819>,  <27.257229, 35.677170, 31.102427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.019257, 35.980492, 30.995819> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242606, 0.485526, 0.839885,
		0.766289, 0.435016, -0.472824,
		-0.594931, 0.758305, -0.266516,
		26.840776, 36.207985, 30.915865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.688528, 36.182205, 31.122618>,  <27.257229, 35.677170, 31.102427>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.688528, 36.182205, 31.122618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.318661, 36.331310, 31.153706>,  <27.096741, 36.420773, 31.172358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.318661, 36.331310, 31.153706>,  <27.688528, 36.182205, 31.122618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.318661, 36.331310, 31.153706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299641, 0.586373, 0.752584,
		0.234962, 0.719177, -0.653894,
		-0.924667, 0.372762, 0.077719,
		27.041262, 36.443138, 31.177021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.779476, 36.821095, 31.250557>,  <27.688528, 36.182205, 31.122618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.779476, 36.821095, 31.250557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.397276, 36.774345, 31.358896>,  <27.167955, 36.746296, 31.423899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.397276, 36.774345, 31.358896>,  <27.779476, 36.821095, 31.250557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.397276, 36.774345, 31.358896> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168503, 0.537382, 0.826334,
		-0.242122, 0.835202, -0.493777,
		-0.955502, -0.116870, 0.270846,
		27.110626, 36.739285, 31.440149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.631266, 37.437634, 31.436615>,  <27.779476, 36.821095, 31.250557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.631266, 37.437634, 31.436615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.327971, 37.221588, 31.582685>,  <27.145992, 37.091961, 31.670328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.327971, 37.221588, 31.582685>,  <27.631266, 37.437634, 31.436615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.327971, 37.221588, 31.582685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010505, 0.549914, 0.835155,
		-0.651891, 0.637084, -0.411292,
		-0.758240, -0.540110, 0.365177,
		27.100498, 37.059555, 31.692238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189951, 37.803413, 31.730156>,  <27.631266, 37.437634, 31.436615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189951, 37.803413, 31.730156> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.094017, 37.485218, 31.952753>,  <27.036457, 37.294300, 32.086311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.094017, 37.485218, 31.952753>,  <27.189951, 37.803413, 31.730156>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.094017, 37.485218, 31.952753> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267684, 0.496814, 0.825543,
		-0.933180, 0.346959, 0.093784,
		-0.239836, -0.795484, 0.556492,
		27.022066, 37.246574, 32.119701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.010902, 37.891140, 30.898594>,  <27.189951, 37.803413, 31.730156>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.010902, 37.891140, 30.898594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.071093, 37.810680, 30.511419>,  <27.107206, 37.762405, 30.279116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.071093, 37.810680, 30.511419>,  <27.010902, 37.891140, 30.898594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.071093, 37.810680, 30.511419> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.613659, 0.748623, -0.250970,
		0.775100, 0.631747, -0.010788,
		0.150473, -0.201147, -0.967935,
		27.116234, 37.750336, 30.221039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.246248, 38.502144, 30.538832>,  <27.010902, 37.891140, 30.898594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.246248, 38.502144, 30.538832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.036987, 38.281216, 30.279217>,  <26.911430, 38.148659, 30.123447>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<27.036987, 38.281216, 30.279217>,  <27.246248, 38.502144, 30.538832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<27.036987, 38.281216, 30.279217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628734, 0.764250, -0.143578,
		0.575329, 0.332959, -0.747084,
		-0.523154, -0.552322, -0.649038,
		26.880041, 38.115520, 30.084505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.880791, 38.640167, 30.314091>,  <27.246248, 38.502144, 30.538832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.880791, 38.640167, 30.314091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.226126, 38.804413, 30.196756>,  <28.433327, 38.902962, 30.126356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.226126, 38.804413, 30.196756>,  <27.880791, 38.640167, 30.314091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.226126, 38.804413, 30.196756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040708, -0.636060, -0.770565,
		-0.502986, 0.653315, -0.565849,
		0.863336, 0.410618, -0.293334,
		28.485126, 38.927597, 30.108757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.760601, 38.897133, 29.570868>,  <27.880791, 38.640167, 30.314091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.760601, 38.897133, 29.570868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.142216, 38.818138, 29.661037>,  <28.371183, 38.770741, 29.715139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.142216, 38.818138, 29.661037>,  <27.760601, 38.897133, 29.570868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.142216, 38.818138, 29.661037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091675, -0.523822, -0.846881,
		0.285327, 0.828620, -0.481640,
		0.954036, -0.197484, 0.225424,
		28.428427, 38.758892, 29.728664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.209558, 39.138638, 29.090832>,  <27.760601, 38.897133, 29.570868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.209558, 39.138638, 29.090832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.427021, 38.835148, 29.234369>,  <28.557499, 38.653053, 29.320492>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.427021, 38.835148, 29.234369>,  <28.209558, 39.138638, 29.090832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.427021, 38.835148, 29.234369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095220, -0.369029, -0.924528,
		0.833888, 0.536796, -0.128380,
		0.543658, -0.758728, 0.358842,
		28.590118, 38.607529, 29.342022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888590, 39.069183, 28.659134>,  <28.209558, 39.138638, 29.090832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888590, 39.069183, 28.659134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.839943, 38.710350, 28.829050>,  <28.810755, 38.495049, 28.931000>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.839943, 38.710350, 28.829050>,  <28.888590, 39.069183, 28.659134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.839943, 38.710350, 28.829050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107621, -0.437363, -0.892822,
		0.986726, -0.062866, 0.149736,
		-0.121617, -0.897085, 0.424792,
		28.803457, 38.441223, 28.956488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.465899, 38.618050, 28.393900>,  <28.888590, 39.069183, 28.659134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.465899, 38.618050, 28.393900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.207975, 38.339848, 28.520706>,  <29.053223, 38.172928, 28.596790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.207975, 38.339848, 28.520706>,  <29.465899, 38.618050, 28.393900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.207975, 38.339848, 28.520706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096586, -0.485569, -0.868846,
		0.758218, -0.529619, 0.380274,
		-0.644807, -0.695505, 0.317014,
		29.014534, 38.131195, 28.615810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.835785, 37.953308, 28.220222>,  <29.465899, 38.618050, 28.393900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.835785, 37.953308, 28.220222> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450075, 37.855892, 28.261915>,  <29.218649, 37.797443, 28.286932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.450075, 37.855892, 28.261915>,  <29.835785, 37.953308, 28.220222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.450075, 37.855892, 28.261915> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074311, -0.626341, -0.775999,
		0.254274, -0.740530, 0.622061,
		-0.964273, -0.243542, 0.104233,
		29.160793, 37.782829, 28.293184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.787674, 37.280495, 28.213318>,  <29.835785, 37.953308, 28.220222>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.787674, 37.280495, 28.213318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.406826, 37.363621, 28.123627>,  <29.178316, 37.413494, 28.069813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.406826, 37.363621, 28.123627>,  <29.787674, 37.280495, 28.213318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.406826, 37.363621, 28.123627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142694, -0.346570, -0.927107,
		-0.270374, -0.914715, 0.300323,
		-0.952122, 0.207811, -0.224227,
		29.121189, 37.425964, 28.056358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.522417, 36.620934, 27.890091>,  <29.787674, 37.280495, 28.213318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.522417, 36.620934, 27.890091> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268848, 36.920208, 27.811749>,  <29.116707, 37.099773, 27.764744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.268848, 36.920208, 27.811749>,  <29.522417, 36.620934, 27.890091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.268848, 36.920208, 27.811749> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072162, -0.309355, -0.948205,
		-0.770024, -0.586953, 0.250097,
		-0.633920, 0.748188, -0.195855,
		29.078672, 37.144665, 27.752993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.878174, 36.290318, 27.573580>,  <29.522417, 36.620934, 27.890091>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.878174, 36.290318, 27.573580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.909601, 36.677349, 27.477558>,  <28.928457, 36.909569, 27.419945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.909601, 36.677349, 27.477558>,  <28.878174, 36.290318, 27.573580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.909601, 36.677349, 27.477558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062431, -0.245099, -0.967486,
		-0.994952, 0.061027, -0.079663,
		0.078568, 0.967575, -0.240052,
		28.933172, 36.967621, 27.405542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.421755, 36.311363, 26.916685>,  <28.878174, 36.290318, 27.573580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.421755, 36.311363, 26.916685> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644632, 36.643482, 26.911892>,  <28.778358, 36.842754, 26.909016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.644632, 36.643482, 26.911892>,  <28.421755, 36.311363, 26.916685>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.644632, 36.643482, 26.911892> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143095, -0.110221, -0.983552,
		-0.817960, 0.546316, -0.180225,
		0.557195, 0.830296, -0.011982,
		28.811790, 36.892570, 26.908297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.163502, 36.746498, 26.346909>,  <28.421755, 36.311363, 26.916685>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.163502, 36.746498, 26.346909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.538673, 36.870609, 26.408897>,  <28.763777, 36.945076, 26.446091>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.538673, 36.870609, 26.408897>,  <28.163502, 36.746498, 26.346909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.538673, 36.870609, 26.408897> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113718, 0.147002, -0.982578,
		-0.327653, 0.939211, 0.102594,
		0.937929, 0.310278, 0.154971,
		28.820053, 36.963692, 26.455389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.131323, 37.307896, 25.975662>,  <28.163502, 36.746498, 26.346909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.131323, 37.307896, 25.975662> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.521044, 37.242104, 26.037222>,  <28.754875, 37.202629, 26.074158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.521044, 37.242104, 26.037222>,  <28.131323, 37.307896, 25.975662>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521044, 37.242104, 26.037222> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167848, 0.074491, -0.982994,
		0.150217, 0.983564, 0.100184,
		0.974301, -0.164478, 0.153899,
		28.813334, 37.192760, 26.083391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.487926, 37.783115, 25.680166>,  <28.131323, 37.307896, 25.975662>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.487926, 37.783115, 25.680166> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.790060, 37.522209, 25.705542>,  <28.971340, 37.365665, 25.720768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<28.790060, 37.522209, 25.705542>,  <28.487926, 37.783115, 25.680166>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<28.790060, 37.522209, 25.705542> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207770, 0.146537, -0.967140,
		0.621533, 0.743694, 0.246204,
		0.755334, -0.652263, 0.063440,
		29.016661, 37.326530, 25.724573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.078804, 38.134876, 25.334618>,  <28.487926, 37.783115, 25.680166>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.078804, 38.134876, 25.334618> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.149122, 37.741306, 25.347164>,  <29.191313, 37.505165, 25.354692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.149122, 37.741306, 25.347164>,  <29.078804, 38.134876, 25.334618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.149122, 37.741306, 25.347164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431357, 0.048352, -0.900885,
		0.884888, 0.171903, 0.432923,
		0.175798, -0.983927, 0.031366,
		29.201862, 37.446129, 25.356573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829176, 38.119221, 25.311607>,  <29.078804, 38.134876, 25.334618>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829176, 38.119221, 25.311607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675463, 37.756809, 25.240675>,  <29.583235, 37.539364, 25.198116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.675463, 37.756809, 25.240675>,  <29.829176, 38.119221, 25.311607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.675463, 37.756809, 25.240675> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499808, -0.042672, -0.865085,
		0.776222, -0.421066, 0.469237,
		-0.384281, -0.906026, -0.177329,
		29.560179, 37.485001, 25.187477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.366154, 37.716793, 25.064425>,  <29.829176, 38.119221, 25.311607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.366154, 37.716793, 25.064425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.044708, 37.525917, 24.922161>,  <29.851841, 37.411392, 24.836803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.044708, 37.525917, 24.922161>,  <30.366154, 37.716793, 25.064425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.044708, 37.525917, 24.922161> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400956, 0.007528, -0.916066,
		0.439819, -0.878765, 0.185284,
		-0.803612, -0.477195, -0.355658,
		29.803625, 37.382759, 24.815464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.636026, 37.053104, 24.625593>,  <30.366154, 37.716793, 25.064425>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.636026, 37.053104, 24.625593> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275524, 37.198051, 24.530575>,  <30.059223, 37.285019, 24.473564>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.275524, 37.198051, 24.530575>,  <30.636026, 37.053104, 24.625593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.275524, 37.198051, 24.530575> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283047, 0.077286, -0.955987,
		-0.328058, -0.928826, -0.172221,
		-0.901256, 0.362366, -0.237547,
		30.005148, 37.306763, 24.459311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.561811, 36.788063, 23.993876>,  <30.636026, 37.053104, 24.625593>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.561811, 36.788063, 23.993876> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.269577, 37.060101, 24.018269>,  <30.094236, 37.223324, 24.032904>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.269577, 37.060101, 24.018269>,  <30.561811, 36.788063, 23.993876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.269577, 37.060101, 24.018269> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119307, 0.215078, -0.969282,
		-0.672319, -0.700866, -0.238273,
		-0.730583, 0.680094, 0.060983,
		30.050402, 37.264130, 24.036564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.110434, 36.723721, 23.391409>,  <30.561811, 36.788063, 23.993876>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.110434, 36.723721, 23.391409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.026182, 37.088440, 23.532408>,  <29.975632, 37.307274, 23.617006>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.026182, 37.088440, 23.532408>,  <30.110434, 36.723721, 23.391409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.026182, 37.088440, 23.532408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184190, 0.391145, -0.901709,
		-0.960057, -0.125001, -0.250331,
		-0.210630, 0.911801, 0.352497,
		29.962994, 37.361980, 23.638157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.374725, 36.931973, 23.192619>,  <30.110434, 36.723721, 23.391409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.374725, 36.931973, 23.192619> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561901, 37.277149, 23.268904>,  <29.674206, 37.484253, 23.314674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.561901, 37.277149, 23.268904>,  <29.374725, 36.931973, 23.192619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.561901, 37.277149, 23.268904> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043388, 0.237966, -0.970304,
		-0.882695, 0.445768, 0.148794,
		0.467939, 0.862938, 0.190710,
		29.702282, 37.536030, 23.326117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.084658, 37.454723, 22.748428>,  <29.374725, 36.931973, 23.192619>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.084658, 37.454723, 22.748428> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.431997, 37.629444, 22.842384>,  <29.640400, 37.734276, 22.898758>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.431997, 37.629444, 22.842384>,  <29.084658, 37.454723, 22.748428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.431997, 37.629444, 22.842384> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077980, 0.347474, -0.934441,
		-0.489786, 0.829737, 0.267666,
		0.868348, 0.436804, 0.234891,
		29.692501, 37.760487, 22.912851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.052155, 38.212193, 22.593500>,  <29.084658, 37.454723, 22.748428>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.052155, 38.212193, 22.593500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.438269, 38.107719, 22.594669>,  <29.669937, 38.045036, 22.595371>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.438269, 38.107719, 22.594669>,  <29.052155, 38.212193, 22.593500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.438269, 38.107719, 22.594669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121754, 0.440027, -0.889692,
		0.231086, 0.859163, 0.456551,
		0.965285, -0.261182, 0.002922,
		29.727854, 38.029366, 22.595547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.317032, 38.768417, 22.267042>,  <29.052155, 38.212193, 22.593500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.317032, 38.768417, 22.267042> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.600672, 38.486378, 22.265518>,  <29.770855, 38.317154, 22.264605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.600672, 38.486378, 22.265518>,  <29.317032, 38.768417, 22.267042>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.600672, 38.486378, 22.265518> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335959, 0.342605, -0.877356,
		0.619929, 0.620851, 0.479825,
		0.709098, -0.705100, -0.003810,
		29.813400, 38.274849, 22.264376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943005, 39.125420, 22.103453>,  <29.317032, 38.768417, 22.267042>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943005, 39.125420, 22.103453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048870, 38.744324, 22.043798>,  <30.112389, 38.515667, 22.008005>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.048870, 38.744324, 22.043798>,  <29.943005, 39.125420, 22.103453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.048870, 38.744324, 22.043798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611876, 0.285442, -0.737652,
		0.745360, 0.103975, 0.658504,
		0.264662, -0.952739, -0.149137,
		30.128269, 38.458504, 21.999058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667786, 39.105965, 21.984201>,  <29.943005, 39.125420, 22.103453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667786, 39.105965, 21.984201> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.544434, 38.781605, 21.785263>,  <30.470423, 38.586990, 21.665901>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.544434, 38.781605, 21.785263>,  <30.667786, 39.105965, 21.984201>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.544434, 38.781605, 21.785263> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512543, 0.298807, -0.804993,
		0.801376, -0.503152, 0.323474,
		-0.308378, -0.810896, -0.497344,
		30.451920, 38.538338, 21.636061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272030, 38.627747, 21.799721>,  <30.667786, 39.105965, 21.984201>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272030, 38.627747, 21.799721> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.954256, 38.665874, 21.559793>,  <30.763592, 38.688751, 21.415836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.954256, 38.665874, 21.559793>,  <31.272030, 38.627747, 21.799721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.954256, 38.665874, 21.559793> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588182, 0.366888, -0.720719,
		0.151367, -0.925369, -0.347535,
		-0.794437, 0.095321, -0.599820,
		30.715925, 38.694469, 21.379847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.841356, 38.497032, 21.354614>,  <31.272030, 38.627747, 21.799721>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.841356, 38.497032, 21.354614> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215759, 38.544777, 21.222164>,  <32.440399, 38.573425, 21.142694>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.215759, 38.544777, 21.222164>,  <31.841356, 38.497032, 21.354614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.215759, 38.544777, 21.222164> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272856, 0.348227, 0.896821,
		0.222352, -0.929780, 0.293374,
		0.936007, 0.119361, -0.331125,
		32.496563, 38.580585, 21.122828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.254982, 38.190956, 21.803326>,  <31.841356, 38.497032, 21.354614>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.254982, 38.190956, 21.803326> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498817, 38.458458, 21.633066>,  <32.645119, 38.618958, 21.530910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.498817, 38.458458, 21.633066>,  <32.254982, 38.190956, 21.803326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498817, 38.458458, 21.633066> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334962, 0.269358, 0.902910,
		0.718474, -0.692978, -0.059809,
		0.609587, 0.668752, -0.425648,
		32.681694, 38.659084, 21.505371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.815311, 37.946671, 21.916349>,  <32.254982, 38.190956, 21.803326>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.815311, 37.946671, 21.916349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860596, 38.340816, 21.865360>,  <32.887764, 38.577305, 21.834766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.860596, 38.340816, 21.865360>,  <32.815311, 37.946671, 21.916349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.860596, 38.340816, 21.865360> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329778, 0.083758, 0.940335,
		0.937246, -0.148491, -0.315468,
		0.113209, 0.985360, -0.127471,
		32.894558, 38.636425, 21.827120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.324501, 38.072159, 22.324556>,  <32.815311, 37.946671, 21.916349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.324501, 38.072159, 22.324556> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177177, 38.435719, 22.246325>,  <33.088783, 38.653854, 22.199385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.177177, 38.435719, 22.246325>,  <33.324501, 38.072159, 22.324556>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.177177, 38.435719, 22.246325> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169909, 0.272629, 0.946998,
		0.914046, 0.315556, -0.254842,
		-0.368308, 0.908899, -0.195579,
		33.066685, 38.708389, 22.187651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828968, 38.552345, 22.482988>,  <33.324501, 38.072159, 22.324556>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828968, 38.552345, 22.482988> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486702, 38.759113, 22.493065>,  <33.281342, 38.883175, 22.499111>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.486702, 38.759113, 22.493065>,  <33.828968, 38.552345, 22.482988>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486702, 38.759113, 22.493065> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202224, 0.289143, 0.935682,
		0.476386, 0.805725, -0.351943,
		-0.855665, 0.516917, 0.025193,
		33.230003, 38.914188, 22.500624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
