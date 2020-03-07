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
	sky <-0, 1, 0>
	up <-0, 1, 0>
	right 1.6 * <1, 0, 0>
	location <2.5, 2.5, 11.1562>
	look_at <2.5, 2.5, 2.5>
	direction <0, 0, -8.6562>
	angle 67.0682
}


# declare cpy_camera_pos = <2.5, 2.5, 11.1562>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 4
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1, 1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1, -1>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<1.281881, 3.695272, 0.530002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.032867, 3.436337, 0.705914>,  <0.883459, 3.280975, 0.811460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.032867, 3.436337, 0.705914>,  <1.281881, 3.695272, 0.530002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.032867, 3.436337, 0.705914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580813, -0.005544, 0.814018,
		-0.524507, 0.762183, 0.379434,
		-0.622534, -0.647338, 0.439778,
		0.846107, 3.242135, 0.837847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.025233, 3.846168, 1.223521>,  <1.281881, 3.695272, 0.530002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.025233, 3.846168, 1.223521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037540, 3.447788, 1.189720>,  <1.044925, 3.208761, 1.169440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037540, 3.447788, 1.189720>,  <1.025233, 3.846168, 1.223521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037540, 3.447788, 1.189720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687763, -0.040250, 0.724818,
		-0.725283, -0.080420, 0.683738,
		0.030769, -0.995948, -0.084503,
		1.046771, 3.149004, 1.164369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.042530, 3.419048, 1.904124>,  <1.025233, 3.846168, 1.223521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.042530, 3.419048, 1.904124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.245728, 3.257767, 1.599659>,  <1.367646, 3.160998, 1.416980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.245728, 3.257767, 1.599659>,  <1.042530, 3.419048, 1.904124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.245728, 3.257767, 1.599659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843329, 0.052947, 0.534783,
		-0.175325, -0.913578, 0.366929,
		0.507994, -0.403203, -0.761164,
		1.398126, 3.136806, 1.371310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.439694, 2.938962, 2.177630>,  <1.042530, 3.419048, 1.904124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.439694, 2.938962, 2.177630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.653034, 3.047302, 1.857086>,  <1.781038, 3.112307, 1.664760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.653034, 3.047302, 1.857086>,  <1.439694, 2.938962, 2.177630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.653034, 3.047302, 1.857086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845313, -0.205773, 0.493055,
		-0.031354, -0.940370, -0.338703,
		0.533350, 0.270852, -0.801360,
		1.813039, 3.128558, 1.616678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.905650, 2.448658, 1.910109>,  <1.439694, 2.938962, 2.177630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.905650, 2.448658, 1.910109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.055698, 2.813152, 1.842068>,  <2.145728, 3.031849, 1.801243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.055698, 2.813152, 1.842068>,  <1.905650, 2.448658, 1.910109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.055698, 2.813152, 1.842068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773612, -0.206647, 0.599018,
		0.510694, -0.356299, -0.782460,
		0.375122, 0.911234, -0.170104,
		2.168235, 3.086523, 1.791036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.550254, 2.343037, 2.193804>,  <1.905650, 2.448658, 1.910109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.550254, 2.343037, 2.193804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551296, 2.737770, 2.129112>,  <2.551922, 2.974610, 2.090297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.551296, 2.737770, 2.129112>,  <2.550254, 2.343037, 2.193804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.551296, 2.737770, 2.129112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872959, 0.076645, 0.481735,
		0.487787, -0.142439, -0.861264,
		0.002606, 0.986832, -0.161730,
		2.552078, 3.033820, 2.080593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.238438, 2.559934, 1.949340>,  <2.550254, 2.343037, 2.193804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.238438, 2.559934, 1.949340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.082008, 2.888191, 2.116005>,  <2.988151, 3.085145, 2.216004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.082008, 2.888191, 2.116005>,  <3.238438, 2.559934, 1.949340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.082008, 2.888191, 2.116005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871933, 0.185440, 0.453150,
		0.294608, 0.540517, -0.788065,
		-0.391074, 0.820642, 0.416663,
		2.964686, 3.134384, 2.241004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.756972, 3.070516, 2.019253>,  <3.238438, 2.559934, 1.949340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.756972, 3.070516, 2.019253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479511, 3.124687, 2.302238>,  <3.313035, 3.157190, 2.472030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.479511, 3.124687, 2.302238>,  <3.756972, 3.070516, 2.019253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.479511, 3.124687, 2.302238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715851, 0.238721, 0.656178,
		-0.080021, 0.961599, -0.262536,
		-0.693652, 0.135428, 0.707464,
		3.271415, 3.165316, 2.514478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<4.159342, 3.776995, 2.663409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.141788, 3.936523, 3.029800>,  <4.131255, 4.032240, 3.249635>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.141788, 3.936523, 3.029800>,  <4.159342, 3.776995, 2.663409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.141788, 3.936523, 3.029800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.879117, -0.450961, 0.154229,
		0.474580, -0.798484, 0.370401,
		-0.043887, 0.398820, 0.915979,
		4.128621, 4.056170, 3.304594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.023861, 3.241896, 3.151750>,  <4.159342, 3.776995, 2.663409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.023861, 3.241896, 3.151750> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.898366, 3.592224, 3.298450>,  <3.823068, 3.802421, 3.386471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.898366, 3.592224, 3.298450>,  <4.023861, 3.241896, 3.151750>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.898366, 3.592224, 3.298450> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949415, -0.294795, -0.108196,
		0.013357, -0.382144, 0.924006,
		-0.313739, 0.875821, 0.366751,
		3.804244, 3.854970, 3.408476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.509232, 3.109319, 3.610608>,  <4.023861, 3.241896, 3.151750>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.509232, 3.109319, 3.610608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.450301, 3.477951, 3.466949>,  <3.414943, 3.699130, 3.380754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.450301, 3.477951, 3.466949>,  <3.509232, 3.109319, 3.610608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.450301, 3.477951, 3.466949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860699, -0.298359, -0.412528,
		-0.487332, 0.248341, 0.837159,
		-0.147326, 0.921580, -0.359147,
		3.406103, 3.754425, 3.359205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.722896, 3.271067, 3.631210>,  <3.509232, 3.109319, 3.610608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.722896, 3.271067, 3.631210> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.893477, 3.508240, 3.357986>,  <2.995826, 3.650544, 3.194052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.893477, 3.508240, 3.357986>,  <2.722896, 3.271067, 3.631210>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.893477, 3.508240, 3.357986> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783895, -0.134489, -0.606153,
		-0.451272, 0.793942, 0.407443,
		0.426453, 0.592933, -0.683058,
		3.021413, 3.686120, 3.153069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.260998, 3.774661, 3.234548>,  <2.722896, 3.271067, 3.631210>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.260998, 3.774661, 3.234548> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.583050, 3.699638, 3.009483>,  <2.776282, 3.654625, 2.874445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.583050, 3.699638, 3.009483>,  <2.260998, 3.774661, 3.234548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.583050, 3.699638, 3.009483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586172, -0.107090, -0.803078,
		0.090367, 0.976399, -0.196161,
		0.805131, -0.187556, -0.562661,
		2.824589, 3.643372, 2.840685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.268150, 4.190269, 2.672107>,  <2.260998, 3.774661, 3.234548>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.268150, 4.190269, 2.672107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.503798, 3.886932, 2.560497>,  <2.645187, 3.704930, 2.493531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.503798, 3.886932, 2.560497>,  <2.268150, 4.190269, 2.672107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.503798, 3.886932, 2.560497> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495999, -0.066773, -0.865752,
		0.637905, 0.648428, -0.415474,
		0.589120, -0.758342, -0.279024,
		2.680535, 3.659430, 2.476790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.588221, 4.346535, 2.078278>,  <2.268150, 4.190269, 2.672107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.588221, 4.346535, 2.078278> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.576250, 3.946716, 2.077011>,  <2.569068, 3.706825, 2.076251>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.576250, 3.946716, 2.077011>,  <2.588221, 4.346535, 2.078278>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.576250, 3.946716, 2.077011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620772, 0.021069, -0.783708,
		0.783420, -0.021488, -0.621122,
		-0.029926, -0.999547, -0.003166,
		2.567272, 3.646852, 2.076061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.576599, 3.937811, 1.357914>,  <2.588221, 4.346535, 2.078278>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.576599, 3.937811, 1.357914> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.390722, 3.717766, 1.635456>,  <2.279196, 3.585739, 1.801982>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.390722, 3.717766, 1.635456>,  <2.576599, 3.937811, 1.357914>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.390722, 3.717766, 1.635456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793364, -0.089329, -0.602158,
		0.393237, -0.830298, -0.394930,
		-0.464692, -0.550114, 0.693856,
		2.251315, 3.552732, 1.843613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 5.000000>,  <5.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 5.000000, 0.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<5.000000, 0.000000, 5.000000>,  <5.000000, 0.000000, 0.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 5.000000, 0.000000>,  <0.000000, 5.000000, 5.000000>, 0.025000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
