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
	location <25.469, 94.9851, 44.8844>
	look_at <25.469, 29.3977, 32.8955>
	direction <0, -65.5874, -11.9889>
	angle 67.0682
}


# declare cpy_camera_pos = <25.469, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 28
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16351, -0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16351, 0.803887>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<4.801044, 14.952493, 14.824151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.408110, 15.020532, 14.855349>,  <4.172349, 15.061355, 14.874067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.408110, 15.020532, 14.855349>,  <4.801044, 14.952493, 14.824151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.408110, 15.020532, 14.855349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182614, 0.780430, 0.597981,
		0.040845, 0.601662, -0.797706,
		-0.982336, 0.170097, 0.077995,
		4.113409, 15.071561, 14.878747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.446620, 15.623965, 14.559593>,  <4.801044, 14.952493, 14.824151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.446620, 15.623965, 14.559593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265086, 15.548741, 14.907999>,  <4.156165, 15.503607, 15.117043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265086, 15.548741, 14.907999>,  <4.446620, 15.623965, 14.559593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.265086, 15.548741, 14.907999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426502, 0.812396, 0.397628,
		-0.782387, 0.551947, -0.288486,
		-0.453835, -0.188059, 0.871015,
		4.128935, 15.492324, 15.169304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.086603, 16.232006, 14.870408>,  <4.446620, 15.623965, 14.559593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.086603, 16.232006, 14.870408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.218967, 15.992356, 15.162037>,  <4.298386, 15.848566, 15.337014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.218967, 15.992356, 15.162037>,  <4.086603, 16.232006, 14.870408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.218967, 15.992356, 15.162037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440110, 0.781411, 0.442380,
		-0.834746, 0.174483, 0.522259,
		0.330911, -0.599126, 0.729072,
		4.318240, 15.812618, 15.380758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.923537, 16.441641, 15.487235>,  <4.086603, 16.232006, 14.870408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.923537, 16.441641, 15.487235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.269616, 16.245541, 15.529350>,  <4.477263, 16.127880, 15.554619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.269616, 16.245541, 15.529350>,  <3.923537, 16.441641, 15.487235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.269616, 16.245541, 15.529350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380486, 0.778638, 0.498953,
		-0.326594, -0.391632, 0.860210,
		0.865198, -0.490253, 0.105287,
		4.529175, 16.098465, 15.560936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993629, 16.262070, 16.247904>,  <3.923537, 16.441641, 15.487235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993629, 16.262070, 16.247904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340016, 16.294756, 16.050552>,  <4.547849, 16.314367, 15.932142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.340016, 16.294756, 16.050552>,  <3.993629, 16.262070, 16.247904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.340016, 16.294756, 16.050552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337490, 0.632552, 0.697122,
		0.369052, -0.770195, 0.520193,
		0.865969, 0.081714, -0.493378,
		4.599807, 16.319269, 15.902539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.543680, 16.304579, 16.824339>,  <3.993629, 16.262070, 16.247904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.543680, 16.304579, 16.824339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727608, 16.454020, 16.502100>,  <4.837965, 16.543684, 16.308756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.727608, 16.454020, 16.502100>,  <4.543680, 16.304579, 16.824339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.727608, 16.454020, 16.502100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474559, 0.663400, 0.578527,
		0.750574, -0.648321, 0.127747,
		0.459818, 0.373604, -0.805597,
		4.865554, 16.566101, 16.260422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.178621, 16.454857, 17.017719>,  <4.543680, 16.304579, 16.824339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.178621, 16.454857, 17.017719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163412, 16.666739, 16.678787>,  <5.154286, 16.793867, 16.475428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.163412, 16.666739, 16.678787>,  <5.178621, 16.454857, 17.017719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.163412, 16.666739, 16.678787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611609, 0.682904, 0.399470,
		0.790246, -0.503045, -0.349940,
		-0.038024, 0.529706, -0.847329,
		5.152005, 16.825651, 16.424589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.926259, 16.699818, 16.899256>,  <5.178621, 16.454857, 17.017719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.926259, 16.699818, 16.899256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.659971, 16.925518, 16.703934>,  <5.500199, 17.060938, 16.586740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.659971, 16.925518, 16.703934>,  <5.926259, 16.699818, 16.899256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.659971, 16.925518, 16.703934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326841, 0.808762, 0.488957,
		0.670816, 0.165909, -0.722828,
		-0.665718, 0.564250, -0.488305,
		5.460256, 17.094793, 16.557442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.343804, 17.288015, 16.765955>,  <5.926259, 16.699818, 16.899256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.343804, 17.288015, 16.765955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.957730, 17.386070, 16.729456>,  <5.726086, 17.444904, 16.707558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.957730, 17.386070, 16.729456>,  <6.343804, 17.288015, 16.765955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.957730, 17.386070, 16.729456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209990, 0.934174, 0.288483,
		0.155958, 0.259278, -0.953127,
		-0.965185, 0.245139, -0.091246,
		5.668175, 17.459612, 16.702082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.288733, 17.994432, 16.414362>,  <6.343804, 17.288015, 16.765955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.288733, 17.994432, 16.414362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.979974, 17.914803, 16.655872>,  <5.794719, 17.867025, 16.800779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.979974, 17.914803, 16.655872>,  <6.288733, 17.994432, 16.414362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.979974, 17.914803, 16.655872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154419, 0.862559, 0.481816,
		-0.616710, 0.465146, -0.635065,
		-0.771896, -0.199075, 0.603776,
		5.748405, 17.855080, 16.837006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.860527, 18.614853, 16.321714>,  <6.288733, 17.994432, 16.414362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.860527, 18.614853, 16.321714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.740700, 18.449974, 16.665890>,  <5.668804, 18.351048, 16.872395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.740700, 18.449974, 16.665890>,  <5.860527, 18.614853, 16.321714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.740700, 18.449974, 16.665890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112592, 0.910827, 0.397136,
		-0.947408, 0.022090, -0.319264,
		-0.299567, -0.412197, 0.860438,
		5.650830, 18.326315, 16.924021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.256640, 19.000860, 16.498581>,  <5.860527, 18.614853, 16.321714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.256640, 19.000860, 16.498581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370244, 18.845253, 16.849125>,  <5.438406, 18.751888, 17.059450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.370244, 18.845253, 16.849125>,  <5.256640, 19.000860, 16.498581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.370244, 18.845253, 16.849125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078724, 0.920370, 0.383042,
		-0.955585, -0.039796, 0.292017,
		0.284007, -0.389018, 0.876359,
		5.455446, 18.728548, 17.112032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.945769, 19.380596, 16.918129>,  <5.256640, 19.000860, 16.498581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.945769, 19.380596, 16.918129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.219517, 19.199646, 17.146862>,  <5.383765, 19.091076, 17.284101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.219517, 19.199646, 17.146862>,  <4.945769, 19.380596, 16.918129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.219517, 19.199646, 17.146862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203234, 0.871533, 0.446236,
		-0.700239, -0.189173, 0.688388,
		0.684369, -0.452376, 0.571835,
		5.424828, 19.063932, 17.318413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.817874, 19.627724, 17.562498>,  <4.945769, 19.380596, 16.918129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.817874, 19.627724, 17.562498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.187422, 19.480793, 17.605467>,  <5.409150, 19.392635, 17.631248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.187422, 19.480793, 17.605467>,  <4.817874, 19.627724, 17.562498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.187422, 19.480793, 17.605467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283226, 0.845004, 0.453599,
		-0.257392, -0.388641, 0.884708,
		0.923868, -0.367325, 0.107424,
		5.464582, 19.370596, 17.637693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.072340, 19.657473, 18.216642>,  <4.817874, 19.627724, 17.562498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.072340, 19.657473, 18.216642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.439160, 19.639683, 18.058130>,  <5.659252, 19.629009, 17.963022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.439160, 19.639683, 18.058130>,  <5.072340, 19.657473, 18.216642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.439160, 19.639683, 18.058130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242599, 0.850925, 0.465910,
		0.316485, -0.523401, 0.791131,
		0.917051, -0.044474, -0.396282,
		5.714275, 19.626341, 17.939245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.587627, 19.748158, 18.823097>,  <5.072340, 19.657473, 18.216642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.587627, 19.748158, 18.823097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.748499, 19.820730, 18.464136>,  <5.845023, 19.864273, 18.248758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.748499, 19.820730, 18.464136>,  <5.587627, 19.748158, 18.823097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.748499, 19.820730, 18.464136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494670, 0.781730, 0.379736,
		0.770423, -0.596641, 0.224648,
		0.402180, 0.181431, -0.897404,
		5.869153, 19.875160, 18.194916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.348320, 19.874245, 18.844566>,  <5.587627, 19.748158, 18.823097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.348320, 19.874245, 18.844566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.276142, 20.085804, 18.512854>,  <6.232835, 20.212740, 18.313826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.276142, 20.085804, 18.512854>,  <6.348320, 19.874245, 18.844566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.276142, 20.085804, 18.512854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655936, 0.692970, 0.299234,
		0.732931, -0.489960, -0.471965,
		-0.180444, 0.528897, -0.829282,
		6.222008, 20.244473, 18.264069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.961352, 20.218103, 18.649086>,  <6.348320, 19.874245, 18.844566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.961352, 20.218103, 18.649086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.742874, 20.422728, 18.383764>,  <6.611786, 20.545502, 18.224571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.742874, 20.422728, 18.383764>,  <6.961352, 20.218103, 18.649086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.742874, 20.422728, 18.383764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571852, 0.806343, 0.150984,
		0.612090, -0.296846, -0.732959,
		-0.546197, 0.511559, -0.663306,
		6.579015, 20.576195, 18.184772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.419942, 20.709469, 18.103542>,  <6.961352, 20.218103, 18.649086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.419942, 20.709469, 18.103542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055211, 20.867535, 18.148104>,  <6.836371, 20.962374, 18.174841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.055211, 20.867535, 18.148104>,  <7.419942, 20.709469, 18.103542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.055211, 20.867535, 18.148104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408785, 0.899071, 0.156736,
		-0.038223, 0.188457, -0.981337,
		-0.911830, 0.395165, 0.111403,
		6.781662, 20.986084, 18.181524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.441683, 21.371536, 17.758207>,  <7.419942, 20.709469, 18.103542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.441683, 21.371536, 17.758207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.109722, 21.388582, 17.980719>,  <6.910546, 21.398809, 18.114225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.109722, 21.388582, 17.980719>,  <7.441683, 21.371536, 17.758207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.109722, 21.388582, 17.980719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222715, 0.939493, 0.260292,
		-0.511528, 0.339908, -0.789178,
		-0.829902, 0.042615, 0.556279,
		6.860752, 21.401367, 18.147602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.089816, 22.054663, 17.666037>,  <7.441683, 21.371536, 17.758207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.089816, 22.054663, 17.666037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.913422, 21.934769, 18.004431>,  <6.807586, 21.862833, 18.207468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.913422, 21.934769, 18.004431>,  <7.089816, 22.054663, 17.666037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.913422, 21.934769, 18.004431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097701, 0.920954, 0.377225,
		-0.892181, 0.249004, -0.376842,
		-0.440985, -0.299735, 0.845985,
		6.781126, 21.844849, 18.258226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.585036, 22.512175, 17.751534>,  <7.089816, 22.054663, 17.666037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.585036, 22.512175, 17.751534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.645545, 22.359001, 18.116056>,  <6.681849, 22.267097, 18.334770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.645545, 22.359001, 18.116056>,  <6.585036, 22.512175, 17.751534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.645545, 22.359001, 18.116056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066843, 0.915842, 0.395935,
		-0.986230, -0.120808, 0.112944,
		0.151272, -0.382933, 0.911306,
		6.690926, 22.244122, 18.389448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.131814, 22.813314, 18.240002>,  <6.585036, 22.512175, 17.751534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.131814, 22.813314, 18.240002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.452001, 22.685257, 18.442688>,  <6.644114, 22.608421, 18.564299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.452001, 22.685257, 18.442688>,  <6.131814, 22.813314, 18.240002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.452001, 22.685257, 18.442688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121006, 0.914311, 0.386514,
		-0.587035, -0.248077, 0.770615,
		0.800467, -0.320146, 0.506714,
		6.692142, 22.589212, 18.594702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.126287, 23.252617, 18.754406>,  <6.131814, 22.813314, 18.240002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.126287, 23.252617, 18.754406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.486048, 23.091274, 18.821787>,  <6.701905, 22.994469, 18.862215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.486048, 23.091274, 18.821787>,  <6.126287, 23.252617, 18.754406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.486048, 23.091274, 18.821787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273266, 0.819619, 0.503538,
		-0.341174, -0.406851, 0.847392,
		0.899403, -0.403357, 0.168454,
		6.755869, 22.970266, 18.872324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.260844, 23.357016, 19.451199>,  <6.126287, 23.252617, 18.754406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.260844, 23.357016, 19.451199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.624375, 23.312836, 19.290283>,  <6.842493, 23.286327, 19.193735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.624375, 23.312836, 19.290283>,  <6.260844, 23.357016, 19.451199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.624375, 23.312836, 19.290283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285474, 0.867831, 0.406662,
		0.304201, -0.484428, 0.820238,
		0.908827, -0.110449, -0.402287,
		6.897023, 23.279701, 19.169598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.420055, 23.301903, 19.601816>,  <6.260844, 23.357016, 19.451199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.420055, 23.301903, 19.601816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.404674, 22.910130, 19.681042>,  <5.395445, 22.675066, 19.728577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.404674, 22.910130, 19.681042>,  <5.420055, 23.301903, 19.601816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.404674, 22.910130, 19.681042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903805, -0.118632, -0.411172,
		0.426212, 0.163202, 0.889780,
		-0.038452, -0.979434, 0.198065,
		5.393138, 22.616299, 19.740461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.996137, 23.030542, 20.031830>,  <5.420055, 23.301903, 19.601816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.996137, 23.030542, 20.031830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.886807, 22.731747, 19.789408>,  <5.821209, 22.552469, 19.643955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.886807, 22.731747, 19.789408>,  <5.996137, 23.030542, 20.031830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.886807, 22.731747, 19.789408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959852, -0.170485, -0.222753,
		0.063071, -0.642605, 0.763597,
		-0.273324, -0.746990, -0.606053,
		5.804810, 22.507650, 19.607592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.086058, 23.457115, 20.604645>,  <5.996137, 23.030542, 20.031830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.086058, 23.457115, 20.604645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.726143, 23.308102, 20.513779>,  <5.510195, 23.218695, 20.459259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.726143, 23.308102, 20.513779>,  <6.086058, 23.457115, 20.604645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.726143, 23.308102, 20.513779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064141, 0.402038, -0.913373,
		0.431590, -0.836412, -0.337854,
		-0.899786, -0.372532, -0.227164,
		5.456207, 23.196342, 20.445629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.775125, 23.708111, 20.601961>,  <6.086058, 23.457115, 20.604645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.775125, 23.708111, 20.601961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.095106, 23.556557, 20.788088>,  <7.287095, 23.465624, 20.899763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.095106, 23.556557, 20.788088>,  <6.775125, 23.708111, 20.601961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.095106, 23.556557, 20.788088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284748, -0.922265, -0.261429,
		0.528196, 0.076634, -0.845657,
		0.799954, -0.378886, 0.465316,
		7.335093, 23.442890, 20.927683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.334066, 23.336836, 20.194820>,  <6.775125, 23.708111, 20.601961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.334066, 23.336836, 20.194820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.329124, 23.199488, 20.570467>,  <7.326159, 23.117079, 20.795855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.329124, 23.199488, 20.570467>,  <7.334066, 23.336836, 20.194820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.329124, 23.199488, 20.570467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067134, -0.936786, -0.343401,
		0.997667, -0.067289, -0.011479,
		-0.012354, -0.343371, 0.939119,
		7.325418, 23.096476, 20.852203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.911643, 22.912275, 20.274042>,  <7.334066, 23.336836, 20.194820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.911643, 22.912275, 20.274042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.603320, 22.797676, 20.501648>,  <7.418326, 22.728916, 20.638212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.603320, 22.797676, 20.501648>,  <7.911643, 22.912275, 20.274042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.603320, 22.797676, 20.501648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084996, -0.931437, -0.353836,
		0.631373, -0.224376, 0.742309,
		-0.770807, -0.286496, 0.569014,
		7.372077, 22.711727, 20.672352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.499311, 22.792250, 19.754961>,  <7.911643, 22.912275, 20.274042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.499311, 22.792250, 19.754961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.619417, 22.916021, 20.115870>,  <8.691481, 22.990284, 20.332415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.619417, 22.916021, 20.115870>,  <8.499311, 22.792250, 19.754961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.619417, 22.916021, 20.115870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478819, -0.769210, 0.423142,
		0.824969, -0.559079, -0.082805,
		0.300264, 0.309431, 0.902272,
		8.709496, 23.008850, 20.386551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.857058, 22.278044, 20.166462>,  <8.499311, 22.792250, 19.754961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.857058, 22.278044, 20.166462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.637321, 22.529003, 20.387224>,  <8.505480, 22.679579, 20.519682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.637321, 22.529003, 20.387224>,  <8.857058, 22.278044, 20.166462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.637321, 22.529003, 20.387224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116537, -0.711560, 0.692894,
		0.827432, 0.316317, 0.464003,
		-0.549340, 0.627397, 0.551905,
		8.472519, 22.717222, 20.552795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.957945, 21.883221, 20.876869>,  <8.857058, 22.278044, 20.166462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.957945, 21.883221, 20.876869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.990216, 21.624599, 21.180305>,  <9.009579, 21.469427, 21.362368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.990216, 21.624599, 21.180305>,  <8.957945, 21.883221, 20.876869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.990216, 21.624599, 21.180305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104265, -0.762371, -0.638685,
		0.991272, -0.027567, -0.128920,
		0.080678, -0.646552, 0.758592,
		9.014420, 21.430634, 21.407883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.471044, 21.341087, 20.850698>,  <8.957945, 21.883221, 20.876869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.471044, 21.341087, 20.850698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.142428, 21.204466, 21.033308>,  <8.945259, 21.122492, 21.142874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.142428, 21.204466, 21.033308>,  <9.471044, 21.341087, 20.850698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.142428, 21.204466, 21.033308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008453, -0.807915, -0.589238,
		0.570091, -0.480223, 0.666620,
		-0.821538, -0.341555, 0.456526,
		8.895967, 21.101999, 21.170265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.572278, 20.737980, 21.282675>,  <9.471044, 21.341087, 20.850698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.572278, 20.737980, 21.282675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193918, 20.736919, 21.152895>,  <8.966903, 20.736282, 21.075027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.193918, 20.736919, 21.152895>,  <9.572278, 20.737980, 21.282675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.193918, 20.736919, 21.152895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131272, -0.917596, -0.375214,
		-0.296718, -0.397506, 0.868302,
		-0.945899, -0.002651, -0.324448,
		8.910149, 20.736124, 21.055561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.216019, 20.089878, 21.480755>,  <9.572278, 20.737980, 21.282675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.216019, 20.089878, 21.480755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.018900, 20.220612, 21.158182>,  <8.900629, 20.299051, 20.964638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.018900, 20.220612, 21.158182>,  <9.216019, 20.089878, 21.480755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.018900, 20.220612, 21.158182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132885, -0.944175, -0.301456,
		-0.859938, -0.041394, 0.508717,
		-0.492797, 0.326834, -0.806431,
		8.871061, 20.318663, 20.916252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.515107, 19.667856, 21.357010>,  <9.216019, 20.089878, 21.480755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.515107, 19.667856, 21.357010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.598402, 19.848083, 21.009764>,  <8.648379, 19.956221, 20.801416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.598402, 19.848083, 21.009764>,  <8.515107, 19.667856, 21.357010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.598402, 19.848083, 21.009764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097310, -0.873624, -0.476771,
		-0.973226, 0.183758, -0.138076,
		0.208237, 0.450570, -0.868115,
		8.660873, 19.983255, 20.749329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.219844, 19.309917, 20.831657>,  <8.515107, 19.667856, 21.357010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.219844, 19.309917, 20.831657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.460215, 19.520092, 20.590725>,  <8.604437, 19.646196, 20.446165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.460215, 19.520092, 20.590725>,  <8.219844, 19.309917, 20.831657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.460215, 19.520092, 20.590725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158297, -0.660411, -0.734030,
		-0.783472, 0.536445, -0.313684,
		0.600927, 0.525437, -0.602332,
		8.640492, 19.677723, 20.410025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.820759, 19.515310, 20.146704>,  <8.219844, 19.309917, 20.831657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.820759, 19.515310, 20.146704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.213094, 19.509741, 20.068968>,  <8.448494, 19.506399, 20.022327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.213094, 19.509741, 20.068968>,  <7.820759, 19.515310, 20.146704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.213094, 19.509741, 20.068968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152136, -0.677858, -0.719279,
		-0.121719, 0.735061, -0.666986,
		0.980836, -0.013922, -0.194338,
		8.507344, 19.505564, 20.010666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.797299, 19.544418, 19.397503>,  <7.820759, 19.515310, 20.146704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.797299, 19.544418, 19.397503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.164186, 19.446634, 19.523333>,  <8.384317, 19.387964, 19.598829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.164186, 19.446634, 19.523333>,  <7.797299, 19.544418, 19.397503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.164186, 19.446634, 19.523333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112351, -0.598832, -0.792955,
		0.382222, 0.762652, -0.521793,
		0.917215, -0.244461, 0.314572,
		8.439350, 19.373297, 19.617704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.368326, 19.711596, 18.841442>,  <7.797299, 19.544418, 19.397503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.368326, 19.711596, 18.841442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.475844, 19.419889, 19.093130>,  <8.540356, 19.244865, 19.244143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.475844, 19.419889, 19.093130>,  <8.368326, 19.711596, 18.841442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.475844, 19.419889, 19.093130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192444, -0.599431, -0.776948,
		0.943777, 0.329930, -0.020782,
		0.268796, -0.729266, 0.629222,
		8.556483, 19.201109, 19.281897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.020404, 19.381308, 18.614658>,  <8.368326, 19.711596, 18.841442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.020404, 19.381308, 18.614658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.836541, 19.109669, 18.843584>,  <8.726223, 18.946686, 18.980940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.836541, 19.109669, 18.843584>,  <9.020404, 19.381308, 18.614658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.836541, 19.109669, 18.843584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111953, -0.683593, -0.721226,
		0.881012, -0.267445, 0.390246,
		-0.459658, -0.679098, 0.572312,
		8.698644, 18.905939, 19.015278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.183372, 18.664576, 18.284361>,  <9.020404, 19.381308, 18.614658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.183372, 18.664576, 18.284361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.918923, 18.520315, 18.547525>,  <8.760254, 18.433758, 18.705425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.918923, 18.520315, 18.547525>,  <9.183372, 18.664576, 18.284361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.918923, 18.520315, 18.547525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150656, -0.795217, -0.587310,
		0.734997, -0.487401, 0.471401,
		-0.661122, -0.360652, 0.657912,
		8.720587, 18.412119, 18.744900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.339452, 17.919514, 18.422222>,  <9.183372, 18.664576, 18.284361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.339452, 17.919514, 18.422222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952755, 17.975798, 18.507647>,  <8.720737, 18.009567, 18.558903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.952755, 17.975798, 18.507647>,  <9.339452, 17.919514, 18.422222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.952755, 17.975798, 18.507647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243282, -0.763498, -0.598235,
		0.078879, -0.630296, 0.772338,
		-0.966743, 0.140707, 0.213564,
		8.662732, 18.018009, 18.571716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.064405, 17.309235, 18.531601>,  <9.339452, 17.919514, 18.422222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.064405, 17.309235, 18.531601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.744694, 17.523832, 18.423288>,  <8.552867, 17.652592, 18.358301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.744694, 17.523832, 18.423288>,  <9.064405, 17.309235, 18.531601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.744694, 17.523832, 18.423288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281437, -0.732282, -0.620125,
		-0.530985, -0.419445, 0.736288,
		-0.799280, 0.536496, -0.270783,
		8.504910, 17.684780, 18.342052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.605917, 16.838711, 18.237152>,  <9.064405, 17.309235, 18.531601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.605917, 16.838711, 18.237152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.407705, 17.168549, 18.127975>,  <8.288778, 17.366451, 18.062469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.407705, 17.168549, 18.127975>,  <8.605917, 16.838711, 18.237152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.407705, 17.168549, 18.127975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379176, -0.488074, -0.786136,
		-0.781459, -0.286059, 0.554520,
		-0.495528, 0.824593, -0.272943,
		8.259047, 17.415926, 18.046093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.839868, 16.688526, 18.127954>,  <8.605917, 16.838711, 18.237152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.839868, 16.688526, 18.127954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.949958, 17.000551, 17.903189>,  <8.016013, 17.187767, 17.768330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.949958, 17.000551, 17.903189>,  <7.839868, 16.688526, 18.127954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.949958, 17.000551, 17.903189> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360774, -0.457968, -0.812470,
		-0.891119, 0.426339, 0.155381,
		0.275228, 0.780065, -0.561916,
		8.032527, 17.234571, 17.734613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.311841, 16.695940, 17.657131>,  <7.839868, 16.688526, 18.127954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.311841, 16.695940, 17.657131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.591192, 16.918308, 17.476810>,  <7.758802, 17.051729, 17.368618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.591192, 16.918308, 17.476810>,  <7.311841, 16.695940, 17.657131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.591192, 16.918308, 17.476810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211008, -0.441935, -0.871877,
		-0.683921, 0.704020, -0.191332,
		0.698375, 0.555922, -0.450803,
		7.800704, 17.085085, 17.341570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.034616, 16.835415, 17.026079>,  <7.311841, 16.695940, 17.657131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.034616, 16.835415, 17.026079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.418583, 16.914671, 16.946783>,  <7.648963, 16.962225, 16.899204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.418583, 16.914671, 16.946783>,  <7.034616, 16.835415, 17.026079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.418583, 16.914671, 16.946783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127544, -0.321021, -0.938444,
		-0.249582, 0.926113, -0.282883,
		0.959917, 0.198139, -0.198242,
		7.706558, 16.974112, 16.887310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.069190, 17.266188, 16.562180>,  <7.034616, 16.835415, 17.026079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.069190, 17.266188, 16.562180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.434800, 17.106670, 16.532454>,  <7.654166, 17.010960, 16.514618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.434800, 17.106670, 16.532454>,  <7.069190, 17.266188, 16.562180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.434800, 17.106670, 16.532454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236974, -0.376220, -0.895713,
		0.329244, 0.836315, -0.438378,
		0.914025, -0.398792, -0.074317,
		7.709007, 16.987032, 16.510159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.318971, 17.349936, 15.810891>,  <7.069190, 17.266188, 16.562180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.318971, 17.349936, 15.810891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.547134, 17.066835, 15.977612>,  <7.684032, 16.896976, 16.077646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.547134, 17.066835, 15.977612>,  <7.318971, 17.349936, 15.810891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.547134, 17.066835, 15.977612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110105, -0.568763, -0.815099,
		0.813948, 0.419047, -0.402354,
		0.570409, -0.707749, 0.416804,
		7.718257, 16.854511, 16.102654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.869790, 17.166506, 15.283617>,  <7.318971, 17.349936, 15.810891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.869790, 17.166506, 15.283617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.849094, 16.852142, 15.530087>,  <7.836677, 16.663525, 15.677968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.849094, 16.852142, 15.530087>,  <7.869790, 17.166506, 15.283617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.849094, 16.852142, 15.530087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057365, -0.613642, -0.787498,
		0.997012, -0.076092, -0.013334,
		-0.051740, -0.785909, 0.616173,
		7.833572, 16.616369, 15.714938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.278314, 16.672359, 15.002221>,  <7.869790, 17.166506, 15.283617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.278314, 16.672359, 15.002221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.011125, 16.483374, 15.232209>,  <7.850811, 16.369982, 15.370202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.011125, 16.483374, 15.232209>,  <8.278314, 16.672359, 15.002221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.011125, 16.483374, 15.232209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145146, -0.675068, -0.723337,
		0.729894, -0.566624, 0.382351,
		-0.667973, -0.472463, 0.574971,
		7.810733, 16.341635, 15.404700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.308949, 15.877136, 14.807154>,  <8.278314, 16.672359, 15.002221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.308949, 15.877136, 14.807154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.964555, 15.917875, 15.006485>,  <7.757918, 15.942319, 15.126083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.964555, 15.917875, 15.006485>,  <8.308949, 15.877136, 14.807154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.964555, 15.917875, 15.006485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414588, -0.708102, -0.571584,
		0.294653, -0.698727, 0.651890,
		-0.860986, 0.101846, 0.498328,
		7.706259, 15.948429, 15.155983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.139289, 15.231230, 14.798038>,  <8.308949, 15.877136, 14.807154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.139289, 15.231230, 14.798038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802748, 15.428094, 14.887395>,  <7.600823, 15.546212, 14.941009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.802748, 15.428094, 14.887395>,  <8.139289, 15.231230, 14.798038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.802748, 15.428094, 14.887395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523817, -0.640640, -0.561423,
		-0.133196, -0.589371, 0.796806,
		-0.841353, 0.492160, 0.223392,
		7.550342, 15.575742, 14.954412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.928094, 15.236557, 14.903121>,  <8.139289, 15.231230, 14.798038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.928094, 15.236557, 14.903121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.172472, 15.305770, 14.594109>,  <9.319099, 15.347298, 14.408701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.172472, 15.305770, 14.594109>,  <8.928094, 15.236557, 14.903121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.172472, 15.305770, 14.594109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647749, 0.670284, -0.362133,
		0.455155, 0.721650, 0.521589,
		0.610946, 0.173031, -0.772531,
		9.355756, 15.357679, 14.362350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.032450, 15.933824, 14.875383>,  <8.928094, 15.236557, 14.903121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.032450, 15.933824, 14.875383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.070724, 15.752636, 14.520833>,  <9.093689, 15.643923, 14.308103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.070724, 15.752636, 14.520833>,  <9.032450, 15.933824, 14.875383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.070724, 15.752636, 14.520833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645164, 0.649885, -0.401762,
		0.758029, 0.610301, -0.230055,
		0.095686, -0.452970, -0.886376,
		9.099430, 15.616745, 14.254920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.533151, 16.404596, 14.618530>,  <9.032450, 15.933824, 14.875383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.533151, 16.404596, 14.618530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.290401, 16.699800, 14.500518>,  <9.144752, 16.876923, 14.429710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.290401, 16.699800, 14.500518>,  <9.533151, 16.404596, 14.618530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.290401, 16.699800, 14.500518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774255, 0.632800, -0.009699,
		0.179537, -0.234314, -0.955439,
		-0.606874, 0.738012, -0.295030,
		9.108339, 16.921204, 14.412009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.750550, 16.797083, 13.978975>,  <9.533151, 16.404596, 14.618530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.750550, 16.797083, 13.978975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.562539, 17.007599, 14.262410>,  <9.449733, 17.133907, 14.432471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.562539, 17.007599, 14.262410>,  <9.750550, 16.797083, 13.978975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.562539, 17.007599, 14.262410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825738, 0.545793, 0.142360,
		-0.311819, 0.652020, -0.691114,
		-0.470027, 0.526288, 0.708587,
		9.421531, 17.165485, 14.474986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.865532, 17.537045, 13.782315>,  <9.750550, 16.797083, 13.978975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.865532, 17.537045, 13.782315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.781514, 17.491982, 14.170787>,  <9.731104, 17.464945, 14.403870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.781514, 17.491982, 14.170787>,  <9.865532, 17.537045, 13.782315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.781514, 17.491982, 14.170787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905315, 0.352668, 0.236709,
		-0.369170, 0.928943, 0.027913,
		-0.210045, -0.112656, 0.971180,
		9.718501, 17.458185, 14.462141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.925784, 18.167955, 14.221739>,  <9.865532, 17.537045, 13.782315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.925784, 18.167955, 14.221739> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026792, 17.835938, 14.420640>,  <10.087396, 17.636726, 14.539981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.026792, 17.835938, 14.420640>,  <9.925784, 18.167955, 14.221739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.026792, 17.835938, 14.420640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918119, 0.367769, 0.147659,
		-0.305438, 0.419251, 0.854948,
		0.252518, -0.830045, 0.497253,
		10.102547, 17.586924, 14.569816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.168125, 18.386383, 14.887447>,  <9.925784, 18.167955, 14.221739>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.168125, 18.386383, 14.887447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.311063, 18.039585, 14.748524>,  <10.396825, 17.831507, 14.665170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.311063, 18.039585, 14.748524>,  <10.168125, 18.386383, 14.887447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.311063, 18.039585, 14.748524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927213, 0.373977, 0.020433,
		0.112170, -0.329332, 0.937528,
		0.357343, -0.866996, -0.347310,
		10.418266, 17.779486, 14.644331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.795111, 18.429209, 15.103542>,  <10.168125, 18.386383, 14.887447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.795111, 18.429209, 15.103542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.837478, 18.122965, 14.849731>,  <10.862898, 17.939219, 14.697445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.837478, 18.122965, 14.849731>,  <10.795111, 18.429209, 15.103542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.837478, 18.122965, 14.849731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962335, 0.239602, -0.128464,
		0.250387, -0.597022, 0.762149,
		0.105916, -0.765608, -0.634528,
		10.869252, 17.893282, 14.659373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573415, 18.276617, 15.136474>,  <10.795111, 18.429209, 15.103542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.573415, 18.276617, 15.136474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965729, 18.206722, 15.171177>,  <12.201118, 18.164785, 15.191998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.965729, 18.206722, 15.171177>,  <11.573415, 18.276617, 15.136474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.965729, 18.206722, 15.171177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092582, -0.025445, 0.995380,
		-0.171724, -0.984286, -0.041134,
		0.980785, -0.174739, 0.086757,
		12.259964, 18.154301, 15.197205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.569300, 17.621040, 15.470277>,  <11.573415, 18.276617, 15.136474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.569300, 17.621040, 15.470277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929587, 17.781851, 15.536105>,  <12.145760, 17.878336, 15.575602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.929587, 17.781851, 15.536105>,  <11.569300, 17.621040, 15.470277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.929587, 17.781851, 15.536105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016352, -0.347194, 0.937651,
		0.434096, -0.847250, -0.306150,
		0.900718, 0.402024, 0.164570,
		12.199802, 17.902458, 15.585476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.095207, 17.094685, 15.702691>,  <11.569300, 17.621040, 15.470277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.095207, 17.094685, 15.702691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.232325, 17.440857, 15.848853>,  <12.314595, 17.648560, 15.936550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.232325, 17.440857, 15.848853>,  <12.095207, 17.094685, 15.702691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.232325, 17.440857, 15.848853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142949, -0.432499, 0.890231,
		0.928471, -0.252932, -0.271970,
		0.342795, 0.865431, 0.365406,
		12.335163, 17.700485, 15.958475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.540802, 16.821217, 16.111078>,  <12.095207, 17.094685, 15.702691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.540802, 16.821217, 16.111078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494717, 17.200224, 16.230368>,  <12.467066, 17.427628, 16.301941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.494717, 17.200224, 16.230368>,  <12.540802, 16.821217, 16.111078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.494717, 17.200224, 16.230368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235753, -0.265562, 0.934825,
		0.964959, 0.178012, -0.192783,
		-0.115214, 0.947517, 0.298223,
		12.460153, 17.484480, 16.319834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.160742, 16.957449, 16.480928>,  <12.540802, 16.821217, 16.111078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.160742, 16.957449, 16.480928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884505, 17.218660, 16.605272>,  <12.718763, 17.375387, 16.679878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.884505, 17.218660, 16.605272>,  <13.160742, 16.957449, 16.480928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.884505, 17.218660, 16.605272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174589, -0.266580, 0.947868,
		0.701855, 0.708863, 0.070086,
		-0.690592, 0.653030, 0.310860,
		12.677327, 17.414570, 16.698530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.427628, 17.141005, 17.114597>,  <13.160742, 16.957449, 16.480928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.427628, 17.141005, 17.114597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063594, 17.304758, 17.140364>,  <12.845174, 17.403011, 17.155823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.063594, 17.304758, 17.140364>,  <13.427628, 17.141005, 17.114597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.063594, 17.304758, 17.140364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061585, -0.287306, 0.955857,
		0.409820, 0.865944, 0.286685,
		-0.910085, 0.409385, 0.064415,
		12.790568, 17.427574, 17.159689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.511954, 17.669071, 17.563799>,  <13.427628, 17.141005, 17.114597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.511954, 17.669071, 17.563799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.125503, 17.567142, 17.580093>,  <12.893632, 17.505985, 17.589870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.125503, 17.567142, 17.580093>,  <13.511954, 17.669071, 17.563799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.125503, 17.567142, 17.580093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085963, -0.168952, 0.981868,
		-0.243319, 0.952114, 0.185134,
		-0.966130, -0.254822, 0.040738,
		12.835664, 17.490696, 17.592314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.255995, 17.967810, 18.145226>,  <13.511954, 17.669071, 17.563799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.255995, 17.967810, 18.145226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004435, 17.667349, 18.064972>,  <12.853498, 17.487072, 18.016819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.004435, 17.667349, 18.064972>,  <13.255995, 17.967810, 18.145226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.004435, 17.667349, 18.064972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183182, -0.393947, 0.900694,
		-0.755598, 0.529694, 0.385351,
		-0.628900, -0.751152, -0.200635,
		12.815764, 17.442003, 18.004782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.850848, 17.832800, 18.771915>,  <13.255995, 17.967810, 18.145226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.850848, 17.832800, 18.771915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836526, 17.502325, 18.547014>,  <12.827932, 17.304039, 18.412073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.836526, 17.502325, 18.547014>,  <12.850848, 17.832800, 18.771915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.836526, 17.502325, 18.547014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031778, -0.563272, 0.825660,
		-0.998854, 0.011696, 0.046422,
		-0.035805, -0.826189, -0.562255,
		12.825785, 17.254469, 18.378338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.311063, 17.451231, 19.158329>,  <12.850848, 17.832800, 18.771915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.311063, 17.451231, 19.158329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535889, 17.208660, 18.933355>,  <12.670784, 17.063118, 18.798370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.535889, 17.208660, 18.933355>,  <12.311063, 17.451231, 19.158329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.535889, 17.208660, 18.933355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114568, -0.616373, 0.779076,
		-0.819121, -0.502327, -0.276963,
		0.562063, -0.606426, -0.562434,
		12.704508, 17.026731, 18.764626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.078828, 16.751034, 19.298033>,  <12.311063, 17.451231, 19.158329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.078828, 16.751034, 19.298033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.425434, 16.644714, 19.129036>,  <12.633398, 16.580923, 19.027637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.425434, 16.644714, 19.129036>,  <12.078828, 16.751034, 19.298033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.425434, 16.644714, 19.129036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221162, -0.554361, 0.802354,
		-0.447480, -0.788692, -0.421577,
		0.866516, -0.265800, -0.422494,
		12.685389, 16.564974, 19.002289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.219392, 16.106405, 19.454390>,  <12.078828, 16.751034, 19.298033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.219392, 16.106405, 19.454390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596793, 16.170280, 19.338251>,  <12.823234, 16.208605, 19.268568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.596793, 16.170280, 19.338251>,  <12.219392, 16.106405, 19.454390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.596793, 16.170280, 19.338251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328976, -0.556403, 0.763014,
		-0.039705, -0.815423, -0.577502,
		0.943503, 0.159689, -0.290346,
		12.879845, 16.218187, 19.251146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.580379, 15.491796, 19.447184>,  <12.219392, 16.106405, 19.454390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.580379, 15.491796, 19.447184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.851937, 15.779774, 19.504847>,  <13.014872, 15.952560, 19.539444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.851937, 15.779774, 19.504847>,  <12.580379, 15.491796, 19.447184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.851937, 15.779774, 19.504847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488939, -0.589757, 0.642748,
		0.547761, -0.365874, -0.752392,
		0.678893, 0.719946, 0.144156,
		13.055605, 15.995758, 19.548094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.270221, 15.121167, 19.447853>,  <12.580379, 15.491796, 19.447184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.270221, 15.121167, 19.447853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302118, 15.466032, 19.647980>,  <13.321257, 15.672951, 19.768057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.302118, 15.466032, 19.647980>,  <13.270221, 15.121167, 19.447853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.302118, 15.466032, 19.647980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391051, -0.488739, 0.779880,
		0.916908, 0.133460, -0.376123,
		0.079743, 0.862161, 0.500318,
		13.326041, 15.724681, 19.798075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.021203, 15.097401, 19.816227>,  <13.270221, 15.121167, 19.447853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.021203, 15.097401, 19.816227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.760668, 15.358520, 19.970945>,  <13.604346, 15.515191, 20.063776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.760668, 15.358520, 19.970945>,  <14.021203, 15.097401, 19.816227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.760668, 15.358520, 19.970945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236924, -0.309305, 0.920976,
		0.720850, 0.691509, 0.046799,
		-0.651339, 0.652798, 0.386798,
		13.565267, 15.554359, 20.086985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.277201, 15.192507, 20.457697>,  <14.021203, 15.097401, 19.816227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.277201, 15.192507, 20.457697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932560, 15.383849, 20.525599>,  <13.725776, 15.498654, 20.566339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.932560, 15.383849, 20.525599>,  <14.277201, 15.192507, 20.457697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.932560, 15.383849, 20.525599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135261, -0.538722, 0.831555,
		0.489230, 0.693508, 0.528867,
		-0.861602, 0.478356, 0.169755,
		13.674079, 15.527356, 20.576525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.221538, 15.308347, 21.131544>,  <14.277201, 15.192507, 20.457697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.221538, 15.308347, 21.131544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834796, 15.335607, 21.033117>,  <13.602751, 15.351962, 20.974060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834796, 15.335607, 21.033117>,  <14.221538, 15.308347, 21.131544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834796, 15.335607, 21.033117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246722, -0.497486, 0.831646,
		-0.065740, 0.864791, 0.497811,
		-0.966854, 0.068149, -0.246068,
		13.544740, 15.356051, 20.959297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.816183, 15.633005, 21.685743>,  <14.221538, 15.308347, 21.131544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.816183, 15.633005, 21.685743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566710, 15.401492, 21.475588>,  <13.417026, 15.262585, 21.349495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.566710, 15.401492, 21.475588>,  <13.816183, 15.633005, 21.685743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.566710, 15.401492, 21.475588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353639, -0.390487, 0.849976,
		-0.697107, 0.715913, 0.038861,
		-0.623683, -0.578782, -0.525387,
		13.379604, 15.227858, 21.317972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.176838, 15.700885, 21.933159>,  <13.816183, 15.633005, 21.685743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.176838, 15.700885, 21.933159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166898, 15.336353, 21.768787>,  <13.160933, 15.117635, 21.670164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.166898, 15.336353, 21.768787>,  <13.176838, 15.700885, 21.933159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166898, 15.336353, 21.768787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349313, -0.377231, 0.857716,
		-0.936676, 0.164858, -0.308965,
		-0.024851, -0.911328, -0.410930,
		13.159443, 15.062955, 21.645508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.507713, 15.417086, 22.150019>,  <13.176838, 15.700885, 21.933159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.507713, 15.417086, 22.150019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657546, 15.073589, 22.010160>,  <12.747446, 14.867492, 21.926245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657546, 15.073589, 22.010160>,  <12.507713, 15.417086, 22.150019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657546, 15.073589, 22.010160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418419, -0.493079, 0.762757,
		-0.827414, -0.139416, -0.544012,
		0.374582, -0.858741, -0.349646,
		12.769921, 14.815968, 21.905266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.031078, 14.905114, 22.240608>,  <12.507713, 15.417086, 22.150019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.031078, 14.905114, 22.240608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.354987, 14.675486, 22.192091>,  <12.549333, 14.537708, 22.162981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.354987, 14.675486, 22.192091>,  <12.031078, 14.905114, 22.240608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.354987, 14.675486, 22.192091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303155, -0.586341, 0.751200,
		-0.502362, -0.571530, -0.648834,
		0.809771, -0.574071, -0.121293,
		12.597919, 14.503264, 22.155703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.810188, 14.243361, 22.262489>,  <12.031078, 14.905114, 22.240608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.810188, 14.243361, 22.262489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200926, 14.226281, 22.346348>,  <12.435369, 14.216034, 22.396662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.200926, 14.226281, 22.346348>,  <11.810188, 14.243361, 22.262489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.200926, 14.226281, 22.346348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183967, -0.667883, 0.721172,
		0.109225, -0.743041, -0.660273,
		0.976845, -0.042698, 0.209644,
		12.493979, 14.213471, 22.409241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.892272, 13.492831, 22.437073>,  <11.810188, 14.243361, 22.262489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.892272, 13.492831, 22.437073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.203932, 13.679523, 22.604448>,  <12.390928, 13.791537, 22.704874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.203932, 13.679523, 22.604448>,  <11.892272, 13.492831, 22.437073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.203932, 13.679523, 22.604448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251554, -0.378616, 0.890713,
		0.574148, -0.799259, -0.177591,
		0.779150, 0.466728, 0.418438,
		12.437676, 13.819541, 22.729980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.227169, 12.965470, 22.786283>,  <11.892272, 13.492831, 22.437073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.227169, 12.965470, 22.786283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364266, 13.300885, 22.955698>,  <12.446525, 13.502134, 23.057346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.364266, 13.300885, 22.955698>,  <12.227169, 12.965470, 22.786283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.364266, 13.300885, 22.955698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268898, -0.344410, 0.899486,
		0.900123, -0.422180, 0.107437,
		0.342743, 0.838538, 0.423535,
		12.467090, 13.552446, 23.082758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.630131, 12.714967, 23.392834>,  <12.227169, 12.965470, 22.786283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.630131, 12.714967, 23.392834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.556146, 13.096711, 23.486629>,  <12.511755, 13.325758, 23.542906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.556146, 13.096711, 23.486629>,  <12.630131, 12.714967, 23.392834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.556146, 13.096711, 23.486629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299487, -0.281993, 0.911475,
		0.936000, 0.098363, 0.337977,
		-0.184963, 0.954361, 0.234487,
		12.500657, 13.383019, 23.556976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.835538, 12.795493, 24.012535>,  <12.630131, 12.714967, 23.392834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.835538, 12.795493, 24.012535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.562246, 13.086145, 23.983679>,  <12.398272, 13.260537, 23.966364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.562246, 13.086145, 23.983679>,  <12.835538, 12.795493, 24.012535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.562246, 13.086145, 23.983679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425659, -0.316053, 0.847894,
		0.593305, 0.610015, 0.525234,
		-0.683230, 0.726631, -0.072142,
		12.357277, 13.304134, 23.962036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.840061, 12.969763, 24.686071>,  <12.835538, 12.795493, 24.012535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.840061, 12.969763, 24.686071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490406, 13.122164, 24.565592>,  <12.280613, 13.213604, 24.493303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.490406, 13.122164, 24.565592>,  <12.840061, 12.969763, 24.686071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.490406, 13.122164, 24.565592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407129, -0.236687, 0.882171,
		0.264820, 0.893765, 0.362014,
		-0.874138, 0.381003, -0.301198,
		12.228165, 13.236465, 24.475233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.703748, 13.249705, 25.270096>,  <12.840061, 12.969763, 24.686071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.703748, 13.249705, 25.270096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350773, 13.242183, 25.082073>,  <12.138988, 13.237669, 24.969259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.350773, 13.242183, 25.082073>,  <12.703748, 13.249705, 25.270096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.350773, 13.242183, 25.082073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462762, -0.144981, 0.874547,
		-0.084595, 0.989256, 0.119234,
		-0.882437, -0.018805, -0.470055,
		12.086041, 13.236541, 24.941057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.228694, 13.780418, 25.612040>,  <12.703748, 13.249705, 25.270096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.228694, 13.780418, 25.612040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016267, 13.494917, 25.429382>,  <11.888810, 13.323616, 25.319788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.016267, 13.494917, 25.429382>,  <12.228694, 13.780418, 25.612040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.016267, 13.494917, 25.429382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550647, -0.118893, 0.826228,
		-0.644014, 0.690233, -0.329886,
		-0.531069, -0.713753, -0.456643,
		11.856946, 13.280791, 25.292389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.559910, 13.892555, 25.784483>,  <12.228694, 13.780418, 25.612040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.559910, 13.892555, 25.784483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.577878, 13.505160, 25.686493>,  <11.588658, 13.272723, 25.627699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.577878, 13.505160, 25.686493>,  <11.559910, 13.892555, 25.784483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.577878, 13.505160, 25.686493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487070, -0.235333, 0.841060,
		-0.872207, 0.081539, -0.482293,
		0.044920, -0.968488, -0.244974,
		11.591354, 13.214614, 25.613001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.980849, 13.695333, 26.109840>,  <11.559910, 13.892555, 25.784483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.980849, 13.695333, 26.109840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175742, 13.362058, 26.005226>,  <11.292678, 13.162092, 25.942457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.175742, 13.362058, 26.005226>,  <10.980849, 13.695333, 26.109840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.175742, 13.362058, 26.005226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206323, -0.400842, 0.892612,
		-0.848549, -0.380948, -0.367209,
		0.487232, -0.833189, -0.261536,
		11.321912, 13.112101, 25.926765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.807959, 13.269225, 26.690687>,  <10.980849, 13.695333, 26.109840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.807959, 13.269225, 26.690687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.082859, 13.042821, 26.508558>,  <11.247799, 12.906979, 26.399281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.082859, 13.042821, 26.508558>,  <10.807959, 13.269225, 26.690687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.082859, 13.042821, 26.508558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007049, -0.631970, 0.774961,
		-0.726386, -0.529383, -0.438312,
		0.687251, -0.566011, -0.455322,
		11.289035, 12.873018, 26.371962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.534041, 12.574806, 26.676525>,  <10.807959, 13.269225, 26.690687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.534041, 12.574806, 26.676525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.933567, 12.573077, 26.657118>,  <11.173283, 12.572040, 26.645473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.933567, 12.573077, 26.657118>,  <10.534041, 12.574806, 26.676525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.933567, 12.573077, 26.657118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035028, -0.628393, 0.777107,
		-0.033845, -0.777884, -0.627496,
		0.998813, -0.004321, -0.048516,
		11.233211, 12.571780, 26.642563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.731939, 11.865518, 26.513729>,  <10.534041, 12.574806, 26.676525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.731939, 11.865518, 26.513729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.045460, 12.054771, 26.674627>,  <11.233572, 12.168324, 26.771166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.045460, 12.054771, 26.674627>,  <10.731939, 11.865518, 26.513729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.045460, 12.054771, 26.674627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122432, -0.752740, 0.646833,
		0.608825, -0.457741, -0.647924,
		0.783800, 0.473134, 0.402245,
		11.280600, 12.196712, 26.795301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.157333, 11.357233, 26.680275>,  <10.731939, 11.865518, 26.513729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.157333, 11.357233, 26.680275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324410, 11.659608, 26.881905>,  <11.424657, 11.841033, 27.002882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.324410, 11.659608, 26.881905>,  <11.157333, 11.357233, 26.680275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.324410, 11.659608, 26.881905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371098, -0.648343, 0.664784,
		0.829348, -0.090614, -0.551335,
		0.417693, 0.755937, 0.504075,
		11.449718, 11.886389, 27.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.830447, 11.152040, 26.737944>,  <11.157333, 11.357233, 26.680275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.830447, 11.152040, 26.737944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.768617, 11.421695, 27.026844>,  <11.731519, 11.583488, 27.200184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.768617, 11.421695, 27.026844>,  <11.830447, 11.152040, 26.737944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.768617, 11.421695, 27.026844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213760, -0.690902, 0.690623,
		0.964579, 0.261143, -0.037306,
		-0.154577, 0.674135, 0.722252,
		11.722243, 11.623936, 27.243519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.471307, 11.164549, 27.171169>,  <11.830447, 11.152040, 26.737944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.471307, 11.164549, 27.171169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160031, 11.281790, 27.393345>,  <11.973266, 11.352135, 27.526649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.160031, 11.281790, 27.393345>,  <12.471307, 11.164549, 27.171169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.160031, 11.281790, 27.393345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233680, -0.685780, 0.689275,
		0.582937, 0.666181, 0.465174,
		-0.778190, 0.293102, 0.555439,
		11.926575, 11.369720, 27.559977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.711622, 11.220188, 27.848457>,  <12.471307, 11.164549, 27.171169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.711622, 11.220188, 27.848457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.320127, 11.187918, 27.923887>,  <12.085229, 11.168555, 27.969147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.320127, 11.187918, 27.923887>,  <12.711622, 11.220188, 27.848457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.320127, 11.187918, 27.923887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185113, -0.743398, 0.642723,
		0.088335, 0.663966, 0.742527,
		-0.978739, -0.080677, 0.188577,
		12.026505, 11.163714, 27.980461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.659852, 11.204265, 28.643152>,  <12.711622, 11.220188, 27.848457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.659852, 11.204265, 28.643152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338589, 11.056152, 28.456463>,  <12.145831, 10.967285, 28.344450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.338589, 11.056152, 28.456463>,  <12.659852, 11.204265, 28.643152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.338589, 11.056152, 28.456463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028699, -0.806535, 0.590489,
		-0.595075, 0.460861, 0.658402,
		-0.803157, -0.370281, -0.466723,
		12.097642, 10.945068, 28.316446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.253327, 11.012317, 29.187048>,  <12.659852, 11.204265, 28.643152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.253327, 11.012317, 29.187048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.122574, 10.822270, 28.860266>,  <12.044122, 10.708242, 28.664196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.122574, 10.822270, 28.860266>,  <12.253327, 11.012317, 29.187048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.122574, 10.822270, 28.860266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050960, -0.854323, 0.517238,
		-0.943690, 0.210709, 0.255052,
		-0.326883, -0.475115, -0.816953,
		12.024508, 10.679736, 28.615179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.485740, 10.835120, 29.239428>,  <12.253327, 11.012317, 29.187048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.485740, 10.835120, 29.239428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743726, 10.608791, 29.033955>,  <11.898518, 10.472994, 28.910671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.743726, 10.608791, 29.033955>,  <11.485740, 10.835120, 29.239428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.743726, 10.608791, 29.033955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112518, -0.735152, 0.668499,
		-0.755886, -0.373359, -0.537811,
		0.644963, -0.565822, -0.513682,
		11.937215, 10.439045, 28.879850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.105675, 10.266976, 29.174381>,  <11.485740, 10.835120, 29.239428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.105675, 10.266976, 29.174381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493361, 10.169318, 29.161669>,  <11.725974, 10.110723, 29.154041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.493361, 10.169318, 29.161669>,  <11.105675, 10.266976, 29.174381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.493361, 10.169318, 29.161669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118191, -0.574615, 0.809845,
		-0.215980, -0.781160, -0.585782,
		0.969218, -0.244144, -0.031779,
		11.784127, 10.096075, 29.152134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.273501, 9.507575, 29.165710>,  <11.105675, 10.266976, 29.174381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.273501, 9.507575, 29.165710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.575534, 9.713067, 29.328651>,  <11.756753, 9.836363, 29.426416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.575534, 9.713067, 29.328651>,  <11.273501, 9.507575, 29.165710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.575534, 9.713067, 29.328651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163206, -0.454471, 0.875683,
		0.634994, -0.727693, -0.259318,
		0.755080, 0.513731, 0.407350,
		11.802058, 9.867187, 29.450857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.797340, 9.033538, 29.560333>,  <11.273501, 9.507575, 29.165710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.797340, 9.033538, 29.560333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748069, 9.404843, 29.700706>,  <11.718506, 9.627626, 29.784931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.748069, 9.404843, 29.700706>,  <11.797340, 9.033538, 29.560333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.748069, 9.404843, 29.700706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155407, -0.367308, 0.917024,
		0.980141, 0.058420, 0.189503,
		-0.123179, 0.928263, 0.350935,
		11.711115, 9.683322, 29.805986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.737858, 8.354411, 30.022013>,  <11.797340, 9.033538, 29.560333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.737858, 8.354411, 30.022013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.958557, 8.024051, 29.975603>,  <12.090977, 7.825834, 29.947758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.958557, 8.024051, 29.975603>,  <11.737858, 8.354411, 30.022013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.958557, 8.024051, 29.975603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233045, 0.286249, -0.929382,
		0.800790, 0.485746, 0.350410,
		0.551748, -0.825901, -0.116025,
		12.124082, 7.776280, 29.940796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511540, 8.461975, 29.864214>,  <11.737858, 8.354411, 30.022013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511540, 8.461975, 29.864214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.394340, 8.130557, 29.673357>,  <12.324019, 7.931706, 29.558844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.394340, 8.130557, 29.673357>,  <12.511540, 8.461975, 29.864214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.394340, 8.130557, 29.673357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349351, 0.371761, -0.860086,
		0.890002, -0.418696, 0.180526,
		-0.293002, -0.828545, -0.477140,
		12.306438, 7.881994, 29.530214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.069075, 8.028263, 29.545254>,  <12.511540, 8.461975, 29.864214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.069075, 8.028263, 29.545254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.731926, 7.993020, 29.332914>,  <12.529636, 7.971874, 29.205511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.731926, 7.993020, 29.332914>,  <13.069075, 8.028263, 29.545254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.731926, 7.993020, 29.332914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474779, 0.342564, -0.810700,
		0.253276, -0.935354, -0.246908,
		-0.842874, -0.088104, -0.530850,
		12.479064, 7.966588, 29.173658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.102513, 7.596297, 28.925915>,  <13.069075, 8.028263, 29.545254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.102513, 7.596297, 28.925915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834677, 7.886377, 28.861750>,  <12.673975, 8.060426, 28.823250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.834677, 7.886377, 28.861750>,  <13.102513, 7.596297, 28.925915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.834677, 7.886377, 28.861750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507378, 0.288889, -0.811856,
		-0.542417, -0.625002, -0.561388,
		-0.669591, 0.725200, -0.160414,
		12.633800, 8.103937, 28.813625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743603, 7.491807, 28.307451>,  <13.102513, 7.596297, 28.925915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743603, 7.491807, 28.307451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789280, 7.879678, 28.393881>,  <12.816687, 8.112401, 28.445738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.789280, 7.879678, 28.393881>,  <12.743603, 7.491807, 28.307451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.789280, 7.879678, 28.393881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498512, 0.132200, -0.856743,
		-0.859328, 0.205549, -0.468299,
		0.114194, 0.969676, 0.216072,
		12.823538, 8.170581, 28.458702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.610813, 7.851995, 27.701601>,  <12.743603, 7.491807, 28.307451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.610813, 7.851995, 27.701601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841987, 8.115436, 27.894363>,  <12.980691, 8.273500, 28.010021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.841987, 8.115436, 27.894363>,  <12.610813, 7.851995, 27.701601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.841987, 8.115436, 27.894363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340610, 0.341953, -0.875816,
		-0.741605, 0.670306, -0.026700,
		0.577934, 0.658603, 0.481907,
		13.015367, 8.313017, 28.038935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.510902, 8.498194, 27.440397>,  <12.610813, 7.851995, 27.701601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.510902, 8.498194, 27.440397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855640, 8.594567, 27.618912>,  <13.062483, 8.652391, 27.726021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.855640, 8.594567, 27.618912>,  <12.510902, 8.498194, 27.440397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.855640, 8.594567, 27.618912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224787, 0.607342, -0.761976,
		-0.454636, 0.757025, 0.469276,
		0.861845, 0.240934, 0.446288,
		13.114194, 8.666847, 27.752798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.028911, 8.341315, 26.861296>,  <12.510902, 8.498194, 27.440397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.028911, 8.341315, 26.861296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.897479, 8.707343, 26.954834>,  <11.818621, 8.926960, 27.010958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.897479, 8.707343, 26.954834>,  <12.028911, 8.341315, 26.861296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.897479, 8.707343, 26.954834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175367, 0.302398, -0.936911,
		-0.928053, -0.266840, -0.259834,
		-0.328579, 0.915069, 0.233846,
		11.798905, 8.981864, 27.024988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380585, 8.591362, 26.400078>,  <12.028911, 8.341315, 26.861296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380585, 8.591362, 26.400078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621788, 8.873019, 26.550045>,  <11.766510, 9.042013, 26.640026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.621788, 8.873019, 26.550045>,  <11.380585, 8.591362, 26.400078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.621788, 8.873019, 26.550045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366013, 0.173384, -0.914315,
		-0.708814, 0.688564, -0.153174,
		0.603007, 0.704143, 0.374920,
		11.802691, 9.084262, 26.662521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.364267, 9.088272, 25.971964>,  <11.380585, 8.591362, 26.400078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.364267, 9.088272, 25.971964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709482, 9.149686, 26.164461>,  <11.916611, 9.186534, 26.279959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.709482, 9.149686, 26.164461>,  <11.364267, 9.088272, 25.971964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.709482, 9.149686, 26.164461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440128, 0.238983, -0.865548,
		-0.247901, 0.958809, 0.138677,
		0.863037, 0.153535, 0.481243,
		11.968393, 9.195746, 26.308834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.502280, 9.727684, 25.785482>,  <11.364267, 9.088272, 25.971964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.502280, 9.727684, 25.785482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.858906, 9.563930, 25.862961>,  <12.072881, 9.465677, 25.909447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.858906, 9.563930, 25.862961>,  <11.502280, 9.727684, 25.785482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.858906, 9.563930, 25.862961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379949, 0.443349, -0.811838,
		0.246480, 0.797399, 0.550819,
		0.891564, -0.409385, 0.193694,
		12.126375, 9.441114, 25.921068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.908466, 10.286017, 25.803215>,  <11.502280, 9.727684, 25.785482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.908466, 10.286017, 25.803215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.167837, 9.985889, 25.751736>,  <12.323460, 9.805813, 25.720848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.167837, 9.985889, 25.751736>,  <11.908466, 10.286017, 25.803215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.167837, 9.985889, 25.751736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386391, 0.470037, -0.793579,
		0.655930, 0.464851, 0.594701,
		0.648427, -0.750319, -0.128697,
		12.362366, 9.760794, 25.713127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.457625, 10.538529, 25.627579>,  <11.908466, 10.286017, 25.803215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.457625, 10.538529, 25.627579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588045, 10.180711, 25.505281>,  <12.666297, 9.966020, 25.431904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.588045, 10.180711, 25.505281>,  <12.457625, 10.538529, 25.627579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.588045, 10.180711, 25.505281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517723, 0.439569, -0.733990,
		0.790983, 0.081028, 0.606449,
		0.326051, -0.894546, -0.305742,
		12.685861, 9.912347, 25.413559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.187736, 10.563320, 25.454014>,  <12.457625, 10.538529, 25.627579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.187736, 10.563320, 25.454014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.018390, 10.256932, 25.260498>,  <12.916782, 10.073099, 25.144388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.018390, 10.256932, 25.260498>,  <13.187736, 10.563320, 25.454014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.018390, 10.256932, 25.260498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419978, 0.307230, -0.853949,
		0.802734, -0.564712, 0.191621,
		-0.423363, -0.765970, -0.483791,
		12.891380, 10.027142, 25.115360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.738442, 10.284026, 25.109802>,  <13.187736, 10.563320, 25.454014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.738442, 10.284026, 25.109802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412558, 10.165992, 24.910135>,  <13.217027, 10.095171, 24.790335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.412558, 10.165992, 24.910135>,  <13.738442, 10.284026, 25.109802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.412558, 10.165992, 24.910135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470751, 0.166062, -0.866497,
		0.338586, -0.940929, 0.003620,
		-0.814711, -0.295088, -0.499169,
		13.168144, 10.077466, 24.760384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.989002, 9.905540, 24.603045>,  <13.738442, 10.284026, 25.109802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.989002, 9.905540, 24.603045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617576, 9.972268, 24.470419>,  <13.394720, 10.012305, 24.390842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.617576, 9.972268, 24.470419>,  <13.989002, 9.905540, 24.603045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.617576, 9.972268, 24.470419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354284, 0.132013, -0.925773,
		-0.110668, -0.977109, -0.181685,
		-0.928566, 0.166821, -0.331564,
		13.339005, 10.022314, 24.370949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006329, 9.512250, 24.082935>,  <13.989002, 9.905540, 24.603045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006329, 9.512250, 24.082935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714835, 9.769831, 23.989748>,  <13.539939, 9.924379, 23.933836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714835, 9.769831, 23.989748>,  <14.006329, 9.512250, 24.082935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714835, 9.769831, 23.989748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346831, 0.053729, -0.936388,
		-0.590472, -0.763177, -0.262496,
		-0.728733, 0.643952, -0.232968,
		13.496215, 9.963017, 23.919857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.675471, 9.269057, 23.432035>,  <14.006329, 9.512250, 24.082935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.675471, 9.269057, 23.432035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598888, 9.661369, 23.447088>,  <13.552938, 9.896756, 23.456120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.598888, 9.661369, 23.447088>,  <13.675471, 9.269057, 23.432035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.598888, 9.661369, 23.447088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018662, 0.041971, -0.998944,
		-0.981323, -0.190553, -0.026339,
		-0.191458, 0.980779, 0.037631,
		13.541451, 9.955603, 23.458378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.147373, 9.365000, 22.898102>,  <13.675471, 9.269057, 23.432035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.147373, 9.365000, 22.898102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301040, 9.723803, 22.985552>,  <13.393240, 9.939084, 23.038021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.301040, 9.723803, 22.985552>,  <13.147373, 9.365000, 22.898102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.301040, 9.723803, 22.985552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000231, 0.236702, -0.971582,
		-0.923264, 0.373300, 0.090726,
		0.384167, 0.897006, 0.218624,
		13.416289, 9.992905, 23.051140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.812682, 9.823124, 22.364698>,  <13.147373, 9.365000, 22.898102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.812682, 9.823124, 22.364698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.142066, 10.005358, 22.499964>,  <13.339697, 10.114698, 22.581123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.142066, 10.005358, 22.499964>,  <12.812682, 9.823124, 22.364698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.142066, 10.005358, 22.499964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177750, 0.358864, -0.916309,
		-0.538812, 0.814653, 0.214530,
		0.823460, 0.455585, 0.338164,
		13.389104, 10.142034, 22.601414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.746604, 10.428571, 22.103706>,  <12.812682, 9.823124, 22.364698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.746604, 10.428571, 22.103706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.136990, 10.422606, 22.190674>,  <13.371222, 10.419026, 22.242853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.136990, 10.422606, 22.190674>,  <12.746604, 10.428571, 22.103706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.136990, 10.422606, 22.190674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201778, 0.438722, -0.875676,
		-0.082327, 0.898499, 0.431187,
		0.975965, -0.014912, 0.217416,
		13.429779, 10.418132, 22.255899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.073367, 11.131493, 21.955837>,  <12.746604, 10.428571, 22.103706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.073367, 11.131493, 21.955837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.340273, 10.833822, 21.943443>,  <13.500417, 10.655220, 21.936007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.340273, 10.833822, 21.943443>,  <13.073367, 11.131493, 21.955837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.340273, 10.833822, 21.943443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370652, 0.367854, -0.852819,
		0.646045, 0.557571, 0.521287,
		0.667265, -0.744176, -0.030985,
		13.540452, 10.610570, 21.934147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.752460, 11.484808, 21.802916>,  <13.073367, 11.131493, 21.955837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.752460, 11.484808, 21.802916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783360, 11.091523, 21.736792>,  <13.801900, 10.855553, 21.697117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.783360, 11.091523, 21.736792>,  <13.752460, 11.484808, 21.802916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.783360, 11.091523, 21.736792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458179, 0.182267, -0.869972,
		0.885497, -0.008536, 0.464568,
		0.077250, -0.983212, -0.165308,
		13.806536, 10.796559, 21.687199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.486321, 11.333681, 21.592916>,  <13.752460, 11.484808, 21.802916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.486321, 11.333681, 21.592916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.261021, 11.035429, 21.450489>,  <14.125840, 10.856478, 21.365032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.261021, 11.035429, 21.450489>,  <14.486321, 11.333681, 21.592916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.261021, 11.035429, 21.450489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420161, 0.112602, -0.900437,
		0.711486, -0.656778, 0.249861,
		-0.563251, -0.745630, -0.356067,
		14.092045, 10.811740, 21.343668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.883775, 10.972228, 21.071810>,  <14.486321, 11.333681, 21.592916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.883775, 10.972228, 21.071810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504976, 10.885968, 20.976568>,  <14.277698, 10.834212, 20.919422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.504976, 10.885968, 20.976568>,  <14.883775, 10.972228, 21.071810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.504976, 10.885968, 20.976568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242440, 0.006527, -0.970145,
		0.210765, -0.976449, 0.046101,
		-0.946996, -0.215649, -0.238106,
		14.220878, 10.821274, 20.905136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.896671, 10.702380, 20.404615>,  <14.883775, 10.972228, 21.071810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.896671, 10.702380, 20.404615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509199, 10.788925, 20.453352>,  <14.276716, 10.840852, 20.482594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.509199, 10.788925, 20.453352>,  <14.896671, 10.702380, 20.404615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.509199, 10.788925, 20.453352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093978, 0.134741, -0.986414,
		-0.229841, -0.966970, -0.110188,
		-0.968680, 0.216363, 0.121843,
		14.218596, 10.853834, 20.489904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.600654, 10.231515, 19.886932>,  <14.896671, 10.702380, 20.404615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.600654, 10.231515, 19.886932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381003, 10.556691, 19.964483>,  <14.249213, 10.751797, 20.011013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.381003, 10.556691, 19.964483>,  <14.600654, 10.231515, 19.886932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.381003, 10.556691, 19.964483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084990, 0.285097, -0.954723,
		-0.831407, -0.507785, -0.225646,
		-0.549125, 0.812942, 0.193875,
		14.216266, 10.800573, 20.022646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.268285, 10.355459, 19.199818>,  <14.600654, 10.231515, 19.886932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.268285, 10.355459, 19.199818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236500, 10.685851, 19.423046>,  <14.217429, 10.884087, 19.556984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.236500, 10.685851, 19.423046>,  <14.268285, 10.355459, 19.199818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.236500, 10.685851, 19.423046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006035, 0.560230, -0.828315,
		-0.996820, -0.062452, -0.049502,
		-0.079462, 0.825980, 0.558071,
		14.212661, 10.933645, 19.590467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.740974, 10.830058, 18.891844>,  <14.268285, 10.355459, 19.199818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.740974, 10.830058, 18.891844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.942131, 11.084455, 19.125977>,  <14.062825, 11.237094, 19.266457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.942131, 11.084455, 19.125977>,  <13.740974, 10.830058, 18.891844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.942131, 11.084455, 19.125977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003535, 0.675674, -0.737192,
		-0.864342, 0.372797, 0.337542,
		0.502891, 0.635993, 0.585332,
		14.092999, 11.275253, 19.301577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.399049, 11.518197, 18.849266>,  <13.740974, 10.830058, 18.891844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.399049, 11.518197, 18.849266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776408, 11.570858, 18.971031>,  <14.002824, 11.602454, 19.044090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.776408, 11.570858, 18.971031>,  <13.399049, 11.518197, 18.849266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776408, 11.570858, 18.971031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050024, 0.850859, -0.523007,
		-0.327867, 0.508632, 0.796114,
		0.943399, 0.131652, 0.304412,
		14.059428, 11.610353, 19.062355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.364558, 12.271682, 18.854195>,  <13.399049, 11.518197, 18.849266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.364558, 12.271682, 18.854195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751302, 12.176464, 18.891109>,  <13.983348, 12.119333, 18.913258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.751302, 12.176464, 18.891109>,  <13.364558, 12.271682, 18.854195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.751302, 12.176464, 18.891109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254700, 0.874415, -0.412949,
		0.017605, 0.422769, 0.906066,
		0.966860, -0.238045, 0.092286,
		14.041360, 12.105051, 18.918795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704157, 12.879815, 19.107145>,  <13.364558, 12.271682, 18.854195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704157, 12.879815, 19.107145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965958, 12.656935, 18.902733>,  <14.123038, 12.523207, 18.780085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.965958, 12.656935, 18.902733>,  <13.704157, 12.879815, 19.107145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965958, 12.656935, 18.902733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275209, 0.805124, -0.525390,
		0.704193, 0.203228, 0.680301,
		0.654501, -0.557201, -0.511033,
		14.162308, 12.489775, 18.749422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.151032, 13.360208, 19.023266>,  <13.704157, 12.879815, 19.107145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.151032, 13.360208, 19.023266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263950, 13.078326, 18.762896>,  <14.331701, 12.909198, 18.606674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.263950, 13.078326, 18.762896>,  <14.151032, 13.360208, 19.023266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.263950, 13.078326, 18.762896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326942, 0.708574, -0.625326,
		0.901897, -0.036289, 0.430423,
		0.282294, -0.704703, -0.650925,
		14.348639, 12.866916, 18.567617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.829186, 13.550858, 18.711535>,  <14.151032, 13.360208, 19.023266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.829186, 13.550858, 18.711535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668109, 13.305480, 18.439793>,  <14.571463, 13.158254, 18.276747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.668109, 13.305480, 18.439793>,  <14.829186, 13.550858, 18.711535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.668109, 13.305480, 18.439793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265343, 0.632092, -0.728048,
		0.876031, -0.473443, -0.091766,
		-0.402694, -0.613443, -0.679357,
		14.547301, 13.121447, 18.235985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.215291, 13.642683, 18.149401>,  <14.829186, 13.550858, 18.711535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.215291, 13.642683, 18.149401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890148, 13.473528, 17.989187>,  <14.695063, 13.372035, 17.893059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.890148, 13.473528, 17.989187>,  <15.215291, 13.642683, 18.149401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.890148, 13.473528, 17.989187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117581, 0.554365, -0.823926,
		0.570478, -0.716826, -0.400893,
		-0.812853, -0.422894, -0.400538,
		14.646291, 13.346662, 17.869026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391977, 13.278889, 17.434050>,  <15.215291, 13.642683, 18.149401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391977, 13.278889, 17.434050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013831, 13.409083, 17.426649>,  <14.786943, 13.487200, 17.422209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.013831, 13.409083, 17.426649>,  <15.391977, 13.278889, 17.434050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013831, 13.409083, 17.426649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157064, 0.404988, -0.900731,
		-0.285683, -0.854426, -0.433984,
		-0.945365, 0.325487, -0.018501,
		14.730222, 13.506729, 17.421099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.179515, 13.148499, 16.721087>,  <15.391977, 13.278889, 17.434050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.179515, 13.148499, 16.721087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912344, 13.396212, 16.886187>,  <14.752041, 13.544840, 16.985247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.912344, 13.396212, 16.886187>,  <15.179515, 13.148499, 16.721087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.912344, 13.396212, 16.886187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047796, 0.589151, -0.806608,
		-0.742689, -0.519029, -0.423110,
		-0.667928, 0.619283, 0.412749,
		14.711966, 13.581996, 17.010012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.813162, 13.389892, 16.106438>,  <15.179515, 13.148499, 16.721087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.813162, 13.389892, 16.106438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728056, 13.619329, 16.422848>,  <14.676992, 13.756992, 16.612694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.728056, 13.619329, 16.422848>,  <14.813162, 13.389892, 16.106438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.728056, 13.619329, 16.422848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046842, 0.814618, -0.578103,
		-0.975980, -0.085947, -0.200191,
		-0.212766, 0.573594, 0.791025,
		14.664227, 13.791408, 16.660156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.251633, 13.891508, 15.820841>,  <14.813162, 13.389892, 16.106438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.251633, 13.891508, 15.820841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413657, 14.028496, 16.159931>,  <14.510872, 14.110688, 16.363386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.413657, 14.028496, 16.159931>,  <14.251633, 13.891508, 15.820841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.413657, 14.028496, 16.159931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051995, 0.917068, -0.395327,
		-0.912810, 0.204209, 0.353662,
		0.405061, 0.342469, 0.847726,
		14.535175, 14.131237, 16.414249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.754255, 14.432519, 16.102987>,  <14.251633, 13.891508, 15.820841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.754255, 14.432519, 16.102987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131042, 14.490984, 16.223871>,  <14.357115, 14.526063, 16.296402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.131042, 14.490984, 16.223871>,  <13.754255, 14.432519, 16.102987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.131042, 14.490984, 16.223871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074382, 0.786989, -0.612467,
		-0.327356, 0.599404, 0.730448,
		0.941969, 0.146162, 0.302210,
		14.413633, 14.534833, 16.314535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.773408, 15.181241, 16.104130>,  <13.754255, 14.432519, 16.102987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.773408, 15.181241, 16.104130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157126, 15.068393, 16.109196>,  <14.387358, 15.000684, 16.112236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.157126, 15.068393, 16.109196>,  <13.773408, 15.181241, 16.104130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.157126, 15.068393, 16.109196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266833, 0.890800, -0.367797,
		0.092480, 0.356206, 0.929820,
		0.959295, -0.282120, 0.012666,
		14.444915, 14.983757, 16.112995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.044826, 15.793865, 16.192524>,  <13.773408, 15.181241, 16.104130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.044826, 15.793865, 16.192524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338164, 15.557557, 16.057947>,  <14.514168, 15.415772, 15.977201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.338164, 15.557557, 16.057947>,  <14.044826, 15.793865, 16.192524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.338164, 15.557557, 16.057947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432481, 0.787212, -0.439610,
		0.524561, 0.176881, 0.832796,
		0.733346, -0.590771, -0.336443,
		14.558168, 15.380326, 15.957014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.704606, 16.202917, 16.371471>,  <14.044826, 15.793865, 16.192524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.704606, 16.202917, 16.371471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801654, 15.937270, 16.088606>,  <14.859882, 15.777882, 15.918886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801654, 15.937270, 16.088606>,  <14.704606, 16.202917, 16.371471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801654, 15.937270, 16.088606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604627, 0.673568, -0.425126,
		0.758658, -0.324427, 0.564965,
		0.242620, -0.664118, -0.707165,
		14.874439, 15.738034, 15.876456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.459585, 16.209061, 16.367891>,  <14.704606, 16.202917, 16.371471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.459585, 16.209061, 16.367891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.355802, 16.032358, 16.024372>,  <15.293531, 15.926336, 15.818261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.355802, 16.032358, 16.024372>,  <15.459585, 16.209061, 16.367891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.355802, 16.032358, 16.024372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660966, 0.567129, -0.491415,
		0.704135, -0.695137, 0.144840,
		-0.259458, -0.441756, -0.858797,
		15.277965, 15.899832, 15.766733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.063696, 16.049789, 16.092073>,  <15.459585, 16.209061, 16.367891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.063696, 16.049789, 16.092073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800519, 16.092264, 15.793856>,  <15.642613, 16.117750, 15.614924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800519, 16.092264, 15.793856>,  <16.063696, 16.049789, 16.092073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800519, 16.092264, 15.793856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587559, 0.691641, -0.420008,
		0.471050, -0.714392, -0.517451,
		-0.657941, 0.106188, -0.745545,
		15.603137, 16.124121, 15.570192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.479025, 15.960946, 15.511637>,  <16.063696, 16.049789, 16.092073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.479025, 15.960946, 15.511637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143494, 16.151241, 15.405778>,  <15.942175, 16.265419, 15.342262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.143494, 16.151241, 15.405778>,  <16.479025, 15.960946, 15.511637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.143494, 16.151241, 15.405778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543756, 0.708627, -0.449641,
		-0.026376, -0.521076, -0.853103,
		-0.838829, 0.475739, -0.264647,
		15.891845, 16.293962, 15.326384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.855616, 16.062807, 14.850608>,  <16.479025, 15.960946, 15.511637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.855616, 16.062807, 14.850608> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853556, 15.895610, 14.487233>,  <16.852320, 15.795292, 14.269209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.853556, 15.895610, 14.487233>,  <16.855616, 16.062807, 14.850608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.853556, 15.895610, 14.487233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187948, -0.892662, 0.409670,
		-0.982165, -0.168630, 0.083157,
		-0.005149, -0.417993, -0.908436,
		16.852011, 15.770212, 14.214703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318241, 15.502070, 14.677660>,  <16.855616, 16.062807, 14.850608>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318241, 15.502070, 14.677660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.681063, 15.447351, 14.518394>,  <16.898756, 15.414520, 14.422833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.681063, 15.447351, 14.518394>,  <16.318241, 15.502070, 14.677660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.681063, 15.447351, 14.518394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037422, -0.968193, 0.247389,
		-0.419343, -0.209496, -0.883325,
		0.907056, -0.136797, -0.398165,
		16.953180, 15.406312, 14.398944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.426661, 14.880306, 14.479349>,  <16.318241, 15.502070, 14.677660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.426661, 14.880306, 14.479349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812014, 14.976306, 14.527165>,  <17.043226, 15.033906, 14.555855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812014, 14.976306, 14.527165>,  <16.426661, 14.880306, 14.479349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812014, 14.976306, 14.527165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153408, -0.859046, 0.488371,
		0.219899, -0.452151, -0.864410,
		0.963385, 0.240000, 0.119540,
		17.101028, 15.048306, 14.563027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.958071, 14.341721, 14.155502>,  <16.426661, 14.880306, 14.479349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.958071, 14.341721, 14.155502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073391, 14.548824, 14.477697>,  <17.142584, 14.673086, 14.671014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.073391, 14.548824, 14.477697>,  <16.958071, 14.341721, 14.155502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.073391, 14.548824, 14.477697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046517, -0.847784, 0.528297,
		0.956410, -0.114839, -0.268501,
		0.288300, 0.517759, 0.805487,
		17.159882, 14.704152, 14.719343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.515701, 14.025695, 14.499996>,  <16.958071, 14.341721, 14.155502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.515701, 14.025695, 14.499996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.440405, 14.256322, 14.818024>,  <17.395227, 14.394698, 15.008840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.440405, 14.256322, 14.818024>,  <17.515701, 14.025695, 14.499996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.440405, 14.256322, 14.818024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102962, -0.793494, 0.599805,
		0.976710, 0.194771, 0.090005,
		-0.188243, 0.576569, 0.795068,
		17.383932, 14.429293, 15.056544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.873512, 13.742317, 15.023752>,  <17.515701, 14.025695, 14.499996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.873512, 13.742317, 15.023752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589334, 13.941935, 15.222236>,  <17.418827, 14.061706, 15.341326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.589334, 13.941935, 15.222236>,  <17.873512, 13.742317, 15.023752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.589334, 13.941935, 15.222236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037769, -0.677034, 0.734981,
		0.702738, 0.540906, 0.462148,
		-0.710445, 0.499044, 0.496208,
		17.376202, 14.091648, 15.371098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.155128, 13.815444, 15.631649>,  <17.873512, 13.742317, 15.023752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.155128, 13.815444, 15.631649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766752, 13.852568, 15.719889>,  <17.533728, 13.874842, 15.772832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.766752, 13.852568, 15.719889>,  <18.155128, 13.815444, 15.631649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.766752, 13.852568, 15.719889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112064, -0.638150, 0.761713,
		0.211468, 0.764298, 0.609204,
		-0.970939, 0.092809, 0.220598,
		17.475470, 13.880410, 15.786068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.168222, 13.742239, 16.424589>,  <18.155128, 13.815444, 15.631649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.168222, 13.742239, 16.424589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.779112, 13.716148, 16.335638>,  <17.545645, 13.700494, 16.282267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.779112, 13.716148, 16.335638>,  <18.168222, 13.742239, 16.424589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.779112, 13.716148, 16.335638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118642, -0.684117, 0.719658,
		-0.199073, 0.726449, 0.657755,
		-0.972776, -0.065227, -0.222377,
		17.487278, 13.696580, 16.268925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.721821, 14.129283, 16.955324>,  <18.168222, 13.742239, 16.424589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.721821, 14.129283, 16.955324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561230, 13.819213, 16.760216>,  <17.464874, 13.633171, 16.643150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.561230, 13.819213, 16.760216>,  <17.721821, 14.129283, 16.955324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561230, 13.819213, 16.760216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086874, -0.497944, 0.862847,
		-0.911739, 0.388789, 0.132571,
		-0.401479, -0.775174, -0.487770,
		17.440786, 13.586660, 16.613884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.259401, 13.862544, 17.437973>,  <17.721821, 14.129283, 16.955324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.259401, 13.862544, 17.437973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.322144, 13.566387, 17.176525>,  <17.359789, 13.388693, 17.019657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.322144, 13.566387, 17.176525>,  <17.259401, 13.862544, 17.437973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.322144, 13.566387, 17.176525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044115, -0.666403, 0.744286,
		-0.986636, -0.087910, -0.137190,
		0.156854, -0.740391, -0.653619,
		17.369200, 13.344270, 16.980440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.838715, 13.419196, 17.618994>,  <17.259401, 13.862544, 17.437973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.838715, 13.419196, 17.618994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124905, 13.220345, 17.422644>,  <17.296619, 13.101034, 17.304834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.124905, 13.220345, 17.422644>,  <16.838715, 13.419196, 17.618994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.124905, 13.220345, 17.422644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153227, -0.797170, 0.583988,
		-0.681627, -0.342614, -0.646529,
		0.715476, -0.497128, -0.490875,
		17.339548, 13.071206, 17.275381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.556429, 12.730934, 17.673710>,  <16.838715, 13.419196, 17.618994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.556429, 12.730934, 17.673710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.927544, 12.662449, 17.541107>,  <17.150213, 12.621358, 17.461546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.927544, 12.662449, 17.541107>,  <16.556429, 12.730934, 17.673710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.927544, 12.662449, 17.541107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000367, -0.888915, 0.458072,
		-0.373109, -0.424871, -0.824787,
		0.927787, -0.171213, -0.331506,
		17.205879, 12.611085, 17.441656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.612038, 12.022661, 17.312660>,  <16.556429, 12.730934, 17.673710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.612038, 12.022661, 17.312660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975657, 12.102224, 17.459124>,  <17.193827, 12.149962, 17.547001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.975657, 12.102224, 17.459124>,  <16.612038, 12.022661, 17.312660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.975657, 12.102224, 17.459124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003258, -0.875297, 0.483575,
		0.416685, -0.440784, -0.795036,
		0.909045, 0.198908, 0.366159,
		17.248369, 12.161897, 17.568972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913490, 11.433899, 17.267862>,  <16.612038, 12.022661, 17.312660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913490, 11.433899, 17.267862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.149616, 11.629201, 17.524963>,  <17.291292, 11.746382, 17.679224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.149616, 11.629201, 17.524963>,  <16.913490, 11.433899, 17.267862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.149616, 11.629201, 17.524963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170493, -0.853762, 0.491958,
		0.788960, -0.180826, -0.587234,
		0.590317, 0.488255, 0.642754,
		17.326712, 11.775678, 17.717789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.340157, 10.908489, 17.614944>,  <16.913490, 11.433899, 17.267862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.340157, 10.908489, 17.614944> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390268, 11.231714, 17.845194>,  <17.420336, 11.425649, 17.983343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.390268, 11.231714, 17.845194>,  <17.340157, 10.908489, 17.614944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.390268, 11.231714, 17.845194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221463, -0.588331, 0.777702,
		0.967088, 0.030047, -0.252663,
		0.125281, 0.808062, 0.575622,
		17.427853, 11.474133, 18.017881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.885248, 10.631135, 18.048458>,  <17.340157, 10.908489, 17.614944>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.885248, 10.631135, 18.048458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717022, 10.945011, 18.230616>,  <17.616087, 11.133337, 18.339911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.717022, 10.945011, 18.230616>,  <17.885248, 10.631135, 18.048458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.717022, 10.945011, 18.230616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035484, -0.487334, 0.872494,
		0.906569, 0.383099, 0.177111,
		-0.420564, 0.784691, 0.455396,
		17.590853, 11.180419, 18.367235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.357594, 10.797449, 18.699766>,  <17.885248, 10.631135, 18.048458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.357594, 10.797449, 18.699766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.995693, 10.951203, 18.773167>,  <17.778553, 11.043456, 18.817207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.995693, 10.951203, 18.773167>,  <18.357594, 10.797449, 18.699766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.995693, 10.951203, 18.773167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015272, -0.459812, 0.887885,
		0.425666, 0.800513, 0.421886,
		-0.904752, 0.384385, 0.183500,
		17.724268, 11.066519, 18.828217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.407324, 11.022001, 19.375443>,  <18.357594, 10.797449, 18.699766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.407324, 11.022001, 19.375443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015652, 10.987718, 19.301844>,  <17.780647, 10.967148, 19.257685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.015652, 10.987718, 19.301844>,  <18.407324, 11.022001, 19.375443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.015652, 10.987718, 19.301844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129910, -0.431892, 0.892520,
		-0.155965, 0.897844, 0.411767,
		-0.979182, -0.085709, -0.183999,
		17.721897, 10.962005, 19.246643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013178, 11.313922, 19.999933>,  <18.407324, 11.022001, 19.375443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013178, 11.313922, 19.999933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733133, 11.107318, 19.802727>,  <17.565107, 10.983356, 19.684402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.733133, 11.107318, 19.802727>,  <18.013178, 11.313922, 19.999933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.733133, 11.107318, 19.802727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421103, -0.258938, 0.869266,
		-0.576645, 0.816192, -0.036219,
		-0.700109, -0.516510, -0.493016,
		17.523100, 10.952365, 19.654821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.445471, 11.538233, 20.335579>,  <18.013178, 11.313922, 19.999933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.445471, 11.538233, 20.335579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370859, 11.176368, 20.182325>,  <17.326092, 10.959249, 20.090374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.370859, 11.176368, 20.182325>,  <17.445471, 11.538233, 20.335579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.370859, 11.176368, 20.182325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359201, -0.300178, 0.883667,
		-0.914430, 0.302451, -0.268964,
		-0.186529, -0.904664, -0.383133,
		17.314901, 10.904968, 20.067385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.762358, 11.326609, 20.486748>,  <17.445471, 11.538233, 20.335579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.762358, 11.326609, 20.486748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903418, 10.957903, 20.422260>,  <16.988052, 10.736680, 20.383568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903418, 10.957903, 20.422260>,  <16.762358, 11.326609, 20.486748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903418, 10.957903, 20.422260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459346, -0.320621, 0.828374,
		-0.815255, -0.218069, -0.536475,
		0.352648, -0.921763, -0.161219,
		17.009212, 10.681374, 20.373894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.145792, 10.910985, 20.663235>,  <16.762358, 11.326609, 20.486748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.145792, 10.910985, 20.663235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450373, 10.651697, 20.663595>,  <16.633121, 10.496124, 20.663811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.450373, 10.651697, 20.663595>,  <16.145792, 10.910985, 20.663235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.450373, 10.651697, 20.663595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415258, -0.486725, 0.768544,
		-0.497768, -0.585567, -0.639796,
		0.761439, -0.648237, 0.000885,
		16.678808, 10.457232, 20.663864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.830996, 10.270718, 20.753748>,  <16.145792, 10.910985, 20.663235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.830996, 10.270718, 20.753748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.215288, 10.231956, 20.857752>,  <16.445864, 10.208699, 20.920155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.215288, 10.231956, 20.857752>,  <15.830996, 10.270718, 20.753748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.215288, 10.231956, 20.857752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256543, -0.667294, 0.699218,
		0.105747, -0.738464, -0.665949,
		0.960731, -0.096904, 0.260012,
		16.503508, 10.202886, 20.935755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.004192, 9.534056, 20.795801>,  <15.830996, 10.270718, 20.753748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.004192, 9.534056, 20.795801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238653, 9.761148, 21.027008>,  <16.379330, 9.897405, 21.165733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.238653, 9.761148, 21.027008>,  <16.004192, 9.534056, 20.795801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.238653, 9.761148, 21.027008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236342, -0.562583, 0.792239,
		0.774964, -0.600983, -0.195579,
		0.586152, 0.567733, 0.578019,
		16.414499, 9.931468, 21.200415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.249729, 9.031658, 21.249002>,  <16.004192, 9.534056, 20.795801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.249729, 9.031658, 21.249002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.347700, 9.378603, 21.422298>,  <16.406483, 9.586770, 21.526276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.347700, 9.378603, 21.422298>,  <16.249729, 9.031658, 21.249002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.347700, 9.378603, 21.422298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177022, -0.399331, 0.899554,
		0.953244, -0.297018, 0.055735,
		0.244927, 0.867361, 0.433239,
		16.421179, 9.638811, 21.552271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.558779, 8.841283, 21.891684>,  <16.249729, 9.031658, 21.249002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.558779, 8.841283, 21.891684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458540, 9.223009, 21.956779>,  <16.398397, 9.452044, 21.995836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.458540, 9.223009, 21.956779>,  <16.558779, 8.841283, 21.891684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.458540, 9.223009, 21.956779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145957, -0.203426, 0.968150,
		0.957025, 0.218863, 0.190267,
		-0.250598, 0.954315, 0.162739,
		16.383360, 9.509304, 22.005602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.935928, 9.001207, 22.523001>,  <16.558779, 8.841283, 21.891684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.935928, 9.001207, 22.523001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637106, 9.258798, 22.457029>,  <16.457811, 9.413352, 22.417446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.637106, 9.258798, 22.457029>,  <16.935928, 9.001207, 22.523001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.637106, 9.258798, 22.457029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360978, -0.184648, 0.914112,
		0.558212, 0.742429, 0.370403,
		-0.747057, 0.643976, -0.164928,
		16.412989, 9.451990, 22.407551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.849176, 9.528726, 23.042709>,  <16.935928, 9.001207, 22.523001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.849176, 9.528726, 23.042709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481276, 9.497907, 22.888765>,  <16.260534, 9.479415, 22.796398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481276, 9.497907, 22.888765>,  <16.849176, 9.528726, 23.042709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481276, 9.497907, 22.888765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373393, -0.130438, 0.918457,
		-0.120966, 0.988458, 0.091201,
		-0.919753, -0.077048, -0.384862,
		16.205349, 9.474792, 22.773306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.476324, 10.073263, 23.295551>,  <16.849176, 9.528726, 23.042709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.476324, 10.073263, 23.295551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.206409, 9.798052, 23.188761>,  <16.044460, 9.632925, 23.124687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.206409, 9.798052, 23.188761>,  <16.476324, 10.073263, 23.295551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.206409, 9.798052, 23.188761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228169, -0.149535, 0.962070,
		-0.701854, 0.710110, -0.056082,
		-0.674789, -0.688029, -0.266977,
		16.003973, 9.591643, 23.108667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.935992, 10.125386, 23.843094>,  <16.476324, 10.073263, 23.295551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.935992, 10.125386, 23.843094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.866175, 9.772520, 23.668133>,  <15.824285, 9.560801, 23.563156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.866175, 9.772520, 23.668133>,  <15.935992, 10.125386, 23.843094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.866175, 9.772520, 23.668133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322395, -0.368534, 0.871920,
		-0.930374, 0.293204, -0.220080,
		-0.174543, -0.882165, -0.437402,
		15.813811, 9.507871, 23.536913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.218631, 9.899449, 24.126059>,  <15.935992, 10.125386, 23.843094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.218631, 9.899449, 24.126059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388227, 9.570577, 23.974138>,  <15.489984, 9.373253, 23.882986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.388227, 9.570577, 23.974138>,  <15.218631, 9.899449, 24.126059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.388227, 9.570577, 23.974138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266792, -0.514139, 0.815159,
		-0.865480, -0.244290, -0.437341,
		0.423989, -0.822182, -0.379802,
		15.515423, 9.323922, 23.860197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.716643, 9.374250, 24.258812>,  <15.218631, 9.899449, 24.126059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.716643, 9.374250, 24.258812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082160, 9.216976, 24.218037>,  <15.301470, 9.122612, 24.193571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.082160, 9.216976, 24.218037>,  <14.716643, 9.374250, 24.258812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.082160, 9.216976, 24.218037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113014, -0.487162, 0.865968,
		-0.390144, -0.779794, -0.489600,
		0.913792, -0.393184, -0.101936,
		15.356297, 9.099021, 24.187456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.565911, 8.769019, 24.595022>,  <14.716643, 9.374250, 24.258812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.565911, 8.769019, 24.595022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963197, 8.813467, 24.581276>,  <15.201568, 8.840136, 24.573029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.963197, 8.813467, 24.581276>,  <14.565911, 8.769019, 24.595022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.963197, 8.813467, 24.581276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079351, -0.431343, 0.898692,
		0.085040, -0.895319, -0.437232,
		0.993213, 0.111119, -0.034363,
		15.261161, 8.846803, 24.570967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.819579, 8.136018, 25.001747>,  <14.565911, 8.769019, 24.595022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.819579, 8.136018, 25.001747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157159, 8.346828, 24.961760>,  <15.359707, 8.473313, 24.937767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.157159, 8.346828, 24.961760>,  <14.819579, 8.136018, 25.001747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.157159, 8.346828, 24.961760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309464, -0.326123, 0.893239,
		0.438156, -0.784786, -0.438327,
		0.843950, 0.527024, -0.099970,
		15.410344, 8.504934, 24.931768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.402830, 7.678810, 25.219181>,  <14.819579, 8.136018, 25.001747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.402830, 7.678810, 25.219181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.529382, 8.057309, 25.246061>,  <15.605313, 8.284409, 25.262190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.529382, 8.057309, 25.246061>,  <15.402830, 7.678810, 25.219181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529382, 8.057309, 25.246061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274807, -0.159225, 0.948224,
		0.907957, -0.281531, -0.310411,
		0.316380, 0.946249, 0.067202,
		15.624295, 8.341184, 25.266222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.936975, 7.694310, 25.735857>,  <15.402830, 7.678810, 25.219181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.936975, 7.694310, 25.735857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800688, 8.070340, 25.741037>,  <15.718915, 8.295959, 25.744144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.800688, 8.070340, 25.741037>,  <15.936975, 7.694310, 25.735857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.800688, 8.070340, 25.741037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167960, 0.047311, 0.984658,
		0.925041, 0.337666, -0.174014,
		-0.340719, 0.940076, 0.012950,
		15.698472, 8.352363, 25.744923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504339, 8.150198, 26.167290>,  <15.936975, 7.694310, 25.735857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504339, 8.150198, 26.167290> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138531, 8.311852, 26.160109>,  <15.919045, 8.408844, 26.155800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.138531, 8.311852, 26.160109>,  <16.504339, 8.150198, 26.167290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.138531, 8.311852, 26.160109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001106, 0.041881, 0.999122,
		0.404532, 0.913740, -0.037854,
		-0.914523, 0.404135, -0.017952,
		15.864174, 8.433092, 26.154722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506662, 8.730725, 26.610386>,  <16.504339, 8.150198, 26.167290>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506662, 8.730725, 26.610386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123180, 8.620544, 26.582085>,  <15.893090, 8.554436, 26.565104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123180, 8.620544, 26.582085>,  <16.506662, 8.730725, 26.610386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123180, 8.620544, 26.582085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069141, -0.015579, 0.997485,
		-0.275862, 0.961188, -0.004110,
		-0.958707, -0.275453, -0.070755,
		15.835568, 8.537909, 26.560858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.475225, 8.303431, 27.241697>,  <16.506662, 8.730725, 26.610386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.475225, 8.303431, 27.241697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329384, 8.526816, 27.539740>,  <16.241879, 8.660848, 27.718565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.329384, 8.526816, 27.539740>,  <16.475225, 8.303431, 27.241697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.329384, 8.526816, 27.539740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229105, 0.829391, -0.509531,
		-0.902538, -0.015070, -0.430346,
		-0.364603, 0.558465, 0.745105,
		16.220003, 8.694356, 27.763271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.877644, 8.788227, 27.051733>,  <16.475225, 8.303431, 27.241697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.877644, 8.788227, 27.051733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124790, 8.913601, 27.340178>,  <16.273077, 8.988825, 27.513245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.124790, 8.913601, 27.340178>,  <15.877644, 8.788227, 27.051733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.124790, 8.913601, 27.340178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187046, 0.832195, -0.521983,
		-0.763712, 0.457396, 0.455558,
		0.617865, 0.313434, 0.721111,
		16.310150, 9.007631, 27.556511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.700863, 9.495029, 27.125916>,  <15.877644, 8.788227, 27.051733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.700863, 9.495029, 27.125916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060535, 9.455262, 27.296370>,  <16.276339, 9.431401, 27.398642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.060535, 9.455262, 27.296370>,  <15.700863, 9.495029, 27.125916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.060535, 9.455262, 27.296370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315898, 0.821363, -0.474944,
		-0.302792, 0.561675, 0.769960,
		0.899181, -0.099419, 0.426134,
		16.330290, 9.425436, 27.424210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.894980, 10.168857, 27.295992>,  <15.700863, 9.495029, 27.125916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.894980, 10.168857, 27.295992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242344, 9.970869, 27.307814>,  <16.450762, 9.852077, 27.314907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.242344, 9.970869, 27.307814>,  <15.894980, 10.168857, 27.295992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242344, 9.970869, 27.307814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437527, 0.736854, -0.515380,
		0.233321, 0.460490, 0.856452,
		0.868408, -0.494970, 0.029553,
		16.502867, 9.822378, 27.316679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.448303, 10.669482, 27.391451>,  <15.894980, 10.168857, 27.295992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.448303, 10.669482, 27.391451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.633827, 10.369489, 27.202812>,  <16.745142, 10.189492, 27.089628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.633827, 10.369489, 27.202812>,  <16.448303, 10.669482, 27.391451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.633827, 10.369489, 27.202812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586505, 0.658897, -0.471028,
		0.663998, -0.058128, 0.745471,
		0.463809, -0.749984, -0.471599,
		16.772970, 10.144493, 27.061333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.144398, 10.866369, 27.348335>,  <16.448303, 10.669482, 27.391451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.144398, 10.866369, 27.348335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.144388, 10.567807, 27.082138>,  <17.144382, 10.388670, 26.922421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.144388, 10.567807, 27.082138>,  <17.144398, 10.866369, 27.348335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.144388, 10.567807, 27.082138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668561, 0.494887, -0.555080,
		0.743657, -0.444935, 0.499005,
		-0.000023, -0.746405, -0.665492,
		17.144381, 10.343885, 26.882490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.836470, 10.897038, 27.076321>,  <17.144398, 10.866369, 27.348335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.836470, 10.897038, 27.076321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638321, 10.675585, 26.808561>,  <17.519432, 10.542713, 26.647905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.638321, 10.675585, 26.808561>,  <17.836470, 10.897038, 27.076321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.638321, 10.675585, 26.808561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528225, 0.419778, -0.738082,
		0.689626, -0.719219, 0.084496,
		-0.495373, -0.553633, -0.669399,
		17.489710, 10.509495, 26.607742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.263565, 10.640561, 26.630829>,  <17.836470, 10.897038, 27.076321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.263565, 10.640561, 26.630829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924948, 10.640008, 26.417902>,  <17.721777, 10.639676, 26.290146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.924948, 10.640008, 26.417902>,  <18.263565, 10.640561, 26.630829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.924948, 10.640008, 26.417902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508563, 0.293302, -0.809529,
		0.157247, -0.956019, -0.247590,
		-0.846544, -0.001381, -0.532317,
		17.670984, 10.639593, 26.258207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.455261, 10.385489, 26.050804>,  <18.263565, 10.640561, 26.630829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.455261, 10.385489, 26.050804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.111593, 10.560103, 25.944025>,  <17.905392, 10.664872, 25.879957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.111593, 10.560103, 25.944025>,  <18.455261, 10.385489, 26.050804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.111593, 10.560103, 25.944025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458229, 0.424239, -0.781056,
		-0.227708, -0.793384, -0.564527,
		-0.859171, 0.436535, -0.266949,
		17.853842, 10.691064, 25.863941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.361010, 10.214970, 25.332094>,  <18.455261, 10.385489, 26.050804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.361010, 10.214970, 25.332094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122862, 10.535290, 25.358185>,  <17.979973, 10.727482, 25.373838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.122862, 10.535290, 25.358185>,  <18.361010, 10.214970, 25.332094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.122862, 10.535290, 25.358185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492074, 0.427604, -0.758299,
		-0.635138, -0.419371, -0.648635,
		-0.595368, 0.800801, 0.065226,
		17.944252, 10.775530, 25.377752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.186514, 10.394702, 24.688967>,  <18.361010, 10.214970, 25.332094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.186514, 10.394702, 24.688967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082045, 10.733094, 24.874916>,  <18.019363, 10.936130, 24.986486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.082045, 10.733094, 24.874916>,  <18.186514, 10.394702, 24.688967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.082045, 10.733094, 24.874916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375448, 0.532694, -0.758469,
		-0.889286, -0.023554, -0.456745,
		-0.261171, 0.845980, 0.464874,
		18.003693, 10.986888, 25.014378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.803465, 10.773699, 24.135054>,  <18.186514, 10.394702, 24.688967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.803465, 10.773699, 24.135054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.914709, 11.042218, 24.409866>,  <17.981455, 11.203330, 24.574753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.914709, 11.042218, 24.409866>,  <17.803465, 10.773699, 24.135054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.914709, 11.042218, 24.409866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336347, 0.601906, -0.724279,
		-0.899736, 0.432511, -0.058393,
		0.278111, 0.671300, 0.687031,
		17.998142, 11.243608, 24.615976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.439056, 11.410641, 24.047525>,  <17.803465, 10.773699, 24.135054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.439056, 11.410641, 24.047525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792442, 11.489594, 24.217480>,  <18.004475, 11.536967, 24.319452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.792442, 11.489594, 24.217480>,  <17.439056, 11.410641, 24.047525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.792442, 11.489594, 24.217480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301538, 0.454523, -0.838143,
		-0.358558, 0.868589, 0.342037,
		0.883465, 0.197385, 0.424886,
		18.057482, 11.548810, 24.344946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.562212, 12.077833, 23.960104>,  <17.439056, 11.410641, 24.047525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.562212, 12.077833, 23.960104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916943, 11.898427, 24.004593>,  <18.129782, 11.790784, 24.031286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.916943, 11.898427, 24.004593>,  <17.562212, 12.077833, 23.960104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.916943, 11.898427, 24.004593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281787, 0.334129, -0.899419,
		0.366240, 0.828971, 0.422701,
		0.886828, -0.448514, 0.111222,
		18.182991, 11.763873, 24.037960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.084181, 12.572181, 24.044655>,  <17.562212, 12.077833, 23.960104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.084181, 12.572181, 24.044655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.267769, 12.241977, 23.913275>,  <18.377922, 12.043855, 23.834446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.267769, 12.241977, 23.913275>,  <18.084181, 12.572181, 24.044655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.267769, 12.241977, 23.913275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188917, 0.451915, -0.871827,
		0.868133, 0.338094, 0.363369,
		0.458972, -0.825509, -0.328450,
		18.405460, 11.994324, 23.814739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.452763, 12.897106, 23.680164>,  <18.084181, 12.572181, 24.044655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.452763, 12.897106, 23.680164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472387, 12.518895, 23.551435>,  <18.484161, 12.291968, 23.474199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.472387, 12.518895, 23.551435>,  <18.452763, 12.897106, 23.680164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472387, 12.518895, 23.551435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181168, 0.325288, -0.928098,
		0.982228, -0.012770, 0.187259,
		0.049061, -0.945529, -0.321820,
		18.487106, 12.235236, 23.454889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.052465, 12.785667, 23.349081>,  <18.452763, 12.897106, 23.680164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.052465, 12.785667, 23.349081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823101, 12.494876, 23.197977>,  <18.685482, 12.320401, 23.107315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.823101, 12.494876, 23.197977>,  <19.052465, 12.785667, 23.349081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.823101, 12.494876, 23.197977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326093, 0.220468, -0.919270,
		0.751573, -0.650305, 0.110643,
		-0.573412, -0.726978, -0.377758,
		18.651077, 12.276782, 23.084650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.450838, 12.436821, 22.936537>,  <19.052465, 12.785667, 23.349081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.450838, 12.436821, 22.936537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080687, 12.345963, 22.815159>,  <18.858595, 12.291450, 22.742332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.080687, 12.345963, 22.815159>,  <19.450838, 12.436821, 22.936537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.080687, 12.345963, 22.815159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263759, 0.189068, -0.945877,
		0.272224, -0.955331, -0.115048,
		-0.925378, -0.227146, -0.303446,
		18.803072, 12.277821, 22.724125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.512253, 12.054744, 22.201172>,  <19.450838, 12.436821, 22.936537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.512253, 12.054744, 22.201172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.126427, 12.156149, 22.230412>,  <18.894930, 12.216992, 22.247955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.126427, 12.156149, 22.230412>,  <19.512253, 12.054744, 22.201172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.126427, 12.156149, 22.230412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037552, 0.142325, -0.989107,
		-0.261155, -0.956804, -0.127762,
		-0.964566, 0.253513, 0.073098,
		18.837057, 12.232203, 22.252340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.103693, 11.612451, 21.742893>,  <19.512253, 12.054744, 22.201172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.103693, 11.612451, 21.742893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921202, 11.962144, 21.809317>,  <18.811707, 12.171960, 21.849171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.921202, 11.962144, 21.809317>,  <19.103693, 11.612451, 21.742893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.921202, 11.962144, 21.809317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144195, 0.111515, -0.983246,
		-0.878103, -0.472527, 0.075184,
		-0.456226, 0.874232, 0.166058,
		18.784334, 12.224414, 21.859135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.656149, 11.629820, 21.272125>,  <19.103693, 11.612451, 21.742893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.656149, 11.629820, 21.272125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.640974, 12.018087, 21.367090>,  <18.631868, 12.251048, 21.424068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.640974, 12.018087, 21.367090>,  <18.656149, 11.629820, 21.272125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.640974, 12.018087, 21.367090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224577, 0.223222, -0.948545,
		-0.973718, -0.089303, 0.209521,
		-0.037938, 0.970668, 0.237411,
		18.629593, 12.309288, 21.438314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.227030, 11.838341, 20.809397>,  <18.656149, 11.629820, 21.272125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.227030, 11.838341, 20.809397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412540, 12.172854, 20.926386>,  <18.523848, 12.373563, 20.996580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.412540, 12.172854, 20.926386>,  <18.227030, 11.838341, 20.809397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.412540, 12.172854, 20.926386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141519, 0.395813, -0.907361,
		-0.874575, 0.379424, 0.301919,
		0.463778, 0.836283, 0.292473,
		18.551674, 12.423739, 21.014128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.718063, 12.462390, 20.657305>,  <18.227030, 11.838341, 20.809397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.718063, 12.462390, 20.657305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094791, 12.591010, 20.696459>,  <18.320827, 12.668182, 20.719952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.094791, 12.591010, 20.696459>,  <17.718063, 12.462390, 20.657305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094791, 12.591010, 20.696459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033795, 0.380337, -0.924230,
		-0.334416, 0.867150, 0.369076,
		0.941819, 0.321550, 0.097885,
		18.377337, 12.687475, 20.725824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.727177, 13.104001, 20.391527>,  <17.718063, 12.462390, 20.657305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.727177, 13.104001, 20.391527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120674, 13.032449, 20.385199>,  <18.356773, 12.989517, 20.381401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.120674, 13.032449, 20.385199>,  <17.727177, 13.104001, 20.391527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.120674, 13.032449, 20.385199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038095, 0.293979, -0.955052,
		0.175492, 0.938924, 0.296015,
		0.983743, -0.178881, -0.015823,
		18.415796, 12.978785, 20.380451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.984064, 13.623422, 19.948559>,  <17.727177, 13.104001, 20.391527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.984064, 13.623422, 19.948559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310509, 13.393280, 19.970196>,  <18.506376, 13.255195, 19.983177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.310509, 13.393280, 19.970196>,  <17.984064, 13.623422, 19.948559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.310509, 13.393280, 19.970196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330901, 0.388518, -0.859976,
		0.473775, 0.719737, 0.507460,
		0.816114, -0.575354, 0.054091,
		18.555344, 13.220674, 19.986423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.625053, 14.073185, 19.802507>,  <17.984064, 13.623422, 19.948559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.625053, 14.073185, 19.802507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771124, 13.703671, 19.756428>,  <18.858767, 13.481963, 19.728781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.771124, 13.703671, 19.756428>,  <18.625053, 14.073185, 19.802507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.771124, 13.703671, 19.756428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434188, 0.278469, -0.856700,
		0.823484, 0.262831, 0.502786,
		0.365178, -0.923783, -0.115197,
		18.880676, 13.426537, 19.721869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.332956, 14.188236, 19.624125>,  <18.625053, 14.073185, 19.802507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.332956, 14.188236, 19.624125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237949, 13.837979, 19.455917>,  <19.180944, 13.627825, 19.354992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.237949, 13.837979, 19.455917>,  <19.332956, 14.188236, 19.624125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.237949, 13.837979, 19.455917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553661, 0.233670, -0.799286,
		0.798151, -0.422669, 0.429309,
		-0.237517, -0.875642, -0.420519,
		19.166695, 13.575287, 19.329762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.958147, 13.827757, 19.459120>,  <19.332956, 14.188236, 19.624125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.958147, 13.827757, 19.459120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660234, 13.696264, 19.226831>,  <19.481487, 13.617369, 19.087458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.660234, 13.696264, 19.226831>,  <19.958147, 13.827757, 19.459120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.660234, 13.696264, 19.226831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527240, 0.243556, -0.814063,
		0.409046, -0.912478, -0.008076,
		-0.744781, -0.328732, -0.580721,
		19.436800, 13.597645, 19.052616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.352192, 13.608921, 19.047678>,  <19.958147, 13.827757, 19.459120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.352192, 13.608921, 19.047678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.996143, 13.615312, 18.865501>,  <19.782515, 13.619146, 18.756195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.996143, 13.615312, 18.865501>,  <20.352192, 13.608921, 19.047678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.996143, 13.615312, 18.865501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424440, 0.392950, -0.815746,
		0.165933, -0.919421, -0.356555,
		-0.890122, 0.015977, -0.455442,
		19.729107, 13.620105, 18.728868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.438126, 13.208488, 18.417810>,  <20.352192, 13.608921, 19.047678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.438126, 13.208488, 18.417810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.145674, 13.480450, 18.395245>,  <19.970203, 13.643626, 18.381706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.145674, 13.480450, 18.395245>,  <20.438126, 13.208488, 18.417810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.145674, 13.480450, 18.395245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430354, 0.395453, -0.811426,
		-0.529382, -0.617535, -0.581726,
		-0.731129, 0.679903, -0.056412,
		19.926334, 13.684421, 18.378321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.201157, 13.282585, 17.603373>,  <20.438126, 13.208488, 18.417810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.201157, 13.282585, 17.603373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020039, 13.609818, 17.745197>,  <19.911367, 13.806159, 17.830292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.020039, 13.609818, 17.745197>,  <20.201157, 13.282585, 17.603373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.020039, 13.609818, 17.745197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306493, 0.516243, -0.799722,
		-0.837280, -0.253440, -0.484490,
		-0.452796, 0.818084, 0.354562,
		19.884199, 13.855244, 17.851566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.871233, 13.696511, 17.110832>,  <20.201157, 13.282585, 17.603373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.871233, 13.696511, 17.110832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910847, 13.993623, 17.375700>,  <19.934614, 14.171890, 17.534620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.910847, 13.993623, 17.375700>,  <19.871233, 13.696511, 17.110832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.910847, 13.993623, 17.375700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121273, 0.651473, -0.748916,
		-0.987667, 0.154472, -0.025562,
		0.099034, 0.742780, 0.662171,
		19.940557, 14.216456, 17.574352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.449562, 14.219391, 16.893171>,  <19.871233, 13.696511, 17.110832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.449562, 14.219391, 16.893171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701025, 14.420887, 17.130165>,  <19.851902, 14.541784, 17.272362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.701025, 14.420887, 17.130165>,  <19.449562, 14.219391, 16.893171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.701025, 14.420887, 17.130165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048934, 0.734725, -0.676598,
		-0.776142, 0.454341, 0.437240,
		0.628657, 0.503740, 0.592483,
		19.889622, 14.572009, 17.307911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312037, 14.930872, 16.688381>,  <19.449562, 14.219391, 16.893171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312037, 14.930872, 16.688381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656105, 14.974958, 16.887564>,  <19.862545, 15.001410, 17.007072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.656105, 14.974958, 16.887564>,  <19.312037, 14.930872, 16.688381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.656105, 14.974958, 16.887564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244253, 0.768090, -0.591928,
		-0.447714, 0.630786, 0.633768,
		0.860170, 0.110215, 0.497956,
		19.914156, 15.008023, 17.036951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.435654, 15.668435, 16.973801>,  <19.312037, 14.930872, 16.688381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.435654, 15.668435, 16.973801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797453, 15.502240, 16.935326>,  <20.014532, 15.402523, 16.912241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.797453, 15.502240, 16.935326>,  <19.435654, 15.668435, 16.973801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.797453, 15.502240, 16.935326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338756, 0.836965, -0.429807,
		0.259087, 0.356175, 0.897782,
		0.904499, -0.415486, -0.096190,
		20.068802, 15.377594, 16.906469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.833151, 16.138754, 17.077127>,  <19.435654, 15.668435, 16.973801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.833151, 16.138754, 17.077127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083178, 15.878317, 16.904907>,  <20.233192, 15.722055, 16.801575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.083178, 15.878317, 16.904907>,  <19.833151, 16.138754, 17.077127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.083178, 15.878317, 16.904907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437908, 0.749104, -0.497071,
		0.646165, 0.122161, 0.753357,
		0.625066, -0.651091, -0.430550,
		20.270697, 15.682989, 16.775742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.528534, 16.383717, 17.065205>,  <19.833151, 16.138754, 17.077127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.528534, 16.383717, 17.065205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491163, 16.132683, 16.756035>,  <20.468740, 15.982063, 16.570534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.491163, 16.132683, 16.756035>,  <20.528534, 16.383717, 17.065205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.491163, 16.132683, 16.756035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422730, 0.677866, -0.601496,
		0.901427, -0.382932, 0.201968,
		-0.093425, -0.627583, -0.772924,
		20.463137, 15.944408, 16.524158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.016579, 16.554243, 16.582663>,  <20.528534, 16.383717, 17.065205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.016579, 16.554243, 16.582663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.808481, 16.316254, 16.337599>,  <20.683622, 16.173460, 16.190561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.808481, 16.316254, 16.337599>,  <21.016579, 16.554243, 16.582663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.808481, 16.316254, 16.337599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350879, 0.505129, -0.788498,
		0.778607, -0.625182, -0.054028,
		-0.520246, -0.594973, -0.612659,
		20.652407, 16.137762, 16.153801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.393764, 16.483829, 15.991831>,  <21.016579, 16.554243, 16.582663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.393764, 16.483829, 15.991831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039762, 16.362656, 15.850410>,  <20.827362, 16.289951, 15.765558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.039762, 16.362656, 15.850410>,  <21.393764, 16.483829, 15.991831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.039762, 16.362656, 15.850410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117026, 0.590253, -0.798690,
		0.450636, -0.748219, -0.486925,
		-0.885004, -0.302936, -0.353551,
		20.774261, 16.271774, 15.744345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.533119, 16.339464, 15.344893>,  <21.393764, 16.483829, 15.991831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.533119, 16.339464, 15.344893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136089, 16.387726, 15.338695>,  <20.897871, 16.416683, 15.334976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.136089, 16.387726, 15.338695>,  <21.533119, 16.339464, 15.344893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.136089, 16.387726, 15.338695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092891, 0.669522, -0.736961,
		-0.078545, -0.732927, -0.675758,
		-0.992573, 0.120656, -0.015494,
		20.838318, 16.423923, 15.334046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.390326, 16.410561, 14.660567>,  <21.533119, 16.339464, 15.344893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.390326, 16.410561, 14.660567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072165, 16.575262, 14.838464>,  <20.881268, 16.674084, 14.945202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.072165, 16.575262, 14.838464>,  <21.390326, 16.410561, 14.660567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.072165, 16.575262, 14.838464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076177, 0.795895, -0.600623,
		-0.601276, -0.443858, -0.664422,
		-0.795402, 0.411754, 0.444740,
		20.833544, 16.698788, 14.971886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778374, 16.547401, 14.253826>,  <21.390326, 16.410561, 14.660567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778374, 16.547401, 14.253826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883450, 16.816523, 14.530472>,  <20.946495, 16.977995, 14.696460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.883450, 16.816523, 14.530472>,  <20.778374, 16.547401, 14.253826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.883450, 16.816523, 14.530472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181469, 0.669547, -0.720261,
		-0.947663, 0.314710, 0.053789,
		0.262688, 0.672803, 0.691615,
		20.962255, 17.018364, 14.737956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.312059, 17.233047, 14.146751>,  <20.778374, 16.547401, 14.253826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.312059, 17.233047, 14.146751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667667, 17.277166, 14.324507>,  <20.881031, 17.303637, 14.431160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.667667, 17.277166, 14.324507>,  <20.312059, 17.233047, 14.146751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.667667, 17.277166, 14.324507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155766, 0.839810, -0.520054,
		-0.430562, 0.531558, 0.729426,
		0.889018, 0.110296, 0.444389,
		20.934372, 17.310255, 14.457824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.015320, 17.480989, 13.829336>,  <20.312059, 17.233047, 14.146751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.015320, 17.480989, 13.829336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351753, 17.269274, 13.873940>,  <21.553614, 17.142244, 13.900703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.351753, 17.269274, 13.873940>,  <21.015320, 17.480989, 13.829336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.351753, 17.269274, 13.873940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491589, 0.833981, 0.250633,
		-0.225655, -0.155985, 0.961638,
		0.841083, -0.529287, 0.111512,
		21.604078, 17.110487, 13.907393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.346149, 17.833923, 14.308887>,  <21.015320, 17.480989, 13.829336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.346149, 17.833923, 14.308887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641663, 17.599148, 14.176399>,  <21.818970, 17.458282, 14.096906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.641663, 17.599148, 14.176399>,  <21.346149, 17.833923, 14.308887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.641663, 17.599148, 14.176399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669136, 0.697425, 0.256625,
		0.080379, -0.411222, 0.907984,
		0.738781, -0.586937, -0.331222,
		21.863297, 17.423067, 14.077033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.830420, 17.811554, 14.845090>,  <21.346149, 17.833923, 14.308887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.830420, 17.811554, 14.845090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010866, 17.701687, 14.505431>,  <22.119135, 17.635767, 14.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.010866, 17.701687, 14.505431>,  <21.830420, 17.811554, 14.845090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.010866, 17.701687, 14.505431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779498, 0.584592, 0.225023,
		0.434599, -0.763420, 0.477822,
		0.451118, -0.274667, -0.849147,
		22.146202, 17.619287, 14.250687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.954056, 17.121031, 15.070066>,  <21.830420, 17.811554, 14.845090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.954056, 17.121031, 15.070066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.311604, 17.087402, 15.246216>,  <22.526133, 17.067226, 15.351906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.311604, 17.087402, 15.246216>,  <21.954056, 17.121031, 15.070066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.311604, 17.087402, 15.246216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125721, 0.989853, -0.066222,
		-0.430338, 0.114558, 0.895369,
		0.893870, -0.084069, 0.440374,
		22.579765, 17.062181, 15.378328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.015575, 17.701946, 15.586436>,  <21.954056, 17.121031, 15.070066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.015575, 17.701946, 15.586436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.379400, 17.595299, 15.458929>,  <22.597694, 17.531311, 15.382425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.379400, 17.595299, 15.458929>,  <22.015575, 17.701946, 15.586436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.379400, 17.595299, 15.458929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241489, 0.963361, -0.116701,
		0.338203, 0.029168, 0.940621,
		0.909562, -0.266618, -0.318767,
		22.652269, 17.515314, 15.363298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.612425, 18.112309, 15.874715>,  <22.015575, 17.701946, 15.586436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.612425, 18.112309, 15.874715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794102, 17.969402, 15.548262>,  <22.903107, 17.883659, 15.352389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.794102, 17.969402, 15.548262>,  <22.612425, 18.112309, 15.874715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.794102, 17.969402, 15.548262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124288, 0.932524, -0.339046,
		0.882193, 0.052556, 0.467946,
		0.454190, -0.357264, -0.816133,
		22.930359, 17.862223, 15.303422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.082483, 18.594368, 15.726112>,  <22.612425, 18.112309, 15.874715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.082483, 18.594368, 15.726112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068188, 18.396400, 15.378830>,  <23.059610, 18.277620, 15.170461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.068188, 18.396400, 15.378830>,  <23.082483, 18.594368, 15.726112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.068188, 18.396400, 15.378830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276488, 0.829952, -0.484492,
		0.960352, -0.257364, 0.107178,
		-0.035738, -0.494917, -0.868205,
		23.057467, 18.247925, 15.118368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.658169, 18.898468, 15.265523>,  <23.082483, 18.594368, 15.726112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.658169, 18.898468, 15.265523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.394083, 18.737104, 15.012104>,  <23.235632, 18.640287, 14.860053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.394083, 18.737104, 15.012104>,  <23.658169, 18.898468, 15.265523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.394083, 18.737104, 15.012104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056080, 0.814685, -0.577186,
		0.748981, -0.416595, -0.515243,
		-0.660213, -0.403407, -0.633546,
		23.196020, 18.616081, 14.822040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.850044, 19.322996, 14.658925>,  <23.658169, 18.898468, 15.265523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.850044, 19.322996, 14.658925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.522682, 19.113060, 14.565328>,  <23.326265, 18.987099, 14.509170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.522682, 19.113060, 14.565328>,  <23.850044, 19.322996, 14.658925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.522682, 19.113060, 14.565328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120735, 0.555164, -0.822932,
		0.561817, -0.645239, -0.517715,
		-0.818404, -0.524843, -0.233998,
		23.277161, 18.955608, 14.495130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.909857, 19.106808, 14.019011>,  <23.850044, 19.322996, 14.658925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.909857, 19.106808, 14.019011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.515461, 19.141788, 14.075825>,  <23.278824, 19.162777, 14.109913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.515461, 19.141788, 14.075825>,  <23.909857, 19.106808, 14.019011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.515461, 19.141788, 14.075825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087172, 0.455805, -0.885801,
		-0.142205, -0.885773, -0.441796,
		-0.985991, 0.087453, 0.142033,
		23.219664, 19.168024, 14.118435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.484547, 18.964622, 13.376725>,  <23.909857, 19.106808, 14.019011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.484547, 18.964622, 13.376725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231892, 19.179699, 13.600125>,  <23.080299, 19.308744, 13.734165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.231892, 19.179699, 13.600125>,  <23.484547, 18.964622, 13.376725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.231892, 19.179699, 13.600125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166065, 0.609840, -0.774931,
		-0.757271, -0.582221, -0.295904,
		-0.631635, 0.537693, 0.558501,
		23.042400, 19.341007, 13.767675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.993444, 18.955894, 12.982384>,  <23.484547, 18.964622, 13.376725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.993444, 18.955894, 12.982384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.934462, 19.272562, 13.219538>,  <22.899073, 19.462563, 13.361831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.934462, 19.272562, 13.219538>,  <22.993444, 18.955894, 12.982384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.934462, 19.272562, 13.219538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244890, 0.551550, -0.797384,
		-0.958272, -0.262772, 0.112542,
		-0.147458, 0.791671, 0.592885,
		22.890224, 19.510063, 13.397404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.451759, 19.242571, 12.725510>,  <22.993444, 18.955894, 12.982384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.451759, 19.242571, 12.725510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561064, 19.560472, 12.942285>,  <22.626646, 19.751213, 13.072350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.561064, 19.560472, 12.942285>,  <22.451759, 19.242571, 12.725510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561064, 19.560472, 12.942285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081639, 0.580507, -0.810152,
		-0.958469, 0.177140, 0.223513,
		0.273261, 0.794753, 0.541936,
		22.643042, 19.798899, 13.104865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.903229, 19.748457, 12.631411>,  <22.451759, 19.242571, 12.725510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.903229, 19.748457, 12.631411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236607, 19.936554, 12.747507>,  <22.436634, 20.049412, 12.817165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.236607, 19.936554, 12.747507>,  <21.903229, 19.748457, 12.631411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.236607, 19.936554, 12.747507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233236, 0.775498, -0.586689,
		-0.500967, 0.421279, 0.756013,
		0.833446, 0.470241, 0.290242,
		22.486641, 20.077627, 12.834579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.617367, 20.307014, 12.685100>,  <21.903229, 19.748457, 12.631411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.617367, 20.307014, 12.685100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012173, 20.361841, 12.651590>,  <22.249056, 20.394737, 12.631485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.012173, 20.361841, 12.651590>,  <21.617367, 20.307014, 12.685100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012173, 20.361841, 12.651590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160611, 0.832009, -0.531003,
		-0.003084, 0.537562, 0.843219,
		0.987013, 0.137068, -0.083772,
		22.308277, 20.402962, 12.626459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.659048, 21.095604, 12.482734>,  <21.617367, 20.307014, 12.685100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.659048, 21.095604, 12.482734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021704, 20.958988, 12.383652>,  <22.239296, 20.877018, 12.324203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.021704, 20.958988, 12.383652>,  <21.659048, 21.095604, 12.482734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.021704, 20.958988, 12.383652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053297, 0.489692, -0.870265,
		0.418529, 0.802217, 0.425771,
		0.906638, -0.341539, -0.247706,
		22.293695, 20.856527, 12.309340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.087959, 21.673035, 12.423469>,  <21.659048, 21.095604, 12.482734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.087959, 21.673035, 12.423469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242800, 21.374912, 12.206334>,  <22.335705, 21.196039, 12.076054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.242800, 21.374912, 12.206334>,  <22.087959, 21.673035, 12.423469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.242800, 21.374912, 12.206334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041613, 0.574015, -0.817787,
		0.921098, 0.339156, 0.191188,
		0.387102, -0.745306, -0.542837,
		22.358931, 21.151321, 12.043483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.765476, 21.887320, 12.045411>,  <22.087959, 21.673035, 12.423469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.765476, 21.887320, 12.045411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.637102, 21.577038, 11.828051>,  <22.560078, 21.390869, 11.697635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.637102, 21.577038, 11.828051>,  <22.765476, 21.887320, 12.045411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.637102, 21.577038, 11.828051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017560, 0.568779, -0.822303,
		0.946938, -0.273449, -0.168920,
		-0.320936, -0.775703, -0.543401,
		22.540821, 21.344326, 11.665030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.298847, 21.890720, 11.478427>,  <22.765476, 21.887320, 12.045411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.298847, 21.890720, 11.478427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978004, 21.677261, 11.371207>,  <22.785500, 21.549187, 11.306875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.978004, 21.677261, 11.371207>,  <23.298847, 21.890720, 11.478427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.978004, 21.677261, 11.371207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100805, 0.321422, -0.941555,
		0.588614, -0.782246, -0.204020,
		-0.802104, -0.533646, -0.268048,
		22.737373, 21.517168, 11.290792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.528666, 21.556114, 10.921059>,  <23.298847, 21.890720, 11.478427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.528666, 21.556114, 10.921059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129801, 21.528864, 10.908252>,  <22.890482, 21.512514, 10.900567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.129801, 21.528864, 10.908252>,  <23.528666, 21.556114, 10.921059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.129801, 21.528864, 10.908252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006928, 0.340493, -0.940222,
		0.074953, -0.937776, -0.339055,
		-0.997163, -0.068123, -0.032017,
		22.830652, 21.508427, 10.898646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.361601, 21.268154, 10.326616>,  <23.528666, 21.556114, 10.921059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.361601, 21.268154, 10.326616> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.011282, 21.435535, 10.422848>,  <22.801090, 21.535963, 10.480587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.011282, 21.435535, 10.422848>,  <23.361601, 21.268154, 10.326616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.011282, 21.435535, 10.422848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070007, 0.383032, -0.921078,
		-0.477576, -0.823520, -0.306163,
		-0.875797, 0.418452, 0.240579,
		22.748543, 21.561071, 10.495022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.896177, 21.083015, 9.814686>,  <23.361601, 21.268154, 10.326616>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.896177, 21.083015, 9.814686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.731905, 21.401068, 9.993174>,  <22.633341, 21.591898, 10.100266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.731905, 21.401068, 9.993174>,  <22.896177, 21.083015, 9.814686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.731905, 21.401068, 9.993174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223012, 0.562128, -0.796416,
		-0.884086, -0.227559, -0.408178,
		-0.410680, 0.795128, 0.446221,
		22.608702, 21.639606, 10.127040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.492512, 21.386837, 9.289406>,  <22.896177, 21.083015, 9.814686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.492512, 21.386837, 9.289406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548994, 21.656563, 9.579333>,  <22.582884, 21.818398, 9.753290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.548994, 21.656563, 9.579333>,  <22.492512, 21.386837, 9.289406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.548994, 21.656563, 9.579333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253744, 0.683044, -0.684883,
		-0.956909, 0.280629, -0.074653,
		0.141207, 0.674313, 0.724819,
		22.591356, 21.858856, 9.796779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.910048, 21.937410, 9.210229>,  <22.492512, 21.386837, 9.289406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.910048, 21.937410, 9.210229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.250353, 22.054695, 9.384688>,  <22.454536, 22.125067, 9.489364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.250353, 22.054695, 9.384688>,  <21.910048, 21.937410, 9.210229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.250353, 22.054695, 9.384688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134950, 0.680184, -0.720512,
		-0.507926, 0.671844, 0.539108,
		0.850764, 0.293214, 0.436149,
		22.505583, 22.142660, 9.515532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.778318, 22.615950, 9.237079>,  <21.910048, 21.937410, 9.210229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.778318, 22.615950, 9.237079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.173439, 22.582897, 9.289867>,  <22.410511, 22.563065, 9.321541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.173439, 22.582897, 9.289867>,  <21.778318, 22.615950, 9.237079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.173439, 22.582897, 9.289867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143513, 0.811968, -0.565784,
		-0.060405, 0.577823, 0.813924,
		0.987803, -0.082632, 0.131972,
		22.469780, 22.558107, 9.329459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.086678, 23.251982, 9.454274>,  <21.778318, 22.615950, 9.237079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.086678, 23.251982, 9.454274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384180, 23.042402, 9.288238>,  <22.562681, 22.916655, 9.188616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.384180, 23.042402, 9.288238>,  <22.086678, 23.251982, 9.454274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.384180, 23.042402, 9.288238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225541, 0.781264, -0.582030,
		0.629250, 0.339269, 0.699243,
		0.743758, -0.523950, -0.415091,
		22.607307, 22.885218, 9.163711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.676058, 23.781181, 9.349599>,  <22.086678, 23.251982, 9.454274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.676058, 23.781181, 9.349599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.747208, 23.468109, 9.111012>,  <22.789898, 23.280266, 8.967859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.747208, 23.468109, 9.111012>,  <22.676058, 23.781181, 9.349599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.747208, 23.468109, 9.111012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267773, 0.621759, -0.736011,
		0.946920, -0.028800, 0.320175,
		0.177875, -0.782678, -0.596469,
		22.800570, 23.233305, 8.932071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.371433, 23.805113, 8.994712>,  <22.676058, 23.781181, 9.349599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.371433, 23.805113, 8.994712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122047, 23.607952, 8.751947>,  <22.972416, 23.489656, 8.606289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.122047, 23.607952, 8.751947>,  <23.371433, 23.805113, 8.994712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.122047, 23.607952, 8.751947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283682, 0.580739, -0.763064,
		0.728570, -0.647914, -0.222244,
		-0.623466, -0.492899, -0.606911,
		22.935007, 23.460083, 8.569874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.672476, 23.891123, 8.419817>,  <23.371433, 23.805113, 8.994712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.672476, 23.891123, 8.419817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.346287, 23.711397, 8.273873>,  <23.150574, 23.603561, 8.186307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.346287, 23.711397, 8.273873>,  <23.672476, 23.891123, 8.419817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.346287, 23.711397, 8.273873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032463, 0.664891, -0.746235,
		0.577883, -0.596691, -0.556787,
		-0.815474, -0.449311, -0.364858,
		23.101645, 23.576603, 8.164415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.101860, 23.830877, 8.989305>,  <23.672476, 23.891123, 8.419817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.101860, 23.830877, 8.989305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.206570, 23.448069, 8.939368>,  <24.269396, 23.218384, 8.909407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.206570, 23.448069, 8.939368>,  <24.101860, 23.830877, 8.989305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.206570, 23.448069, 8.939368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273967, 0.050347, -0.960420,
		0.925428, 0.285614, -0.249012,
		0.261773, -0.957021, -0.124842,
		24.285101, 23.160963, 8.901916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.665882, 23.453768, 9.337705>,  <24.101860, 23.830877, 8.989305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.665882, 23.453768, 9.337705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771709, 23.068756, 9.361518>,  <24.835205, 22.837749, 9.375806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.771709, 23.068756, 9.361518>,  <24.665882, 23.453768, 9.337705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.771709, 23.068756, 9.361518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702706, 0.150135, -0.695459,
		0.660461, 0.225830, 0.716095,
		0.264567, -0.962528, 0.059534,
		24.851080, 22.779997, 9.379378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.396364, 23.226719, 9.608420>,  <24.665882, 23.453768, 9.337705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.396364, 23.226719, 9.608420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269981, 23.034407, 9.281245>,  <25.194151, 22.919020, 9.084940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.269981, 23.034407, 9.281245>,  <25.396364, 23.226719, 9.608420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.269981, 23.034407, 9.281245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857641, 0.223944, -0.462927,
		0.405738, -0.847761, 0.341581,
		-0.315957, -0.480781, -0.817937,
		25.175194, 22.890173, 9.035864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.760468, 23.543261, 8.921697>,  <25.396364, 23.226719, 9.608420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.760468, 23.543261, 8.921697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022066, 23.612980, 9.216155>,  <26.179026, 23.654812, 9.392830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.022066, 23.612980, 9.216155>,  <25.760468, 23.543261, 8.921697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.022066, 23.612980, 9.216155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283581, -0.845653, 0.452164,
		0.701336, -0.504469, -0.503625,
		0.653996, 0.174300, 0.736145,
		26.218266, 23.665270, 9.436998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.135948, 22.982975, 9.017519>,  <25.760468, 23.543261, 8.921697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.135948, 22.982975, 9.017519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154329, 23.154791, 9.378270>,  <26.165358, 23.257879, 9.594721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.154329, 23.154791, 9.378270>,  <26.135948, 22.982975, 9.017519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.154329, 23.154791, 9.378270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227455, -0.874618, 0.428144,
		0.972704, -0.224810, 0.057511,
		0.045951, 0.429539, 0.901879,
		26.168116, 23.283653, 9.648834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.486137, 22.617437, 9.532061>,  <26.135948, 22.982975, 9.017519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.486137, 22.617437, 9.532061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229345, 22.840755, 9.742269>,  <26.075270, 22.974747, 9.868393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.229345, 22.840755, 9.742269>,  <26.486137, 22.617437, 9.532061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.229345, 22.840755, 9.742269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120633, -0.750424, 0.649855,
		0.757173, 0.353799, 0.549105,
		-0.641979, 0.558293, 0.525520,
		26.036751, 23.008244, 9.899924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.757307, 22.757311, 10.262020>,  <26.486137, 22.617437, 9.532061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.757307, 22.757311, 10.262020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359377, 22.755178, 10.221433>,  <26.120619, 22.753899, 10.197081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.359377, 22.755178, 10.221433>,  <26.757307, 22.757311, 10.262020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.359377, 22.755178, 10.221433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072603, -0.661343, 0.746562,
		-0.071084, 0.750065, 0.657533,
		-0.994824, -0.005330, -0.101468,
		26.060930, 22.753580, 10.190992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.293713, 22.943733, 10.888152>,  <26.757307, 22.757311, 10.262020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.293713, 22.943733, 10.888152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076954, 22.677397, 10.683016>,  <25.946899, 22.517595, 10.559934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.076954, 22.677397, 10.683016>,  <26.293713, 22.943733, 10.888152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.076954, 22.677397, 10.683016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080328, -0.566374, 0.820224,
		-0.836598, 0.485672, 0.253430,
		-0.541896, -0.665840, -0.512840,
		25.914385, 22.477644, 10.529163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.737095, 22.726622, 11.300870>,  <26.293713, 22.943733, 10.888152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.737095, 22.726622, 11.300870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766924, 22.421957, 11.043403>,  <25.784821, 22.239159, 10.888923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.766924, 22.421957, 11.043403>,  <25.737095, 22.726622, 11.300870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.766924, 22.421957, 11.043403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151081, -0.646643, 0.747681,
		-0.985704, 0.041491, -0.163294,
		0.074571, -0.761663, -0.643668,
		25.789295, 22.193459, 10.850303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.351952, 22.282801, 11.586871>,  <25.737095, 22.726622, 11.300870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.351952, 22.282801, 11.586871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544527, 22.049152, 11.325483>,  <25.660072, 21.908964, 11.168651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.544527, 22.049152, 11.325483>,  <25.351952, 22.282801, 11.586871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.544527, 22.049152, 11.325483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125526, -0.783825, 0.608163,
		-0.867446, -0.210764, -0.450684,
		0.481436, -0.584121, -0.653470,
		25.688959, 21.873917, 11.129443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.906717, 21.690033, 11.448108>,  <25.351952, 22.282801, 11.586871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.906717, 21.690033, 11.448108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284136, 21.593769, 11.357068>,  <25.510588, 21.536011, 11.302444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.284136, 21.593769, 11.357068>,  <24.906717, 21.690033, 11.448108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.284136, 21.593769, 11.357068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120319, -0.889199, 0.441417,
		-0.308611, -0.389114, -0.867957,
		0.943548, -0.240658, -0.227599,
		25.567200, 21.521572, 11.288788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.796951, 21.038652, 11.131472>,  <24.906717, 21.690033, 11.448108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.796951, 21.038652, 11.131472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177460, 21.064615, 11.252052>,  <25.405764, 21.080193, 11.324401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.177460, 21.064615, 11.252052>,  <24.796951, 21.038652, 11.131472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.177460, 21.064615, 11.252052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085188, -0.884235, 0.459208,
		0.296359, -0.462510, -0.835617,
		0.951270, 0.064906, 0.301451,
		25.462841, 21.084087, 11.342487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.066547, 20.481863, 10.960938>,  <24.796951, 21.038652, 11.131472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.066547, 20.481863, 10.960938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306549, 20.611176, 11.253645>,  <25.450550, 20.688763, 11.429269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.306549, 20.611176, 11.253645>,  <25.066547, 20.481863, 10.960938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.306549, 20.611176, 11.253645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048472, -0.898343, 0.436613,
		0.798526, -0.297440, -0.523340,
		0.600005, 0.323279, 0.731768,
		25.486551, 20.708158, 11.473175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.533375, 19.898039, 11.106898>,  <25.066547, 20.481863, 10.960938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.533375, 19.898039, 11.106898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608227, 20.134220, 11.420929>,  <25.653137, 20.275928, 11.609347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.608227, 20.134220, 11.420929>,  <25.533375, 19.898039, 11.106898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.608227, 20.134220, 11.420929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016022, -0.800923, 0.598553,
		0.982205, -0.099429, -0.159336,
		0.187130, 0.590455, 0.785077,
		25.664366, 20.311356, 11.656452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.091724, 19.610100, 11.417369>,  <25.533375, 19.898039, 11.106898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.091724, 19.610100, 11.417369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901440, 19.822699, 11.697715>,  <25.787268, 19.950258, 11.865922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.901440, 19.822699, 11.697715>,  <26.091724, 19.610100, 11.417369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.901440, 19.822699, 11.697715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024475, -0.804488, 0.593464,
		0.879260, 0.265165, 0.395714,
		-0.475713, 0.531495, 0.700864,
		25.758726, 19.982147, 11.907974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.561361, 19.482471, 12.046305>,  <26.091724, 19.610100, 11.417369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.561361, 19.482471, 12.046305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206373, 19.615753, 12.173662>,  <25.993382, 19.695723, 12.250077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.206373, 19.615753, 12.173662>,  <26.561361, 19.482471, 12.046305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.206373, 19.615753, 12.173662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038960, -0.742626, 0.668572,
		0.459218, 0.580933, 0.672039,
		-0.887469, 0.333203, 0.318394,
		25.940132, 19.715714, 12.269180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.612562, 19.537615, 12.752330>,  <26.561361, 19.482471, 12.046305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.612562, 19.537615, 12.752330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233488, 19.486076, 12.635511>,  <26.006044, 19.455154, 12.565420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.233488, 19.486076, 12.635511>,  <26.612562, 19.537615, 12.752330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.233488, 19.486076, 12.635511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088049, -0.773907, 0.627148,
		-0.306821, 0.620054, 0.722077,
		-0.947686, -0.128844, -0.292046,
		25.949183, 19.447424, 12.547897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.346539, 19.433088, 13.374003>,  <26.612562, 19.537615, 12.752330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.346539, 19.433088, 13.374003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064554, 19.292793, 13.127422>,  <25.895363, 19.208616, 12.979474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.064554, 19.292793, 13.127422>,  <26.346539, 19.433088, 13.374003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.064554, 19.292793, 13.127422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081442, -0.823384, 0.561609,
		-0.704554, 0.446118, 0.551890,
		-0.704962, -0.350737, -0.616452,
		25.853065, 19.187572, 12.942487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.976351, 19.082077, 13.787464>,  <26.346539, 19.433088, 13.374003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.976351, 19.082077, 13.787464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859449, 18.925053, 13.438642>,  <25.789309, 18.830837, 13.229348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.859449, 18.925053, 13.438642>,  <25.976351, 19.082077, 13.787464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.859449, 18.925053, 13.438642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276839, -0.838099, 0.470054,
		-0.915395, 0.378795, 0.136263,
		-0.292255, -0.392562, -0.872056,
		25.771772, 18.807283, 13.177025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.262323, 18.864643, 13.854483>,  <25.976351, 19.082077, 13.787464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.262323, 18.864643, 13.854483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423122, 18.657452, 13.552464>,  <25.519602, 18.533136, 13.371252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.423122, 18.657452, 13.552464>,  <25.262323, 18.864643, 13.854483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.423122, 18.657452, 13.552464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379117, -0.844765, 0.377680,
		-0.833465, 0.134422, -0.535972,
		0.402002, -0.517980, -0.755044,
		25.543722, 18.502058, 13.325950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.819345, 18.321352, 13.792227>,  <25.262323, 18.864643, 13.854483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.819345, 18.321352, 13.792227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089506, 18.161705, 13.544182>,  <25.251602, 18.065916, 13.395355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.089506, 18.161705, 13.544182>,  <24.819345, 18.321352, 13.792227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.089506, 18.161705, 13.544182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329929, -0.915573, 0.229939,
		-0.659531, 0.049293, -0.750059,
		0.675400, -0.399118, -0.620113,
		25.292126, 18.041969, 13.358148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.441751, 17.853006, 13.385631>,  <24.819345, 18.321352, 13.792227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.441751, 17.853006, 13.385631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818613, 17.719360, 13.396307>,  <25.044729, 17.639172, 13.402713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.818613, 17.719360, 13.396307>,  <24.441751, 17.853006, 13.385631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.818613, 17.719360, 13.396307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320563, -0.874944, 0.362923,
		-0.097905, -0.350486, -0.931437,
		0.942154, -0.334116, 0.026692,
		25.101259, 17.619125, 13.404314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.602161, 17.308664, 12.935755>,  <24.441751, 17.853006, 13.385631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.602161, 17.308664, 12.935755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890934, 17.259544, 13.208148>,  <25.064198, 17.230072, 13.371584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.890934, 17.259544, 13.208148>,  <24.602161, 17.308664, 12.935755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.890934, 17.259544, 13.208148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324049, -0.929541, 0.175914,
		0.611400, -0.347670, -0.710856,
		0.721930, -0.122798, 0.680983,
		25.107513, 17.222706, 13.412443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.708448, 16.671522, 12.880276>,  <24.602161, 17.308664, 12.935755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.708448, 16.671522, 12.880276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898022, 16.715487, 13.229746>,  <25.011765, 16.741865, 13.439428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.898022, 16.715487, 13.229746>,  <24.708448, 16.671522, 12.880276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.898022, 16.715487, 13.229746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115719, -0.975801, 0.185531,
		0.872925, -0.189030, -0.449744,
		0.473931, 0.109911, 0.873675,
		25.040201, 16.748459, 13.491849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.001631, 16.070559, 12.935032>,  <24.708448, 16.671522, 12.880276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.001631, 16.070559, 12.935032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999340, 16.196302, 13.314746>,  <24.997967, 16.271749, 13.542575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.999340, 16.196302, 13.314746>,  <25.001631, 16.070559, 12.935032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.999340, 16.196302, 13.314746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244833, -0.920849, 0.303468,
		0.969548, -0.230679, 0.082239,
		-0.005726, 0.314362, 0.949286,
		24.997622, 16.290611, 13.599532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.244822, 15.557733, 13.378062>,  <25.001631, 16.070559, 12.935032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.244822, 15.557733, 13.378062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032564, 15.764253, 13.646942>,  <24.905210, 15.888165, 13.808270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.032564, 15.764253, 13.646942>,  <25.244822, 15.557733, 13.378062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032564, 15.764253, 13.646942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315661, -0.856396, 0.408588,
		0.786622, 0.004628, 0.617417,
		-0.530644, 0.516299, 0.672199,
		24.873371, 15.919143, 13.848602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.604843, 16.114565, 13.686344>,  <25.244822, 15.557733, 13.378062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.604843, 16.114565, 13.686344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777979, 16.133455, 14.046437>,  <25.881861, 16.144789, 14.262493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.777979, 16.133455, 14.046437>,  <25.604843, 16.114565, 13.686344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.777979, 16.133455, 14.046437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663418, -0.692817, -0.282632,
		0.610349, 0.719565, -0.331209,
		0.432840, 0.047226, 0.900233,
		25.907831, 16.147623, 14.316507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.323792, 16.203629, 13.557678>,  <25.604843, 16.114565, 13.686344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.323792, 16.203629, 13.557678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256512, 16.033539, 13.913406>,  <26.216145, 15.931484, 14.126843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.256512, 16.033539, 13.913406>,  <26.323792, 16.203629, 13.557678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.256512, 16.033539, 13.913406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594507, -0.763393, -0.252573,
		0.786301, 0.486225, 0.381203,
		-0.168200, -0.425226, 0.889321,
		26.206051, 15.905971, 14.180202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951492, 15.840990, 13.734603>,  <26.323792, 16.203629, 13.557678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951492, 15.840990, 13.734603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676401, 15.701608, 13.989352>,  <26.511347, 15.617978, 14.142202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.676401, 15.701608, 13.989352>,  <26.951492, 15.840990, 13.734603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.676401, 15.701608, 13.989352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431124, -0.901862, -0.027890,
		0.584091, 0.255391, 0.770463,
		-0.687728, -0.348455, 0.636874,
		26.470083, 15.597071, 14.180414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272255, 15.682150, 14.345239>,  <26.951492, 15.840990, 13.734603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272255, 15.682150, 14.345239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959671, 15.448717, 14.256922>,  <26.772120, 15.308658, 14.203932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.959671, 15.448717, 14.256922>,  <27.272255, 15.682150, 14.345239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.959671, 15.448717, 14.256922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608835, -0.790613, -0.065191,
		-0.136517, -0.185370, 0.973140,
		-0.781462, -0.583582, -0.220792,
		26.725233, 15.273643, 14.190684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.382637, 14.969925, 14.677025>,  <27.272255, 15.682150, 14.345239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.382637, 14.969925, 14.677025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146412, 14.899452, 14.362015>,  <27.004677, 14.857168, 14.173009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.146412, 14.899452, 14.362015>,  <27.382637, 14.969925, 14.677025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.146412, 14.899452, 14.362015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614258, -0.731046, -0.297083,
		-0.523376, -0.659189, 0.539950,
		-0.590563, -0.176182, -0.787524,
		26.969242, 14.846598, 14.125757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.920536, 14.948690, 15.204244>,  <27.382637, 14.969925, 14.677025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.920536, 14.948690, 15.204244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669636, 15.187513, 15.004212>,  <26.519094, 15.330807, 14.884193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.669636, 15.187513, 15.004212>,  <26.920536, 14.948690, 15.204244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.669636, 15.187513, 15.004212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351843, -0.355602, -0.865883,
		-0.694810, -0.719076, 0.012981,
		-0.627252, 0.597057, -0.500078,
		26.481461, 15.366631, 14.854189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.364796, 14.904143, 23.915209> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.986282, 15.004941, 23.996252>,  <14.759174, 15.065419, 24.044878>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.986282, 15.004941, 23.996252>,  <15.364796, 14.904143, 23.915209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986282, 15.004941, 23.996252> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108630, 0.342417, -0.933247,
		-0.304548, -0.905124, -0.296649,
		-0.946283, 0.251993, 0.202607,
		14.702397, 15.080539, 24.057034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.026881, 14.668349, 23.340656>,  <15.364796, 14.904143, 23.915209>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.026881, 14.668349, 23.340656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.774655, 14.939180, 23.492422>,  <14.623320, 15.101679, 23.583481>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.774655, 14.939180, 23.492422>,  <15.026881, 14.668349, 23.340656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774655, 14.939180, 23.492422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008110, 0.483074, -0.875542,
		-0.776094, -0.555163, -0.299118,
		-0.630565, 0.677077, 0.379413,
		14.585485, 15.142303, 23.606245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.508812, 14.746831, 22.855818>,  <15.026881, 14.668349, 23.340656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.508812, 14.746831, 22.855818> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.546745, 15.074618, 23.081907>,  <14.569505, 15.271291, 23.217562>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.546745, 15.074618, 23.081907>,  <14.508812, 14.746831, 22.855818>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.546745, 15.074618, 23.081907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041935, 0.563992, -0.824715,
		-0.994610, 0.101913, 0.019121,
		0.094833, 0.819467, 0.565225,
		14.575195, 15.320458, 23.251474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.027942, 15.187797, 22.643448>,  <14.508812, 14.746831, 22.855818>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.027942, 15.187797, 22.643448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.282535, 15.433011, 22.830671>,  <14.435290, 15.580139, 22.943005>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.282535, 15.433011, 22.830671>,  <14.027942, 15.187797, 22.643448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282535, 15.433011, 22.830671> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025138, 0.590038, -0.806984,
		-0.770881, 0.525398, 0.360139,
		0.636483, 0.613035, 0.468056,
		14.473479, 15.616921, 22.971088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.761558, 15.831775, 22.583054>,  <14.027942, 15.187797, 22.643448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.761558, 15.831775, 22.583054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.147394, 15.902631, 22.661217>,  <14.378897, 15.945145, 22.708115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.147394, 15.902631, 22.661217>,  <13.761558, 15.831775, 22.583054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.147394, 15.902631, 22.661217> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005864, 0.755109, -0.655572,
		-0.263681, 0.631214, 0.729411,
		0.964592, 0.177139, 0.195407,
		14.436771, 15.955772, 22.719839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.846944, 16.600363, 22.632519>,  <13.761558, 15.831775, 22.583054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.846944, 16.600363, 22.632519> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.205153, 16.442110, 22.551022>,  <14.420079, 16.347158, 22.502123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.205153, 16.442110, 22.551022>,  <13.846944, 16.600363, 22.632519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.205153, 16.442110, 22.551022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086174, 0.603344, -0.792812,
		0.436590, 0.692424, 0.574402,
		0.895524, -0.395632, -0.203745,
		14.473810, 16.323420, 22.489899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.166664, 17.175167, 22.367405>,  <13.846944, 16.600363, 22.632519>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.166664, 17.175167, 22.367405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.415443, 16.878330, 22.267420>,  <14.564711, 16.700228, 22.207428>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.415443, 16.878330, 22.267420>,  <14.166664, 17.175167, 22.367405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.415443, 16.878330, 22.267420> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285096, 0.511900, -0.810357,
		0.729315, 0.432736, 0.529942,
		0.621948, -0.742091, -0.249965,
		14.602028, 16.655703, 22.192430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.848850, 17.442600, 22.292183>,  <14.166664, 17.175167, 22.367405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.848850, 17.442600, 22.292183> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.844556, 17.097231, 22.090437>,  <14.841979, 16.890009, 21.969389>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.844556, 17.097231, 22.090437>,  <14.848850, 17.442600, 22.292183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.844556, 17.097231, 22.090437> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463551, 0.442623, -0.767597,
		0.886005, -0.242038, 0.395490,
		-0.010735, -0.863425, -0.504363,
		14.841335, 16.838203, 21.939129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.399072, 17.465820, 21.908134>,  <14.848850, 17.442600, 22.292183>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.399072, 17.465820, 21.908134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.216364, 17.167021, 21.714909>,  <15.106739, 16.987741, 21.598972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.216364, 17.167021, 21.714909>,  <15.399072, 17.465820, 21.908134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.216364, 17.167021, 21.714909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267925, 0.402290, -0.875431,
		0.848279, -0.529295, 0.016386,
		-0.456769, -0.747000, -0.483066,
		15.079333, 16.942921, 21.569988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.779016, 17.354691, 21.347622>,  <15.399072, 17.465820, 21.908134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.779016, 17.354691, 21.347622> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.463491, 17.140820, 21.226368>,  <15.274177, 17.012497, 21.153616>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.463491, 17.140820, 21.226368>,  <15.779016, 17.354691, 21.347622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.463491, 17.140820, 21.226368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262152, 0.153410, -0.952755,
		0.555923, -0.831013, 0.019156,
		-0.788813, -0.534680, -0.303136,
		15.226848, 16.980415, 21.135427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.087044, 16.876127, 20.882109>,  <15.779016, 17.354691, 21.347622>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.087044, 16.876127, 20.882109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.695891, 16.932310, 20.820108>,  <15.461201, 16.966021, 20.782909>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.695891, 16.932310, 20.820108>,  <16.087044, 16.876127, 20.882109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.695891, 16.932310, 20.820108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172623, 0.123424, -0.977225,
		-0.118131, -0.982363, -0.144941,
		-0.977879, 0.140461, -0.154999,
		15.402528, 16.974447, 20.773609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.071215, 16.558088, 20.288416>,  <16.087044, 16.876127, 20.882109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.071215, 16.558088, 20.288416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.741189, 16.782074, 20.318636>,  <15.543174, 16.916466, 20.336767>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.741189, 16.782074, 20.318636>,  <16.071215, 16.558088, 20.288416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.741189, 16.782074, 20.318636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042807, 0.195268, -0.979815,
		-0.563415, -0.805177, -0.185079,
		-0.825064, 0.559965, 0.075550,
		15.493670, 16.950064, 20.341301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.703303, 16.377296, 19.760731>,  <16.071215, 16.558088, 20.288416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.703303, 16.377296, 19.760731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.573586, 16.745634, 19.847340>,  <15.495756, 16.966637, 19.899305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.573586, 16.745634, 19.847340>,  <15.703303, 16.377296, 19.760731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.573586, 16.745634, 19.847340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170297, 0.281986, -0.944184,
		-0.930502, -0.269317, -0.248263,
		-0.324291, 0.920843, 0.216524,
		15.476299, 17.021887, 19.912296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.381100, 16.594778, 19.104088>,  <15.703303, 16.377296, 19.760731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.381100, 16.594778, 19.104088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.435423, 16.926855, 19.320360>,  <15.468017, 17.126102, 19.450123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.435423, 16.926855, 19.320360>,  <15.381100, 16.594778, 19.104088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.435423, 16.926855, 19.320360> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266839, 0.494918, -0.826954,
		-0.954124, 0.256582, -0.154314,
		0.135809, 0.830194, 0.540679,
		15.476166, 17.175913, 19.482563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.069428, 17.113695, 18.703783>,  <15.381100, 16.594778, 19.104088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.069428, 17.113695, 18.703783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.330092, 17.299582, 18.943577>,  <15.486490, 17.411114, 19.087454>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.330092, 17.299582, 18.943577>,  <15.069428, 17.113695, 18.703783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.330092, 17.299582, 18.943577> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231654, 0.630649, -0.740688,
		-0.722272, 0.621549, 0.303315,
		0.651659, 0.464714, 0.599484,
		15.525590, 17.438995, 19.123423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004631, 17.843334, 18.558672>,  <15.069428, 17.113695, 18.703783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004631, 17.843334, 18.558672> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.359704, 17.792200, 18.735613>,  <15.572748, 17.761520, 18.841778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.359704, 17.792200, 18.735613>,  <15.004631, 17.843334, 18.558672>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.359704, 17.792200, 18.735613> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436367, 0.540205, -0.719557,
		-0.146978, 0.831768, 0.535313,
		0.887683, -0.127834, 0.442354,
		15.626009, 17.753849, 18.868319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.291453, 18.413908, 18.516405>,  <15.004631, 17.843334, 18.558672>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.291453, 18.413908, 18.516405> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.615389, 18.197338, 18.606760>,  <15.809750, 18.067396, 18.660973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.615389, 18.197338, 18.606760>,  <15.291453, 18.413908, 18.516405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.615389, 18.197338, 18.606760> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504365, 0.445905, -0.739449,
		0.299631, 0.712762, 0.634186,
		0.809838, -0.541423, 0.225886,
		15.858340, 18.034912, 18.674526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.834627, 18.859993, 18.459063>,  <15.291453, 18.413908, 18.516405>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.834627, 18.859993, 18.459063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.010963, 18.504690, 18.407434>,  <16.116766, 18.291508, 18.376457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.010963, 18.504690, 18.407434>,  <15.834627, 18.859993, 18.459063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.010963, 18.504690, 18.407434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563841, 0.385930, -0.730166,
		0.698386, 0.249113, 0.670969,
		0.440840, -0.888257, -0.129068,
		16.143215, 18.238213, 18.368713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.550051, 19.051702, 18.428074>,  <15.834627, 18.859993, 18.459063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.550051, 19.051702, 18.428074> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.535326, 18.677261, 18.288157>,  <16.526491, 18.452597, 18.204206>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.535326, 18.677261, 18.288157>,  <16.550051, 19.051702, 18.428074>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.535326, 18.677261, 18.288157> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663603, 0.238814, -0.708942,
		0.747178, -0.258221, 0.612410,
		-0.036811, -0.936104, -0.349793,
		16.524282, 18.396431, 18.183218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.263226, 18.822981, 18.251236>,  <16.550051, 19.051702, 18.428074>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.263226, 18.822981, 18.251236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041834, 18.583273, 18.019880>,  <16.908998, 18.439447, 17.881067>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.041834, 18.583273, 18.019880>,  <17.263226, 18.822981, 18.251236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.041834, 18.583273, 18.019880> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682469, 0.071722, -0.727388,
		0.477385, -0.797328, 0.369287,
		-0.553480, -0.599270, -0.578390,
		16.875790, 18.403492, 17.846363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.734373, 18.470280, 17.967752>,  <17.263226, 18.822981, 18.251236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.734373, 18.470280, 17.967752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.415998, 18.414158, 17.732195>,  <17.224974, 18.380486, 17.590860>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.415998, 18.414158, 17.732195>,  <17.734373, 18.470280, 17.967752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.415998, 18.414158, 17.732195> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592794, 0.016688, -0.805182,
		0.122799, -0.989968, 0.069889,
		-0.795937, -0.140305, -0.588896,
		17.177217, 18.372066, 17.555527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.934391, 17.978287, 17.433167>,  <17.734373, 18.470280, 17.967752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.934391, 17.978287, 17.433167> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.605453, 18.160353, 17.296591>,  <17.408091, 18.269592, 17.214645>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.605453, 18.160353, 17.296591>,  <17.934391, 17.978287, 17.433167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.605453, 18.160353, 17.296591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448182, 0.148455, -0.881530,
		-0.350553, -0.877945, -0.326078,
		-0.822342, 0.455164, -0.341437,
		17.358751, 18.296902, 17.194160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.166424, 18.353983, 16.786783>,  <17.934391, 17.978287, 17.433167>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.166424, 18.353983, 16.786783> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.548529, 18.261806, 16.860939>,  <18.777792, 18.206501, 16.905432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.548529, 18.261806, 16.860939>,  <18.166424, 18.353983, 16.786783>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548529, 18.261806, 16.860939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295352, -0.710479, 0.638739,
		-0.015476, -0.664919, -0.746755,
		0.955263, -0.230441, 0.185390,
		18.835108, 18.192675, 16.916555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130407, 17.696915, 16.819490>,  <18.166424, 18.353983, 16.786783>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130407, 17.696915, 16.819490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.490946, 17.753408, 16.983261>,  <18.707268, 17.787304, 17.081524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.490946, 17.753408, 16.983261>,  <18.130407, 17.696915, 16.819490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.490946, 17.753408, 16.983261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156503, -0.775248, 0.611962,
		0.403839, -0.615665, -0.676662,
		0.901344, 0.141235, 0.409429,
		18.761349, 17.795778, 17.106091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.405670, 17.098196, 16.824387>,  <18.130407, 17.696915, 16.819490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.405670, 17.098196, 16.824387> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.559784, 17.298994, 17.134109>,  <18.652252, 17.419474, 17.319944>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.559784, 17.298994, 17.134109>,  <18.405670, 17.098196, 16.824387>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.559784, 17.298994, 17.134109> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184421, -0.780274, 0.597630,
		0.904181, -0.373057, -0.208050,
		0.385286, 0.501997, 0.774308,
		18.675369, 17.449593, 17.366402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.949978, 16.700096, 17.073700>,  <18.405670, 17.098196, 16.824387>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.949978, 16.700096, 17.073700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.858612, 16.929243, 17.388571>,  <18.803793, 17.066730, 17.577494>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.858612, 16.929243, 17.388571>,  <18.949978, 16.700096, 17.073700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.858612, 16.929243, 17.388571> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099287, -0.818045, 0.566520,
		0.968488, 0.051244, 0.243731,
		-0.228413, 0.572867, 0.787179,
		18.790089, 17.101103, 17.624725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.268021, 16.375362, 17.666769>,  <18.949978, 16.700096, 17.073700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.268021, 16.375362, 17.666769> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.011683, 16.634661, 17.831251>,  <18.857880, 16.790239, 17.929941>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.011683, 16.634661, 17.831251>,  <19.268021, 16.375362, 17.666769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.011683, 16.634661, 17.831251> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174442, -0.644612, 0.744342,
		0.747586, 0.405278, 0.526180,
		-0.640847, 0.648247, 0.411206,
		18.819427, 16.829136, 17.954613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.511688, 16.532524, 18.356640>,  <19.268021, 16.375362, 17.666769>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.511688, 16.532524, 18.356640> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.130964, 16.653292, 18.378170>,  <18.902529, 16.725754, 18.391088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.130964, 16.653292, 18.378170>,  <19.511688, 16.532524, 18.356640>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.130964, 16.653292, 18.378170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061056, -0.358543, 0.931514,
		0.300542, 0.883340, 0.359700,
		-0.951812, 0.301921, 0.053824,
		18.845421, 16.743868, 18.394318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.474558, 16.853762, 19.019629>,  <19.511688, 16.532524, 18.356640>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.474558, 16.853762, 19.019629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.107374, 16.742466, 18.906540>,  <18.887064, 16.675688, 18.838686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<19.107374, 16.742466, 18.906540>,  <19.474558, 16.853762, 19.019629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.107374, 16.742466, 18.906540> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198128, -0.295854, 0.934460,
		-0.343648, 0.913813, 0.216455,
		-0.917961, -0.278240, -0.282721,
		18.831985, 16.658995, 18.821724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.024084, 16.977840, 19.590054>,  <19.474558, 16.853762, 19.019629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.024084, 16.977840, 19.590054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.805805, 16.745518, 19.348433>,  <18.674839, 16.606125, 19.203461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.805805, 16.745518, 19.348433>,  <19.024084, 16.977840, 19.590054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.805805, 16.745518, 19.348433> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460205, -0.394697, 0.795252,
		-0.700306, 0.711953, -0.051906,
		-0.545695, -0.580807, -0.604053,
		18.642097, 16.571276, 19.167217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.381695, 17.121792, 19.818457>,  <19.024084, 16.977840, 19.590054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.381695, 17.121792, 19.818457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.364634, 16.774797, 19.620203>,  <18.354397, 16.566601, 19.501251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.364634, 16.774797, 19.620203>,  <18.381695, 17.121792, 19.818457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.364634, 16.774797, 19.620203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506414, -0.408863, 0.759195,
		-0.861235, 0.283378, -0.421866,
		-0.042653, -0.867484, -0.495633,
		18.351837, 16.514553, 19.471514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.728735, 16.838650, 19.891514>,  <18.381695, 17.121792, 19.818457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.728735, 16.838650, 19.891514> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.962389, 16.522339, 19.818350>,  <18.102581, 16.332552, 19.774452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.962389, 16.522339, 19.818350>,  <17.728735, 16.838650, 19.891514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962389, 16.522339, 19.818350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428119, -0.491639, 0.758291,
		-0.689566, -0.364636, -0.625731,
		0.584134, -0.790779, -0.182910,
		18.137629, 16.285105, 19.763477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.291992, 16.346636, 19.965109>,  <17.728735, 16.838650, 19.891514>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.291992, 16.346636, 19.965109> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.646475, 16.162592, 19.986776>,  <17.859165, 16.052166, 19.999777>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.646475, 16.162592, 19.986776>,  <17.291992, 16.346636, 19.965109>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.646475, 16.162592, 19.986776> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347301, -0.582398, 0.734980,
		-0.306622, -0.670158, -0.675922,
		0.886208, -0.460109, 0.054170,
		17.912338, 16.024559, 20.003027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.196966, 15.598408, 19.893658>,  <17.291992, 16.346636, 19.965109>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.196966, 15.598408, 19.893658> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.553059, 15.602770, 20.075811>,  <17.766714, 15.605387, 20.185102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.553059, 15.602770, 20.075811>,  <17.196966, 15.598408, 19.893658>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.553059, 15.602770, 20.075811> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299479, -0.739266, 0.603156,
		0.343227, -0.673325, -0.654850,
		0.890229, 0.010905, 0.455383,
		17.820127, 15.606041, 20.212425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.459229, 14.821488, 20.000879>,  <17.196966, 15.598408, 19.893658>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.459229, 14.821488, 20.000879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.623808, 15.069626, 20.267979>,  <17.722555, 15.218509, 20.428238>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.623808, 15.069626, 20.267979>,  <17.459229, 14.821488, 20.000879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.623808, 15.069626, 20.267979> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191235, -0.657567, 0.728721,
		0.891146, -0.427526, -0.151922,
		0.411446, 0.620344, 0.667746,
		17.747242, 15.255729, 20.468302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.928190, 14.380724, 20.406923>,  <17.459229, 14.821488, 20.000879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.928190, 14.380724, 20.406923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.834253, 14.694046, 20.637152>,  <17.777891, 14.882039, 20.775290>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.834253, 14.694046, 20.637152>,  <17.928190, 14.380724, 20.406923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.834253, 14.694046, 20.637152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280563, -0.621553, 0.731407,
		0.930663, 0.010282, 0.365734,
		-0.234843, 0.783305, 0.575571,
		17.763800, 14.929037, 20.809824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.218433, 14.321119, 21.093512>,  <17.928190, 14.380724, 20.406923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.218433, 14.321119, 21.093512> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940777, 14.600677, 21.162462>,  <17.774183, 14.768413, 21.203833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.940777, 14.600677, 21.162462>,  <18.218433, 14.321119, 21.093512>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.940777, 14.600677, 21.162462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355527, -0.541079, 0.762124,
		0.625914, 0.467738, 0.624062,
		-0.694141, 0.698895, 0.172376,
		17.732534, 14.810346, 21.214174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.389933, 14.544769, 21.792164>,  <18.218433, 14.321119, 21.093512>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.389933, 14.544769, 21.792164> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.004311, 14.639892, 21.744751>,  <17.772938, 14.696965, 21.716303>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.004311, 14.639892, 21.744751>,  <18.389933, 14.544769, 21.792164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.004311, 14.639892, 21.744751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212973, -0.424812, 0.879873,
		0.158885, 0.873489, 0.460188,
		-0.964053, 0.237806, -0.118534,
		17.715096, 14.711233, 21.709190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.275763, 15.033923, 22.227108>,  <18.389933, 14.544769, 21.792164>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.275763, 15.033923, 22.227108> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.909153, 14.893979, 22.149567>,  <17.689186, 14.810013, 22.103043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.909153, 14.893979, 22.149567>,  <18.275763, 15.033923, 22.227108>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.909153, 14.893979, 22.149567> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028660, -0.425971, 0.904283,
		-0.398947, 0.834354, 0.380387,
		-0.916526, -0.349860, -0.193852,
		17.634195, 14.789021, 22.091412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.944651, 15.142388, 22.791483>,  <18.275763, 15.033923, 22.227108>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.944651, 15.142388, 22.791483> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.706381, 14.869174, 22.622421>,  <17.563419, 14.705246, 22.520985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.706381, 14.869174, 22.622421>,  <17.944651, 15.142388, 22.791483>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.706381, 14.869174, 22.622421> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158590, -0.415826, 0.895510,
		-0.787415, 0.600460, 0.139374,
		-0.595673, -0.683035, -0.422654,
		17.527679, 14.664264, 22.495625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.193048, 15.220573, 23.165731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.197273, 14.862514, 22.987476>,  <17.199808, 14.647677, 22.880524>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.197273, 14.862514, 22.987476>,  <17.193048, 15.220573, 23.165731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197273, 14.862514, 22.987476> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385847, -0.414797, 0.824054,
		-0.922502, 0.163246, -0.349772,
		0.010560, -0.895151, -0.445639,
		17.200441, 14.593968, 22.853785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.555712, 14.863041, 23.326447>,  <17.193048, 15.220573, 23.165731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.555712, 14.863041, 23.326447> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.808216, 14.566212, 23.236258>,  <16.959719, 14.388114, 23.182144>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.808216, 14.566212, 23.236258>,  <16.555712, 14.863041, 23.326447>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.808216, 14.566212, 23.236258> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344400, -0.528692, 0.775805,
		-0.694908, -0.412084, -0.589313,
		0.631262, -0.742072, -0.225471,
		16.997595, 14.343590, 23.168617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.180944, 14.317595, 23.375565>,  <16.555712, 14.863041, 23.326447>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.180944, 14.317595, 23.375565> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.539965, 14.146843, 23.419704>,  <16.755377, 14.044392, 23.446188>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.539965, 14.146843, 23.419704>,  <16.180944, 14.317595, 23.375565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.539965, 14.146843, 23.419704> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310985, -0.435493, 0.844769,
		-0.312560, -0.792539, -0.523630,
		0.897550, -0.426882, 0.110350,
		16.809229, 14.018778, 23.452808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.986670, 13.644437, 23.694502>,  <16.180944, 14.317595, 23.375565>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.986670, 13.644437, 23.694502> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.379143, 13.690256, 23.756672>,  <16.614626, 13.717748, 23.793974>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.379143, 13.690256, 23.756672>,  <15.986670, 13.644437, 23.694502>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.379143, 13.690256, 23.756672> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083231, -0.475426, 0.875810,
		0.174217, -0.872267, -0.456946,
		0.981183, 0.114548, 0.155427,
		16.673498, 13.724621, 23.803301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.154543, 13.034854, 23.854956>,  <15.986670, 13.644437, 23.694502>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.154543, 13.034854, 23.854956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.436777, 13.277534, 24.001415>,  <16.606117, 13.423141, 24.089291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.436777, 13.277534, 24.001415>,  <16.154543, 13.034854, 23.854956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.436777, 13.277534, 24.001415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034858, -0.486360, 0.873063,
		0.707766, -0.628784, -0.322021,
		0.705587, 0.606699, 0.366147,
		16.648453, 13.459543, 24.111259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.500198, 12.491541, 24.284241>,  <16.154543, 13.034854, 23.854956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.500198, 12.491541, 24.284241> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.592140, 12.867861, 24.383890>,  <16.647305, 13.093653, 24.443680>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.592140, 12.867861, 24.383890>,  <16.500198, 12.491541, 24.284241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592140, 12.867861, 24.383890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080005, -0.273375, 0.958574,
		0.969931, -0.200401, -0.138105,
		0.229854, 0.940800, 0.249122,
		16.661097, 13.150101, 24.458628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.097485, 12.530828, 24.737877>,  <16.500198, 12.491541, 24.284241>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.097485, 12.530828, 24.737877> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.894314, 12.868999, 24.803921>,  <16.772411, 13.071901, 24.843548>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.894314, 12.868999, 24.803921>,  <17.097485, 12.530828, 24.737877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.894314, 12.868999, 24.803921> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004595, -0.189016, 0.981963,
		0.861387, 0.499526, 0.092122,
		-0.507928, 0.845427, 0.165111,
		16.741936, 13.122626, 24.853455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.302643, 12.794127, 25.346556>,  <17.097485, 12.530828, 24.737877>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.302643, 12.794127, 25.346556> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.965219, 13.007721, 25.323702>,  <16.762766, 13.135878, 25.309990>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.965219, 13.007721, 25.323702>,  <17.302643, 12.794127, 25.346556>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.965219, 13.007721, 25.323702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164684, -0.155948, 0.973940,
		0.511161, 0.830986, 0.219490,
		-0.843560, 0.533987, -0.057136,
		16.712151, 13.167917, 25.306561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.260315, 13.146642, 25.999666>,  <17.302643, 12.794127, 25.346556>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.260315, 13.146642, 25.999666> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.889629, 13.163948, 25.850359>,  <16.667217, 13.174332, 25.760775>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.889629, 13.163948, 25.850359>,  <17.260315, 13.146642, 25.999666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889629, 13.163948, 25.850359> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375764, -0.101047, 0.921190,
		0.002139, 0.993940, 0.109900,
		-0.926713, 0.043267, -0.373270,
		16.611616, 13.176929, 25.738379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.913364, 13.587259, 26.434088>,  <17.260315, 13.146642, 25.999666>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.913364, 13.587259, 26.434088> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.626345, 13.368452, 26.261625>,  <16.454134, 13.237168, 26.158148>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.626345, 13.368452, 26.261625>,  <16.913364, 13.587259, 26.434088>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.626345, 13.368452, 26.261625> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349593, -0.252551, 0.902221,
		-0.602419, 0.798117, -0.010016,
		-0.717548, -0.547017, -0.431157,
		16.411079, 13.204347, 26.132278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.187309, 13.763441, 26.725561>,  <16.913364, 13.587259, 26.434088>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.187309, 13.763441, 26.725561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.169727, 13.397238, 26.565603>,  <16.159178, 13.177516, 26.469629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.169727, 13.397238, 26.565603>,  <16.187309, 13.763441, 26.725561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.169727, 13.397238, 26.565603> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190803, -0.385219, 0.902884,
		-0.980644, 0.115985, -0.157750,
		-0.043953, -0.915507, -0.399893,
		16.156542, 13.122585, 26.445635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.597107, 13.555064, 27.115503>,  <16.187309, 13.763441, 26.725561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.597107, 13.555064, 27.115503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.762632, 13.216748, 26.980806>,  <15.861947, 13.013759, 26.899988>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.762632, 13.216748, 26.980806>,  <15.597107, 13.555064, 27.115503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.762632, 13.216748, 26.980806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334058, -0.485176, 0.808090,
		-0.846856, -0.221905, -0.483315,
		0.413812, -0.845791, -0.336745,
		15.886776, 12.963011, 26.879784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.109525, 13.015519, 27.254021>,  <15.597107, 13.555064, 27.115503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.109525, 13.015519, 27.254021> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.451954, 12.814870, 27.204199>,  <15.657412, 12.694481, 27.174307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.451954, 12.814870, 27.204199>,  <15.109525, 13.015519, 27.254021>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.451954, 12.814870, 27.204199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173734, -0.506237, 0.844713,
		-0.486776, -0.701500, -0.520526,
		0.856076, -0.501619, -0.124550,
		15.708776, 12.664383, 27.166834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.939072, 12.277210, 27.446409>,  <15.109525, 13.015519, 27.254021>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.939072, 12.277210, 27.446409> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.338317, 12.286500, 27.469139>,  <15.577865, 12.292074, 27.482777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.338317, 12.286500, 27.469139>,  <14.939072, 12.277210, 27.446409>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.338317, 12.286500, 27.469139> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041827, -0.420278, 0.906431,
		0.044936, -0.907098, -0.418514,
		0.998114, 0.023226, 0.056827,
		15.637751, 12.293468, 27.486187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.243325, 11.565055, 27.522938>,  <14.939072, 12.277210, 27.446409>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.243325, 11.565055, 27.522938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.526372, 11.815167, 27.654573>,  <15.696200, 11.965235, 27.733555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.526372, 11.815167, 27.654573>,  <15.243325, 11.565055, 27.522938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.526372, 11.815167, 27.654573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008023, -0.472818, 0.881124,
		0.706550, -0.620858, -0.339591,
		0.707618, 0.625283, 0.329088,
		15.738657, 12.002752, 27.753300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.574412, 11.108158, 28.049250>,  <15.243325, 11.565055, 27.522938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.574412, 11.108158, 28.049250> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.758241, 11.453104, 28.134214>,  <15.868538, 11.660072, 28.185194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.758241, 11.453104, 28.134214>,  <15.574412, 11.108158, 28.049250>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.758241, 11.453104, 28.134214> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332724, -0.388921, 0.859089,
		0.823462, -0.324137, -0.465667,
		0.459571, 0.862366, 0.212414,
		15.896112, 11.711814, 28.197939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.274374, 10.988600, 28.333965>,  <15.574412, 11.108158, 28.049250>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.274374, 10.988600, 28.333965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.157610, 11.351814, 28.454138>,  <16.087551, 11.569743, 28.526241>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.157610, 11.351814, 28.454138>,  <16.274374, 10.988600, 28.333965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.157610, 11.351814, 28.454138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241917, -0.233800, 0.941708,
		0.925346, 0.347572, -0.151421,
		-0.291909, 0.908037, 0.300429,
		16.070038, 11.624226, 28.544266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739719, 11.231297, 28.787956>,  <16.274374, 10.988600, 28.333965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739719, 11.231297, 28.787956> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.407557, 11.436481, 28.874950>,  <16.208260, 11.559591, 28.927147>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.407557, 11.436481, 28.874950>,  <16.739719, 11.231297, 28.787956>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.407557, 11.436481, 28.874950> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101565, -0.244440, 0.964331,
		0.547825, 0.822874, 0.150886,
		-0.830405, 0.512959, 0.217486,
		16.158436, 11.590369, 28.940197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.886793, 11.557597, 29.386143>,  <16.739719, 11.231297, 28.787956>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.886793, 11.557597, 29.386143> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487818, 11.551138, 29.358278>,  <16.248432, 11.547262, 29.341558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.487818, 11.551138, 29.358278>,  <16.886793, 11.557597, 29.386143>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.487818, 11.551138, 29.358278> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063722, -0.241391, 0.968333,
		-0.032453, 0.970293, 0.239744,
		-0.997440, -0.016149, -0.069663,
		16.188585, 11.546293, 29.337379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.646854, 12.000768, 29.908436>,  <16.886793, 11.557597, 29.386143>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.646854, 12.000768, 29.908436> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.354031, 11.740211, 29.828653>,  <16.178337, 11.583878, 29.780785>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.354031, 11.740211, 29.828653>,  <16.646854, 12.000768, 29.908436>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.354031, 11.740211, 29.828653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006566, -0.299513, 0.954069,
		-0.681210, 0.697125, 0.223539,
		-0.732059, -0.651389, -0.199454,
		16.134413, 11.544795, 29.768818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.983774, 12.208790, 30.274092>,  <16.646854, 12.000768, 29.908436>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.983774, 12.208790, 30.274092> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.961444, 11.816893, 30.197163>,  <15.948046, 11.581755, 30.151005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.961444, 11.816893, 30.197163>,  <15.983774, 12.208790, 30.274092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.961444, 11.816893, 30.197163> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143579, -0.198499, 0.969527,
		-0.988063, 0.026512, 0.151752,
		-0.055827, -0.979743, -0.192323,
		15.944695, 11.522970, 30.139465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.529871, 11.773237, 30.763973>,  <15.983774, 12.208790, 30.274092>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.529871, 11.773237, 30.763973> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.839511, 11.580058, 30.600252>,  <16.025295, 11.464150, 30.502020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.839511, 11.580058, 30.600252>,  <15.529871, 11.773237, 30.763973>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.839511, 11.580058, 30.600252> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210709, -0.413122, 0.885964,
		-0.596968, -0.772069, -0.218036,
		0.774100, -0.482950, -0.409302,
		16.071741, 11.435173, 30.477461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.040834, 11.526199, 31.353521>,  <15.529871, 11.773237, 30.763973>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.040834, 11.526199, 31.353521> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.815188, 11.277344, 31.136370>,  <14.679801, 11.128030, 31.006079>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.815188, 11.277344, 31.136370>,  <15.040834, 11.526199, 31.353521>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.815188, 11.277344, 31.136370> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428766, -0.341170, 0.836518,
		-0.705645, 0.704660, -0.074294,
		-0.564114, -0.622140, -0.542879,
		14.645954, 11.090702, 30.973507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288519, 11.666048, 31.378794>,  <15.040834, 11.526199, 31.353521>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.288519, 11.666048, 31.378794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.891188, 11.628425, 31.405489>,  <13.652789, 11.605851, 31.421507>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.891188, 11.628425, 31.405489>,  <14.288519, 11.666048, 31.378794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.891188, 11.628425, 31.405489> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079406, 0.138113, -0.987228,
		0.083636, -0.985941, -0.144660,
		-0.993328, -0.094055, 0.066738,
		13.593189, 11.600207, 31.425510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.931921, 11.242790, 30.835375>,  <14.288519, 11.666048, 31.378794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.931921, 11.242790, 30.835375> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.624828, 11.467507, 30.958647>,  <13.440573, 11.602338, 31.032610>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.624828, 11.467507, 30.958647>,  <13.931921, 11.242790, 30.835375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.624828, 11.467507, 30.958647> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244114, 0.188252, -0.951299,
		-0.592450, -0.805573, -0.007385,
		-0.767732, 0.561794, 0.308181,
		13.394509, 11.636045, 31.051102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.530600, 11.203997, 30.262342>,  <13.931921, 11.242790, 30.835375>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.530600, 11.203997, 30.262342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.360610, 11.483428, 30.492607>,  <13.258616, 11.651087, 30.630766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.360610, 11.483428, 30.492607>,  <13.530600, 11.203997, 30.262342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.360610, 11.483428, 30.492607> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321040, 0.478289, -0.817418,
		-0.846363, -0.532192, 0.021011,
		-0.424974, 0.698578, 0.575661,
		13.233118, 11.693002, 30.665306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.809602, 11.300989, 30.001881>,  <13.530600, 11.203997, 30.262342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.809602, 11.300989, 30.001881> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.960330, 11.628460, 30.175213>,  <13.050767, 11.824943, 30.279211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.960330, 11.628460, 30.175213>,  <12.809602, 11.300989, 30.001881>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960330, 11.628460, 30.175213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188112, 0.525699, -0.829611,
		-0.906985, 0.231100, 0.352096,
		0.376820, 0.818678, 0.433328,
		13.073376, 11.874063, 30.305212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.339418, 11.881002, 29.732658>,  <12.809602, 11.300989, 30.001881>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.339418, 11.881002, 29.732658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.651639, 12.086537, 29.875044>,  <12.838971, 12.209859, 29.960474>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.651639, 12.086537, 29.875044>,  <12.339418, 11.881002, 29.732658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.651639, 12.086537, 29.875044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085757, 0.652099, -0.753268,
		-0.619181, 0.557438, 0.553062,
		0.780552, 0.513838, 0.355963,
		12.885804, 12.240689, 29.981833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.213440, 12.644523, 29.693531>,  <12.339418, 11.881002, 29.732658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.213440, 12.644523, 29.693531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.610889, 12.599568, 29.689957>,  <12.849360, 12.572596, 29.687813>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.610889, 12.599568, 29.689957>,  <12.213440, 12.644523, 29.693531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.610889, 12.599568, 29.689957> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057726, 0.575234, -0.815950,
		0.096840, 0.810232, 0.578054,
		0.993624, -0.112386, -0.008934,
		12.908977, 12.565852, 29.687277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312592, 13.262555, 29.406822>,  <12.213440, 12.644523, 29.693531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312592, 13.262555, 29.406822> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.660053, 13.065916, 29.382257>,  <12.868530, 12.947933, 29.367519>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.660053, 13.065916, 29.382257>,  <12.312592, 13.262555, 29.406822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.660053, 13.065916, 29.382257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180014, 0.428681, -0.885340,
		0.461556, 0.758000, 0.460871,
		0.868655, -0.491597, -0.061410,
		12.920650, 12.918437, 29.363834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.804075, 13.884558, 29.400295>,  <12.312592, 13.262555, 29.406822>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.804075, 13.884558, 29.400295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.960121, 13.548626, 29.249300>,  <13.053748, 13.347067, 29.158703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<12.960121, 13.548626, 29.249300>,  <12.804075, 13.884558, 29.400295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960121, 13.548626, 29.249300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217983, 0.482556, -0.848306,
		0.894592, 0.248649, 0.371321,
		0.390114, -0.839829, -0.377489,
		13.077155, 13.296678, 29.136053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.372534, 14.111420, 29.015585>,  <12.804075, 13.884558, 29.400295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.372534, 14.111420, 29.015585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.331924, 13.734325, 28.888498>,  <13.307559, 13.508069, 28.812246>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.331924, 13.734325, 28.888498>,  <13.372534, 14.111420, 29.015585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.331924, 13.734325, 28.888498> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443021, 0.243108, -0.862920,
		0.890744, -0.228360, 0.392971,
		-0.101522, -0.942736, -0.317715,
		13.301468, 13.451505, 28.793184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.023128, 13.907940, 28.695465>,  <13.372534, 14.111420, 29.015585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.023128, 13.907940, 28.695465> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.749655, 13.653775, 28.551893>,  <13.585571, 13.501276, 28.465750>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.749655, 13.653775, 28.551893>,  <14.023128, 13.907940, 28.695465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.749655, 13.653775, 28.551893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491879, -0.037892, -0.869838,
		0.539105, -0.771243, 0.338452,
		-0.683682, -0.635412, -0.358931,
		13.544550, 13.463152, 28.444214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.386934, 13.334372, 28.406363>,  <14.023128, 13.907940, 28.695465>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.386934, 13.334372, 28.406363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.040170, 13.338161, 28.207012>,  <13.832111, 13.340434, 28.087402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.040170, 13.338161, 28.207012>,  <14.386934, 13.334372, 28.406363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.040170, 13.338161, 28.207012> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498055, -0.024042, -0.866812,
		-0.020193, -0.999666, 0.016124,
		-0.866910, 0.009473, -0.498374,
		13.780097, 13.341002, 28.057501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.525212, 13.088644, 27.735296>,  <14.386934, 13.334372, 28.406363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.525212, 13.088644, 27.735296> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.175139, 13.271871, 27.673029>,  <13.965096, 13.381806, 27.635668>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.175139, 13.271871, 27.673029>,  <14.525212, 13.088644, 27.735296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.175139, 13.271871, 27.673029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223561, 0.097564, -0.969795,
		-0.429043, -0.883548, -0.187792,
		-0.875182, 0.458067, -0.155668,
		13.912585, 13.409290, 27.626329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.341050, 12.819528, 26.982340>,  <14.525212, 13.088644, 27.735296>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.341050, 12.819528, 26.982340> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.127995, 13.142815, 27.082802>,  <14.000161, 13.336787, 27.143080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.127995, 13.142815, 27.082802>,  <14.341050, 12.819528, 26.982340>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.127995, 13.142815, 27.082802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110533, 0.360643, -0.926131,
		-0.839093, -0.465533, -0.281428,
		-0.532640, 0.808218, 0.251156,
		13.968203, 13.385280, 27.158148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.953612, 12.884325, 26.391411>,  <14.341050, 12.819528, 26.982340>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.953612, 12.884325, 26.391411> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.924079, 13.241917, 26.568205>,  <13.906359, 13.456471, 26.674282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.924079, 13.241917, 26.568205>,  <13.953612, 12.884325, 26.391411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.924079, 13.241917, 26.568205> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080737, 0.447099, -0.890833,
		-0.993997, -0.030089, -0.105188,
		-0.073834, 0.893978, 0.441986,
		13.901929, 13.510110, 26.700800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.445733, 13.234891, 25.966164>,  <13.953612, 12.884325, 26.391411>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.445733, 13.234891, 25.966164> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658420, 13.506536, 26.168583>,  <13.786032, 13.669522, 26.290033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.658420, 13.506536, 26.168583>,  <13.445733, 13.234891, 25.966164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.658420, 13.506536, 26.168583> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233903, 0.456520, -0.858416,
		-0.813982, 0.574800, 0.083893,
		0.531717, 0.679112, 0.506047,
		13.817935, 13.710269, 26.320396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.159278, 13.967431, 25.897587>,  <13.445733, 13.234891, 25.966164>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.159278, 13.967431, 25.897587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.547741, 14.012512, 25.981636>,  <13.780819, 14.039561, 26.032064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.547741, 14.012512, 25.981636>,  <13.159278, 13.967431, 25.897587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.547741, 14.012512, 25.981636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114372, 0.553055, -0.825257,
		-0.209217, 0.825487, 0.524214,
		0.971158, 0.112703, 0.210121,
		13.839088, 14.046323, 26.044672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.313063, 14.691964, 25.944304>,  <13.159278, 13.967431, 25.897587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.313063, 14.691964, 25.944304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.665526, 14.512473, 25.884703>,  <13.877005, 14.404778, 25.848942>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<13.665526, 14.512473, 25.884703>,  <13.313063, 14.691964, 25.944304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.665526, 14.512473, 25.884703> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268152, 0.733825, -0.624176,
		0.389425, 0.510045, 0.766944,
		0.881160, -0.448727, -0.149000,
		13.929874, 14.377855, 25.840002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.837543, 15.234591, 25.871899>,  <13.313063, 14.691964, 25.944304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.837543, 15.234591, 25.871899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.019475, 14.914952, 25.714634>,  <14.128634, 14.723169, 25.620275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.019475, 14.914952, 25.714634>,  <13.837543, 15.234591, 25.871899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.019475, 14.914952, 25.714634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392840, 0.576218, -0.716693,
		0.799253, 0.171524, 0.575998,
		0.454831, -0.799095, -0.393163,
		14.155924, 14.675224, 25.596685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.402960, 15.491566, 25.702211>,  <13.837543, 15.234591, 25.871899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.402960, 15.491566, 25.702211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.374205, 15.159673, 25.480806>,  <14.356952, 14.960537, 25.347963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.374205, 15.159673, 25.480806>,  <14.402960, 15.491566, 25.702211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.374205, 15.159673, 25.480806> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207546, 0.530356, -0.821977,
		0.975580, -0.173970, 0.134082,
		-0.071888, -0.829733, -0.553512,
		14.352638, 14.910753, 25.314753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.850348, 15.603520, 25.211868>,  <14.402960, 15.491566, 25.702211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.850348, 15.603520, 25.211868> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.630852, 15.307971, 25.055433>,  <14.499154, 15.130641, 24.961573>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.630852, 15.307971, 25.055433>,  <14.850348, 15.603520, 25.211868>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.630852, 15.307971, 25.055433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031393, 0.449270, -0.892844,
		0.835404, -0.502216, -0.223337,
		-0.548739, -0.738874, -0.391088,
		14.466230, 15.086308, 24.938107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.286238, 15.293393, 24.768587>,  <14.850348, 15.603520, 25.211868>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.286238, 15.293393, 24.768587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.923590, 15.197361, 24.629791>,  <14.706001, 15.139742, 24.546515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.923590, 15.197361, 24.629791>,  <15.286238, 15.293393, 24.768587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923590, 15.197361, 24.629791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225966, 0.418234, -0.879784,
		0.356342, -0.876037, -0.324929,
		-0.906620, -0.240081, -0.346989,
		14.651604, 15.125337, 24.525694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<20.891060, 22.032730, 5.137740> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.821829, 22.416683, 5.049496>,  <20.780291, 22.647055, 4.996550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.821829, 22.416683, 5.049496>,  <20.891060, 22.032730, 5.137740>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.821829, 22.416683, 5.049496> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257051, -0.172203, -0.950931,
		-0.950772, -0.221295, -0.216934,
		-0.173079, 0.959883, -0.220610,
		20.769905, 22.704647, 4.983313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.251657, 22.065744, 5.824575>,  <20.891060, 22.032730, 5.137740>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.251657, 22.065744, 5.824575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.315174, 22.062166, 6.219484>,  <21.353285, 22.060019, 6.456429>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.315174, 22.062166, 6.219484>,  <21.251657, 22.065744, 5.824575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.315174, 22.062166, 6.219484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125353, 0.992049, -0.011172,
		-0.979322, 0.125531, 0.158651,
		0.158792, -0.008947, 0.987271,
		21.362812, 22.059483, 6.515666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.837954, 22.671249, 6.085163>,  <21.251657, 22.065744, 5.824575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.837954, 22.671249, 6.085163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.097330, 22.567802, 6.371559>,  <21.252956, 22.505735, 6.543396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.097330, 22.567802, 6.371559>,  <20.837954, 22.671249, 6.085163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.097330, 22.567802, 6.371559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167096, 0.965943, 0.197567,
		-0.742699, -0.008472, 0.669572,
		0.648443, -0.258615, 0.715989,
		21.291862, 22.490217, 6.586355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.652422, 23.127106, 6.599887>,  <20.837954, 22.671249, 6.085163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.652422, 23.127106, 6.599887> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.004715, 22.958582, 6.686428>,  <21.216091, 22.857468, 6.738353>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.004715, 22.958582, 6.686428>,  <20.652422, 23.127106, 6.599887>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.004715, 22.958582, 6.686428> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355452, 0.889888, 0.285924,
		-0.312992, -0.174920, 0.933509,
		0.880732, -0.421310, 0.216353,
		21.268934, 22.832190, 6.751334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.772383, 23.417305, 7.264054>,  <20.652422, 23.127106, 6.599887>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.772383, 23.417305, 7.264054> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.123718, 23.290754, 7.120708>,  <21.334520, 23.214825, 7.034700>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.123718, 23.290754, 7.120708>,  <20.772383, 23.417305, 7.264054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.123718, 23.290754, 7.120708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440882, 0.825893, 0.351459,
		0.184778, -0.466697, 0.864899,
		0.878339, -0.316376, -0.358365,
		21.387220, 23.195841, 7.013198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.278593, 23.506529, 7.755583>,  <20.772383, 23.417305, 7.264054>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.278593, 23.506529, 7.755583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.463659, 23.539597, 7.402515>,  <21.574699, 23.559437, 7.190675>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.463659, 23.539597, 7.402515>,  <21.278593, 23.506529, 7.755583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.463659, 23.539597, 7.402515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270577, 0.934968, 0.229395,
		0.844232, -0.344964, 0.410211,
		0.462667, 0.082669, -0.882669,
		21.602459, 23.564398, 7.137714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.037086, 23.858208, 7.573737>,  <21.278593, 23.506529, 7.755583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.037086, 23.858208, 7.573737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413624, 23.737642, 7.634434>,  <22.639545, 23.665302, 7.670852>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.413624, 23.737642, 7.634434>,  <22.037086, 23.858208, 7.573737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.413624, 23.737642, 7.634434> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332337, -0.750036, 0.571838,
		-0.058548, -0.588724, -0.806211,
		0.941342, -0.301414, 0.151741,
		22.696026, 23.647219, 7.679956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.118052, 23.103718, 7.739329>,  <22.037086, 23.858208, 7.573737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.118052, 23.103718, 7.739329> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492655, 23.194971, 7.845841>,  <22.717417, 23.249723, 7.909748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.492655, 23.194971, 7.845841>,  <22.118052, 23.103718, 7.739329>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.492655, 23.194971, 7.845841> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026750, -0.710709, 0.702977,
		0.349619, -0.665468, -0.659484,
		0.936510, 0.228133, 0.266279,
		22.773607, 23.263411, 7.925725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.474949, 22.605106, 7.981009>,  <22.118052, 23.103718, 7.739329>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.474949, 22.605106, 7.981009> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.734991, 22.866224, 8.136559>,  <22.891016, 23.022896, 8.229890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.734991, 22.866224, 8.136559>,  <22.474949, 22.605106, 7.981009>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.734991, 22.866224, 8.136559> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005099, -0.515518, 0.856864,
		0.759828, -0.555068, -0.338469,
		0.650104, 0.652795, 0.388875,
		22.930023, 23.062063, 8.253222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.102474, 22.180315, 8.148168>,  <22.474949, 22.605106, 7.981009>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.102474, 22.180315, 8.148168> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.027107, 22.491522, 8.387896>,  <22.981886, 22.678246, 8.531733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.027107, 22.491522, 8.387896>,  <23.102474, 22.180315, 8.148168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.027107, 22.491522, 8.387896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132164, -0.624788, 0.769528,
		0.973155, 0.065785, 0.220548,
		-0.188419, 0.778019, 0.599321,
		22.970581, 22.724928, 8.567692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.591990, 22.210680, 8.771001>,  <23.102474, 22.180315, 8.148168>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.591990, 22.210680, 8.771001> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.268330, 22.416763, 8.884019>,  <23.074133, 22.540413, 8.951830>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.268330, 22.416763, 8.884019>,  <23.591990, 22.210680, 8.771001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.268330, 22.416763, 8.884019> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028753, -0.514987, 0.856716,
		0.586896, 0.685089, 0.431517,
		-0.809152, 0.515211, 0.282545,
		23.025583, 22.571327, 8.968782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.759109, 22.400286, 9.443604>,  <23.591990, 22.210680, 8.771001>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.759109, 22.400286, 9.443604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.363235, 22.434566, 9.397685>,  <23.125711, 22.455135, 9.370133>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.363235, 22.434566, 9.397685>,  <23.759109, 22.400286, 9.443604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.363235, 22.434566, 9.397685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140633, -0.428480, 0.892540,
		0.027303, 0.899478, 0.436113,
		-0.989685, 0.085701, -0.114798,
		23.066330, 22.460278, 9.363246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.499039, 22.713390, 10.099910>,  <23.759109, 22.400286, 9.443604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.499039, 22.713390, 10.099910> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.184238, 22.533720, 9.930737>,  <22.995358, 22.425919, 9.829234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.184238, 22.533720, 9.930737>,  <23.499039, 22.713390, 10.099910>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.184238, 22.533720, 9.930737> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274699, -0.358695, 0.892120,
		-0.552421, 0.818279, 0.158905,
		-0.787001, -0.449175, -0.422931,
		22.948137, 22.398968, 9.803858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.913618, 22.832258, 10.589443>,  <23.499039, 22.713390, 10.099910>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.913618, 22.832258, 10.589443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802801, 22.523224, 10.360930>,  <22.736311, 22.337803, 10.223823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.802801, 22.523224, 10.360930>,  <22.913618, 22.832258, 10.589443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.802801, 22.523224, 10.360930> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459387, -0.415700, 0.784957,
		-0.843927, 0.479904, -0.239749,
		-0.277040, -0.772584, -0.571282,
		22.719688, 22.291449, 10.189546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.153610, 22.742046, 10.727714>,  <22.913618, 22.832258, 10.589443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.153610, 22.742046, 10.727714> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.299299, 22.405668, 10.567636>,  <22.386713, 22.203842, 10.471590>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.299299, 22.405668, 10.567636>,  <22.153610, 22.742046, 10.727714>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.299299, 22.405668, 10.567636> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360179, -0.523464, 0.772176,
		-0.858845, -0.137101, -0.493547,
		0.364220, -0.840945, -0.400194,
		22.408566, 22.153385, 10.447578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.611322, 22.173128, 10.815705>,  <22.153610, 22.742046, 10.727714>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.611322, 22.173128, 10.815705> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.961449, 21.994482, 10.741563>,  <22.171524, 21.887295, 10.697078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.961449, 21.994482, 10.741563>,  <21.611322, 22.173128, 10.815705>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.961449, 21.994482, 10.741563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143793, -0.606390, 0.782058,
		-0.461677, -0.657894, -0.595003,
		0.875316, -0.446616, -0.185356,
		22.224043, 21.860497, 10.685956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.520296, 21.533951, 10.911592>,  <21.611322, 22.173128, 10.815705>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.520296, 21.533951, 10.911592> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.919352, 21.561268, 10.914458>,  <22.158785, 21.577658, 10.916179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.919352, 21.561268, 10.914458>,  <21.520296, 21.533951, 10.911592>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.919352, 21.561268, 10.914458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041866, -0.687670, 0.724815,
		0.054428, -0.722805, -0.688906,
		0.997640, 0.068292, 0.007168,
		22.218643, 21.581755, 10.916609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.735466, 20.800243, 10.822786>,  <21.520296, 21.533951, 10.911592>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.735466, 20.800243, 10.822786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.044771, 21.018332, 10.952278>,  <22.230354, 21.149183, 11.029973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.044771, 21.018332, 10.952278>,  <21.735466, 20.800243, 10.822786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.044771, 21.018332, 10.952278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.131939, -0.637721, 0.758883,
		0.620207, -0.544104, -0.565062,
		0.773263, 0.545219, 0.323730,
		22.276751, 21.181896, 11.049397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.229874, 20.267805, 11.093315>,  <21.735466, 20.800243, 10.822786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.229874, 20.267805, 11.093315> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.315697, 20.620317, 11.261747>,  <22.367189, 20.831825, 11.362806>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.315697, 20.620317, 11.261747>,  <22.229874, 20.267805, 11.093315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.315697, 20.620317, 11.261747> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234985, -0.465033, 0.853537,
		0.948023, -0.084184, -0.306863,
		0.214555, 0.881281, 0.421080,
		22.380064, 20.884703, 11.388071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.937038, 20.211222, 11.310141>,  <22.229874, 20.267805, 11.093315>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.937038, 20.211222, 11.310141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.759340, 20.493113, 11.531411>,  <22.652721, 20.662247, 11.664173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.759340, 20.493113, 11.531411>,  <22.937038, 20.211222, 11.310141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.759340, 20.493113, 11.531411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222802, -0.511148, 0.830113,
		0.867759, 0.492023, 0.070060,
		-0.444246, 0.704728, 0.553177,
		22.626066, 20.704531, 11.697364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.364531, 20.243210, 11.927583>,  <22.937038, 20.211222, 11.310141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.364531, 20.243210, 11.927583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.035242, 20.440516, 12.040009>,  <22.837669, 20.558899, 12.107466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.035242, 20.440516, 12.040009>,  <23.364531, 20.243210, 11.927583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035242, 20.440516, 12.040009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077191, -0.393232, 0.916193,
		0.562449, 0.775926, 0.285641,
		-0.823221, 0.493263, 0.281067,
		22.788277, 20.588495, 12.124330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.618429, 20.653641, 12.498537>,  <23.364531, 20.243210, 11.927583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.618429, 20.653641, 12.498537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.225342, 20.586632, 12.530046>,  <22.989491, 20.546427, 12.548952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.225342, 20.586632, 12.530046>,  <23.618429, 20.653641, 12.498537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.225342, 20.586632, 12.530046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133688, -0.347882, 0.927958,
		-0.128049, 0.922450, 0.364265,
		-0.982716, -0.167522, 0.078774,
		22.930527, 20.536375, 12.553679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.430567, 20.816313, 13.172584>,  <23.618429, 20.653641, 12.498537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.430567, 20.816313, 13.172584> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.131456, 20.575943, 13.059646>,  <22.951990, 20.431721, 12.991883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.131456, 20.575943, 13.059646>,  <23.430567, 20.816313, 13.172584>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.131456, 20.575943, 13.059646> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054115, -0.478996, 0.876148,
		-0.661742, 0.639883, 0.390701,
		-0.747776, -0.600926, -0.282344,
		22.907124, 20.395664, 12.974942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.204317, 20.707657, 13.831561>,  <23.430567, 20.816313, 13.172584>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.204317, 20.707657, 13.831561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002666, 20.445103, 13.607056>,  <22.881676, 20.287571, 13.472352>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002666, 20.445103, 13.607056>,  <23.204317, 20.707657, 13.831561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.002666, 20.445103, 13.607056> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107510, -0.597136, 0.794903,
		-0.856912, 0.461072, 0.230464,
		-0.504126, -0.656385, -0.561263,
		22.851429, 20.248188, 13.438677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.702614, 20.514902, 14.207587>,  <23.204317, 20.707657, 13.831561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.702614, 20.514902, 14.207587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.739508, 20.212879, 13.947932>,  <22.761644, 20.031666, 13.792139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.739508, 20.212879, 13.947932>,  <22.702614, 20.514902, 14.207587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.739508, 20.212879, 13.947932> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165336, -0.654480, 0.737780,
		-0.981915, 0.039279, -0.185203,
		0.092232, -0.755058, -0.649138,
		22.767178, 19.986362, 13.753191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.272232, 20.033836, 14.490648>,  <22.702614, 20.514902, 14.207587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.272232, 20.033836, 14.490648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.521547, 19.814053, 14.268079>,  <22.671137, 19.682182, 14.134538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.521547, 19.814053, 14.268079>,  <22.272232, 20.033836, 14.490648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.521547, 19.814053, 14.268079> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124196, -0.772068, 0.623287,
		-0.772068, -0.319381, -0.549460,
		-0.623287, 0.549460, 0.556423,
		22.708534, 19.649214, 14.101151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.029964, 19.430609, 14.540346>,  <22.272232, 20.033836, 14.490648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.029964, 19.430609, 14.540346> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.390602, 19.343239, 14.390992>,  <22.606985, 19.290817, 14.301379>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.390602, 19.343239, 14.390992>,  <22.029964, 19.430609, 14.540346>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.390602, 19.343239, 14.390992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030228, -0.892858, 0.449322,
		-0.431524, -0.393820, -0.811599,
		0.901595, -0.218427, -0.373385,
		22.661081, 19.277710, 14.278976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.984428, 18.680811, 14.498835>,  <22.029964, 19.430609, 14.540346>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.984428, 18.680811, 14.498835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373255, 18.765059, 14.457409>,  <22.606550, 18.815607, 14.432553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.373255, 18.765059, 14.457409>,  <21.984428, 18.680811, 14.498835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.373255, 18.765059, 14.457409> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234387, -0.893982, 0.381914,
		-0.012146, -0.395520, -0.918377,
		0.972067, 0.210617, -0.103563,
		22.664875, 18.828243, 14.426340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.314585, 18.098667, 14.003971>,  <21.984428, 18.680811, 14.498835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.314585, 18.098667, 14.003971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.578156, 18.243483, 14.267712>,  <22.736298, 18.330372, 14.425956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.578156, 18.243483, 14.267712>,  <22.314585, 18.098667, 14.003971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.578156, 18.243483, 14.267712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146218, -0.921484, 0.359844,
		0.737858, -0.140702, -0.660128,
		0.658928, 0.362037, 0.659351,
		22.775833, 18.352093, 14.465517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.858328, 17.626249, 14.004205>,  <22.314585, 18.098667, 14.003971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.858328, 17.626249, 14.004205> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.920609, 17.832577, 14.341177>,  <22.957977, 17.956373, 14.543361>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.920609, 17.832577, 14.341177>,  <22.858328, 17.626249, 14.004205>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.920609, 17.832577, 14.341177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165308, -0.854411, 0.492599,
		0.973874, 0.062562, -0.218303,
		0.155703, 0.515817, 0.842431,
		22.967319, 17.987322, 14.593906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.476904, 17.424767, 14.186808>,  <22.858328, 17.626249, 14.004205>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.476904, 17.424767, 14.186808> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.288651, 17.549454, 14.516979>,  <23.175699, 17.624266, 14.715082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.288651, 17.549454, 14.516979>,  <23.476904, 17.424767, 14.186808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.288651, 17.549454, 14.516979> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008032, -0.936988, 0.349270,
		0.882293, 0.157748, 0.443481,
		-0.470633, 0.311720, 0.825430,
		23.147461, 17.642969, 14.764608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.997898, 17.300863, 14.722154>,  <23.476904, 17.424767, 14.186808>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.997898, 17.300863, 14.722154> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604250, 17.299236, 14.793141>,  <23.368061, 17.298260, 14.835733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.604250, 17.299236, 14.793141>,  <23.997898, 17.300863, 14.722154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.604250, 17.299236, 14.793141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049579, -0.966253, 0.252780,
		0.170451, 0.257564, 0.951108,
		-0.984118, -0.004068, 0.177469,
		23.309015, 17.298016, 14.846382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.812063, 16.895769, 15.316835>,  <23.997898, 17.300863, 14.722154>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.812063, 16.895769, 15.316835> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503613, 16.907110, 15.062414>,  <23.318542, 16.913916, 14.909761>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.503613, 16.907110, 15.062414>,  <23.812063, 16.895769, 15.316835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.503613, 16.907110, 15.062414> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220127, -0.949272, 0.224557,
		-0.597420, 0.313174, 0.738249,
		-0.771125, 0.028353, -0.636052,
		23.272276, 16.915617, 14.871598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.269115, 16.639286, 14.715024>,  <23.812063, 16.895769, 15.316835>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.269115, 16.639286, 14.715024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.475662, 16.411598, 14.459101>,  <24.599590, 16.274986, 14.305547>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.475662, 16.411598, 14.459101>,  <24.269115, 16.639286, 14.715024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.475662, 16.411598, 14.459101> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465187, 0.813721, -0.348510,
		0.719004, -0.117672, 0.684972,
		0.516366, -0.569220, -0.639808,
		24.630571, 16.240831, 14.267159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.012102, 16.700672, 14.839394>,  <24.269115, 16.639286, 14.715024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.012102, 16.700672, 14.839394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.991955, 16.580757, 14.458323>,  <24.979866, 16.508808, 14.229681>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.991955, 16.580757, 14.458323>,  <25.012102, 16.700672, 14.839394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.991955, 16.580757, 14.458323> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458808, 0.840330, -0.288689,
		0.887107, -0.451636, 0.095220,
		-0.050366, -0.299786, -0.952676,
		24.976845, 16.490822, 14.172521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.551451, 17.049063, 14.643035>,  <25.012102, 16.700672, 14.839394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.551451, 17.049063, 14.643035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.386761, 16.944515, 14.293826>,  <25.287947, 16.881786, 14.084301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.386761, 16.944515, 14.293826>,  <25.551451, 17.049063, 14.643035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.386761, 16.944515, 14.293826> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439165, 0.782506, -0.441382,
		0.798509, -0.565129, -0.207393,
		-0.411724, -0.261368, -0.873023,
		25.263243, 16.866106, 14.031919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.111792, 17.170422, 14.127951>,  <25.551451, 17.049063, 14.643035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.111792, 17.170422, 14.127951> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.792549, 17.170513, 13.886945>,  <25.601004, 17.170568, 13.742341>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.792549, 17.170513, 13.886945>,  <26.111792, 17.170422, 14.127951>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.792549, 17.170513, 13.886945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366961, 0.793316, -0.485787,
		0.477874, -0.608809, -0.633235,
		-0.798108, 0.000228, -0.602515,
		25.553116, 17.170582, 13.706190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.320892, 17.228537, 13.370300>,  <26.111792, 17.170422, 14.127951>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.320892, 17.228537, 13.370300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.942852, 17.355658, 13.400731>,  <25.716028, 17.431931, 13.418989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.942852, 17.355658, 13.400731>,  <26.320892, 17.228537, 13.370300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.942852, 17.355658, 13.400731> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194655, 0.734497, -0.650095,
		-0.262480, -0.599596, -0.756035,
		-0.945100, 0.317803, 0.076077,
		25.659323, 17.450998, 13.423554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.234657, 17.412951, 12.699226>,  <26.320892, 17.228537, 13.370300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.234657, 17.412951, 12.699226> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.956694, 17.611807, 12.907055>,  <25.789915, 17.731121, 13.031752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.956694, 17.611807, 12.907055>,  <26.234657, 17.412951, 12.699226>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.956694, 17.611807, 12.907055> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203799, 0.829060, -0.520697,
		-0.689615, -0.255948, -0.677437,
		-0.694908, 0.497141, 0.519571,
		25.748220, 17.760950, 13.062926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.908720, 17.874832, 12.264000>,  <26.234657, 17.412951, 12.699226>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.908720, 17.874832, 12.264000> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.808588, 18.057119, 12.605680>,  <25.748508, 18.166491, 12.810689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.808588, 18.057119, 12.605680>,  <25.908720, 17.874832, 12.264000>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.808588, 18.057119, 12.605680> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008532, 0.883296, -0.468739,
		-0.968123, -0.110051, -0.225001,
		-0.250328, 0.455717, 0.854200,
		25.733490, 18.193834, 12.861940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.395752, 18.344158, 12.091318>,  <25.908720, 17.874832, 12.264000>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.395752, 18.344158, 12.091318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.464317, 18.481861, 12.460556>,  <25.505457, 18.564484, 12.682098>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.464317, 18.481861, 12.460556>,  <25.395752, 18.344158, 12.091318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.464317, 18.481861, 12.460556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084540, 0.938646, -0.334360,
		-0.981565, -0.020725, 0.190001,
		0.171414, 0.344259, 0.923094,
		25.515741, 18.585138, 12.737484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.896255, 18.802328, 12.189420>,  <25.395752, 18.344158, 12.091318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.896255, 18.802328, 12.189420> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.187792, 18.915308, 12.438904>,  <25.362713, 18.983097, 12.588594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.187792, 18.915308, 12.438904>,  <24.896255, 18.802328, 12.189420>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.187792, 18.915308, 12.438904> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125439, 0.950611, -0.283907,
		-0.673096, 0.128685, 0.728273,
		0.728839, 0.282451, 0.623711,
		25.406445, 19.000044, 12.626017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.632935, 19.454100, 12.490797>,  <24.896255, 18.802328, 12.189420>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.632935, 19.454100, 12.490797> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.032032, 19.458075, 12.517350>,  <25.271490, 19.460459, 12.533282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.032032, 19.458075, 12.517350>,  <24.632935, 19.454100, 12.490797>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.032032, 19.458075, 12.517350> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012268, 0.945318, -0.325919,
		-0.065991, 0.325999, 0.943064,
		0.997745, 0.009938, 0.066382,
		25.331356, 19.461056, 12.537265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.799530, 20.118729, 12.726251>,  <24.632935, 19.454100, 12.490797>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.799530, 20.118729, 12.726251> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.131716, 19.977808, 12.553640>,  <25.331028, 19.893255, 12.450074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.131716, 19.977808, 12.553640>,  <24.799530, 20.118729, 12.726251>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.131716, 19.977808, 12.553640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239822, 0.925272, -0.293866,
		0.502807, 0.140556, 0.852894,
		0.830464, -0.352301, -0.431525,
		25.380856, 19.872118, 12.424183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.150263, 20.700623, 12.780152>,  <24.799530, 20.118729, 12.726251>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.150263, 20.700623, 12.780152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.336218, 20.475685, 12.506614>,  <25.447792, 20.340723, 12.342490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.336218, 20.475685, 12.506614>,  <25.150263, 20.700623, 12.780152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.336218, 20.475685, 12.506614> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421831, 0.819768, -0.387349,
		0.778419, -0.108394, 0.618315,
		0.464889, -0.562345, -0.683847,
		25.475685, 20.306982, 12.301459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.793398, 21.056883, 12.682380>,  <25.150263, 20.700623, 12.780152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.793398, 21.056883, 12.682380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.763651, 20.819977, 12.361458>,  <25.745802, 20.677834, 12.168904>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.763651, 20.819977, 12.361458>,  <25.793398, 21.056883, 12.682380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.763651, 20.819977, 12.361458> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167261, 0.785727, -0.595530,
		0.983104, -0.178483, 0.040629,
		-0.074368, -0.592264, -0.802305,
		25.741341, 20.642298, 12.120767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.285192, 21.249454, 12.268945>,  <25.793398, 21.056883, 12.682380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.285192, 21.249454, 12.268945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.045158, 21.061222, 12.010194>,  <25.901138, 20.948282, 11.854943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.045158, 21.061222, 12.010194>,  <26.285192, 21.249454, 12.268945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.045158, 21.061222, 12.010194> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189714, 0.701871, -0.686576,
		0.777114, -0.534725, -0.331906,
		-0.600085, -0.470580, -0.646879,
		25.865133, 20.920048, 11.816131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.701857, 21.078014, 11.715394>,  <26.285192, 21.249454, 12.268945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.701857, 21.078014, 11.715394> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.322641, 21.104214, 11.590859>,  <26.095112, 21.119934, 11.516139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.322641, 21.104214, 11.590859>,  <26.701857, 21.078014, 11.715394>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322641, 21.104214, 11.590859> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298590, 0.521018, -0.799615,
		0.109838, -0.851029, -0.513503,
		-0.948040, 0.065499, -0.311336,
		26.038229, 21.123863, 11.497458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.692650, 21.081717, 10.978786>,  <26.701857, 21.078014, 11.715394>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.692650, 21.081717, 10.978786> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.324469, 21.221437, 11.048929>,  <26.103559, 21.305269, 11.091016>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.324469, 21.221437, 11.048929>,  <26.692650, 21.081717, 10.978786>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.324469, 21.221437, 11.048929> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037950, 0.526416, -0.849380,
		-0.389002, -0.775161, -0.497798,
		-0.920455, 0.349302, 0.175359,
		26.048332, 21.326227, 11.101537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.286242, 21.053190, 10.360300>,  <26.692650, 21.081717, 10.978786>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.286242, 21.053190, 10.360300> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.099472, 21.324333, 10.587454>,  <25.987411, 21.487019, 10.723746>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<26.099472, 21.324333, 10.587454>,  <26.286242, 21.053190, 10.360300>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.099472, 21.324333, 10.587454> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136329, 0.579329, -0.803612,
		-0.873727, -0.452643, -0.178090,
		-0.466922, 0.677858, 0.567883,
		25.959394, 21.527691, 10.757819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.730635, 21.298189, 9.906317>,  <26.286242, 21.053190, 10.360300>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.730635, 21.298189, 9.906317> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.747993, 21.568560, 10.200593>,  <25.758410, 21.730782, 10.377158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.747993, 21.568560, 10.200593>,  <25.730635, 21.298189, 9.906317>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.747993, 21.568560, 10.200593> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246068, 0.720930, -0.647851,
		-0.968281, -0.152915, 0.197610,
		0.043397, 0.675927, 0.735690,
		25.761013, 21.771338, 10.421300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.096174, 21.642437, 9.931538>,  <25.730635, 21.298189, 9.906317>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.096174, 21.642437, 9.931538> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.333420, 21.903282, 10.120416>,  <25.475767, 22.059790, 10.233743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<25.333420, 21.903282, 10.120416>,  <25.096174, 21.642437, 9.931538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.333420, 21.903282, 10.120416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246902, 0.705552, -0.664256,
		-0.766327, 0.277393, 0.579479,
		0.593113, 0.652112, 0.472195,
		25.511354, 22.098915, 10.262074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.957056, 15.706733, 20.846912> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616325, 15.669983, 20.640633>,  <18.411886, 15.647933, 20.516865>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.616325, 15.669983, 20.640633>,  <18.957056, 15.706733, 20.846912>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616325, 15.669983, 20.640633> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355226, 0.622219, -0.697609,
		0.384970, -0.777434, -0.497388,
		-0.851829, -0.091874, -0.515701,
		18.360777, 15.642421, 20.485922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.064421, 15.425510, 20.062181>,  <18.957056, 15.706733, 20.846912>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.064421, 15.425510, 20.062181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705767, 15.599068, 20.026886>,  <18.490574, 15.703202, 20.005709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.705767, 15.599068, 20.026886>,  <19.064421, 15.425510, 20.062181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.705767, 15.599068, 20.026886> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270392, 0.378762, -0.885115,
		-0.350625, -0.817481, -0.456932,
		-0.896633, 0.433894, -0.088237,
		18.436777, 15.729236, 20.000416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.876980, 15.287225, 19.305164>,  <19.064421, 15.425510, 20.062181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.876980, 15.287225, 19.305164> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653389, 15.583294, 19.454664>,  <18.519234, 15.760936, 19.544365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653389, 15.583294, 19.454664>,  <18.876980, 15.287225, 19.305164>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.653389, 15.583294, 19.454664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143282, 0.530186, -0.835687,
		-0.816710, -0.413578, -0.402415,
		-0.558977, 0.740173, 0.373750,
		18.485695, 15.805346, 19.566790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.286097, 15.390774, 18.862043>,  <18.876980, 15.287225, 19.305164>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.286097, 15.390774, 18.862043> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287312, 15.734851, 19.066027>,  <18.288040, 15.941298, 19.188417>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.287312, 15.734851, 19.066027>,  <18.286097, 15.390774, 18.862043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.287312, 15.734851, 19.066027> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009496, 0.509963, -0.860144,
		-0.999950, -0.002229, 0.009717,
		0.003038, 0.860194, 0.509959,
		18.288223, 15.992909, 19.219015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.816015, 15.823633, 18.561852>,  <18.286097, 15.390774, 18.862043>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.816015, 15.823633, 18.561852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093552, 16.047234, 18.743446>,  <18.260073, 16.181395, 18.852404>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.093552, 16.047234, 18.743446>,  <17.816015, 15.823633, 18.561852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.093552, 16.047234, 18.743446> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157826, 0.497059, -0.853243,
		-0.702622, 0.663665, 0.256654,
		0.693840, 0.559000, 0.453988,
		18.301704, 16.214933, 18.879642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.588816, 16.511259, 18.290350>,  <17.816015, 15.823633, 18.561852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.588816, 16.511259, 18.290350> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941059, 16.557934, 18.474052>,  <18.152405, 16.585938, 18.584274>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.941059, 16.557934, 18.474052>,  <17.588816, 16.511259, 18.290350>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.941059, 16.557934, 18.474052> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250134, 0.708696, -0.659683,
		-0.402448, 0.695798, 0.594896,
		0.880607, 0.116684, 0.459257,
		18.205240, 16.592939, 18.611830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.628073, 17.156557, 18.489632>,  <17.588816, 16.511259, 18.290350>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.628073, 17.156557, 18.489632> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003405, 17.021286, 18.460857>,  <18.228603, 16.940123, 18.443592>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003405, 17.021286, 18.460857>,  <17.628073, 17.156557, 18.489632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.003405, 17.021286, 18.460857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191700, 0.682028, -0.705754,
		0.287733, 0.648439, 0.704795,
		0.938329, -0.338178, -0.071936,
		18.284903, 16.919832, 18.439276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.066692, 17.749685, 18.553333>,  <17.628073, 17.156557, 18.489632>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.066692, 17.749685, 18.553333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289621, 17.455168, 18.399834>,  <18.423378, 17.278458, 18.307734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.289621, 17.455168, 18.399834>,  <18.066692, 17.749685, 18.553333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.289621, 17.455168, 18.399834> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357356, 0.629895, -0.689586,
		0.749460, 0.247186, 0.614174,
		0.557321, -0.736295, -0.383748,
		18.456818, 17.234280, 18.284710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.791632, 17.990309, 18.600664>,  <18.066692, 17.749685, 18.553333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.791632, 17.990309, 18.600664> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749550, 17.718029, 18.310677>,  <18.724300, 17.554661, 18.136684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.749550, 17.718029, 18.310677>,  <18.791632, 17.990309, 18.600664>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.749550, 17.718029, 18.310677> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480911, 0.603274, -0.636227,
		0.870435, -0.415580, 0.263888,
		-0.105206, -0.680701, -0.724968,
		18.717987, 17.513819, 18.093185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.392179, 18.102928, 18.237637>,  <18.791632, 17.990309, 18.600664>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.392179, 18.102928, 18.237637> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160225, 17.902590, 17.980612>,  <19.021051, 17.782387, 17.826397>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.160225, 17.902590, 17.980612>,  <19.392179, 18.102928, 18.237637>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.160225, 17.902590, 17.980612> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391929, 0.519951, -0.758975,
		0.714229, -0.691958, -0.105217,
		-0.579886, -0.500844, -0.642562,
		18.986259, 17.752337, 17.787844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.831760, 18.165642, 17.792255>,  <19.392179, 18.102928, 18.237637>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.831760, 18.165642, 17.792255> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507023, 18.041241, 17.594593>,  <19.312181, 17.966600, 17.475996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.507023, 18.041241, 17.594593>,  <19.831760, 18.165642, 17.792255>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.507023, 18.041241, 17.594593> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351971, 0.414596, -0.839182,
		0.465868, -0.855210, -0.227120,
		-0.811840, -0.311008, -0.494156,
		19.263470, 17.947939, 17.446346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090244, 17.929100, 17.192945>,  <19.831760, 18.165642, 17.792255>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090244, 17.929100, 17.192945> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.702600, 18.012989, 17.141031>,  <19.470015, 18.063322, 17.109882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.702600, 18.012989, 17.141031>,  <20.090244, 17.929100, 17.192945>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.702600, 18.012989, 17.141031> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211161, 0.433662, -0.875984,
		-0.127430, -0.876330, -0.464551,
		-0.969109, 0.209722, -0.129785,
		19.411867, 18.075905, 17.102097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.941845, 17.643007, 16.518953>,  <20.090244, 17.929100, 17.192945>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.941845, 17.643007, 16.518953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672771, 17.925396, 16.607594>,  <19.511328, 18.094830, 16.660778>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.672771, 17.925396, 16.607594>,  <19.941845, 17.643007, 16.518953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.672771, 17.925396, 16.607594> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241196, 0.492338, -0.836318,
		-0.699517, -0.509127, -0.501464,
		-0.672682, 0.705970, 0.221599,
		19.470966, 18.137186, 16.674074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.622856, 17.894354, 15.920453>,  <19.941845, 17.643007, 16.518953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.622856, 17.894354, 15.920453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.640360, 18.188589, 16.190859>,  <19.650862, 18.365129, 16.353102>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.640360, 18.188589, 16.190859>,  <19.622856, 17.894354, 15.920453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.640360, 18.188589, 16.190859> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162253, 0.662446, -0.731327,
		-0.985778, 0.141689, -0.090362,
		0.043761, 0.735588, 0.676015,
		19.653488, 18.409266, 16.393663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.924953, 17.260050, 15.636661>,  <19.622856, 17.894354, 15.920453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.924953, 17.260050, 15.636661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180464, 17.068924, 15.395443>,  <20.333769, 16.954248, 15.250712>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.180464, 17.068924, 15.395443>,  <19.924953, 17.260050, 15.636661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.180464, 17.068924, 15.395443> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172416, -0.852753, 0.493036,
		-0.749827, -0.210964, -0.627100,
		0.638775, -0.477814, -0.603044,
		20.372095, 16.925579, 15.214530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.561687, 16.644054, 15.424989>,  <19.924953, 17.260050, 15.636661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.561687, 16.644054, 15.424989> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952410, 16.565029, 15.391946>,  <20.186842, 16.517614, 15.372120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.952410, 16.565029, 15.391946>,  <19.561687, 16.644054, 15.424989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.952410, 16.565029, 15.391946> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107649, -0.786522, 0.608108,
		-0.185110, -0.585110, -0.789545,
		0.976804, -0.197561, -0.082607,
		20.245451, 16.505760, 15.367164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.654840, 15.933270, 15.262100>,  <19.561687, 16.644054, 15.424989>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.654840, 15.933270, 15.262100> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006424, 16.046618, 15.415534>,  <20.217373, 16.114626, 15.507594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.006424, 16.046618, 15.415534>,  <19.654840, 15.933270, 15.262100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.006424, 16.046618, 15.415534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007051, -0.796517, 0.604575,
		0.476850, -0.534100, -0.698106,
		0.878956, 0.283369, 0.383585,
		20.270111, 16.131628, 15.530609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.981968, 15.321125, 15.345437>,  <19.654840, 15.933270, 15.262100>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.981968, 15.321125, 15.345437> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187769, 15.559115, 15.592433>,  <20.311249, 15.701909, 15.740630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.187769, 15.559115, 15.592433>,  <19.981968, 15.321125, 15.345437>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.187769, 15.559115, 15.592433> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083483, -0.751448, 0.654489,
		0.853416, -0.285185, -0.436291,
		0.514501, 0.594975, 0.617490,
		20.342119, 15.737608, 15.777680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.350739, 14.899485, 15.727826>,  <19.981968, 15.321125, 15.345437>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.350739, 14.899485, 15.727826> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400143, 15.233047, 15.942988>,  <20.429785, 15.433186, 16.072086>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.400143, 15.233047, 15.942988>,  <20.350739, 14.899485, 15.727826>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.400143, 15.233047, 15.942988> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088318, -0.549144, 0.831048,
		0.988405, -0.055137, -0.141475,
		0.123511, 0.833907, 0.537907,
		20.437197, 15.483220, 16.104361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.778954, 14.632184, 16.218239>,  <20.350739, 14.899485, 15.727826>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.778954, 14.632184, 16.218239> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657152, 14.977969, 16.378229>,  <20.584072, 15.185440, 16.474224>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.657152, 14.977969, 16.378229>,  <20.778954, 14.632184, 16.218239>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.657152, 14.977969, 16.378229> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122657, -0.380835, 0.916472,
		0.944581, 0.328128, 0.009933,
		-0.304503, 0.864463, 0.399977,
		20.565802, 15.237309, 16.498222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.175072, 14.785840, 16.857630>,  <20.778954, 14.632184, 16.218239>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.175072, 14.785840, 16.857630> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834888, 14.995711, 16.872784>,  <20.630779, 15.121634, 16.881876>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.834888, 14.995711, 16.872784>,  <21.175072, 14.785840, 16.857630>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.834888, 14.995711, 16.872784> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230857, -0.436967, 0.869347,
		0.472682, 0.730597, 0.492747,
		-0.850457, 0.524678, 0.037883,
		20.579752, 15.153115, 16.884150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.112339, 15.135497, 17.500969>,  <21.175072, 14.785840, 16.857630>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.112339, 15.135497, 17.500969> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732924, 15.080278, 17.386976>,  <20.505274, 15.047147, 17.318581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.732924, 15.080278, 17.386976>,  <21.112339, 15.135497, 17.500969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.732924, 15.080278, 17.386976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180750, -0.502908, 0.845229,
		-0.260001, 0.853244, 0.452077,
		-0.948541, -0.138047, -0.284980,
		20.448360, 15.038864, 17.301481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.706707, 15.137299, 18.151358>,  <21.112339, 15.135497, 17.500969>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.706707, 15.137299, 18.151358> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447033, 14.970483, 17.896914>,  <20.291229, 14.870393, 17.744247>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.447033, 14.970483, 17.896914>,  <20.706707, 15.137299, 18.151358>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<20.447033, 14.970483, 17.896914> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321267, -0.607699, 0.726285,
		-0.689453, 0.675855, 0.260528,
		-0.649186, -0.417040, -0.636109,
		20.252277, 14.845371, 17.706081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.005730, 15.137786, 18.453825>,  <20.706707, 15.137299, 18.151358>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.005730, 15.137786, 18.453825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985434, 14.851193, 18.175522>,  <19.973255, 14.679238, 18.008539>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.985434, 14.851193, 18.175522>,  <20.005730, 15.137786, 18.453825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.985434, 14.851193, 18.175522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619611, -0.523788, 0.584576,
		-0.783268, 0.460761, -0.417362,
		-0.050740, -0.716481, -0.695759,
		19.970211, 14.636249, 17.966795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.399059, 14.927509, 18.482996>,  <20.005730, 15.137786, 18.453825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.399059, 14.927509, 18.482996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564550, 14.611877, 18.301367>,  <19.663845, 14.422499, 18.192389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.564550, 14.611877, 18.301367>,  <19.399059, 14.927509, 18.482996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.564550, 14.611877, 18.301367> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611154, -0.610401, 0.503886,
		-0.674773, 0.069036, -0.734790,
		0.413730, -0.789079, -0.454074,
		19.688669, 14.375154, 18.165144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.864136, 14.425407, 18.390821>,  <19.399059, 14.927509, 18.482996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.864136, 14.425407, 18.390821> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194443, 14.200651, 18.371275>,  <19.392628, 14.065798, 18.359547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.194443, 14.200651, 18.371275>,  <18.864136, 14.425407, 18.390821>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.194443, 14.200651, 18.371275> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428853, -0.681794, 0.592657,
		-0.366324, -0.468440, -0.803971,
		0.825768, -0.561890, -0.048866,
		19.442173, 14.032084, 18.356615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660103, 13.808885, 18.059759>,  <18.864136, 14.425407, 18.390821>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660103, 13.808885, 18.059759> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972836, 13.760526, 18.304420>,  <19.160475, 13.731510, 18.451218>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.972836, 13.760526, 18.304420>,  <18.660103, 13.808885, 18.059759>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.972836, 13.760526, 18.304420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551087, -0.592837, 0.587238,
		0.291616, -0.796196, -0.530124,
		0.781834, -0.120897, 0.611654,
		19.207386, 13.724257, 18.487917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.593884, 13.149314, 18.191780>,  <18.660103, 13.808885, 18.059759>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.593884, 13.149314, 18.191780> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837440, 13.301044, 18.470451>,  <18.983576, 13.392081, 18.637653>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.837440, 13.301044, 18.470451>,  <18.593884, 13.149314, 18.191780>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.837440, 13.301044, 18.470451> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470870, -0.533955, 0.702263,
		0.638380, -0.755649, -0.146510,
		0.608894, 0.379324, 0.696679,
		19.020109, 13.414841, 18.679455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.477446, 12.463230, 17.691690>,  <18.593884, 13.149314, 18.191780>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.477446, 12.463230, 17.691690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094147, 12.353326, 17.660023>,  <17.864168, 12.287383, 17.641022>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.094147, 12.353326, 17.660023>,  <18.477446, 12.463230, 17.691690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.094147, 12.353326, 17.660023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111193, 0.613151, -0.782101,
		0.263433, -0.740644, -0.618102,
		-0.958248, -0.274760, -0.079170,
		17.806673, 12.270898, 17.636272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.401615, 12.479342, 17.009953>,  <18.477446, 12.463230, 17.691690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.401615, 12.479342, 17.009953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026606, 12.500870, 17.147448>,  <17.801600, 12.513786, 17.229944>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.026606, 12.500870, 17.147448>,  <18.401615, 12.479342, 17.009953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.026606, 12.500870, 17.147448> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262511, 0.538968, -0.800376,
		-0.228338, -0.840605, -0.491167,
		-0.937523, 0.053820, 0.343735,
		17.745348, 12.517015, 17.250568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.877686, 12.151890, 16.535761>,  <18.401615, 12.479342, 17.009953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.877686, 12.151890, 16.535761> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667347, 12.405882, 16.762136>,  <17.541143, 12.558277, 16.897961>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.667347, 12.405882, 16.762136>,  <17.877686, 12.151890, 16.535761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.667347, 12.405882, 16.762136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279117, 0.499694, -0.820000,
		-0.803479, -0.589158, -0.085529,
		-0.525848, 0.634980, 0.565937,
		17.509592, 12.596375, 16.931917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.322142, 12.344383, 16.183828>,  <17.877686, 12.151890, 16.535761>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.322142, 12.344383, 16.183828> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343790, 12.648009, 16.443333>,  <17.356779, 12.830185, 16.599035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.343790, 12.648009, 16.443333>,  <17.322142, 12.344383, 16.183828>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.343790, 12.648009, 16.443333> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286371, 0.634220, -0.718162,
		-0.956589, -0.146917, 0.251700,
		0.054123, 0.759065, 0.648761,
		17.360027, 12.875729, 16.637960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.731010, 12.662704, 16.079119>,  <17.322142, 12.344383, 16.183828>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.731010, 12.662704, 16.079119> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938482, 12.954146, 16.258049>,  <17.062965, 13.129012, 16.365408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.938482, 12.954146, 16.258049>,  <16.731010, 12.662704, 16.079119>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.938482, 12.954146, 16.258049> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330418, 0.653385, -0.681111,
		-0.788539, 0.205475, 0.579644,
		0.518682, 0.728607, 0.447327,
		17.094088, 13.172729, 16.392246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.318167, 13.283543, 15.956726>,  <16.731010, 12.662704, 16.079119>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.318167, 13.283543, 15.956726> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684114, 13.428218, 16.028502>,  <16.903683, 13.515023, 16.071568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.684114, 13.428218, 16.028502>,  <16.318167, 13.283543, 15.956726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.684114, 13.428218, 16.028502> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205561, 0.799771, -0.564014,
		-0.347507, 0.479113, 0.806034,
		0.914868, 0.361687, 0.179439,
		16.958574, 13.536724, 16.082333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.231247, 14.050537, 15.989520>,  <16.318167, 13.283543, 15.956726>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.231247, 14.050537, 15.989520> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627979, 14.011890, 15.956211>,  <16.866018, 13.988702, 15.936226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.627979, 14.011890, 15.956211>,  <16.231247, 14.050537, 15.989520>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.627979, 14.011890, 15.956211> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045453, 0.877720, -0.477014,
		0.119178, 0.469333, 0.874942,
		0.991832, -0.096618, -0.083272,
		16.925529, 13.982905, 15.931230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.400303, 14.736207, 15.902646>,  <16.231247, 14.050537, 15.989520>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.400303, 14.736207, 15.902646> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716597, 14.542265, 15.753163>,  <16.906372, 14.425900, 15.663474>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.716597, 14.542265, 15.753163>,  <16.400303, 14.736207, 15.902646>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.716597, 14.542265, 15.753163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121844, 0.722913, -0.680111,
		0.599912, 0.492253, 0.630708,
		0.790733, -0.484855, -0.373706,
		16.953817, 14.396809, 15.641051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.008923, 15.128228, 16.048639>,  <16.400303, 14.736207, 15.902646>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.008923, 15.128228, 16.048639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113195, 14.925472, 15.719979>,  <17.175758, 14.803819, 15.522783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113195, 14.925472, 15.719979>,  <17.008923, 15.128228, 16.048639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113195, 14.925472, 15.719979> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135726, 0.861865, -0.488638,
		0.955836, 0.015860, 0.293471,
		0.260682, -0.506889, -0.821649,
		17.191401, 14.773405, 15.473484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.571394, 15.329926, 15.822706>,  <17.008923, 15.128228, 16.048639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.571394, 15.329926, 15.822706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400167, 15.168832, 15.499086>,  <17.297432, 15.072175, 15.304914>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.400167, 15.168832, 15.499086>,  <17.571394, 15.329926, 15.822706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.400167, 15.168832, 15.499086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103238, 0.867567, -0.486487,
		0.897831, -0.291773, -0.329799,
		-0.428066, -0.402736, -0.809051,
		17.271748, 15.048011, 15.256371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055477, 15.230077, 15.236406>,  <17.571394, 15.329926, 15.822706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055477, 15.230077, 15.236406> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677912, 15.261867, 15.108212>,  <17.451372, 15.280941, 15.031296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.677912, 15.261867, 15.108212>,  <18.055477, 15.230077, 15.236406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.677912, 15.261867, 15.108212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245771, 0.817289, -0.521186,
		0.220508, -0.570720, -0.790983,
		-0.943913, 0.079475, -0.320485,
		17.394737, 15.285709, 15.012067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.943947, 15.032375, 14.600396>,  <18.055477, 15.230077, 15.236406>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.943947, 15.032375, 14.600396> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691238, 15.330612, 14.685207>,  <17.539614, 15.509554, 14.736094>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.691238, 15.330612, 14.685207>,  <17.943947, 15.032375, 14.600396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.691238, 15.330612, 14.685207> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523755, 0.612241, -0.592319,
		-0.571440, -0.263161, -0.777304,
		-0.631773, 0.745592, 0.212027,
		17.501707, 15.554290, 14.748816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<15.356318, 10.280371, 22.253178> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.675547, 10.042779, 22.293715>,  <15.867084, 9.900224, 22.318037>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.675547, 10.042779, 22.293715>,  <15.356318, 10.280371, 22.253178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.675547, 10.042779, 22.293715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460996, 0.493570, -0.737476,
		0.388025, 0.635278, 0.667726,
		0.798072, -0.593979, 0.101343,
		15.914968, 9.864585, 22.324118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.009417, 10.661345, 22.342602>,  <15.356318, 10.280371, 22.253178>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.009417, 10.661345, 22.342602> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.123577, 10.298554, 22.218706>,  <16.192074, 10.080880, 22.144369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.123577, 10.298554, 22.218706>,  <16.009417, 10.661345, 22.342602>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123577, 10.298554, 22.218706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410626, 0.407734, -0.815561,
		0.865986, 0.105576, 0.488797,
		0.285403, -0.906977, -0.309740,
		16.209198, 10.026462, 22.125784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.721176, 10.748342, 22.183872>,  <16.009417, 10.661345, 22.342602>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.721176, 10.748342, 22.183872> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.616400, 10.412903, 21.992817>,  <16.553534, 10.211639, 21.878183>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.616400, 10.412903, 21.992817>,  <16.721176, 10.748342, 22.183872>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.616400, 10.412903, 21.992817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495834, 0.307664, -0.812090,
		0.827970, -0.449551, 0.335215,
		-0.261943, -0.838598, -0.477640,
		16.537817, 10.161324, 21.849525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.350559, 10.537339, 21.826902>,  <16.721176, 10.748342, 22.183872>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.350559, 10.537339, 21.826902> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.079634, 10.313059, 21.636385>,  <16.917078, 10.178491, 21.522074>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.079634, 10.313059, 21.636385>,  <17.350559, 10.537339, 21.826902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.079634, 10.313059, 21.636385> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349517, 0.324439, -0.878964,
		0.647365, -0.761810, -0.023773,
		-0.677316, -0.560701, -0.476295,
		16.876438, 10.144849, 21.493496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.697784, 10.112106, 21.306620>,  <17.350559, 10.537339, 21.826902>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.697784, 10.112106, 21.306620> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.315983, 10.124869, 21.188023>,  <17.086903, 10.132527, 21.116865>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.315983, 10.124869, 21.188023>,  <17.697784, 10.112106, 21.306620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.315983, 10.124869, 21.188023> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294486, 0.257350, -0.920353,
		0.046935, -0.965791, -0.255038,
		-0.954503, 0.031908, -0.296491,
		17.029633, 10.134441, 21.099075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.755960, 9.673707, 20.665028>,  <17.697784, 10.112106, 21.306620>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.755960, 9.673707, 20.665028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.414604, 9.881914, 20.653852>,  <17.209789, 10.006839, 20.647146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.414604, 9.881914, 20.653852>,  <17.755960, 9.673707, 20.665028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.414604, 9.881914, 20.653852> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188480, 0.258154, -0.947540,
		-0.486000, -0.813890, -0.318414,
		-0.853393, 0.520519, -0.027939,
		17.158587, 10.038070, 20.645472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.364086, 9.478585, 20.076302>,  <17.755960, 9.673707, 20.665028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.364086, 9.478585, 20.076302> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.304003, 9.864006, 20.164848>,  <17.267952, 10.095259, 20.217978>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.304003, 9.864006, 20.164848>,  <17.364086, 9.478585, 20.076302>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.304003, 9.864006, 20.164848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105962, 0.238309, -0.965392,
		-0.982960, -0.121553, -0.137896,
		-0.150208, 0.963553, 0.221368,
		17.258940, 10.153071, 20.231258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.184397, 9.700329, 19.436544>,  <17.364086, 9.478585, 20.076302>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.184397, 9.700329, 19.436544> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.189436, 10.056633, 19.618263>,  <17.192459, 10.270415, 19.727295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.189436, 10.056633, 19.618263>,  <17.184397, 9.700329, 19.436544>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189436, 10.056633, 19.618263> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105954, 0.450586, -0.886423,
		-0.994291, 0.059300, -0.088704,
		0.012596, 0.890761, 0.454297,
		17.193214, 10.323861, 19.754553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.821716, 10.172587, 18.963190>,  <17.184397, 9.700329, 19.436544>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.821716, 10.172587, 18.963190> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.004757, 10.431043, 19.207520>,  <17.114582, 10.586116, 19.354118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.004757, 10.431043, 19.207520>,  <16.821716, 10.172587, 18.963190>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.004757, 10.431043, 19.207520> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083658, 0.652636, -0.753039,
		-0.885213, 0.395693, 0.244593,
		0.457602, 0.646137, 0.610825,
		17.142038, 10.624884, 19.390766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.480873, 10.881407, 18.918758>,  <16.821716, 10.172587, 18.963190>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.480873, 10.881407, 18.918758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.861732, 10.933799, 19.029215>,  <17.090248, 10.965234, 19.095490>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.861732, 10.933799, 19.029215>,  <16.480873, 10.881407, 18.918758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.861732, 10.933799, 19.029215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107876, 0.701334, -0.704623,
		-0.285959, 0.700696, 0.653646,
		0.952150, 0.130981, 0.276141,
		17.147377, 10.973093, 19.112057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.589119, 11.681449, 18.919344>,  <16.480873, 10.881407, 18.918758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.589119, 11.681449, 18.919344> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.933245, 11.479310, 18.892553>,  <17.139719, 11.358027, 18.876478>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.933245, 11.479310, 18.892553>,  <16.589119, 11.681449, 18.919344>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.933245, 11.479310, 18.892553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324479, 0.644198, -0.692620,
		0.393160, 0.574136, 0.718187,
		0.860313, -0.505347, -0.066978,
		17.191338, 11.327705, 18.872459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.140507, 12.209970, 19.017262>,  <16.589119, 11.681449, 18.919344>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.140507, 12.209970, 19.017262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.281853, 11.899284, 18.808704>,  <17.366659, 11.712873, 18.683571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.281853, 11.899284, 18.808704>,  <17.140507, 12.209970, 19.017262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.281853, 11.899284, 18.808704> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440270, 0.629844, -0.639890,
		0.825407, -0.003439, 0.564528,
		0.353364, -0.776714, -0.521392,
		17.387861, 11.666270, 18.652287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.699390, 12.493711, 18.722281>,  <17.140507, 12.209970, 19.017262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.699390, 12.493711, 18.722281> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.611082, 12.168188, 18.507254>,  <17.558098, 11.972875, 18.378237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.611082, 12.168188, 18.507254>,  <17.699390, 12.493711, 18.722281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.611082, 12.168188, 18.507254> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361379, 0.443684, -0.820091,
		0.905906, -0.375317, 0.196140,
		-0.220770, -0.813807, -0.537568,
		17.544851, 11.924047, 18.345984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.283016, 12.306564, 18.382023>,  <17.699390, 12.493711, 18.722281>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.283016, 12.306564, 18.382023> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.972231, 12.159704, 18.177464>,  <17.785759, 12.071588, 18.054728>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.972231, 12.159704, 18.177464>,  <18.283016, 12.306564, 18.382023>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.972231, 12.159704, 18.177464> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302187, 0.495121, -0.814578,
		0.552277, -0.787435, -0.273743,
		-0.776964, -0.367152, -0.511397,
		17.739141, 12.049559, 18.024044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.824408, 12.408886, 18.762735>,  <18.283016, 12.306564, 18.382023>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.824408, 12.408886, 18.762735> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.934965, 12.756174, 18.927563>,  <19.001299, 12.964547, 19.026459>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.934965, 12.756174, 18.927563>,  <18.824408, 12.408886, 18.762735>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.934965, 12.756174, 18.927563> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216644, -0.361448, 0.906874,
		0.936308, -0.339925, 0.088193,
		0.276392, 0.868220, 0.412070,
		19.017883, 13.016640, 19.051184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.273861, 12.258743, 19.325993>,  <18.824408, 12.408886, 18.762735>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.273861, 12.258743, 19.325993> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.123775, 12.610284, 19.443865>,  <19.033724, 12.821208, 19.514589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.123775, 12.610284, 19.443865>,  <19.273861, 12.258743, 19.325993>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.123775, 12.610284, 19.443865> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208052, -0.389644, 0.897158,
		0.903289, 0.275315, 0.329046,
		-0.375212, 0.878851, 0.294682,
		19.011211, 12.873940, 19.532269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.454931, 12.296058, 20.002047>,  <19.273861, 12.258743, 19.325993>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.454931, 12.296058, 20.002047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.179304, 12.585753, 19.991726>,  <19.013927, 12.759571, 19.985533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.179304, 12.585753, 19.991726>,  <19.454931, 12.296058, 20.002047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.179304, 12.585753, 19.991726> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095658, -0.055607, 0.993860,
		0.718357, 0.687304, 0.107596,
		-0.689067, 0.724239, -0.025801,
		18.972584, 12.803025, 19.983986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.687958, 12.680500, 20.507214>,  <19.454931, 12.296058, 20.002047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.687958, 12.680500, 20.507214> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.309414, 12.799233, 20.456150>,  <19.082289, 12.870474, 20.425512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.309414, 12.799233, 20.456150>,  <19.687958, 12.680500, 20.507214>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.309414, 12.799233, 20.456150> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109962, 0.075645, 0.991053,
		0.303834, 0.951928, -0.038947,
		-0.946358, 0.296833, -0.127659,
		19.025507, 12.888284, 20.417852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575394, 13.203114, 20.945814>,  <19.687958, 12.680500, 20.507214>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575394, 13.203114, 20.945814> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.217375, 13.040656, 20.872124>,  <19.002563, 12.943182, 20.827909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.217375, 13.040656, 20.872124>,  <19.575394, 13.203114, 20.945814>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.217375, 13.040656, 20.872124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223109, 0.050100, 0.973505,
		-0.386153, 0.912435, -0.135456,
		-0.895046, -0.406144, -0.184226,
		18.948860, 12.918813, 20.816856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.045135, 13.607346, 21.336630>,  <19.575394, 13.203114, 20.945814>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.045135, 13.607346, 21.336630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.878685, 13.257817, 21.236010>,  <18.778814, 13.048100, 21.175638>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.878685, 13.257817, 21.236010>,  <19.045135, 13.607346, 21.336630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.878685, 13.257817, 21.236010> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290880, -0.134182, 0.947304,
		-0.861527, 0.467367, -0.198341,
		-0.416125, -0.873821, -0.251549,
		18.753847, 12.995671, 21.160545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.628695, 13.554296, 21.801275>,  <19.045135, 13.607346, 21.336630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.628695, 13.554296, 21.801275> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.613377, 13.175806, 21.672783>,  <18.604185, 12.948711, 21.595688>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.613377, 13.175806, 21.672783>,  <18.628695, 13.554296, 21.801275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.613377, 13.175806, 21.672783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211134, -0.306548, 0.928143,
		-0.976707, 0.103368, -0.188041,
		-0.038296, -0.946226, -0.321232,
		18.601889, 12.891938, 21.576414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.013044, 13.265720, 22.145041>,  <18.628695, 13.554296, 21.801275>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.013044, 13.265720, 22.145041> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.204002, 12.932909, 22.032028>,  <18.318577, 12.733222, 21.964220>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.204002, 12.932909, 22.032028>,  <18.013044, 13.265720, 22.145041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.204002, 12.932909, 22.032028> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114599, -0.377748, 0.918789,
		-0.871184, -0.406246, -0.275684,
		0.477393, -0.832028, -0.282533,
		18.347221, 12.683301, 21.947268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.636141, 12.634828, 22.381826>,  <18.013044, 13.265720, 22.145041>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.636141, 12.634828, 22.381826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.019829, 12.525668, 22.352358>,  <18.250042, 12.460173, 22.334677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.019829, 12.525668, 22.352358>,  <17.636141, 12.634828, 22.381826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.019829, 12.525668, 22.352358> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061985, -0.457351, 0.887123,
		-0.275787, -0.846378, -0.455615,
		0.959218, -0.272899, -0.073669,
		18.307594, 12.443798, 22.330257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.640488, 11.950820, 22.292631>,  <17.636141, 12.634828, 22.381826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.640488, 11.950820, 22.292631> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.001667, 12.047372, 22.434855>,  <18.218374, 12.105303, 22.520189>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.001667, 12.047372, 22.434855>,  <17.640488, 11.950820, 22.292631>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.001667, 12.047372, 22.434855> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212069, -0.469342, 0.857172,
		0.373783, -0.849385, -0.372602,
		0.902947, 0.241379, 0.355561,
		18.272551, 12.119785, 22.541523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.003431, 11.280153, 22.611893>,  <17.640488, 11.950820, 22.292631>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.003431, 11.280153, 22.611893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.182953, 11.595121, 22.780910>,  <18.290665, 11.784102, 22.882320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.182953, 11.595121, 22.780910>,  <18.003431, 11.280153, 22.611893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.182953, 11.595121, 22.780910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102445, -0.515058, 0.851011,
		0.887739, -0.338649, -0.311827,
		0.448803, 0.787421, 0.422544,
		18.317595, 11.831347, 22.907673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.487652, 11.000562, 22.971813>,  <18.003431, 11.280153, 22.611893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.487652, 11.000562, 22.971813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.472141, 11.363940, 23.138292>,  <18.462835, 11.581967, 23.238180>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.472141, 11.363940, 23.138292>,  <18.487652, 11.000562, 22.971813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.472141, 11.363940, 23.138292> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161906, -0.405296, 0.899734,
		0.986044, 0.102271, -0.131368,
		-0.038774, 0.908447, 0.416198,
		18.460508, 11.636475, 23.263151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.126774, 10.863683, 23.483980>,  <18.487652, 11.000562, 22.971813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.126774, 10.863683, 23.483980> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.872826, 11.164987, 23.552732>,  <18.720457, 11.345769, 23.593985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<18.872826, 11.164987, 23.552732>,  <19.126774, 10.863683, 23.483980>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.872826, 11.164987, 23.552732> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011368, -0.213334, 0.976913,
		0.772537, 0.622165, 0.126876,
		-0.634868, 0.753259, 0.171881,
		18.682365, 11.390965, 23.604298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.394011, 11.199843, 24.075054>,  <19.126774, 10.863683, 23.483980>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.394011, 11.199843, 24.075054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.023392, 11.349953, 24.064604>,  <18.801022, 11.440019, 24.058332>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<19.023392, 11.349953, 24.064604>,  <19.394011, 11.199843, 24.075054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.023392, 11.349953, 24.064604> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136538, -0.270767, 0.952913,
		0.350529, 0.886484, 0.302117,
		-0.926546, 0.375274, -0.026128,
		18.745428, 11.462535, 24.056765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<11.049943, 13.542835, 23.988552> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.408790, 13.460568, 24.144953>,  <11.624098, 13.411208, 24.238792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.408790, 13.460568, 24.144953>,  <11.049943, 13.542835, 23.988552>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.408790, 13.460568, 24.144953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440377, 0.345498, -0.828673,
		0.035342, 0.915605, 0.400523,
		0.897117, -0.205668, 0.391001,
		11.677925, 13.398868, 24.262253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.416169, 14.160436, 23.816963>,  <11.049943, 13.542835, 23.988552>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.416169, 14.160436, 23.816963> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718573, 13.907295, 23.883839>,  <11.900015, 13.755411, 23.923964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.718573, 13.907295, 23.883839>,  <11.416169, 14.160436, 23.816963>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.718573, 13.907295, 23.883839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484579, 0.369405, -0.792921,
		0.440041, 0.680470, 0.585939,
		0.756008, -0.632851, 0.167188,
		11.945374, 13.717440, 23.933994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.089217, 14.620816, 23.636730>,  <11.416169, 14.160436, 23.816963>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.089217, 14.620816, 23.636730> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.224551, 14.244414, 23.634279>,  <12.305752, 14.018573, 23.632809>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.224551, 14.244414, 23.634279>,  <12.089217, 14.620816, 23.636730>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.224551, 14.244414, 23.634279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696578, 0.254818, -0.670706,
		0.632699, 0.222656, 0.741698,
		0.338335, -0.941006, -0.006125,
		12.326052, 13.962112, 23.632442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.751302, 14.584390, 23.779917>,  <12.089217, 14.620816, 23.636730>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.751302, 14.584390, 23.779917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.706491, 14.261329, 23.548349>,  <12.679604, 14.067492, 23.409409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.706491, 14.261329, 23.548349>,  <12.751302, 14.584390, 23.779917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.706491, 14.261329, 23.548349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572189, 0.423882, -0.702085,
		0.812434, -0.409905, 0.414642,
		-0.112029, -0.807652, -0.578920,
		12.672882, 14.019033, 23.374674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.405125, 14.476500, 23.368521>,  <12.751302, 14.584390, 23.779917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.405125, 14.476500, 23.368521> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.100549, 14.305258, 23.173817>,  <12.917803, 14.202513, 23.056993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.100549, 14.305258, 23.173817>,  <13.405125, 14.476500, 23.368521>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.100549, 14.305258, 23.173817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407131, 0.268497, -0.873014,
		0.504435, -0.862923, -0.030150,
		-0.761439, -0.428104, -0.486762,
		12.872117, 14.176826, 23.027788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.721600, 14.354129, 22.725876>,  <13.405125, 14.476500, 23.368521>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.721600, 14.354129, 22.725876> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.334658, 14.300301, 22.639977>,  <13.102492, 14.268003, 22.588436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.334658, 14.300301, 22.639977>,  <13.721600, 14.354129, 22.725876>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.334658, 14.300301, 22.639977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169212, 0.287859, -0.942605,
		0.188665, -0.948171, -0.255690,
		-0.967354, -0.134571, -0.214750,
		13.044452, 14.259930, 22.575552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.806072, 14.016316, 22.083591>,  <13.721600, 14.354129, 22.725876>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.806072, 14.016316, 22.083591> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.429990, 14.149261, 22.113386>,  <13.204340, 14.229029, 22.131262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.429990, 14.149261, 22.113386>,  <13.806072, 14.016316, 22.083591>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.429990, 14.149261, 22.113386> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063969, 0.387098, -0.919817,
		-0.334547, -0.860052, -0.385212,
		-0.940205, 0.332363, 0.074486,
		13.147928, 14.248970, 22.135733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.392817, 13.803778, 21.412577>,  <13.806072, 14.016316, 22.083591>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.392817, 13.803778, 21.412577> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.194626, 14.117711, 21.561460>,  <13.075711, 14.306071, 21.650791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.194626, 14.117711, 21.561460>,  <13.392817, 13.803778, 21.412577>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.194626, 14.117711, 21.561460> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184395, 0.513774, -0.837875,
		-0.848823, -0.346515, -0.399283,
		-0.495477, 0.784833, 0.372208,
		13.045982, 14.353161, 21.673122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.923350, 14.099600, 20.863976>,  <13.392817, 13.803778, 21.412577>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.923350, 14.099600, 20.863976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.010117, 14.381316, 21.134359>,  <13.062177, 14.550346, 21.296589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.010117, 14.381316, 21.134359>,  <12.923350, 14.099600, 20.863976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.010117, 14.381316, 21.134359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248795, 0.629694, -0.735926,
		-0.943954, 0.327810, -0.038633,
		0.216917, 0.704292, 0.675959,
		13.075191, 14.592604, 21.337147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.559865, 14.677096, 20.574587>,  <12.923350, 14.099600, 20.863976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.559865, 14.677096, 20.574587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.796830, 14.858100, 20.841206>,  <12.939010, 14.966702, 21.001177>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.796830, 14.858100, 20.841206>,  <12.559865, 14.677096, 20.574587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.796830, 14.858100, 20.841206> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104217, 0.777359, -0.620365,
		-0.798866, 0.436977, 0.413358,
		0.592413, 0.452509, 0.666545,
		12.974554, 14.993853, 21.041168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.310356, 15.361987, 20.576763>,  <12.559865, 14.677096, 20.574587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.310356, 15.361987, 20.576763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.682860, 15.378642, 20.721550>,  <12.906363, 15.388635, 20.808422>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.682860, 15.378642, 20.721550>,  <12.310356, 15.361987, 20.576763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.682860, 15.378642, 20.721550> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195852, 0.780515, -0.593665,
		-0.307241, 0.623749, 0.718707,
		0.931260, 0.041638, 0.361969,
		12.962238, 15.391133, 20.830141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.440434, 16.015848, 20.641100>,  <12.310356, 15.361987, 20.576763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.440434, 16.015848, 20.641100> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.801620, 15.845314, 20.619577>,  <13.018331, 15.742993, 20.606663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.801620, 15.845314, 20.619577>,  <12.440434, 16.015848, 20.641100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.801620, 15.845314, 20.619577> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260914, 0.643437, -0.719661,
		0.341438, 0.635789, 0.692237,
		0.902964, -0.426334, -0.053807,
		13.072509, 15.717414, 20.603436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.932628, 16.567581, 20.567215>,  <12.440434, 16.015848, 20.641100>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.932628, 16.567581, 20.567215> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.095000, 16.235212, 20.415009>,  <13.192424, 16.035791, 20.323685>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.095000, 16.235212, 20.415009>,  <12.932628, 16.567581, 20.567215>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.095000, 16.235212, 20.415009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406737, 0.537111, -0.738970,
		0.818403, 0.145203, 0.555997,
		0.405933, -0.830920, -0.380514,
		13.216780, 15.985936, 20.300854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.575052, 16.844757, 20.355715>,  <12.932628, 16.567581, 20.567215>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.575052, 16.844757, 20.355715> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.470152, 16.508406, 20.166338>,  <13.407211, 16.306595, 20.052711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.470152, 16.508406, 20.166338>,  <13.575052, 16.844757, 20.355715>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.470152, 16.508406, 20.166338> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063083, 0.474628, -0.877923,
		0.962935, -0.260103, -0.071427,
		-0.262252, -0.840878, -0.473444,
		13.391477, 16.256142, 20.024305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.137913, 16.524561, 20.719784>,  <13.575052, 16.844757, 20.355715>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.137913, 16.524561, 20.719784> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.492574, 16.658791, 20.847055>,  <14.705371, 16.739328, 20.923418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.492574, 16.658791, 20.847055>,  <14.137913, 16.524561, 20.719784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.492574, 16.658791, 20.847055> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021882, -0.656831, 0.753720,
		0.461917, -0.675250, -0.575039,
		0.886653, 0.335573, 0.318177,
		14.758570, 16.759462, 20.942509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.450667, 15.968374, 20.960325>,  <14.137913, 16.524561, 20.719784>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.450667, 15.968374, 20.960325> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.656049, 16.260628, 21.140343>,  <14.779278, 16.435980, 21.248354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.656049, 16.260628, 21.140343>,  <14.450667, 15.968374, 20.960325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.656049, 16.260628, 21.140343> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044196, -0.501245, 0.864176,
		0.856979, -0.463604, -0.225075,
		0.513453, 0.730633, 0.450046,
		14.810084, 16.479818, 21.275356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.876999, 15.683620, 21.428490>,  <14.450667, 15.968374, 20.960325>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.876999, 15.683620, 21.428490> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.861945, 16.056580, 21.572277>,  <14.852913, 16.280355, 21.658550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.861945, 16.056580, 21.572277>,  <14.876999, 15.683620, 21.428490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861945, 16.056580, 21.572277> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006656, -0.359951, 0.932947,
		0.999269, 0.032718, 0.019752,
		-0.037634, 0.932397, 0.359471,
		14.850655, 16.336298, 21.680119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.452103, 15.775393, 21.796247>,  <14.876999, 15.683620, 21.428490>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.452103, 15.775393, 21.796247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.159594, 16.016840, 21.923298>,  <14.984088, 16.161709, 21.999529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.159594, 16.016840, 21.923298>,  <15.452103, 15.775393, 21.796247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.159594, 16.016840, 21.923298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015087, -0.451241, 0.892274,
		0.681918, 0.657289, 0.320873,
		-0.731273, 0.603617, 0.317626,
		14.940211, 16.197926, 22.018585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.733871, 15.995015, 22.405409>,  <15.452103, 15.775393, 21.796247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.733871, 15.995015, 22.405409> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.348911, 16.100891, 22.429821>,  <15.117935, 16.164417, 22.444468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.348911, 16.100891, 22.429821>,  <15.733871, 15.995015, 22.405409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.348911, 16.100891, 22.429821> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042873, -0.369874, 0.928092,
		0.268230, 0.890580, 0.367315,
		-0.962400, 0.264690, 0.061029,
		15.060191, 16.180298, 22.448130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.684907, 16.200001, 23.018349>,  <15.733871, 15.995015, 22.405409>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.684907, 16.200001, 23.018349> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.297456, 16.142160, 22.937504>,  <15.064985, 16.107456, 22.888998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.297456, 16.142160, 22.937504>,  <15.684907, 16.200001, 23.018349>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.297456, 16.142160, 22.937504> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115276, -0.459054, 0.880898,
		-0.220158, 0.876561, 0.427984,
		-0.968629, -0.144601, -0.202111,
		15.006867, 16.098780, 22.876871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.325389, 16.428820, 23.615059>,  <15.684907, 16.200001, 23.018349>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.325389, 16.428820, 23.615059> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.084047, 16.167852, 23.431618>,  <14.939242, 16.011272, 23.321554>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.084047, 16.167852, 23.431618>,  <15.325389, 16.428820, 23.615059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.084047, 16.167852, 23.431618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245793, -0.394935, 0.885219,
		-0.758649, 0.646822, 0.077927,
		-0.603355, -0.652417, -0.458601,
		14.903041, 15.972127, 23.294037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591650, 16.365778, 23.989944>,  <15.325389, 16.428820, 23.615059>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591650, 16.365778, 23.989944> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.588577, 16.049728, 23.744783>,  <14.586734, 15.860099, 23.597687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.588577, 16.049728, 23.744783>,  <14.591650, 16.365778, 23.989944>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.588577, 16.049728, 23.744783> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253758, -0.591315, 0.765476,
		-0.967237, 0.161410, -0.195957,
		-0.007683, -0.790123, -0.612901,
		14.586272, 15.812692, 23.560913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.888666, 16.146700, 24.084871>,  <14.591650, 16.365778, 23.989944>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.888666, 16.146700, 24.084871> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.118587, 15.846267, 23.954964>,  <14.256539, 15.666006, 23.877020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.118587, 15.846267, 23.954964>,  <13.888666, 16.146700, 24.084871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.118587, 15.846267, 23.954964> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387906, -0.599560, 0.700040,
		-0.720508, -0.276404, -0.635978,
		0.574801, -0.751085, -0.324769,
		14.291027, 15.620941, 23.857533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.477414, 15.491961, 24.094086>,  <13.888666, 16.146700, 24.084871>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.477414, 15.491961, 24.094086> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.856738, 15.366341, 24.112324>,  <14.084332, 15.290968, 24.123266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.856738, 15.366341, 24.112324>,  <13.477414, 15.491961, 24.094086>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.856738, 15.366341, 24.112324> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244696, -0.632145, 0.735199,
		-0.202067, -0.708354, -0.676316,
		0.948311, -0.314051, 0.045596,
		14.141232, 15.272125, 24.126003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.513245, 14.759198, 24.051386>,  <13.477414, 15.491961, 24.094086>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.513245, 14.759198, 24.051386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.863070, 14.870113, 24.210506>,  <14.072966, 14.936663, 24.305979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.863070, 14.870113, 24.210506>,  <13.513245, 14.759198, 24.051386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.863070, 14.870113, 24.210506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108760, -0.687297, 0.718188,
		0.472555, -0.671366, -0.570928,
		0.874565, 0.277289, 0.397804,
		14.125440, 14.953300, 24.329847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.722486, 14.182427, 24.404608>,  <13.513245, 14.759198, 24.051386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.722486, 14.182427, 24.404608> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.965757, 14.462502, 24.554197>,  <14.111720, 14.630548, 24.643951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.965757, 14.462502, 24.554197>,  <13.722486, 14.182427, 24.404608>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.965757, 14.462502, 24.554197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080293, -0.522966, 0.848563,
		0.789729, -0.486050, -0.374277,
		0.608178, 0.700187, 0.373975,
		14.148211, 14.672559, 24.666389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.292480, 13.859192, 24.565670>,  <13.722486, 14.182427, 24.404608>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.292480, 13.859192, 24.565670> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.284739, 14.189236, 24.791527>,  <14.280095, 14.387262, 24.927040>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.284739, 14.189236, 24.791527>,  <14.292480, 13.859192, 24.565670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.284739, 14.189236, 24.791527> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117768, -0.558935, 0.820806,
		0.992853, 0.082379, -0.086356,
		-0.019350, 0.825109, 0.564641,
		14.278934, 14.436769, 24.960918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.871617, 13.717760, 25.083748>,  <14.292480, 13.859192, 24.565670>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.871617, 13.717760, 25.083748> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.627564, 13.996670, 25.234240>,  <14.481133, 14.164016, 25.324535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.627564, 13.996670, 25.234240>,  <14.871617, 13.717760, 25.083748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.627564, 13.996670, 25.234240> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119042, -0.388790, 0.913604,
		0.783306, 0.602206, 0.154208,
		-0.610132, 0.697274, 0.376229,
		14.444525, 14.205852, 25.347109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.646024, 13.724010, 25.039267>,  <14.871617, 13.717760, 25.083748>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.646024, 13.724010, 25.039267> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.992752, 13.548603, 25.134197>,  <16.200788, 13.443359, 25.191154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.992752, 13.548603, 25.134197>,  <15.646024, 13.724010, 25.039267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.992752, 13.548603, 25.134197> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442028, 0.455583, -0.772693,
		0.230718, 0.774692, 0.588746,
		0.866822, -0.438517, 0.237325,
		16.252798, 13.417048, 25.205395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.168169, 14.286658, 25.095425>,  <15.646024, 13.724010, 25.039267>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.168169, 14.286658, 25.095425> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.328463, 13.928208, 25.019135>,  <16.424639, 13.713139, 24.973360>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.328463, 13.928208, 25.019135>,  <16.168169, 14.286658, 25.095425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.328463, 13.928208, 25.019135> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450868, 0.374103, -0.810411,
		0.797579, 0.238767, 0.553948,
		0.400732, -0.896124, -0.190724,
		16.448683, 13.659371, 24.961918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799814, 14.448482, 24.953390>,  <16.168169, 14.286658, 25.095425>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799814, 14.448482, 24.953390> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.745636, 14.086389, 24.792290>,  <16.713129, 13.869133, 24.695629>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.745636, 14.086389, 24.792290>,  <16.799814, 14.448482, 24.953390>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.745636, 14.086389, 24.792290> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412135, 0.318182, -0.853759,
		0.900999, -0.281624, 0.329983,
		-0.135445, -0.905234, -0.402749,
		16.705002, 13.814818, 24.671465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.467361, 14.281753, 24.654722>,  <16.799814, 14.448482, 24.953390>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.467361, 14.281753, 24.654722> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.212177, 14.027764, 24.480452>,  <17.059067, 13.875371, 24.375889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.212177, 14.027764, 24.480452>,  <17.467361, 14.281753, 24.654722>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.212177, 14.027764, 24.480452> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390333, 0.221060, -0.893741,
		0.663811, -0.740232, 0.106822,
		-0.637962, -0.634971, -0.435679,
		17.020788, 13.837273, 24.349749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.907148, 13.979408, 24.092421>,  <17.467361, 14.281753, 24.654722>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.907148, 13.979408, 24.092421> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.520329, 13.922043, 24.008282>,  <17.288237, 13.887624, 23.957798>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.520329, 13.922043, 24.008282>,  <17.907148, 13.979408, 24.092421>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.520329, 13.922043, 24.008282> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176842, 0.215968, -0.960252,
		0.183137, -0.965812, -0.183491,
		-0.967051, -0.143409, -0.210348,
		17.230213, 13.879019, 23.945177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.963316, 13.399086, 23.600254>,  <17.907148, 13.979408, 24.092421>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.963316, 13.399086, 23.600254> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.616276, 13.590520, 23.546249>,  <17.408052, 13.705380, 23.513847>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.616276, 13.590520, 23.546249>,  <17.963316, 13.399086, 23.600254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.616276, 13.590520, 23.546249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264050, 0.213324, -0.940623,
		-0.421367, -0.851733, -0.311450,
		-0.867599, 0.478585, -0.135012,
		17.355995, 13.734096, 23.505745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.780043, 13.316813, 22.884705>,  <17.963316, 13.399086, 23.600254>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.780043, 13.316813, 22.884705> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.530560, 13.620888, 22.957483>,  <17.380871, 13.803333, 23.001150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.530560, 13.620888, 22.957483>,  <17.780043, 13.316813, 22.884705>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.530560, 13.620888, 22.957483> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140036, 0.337672, -0.930789,
		-0.769012, -0.555060, -0.317062,
		-0.623706, 0.760188, 0.181946,
		17.343447, 13.848944, 23.012068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.207405, 13.379587, 22.394457>,  <17.780043, 13.316813, 22.884705>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.207405, 13.379587, 22.394457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.215553, 13.755955, 22.529663>,  <17.220442, 13.981775, 22.610786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.215553, 13.755955, 22.529663>,  <17.207405, 13.379587, 22.394457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.215553, 13.755955, 22.529663> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023035, 0.338438, -0.940707,
		-0.999527, 0.011379, 0.028569,
		0.020373, 0.940920, 0.338015,
		17.221664, 14.038231, 22.631067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.739285, 13.837888, 21.957111>,  <17.207405, 13.379587, 22.394457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.739285, 13.837888, 21.957111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.958424, 14.124865, 22.129221>,  <17.089907, 14.297050, 22.232487>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.958424, 14.124865, 22.129221>,  <16.739285, 13.837888, 21.957111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.958424, 14.124865, 22.129221> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050197, 0.541593, -0.839141,
		-0.835069, 0.438125, 0.332725,
		0.547850, 0.717443, 0.430275,
		17.122778, 14.340097, 22.258303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.504734, 14.412720, 21.617624>,  <16.739285, 13.837888, 21.957111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.504734, 14.412720, 21.617624> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.847048, 14.528903, 21.788864>,  <17.052435, 14.598613, 21.891609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.847048, 14.528903, 21.788864>,  <16.504734, 14.412720, 21.617624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.847048, 14.528903, 21.788864> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154371, 0.646437, -0.747187,
		-0.493767, 0.705516, 0.508371,
		0.855782, 0.290459, 0.428101,
		17.103783, 14.616040, 21.917294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.507708, 15.098382, 21.479856>,  <16.504734, 14.412720, 21.617624>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.507708, 15.098382, 21.479856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.875677, 14.956017, 21.545668>,  <17.096458, 14.870599, 21.585155>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<16.875677, 14.956017, 21.545668>,  <16.507708, 15.098382, 21.479856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.875677, 14.956017, 21.545668> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359140, 0.596431, -0.717836,
		0.157355, 0.719443, 0.676492,
		0.919923, -0.355910, 0.164529,
		17.151653, 14.849244, 21.595026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.834879, 15.732718, 21.318045>,  <16.507708, 15.098382, 21.479856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.834879, 15.732718, 21.318045> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.121113, 15.453798, 21.301498>,  <17.292854, 15.286447, 21.291571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.121113, 15.453798, 21.301498>,  <16.834879, 15.732718, 21.318045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.121113, 15.453798, 21.301498> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509515, 0.561556, -0.651958,
		0.477839, 0.445455, 0.757126,
		0.715587, -0.697298, -0.041367,
		17.335789, 15.244609, 21.289089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.481346, 16.118086, 21.357910>,  <16.834879, 15.732718, 21.318045>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.481346, 16.118086, 21.357910> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.563299, 15.748610, 21.228403>,  <17.612471, 15.526926, 21.150698>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.563299, 15.748610, 21.228403>,  <17.481346, 16.118086, 21.357910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.563299, 15.748610, 21.228403> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682163, 0.371968, -0.629518,
		0.701909, -0.091887, 0.706315,
		0.204882, -0.923687, -0.323769,
		17.624763, 15.471504, 21.131271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.260820, 16.077309, 21.295975>,  <17.481346, 16.118086, 21.357910>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.260820, 16.077309, 21.295975> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.104462, 15.802255, 21.051237>,  <18.010647, 15.637222, 20.904394>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.104462, 15.802255, 21.051237>,  <18.260820, 16.077309, 21.295975>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.104462, 15.802255, 21.051237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462065, 0.428304, -0.776564,
		0.796049, -0.586271, 0.150309,
		-0.390899, -0.687635, -0.611846,
		17.987192, 15.595964, 20.867683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<6.871213, 26.766220, 15.194060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.569056, 26.878698, 14.957313>,  <6.387762, 26.946186, 14.815264>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.569056, 26.878698, 14.957313>,  <6.871213, 26.766220, 15.194060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.569056, 26.878698, 14.957313> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093002, -0.848091, -0.521624,
		-0.648638, -0.449077, 0.614491,
		-0.755394, 0.281196, -0.591869,
		6.342438, 26.963057, 14.779752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.549954, 26.674240, 15.579438>,  <6.871213, 26.766220, 15.194060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.549954, 26.674240, 15.579438> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.337980, 26.546175, 15.893550>,  <7.210796, 26.469336, 16.082018>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.337980, 26.546175, 15.893550>,  <7.549954, 26.674240, 15.579438>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.337980, 26.546175, 15.893550> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827404, -0.398228, 0.396001,
		0.185935, 0.859598, 0.475941,
		-0.529934, -0.320165, 0.785280,
		7.179000, 26.450125, 16.129133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.857436, 26.951160, 16.241362>,  <7.549954, 26.674240, 15.579438>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.857436, 26.951160, 16.241362> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.680772, 26.593786, 16.274134>,  <7.574774, 26.379362, 16.293797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.680772, 26.593786, 16.274134>,  <7.857436, 26.951160, 16.241362>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.680772, 26.593786, 16.274134> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877612, -0.411249, 0.246316,
		-0.186374, 0.180689, 0.965721,
		-0.441658, -0.893435, 0.081929,
		7.548275, 26.325756, 16.298712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.195986, 26.574133, 16.884254>,  <7.857436, 26.951160, 16.241362>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.195986, 26.574133, 16.884254> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.049109, 26.311493, 16.620726>,  <7.960982, 26.153910, 16.462608>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.049109, 26.311493, 16.620726>,  <8.195986, 26.574133, 16.884254>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.049109, 26.311493, 16.620726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889043, -0.455977, -0.041067,
		-0.273444, -0.600801, 0.751177,
		-0.367193, -0.656599, -0.658823,
		7.938951, 26.114513, 16.423079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.383412, 25.910639, 17.115128>,  <8.195986, 26.574133, 16.884254>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.383412, 25.910639, 17.115128> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.312482, 25.838661, 16.728104>,  <8.269923, 25.795475, 16.495890>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.312482, 25.838661, 16.728104>,  <8.383412, 25.910639, 17.115128>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.312482, 25.838661, 16.728104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811402, -0.583100, -0.040263,
		-0.556940, -0.792221, 0.249407,
		-0.177326, -0.179946, -0.967561,
		8.259284, 25.784678, 16.437836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.968355, 25.754417, 17.701939>,  <8.383412, 25.910639, 17.115128>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.968355, 25.754417, 17.701939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.815144, 25.399313, 17.804052>,  <8.723217, 25.186251, 17.865320>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.815144, 25.399313, 17.804052>,  <8.968355, 25.754417, 17.701939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.815144, 25.399313, 17.804052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022877, 0.285391, 0.958138,
		-0.923453, 0.361154, -0.129622,
		-0.383029, -0.887761, 0.255283,
		8.700235, 25.132984, 17.880638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.372790, 25.817366, 18.179226>,  <8.968355, 25.754417, 17.701939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.372790, 25.817366, 18.179226> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.527597, 25.453306, 18.238350>,  <8.620481, 25.234871, 18.273825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.527597, 25.453306, 18.238350>,  <8.372790, 25.817366, 18.179226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.527597, 25.453306, 18.238350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134376, 0.102918, 0.985571,
		-0.912228, -0.401295, -0.082470,
		0.387018, -0.910148, 0.147809,
		8.643703, 25.180262, 18.282692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.854551, 25.358057, 18.567835>,  <8.372790, 25.817366, 18.179226>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.854551, 25.358057, 18.567835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.245753, 25.287743, 18.612745>,  <8.480474, 25.245554, 18.639692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.245753, 25.287743, 18.612745>,  <7.854551, 25.358057, 18.567835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.245753, 25.287743, 18.612745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091327, 0.123055, 0.988189,
		-0.187527, -0.976707, 0.104294,
		0.978005, -0.175788, 0.112276,
		8.539155, 25.235006, 18.646429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.772680, 24.590782, 18.351301>,  <7.854551, 25.358057, 18.567835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.772680, 24.590782, 18.351301> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.522312, 24.591043, 18.039347>,  <7.372091, 24.591200, 17.852175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.522312, 24.591043, 18.039347>,  <7.772680, 24.590782, 18.351301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.522312, 24.591043, 18.039347> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770163, 0.156904, 0.618248,
		0.122770, 0.987614, -0.097708,
		-0.625921, 0.000651, -0.779886,
		7.334536, 24.591238, 17.805382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.678926, 23.805431, 18.355465>,  <7.772680, 24.590782, 18.351301>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.678926, 23.805431, 18.355465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.545273, 23.697481, 18.716690>,  <7.465082, 23.632711, 18.933426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.545273, 23.697481, 18.716690>,  <7.678926, 23.805431, 18.355465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.545273, 23.697481, 18.716690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137756, -0.933859, -0.330046,
		0.932406, -0.234681, 0.274854,
		-0.334130, -0.269874, 0.903064,
		7.445034, 23.616518, 18.987610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.047080, 23.199966, 18.542307>,  <7.678926, 23.805431, 18.355465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.047080, 23.199966, 18.542307> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.702499, 23.219706, 18.744482>,  <7.495751, 23.231550, 18.865788>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.702499, 23.219706, 18.744482>,  <8.047080, 23.199966, 18.542307>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.702499, 23.219706, 18.744482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160750, -0.970589, -0.179213,
		0.481727, -0.235632, 0.844048,
		-0.861452, 0.049349, 0.505436,
		7.444064, 23.234510, 18.896112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.987957, 22.584021, 19.000446>,  <8.047080, 23.199966, 18.542307>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.987957, 22.584021, 19.000446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.607341, 22.702227, 18.966404>,  <7.378972, 22.773149, 18.945978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.607341, 22.702227, 18.966404>,  <7.987957, 22.584021, 19.000446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.607341, 22.702227, 18.966404> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297544, -0.954633, 0.011971,
		-0.077708, 0.036714, 0.996300,
		-0.951540, 0.295513, -0.085106,
		7.321879, 22.790880, 18.940872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.599504, 22.131010, 19.390549>,  <7.987957, 22.584021, 19.000446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.599504, 22.131010, 19.390549> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.314111, 22.268219, 19.146162>,  <7.142875, 22.350544, 18.999531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.314111, 22.268219, 19.146162>,  <7.599504, 22.131010, 19.390549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.314111, 22.268219, 19.146162> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365660, -0.926097, -0.092937,
		-0.597693, 0.157096, 0.786183,
		-0.713482, 0.343024, -0.610965,
		7.100066, 22.371126, 18.962872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.078182, 21.632042, 19.501354>,  <7.599504, 22.131010, 19.390549>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.078182, 21.632042, 19.501354> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.975910, 21.829359, 19.168779>,  <6.914547, 21.947750, 18.969234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.975910, 21.829359, 19.168779>,  <7.078182, 21.632042, 19.501354>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.975910, 21.829359, 19.168779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252861, -0.864208, -0.434978,
		-0.933107, 0.099023, 0.345695,
		-0.255680, 0.493294, -0.831438,
		6.899206, 21.977346, 18.919348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.377594, 21.409279, 19.357830>,  <7.078182, 21.632042, 19.501354>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.377594, 21.409279, 19.357830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.508875, 21.563087, 19.012709>,  <6.587644, 21.655373, 18.805635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.508875, 21.563087, 19.012709>,  <6.377594, 21.409279, 19.357830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.508875, 21.563087, 19.012709> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314302, -0.816899, -0.483622,
		-0.890784, 0.429907, -0.147254,
		0.328204, 0.384520, -0.862802,
		6.607337, 21.678444, 18.753868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.819504, 21.514914, 18.964458>,  <6.377594, 21.409279, 19.357830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.819504, 21.514914, 18.964458> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.126686, 21.482716, 18.710289>,  <6.310995, 21.463396, 18.557787>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.126686, 21.482716, 18.710289>,  <5.819504, 21.514914, 18.964458>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.126686, 21.482716, 18.710289> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501420, -0.692829, -0.518233,
		-0.398527, 0.716595, -0.572423,
		0.767955, -0.080494, -0.635426,
		6.357072, 21.458567, 18.519661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.593503, 21.430038, 18.321077>,  <5.819504, 21.514914, 18.964458>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.593503, 21.430038, 18.321077> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.963081, 21.286413, 18.268314>,  <6.184828, 21.200237, 18.236656>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.963081, 21.286413, 18.268314>,  <5.593503, 21.430038, 18.321077>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.963081, 21.286413, 18.268314> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373982, -0.775428, -0.508771,
		0.080395, 0.519408, -0.850736,
		0.923945, -0.359062, -0.131909,
		6.240264, 21.178694, 18.228743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.677798, 21.298468, 17.533510>,  <5.593503, 21.430038, 18.321077>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.677798, 21.298468, 17.533510> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.928322, 21.081253, 17.757240>,  <6.078636, 20.950924, 17.891479>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.928322, 21.081253, 17.757240>,  <5.677798, 21.298468, 17.533510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.928322, 21.081253, 17.757240> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465725, -0.836007, -0.290160,
		0.625169, -0.078762, -0.776505,
		0.626310, -0.543037, 0.559327,
		6.116215, 20.918343, 17.925037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.042643, 20.783966, 17.134113>,  <5.677798, 21.298468, 17.533510>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.042643, 20.783966, 17.134113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.062843, 20.610703, 17.494074>,  <6.074963, 20.506744, 17.710051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.062843, 20.610703, 17.494074>,  <6.042643, 20.783966, 17.134113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.062843, 20.610703, 17.494074> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283828, -0.870124, -0.402896,
		0.957545, -0.235071, -0.166884,
		0.050501, -0.433157, 0.899903,
		6.077993, 20.480755, 17.764044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.334607, 20.222706, 16.957134>,  <6.042643, 20.783966, 17.134113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.334607, 20.222706, 16.957134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.206022, 20.137180, 17.326120>,  <6.128870, 20.085865, 17.547512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.206022, 20.137180, 17.326120>,  <6.334607, 20.222706, 16.957134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.206022, 20.137180, 17.326120> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215278, -0.932162, -0.291082,
		0.922126, -0.292159, 0.253626,
		-0.321463, -0.213814, 0.922466,
		6.109583, 20.073036, 17.602859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.661110, 19.554365, 17.110653>,  <6.334607, 20.222706, 16.957134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.661110, 19.554365, 17.110653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.387541, 19.576620, 17.401625>,  <6.223400, 19.589973, 17.576208>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.387541, 19.576620, 17.401625>,  <6.661110, 19.554365, 17.110653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.387541, 19.576620, 17.401625> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265872, -0.947527, -0.177498,
		0.679384, -0.314798, 0.662827,
		-0.683922, 0.055638, 0.727430,
		6.182364, 19.593311, 17.619854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.734022, 18.925556, 17.642845>,  <6.661110, 19.554365, 17.110653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.734022, 18.925556, 17.642845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.361310, 19.070543, 17.650902>,  <6.137683, 19.157536, 17.655735>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.361310, 19.070543, 17.650902>,  <6.734022, 18.925556, 17.642845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.361310, 19.070543, 17.650902> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360658, -0.917955, -0.165179,
		-0.041382, -0.161175, 0.986058,
		-0.931780, 0.362465, 0.020142,
		6.081776, 19.179283, 17.656944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.361655, 18.590466, 18.130234>,  <6.734022, 18.925556, 17.642845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.361655, 18.590466, 18.130234> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.079130, 18.726072, 17.881657>,  <5.909615, 18.807436, 17.732512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.079130, 18.726072, 17.881657>,  <6.361655, 18.590466, 18.130234>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.079130, 18.726072, 17.881657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220748, -0.939573, -0.261675,
		-0.672601, -0.047643, 0.738470,
		-0.706313, 0.339019, -0.621440,
		5.867236, 18.827778, 17.695225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.875124, 18.115864, 18.165241>,  <6.361655, 18.590466, 18.130234>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.875124, 18.115864, 18.165241> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.750638, 18.307018, 17.836664>,  <5.675946, 18.421711, 17.639519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.750638, 18.307018, 17.836664>,  <5.875124, 18.115864, 18.165241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.750638, 18.307018, 17.836664> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149425, -0.878223, -0.454309,
		-0.938519, -0.018644, 0.344725,
		-0.311216, 0.477888, -0.821443,
		5.657273, 18.450384, 17.590231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.210189, 17.791124, 18.003101>,  <5.875124, 18.115864, 18.165241>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.210189, 17.791124, 18.003101> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.336468, 17.940254, 17.654083>,  <5.412236, 18.029732, 17.444672>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.336468, 17.940254, 17.654083>,  <5.210189, 17.791124, 18.003101>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.336468, 17.940254, 17.654083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387358, -0.788817, -0.477202,
		-0.866192, 0.488639, -0.104610,
		0.315698, 0.372827, -0.872545,
		5.431178, 18.052103, 17.392321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.645637, 17.699118, 17.502668>,  <5.210189, 17.791124, 18.003101>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.645637, 17.699118, 17.502668> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.993012, 17.744881, 17.309702>,  <5.201437, 17.772339, 17.193922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.993012, 17.744881, 17.309702>,  <4.645637, 17.699118, 17.502668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.993012, 17.744881, 17.309702> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295371, -0.662109, -0.688744,
		-0.398212, 0.740623, -0.541207,
		0.868437, 0.114409, -0.482418,
		5.253543, 17.779203, 17.164976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.414367, 17.839773, 16.805429>,  <4.645637, 17.699118, 17.502668>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.414367, 17.839773, 16.805429> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.792331, 17.721708, 16.748823>,  <5.019109, 17.650869, 16.714859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.792331, 17.721708, 16.748823>,  <4.414367, 17.839773, 16.805429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.792331, 17.721708, 16.748823> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291165, -0.560362, -0.775382,
		0.149563, 0.773870, -0.615432,
		0.944910, -0.295161, -0.141514,
		5.075804, 17.633160, 16.706369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.567831, 17.810978, 15.996743>,  <4.414367, 17.839773, 16.805429>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.567831, 17.810978, 15.996743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.831964, 17.575825, 16.183657>,  <4.990444, 17.434732, 16.295805>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.831964, 17.575825, 16.183657>,  <4.567831, 17.810978, 15.996743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.831964, 17.575825, 16.183657> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061084, -0.662222, -0.746814,
		0.748485, 0.464602, -0.473197,
		0.660333, -0.587883, 0.467284,
		5.030064, 17.399460, 16.323841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.942425, 17.597260, 15.462638>,  <4.567831, 17.810978, 15.996743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.942425, 17.597260, 15.462638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.030384, 17.335352, 15.751892>,  <5.083158, 17.178207, 15.925445>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.030384, 17.335352, 15.751892>,  <4.942425, 17.597260, 15.462638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.030384, 17.335352, 15.751892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146633, -0.755042, -0.639069,
		0.964440, 0.034493, -0.262041,
		0.219896, -0.654768, 0.723135,
		5.096352, 17.138922, 15.968833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.437335, 17.077660, 15.230519>,  <4.942425, 17.597260, 15.462638>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.437335, 17.077660, 15.230519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.251199, 16.920666, 15.547862>,  <5.139517, 16.826469, 15.738268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.251199, 16.920666, 15.547862>,  <5.437335, 17.077660, 15.230519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.251199, 16.920666, 15.547862> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001245, -0.896604, -0.442832,
		0.885131, -0.205080, 0.417714,
		-0.465340, -0.392484, 0.793356,
		5.111597, 16.802921, 15.785869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.785173, 16.436932, 15.330825>,  <5.437335, 17.077660, 15.230519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.785173, 16.436932, 15.330825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.426261, 16.395428, 15.502463>,  <5.210914, 16.370525, 15.605447>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.426261, 16.395428, 15.502463>,  <5.785173, 16.436932, 15.330825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.426261, 16.395428, 15.502463> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106750, -0.892145, -0.438955,
		0.428362, -0.439671, 0.789427,
		-0.897280, -0.103760, 0.429096,
		5.157077, 16.364300, 15.631192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.434265, 16.300327, 15.297311>,  <5.785173, 16.436932, 15.330825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.434265, 16.300327, 15.297311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.741745, 16.051435, 15.238073>,  <6.926233, 15.902101, 15.202531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.741745, 16.051435, 15.238073>,  <6.434265, 16.300327, 15.297311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.741745, 16.051435, 15.238073> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503014, 0.445095, 0.740856,
		-0.395066, -0.643989, 0.655134,
		0.768700, -0.622229, -0.148093,
		6.972355, 15.864767, 15.193645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.733446, 16.141260, 15.910199>,  <6.434265, 16.300327, 15.297311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.733446, 16.141260, 15.910199> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.035534, 16.033092, 15.671363>,  <7.216787, 15.968192, 15.528061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.035534, 16.033092, 15.671363>,  <6.733446, 16.141260, 15.910199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.035534, 16.033092, 15.671363> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655419, 0.300066, 0.693099,
		-0.008260, -0.914787, 0.403853,
		0.755220, -0.270418, -0.597090,
		7.262101, 15.951967, 15.492236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.127646, 15.621608, 16.307411>,  <6.733446, 16.141260, 15.910199>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.127646, 15.621608, 16.307411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.341971, 15.835760, 16.046253>,  <7.470566, 15.964252, 15.889559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.341971, 15.835760, 16.046253>,  <7.127646, 15.621608, 16.307411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.341971, 15.835760, 16.046253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521948, 0.397791, 0.754541,
		0.663682, -0.745071, -0.066299,
		0.535813, 0.535380, -0.652895,
		7.502715, 15.996374, 15.850385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.810760, 15.643642, 16.582830>,  <7.127646, 15.621608, 16.307411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.810760, 15.643642, 16.582830> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.826448, 15.935282, 16.309517>,  <7.835862, 16.110266, 16.145529>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.826448, 15.935282, 16.309517>,  <7.810760, 15.643642, 16.582830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.826448, 15.935282, 16.309517> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407353, 0.612742, 0.677208,
		0.912428, -0.304900, -0.272967,
		0.039222, 0.729097, -0.683285,
		7.838215, 16.154011, 16.104532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.494967, 15.919264, 16.573023>,  <7.810760, 15.643642, 16.582830>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.494967, 15.919264, 16.573023> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.263447, 16.214275, 16.433859>,  <8.124535, 16.391283, 16.350361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.263447, 16.214275, 16.433859>,  <8.494967, 15.919264, 16.573023>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.263447, 16.214275, 16.433859> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362799, 0.614984, 0.700122,
		0.730320, 0.279009, -0.623527,
		-0.578800, 0.737528, -0.347911,
		8.089807, 16.435534, 16.329485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.898149, 16.487928, 16.503939>,  <8.494967, 15.919264, 16.573023>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.898149, 16.487928, 16.503939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.523265, 16.625734, 16.525656>,  <8.298334, 16.708418, 16.538687>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.523265, 16.625734, 16.525656>,  <8.898149, 16.487928, 16.503939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.523265, 16.625734, 16.525656> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311888, 0.758222, 0.572561,
		0.156087, 0.553543, -0.818063,
		-0.937210, 0.344513, 0.054295,
		8.242102, 16.729088, 16.541945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.940846, 17.179131, 16.663065>,  <8.898149, 16.487928, 16.503939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.940846, 17.179131, 16.663065> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.552630, 17.117725, 16.737345>,  <8.319700, 17.080883, 16.781914>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.552630, 17.117725, 16.737345>,  <8.940846, 17.179131, 16.663065>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.552630, 17.117725, 16.737345> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018601, 0.720704, 0.692993,
		-0.240218, 0.676032, -0.696617,
		-0.970541, -0.153512, 0.185701,
		8.261468, 17.071672, 16.793055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.569183, 17.746208, 16.591768>,  <8.940846, 17.179131, 16.663065>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.569183, 17.746208, 16.591768> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.372766, 17.517393, 16.854568>,  <8.254915, 17.380104, 17.012249>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.372766, 17.517393, 16.854568>,  <8.569183, 17.746208, 16.591768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.372766, 17.517393, 16.854568> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025810, 0.744306, 0.667340,
		-0.870752, 0.344651, -0.350723,
		-0.491045, -0.572036, 0.657001,
		8.225452, 17.345783, 17.051668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.188879, 18.278793, 16.959707>,  <8.569183, 17.746208, 16.591768>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.188879, 18.278793, 16.959707> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.151128, 17.965601, 17.205645>,  <8.128477, 17.777685, 17.353207>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.151128, 17.965601, 17.205645>,  <8.188879, 18.278793, 16.959707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.151128, 17.965601, 17.205645> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051690, 0.620621, 0.782405,
		-0.994194, 0.042061, -0.099045,
		-0.094378, -0.782982, 0.614843,
		8.122814, 17.730707, 17.390097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.691209, 18.446115, 17.510260>,  <8.188879, 18.278793, 16.959707>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.691209, 18.446115, 17.510260> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.860732, 18.128069, 17.683777>,  <7.962446, 17.937241, 17.787888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.860732, 18.128069, 17.683777>,  <7.691209, 18.446115, 17.510260>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.860732, 18.128069, 17.683777> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005314, 0.481105, 0.876647,
		-0.905736, -0.369225, 0.208121,
		0.423808, -0.795117, 0.433792,
		7.987875, 17.889534, 17.813915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.421077, 18.278116, 18.208519>,  <7.691209, 18.446115, 17.510260>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.421077, 18.278116, 18.208519> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.785173, 18.114475, 18.234133>,  <8.003631, 18.016291, 18.249500>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.785173, 18.114475, 18.234133>,  <7.421077, 18.278116, 18.208519>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.785173, 18.114475, 18.234133> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173050, 0.516314, 0.838733,
		-0.376190, -0.752366, 0.540764,
		0.910239, -0.409102, 0.064035,
		8.058245, 17.991745, 18.253344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.437674, 18.136574, 18.835911>,  <7.421077, 18.278116, 18.208519>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.437674, 18.136574, 18.835911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.821176, 18.163296, 18.725401>,  <8.051276, 18.179329, 18.659094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.821176, 18.163296, 18.725401>,  <7.437674, 18.136574, 18.835911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.821176, 18.163296, 18.725401> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204646, 0.512318, 0.834057,
		0.197260, -0.856194, 0.477515,
		0.958754, 0.066804, -0.276276,
		8.108802, 18.183336, 18.642517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.788126, 18.037588, 19.465994>,  <7.437674, 18.136574, 18.835911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.788126, 18.037588, 19.465994> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.064362, 18.198750, 19.225742>,  <8.230103, 18.295446, 19.081593>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.064362, 18.198750, 19.225742>,  <7.788126, 18.037588, 19.465994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.064362, 18.198750, 19.225742> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301046, 0.594964, 0.745245,
		0.657614, -0.695475, 0.289583,
		0.690591, 0.402905, -0.600627,
		8.271539, 18.319622, 19.045555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.311051, 18.005846, 19.928383>,  <7.788126, 18.037588, 19.465994>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.311051, 18.005846, 19.928383> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399944, 18.261644, 19.633993>,  <8.453279, 18.415123, 19.457359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.399944, 18.261644, 19.633993>,  <8.311051, 18.005846, 19.928383>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.399944, 18.261644, 19.633993> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340137, 0.656576, 0.673212,
		0.913739, -0.399942, -0.071604,
		0.222232, 0.639495, -0.735975,
		8.466614, 18.453493, 19.413200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.071155, 18.277531, 20.034832>,  <8.311051, 18.005846, 19.928383>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.071155, 18.277531, 20.034832> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.914563, 18.557629, 19.796036>,  <8.820608, 18.725687, 19.652758>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.914563, 18.557629, 19.796036>,  <9.071155, 18.277531, 20.034832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.914563, 18.557629, 19.796036> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295919, 0.710113, 0.638883,
		0.871307, 0.073448, -0.485211,
		-0.391479, 0.700246, -0.596992,
		8.797119, 18.767702, 19.616938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.560164, 18.800524, 19.940117>,  <9.071155, 18.277531, 20.034832>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.560164, 18.800524, 19.940117> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.195586, 18.961737, 19.907053>,  <8.976839, 19.058464, 19.887215>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.195586, 18.961737, 19.907053>,  <9.560164, 18.800524, 19.940117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.195586, 18.961737, 19.907053> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284223, 0.762078, 0.581769,
		0.297465, 0.506756, -0.809143,
		-0.911445, 0.403033, -0.082660,
		8.922153, 19.082647, 19.882256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.760544, 19.605621, 19.801388>,  <9.560164, 18.800524, 19.940117>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.760544, 19.605621, 19.801388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.375115, 19.568911, 19.901875>,  <9.143859, 19.546885, 19.962166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.375115, 19.568911, 19.901875>,  <9.760544, 19.605621, 19.801388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.375115, 19.568911, 19.901875> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028599, 0.898539, 0.437962,
		-0.265921, 0.429192, -0.863181,
		-0.963570, -0.091777, 0.251215,
		9.086044, 19.541378, 19.977240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.549616, 20.285353, 19.759386>,  <9.760544, 19.605621, 19.801388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.549616, 20.285353, 19.759386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.254987, 20.104712, 19.960789>,  <9.078210, 19.996326, 20.081631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<9.254987, 20.104712, 19.960789>,  <9.549616, 20.285353, 19.759386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<9.254987, 20.104712, 19.960789> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253912, 0.874614, 0.413013,
		-0.626890, 0.176368, -0.758883,
		-0.736572, -0.451603, 0.503504,
		9.034016, 19.969231, 20.111839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.940228, 20.660210, 19.678055>,  <9.549616, 20.285353, 19.759386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.940228, 20.660210, 19.678055> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.874033, 20.438282, 20.004194>,  <8.834315, 20.305126, 20.199877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.874033, 20.438282, 20.004194>,  <8.940228, 20.660210, 19.678055>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.874033, 20.438282, 20.004194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227835, 0.825889, 0.515750,
		-0.959533, -0.100414, -0.263083,
		-0.165489, -0.554819, 0.815346,
		8.824387, 20.271837, 20.248798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.224450, 20.862465, 19.968330>,  <8.940228, 20.660210, 19.678055>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.224450, 20.862465, 19.968330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.438242, 20.697514, 20.263430>,  <8.566517, 20.598543, 20.440489>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.438242, 20.697514, 20.263430>,  <8.224450, 20.862465, 19.968330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.438242, 20.697514, 20.263430> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195954, 0.788643, 0.582790,
		-0.822152, -0.456055, 0.340706,
		0.534479, -0.412379, 0.737750,
		8.598586, 20.573799, 20.484755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.727893, 20.764025, 20.530157>,  <8.224450, 20.862465, 19.968330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.727893, 20.764025, 20.530157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.107038, 20.786880, 20.655563>,  <8.334526, 20.800594, 20.730806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.107038, 20.786880, 20.655563>,  <7.727893, 20.764025, 20.530157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.107038, 20.786880, 20.655563> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226944, 0.811692, 0.538193,
		-0.223724, -0.581284, 0.782341,
		0.947863, 0.057141, 0.313514,
		8.391397, 20.804024, 20.749617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<19.018415, 11.906636, 25.087860> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.701712, 11.842552, 24.852079>,  <18.511690, 11.804102, 24.710611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.701712, 11.842552, 24.852079>,  <19.018415, 11.906636, 25.087860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.701712, 11.842552, 24.852079> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508710, -0.361234, 0.781489,
		-0.338132, 0.918609, 0.204509,
		-0.791758, -0.160211, -0.589450,
		18.464184, 11.794489, 24.675243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.428419, 12.173542, 25.476870>,  <19.018415, 11.906636, 25.087860>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.428419, 12.173542, 25.476870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.292923, 11.904263, 25.213945>,  <18.211626, 11.742695, 25.056190>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.292923, 11.904263, 25.213945>,  <18.428419, 12.173542, 25.476870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.292923, 11.904263, 25.213945> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484534, -0.474038, 0.735197,
		-0.806524, 0.567531, -0.165612,
		-0.338741, -0.673199, -0.657311,
		18.191301, 11.702303, 25.016752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.712177, 12.164283, 25.562227>,  <18.428419, 12.173542, 25.476870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.712177, 12.164283, 25.562227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.820770, 11.816898, 25.396301>,  <17.885927, 11.608467, 25.296745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.820770, 11.816898, 25.396301>,  <17.712177, 12.164283, 25.562227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.820770, 11.816898, 25.396301> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526891, -0.494789, 0.691064,
		-0.805408, 0.030950, -0.591912,
		0.271484, -0.868462, -0.414815,
		17.902216, 11.556360, 25.271856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044846, 11.772753, 25.553772>,  <17.712177, 12.164283, 25.562227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044846, 11.772753, 25.553772> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.318556, 11.490336, 25.480806>,  <17.482782, 11.320887, 25.437027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.318556, 11.490336, 25.480806>,  <17.044846, 11.772753, 25.553772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.318556, 11.490336, 25.480806> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514009, -0.644429, 0.566133,
		-0.517265, -0.293628, -0.803878,
		0.684274, -0.706041, -0.182413,
		17.523838, 11.278524, 25.426083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.676414, 11.178973, 25.582905>,  <17.044846, 11.772753, 25.553772>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.676414, 11.178973, 25.582905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.040483, 11.034231, 25.663548>,  <17.258924, 10.947386, 25.711933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.040483, 11.034231, 25.663548>,  <16.676414, 11.178973, 25.582905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.040483, 11.034231, 25.663548> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405968, -0.682533, 0.607732,
		-0.082306, -0.634988, -0.768125,
		0.910173, -0.361855, 0.201608,
		17.313536, 10.925674, 25.724030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.525118, 10.536819, 25.676683>,  <16.676414, 11.178973, 25.582905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.525118, 10.536819, 25.676683> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.891174, 10.549859, 25.837410>,  <17.110807, 10.557683, 25.933846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.891174, 10.549859, 25.837410>,  <16.525118, 10.536819, 25.676683>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.891174, 10.549859, 25.837410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256534, -0.721783, 0.642821,
		0.310979, -0.691351, -0.652170,
		0.915141, 0.032600, 0.401814,
		17.165716, 10.559639, 25.957954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.687119, 9.897845, 25.734253>,  <16.525118, 10.536819, 25.676683>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.687119, 9.897845, 25.734253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.912607, 10.094417, 25.999798>,  <17.047901, 10.212359, 26.159124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.912607, 10.094417, 25.999798>,  <16.687119, 9.897845, 25.734253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.912607, 10.094417, 25.999798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131365, -0.740169, 0.659464,
		0.815450, -0.458964, -0.352695,
		0.563724, 0.491429, 0.663863,
		17.081724, 10.241845, 26.198957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.051456, 9.366432, 26.012688>,  <16.687119, 9.897845, 25.734253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.051456, 9.366432, 26.012688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.074095, 9.670899, 26.271120>,  <17.087677, 9.853580, 26.426180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.074095, 9.670899, 26.271120>,  <17.051456, 9.366432, 26.012688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.074095, 9.670899, 26.271120> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134089, -0.635461, 0.760401,
		0.989352, -0.129668, 0.066101,
		0.056595, 0.761167, 0.646081,
		17.091074, 9.899250, 26.464945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.442341, 9.122881, 26.615601>,  <17.051456, 9.366432, 26.012688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.442341, 9.122881, 26.615601> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.217777, 9.428428, 26.742929>,  <17.083038, 9.611755, 26.819326>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.217777, 9.428428, 26.742929>,  <17.442341, 9.122881, 26.615601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.217777, 9.428428, 26.742929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253510, -0.524917, 0.812524,
		0.787752, 0.375460, 0.488341,
		-0.561409, 0.763866, 0.318322,
		17.049355, 9.657587, 26.838427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.590996, 9.186065, 27.377871>,  <17.442341, 9.122881, 26.615601>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.590996, 9.186065, 27.377871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.238266, 9.363119, 27.312805>,  <17.026628, 9.469352, 27.273766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.238266, 9.363119, 27.312805>,  <17.590996, 9.186065, 27.377871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.238266, 9.363119, 27.312805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376545, -0.453238, 0.807954,
		0.283904, 0.773723, 0.566349,
		-0.881823, 0.442637, -0.162666,
		16.973719, 9.495911, 27.264006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.483379, 9.248069, 28.052141>,  <17.590996, 9.186065, 27.377871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.483379, 9.248069, 28.052141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.142784, 9.321354, 27.855610>,  <16.938427, 9.365325, 27.737690>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.142784, 9.321354, 27.855610>,  <17.483379, 9.248069, 28.052141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.142784, 9.321354, 27.855610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523928, -0.258474, 0.811597,
		0.021700, 0.948485, 0.316077,
		-0.851486, 0.183214, -0.491329,
		16.887339, 9.376318, 27.708212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.980188, 9.578869, 28.498211>,  <17.483379, 9.248069, 28.052141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.980188, 9.578869, 28.498211> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.798876, 9.373649, 28.206646>,  <16.690088, 9.250517, 28.031706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.798876, 9.373649, 28.206646>,  <16.980188, 9.578869, 28.498211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.798876, 9.373649, 28.206646> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487068, -0.542307, 0.684593,
		-0.746526, 0.665344, -0.004073,
		-0.453281, -0.513050, -0.728914,
		16.662891, 9.219733, 27.987972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.303129, 9.621801, 28.658329>,  <16.980188, 9.578869, 28.498211>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.303129, 9.621801, 28.658329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.374674, 9.302564, 28.428179>,  <16.417601, 9.111021, 28.290089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.374674, 9.302564, 28.428179>,  <16.303129, 9.621801, 28.658329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.374674, 9.302564, 28.428179> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516766, -0.573849, 0.635335,
		-0.837234, 0.183698, -0.515067,
		0.178861, -0.798093, -0.575375,
		16.428331, 9.063136, 28.255566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.287340, 10.112902, 29.327991>,  <16.303129, 9.621801, 28.658329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.287340, 10.112902, 29.327991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.460236, 9.949830, 29.649729>,  <16.563972, 9.851987, 29.842772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.460236, 9.949830, 29.649729>,  <16.287340, 10.112902, 29.327991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.460236, 9.949830, 29.649729> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053638, -0.878768, -0.474226,
		0.900163, 0.248121, -0.357969,
		0.432237, -0.407680, 0.804343,
		16.589907, 9.827526, 29.891031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.295355, 10.351203, 30.183855>,  <16.287340, 10.112902, 29.327991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.295355, 10.351203, 30.183855> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.021252, 10.620103, 30.295929>,  <15.856790, 10.781443, 30.363173>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.021252, 10.620103, 30.295929>,  <16.295355, 10.351203, 30.183855>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.021252, 10.620103, 30.295929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074644, 0.447509, -0.891159,
		-0.724466, -0.589759, -0.356838,
		-0.685257, 0.672250, 0.280184,
		15.815675, 10.821778, 30.379984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.509841, 10.370733, 29.839390>,  <16.295355, 10.351203, 30.183855>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.509841, 10.370733, 29.839390> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.670362, 10.721722, 29.944464>,  <15.766674, 10.932315, 30.007507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.670362, 10.721722, 29.944464>,  <15.509841, 10.370733, 29.839390>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.670362, 10.721722, 29.944464> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111138, 0.331317, -0.936951,
		-0.909179, 0.346806, 0.230478,
		0.401301, 0.877471, 0.262683,
		15.790751, 10.984962, 30.023270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.042729, 10.861011, 29.533638>,  <15.509841, 10.370733, 29.839390>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.042729, 10.861011, 29.533638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364070, 11.089758, 29.600084>,  <15.556874, 11.227006, 29.639952>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364070, 11.089758, 29.600084>,  <15.042729, 10.861011, 29.533638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364070, 11.089758, 29.600084> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068942, 0.366384, -0.927906,
		-0.591502, 0.733982, 0.333760,
		0.803351, 0.571868, 0.166115,
		15.605075, 11.261318, 29.649920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.911503, 11.560411, 29.336210>,  <15.042729, 10.861011, 29.533638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.911503, 11.560411, 29.336210> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.310446, 11.533451, 29.325369>,  <15.549811, 11.517275, 29.318865>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.310446, 11.533451, 29.325369>,  <14.911503, 11.560411, 29.336210>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.310446, 11.533451, 29.325369> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003308, 0.414825, -0.909895,
		0.072571, 0.907402, 0.413952,
		0.997358, -0.067401, -0.027103,
		15.609653, 11.513230, 29.317238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.032229, 12.161482, 29.098253>,  <14.911503, 11.560411, 29.336210>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.032229, 12.161482, 29.098253> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364737, 11.952628, 29.021969>,  <15.564240, 11.827316, 28.976198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.364737, 11.952628, 29.021969>,  <15.032229, 12.161482, 29.098253>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364737, 11.952628, 29.021969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146156, 0.536314, -0.831267,
		0.536314, 0.663131, 0.522134,
		0.831267, -0.522134, -0.190712,
		15.614117, 11.795988, 28.964756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.474906, 12.697914, 28.946634>,  <15.032229, 12.161482, 29.098253>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.474906, 12.697914, 28.946634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.628970, 12.362377, 28.792755>,  <15.721409, 12.161055, 28.700428>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.628970, 12.362377, 28.792755>,  <15.474906, 12.697914, 28.946634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.628970, 12.362377, 28.792755> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269943, 0.501036, -0.822249,
		0.882486, 0.212852, 0.419419,
		0.385161, -0.838843, -0.384699,
		15.744518, 12.110724, 28.677345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.088943, 12.944452, 28.512983>,  <15.474906, 12.697914, 28.946634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.088943, 12.944452, 28.512983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.034069, 12.560055, 28.416925>,  <16.001144, 12.329416, 28.359291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.034069, 12.560055, 28.416925>,  <16.088943, 12.944452, 28.512983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.034069, 12.560055, 28.416925> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404902, 0.166853, -0.899007,
		0.904010, -0.220566, 0.366219,
		-0.137186, -0.960994, -0.240145,
		15.992913, 12.271756, 28.344881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.707140, 12.763996, 28.179441>,  <16.088943, 12.944452, 28.512983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.707140, 12.763996, 28.179441> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.410458, 12.529873, 28.048420>,  <16.232449, 12.389399, 27.969807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.410458, 12.529873, 28.048420>,  <16.707140, 12.763996, 28.179441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.410458, 12.529873, 28.048420> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220730, 0.248149, -0.943239,
		0.633368, -0.771904, -0.054858,
		-0.741704, -0.585308, -0.327552,
		16.187946, 12.354280, 27.950155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.880623, 12.621931, 27.515926>,  <16.707140, 12.763996, 28.179441>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.880623, 12.621931, 27.515926> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.501751, 12.493686, 27.518982>,  <16.274427, 12.416739, 27.520815>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.501751, 12.493686, 27.518982>,  <16.880623, 12.621931, 27.515926>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.501751, 12.493686, 27.518982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048714, 0.120284, -0.991544,
		0.316985, -0.939541, -0.129549,
		-0.947179, -0.320615, 0.007641,
		16.217598, 12.397502, 27.521275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.877995, 12.093356, 27.037790>,  <16.880623, 12.621931, 27.515926>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.877995, 12.093356, 27.037790> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.513039, 12.250439, 27.083969>,  <16.294065, 12.344688, 27.111677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.513039, 12.250439, 27.083969>,  <16.877995, 12.093356, 27.037790>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.513039, 12.250439, 27.083969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070895, 0.126174, -0.989472,
		-0.403139, -0.910967, -0.087279,
		-0.912389, 0.392706, 0.115449,
		16.239323, 12.368251, 27.118605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395933, 11.765474, 26.587978>,  <16.877995, 12.093356, 27.037790>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395933, 11.765474, 26.587978> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.242001, 12.129277, 26.650846>,  <16.149641, 12.347559, 26.688566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.242001, 12.129277, 26.650846>,  <16.395933, 11.765474, 26.587978>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.242001, 12.129277, 26.650846> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007423, 0.173326, -0.984836,
		-0.922957, -0.377829, -0.073452,
		-0.384831, 0.909507, 0.157168,
		16.126551, 12.402129, 26.697996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.888687, 11.944256, 26.017179>,  <16.395933, 11.765474, 26.587978>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.888687, 11.944256, 26.017179> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.990054, 12.302935, 26.162350>,  <16.050875, 12.518142, 26.249453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.990054, 12.302935, 26.162350>,  <15.888687, 11.944256, 26.017179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.990054, 12.302935, 26.162350> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137284, 0.338039, -0.931065,
		-0.957566, 0.285772, -0.037437,
		0.253417, 0.896696, 0.362927,
		16.066080, 12.571943, 26.271227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.648365, 12.367013, 25.517141>,  <15.888687, 11.944256, 26.017179>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.648365, 12.367013, 25.517141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.883180, 12.617414, 25.722473>,  <16.024069, 12.767654, 25.845673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.883180, 12.617414, 25.722473>,  <15.648365, 12.367013, 25.517141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.883180, 12.617414, 25.722473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283530, 0.434947, -0.854653,
		-0.758287, 0.647257, 0.077840,
		0.587036, 0.626002, 0.513332,
		16.059290, 12.805214, 25.876472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.377249, 13.082275, 25.253841>,  <15.648365, 12.367013, 25.517141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.377249, 13.082275, 25.253841> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.743048, 13.116920, 25.411928>,  <15.962527, 13.137706, 25.506781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.743048, 13.116920, 25.411928>,  <15.377249, 13.082275, 25.253841>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.743048, 13.116920, 25.411928> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278841, 0.572867, -0.770760,
		-0.293162, 0.815060, 0.499734,
		0.914496, 0.086611, 0.395215,
		16.017397, 13.142902, 25.530493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.000836, 13.567032, 25.775854>,  <15.377249, 13.082275, 25.253841>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.000836, 13.567032, 25.775854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.675247, 13.799392, 25.775152>,  <14.479894, 13.938807, 25.774731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.675247, 13.799392, 25.775152>,  <15.000836, 13.567032, 25.775854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.675247, 13.799392, 25.775152> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203435, -0.282227, 0.937530,
		0.544116, 0.763481, 0.347900,
		-0.813973, 0.580900, -0.001754,
		14.431055, 13.973661, 25.774626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.054597, 14.112003, 26.379040>,  <15.000836, 13.567032, 25.775854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.054597, 14.112003, 26.379040> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.672450, 14.084403, 26.264139>,  <14.443162, 14.067842, 26.195198>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.672450, 14.084403, 26.264139>,  <15.054597, 14.112003, 26.379040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.672450, 14.084403, 26.264139> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261132, -0.257443, 0.930341,
		-0.138145, 0.963827, 0.227934,
		-0.955367, -0.069001, -0.287251,
		14.385840, 14.063703, 26.177963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.620460, 14.504171, 26.898123>,  <15.054597, 14.112003, 26.379040>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.620460, 14.504171, 26.898123> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.366914, 14.241877, 26.734062>,  <14.214787, 14.084499, 26.635626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.366914, 14.241877, 26.734062>,  <14.620460, 14.504171, 26.898123>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.366914, 14.241877, 26.734062> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388096, -0.189048, 0.902021,
		-0.669027, 0.730938, -0.134659,
		-0.633865, -0.655737, -0.410152,
		14.176754, 14.045156, 26.611017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.993865, 14.683466, 27.224861>,  <14.620460, 14.504171, 26.898123>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.993865, 14.683466, 27.224861> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.961591, 14.314134, 27.074688>,  <13.942226, 14.092534, 26.984585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.961591, 14.314134, 27.074688>,  <13.993865, 14.683466, 27.224861>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.961591, 14.314134, 27.074688> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370910, -0.321795, 0.871134,
		-0.925157, 0.209538, -0.316509,
		-0.080685, -0.923332, -0.375431,
		13.937386, 14.037134, 26.962059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.299751, 14.472271, 27.328518>,  <13.993865, 14.683466, 27.224861>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.299751, 14.472271, 27.328518> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.505876, 14.132389, 27.283873>,  <13.629550, 13.928460, 27.257086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.505876, 14.132389, 27.283873>,  <13.299751, 14.472271, 27.328518>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.505876, 14.132389, 27.283873> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407952, -0.357744, 0.839997,
		-0.753677, -0.387327, -0.530988,
		0.515311, -0.849704, -0.111613,
		13.660469, 13.877478, 27.250389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.786900, 13.987219, 27.442055>,  <13.299751, 14.472271, 27.328518>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.786900, 13.987219, 27.442055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.129556, 13.784275, 27.479477>,  <13.335150, 13.662509, 27.501930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.129556, 13.784275, 27.479477>,  <12.786900, 13.987219, 27.442055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.129556, 13.784275, 27.479477> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389341, -0.516778, 0.762466,
		-0.338495, -0.689586, -0.640229,
		0.856641, -0.507359, 0.093557,
		13.386548, 13.632068, 27.507544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.568457, 13.386582, 27.598886>,  <12.786900, 13.987219, 27.442055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.568457, 13.386582, 27.598886> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.948624, 13.362221, 27.720869>,  <13.176723, 13.347604, 27.794060>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.948624, 13.362221, 27.720869>,  <12.568457, 13.386582, 27.598886>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.948624, 13.362221, 27.720869> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280621, -0.590567, 0.756626,
		0.134016, -0.804688, -0.578375,
		0.950417, -0.060904, 0.304958,
		13.233748, 13.343949, 27.812357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352286, 12.752421, 27.219734>,  <12.568457, 13.386582, 27.598886>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352286, 12.752421, 27.219734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.005889, 12.588769, 27.104727>,  <11.798051, 12.490578, 27.035723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.005889, 12.588769, 27.104727>,  <12.352286, 12.752421, 27.219734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.005889, 12.588769, 27.104727> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089713, 0.438527, -0.894229,
		0.491946, -0.800189, -0.343056,
		-0.865992, -0.409135, -0.287519,
		11.746091, 12.466029, 27.018471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.511311, 12.447292, 26.550968>,  <12.352286, 12.752421, 27.219734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.511311, 12.447292, 26.550968> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.118023, 12.506560, 26.593538>,  <11.882051, 12.542121, 26.619080>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<12.118023, 12.506560, 26.593538>,  <12.511311, 12.447292, 26.550968>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<12.118023, 12.506560, 26.593538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052961, 0.326411, -0.943743,
		-0.174573, -0.933542, -0.313086,
		-0.983219, 0.148171, 0.106424,
		11.823057, 12.551011, 26.625465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.309335, 12.263421, 25.936594>,  <12.511311, 12.447292, 26.550968>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.309335, 12.263421, 25.936594> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.988432, 12.459196, 26.073317>,  <11.795890, 12.576661, 26.155350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.988432, 12.459196, 26.073317>,  <12.309335, 12.263421, 25.936594>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.988432, 12.459196, 26.073317> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243639, 0.254273, -0.935941,
		-0.544997, -0.834144, -0.084746,
		-0.802258, 0.489438, 0.341808,
		11.747754, 12.606028, 26.175859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.714152, 11.853303, 25.722450>,  <12.309335, 12.263421, 25.936594>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.714152, 11.853303, 25.722450> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.630022, 12.238677, 25.788849>,  <11.579544, 12.469902, 25.828688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.630022, 12.238677, 25.788849>,  <11.714152, 11.853303, 25.722450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.630022, 12.238677, 25.788849> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189707, 0.126347, -0.973677,
		-0.959049, -0.236280, 0.156197,
		-0.210325, 0.963436, 0.165997,
		11.566924, 12.527708, 25.838648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.215060, 11.985098, 25.140827>,  <11.714152, 11.853303, 25.722450>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.215060, 11.985098, 25.140827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.338452, 12.336699, 25.286261>,  <11.412488, 12.547660, 25.373520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.338452, 12.336699, 25.286261>,  <11.215060, 11.985098, 25.140827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338452, 12.336699, 25.286261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018427, 0.387674, -0.921613,
		-0.951052, 0.277600, 0.135788,
		0.308481, 0.879003, 0.363582,
		11.430997, 12.600401, 25.395336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.031836, 12.497007, 24.712523>,  <11.215060, 11.985098, 25.140827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.031836, 12.497007, 24.712523> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.294311, 12.730356, 24.903978>,  <11.451796, 12.870365, 25.018852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.294311, 12.730356, 24.903978>,  <11.031836, 12.497007, 24.712523>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.294311, 12.730356, 24.903978> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262695, 0.418020, -0.869627,
		-0.707396, 0.696374, 0.121051,
		0.656187, 0.583371, 0.478640,
		11.491167, 12.905368, 25.047571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.817095, 13.217796, 24.690825>,  <11.031836, 12.497007, 24.712523>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.817095, 13.217796, 24.690825> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.214062, 13.208128, 24.739027>,  <11.452242, 13.202327, 24.767948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<11.214062, 13.208128, 24.739027>,  <10.817095, 13.217796, 24.690825>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<11.214062, 13.208128, 24.739027> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115742, 0.513686, -0.850136,
		-0.041355, 0.857638, 0.512589,
		0.992418, -0.024171, 0.120508,
		11.511787, 13.200877, 24.775179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<15.002048, 7.892457, 26.718485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.145171, 8.255874, 26.804764>,  <15.231045, 8.473924, 26.856531>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.145171, 8.255874, 26.804764>,  <15.002048, 7.892457, 26.718485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145171, 8.255874, 26.804764> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022869, 0.222392, -0.974689,
		-0.933516, 0.353682, 0.058795,
		0.357806, 0.908543, 0.215695,
		15.252513, 8.528437, 26.869473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.601480, 8.410477, 26.289642>,  <15.002048, 7.892457, 26.718485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.601480, 8.410477, 26.289642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.986181, 8.471318, 26.380766>,  <15.217002, 8.507823, 26.435440>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.986181, 8.471318, 26.380766>,  <14.601480, 8.410477, 26.289642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.986181, 8.471318, 26.380766> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189557, 0.230795, -0.954359,
		-0.197739, 0.961040, 0.193136,
		0.961752, 0.152104, 0.227809,
		15.274707, 8.516950, 26.449108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.710541, 9.105863, 25.982700>,  <14.601480, 8.410477, 26.289642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.710541, 9.105863, 25.982700> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.045952, 8.894898, 26.037413>,  <15.247199, 8.768320, 26.070240>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.045952, 8.894898, 26.037413>,  <14.710541, 9.105863, 25.982700>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.045952, 8.894898, 26.037413> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369105, 0.365195, -0.854631,
		0.400789, 0.767119, 0.500896,
		0.838528, -0.527410, 0.136781,
		15.297510, 8.736675, 26.078447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370008, 9.587506, 25.834120>,  <14.710541, 9.105863, 25.982700>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370008, 9.587506, 25.834120> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.486984, 9.206234, 25.803335>,  <15.557170, 8.977470, 25.784864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.486984, 9.206234, 25.803335>,  <15.370008, 9.587506, 25.834120>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.486984, 9.206234, 25.803335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325258, 0.174827, -0.929324,
		0.899270, 0.246739, 0.361156,
		0.292440, -0.953182, -0.076963,
		15.574717, 8.920280, 25.780247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.081415, 9.546030, 25.404837>,  <15.370008, 9.587506, 25.834120>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.081415, 9.546030, 25.404837> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.934596, 9.177961, 25.350340>,  <15.846505, 8.957120, 25.317642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.934596, 9.177961, 25.350340>,  <16.081415, 9.546030, 25.404837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.934596, 9.177961, 25.350340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177393, 0.074537, -0.981313,
		0.913131, -0.384357, 0.135873,
		-0.367047, -0.920171, -0.136244,
		15.824482, 8.901910, 25.309467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.521132, 9.254101, 24.902014>,  <16.081415, 9.546030, 25.404837>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.521132, 9.254101, 24.902014> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.167038, 9.068082, 24.898096>,  <15.954582, 8.956470, 24.895746>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.167038, 9.068082, 24.898096>,  <16.521132, 9.254101, 24.902014>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.167038, 9.068082, 24.898096> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064423, 0.143429, -0.987562,
		0.460667, -0.873590, -0.156927,
		-0.885232, -0.465047, -0.009793,
		15.901468, 8.928568, 24.895159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.463369, 8.550861, 24.537252>,  <16.521132, 9.254101, 24.902014>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.463369, 8.550861, 24.537252> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.085398, 8.681653, 24.531677>,  <15.858615, 8.760128, 24.528332>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.085398, 8.681653, 24.531677>,  <16.463369, 8.550861, 24.537252>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.085398, 8.681653, 24.531677> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040034, 0.073219, -0.996512,
		-0.324817, -0.942191, -0.082277,
		-0.944929, 0.326978, -0.013937,
		15.801919, 8.779747, 24.527496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449177, 8.485713, 23.904135>,  <16.463369, 8.550861, 24.537252>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449177, 8.485713, 23.904135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.094688, 8.647378, 23.994699>,  <15.881995, 8.744377, 24.049038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.094688, 8.647378, 23.994699>,  <16.449177, 8.485713, 23.904135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094688, 8.647378, 23.994699> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113994, 0.283457, -0.952186,
		-0.449016, -0.869658, -0.205134,
		-0.886222, 0.404162, 0.226413,
		15.828821, 8.768626, 24.062624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.977502, 8.199308, 23.443792>,  <16.449177, 8.485713, 23.904135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.977502, 8.199308, 23.443792> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.846490, 8.556259, 23.567978>,  <15.767883, 8.770430, 23.642490>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.846490, 8.556259, 23.567978>,  <15.977502, 8.199308, 23.443792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.846490, 8.556259, 23.567978> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034911, 0.316936, -0.947804,
		-0.944196, -0.321272, -0.072652,
		-0.327529, 0.892377, 0.310465,
		15.748231, 8.823972, 23.661118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.295516, 8.448904, 23.050072>,  <15.977502, 8.199308, 23.443792>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.295516, 8.448904, 23.050072> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.470686, 8.788615, 23.168020>,  <15.575788, 8.992442, 23.238791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.470686, 8.788615, 23.168020>,  <15.295516, 8.448904, 23.050072>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.470686, 8.788615, 23.168020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086245, 0.286797, -0.954101,
		-0.894865, 0.443256, 0.052350,
		0.437925, 0.849277, 0.294873,
		15.602063, 9.043398, 23.256483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.987784, 8.952122, 22.668968>,  <15.295516, 8.448904, 23.050072>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.987784, 8.952122, 22.668968> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.314553, 9.137891, 22.805758>,  <15.510614, 9.249352, 22.887831>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.314553, 9.137891, 22.805758>,  <14.987784, 8.952122, 22.668968>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.314553, 9.137891, 22.805758> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210478, 0.311977, -0.926482,
		-0.536969, 0.828843, 0.157111,
		0.816923, 0.464424, 0.341975,
		15.559630, 9.277218, 22.908350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.027156, 9.541558, 22.374092>,  <14.987784, 8.952122, 22.668968>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.027156, 9.541558, 22.374092> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.410945, 9.537534, 22.486742>,  <15.641218, 9.535119, 22.554331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.410945, 9.537534, 22.486742>,  <15.027156, 9.541558, 22.374092>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.410945, 9.537534, 22.486742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249184, 0.497013, -0.831195,
		-0.131607, 0.867684, 0.479378,
		0.959472, -0.010062, 0.281624,
		15.698787, 9.534515, 22.571230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.690988, 10.182210, 22.538544>,  <15.027156, 9.541558, 22.374092>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.690988, 10.182210, 22.538544> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.320966, 10.315125, 22.464943>,  <14.098952, 10.394875, 22.420782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.320966, 10.315125, 22.464943>,  <14.690988, 10.182210, 22.538544>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.320966, 10.315125, 22.464943> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235906, -0.122948, 0.963967,
		0.297693, 0.935130, 0.192122,
		-0.925055, 0.332289, -0.184002,
		14.043449, 10.414812, 22.409742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.452459, 10.798488, 22.935665>,  <14.690988, 10.182210, 22.538544>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.452459, 10.798488, 22.935665> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.120238, 10.595396, 22.844105>,  <13.920906, 10.473541, 22.789169>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.120238, 10.595396, 22.844105>,  <14.452459, 10.798488, 22.935665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120238, 10.595396, 22.844105> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289199, 0.041926, 0.956351,
		-0.475969, 0.860497, -0.181656,
		-0.830553, -0.507728, -0.228899,
		13.871073, 10.443078, 22.775434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.995360, 11.134101, 23.294155>,  <14.452459, 10.798488, 22.935665>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.995360, 11.134101, 23.294155> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.812831, 10.789434, 23.205341>,  <13.703313, 10.582635, 23.152052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.812831, 10.789434, 23.205341>,  <13.995360, 11.134101, 23.294155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812831, 10.789434, 23.205341> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481197, 0.029070, 0.876131,
		-0.748477, 0.506643, -0.427896,
		-0.456325, -0.861666, -0.222037,
		13.675934, 10.530934, 23.138731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.250093, 11.193080, 23.424738>,  <13.995360, 11.134101, 23.294155>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.250093, 11.193080, 23.424738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.340569, 10.803660, 23.437647>,  <13.394855, 10.570009, 23.445393>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.340569, 10.803660, 23.437647>,  <13.250093, 11.193080, 23.424738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.340569, 10.803660, 23.437647> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430862, -0.070280, 0.899677,
		-0.873611, -0.217404, -0.435362,
		0.226190, -0.973548, 0.032274,
		13.408426, 10.511596, 23.447329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.619036, 10.926799, 23.746738>,  <13.250093, 11.193080, 23.424738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.619036, 10.926799, 23.746738> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.891391, 10.636149, 23.783424>,  <13.054804, 10.461760, 23.805435>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.891391, 10.636149, 23.783424>,  <12.619036, 10.926799, 23.746738>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.891391, 10.636149, 23.783424> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421423, -0.286288, 0.860489,
		-0.598996, -0.624546, -0.501146,
		0.680887, -0.726624, 0.091713,
		13.095657, 10.418162, 23.810938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.236076, 10.293830, 23.803200>,  <12.619036, 10.926799, 23.746738>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.236076, 10.293830, 23.803200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.576137, 10.192827, 23.988016>,  <12.780173, 10.132226, 24.098906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.576137, 10.192827, 23.988016>,  <12.236076, 10.293830, 23.803200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.576137, 10.192827, 23.988016> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525100, -0.471399, 0.708557,
		0.038891, -0.844999, -0.533352,
		0.850151, -0.252507, 0.462042,
		12.831182, 10.117075, 24.126629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.102240, 9.625613, 24.246176>,  <12.236076, 10.293830, 23.803200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.102240, 9.625613, 24.246176> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.451470, 9.753800, 24.393166>,  <12.661009, 9.830713, 24.481359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.451470, 9.753800, 24.393166>,  <12.102240, 9.625613, 24.246176>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.451470, 9.753800, 24.393166> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251268, -0.350162, 0.902358,
		0.417853, -0.880163, -0.225195,
		0.873076, 0.320469, 0.367473,
		12.713393, 9.849941, 24.503408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.444489, 9.016103, 24.483038>,  <12.102240, 9.625613, 24.246176>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.444489, 9.016103, 24.483038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.582655, 9.333300, 24.683777>,  <12.665555, 9.523618, 24.804220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.582655, 9.333300, 24.683777>,  <12.444489, 9.016103, 24.483038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.582655, 9.333300, 24.683777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092514, -0.503384, 0.859096,
		0.933878, -0.343174, -0.100515,
		0.345417, 0.792992, 0.501848,
		12.686280, 9.571198, 24.834332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.765280, 8.695808, 25.053398>,  <12.444489, 9.016103, 24.483038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.765280, 8.695808, 25.053398> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.774608, 9.077415, 25.172935>,  <12.780205, 9.306379, 25.244658>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.774608, 9.077415, 25.172935>,  <12.765280, 8.695808, 25.053398>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.774608, 9.077415, 25.172935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205187, -0.287994, 0.935392,
		0.978445, -0.083132, 0.189036,
		0.023320, 0.954017, 0.298844,
		12.781604, 9.363621, 25.262589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.166996, 8.798568, 25.660311>,  <12.765280, 8.695808, 25.053398>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.166996, 8.798568, 25.660311> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.920598, 9.113141, 25.678526>,  <12.772759, 9.301885, 25.689455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.920598, 9.113141, 25.678526>,  <13.166996, 8.798568, 25.660311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.920598, 9.113141, 25.678526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154961, -0.177647, 0.971817,
		0.772359, 0.591578, 0.231296,
		-0.615994, 0.786433, 0.045536,
		12.735800, 9.349072, 25.692186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.314845, 9.093054, 26.297565>,  <13.166996, 8.798568, 25.660311>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.314845, 9.093054, 26.297565> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.945553, 9.191016, 26.179131>,  <12.723977, 9.249793, 26.108070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.945553, 9.191016, 26.179131>,  <13.314845, 9.093054, 26.297565>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.945553, 9.191016, 26.179131> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337904, -0.150608, 0.929052,
		0.182937, 0.957778, 0.221800,
		-0.923231, 0.244905, -0.296085,
		12.668584, 9.264488, 26.090305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.104459, 9.406766, 26.887220>,  <13.314845, 9.093054, 26.297565>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.104459, 9.406766, 26.887220> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.752669, 9.350934, 26.705214>,  <12.541595, 9.317435, 26.596008>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.752669, 9.350934, 26.705214>,  <13.104459, 9.406766, 26.887220>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.752669, 9.350934, 26.705214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408378, -0.269708, 0.872058,
		-0.244444, 0.952772, 0.180201,
		-0.879474, -0.139579, -0.455019,
		12.488827, 9.309060, 26.568708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.633940, 9.733485, 27.244087>,  <13.104459, 9.406766, 26.887220>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.633940, 9.733485, 27.244087> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.400334, 9.463402, 27.063856>,  <12.260171, 9.301352, 26.955717>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.400334, 9.463402, 27.063856>,  <12.633940, 9.733485, 27.244087>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.400334, 9.463402, 27.063856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478237, -0.162317, 0.863100,
		-0.655909, 0.719547, -0.228114,
		-0.584014, -0.675208, -0.450579,
		12.225130, 9.260839, 26.928682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.005103, 9.983962, 27.267910>,  <12.633940, 9.733485, 27.244087>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.005103, 9.983962, 27.267910> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.059976, 9.587914, 27.256275>,  <12.092899, 9.350286, 27.249294>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.059976, 9.587914, 27.256275>,  <12.005103, 9.983962, 27.267910>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.059976, 9.587914, 27.256275> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422269, -0.085019, 0.902475,
		-0.896030, -0.111519, -0.429759,
		0.137180, -0.990119, -0.029088,
		12.101130, 9.290879, 27.247549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.093875, 9.672890, 27.890783>,  <12.005103, 9.983962, 27.267910>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.093875, 9.672890, 27.890783> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.971778, 9.897437, 28.198469>,  <11.898520, 10.032166, 28.383081>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.971778, 9.897437, 28.198469>,  <12.093875, 9.672890, 27.890783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.971778, 9.897437, 28.198469> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049096, 0.797414, -0.601432,
		-0.951008, -0.221348, -0.215843,
		-0.305242, 0.561370, 0.769215,
		11.880205, 10.065848, 28.429234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.440748, 10.016020, 27.726957>,  <12.093875, 9.672890, 27.890783>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.440748, 10.016020, 27.726957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.587877, 10.240770, 28.023336>,  <11.676154, 10.375621, 28.201164>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.587877, 10.240770, 28.023336>,  <11.440748, 10.016020, 27.726957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.587877, 10.240770, 28.023336> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180893, 0.824818, -0.535680,
		-0.912132, 0.063002, 0.405026,
		0.367821, 0.561877, 0.740946,
		11.698224, 10.409333, 28.245621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.005626, 10.520518, 27.820736>,  <11.440748, 10.016020, 27.726957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.005626, 10.520518, 27.820736> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.352524, 10.650410, 27.971701>,  <11.560662, 10.728345, 28.062279>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.352524, 10.650410, 27.971701>,  <11.005626, 10.520518, 27.820736>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.352524, 10.650410, 27.971701> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188035, 0.915514, -0.355637,
		-0.461010, 0.237458, 0.855034,
		0.867244, 0.324728, 0.377411,
		11.612698, 10.747828, 28.084925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.769032, 11.104667, 28.171535>,  <11.005626, 10.520518, 27.820736>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.769032, 11.104667, 28.171535> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.164625, 11.117991, 28.113844>,  <11.401981, 11.125986, 28.079229>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.164625, 11.117991, 28.113844>,  <10.769032, 11.104667, 28.171535>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.164625, 11.117991, 28.113844> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083103, 0.931259, -0.354756,
		0.122495, 0.362833, 0.923768,
		0.988984, 0.033312, -0.144227,
		11.461320, 11.127985, 28.070576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.973378, 11.858187, 28.297667>,  <10.769032, 11.104667, 28.171535>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.973378, 11.858187, 28.297667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.258064, 11.701029, 28.064739>,  <11.428876, 11.606734, 27.924982>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.258064, 11.701029, 28.064739>,  <10.973378, 11.858187, 28.297667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.258064, 11.701029, 28.064739> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026733, 0.813211, -0.581354,
		0.701960, 0.429326, 0.568271,
		0.711715, -0.392896, -0.582318,
		11.471579, 11.583160, 27.890043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.416045, 12.477208, 28.130472>,  <10.973378, 11.858187, 28.297667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.416045, 12.477208, 28.130472> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.534225, 12.201876, 27.865471>,  <11.605132, 12.036676, 27.706470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.534225, 12.201876, 27.865471>,  <11.416045, 12.477208, 28.130472>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.534225, 12.201876, 27.865471> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023446, 0.698476, -0.715250,
		0.955071, 0.195787, 0.222502,
		0.295449, -0.688331, -0.662504,
		11.622859, 11.995377, 27.666719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.938758, 12.879130, 27.831310>,  <11.416045, 12.477208, 28.130472>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.938758, 12.879130, 27.831310> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.796071, 12.582918, 27.603497>,  <11.710459, 12.405190, 27.466808>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<11.796071, 12.582918, 27.603497>,  <11.938758, 12.879130, 27.831310>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<11.796071, 12.582918, 27.603497> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097735, 0.576711, -0.811081,
		0.929086, -0.344990, -0.133348,
		-0.356718, -0.740531, -0.569532,
		11.689055, 12.360759, 27.432636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.688412, 12.679794, 27.924545>,  <11.938758, 12.879130, 27.831310>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.688412, 12.679794, 27.924545> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.960769, 12.919533, 28.092911>,  <13.124183, 13.063375, 28.193930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.960769, 12.919533, 28.092911>,  <12.688412, 12.679794, 27.924545>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.960769, 12.919533, 28.092911> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077194, -0.512787, 0.855039,
		0.728303, -0.614682, -0.302888,
		0.680894, 0.599346, 0.420914,
		13.165037, 13.099337, 28.219185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.985444, 12.262373, 28.352615>,  <12.688412, 12.679794, 27.924545>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.985444, 12.262373, 28.352615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.109166, 12.622446, 28.475254>,  <13.183399, 12.838490, 28.548838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.109166, 12.622446, 28.475254>,  <12.985444, 12.262373, 28.352615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.109166, 12.622446, 28.475254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148989, -0.364299, 0.919287,
		0.939219, -0.238660, -0.246796,
		0.309304, 0.900182, 0.306599,
		13.201958, 12.892501, 28.567234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.481024, 12.081323, 28.843153>,  <12.985444, 12.262373, 28.352615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.481024, 12.081323, 28.843153> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.357547, 12.456437, 28.906733>,  <13.283461, 12.681506, 28.944881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.357547, 12.456437, 28.906733>,  <13.481024, 12.081323, 28.843153>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.357547, 12.456437, 28.906733> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088484, -0.138075, 0.986461,
		0.947037, 0.318578, -0.040357,
		-0.308693, 0.937786, 0.158951,
		13.264939, 12.737773, 28.954418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.056434, 12.385156, 29.140949>,  <13.481024, 12.081323, 28.843153>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.056434, 12.385156, 29.140949> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.705315, 12.548023, 29.241892>,  <13.494643, 12.645744, 29.302458>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.705315, 12.548023, 29.241892>,  <14.056434, 12.385156, 29.140949>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.705315, 12.548023, 29.241892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207424, -0.151783, 0.966404,
		0.431794, 0.900652, 0.048778,
		-0.877798, 0.407170, 0.252356,
		13.441976, 12.670174, 29.317598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175321, 12.618127, 29.788397>,  <14.056434, 12.385156, 29.140949>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.175321, 12.618127, 29.788397> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.776653, 12.604321, 29.758837>,  <13.537453, 12.596037, 29.741100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.776653, 12.604321, 29.758837>,  <14.175321, 12.618127, 29.788397>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.776653, 12.604321, 29.758837> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061129, -0.283755, 0.956946,
		-0.053999, 0.958276, 0.280699,
		-0.996668, -0.034516, -0.073901,
		13.477653, 12.593966, 29.736666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.958093, 12.797540, 30.478342>,  <14.175321, 12.618127, 29.788397>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.958093, 12.797540, 30.478342> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.632293, 12.626055, 30.321985>,  <13.436813, 12.523164, 30.228170>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.632293, 12.626055, 30.321985>,  <13.958093, 12.797540, 30.478342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.632293, 12.626055, 30.321985> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208220, -0.412860, 0.886674,
		-0.541512, 0.803587, 0.247007,
		-0.814499, -0.428713, -0.390891,
		13.387943, 12.497440, 30.204718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.441822, 13.004737, 30.885670>,  <13.958093, 12.797540, 30.478342>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.441822, 13.004737, 30.885670> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.328156, 12.666053, 30.705744>,  <13.259955, 12.462843, 30.597788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.328156, 12.666053, 30.705744>,  <13.441822, 13.004737, 30.885670>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.328156, 12.666053, 30.705744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206507, -0.404092, 0.891103,
		-0.936271, 0.346112, -0.060021,
		-0.284167, -0.846709, -0.449814,
		13.242906, 12.412040, 30.570799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.955017, 12.732965, 31.396620>,  <13.441822, 13.004737, 30.885670>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.955017, 12.732965, 31.396620> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.064795, 12.440409, 31.146900>,  <13.130661, 12.264875, 30.997068>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.064795, 12.440409, 31.146900>,  <12.955017, 12.732965, 31.396620>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.064795, 12.440409, 31.146900> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063287, -0.634081, 0.770672,
		-0.959518, -0.251016, -0.127732,
		0.274443, -0.731391, -0.624299,
		13.147127, 12.220992, 30.959610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.352157, 12.301553, 31.424803>,  <12.955017, 12.732965, 31.396620>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.352157, 12.301553, 31.424803> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.691678, 12.110798, 31.333490>,  <12.895391, 11.996345, 31.278704>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<12.691678, 12.110798, 31.333490>,  <12.352157, 12.301553, 31.424803>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<12.691678, 12.110798, 31.333490> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095066, -0.562394, 0.821387,
		-0.520088, -0.675496, -0.522698,
		0.848805, -0.476884, -0.228278,
		12.946319, 11.967731, 31.265007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<16.274311, 18.822968, 16.776348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.613220, 18.641821, 16.887375>,  <16.816565, 18.533133, 16.953991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.613220, 18.641821, 16.887375>,  <16.274311, 18.822968, 16.776348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.613220, 18.641821, 16.887375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489587, -0.463176, 0.738765,
		-0.205998, -0.761828, -0.614152,
		0.847272, -0.452865, 0.277567,
		16.867401, 18.505960, 16.970644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.066744, 18.183603, 16.786907>,  <16.274311, 18.822968, 16.776348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.066744, 18.183603, 16.786907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389662, 18.241060, 17.015867>,  <16.583412, 18.275534, 17.153244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.389662, 18.241060, 17.015867>,  <16.066744, 18.183603, 16.786907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.389662, 18.241060, 17.015867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521781, -0.279414, 0.806023,
		0.275715, -0.949366, -0.150620,
		0.807295, 0.143642, 0.572400,
		16.631851, 18.284153, 17.187588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.209085, 17.558903, 17.157352>,  <16.066744, 18.183603, 16.786907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.209085, 17.558903, 17.157352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.409969, 17.823372, 17.380291>,  <16.530500, 17.982054, 17.514053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.409969, 17.823372, 17.380291>,  <16.209085, 17.558903, 17.157352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.409969, 17.823372, 17.380291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493497, -0.310127, 0.812577,
		0.710103, -0.683133, 0.170538,
		0.502210, 0.661173, 0.557346,
		16.560633, 18.021725, 17.547495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.374027, 17.173235, 17.709791>,  <16.209085, 17.558903, 17.157352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.374027, 17.173235, 17.709791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.434113, 17.544540, 17.845886>,  <16.470163, 17.767324, 17.927544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.434113, 17.544540, 17.845886>,  <16.374027, 17.173235, 17.709791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434113, 17.544540, 17.845886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248239, -0.297707, 0.921818,
		0.956981, -0.222930, 0.185711,
		0.150213, 0.928263, 0.340240,
		16.479176, 17.823019, 17.947958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.763039, 17.067888, 18.344044>,  <16.374027, 17.173235, 17.709791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.763039, 17.067888, 18.344044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592390, 17.429455, 18.356224>,  <16.490002, 17.646395, 18.363533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.592390, 17.429455, 18.356224>,  <16.763039, 17.067888, 18.344044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.592390, 17.429455, 18.356224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290790, -0.168970, 0.941748,
		0.856408, 0.392916, 0.334936,
		-0.426622, 0.903917, 0.030452,
		16.464403, 17.700630, 18.365360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.926241, 17.378576, 18.950676>,  <16.763039, 17.067888, 18.344044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.926241, 17.378576, 18.950676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586033, 17.565670, 18.854479>,  <16.381908, 17.677927, 18.796761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.586033, 17.565670, 18.854479>,  <16.926241, 17.378576, 18.950676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.586033, 17.565670, 18.854479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358551, -0.181130, 0.915769,
		0.384776, 0.865111, 0.321762,
		-0.850522, 0.467734, -0.240492,
		16.330875, 17.705990, 18.782331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.742426, 17.800400, 19.523783>,  <16.926241, 17.378576, 18.950676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.742426, 17.800400, 19.523783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396820, 17.780115, 19.323420>,  <16.189457, 17.767944, 19.203201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.396820, 17.780115, 19.323420>,  <16.742426, 17.800400, 19.523783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.396820, 17.780115, 19.323420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489751, -0.145999, 0.859551,
		-0.116723, 0.987984, 0.101308,
		-0.864014, -0.050714, -0.500908,
		16.137615, 17.764900, 19.173147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.269344, 18.218618, 19.893972>,  <16.742426, 17.800400, 19.523783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.269344, 18.218618, 19.893972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054604, 17.954994, 19.683287>,  <15.925759, 17.796820, 19.556875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.054604, 17.954994, 19.683287>,  <16.269344, 18.218618, 19.893972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.054604, 17.954994, 19.683287> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507339, -0.246629, 0.825701,
		-0.674090, 0.710502, -0.201964,
		-0.536852, -0.659061, -0.526715,
		15.893548, 17.757277, 19.525272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.673831, 18.291649, 20.135859>,  <16.269344, 18.218618, 19.893972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.673831, 18.291649, 20.135859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623637, 17.949083, 19.935535>,  <15.593521, 17.743544, 19.815342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.623637, 17.949083, 19.935535>,  <15.673831, 18.291649, 20.135859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.623637, 17.949083, 19.935535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525689, -0.370707, 0.765655,
		-0.841371, 0.359345, -0.403690,
		-0.125484, -0.856416, -0.500806,
		15.585992, 17.692158, 19.785294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.004982, 18.226183, 20.190689>,  <15.673831, 18.291649, 20.135859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.004982, 18.226183, 20.190689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160847, 17.863125, 20.128279>,  <15.254366, 17.645290, 20.090834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.160847, 17.863125, 20.128279>,  <15.004982, 18.226183, 20.190689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.160847, 17.863125, 20.128279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523769, -0.357754, 0.773096,
		-0.757515, -0.219525, -0.614800,
		0.389661, -0.907645, -0.156024,
		15.277745, 17.590832, 20.081472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.527882, 17.865641, 20.523811>,  <15.004982, 18.226183, 20.190689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.527882, 17.865641, 20.523811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.796674, 17.575632, 20.463434>,  <14.957950, 17.401627, 20.427208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.796674, 17.575632, 20.463434>,  <14.527882, 17.865641, 20.523811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.796674, 17.575632, 20.463434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388519, -0.518655, 0.761610,
		-0.630473, -0.453143, -0.630211,
		0.671980, -0.725023, -0.150943,
		14.998268, 17.358126, 20.418152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.175951, 17.196497, 20.481951>,  <14.527882, 17.865641, 20.523811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.175951, 17.196497, 20.481951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.553330, 17.152527, 20.607056>,  <14.779758, 17.126144, 20.682119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.553330, 17.152527, 20.607056>,  <14.175951, 17.196497, 20.481951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.553330, 17.152527, 20.607056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320082, -0.547686, 0.773037,
		0.086319, -0.829431, -0.551899,
		0.943449, -0.109925, 0.312762,
		14.836365, 17.119549, 20.700884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.991123, 16.916883, 19.713699>,  <14.175951, 17.196497, 20.481951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.991123, 16.916883, 19.713699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724371, 16.628130, 19.639776>,  <13.564320, 16.454878, 19.595423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.724371, 16.628130, 19.639776>,  <13.991123, 16.916883, 19.713699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.724371, 16.628130, 19.639776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155428, 0.377308, -0.912951,
		0.728776, -0.580104, -0.363821,
		-0.666880, -0.721885, -0.184808,
		13.524307, 16.411564, 19.584333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105277, 16.556322, 19.118229>,  <13.991123, 16.916883, 19.713699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105277, 16.556322, 19.118229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714435, 16.492567, 19.174595>,  <13.479929, 16.454313, 19.208414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.714435, 16.492567, 19.174595>,  <14.105277, 16.556322, 19.118229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.714435, 16.492567, 19.174595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174919, 0.224851, -0.958564,
		0.121096, -0.961269, -0.247583,
		-0.977107, -0.159385, 0.140916,
		13.421303, 16.444750, 19.216869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.836888, 16.280415, 18.498558>,  <14.105277, 16.556322, 19.118229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.836888, 16.280415, 18.498558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488105, 16.394119, 18.657999>,  <13.278834, 16.462343, 18.753664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.488105, 16.394119, 18.657999>,  <13.836888, 16.280415, 18.498558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.488105, 16.394119, 18.657999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329596, 0.261186, -0.907275,
		-0.362014, -0.922484, -0.134052,
		-0.871959, 0.284263, 0.398600,
		13.226517, 16.479399, 18.777578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.328702, 16.145977, 18.002134>,  <13.836888, 16.280415, 18.498558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.328702, 16.145977, 18.002134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147786, 16.415112, 18.236305>,  <13.039236, 16.576591, 18.376808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.147786, 16.415112, 18.236305>,  <13.328702, 16.145977, 18.002134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.147786, 16.415112, 18.236305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417582, 0.420252, -0.805613,
		-0.788073, -0.608835, 0.090888,
		-0.452290, 0.672835, 0.585429,
		13.012099, 16.616962, 18.411934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.727052, 16.159458, 17.760468>,  <13.328702, 16.145977, 18.002134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.727052, 16.159458, 17.760468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.760303, 16.506062, 17.957346>,  <12.780253, 16.714024, 18.075472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.760303, 16.506062, 17.957346>,  <12.727052, 16.159458, 17.760468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.760303, 16.506062, 17.957346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391711, 0.482560, -0.783389,
		-0.916325, -0.127677, 0.379534,
		0.083127, 0.866507, 0.492195,
		12.785240, 16.766014, 18.105005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.011360, 16.462578, 17.713806>,  <12.727052, 16.159458, 17.760468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.011360, 16.462578, 17.713806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.240715, 16.775009, 17.812716>,  <12.378328, 16.962467, 17.872061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.240715, 16.775009, 17.812716>,  <12.011360, 16.462578, 17.713806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.240715, 16.775009, 17.812716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473100, 0.562075, -0.678416,
		-0.668882, 0.272009, 0.691815,
		0.573387, 0.781078, 0.247274,
		12.412731, 17.009333, 17.886898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576872, 17.051044, 17.625151>,  <12.011360, 16.462578, 17.713806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576872, 17.051044, 17.625151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.951248, 17.191723, 17.617949>,  <12.175874, 17.276131, 17.613626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.951248, 17.191723, 17.617949>,  <11.576872, 17.051044, 17.625151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.951248, 17.191723, 17.617949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231610, 0.576237, -0.783778,
		-0.265277, 0.737739, 0.620781,
		0.935941, 0.351698, -0.018006,
		12.232030, 17.297232, 17.612547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.596039, 17.796532, 17.397736>,  <11.576872, 17.051044, 17.625151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.596039, 17.796532, 17.397736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.975517, 17.689716, 17.330009>,  <12.203204, 17.625628, 17.289373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.975517, 17.689716, 17.330009>,  <11.596039, 17.796532, 17.397736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.975517, 17.689716, 17.330009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038903, 0.432838, -0.900632,
		0.313790, 0.861012, 0.400243,
		0.948695, -0.267039, -0.169316,
		12.260126, 17.609604, 17.279215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.028007, 18.407721, 17.198700>,  <11.596039, 17.796532, 17.397736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.028007, 18.407721, 17.198700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.213262, 18.093554, 17.034443>,  <12.324414, 17.905054, 16.935888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.213262, 18.093554, 17.034443>,  <12.028007, 18.407721, 17.198700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.213262, 18.093554, 17.034443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010835, 0.468310, -0.883498,
		0.886220, 0.404732, 0.225402,
		0.463138, -0.785416, -0.410640,
		12.352203, 17.857929, 16.911251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.312172, 18.726936, 16.686853>,  <12.028007, 18.407721, 17.198700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.312172, 18.726936, 16.686853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396741, 18.347628, 16.592125>,  <12.447482, 18.120043, 16.535288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.396741, 18.347628, 16.592125>,  <12.312172, 18.726936, 16.686853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.396741, 18.347628, 16.592125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163254, 0.273157, -0.948016,
		0.963664, 0.161769, 0.212561,
		0.211422, -0.948270, -0.236822,
		12.460168, 18.063147, 16.521078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.845377, 18.842537, 16.238256>,  <12.312172, 18.726936, 16.686853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.845377, 18.842537, 16.238256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683758, 18.482513, 16.172976>,  <12.586786, 18.266499, 16.133806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.683758, 18.482513, 16.172976>,  <12.845377, 18.842537, 16.238256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.683758, 18.482513, 16.172976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054707, 0.201871, -0.977883,
		0.913100, -0.386184, -0.130805,
		-0.404049, -0.900061, -0.163202,
		12.562543, 18.212496, 16.124016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.327562, 18.559011, 15.666809>,  <12.845377, 18.842537, 16.238256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.327562, 18.559011, 15.666809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992685, 18.340258, 15.664833>,  <12.791759, 18.209005, 15.663648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.992685, 18.340258, 15.664833>,  <13.327562, 18.559011, 15.666809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.992685, 18.340258, 15.664833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025600, -0.030161, -0.999217,
		0.546309, -0.836663, 0.039251,
		-0.837192, -0.546887, -0.004941,
		12.741528, 18.176191, 15.663351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505948, 18.051517, 15.219939>,  <13.327562, 18.559011, 15.666809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505948, 18.051517, 15.219939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107533, 18.086571, 15.213845>,  <12.868484, 18.107603, 15.210189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.107533, 18.086571, 15.213845>,  <13.505948, 18.051517, 15.219939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.107533, 18.086571, 15.213845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006298, -0.101363, -0.994830,
		-0.088712, -0.990983, 0.100409,
		-0.996037, 0.087621, -0.015234,
		12.808722, 18.112860, 15.209275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.273699, 17.432287, 14.903887>,  <13.505948, 18.051517, 15.219939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.273699, 17.432287, 14.903887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056728, 17.766098, 14.865232>,  <12.926546, 17.966385, 14.842040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.056728, 17.766098, 14.865232>,  <13.273699, 17.432287, 14.903887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.056728, 17.766098, 14.865232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128865, -0.031017, -0.991177,
		-0.830161, -0.550093, -0.090717,
		-0.542426, 0.834527, -0.096636,
		12.894000, 18.016457, 14.836242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.474457, 16.997503, 14.375339>,  <13.273699, 17.432287, 14.903887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.474457, 16.997503, 14.375339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.403776, 17.379126, 14.278548>,  <13.361367, 17.608099, 14.220474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.403776, 17.379126, 14.278548>,  <13.474457, 16.997503, 14.375339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.403776, 17.379126, 14.278548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815116, 0.279643, 0.507333,
		0.551691, -0.107592, -0.827080,
		-0.176702, 0.954056, -0.241977,
		13.350765, 17.665342, 14.205956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.228060, 16.903246, 14.414342>,  <13.474457, 16.997503, 14.375339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.228060, 16.903246, 14.414342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278604, 16.785452, 14.035436>,  <14.308930, 16.714775, 13.808092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.278604, 16.785452, 14.035436>,  <14.228060, 16.903246, 14.414342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.278604, 16.785452, 14.035436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360456, 0.903277, -0.232727,
		0.924178, -0.312040, 0.220287,
		0.126360, -0.294485, -0.947265,
		14.316512, 16.697107, 13.751256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.921656, 16.895596, 14.202496>,  <14.228060, 16.903246, 14.414342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.921656, 16.895596, 14.202496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662212, 16.950123, 13.902969>,  <14.506546, 16.982840, 13.723253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.662212, 16.950123, 13.902969>,  <14.921656, 16.895596, 14.202496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.662212, 16.950123, 13.902969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317783, 0.942478, -0.103683,
		0.691608, -0.305210, -0.654619,
		-0.648609, 0.136319, -0.748815,
		14.467629, 16.991018, 13.678325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.785010, 16.773767, 14.863230>,  <14.921656, 16.895596, 14.202496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.785010, 16.773767, 14.863230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145316, 16.633360, 14.965531>,  <15.361500, 16.549116, 15.026913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.145316, 16.633360, 14.965531>,  <14.785010, 16.773767, 14.863230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.145316, 16.633360, 14.965531> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351217, -0.935140, -0.046474,
		0.255480, -0.047963, -0.965624,
		0.900765, -0.351017, 0.255755,
		15.415545, 16.528055, 15.042257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.888903, 16.110775, 14.479018>,  <14.785010, 16.773767, 14.863230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.888903, 16.110775, 14.479018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.093794, 16.125502, 14.822242>,  <15.216729, 16.134338, 15.028176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.093794, 16.125502, 14.822242>,  <14.888903, 16.110775, 14.479018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.093794, 16.125502, 14.822242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357739, -0.899138, 0.252137,
		0.780797, -0.436113, -0.447393,
		0.512229, 0.036818, 0.858059,
		15.247462, 16.136547, 15.079659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.943108, 15.431906, 14.598822>,  <14.888903, 16.110775, 14.479018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.943108, 15.431906, 14.598822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054285, 15.570250, 14.957292>,  <15.120992, 15.653255, 15.172374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.054285, 15.570250, 14.957292>,  <14.943108, 15.431906, 14.598822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.054285, 15.570250, 14.957292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238900, -0.878734, 0.413222,
		0.930416, -0.328949, -0.161614,
		0.277945, 0.345859, 0.896174,
		15.137669, 15.674007, 15.226144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355702, 14.919037, 14.847989>,  <14.943108, 15.431906, 14.598822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355702, 14.919037, 14.847989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.208668, 15.134489, 15.151239>,  <15.120447, 15.263761, 15.333190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.208668, 15.134489, 15.151239>,  <15.355702, 14.919037, 14.847989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.208668, 15.134489, 15.151239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205915, -0.842105, 0.498456,
		0.906906, 0.027116, 0.420459,
		-0.367587, 0.538631, 0.758127,
		15.098392, 15.296079, 15.378677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598538, 14.715370, 15.541599>,  <15.355702, 14.919037, 14.847989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598538, 14.715370, 15.541599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.274285, 14.912772, 15.667665>,  <15.079734, 15.031214, 15.743303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.274285, 14.912772, 15.667665>,  <15.598538, 14.715370, 15.541599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.274285, 14.912772, 15.667665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185584, -0.727013, 0.661067,
		0.555368, 0.477394, 0.680927,
		-0.810632, 0.493505, 0.315163,
		15.031096, 15.060823, 15.762214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.663734, 14.560661, 16.241898>,  <15.598538, 14.715370, 15.541599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.663734, 14.560661, 16.241898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.296780, 14.712233, 16.193211>,  <15.076607, 14.803176, 16.163998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.296780, 14.712233, 16.193211>,  <15.663734, 14.560661, 16.241898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.296780, 14.712233, 16.193211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348991, -0.618864, 0.703714,
		0.191331, 0.688055, 0.699980,
		-0.917386, 0.378929, -0.121717,
		15.021564, 14.825912, 16.156696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.507117, 14.759406, 16.884979>,  <15.663734, 14.560661, 16.241898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.507117, 14.759406, 16.884979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.156660, 14.698728, 16.701954>,  <14.946386, 14.662320, 16.592138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.156660, 14.698728, 16.701954>,  <15.507117, 14.759406, 16.884979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.156660, 14.698728, 16.701954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292061, -0.588100, 0.754214,
		-0.383504, 0.794434, 0.470955,
		-0.876142, -0.151696, -0.457562,
		14.893817, 14.653218, 16.564686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.976264, 14.816339, 17.392124>,  <15.507117, 14.759406, 16.884979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.976264, 14.816339, 17.392124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826015, 14.589743, 17.098732>,  <14.735865, 14.453785, 16.922697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.826015, 14.589743, 17.098732>,  <14.976264, 14.816339, 17.392124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.826015, 14.589743, 17.098732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309378, -0.669392, 0.675426,
		-0.873608, 0.480629, 0.076181,
		-0.375624, -0.566489, -0.733483,
		14.713327, 14.419796, 16.878687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.315889, 14.685079, 17.561302>,  <14.976264, 14.816339, 17.392124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.315889, 14.685079, 17.561302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412203, 14.400838, 17.296858>,  <14.469991, 14.230293, 17.138191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.412203, 14.400838, 17.296858>,  <14.315889, 14.685079, 17.561302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.412203, 14.400838, 17.296858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429476, -0.688845, 0.583990,
		-0.870387, 0.143317, -0.471048,
		0.240783, -0.710601, -0.661113,
		14.484438, 14.187657, 17.098524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.704745, 14.246686, 17.433498>,  <14.315889, 14.685079, 17.561302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.704745, 14.246686, 17.433498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003098, 14.029003, 17.279877>,  <14.182110, 13.898394, 17.187704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.003098, 14.029003, 17.279877>,  <13.704745, 14.246686, 17.433498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.003098, 14.029003, 17.279877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289472, -0.784138, 0.548939,
		-0.599888, -0.298271, -0.742407,
		0.745883, -0.544208, -0.384054,
		14.226863, 13.865741, 17.164661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.422348, 13.533404, 17.351891>,  <13.704745, 14.246686, 17.433498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.422348, 13.533404, 17.351891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821601, 13.512438, 17.364456>,  <14.061152, 13.499858, 17.371996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.821601, 13.512438, 17.364456>,  <13.422348, 13.533404, 17.351891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.821601, 13.512438, 17.364456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060234, -0.757245, 0.650347,
		-0.010302, -0.651024, -0.758988,
		0.998131, -0.052416, 0.031412,
		14.121040, 13.496713, 17.373880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.600997, 12.817421, 17.333912>,  <13.422348, 13.533404, 17.351891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.600997, 12.817421, 17.333912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.925509, 12.992582, 17.488865>,  <14.120216, 13.097679, 17.581837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.925509, 12.992582, 17.488865>,  <13.600997, 12.817421, 17.333912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.925509, 12.992582, 17.488865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074445, -0.579812, 0.811342,
		0.579898, -0.687064, -0.437791,
		0.811281, 0.437904, 0.387380,
		14.168894, 13.123954, 17.605080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.955005, 12.257400, 17.448967>,  <13.600997, 12.817421, 17.333912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.955005, 12.257400, 17.448967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129113, 12.527784, 17.686829>,  <14.233579, 12.690016, 17.829546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.129113, 12.527784, 17.686829>,  <13.955005, 12.257400, 17.448967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.129113, 12.527784, 17.686829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061434, -0.681268, 0.729452,
		0.898201, -0.280978, -0.338063,
		0.435271, 0.675963, 0.594654,
		14.259695, 12.730574, 17.865225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.489083, 11.947030, 17.690296>,  <13.955005, 12.257400, 17.448967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.489083, 11.947030, 17.690296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478981, 12.233598, 17.969181>,  <14.472919, 12.405539, 18.136513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.478981, 12.233598, 17.969181>,  <14.489083, 11.947030, 17.690296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.478981, 12.233598, 17.969181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030976, -0.697661, 0.715758,
		0.999201, -0.003520, 0.039812,
		-0.025255, 0.716419, 0.697213,
		14.471404, 12.448524, 18.178345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.081438, 11.871599, 18.104242>,  <14.489083, 11.947030, 17.690296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.081438, 11.871599, 18.104242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801040, 12.067108, 18.311975>,  <14.632801, 12.184413, 18.436615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.801040, 12.067108, 18.311975>,  <15.081438, 11.871599, 18.104242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.801040, 12.067108, 18.311975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110695, -0.644812, 0.756283,
		0.704522, 0.587639, 0.397906,
		-0.700996, 0.488772, 0.519333,
		14.590741, 12.213739, 18.467775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.370955, 11.788522, 18.807554>,  <15.081438, 11.871599, 18.104242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.370955, 11.788522, 18.807554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980182, 11.865136, 18.845331>,  <14.745718, 11.911105, 18.867998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.980182, 11.865136, 18.845331>,  <15.370955, 11.788522, 18.807554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.980182, 11.865136, 18.845331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027924, -0.553012, 0.832705,
		0.211721, 0.810858, 0.545604,
		-0.976931, 0.191537, 0.094442,
		14.687102, 11.922597, 18.873663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.230283, 11.911690, 19.555082>,  <15.370955, 11.788522, 18.807554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.230283, 11.911690, 19.555082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.858084, 11.831161, 19.432678>,  <14.634764, 11.782845, 19.359236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.858084, 11.831161, 19.432678>,  <15.230283, 11.911690, 19.555082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.858084, 11.831161, 19.432678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085348, -0.693265, 0.715611,
		-0.356213, 0.691992, 0.627900,
		-0.930499, -0.201320, -0.306010,
		14.578934, 11.770765, 19.340876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.768461, 11.983197, 20.126871>,  <15.230283, 11.911690, 19.555082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.768461, 11.983197, 20.126871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564165, 11.755747, 19.868938>,  <14.441587, 11.619276, 19.714178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.564165, 11.755747, 19.868938>,  <14.768461, 11.983197, 20.126871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.564165, 11.755747, 19.868938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232666, -0.630629, 0.740387,
		-0.827654, 0.528176, 0.189787,
		-0.510740, -0.568627, -0.644831,
		14.410943, 11.585158, 19.675489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.153944, 11.967999, 20.389992>,  <14.768461, 11.983197, 20.126871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.153944, 11.967999, 20.389992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165584, 11.656981, 20.138731>,  <14.172567, 11.470369, 19.987974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.165584, 11.656981, 20.138731>,  <14.153944, 11.967999, 20.389992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.165584, 11.656981, 20.138731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293111, -0.607433, 0.738317,
		-0.955636, 0.162635, -0.245582,
		0.029098, -0.777545, -0.628154,
		14.174314, 11.423717, 19.950285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.390398, 11.794175, 20.242544>,  <14.153944, 11.967999, 20.389992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.390398, 11.794175, 20.242544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.633812, 11.485004, 20.170687>,  <13.779860, 11.299502, 20.127573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.633812, 11.485004, 20.170687>,  <13.390398, 11.794175, 20.242544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633812, 11.485004, 20.170687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406420, -0.498018, 0.766029,
		-0.681550, -0.393144, -0.617194,
		0.608533, -0.772927, -0.179643,
		13.816372, 11.253126, 20.116795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.977806, 11.154271, 20.384027>,  <13.390398, 11.794175, 20.242544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.977806, 11.154271, 20.384027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.354378, 11.030504, 20.437654>,  <13.580320, 10.956244, 20.469830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.354378, 11.030504, 20.437654>,  <12.977806, 11.154271, 20.384027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.354378, 11.030504, 20.437654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276669, -0.481441, 0.831666,
		-0.192787, -0.820046, -0.538848,
		0.941428, -0.309417, 0.134065,
		13.636806, 10.937679, 20.477875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.926639, 10.533521, 20.859007>,  <12.977806, 11.154271, 20.384027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.926639, 10.533521, 20.859007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318936, 10.611537, 20.863033>,  <13.554315, 10.658347, 20.865450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.318936, 10.611537, 20.863033>,  <12.926639, 10.533521, 20.859007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.318936, 10.611537, 20.863033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093755, -0.515398, 0.851807,
		0.171325, -0.834460, -0.523759,
		0.980743, 0.195041, 0.010066,
		13.613159, 10.670049, 20.866053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.259227, 9.889502, 20.960108>,  <12.926639, 10.533521, 20.859007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.259227, 9.889502, 20.960108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516990, 10.176852, 21.064930>,  <13.671648, 10.349263, 21.127823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.516990, 10.176852, 21.064930>,  <13.259227, 9.889502, 20.960108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.516990, 10.176852, 21.064930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217229, -0.500555, 0.838007,
		0.733178, -0.483093, -0.478614,
		0.644408, 0.718378, 0.262054,
		13.710312, 10.392365, 21.143547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.959609, 9.539078, 21.253819>,  <13.259227, 9.889502, 20.960108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.959609, 9.539078, 21.253819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886529, 9.913242, 21.374897>,  <13.842681, 10.137741, 21.447544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.886529, 9.913242, 21.374897>,  <13.959609, 9.539078, 21.253819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.886529, 9.913242, 21.374897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058906, -0.296911, 0.953086,
		0.981402, 0.191960, -0.000855,
		-0.182701, 0.935412, 0.302697,
		13.831718, 10.193866, 21.465706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.399840, 9.673707, 21.875719>,  <13.959609, 9.539078, 21.253819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.399840, 9.673707, 21.875719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141124, 9.976974, 21.908804>,  <13.985894, 10.158936, 21.928654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.141124, 9.976974, 21.908804>,  <14.399840, 9.673707, 21.875719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.141124, 9.976974, 21.908804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055547, -0.154991, 0.986353,
		0.760642, 0.633370, 0.142361,
		-0.646791, 0.758169, 0.082711,
		13.947086, 10.204425, 21.933617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
