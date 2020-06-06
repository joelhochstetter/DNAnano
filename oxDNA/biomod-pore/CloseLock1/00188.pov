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
	<24.269991, 34.885536, 34.624802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256584, 34.900936, 35.024281>,  <24.248541, 34.910175, 35.263969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.256584, 34.900936, 35.024281>,  <24.269991, 34.885536, 34.624802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.256584, 34.900936, 35.024281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.998950, -0.029939, 0.034680,
		0.031235, 0.998810, -0.037457,
		-0.033517, 0.038501, 0.998696,
		24.246529, 34.912487, 35.323891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.926443, 35.317501, 34.793892>,  <24.269991, 34.885536, 34.624802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.926443, 35.317501, 34.793892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201202, 35.079617, 34.960979>,  <25.366058, 34.936886, 35.061234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.201202, 35.079617, 34.960979>,  <24.926443, 35.317501, 34.793892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.201202, 35.079617, 34.960979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625241, 0.776577, 0.077471,
		-0.370465, 0.207961, 0.905267,
		0.686898, -0.594710, 0.417721,
		25.407272, 34.901203, 35.086296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.219942, 35.670212, 35.340324>,  <24.926443, 35.317501, 34.793892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.219942, 35.670212, 35.340324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484129, 35.430481, 35.159393>,  <25.642641, 35.286644, 35.050835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.484129, 35.430481, 35.159393>,  <25.219942, 35.670212, 35.340324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.484129, 35.430481, 35.159393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684221, 0.728489, 0.033837,
		0.309234, -0.331837, 0.891212,
		0.660467, -0.599322, -0.452323,
		25.682268, 35.250683, 35.023697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.712280, 35.538319, 35.871735>,  <25.219942, 35.670212, 35.340324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.712280, 35.538319, 35.871735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828396, 35.542770, 35.488983>,  <25.898066, 35.545441, 35.259335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.828396, 35.542770, 35.488983>,  <25.712280, 35.538319, 35.871735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828396, 35.542770, 35.488983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624251, 0.755673, 0.198167,
		0.725288, -0.654855, 0.212419,
		0.290290, 0.011126, -0.956874,
		25.915483, 35.546108, 35.201920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.443489, 35.344448, 35.757523>,  <25.712280, 35.538319, 35.871735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.443489, 35.344448, 35.757523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331272, 35.608303, 35.478619>,  <26.263943, 35.766617, 35.311275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.331272, 35.608303, 35.478619>,  <26.443489, 35.344448, 35.757523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.331272, 35.608303, 35.478619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776403, 0.583071, 0.239224,
		0.564354, -0.474244, -0.675719,
		-0.280542, 0.659637, -0.697263,
		26.247110, 35.806194, 35.269440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.138500, 35.288425, 35.727955>,  <26.443489, 35.344448, 35.757523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.138500, 35.288425, 35.727955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536577, 35.281036, 35.766434>,  <27.775423, 35.276604, 35.789520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.536577, 35.281036, 35.766434>,  <27.138500, 35.288425, 35.727955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.536577, 35.281036, 35.766434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065133, 0.858287, -0.509020,
		-0.073158, 0.512838, 0.855363,
		0.995191, -0.018474, 0.096193,
		27.835135, 35.275494, 35.795292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.338867, 35.846703, 35.958241>,  <27.138500, 35.288425, 35.727955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.338867, 35.846703, 35.958241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657150, 35.717239, 35.753460>,  <27.848120, 35.639561, 35.630592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.657150, 35.717239, 35.753460>,  <27.338867, 35.846703, 35.958241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.657150, 35.717239, 35.753460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015119, 0.855603, -0.517412,
		0.605493, 0.403968, 0.685703,
		0.795707, -0.323656, -0.511954,
		27.895863, 35.620144, 35.599873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696543, 36.391720, 35.953598>,  <27.338867, 35.846703, 35.958241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696543, 36.391720, 35.953598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893021, 36.181973, 35.675385>,  <28.010906, 36.056126, 35.508457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.893021, 36.181973, 35.675385>,  <27.696543, 36.391720, 35.953598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.893021, 36.181973, 35.675385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074832, 0.820952, -0.566072,
		0.867831, 0.226002, 0.442485,
		0.491193, -0.524367, -0.695535,
		28.040379, 36.024662, 35.466724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.431448, 36.636623, 35.766445>,  <27.696543, 36.391720, 35.953598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.431448, 36.636623, 35.766445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314848, 36.427029, 35.446327>,  <28.244888, 36.301273, 35.254257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.314848, 36.427029, 35.446327>,  <28.431448, 36.636623, 35.766445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.314848, 36.427029, 35.446327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222184, 0.776657, -0.589439,
		0.930409, -0.349635, -0.109975,
		-0.291501, -0.523985, -0.800292,
		28.227398, 36.269833, 35.206242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925480, 36.902657, 35.205910>,  <28.431448, 36.636623, 35.766445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925480, 36.902657, 35.205910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632748, 36.723637, 35.000340>,  <28.457108, 36.616222, 34.876999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.632748, 36.723637, 35.000340>,  <28.925480, 36.902657, 35.205910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.632748, 36.723637, 35.000340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059065, 0.792943, -0.606425,
		0.678920, -0.413447, -0.606736,
		-0.731833, -0.447551, -0.513925,
		28.413198, 36.589371, 34.846161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.100866, 36.501701, 34.596458>,  <28.925480, 36.902657, 35.205910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.100866, 36.501701, 34.596458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722504, 36.616714, 34.536350>,  <28.495485, 36.685722, 34.500286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.722504, 36.616714, 34.536350>,  <29.100866, 36.501701, 34.596458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.722504, 36.616714, 34.536350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322488, 0.782578, -0.532516,
		-0.035517, -0.552172, -0.832973,
		-0.945907, 0.287537, -0.150274,
		28.438732, 36.702976, 34.491268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.069946, 36.614517, 33.930763>,  <29.100866, 36.501701, 34.596458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.069946, 36.614517, 33.930763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782602, 36.819172, 34.119308>,  <28.610195, 36.941963, 34.232437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782602, 36.819172, 34.119308>,  <29.069946, 36.614517, 33.930763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782602, 36.819172, 34.119308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140537, 0.770330, -0.621966,
		-0.681328, -0.380552, -0.625278,
		-0.718360, 0.511637, 0.471366,
		28.567095, 36.972664, 34.260719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.576393, 36.688820, 33.443745>,  <29.069946, 36.614517, 33.930763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.576393, 36.688820, 33.443745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529303, 36.976028, 33.718140>,  <28.501049, 37.148354, 33.882778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.529303, 36.976028, 33.718140>,  <28.576393, 36.688820, 33.443745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.529303, 36.976028, 33.718140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095021, 0.679480, -0.727515,
		-0.988490, -0.150831, -0.011765,
		-0.117726, 0.718023, 0.685991,
		28.493984, 37.191437, 33.923935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.217146, 37.171413, 33.031796>,  <28.576393, 36.688820, 33.443745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.217146, 37.171413, 33.031796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337685, 37.390236, 33.344185>,  <28.410007, 37.521530, 33.531620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.337685, 37.390236, 33.344185>,  <28.217146, 37.171413, 33.031796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337685, 37.390236, 33.344185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034383, 0.824749, -0.564453,
		-0.952895, 0.143243, 0.267345,
		0.301346, 0.547056, 0.780974,
		28.428089, 37.554352, 33.578476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.855862, 37.866962, 32.904274>,  <28.217146, 37.171413, 33.031796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.855862, 37.866962, 32.904274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181170, 37.920918, 33.130692>,  <28.376354, 37.953289, 33.266541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.181170, 37.920918, 33.130692>,  <27.855862, 37.866962, 32.904274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.181170, 37.920918, 33.130692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289602, 0.749901, -0.594793,
		-0.504703, 0.647652, 0.570807,
		0.813268, 0.134887, 0.566039,
		28.425150, 37.961384, 33.300503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.786722, 38.583591, 33.169338>,  <27.855862, 37.866962, 32.904274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.786722, 38.583591, 33.169338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171083, 38.478565, 33.204494>,  <28.401699, 38.415550, 33.225590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.171083, 38.478565, 33.204494>,  <27.786722, 38.583591, 33.169338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.171083, 38.478565, 33.204494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273838, 0.854182, -0.442025,
		0.040983, 0.448811, 0.892686,
		0.960902, -0.262567, 0.087895,
		28.459354, 38.399796, 33.230862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125830, 39.191231, 33.344574>,  <27.786722, 38.583591, 33.169338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125830, 39.191231, 33.344574> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415865, 38.948624, 33.214108>,  <28.589886, 38.803059, 33.135826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.415865, 38.948624, 33.214108>,  <28.125830, 39.191231, 33.344574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.415865, 38.948624, 33.214108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432213, 0.769529, -0.470125,
		0.536136, 0.199907, 0.820119,
		0.725086, -0.606517, -0.326170,
		28.633390, 38.766670, 33.116257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.774752, 39.581749, 33.585323>,  <28.125830, 39.191231, 33.344574>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.774752, 39.581749, 33.585323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877878, 39.309872, 33.310646>,  <28.939754, 39.146748, 33.145840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.877878, 39.309872, 33.310646>,  <28.774752, 39.581749, 33.585323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.877878, 39.309872, 33.310646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570335, 0.680748, -0.459675,
		0.779903, -0.273135, 0.563159,
		0.257816, -0.679691, -0.686695,
		28.955223, 39.105965, 33.104637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.539671, 39.539440, 33.545822>,  <28.774752, 39.581749, 33.585323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.539671, 39.539440, 33.545822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423471, 39.370575, 33.202335>,  <29.353752, 39.269257, 32.996243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.423471, 39.370575, 33.202335>,  <29.539671, 39.539440, 33.545822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423471, 39.370575, 33.202335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609539, 0.610135, -0.506160,
		0.737612, -0.670459, 0.080079,
		-0.290501, -0.422161, -0.858714,
		29.336321, 39.243927, 32.944721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.174131, 39.412773, 33.251026>,  <29.539671, 39.539440, 33.545822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.174131, 39.412773, 33.251026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906096, 39.390621, 32.954941>,  <29.745274, 39.377331, 32.777290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906096, 39.390621, 32.954941>,  <30.174131, 39.412773, 33.251026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906096, 39.390621, 32.954941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661375, 0.408181, -0.629263,
		0.336990, -0.911219, -0.236890,
		-0.670090, -0.055382, -0.740210,
		29.705069, 39.374004, 32.732876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.534367, 39.181068, 32.568851>,  <30.174131, 39.412773, 33.251026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.534367, 39.181068, 32.568851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206648, 39.385235, 32.464367>,  <30.010017, 39.507732, 32.401676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206648, 39.385235, 32.464367>,  <30.534367, 39.181068, 32.568851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206648, 39.385235, 32.464367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563968, 0.635221, -0.527668,
		-0.103400, -0.579632, -0.808292,
		-0.819297, 0.510412, -0.261212,
		29.960859, 39.538357, 32.386002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.706154, 39.466591, 31.931107>,  <30.534367, 39.181068, 32.568851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.706154, 39.466591, 31.931107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396194, 39.699192, 32.030209>,  <30.210218, 39.838753, 32.089668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.396194, 39.699192, 32.030209>,  <30.706154, 39.466591, 31.931107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.396194, 39.699192, 32.030209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458816, 0.787074, -0.412314,
		-0.434764, -0.205828, -0.876707,
		-0.774899, 0.581506, 0.247754,
		30.163725, 39.873646, 32.104534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.598612, 39.964314, 31.395964>,  <30.706154, 39.466591, 31.931107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.598612, 39.964314, 31.395964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369320, 40.128185, 31.679813>,  <30.231745, 40.226509, 31.850124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.369320, 40.128185, 31.679813>,  <30.598612, 39.964314, 31.395964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.369320, 40.128185, 31.679813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473084, 0.872584, -0.121611,
		-0.669030, 0.266002, -0.694004,
		-0.573228, 0.409683, 0.709626,
		30.197351, 40.251091, 31.892700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.241907, 40.510368, 31.061005>,  <30.598612, 39.964314, 31.395964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.241907, 40.510368, 31.061005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310020, 40.552860, 31.452866>,  <30.350889, 40.578354, 31.687983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.310020, 40.552860, 31.452866>,  <30.241907, 40.510368, 31.061005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.310020, 40.552860, 31.452866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358023, 0.919562, -0.161943,
		-0.918054, 0.378315, 0.118555,
		0.170284, 0.106227, 0.979652,
		30.361105, 40.584728, 31.746761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091171, 41.247883, 31.180351>,  <30.241907, 40.510368, 31.061005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091171, 41.247883, 31.180351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290102, 41.123314, 31.504248>,  <30.409460, 41.048573, 31.698586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.290102, 41.123314, 31.504248>,  <30.091171, 41.247883, 31.180351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.290102, 41.123314, 31.504248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415175, 0.904969, 0.093059,
		-0.761772, 0.289904, 0.579361,
		0.497326, -0.311426, 0.809741,
		30.439301, 41.029884, 31.747169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018736, 41.625511, 31.790102>,  <30.091171, 41.247883, 31.180351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018736, 41.625511, 31.790102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395145, 41.490852, 31.803650>,  <30.620991, 41.410057, 31.811779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.395145, 41.490852, 31.803650>,  <30.018736, 41.625511, 31.790102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.395145, 41.490852, 31.803650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337937, 0.940083, -0.045196,
		-0.016624, 0.053975, 0.998404,
		0.941022, -0.336647, 0.033868,
		30.677452, 41.389858, 31.813810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.427151, 41.935795, 32.338078>,  <30.018736, 41.625511, 31.790102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.427151, 41.935795, 32.338078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610807, 41.845798, 31.994316>,  <30.721001, 41.791801, 31.788059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.610807, 41.845798, 31.994316>,  <30.427151, 41.935795, 32.338078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.610807, 41.845798, 31.994316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248747, 0.961260, -0.118762,
		0.852828, -0.159245, 0.497319,
		0.459140, -0.224990, -0.859401,
		30.748550, 41.778301, 31.736496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.098330, 41.810059, 32.315845>,  <30.427151, 41.935795, 32.338078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.098330, 41.810059, 32.315845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989439, 41.986950, 31.974010>,  <30.924105, 42.093086, 31.768909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.989439, 41.986950, 31.974010>,  <31.098330, 41.810059, 32.315845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.989439, 41.986950, 31.974010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576738, 0.785911, 0.222974,
		0.770239, -0.432175, -0.468996,
		-0.272225, 0.442231, -0.854591,
		30.907772, 42.119617, 31.717632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688244, 42.111908, 31.887880>,  <31.098330, 41.810059, 32.315845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688244, 42.111908, 31.887880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386894, 42.323215, 31.731234>,  <31.206085, 42.450001, 31.637245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.386894, 42.323215, 31.731234>,  <31.688244, 42.111908, 31.887880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.386894, 42.323215, 31.731234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435169, 0.846982, 0.305367,
		0.493007, 0.059637, -0.867979,
		-0.753374, 0.528265, -0.391616,
		31.160881, 42.481693, 31.613749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.942598, 42.639885, 31.374876>,  <31.688244, 42.111908, 31.887880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.942598, 42.639885, 31.374876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602530, 42.716454, 31.571066>,  <31.398489, 42.762394, 31.688780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.602530, 42.716454, 31.571066>,  <31.942598, 42.639885, 31.374876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.602530, 42.716454, 31.571066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400292, 0.840142, 0.365962,
		-0.342012, 0.507463, -0.790891,
		-0.850173, 0.191424, 0.490472,
		31.347477, 42.773880, 31.718208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648834, 43.375523, 31.205109>,  <31.942598, 42.639885, 31.374876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648834, 43.375523, 31.205109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571901, 43.232334, 31.570593>,  <31.525742, 43.146423, 31.789883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.571901, 43.232334, 31.570593>,  <31.648834, 43.375523, 31.205109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.571901, 43.232334, 31.570593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450423, 0.795019, 0.406281,
		-0.871853, 0.489698, 0.008328,
		-0.192334, -0.357968, 0.913710,
		31.514200, 43.124943, 31.844706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.326502, 43.950302, 31.646601>,  <31.648834, 43.375523, 31.205109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.326502, 43.950302, 31.646601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542326, 43.664577, 31.824871>,  <31.671822, 43.493141, 31.931833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.542326, 43.664577, 31.824871>,  <31.326502, 43.950302, 31.646601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.542326, 43.664577, 31.824871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512976, 0.698654, 0.498736,
		-0.667629, -0.040477, 0.743393,
		0.539562, -0.714314, 0.445678,
		31.704195, 43.450283, 31.958574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.622721, 44.148712, 32.306389>,  <31.326502, 43.950302, 31.646601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.622721, 44.148712, 32.306389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876770, 43.862225, 32.190697>,  <32.029198, 43.690334, 32.121281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.876770, 43.862225, 32.190697>,  <31.622721, 44.148712, 32.306389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876770, 43.862225, 32.190697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761214, 0.516845, 0.391695,
		-0.131049, -0.468942, 0.873452,
		0.635122, -0.716215, -0.289233,
		32.067307, 43.647362, 32.103928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.235905, 44.259846, 32.721741>,  <31.622721, 44.148712, 32.306389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.235905, 44.259846, 32.721741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372200, 43.943218, 32.518833>,  <32.453979, 43.753242, 32.397091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372200, 43.943218, 32.518833>,  <32.235905, 44.259846, 32.721741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372200, 43.943218, 32.518833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925602, 0.187876, 0.328576,
		-0.164787, -0.581485, 0.796693,
		0.340742, -0.791566, -0.507265,
		32.474422, 43.705750, 32.366653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806370, 43.774628, 32.857105>,  <32.235905, 44.259846, 32.721741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806370, 43.774628, 32.857105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980122, 43.851559, 33.209087>,  <33.084373, 43.897717, 33.420277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.980122, 43.851559, 33.209087>,  <32.806370, 43.774628, 32.857105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.980122, 43.851559, 33.209087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125074, -0.980352, 0.152532,
		0.892002, 0.043803, -0.449903,
		0.434382, 0.192330, 0.879955,
		33.110435, 43.909256, 33.473072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.358742, 43.310318, 32.776264>,  <32.806370, 43.774628, 32.857105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.358742, 43.310318, 32.776264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234695, 43.386784, 33.148777>,  <33.160267, 43.432663, 33.372284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.234695, 43.386784, 33.148777>,  <33.358742, 43.310318, 32.776264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.234695, 43.386784, 33.148777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087051, -0.969750, 0.228049,
		0.946706, 0.151790, 0.284091,
		-0.310113, 0.191164, 0.931282,
		33.141663, 43.444134, 33.428162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920959, 42.971992, 33.192295>,  <33.358742, 43.310318, 32.776264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920959, 42.971992, 33.192295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568653, 42.998013, 33.379921>,  <33.357269, 43.013626, 33.492496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568653, 42.998013, 33.379921>,  <33.920959, 42.971992, 33.192295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568653, 42.998013, 33.379921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116420, -0.989865, -0.081329,
		0.459021, -0.126240, 0.879410,
		-0.880764, 0.065050, 0.469066,
		33.304424, 43.017529, 33.520641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.055695, 42.685829, 33.831169>,  <33.920959, 42.971992, 33.192295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.055695, 42.685829, 33.831169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670559, 42.640583, 33.733074>,  <33.439476, 42.613438, 33.674217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.670559, 42.640583, 33.733074>,  <34.055695, 42.685829, 33.831169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.670559, 42.640583, 33.733074> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106018, -0.993478, 0.041983,
		-0.248388, 0.014423, 0.968553,
		-0.962841, -0.113112, -0.245239,
		33.381706, 42.606647, 33.659504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.822849, 42.127720, 34.290031>,  <34.055695, 42.685829, 33.831169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.822849, 42.127720, 34.290031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504154, 42.150169, 34.049347>,  <33.312935, 42.163639, 33.904938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504154, 42.150169, 34.049347>,  <33.822849, 42.127720, 34.290031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504154, 42.150169, 34.049347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119908, -0.990563, 0.066381,
		-0.592305, 0.125038, 0.795952,
		-0.796741, 0.056123, -0.601709,
		33.265133, 42.167007, 33.868835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.181099, 41.790901, 34.602730>,  <33.822849, 42.127720, 34.290031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.181099, 41.790901, 34.602730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120750, 41.813251, 34.207939>,  <33.084541, 41.826664, 33.971066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.120750, 41.813251, 34.207939>,  <33.181099, 41.790901, 34.602730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.120750, 41.813251, 34.207939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384393, -0.923147, 0.006495,
		-0.910758, 0.380365, 0.160757,
		-0.150872, 0.055878, -0.986973,
		33.075489, 41.830013, 33.911846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.572399, 41.452694, 34.594955>,  <33.181099, 41.790901, 34.602730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.572399, 41.452694, 34.594955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739723, 41.439766, 34.231865>,  <32.840118, 41.432007, 34.014011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.739723, 41.439766, 34.231865>,  <32.572399, 41.452694, 34.594955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.739723, 41.439766, 34.231865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282501, -0.954431, -0.096197,
		-0.863257, 0.296675, -0.408377,
		0.418307, -0.032324, -0.907731,
		32.865215, 41.430069, 33.959545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.033195, 41.294952, 34.066914>,  <32.572399, 41.452694, 34.594955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.033195, 41.294952, 34.066914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362560, 41.183289, 33.869301>,  <32.560177, 41.116291, 33.750732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.362560, 41.183289, 33.869301>,  <32.033195, 41.294952, 34.066914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.362560, 41.183289, 33.869301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424315, -0.880970, -0.209404,
		-0.376767, 0.382049, -0.843852,
		0.823410, -0.279162, -0.494029,
		32.609585, 41.099541, 33.721092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.880136, 40.925636, 33.591522>,  <32.033195, 41.294952, 34.066914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.880136, 40.925636, 33.591522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258732, 40.799835, 33.620506>,  <32.485889, 40.724354, 33.637897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258732, 40.799835, 33.620506>,  <31.880136, 40.925636, 33.591522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258732, 40.799835, 33.620506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292466, -0.930740, -0.219517,
		0.136478, 0.186578, -0.972914,
		0.946487, -0.314503, 0.072458,
		32.542679, 40.705482, 33.642242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.917149, 40.358089, 33.072781>,  <31.880136, 40.925636, 33.591522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.917149, 40.358089, 33.072781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238434, 40.315483, 33.307217>,  <32.431206, 40.289921, 33.447880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.238434, 40.315483, 33.307217>,  <31.917149, 40.358089, 33.072781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.238434, 40.315483, 33.307217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187507, -0.979079, 0.079031,
		0.565409, -0.173375, -0.806383,
		0.803215, -0.106517, 0.586089,
		32.479397, 40.283527, 33.483044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.140572, 39.660820, 32.930382>,  <31.917149, 40.358089, 33.072781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.140572, 39.660820, 32.930382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330013, 39.748886, 33.271492>,  <32.443680, 39.801723, 33.476158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.330013, 39.748886, 33.271492>,  <32.140572, 39.660820, 32.930382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.330013, 39.748886, 33.271492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006748, -0.967317, 0.253481,
		0.880710, -0.125805, -0.456643,
		0.473608, 0.220162, 0.852774,
		32.472095, 39.814934, 33.527325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621307, 39.124126, 32.949490>,  <32.140572, 39.660820, 32.930382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621307, 39.124126, 32.949490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608864, 39.269020, 33.322117>,  <32.601398, 39.355957, 33.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.608864, 39.269020, 33.322117>,  <32.621307, 39.124126, 32.949490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608864, 39.269020, 33.322117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016755, -0.932076, 0.361876,
		0.999375, -0.004350, 0.035066,
		-0.031110, 0.362237, 0.931567,
		32.599529, 39.377689, 33.601585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049294, 38.736771, 33.349319>,  <32.621307, 39.124126, 32.949490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049294, 38.736771, 33.349319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779781, 38.884071, 33.605572>,  <32.618073, 38.972454, 33.759323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.779781, 38.884071, 33.605572>,  <33.049294, 38.736771, 33.349319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779781, 38.884071, 33.605572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102353, -0.905124, 0.412643,
		0.731809, 0.212460, 0.647546,
		-0.673780, 0.368254, 0.640632,
		32.577648, 38.994549, 33.797760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068291, 38.376350, 33.978348>,  <33.049294, 38.736771, 33.349319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068291, 38.376350, 33.978348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702915, 38.530979, 34.029259>,  <32.483692, 38.623756, 34.059807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.702915, 38.530979, 34.029259>,  <33.068291, 38.376350, 33.978348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.702915, 38.530979, 34.029259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316815, -0.871701, 0.373854,
		0.255472, 0.301166, 0.918713,
		-0.913435, 0.386571, 0.127281,
		32.428886, 38.646950, 34.067444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.878281, 38.156883, 34.705090>,  <33.068291, 38.376350, 33.978348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.878281, 38.156883, 34.705090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541683, 38.256348, 34.513233>,  <32.339725, 38.316025, 34.398117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.541683, 38.256348, 34.513233>,  <32.878281, 38.156883, 34.705090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.541683, 38.256348, 34.513233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466022, -0.783231, 0.411549,
		-0.273335, 0.569840, 0.774965,
		-0.841494, 0.248660, -0.479643,
		32.289234, 38.330944, 34.369339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.430046, 37.993698, 35.206917>,  <32.878281, 38.156883, 34.705090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.430046, 37.993698, 35.206917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176231, 38.024891, 34.899338>,  <32.023945, 38.043606, 34.714790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.176231, 38.024891, 34.899338>,  <32.430046, 37.993698, 35.206917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.176231, 38.024891, 34.899338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560353, -0.731647, 0.388197,
		-0.532327, 0.677208, 0.507954,
		-0.634533, 0.077986, -0.768951,
		31.985872, 38.048286, 34.668652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.748896, 37.793156, 35.393101>,  <32.430046, 37.993698, 35.206917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.748896, 37.793156, 35.393101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736423, 37.735428, 34.997486>,  <31.728941, 37.700790, 34.760117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.736423, 37.735428, 34.997486>,  <31.748896, 37.793156, 35.393101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.736423, 37.735428, 34.997486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522102, -0.841440, 0.139240,
		-0.852313, 0.520722, -0.049112,
		-0.031181, -0.144317, -0.989040,
		31.727070, 37.692131, 34.700775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.129469, 37.632195, 35.321182>,  <31.748896, 37.793156, 35.393101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.129469, 37.632195, 35.321182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332579, 37.485733, 35.009262>,  <31.454445, 37.397854, 34.822109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.332579, 37.485733, 35.009262>,  <31.129469, 37.632195, 35.321182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.332579, 37.485733, 35.009262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382253, -0.906956, 0.176953,
		-0.772040, 0.208230, -0.600494,
		0.507775, -0.366156, -0.779803,
		31.484911, 37.375885, 34.775322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.629566, 37.307415, 34.844997>,  <31.129469, 37.632195, 35.321182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.629566, 37.307415, 34.844997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955898, 37.136433, 34.689201>,  <31.151697, 37.033844, 34.595726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955898, 37.136433, 34.689201>,  <30.629566, 37.307415, 34.844997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955898, 37.136433, 34.689201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421524, -0.900658, 0.105515,
		-0.395897, 0.078096, -0.914968,
		0.815833, -0.427454, -0.389487,
		31.200647, 37.008198, 34.572353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.473274, 36.972420, 34.113205>,  <30.629566, 37.307415, 34.844997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.473274, 36.972420, 34.113205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800913, 36.805782, 34.270954>,  <30.997496, 36.705799, 34.365604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.800913, 36.805782, 34.270954>,  <30.473274, 36.972420, 34.113205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.800913, 36.805782, 34.270954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385042, -0.908862, -0.160352,
		0.425231, -0.020506, -0.904852,
		0.819098, -0.416593, 0.394372,
		31.046642, 36.680805, 34.389267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.577398, 36.464153, 33.686539>,  <30.473274, 36.972420, 34.113205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.577398, 36.464153, 33.686539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792765, 36.342041, 34.000713>,  <30.921984, 36.268772, 34.189217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.792765, 36.342041, 34.000713>,  <30.577398, 36.464153, 33.686539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.792765, 36.342041, 34.000713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324758, -0.935245, -0.140887,
		0.777587, -0.179222, -0.602692,
		0.538415, -0.305281, 0.785438,
		30.954288, 36.250458, 34.236343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.069960, 35.867992, 33.524605>,  <30.577398, 36.464153, 33.686539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.069960, 35.867992, 33.524605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009626, 35.842392, 33.919201>,  <30.973427, 35.827034, 34.155956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.009626, 35.842392, 33.919201>,  <31.069960, 35.867992, 33.524605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.009626, 35.842392, 33.919201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200224, -0.975242, -0.093882,
		0.968070, -0.211679, 0.134283,
		-0.150831, -0.063998, 0.986486,
		30.964376, 35.823193, 34.215145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.451933, 35.288921, 33.881702>,  <31.069960, 35.867992, 33.524605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.451933, 35.288921, 33.881702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152914, 35.357746, 34.138317>,  <30.973503, 35.399040, 34.292286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.152914, 35.357746, 34.138317>,  <31.451933, 35.288921, 33.881702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.152914, 35.357746, 34.138317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252076, -0.967097, -0.034358,
		0.614517, -0.187401, 0.766322,
		-0.747547, 0.172058, 0.641537,
		30.928650, 35.409363, 34.330780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.460459, 34.658428, 34.298504>,  <31.451933, 35.288921, 33.881702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.460459, 34.658428, 34.298504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094740, 34.789177, 34.394180>,  <30.875309, 34.867626, 34.451588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.094740, 34.789177, 34.394180>,  <31.460459, 34.658428, 34.298504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.094740, 34.789177, 34.394180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353782, -0.932014, -0.078661,
		0.197220, -0.156542, 0.967780,
		-0.914299, 0.326869, 0.239194,
		30.820450, 34.887238, 34.465939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184967, 34.499245, 34.003792>,  <31.460459, 34.658428, 34.298504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184967, 34.499245, 34.003792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222645, 34.737923, 34.322559>,  <32.245251, 34.881130, 34.513821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.222645, 34.737923, 34.322559>,  <32.184967, 34.499245, 34.003792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.222645, 34.737923, 34.322559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985797, 0.167700, -0.009046,
		-0.139042, -0.784749, 0.604017,
		0.094195, 0.596695, 0.796921,
		32.250904, 34.916931, 34.561634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.401798, 33.791157, 33.741909>,  <32.184967, 34.499245, 34.003792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.401798, 33.791157, 33.741909> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234314, 33.639248, 33.411953>,  <32.133823, 33.548103, 33.213978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.234314, 33.639248, 33.411953>,  <32.401798, 33.791157, 33.741909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.234314, 33.639248, 33.411953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643314, 0.517080, -0.564602,
		0.640957, -0.767073, 0.027805,
		-0.418714, -0.379772, -0.824895,
		32.108700, 33.525314, 33.164486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.038639, 34.065628, 33.907795>,  <32.401798, 33.791157, 33.741909>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.038639, 34.065628, 33.907795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036629, 34.437454, 33.760345>,  <33.035423, 34.660549, 33.671875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.036629, 34.437454, 33.760345>,  <33.038639, 34.065628, 33.907795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.036629, 34.437454, 33.760345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456544, 0.330105, 0.826195,
		0.889687, -0.164139, -0.426047,
		-0.005029, 0.929564, -0.368627,
		33.035118, 34.716324, 33.649757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.744808, 34.290730, 33.847668>,  <33.038639, 34.065628, 33.907795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.744808, 34.290730, 33.847668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486771, 34.583603, 33.935081>,  <33.331947, 34.759327, 33.987530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.486771, 34.583603, 33.935081>,  <33.744808, 34.290730, 33.847668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.486771, 34.583603, 33.935081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253405, -0.064809, 0.965187,
		0.720858, 0.678015, -0.143732,
		-0.645096, 0.732185, 0.218530,
		33.293243, 34.803257, 34.000641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.158722, 34.839989, 33.491806>,  <33.744808, 34.290730, 33.847668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.158722, 34.839989, 33.491806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313873, 34.529461, 33.690552>,  <34.406963, 34.343143, 33.809799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.313873, 34.529461, 33.690552>,  <34.158722, 34.839989, 33.491806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313873, 34.529461, 33.690552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127427, 0.488722, 0.863084,
		-0.912859, -0.398085, 0.090641,
		0.387879, -0.776324, 0.496861,
		34.430237, 34.296562, 33.839611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.292057, 35.204845, 34.094532>,  <34.158722, 34.839989, 33.491806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.292057, 35.204845, 34.094532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343769, 34.815842, 34.172005>,  <34.374794, 34.582439, 34.218491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.343769, 34.815842, 34.172005>,  <34.292057, 35.204845, 34.094532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.343769, 34.815842, 34.172005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144341, 0.174789, 0.973968,
		-0.981047, -0.153867, -0.117777,
		0.129275, -0.972509, 0.193686,
		34.382553, 34.524090, 34.230110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.796772, 35.021599, 34.456867>,  <34.292057, 35.204845, 34.094532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.796772, 35.021599, 34.456867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079334, 34.757778, 34.559608>,  <34.248871, 34.599483, 34.621254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079334, 34.757778, 34.559608>,  <33.796772, 35.021599, 34.456867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079334, 34.757778, 34.559608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131167, 0.234621, 0.963197,
		-0.695545, -0.714100, 0.079226,
		0.706408, -0.659555, 0.256856,
		34.291256, 34.559910, 34.636665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.527630, 34.581573, 34.981770>,  <33.796772, 35.021599, 34.456867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.527630, 34.581573, 34.981770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926971, 34.568245, 35.000412>,  <34.166576, 34.560249, 35.011597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.926971, 34.568245, 35.000412>,  <33.527630, 34.581573, 34.981770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.926971, 34.568245, 35.000412> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039187, 0.196213, 0.979778,
		-0.041788, -0.979995, 0.194585,
		0.998358, -0.033318, 0.046603,
		34.226479, 34.558250, 35.014393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570744, 34.156723, 35.605701>,  <33.527630, 34.581573, 34.981770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570744, 34.156723, 35.605701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936081, 34.311863, 35.556099>,  <34.155285, 34.404945, 35.526337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936081, 34.311863, 35.556099>,  <33.570744, 34.156723, 35.605701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936081, 34.311863, 35.556099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137197, -0.006374, 0.990523,
		0.383382, -0.921701, -0.059033,
		0.913343, 0.387848, -0.124011,
		34.210083, 34.428219, 35.518894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006298, 33.678818, 35.902832>,  <33.570744, 34.156723, 35.605701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006298, 33.678818, 35.902832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210743, 34.022411, 35.890781>,  <34.333408, 34.228569, 35.883549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.210743, 34.022411, 35.890781>,  <34.006298, 33.678818, 35.902832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.210743, 34.022411, 35.890781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081070, -0.013280, 0.996620,
		0.855683, -0.511826, -0.076426,
		0.511111, 0.858986, -0.030131,
		34.364075, 34.280106, 35.881741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.636513, 33.575829, 36.306561>,  <34.006298, 33.678818, 35.902832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.636513, 33.575829, 36.306561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588722, 33.971581, 36.273464>,  <34.560047, 34.209034, 36.253605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.588722, 33.971581, 36.273464>,  <34.636513, 33.575829, 36.306561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.588722, 33.971581, 36.273464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190296, 0.104613, 0.976137,
		0.974430, 0.100877, -0.200775,
		-0.119474, 0.989384, -0.082742,
		34.552879, 34.268394, 36.248642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.195007, 34.016556, 36.630985>,  <34.636513, 33.575829, 36.306561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.195007, 34.016556, 36.630985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871113, 34.251057, 36.641117>,  <34.676777, 34.391758, 36.647198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.871113, 34.251057, 36.641117>,  <35.195007, 34.016556, 36.630985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.871113, 34.251057, 36.641117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165517, 0.186777, 0.968359,
		0.562968, 0.788306, -0.248274,
		-0.809735, 0.586249, 0.025329,
		34.628193, 34.426933, 36.648716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.467655, 34.417236, 37.183495>,  <35.195007, 34.016556, 36.630985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.467655, 34.417236, 37.183495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076210, 34.482361, 37.133205>,  <34.841343, 34.521435, 37.103031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076210, 34.482361, 37.133205>,  <35.467655, 34.417236, 37.183495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076210, 34.482361, 37.133205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069380, 0.314136, 0.946839,
		0.193653, 0.935313, -0.296122,
		-0.978614, 0.162813, -0.125726,
		34.782627, 34.531204, 37.095490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.194664, 35.031044, 37.554260>,  <35.467655, 34.417236, 37.183495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.194664, 35.031044, 37.554260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856186, 34.826817, 37.493237>,  <34.653099, 34.704281, 37.456623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.856186, 34.826817, 37.493237>,  <35.194664, 35.031044, 37.554260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.856186, 34.826817, 37.493237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264788, 0.154431, 0.951861,
		-0.462429, 0.845856, -0.265870,
		-0.846196, -0.510567, -0.152559,
		34.602325, 34.673645, 37.447468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654453, 35.413879, 37.944824>,  <35.194664, 35.031044, 37.554260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654453, 35.413879, 37.944824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510849, 35.044727, 37.889099>,  <34.424686, 34.823238, 37.855663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510849, 35.044727, 37.889099>,  <34.654453, 35.413879, 37.944824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510849, 35.044727, 37.889099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416810, 0.024981, 0.908650,
		-0.835093, 0.384283, -0.393633,
		-0.359012, -0.922877, -0.139311,
		34.403145, 34.767864, 37.847305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933098, 35.395767, 38.134338>,  <34.654453, 35.413879, 37.944824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933098, 35.395767, 38.134338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058727, 35.016453, 38.152710>,  <34.134106, 34.788864, 38.163734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058727, 35.016453, 38.152710>,  <33.933098, 35.395767, 38.134338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058727, 35.016453, 38.152710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313230, -0.057828, 0.947915,
		-0.896239, -0.312103, -0.315195,
		0.314074, -0.948287, 0.045932,
		34.152950, 34.731968, 38.166489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.472565, 35.198147, 38.635635>,  <33.933098, 35.395767, 38.134338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.472565, 35.198147, 38.635635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713646, 34.880196, 38.607597>,  <33.858295, 34.689426, 38.590775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.713646, 34.880196, 38.607597>,  <33.472565, 35.198147, 38.635635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713646, 34.880196, 38.607597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207317, -0.240804, 0.948174,
		-0.770562, -0.556938, -0.309925,
		0.602705, -0.794879, -0.070092,
		33.894459, 34.641731, 38.586571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.131329, 34.567822, 38.835457>,  <33.472565, 35.198147, 38.635635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.131329, 34.567822, 38.835457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519299, 34.484680, 38.886105>,  <33.752083, 34.434795, 38.916492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.519299, 34.484680, 38.886105>,  <33.131329, 34.567822, 38.835457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.519299, 34.484680, 38.886105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180990, -0.268141, 0.946226,
		-0.162722, -0.940690, -0.297697,
		0.969930, -0.207852, 0.126623,
		33.810276, 34.422325, 38.924091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.216618, 33.852779, 38.978134>,  <33.131329, 34.567822, 38.835457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.216618, 33.852779, 38.978134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550602, 34.030769, 39.107651>,  <33.750992, 34.137562, 39.185360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.550602, 34.030769, 39.107651>,  <33.216618, 33.852779, 38.978134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.550602, 34.030769, 39.107651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225855, -0.259451, 0.938975,
		0.501827, -0.857137, -0.116132,
		0.834961, 0.444974, 0.323788,
		33.801090, 34.164261, 39.204788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510532, 33.305195, 39.445515>,  <33.216618, 33.852779, 38.978134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510532, 33.305195, 39.445515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638988, 33.676136, 39.522331>,  <33.716064, 33.898701, 39.568420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.638988, 33.676136, 39.522331>,  <33.510532, 33.305195, 39.445515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.638988, 33.676136, 39.522331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028025, -0.211996, 0.976869,
		0.946615, -0.308334, -0.094070,
		0.321144, 0.927355, 0.192037,
		33.735332, 33.954342, 39.579941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006153, 33.183216, 40.012131>,  <33.510532, 33.305195, 39.445515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006153, 33.183216, 40.012131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857353, 33.554497, 40.015244>,  <33.768074, 33.777264, 40.017113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.857353, 33.554497, 40.015244>,  <34.006153, 33.183216, 40.012131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.857353, 33.554497, 40.015244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011362, -0.012939, 0.999852,
		0.928163, 0.371857, 0.015360,
		-0.372001, 0.928200, 0.007785,
		33.745754, 33.832958, 40.017578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.246552, 33.344143, 40.655579>,  <34.006153, 33.183216, 40.012131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.246552, 33.344143, 40.655579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978397, 33.621941, 40.551071>,  <33.817505, 33.788620, 40.488365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.978397, 33.621941, 40.551071>,  <34.246552, 33.344143, 40.655579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.978397, 33.621941, 40.551071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337547, 0.028132, 0.940888,
		0.660792, 0.718948, 0.215565,
		-0.670385, 0.694494, -0.261268,
		33.777283, 33.830288, 40.472691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.306591, 33.774433, 41.244045>,  <34.246552, 33.344143, 40.655579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.306591, 33.774433, 41.244045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954834, 33.859531, 41.073681>,  <33.743778, 33.910591, 40.971462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.954834, 33.859531, 41.073681>,  <34.306591, 33.774433, 41.244045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.954834, 33.859531, 41.073681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410040, 0.116157, 0.904641,
		0.241935, 0.970178, -0.014912,
		-0.879395, 0.212750, -0.425914,
		33.691017, 33.923355, 40.945908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.086132, 34.378658, 41.522804>,  <34.306591, 33.774433, 41.244045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.086132, 34.378658, 41.522804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768692, 34.180687, 41.381245>,  <33.578228, 34.061905, 41.296310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.768692, 34.180687, 41.381245>,  <34.086132, 34.378658, 41.522804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.768692, 34.180687, 41.381245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549903, 0.334511, 0.765317,
		-0.260395, 0.801965, -0.537631,
		-0.793600, -0.494930, -0.353897,
		33.530613, 34.032207, 41.275074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.592773, 34.795273, 41.685310>,  <34.086132, 34.378658, 41.522804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.592773, 34.795273, 41.685310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415298, 34.440628, 41.633068>,  <33.308815, 34.227840, 41.601723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.415298, 34.440628, 41.633068>,  <33.592773, 34.795273, 41.685310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415298, 34.440628, 41.633068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410797, 0.071684, 0.908905,
		-0.796486, 0.456921, -0.396023,
		-0.443686, -0.886614, -0.130606,
		33.282192, 34.174644, 41.593887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.840183, 34.944706, 41.921925>,  <33.592773, 34.795273, 41.685310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.840183, 34.944706, 41.921925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874493, 34.546181, 41.921707>,  <32.895077, 34.307064, 41.921577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874493, 34.546181, 41.921707>,  <32.840183, 34.944706, 41.921925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874493, 34.546181, 41.921707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558563, -0.048537, 0.828041,
		-0.825015, -0.070723, -0.560668,
		0.085775, -0.996315, -0.000540,
		32.900227, 34.247288, 41.921547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.203205, 34.657452, 42.105240>,  <32.840183, 34.944706, 41.921925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.203205, 34.657452, 42.105240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462482, 34.365856, 42.193260>,  <32.618050, 34.190899, 42.246071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.462482, 34.365856, 42.193260>,  <32.203205, 34.657452, 42.105240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.462482, 34.365856, 42.193260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503917, -0.194000, 0.841684,
		-0.570892, -0.656456, -0.493101,
		0.648189, -0.728993, 0.220046,
		32.656940, 34.147160, 42.259274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777496, 34.185696, 42.234459>,  <32.203205, 34.657452, 42.105240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777496, 34.185696, 42.234459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131775, 34.113438, 42.405529>,  <32.344341, 34.070084, 42.508171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.131775, 34.113438, 42.405529>,  <31.777496, 34.185696, 42.234459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.131775, 34.113438, 42.405529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449192, -0.100631, 0.887750,
		-0.117353, -0.978382, -0.170284,
		0.885695, -0.180670, 0.427672,
		32.397484, 34.059242, 42.533833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684521, 33.615540, 42.705929>,  <31.777496, 34.185696, 42.234459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684521, 33.615540, 42.705929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028591, 33.768276, 42.841156>,  <32.235035, 33.859921, 42.922295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.028591, 33.768276, 42.841156>,  <31.684521, 33.615540, 42.705929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028591, 33.768276, 42.841156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349270, -0.041979, 0.936081,
		0.371631, -0.923272, 0.097257,
		0.860175, 0.381846, 0.338072,
		32.286644, 33.882832, 42.942577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939444, 33.155251, 43.154140>,  <31.684521, 33.615540, 42.705929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939444, 33.155251, 43.154140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125668, 33.498592, 43.240383>,  <32.237400, 33.704597, 43.292130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.125668, 33.498592, 43.240383>,  <31.939444, 33.155251, 43.154140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125668, 33.498592, 43.240383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191140, -0.140355, 0.971476,
		0.864130, -0.493490, 0.098722,
		0.465558, 0.858352, 0.215611,
		32.265335, 33.756100, 43.305065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.312641, 33.088150, 43.718460>,  <31.939444, 33.155251, 43.154140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.312641, 33.088150, 43.718460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313332, 33.486794, 43.751389>,  <32.313747, 33.725979, 43.771145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.313332, 33.486794, 43.751389>,  <32.312641, 33.088150, 43.718460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.313332, 33.486794, 43.751389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061287, -0.082059, 0.994741,
		0.998119, -0.006766, 0.060937,
		0.001730, 0.996604, 0.082319,
		32.313850, 33.785774, 43.776085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.709667, 33.222164, 44.326588>,  <32.312641, 33.088150, 43.718460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.709667, 33.222164, 44.326588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551868, 33.582096, 44.252106>,  <32.457188, 33.798058, 44.207417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.551868, 33.582096, 44.252106>,  <32.709667, 33.222164, 44.326588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.551868, 33.582096, 44.252106> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082640, 0.167076, 0.982475,
		0.915172, 0.402974, 0.008451,
		-0.394500, 0.899832, -0.186205,
		32.433517, 33.852047, 44.196243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.997738, 33.692905, 44.757893>,  <32.709667, 33.222164, 44.326588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.997738, 33.692905, 44.757893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633930, 33.834034, 44.669994>,  <32.415646, 33.918709, 44.617256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.633930, 33.834034, 44.669994>,  <32.997738, 33.692905, 44.757893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.633930, 33.834034, 44.669994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157476, 0.196777, 0.967719,
		0.384669, 0.914767, -0.123413,
		-0.909522, 0.352817, -0.219748,
		32.361073, 33.939880, 44.604069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928387, 34.326180, 45.041985>,  <32.997738, 33.692905, 44.757893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928387, 34.326180, 45.041985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553940, 34.194305, 44.993019>,  <32.329269, 34.115181, 44.963642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.553940, 34.194305, 44.993019>,  <32.928387, 34.326180, 45.041985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.553940, 34.194305, 44.993019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153109, 0.068717, 0.985817,
		-0.316599, 0.941586, -0.114805,
		-0.936121, -0.329687, -0.122410,
		32.273102, 34.095398, 44.956295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.530369, 34.794453, 45.482529>,  <32.928387, 34.326180, 45.041985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.530369, 34.794453, 45.482529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274460, 34.491261, 45.431690>,  <32.120914, 34.309345, 45.401188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.274460, 34.491261, 45.431690>,  <32.530369, 34.794453, 45.482529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.274460, 34.491261, 45.431690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097816, -0.083726, 0.991676,
		-0.762314, 0.646880, -0.020577,
		-0.639772, -0.757982, -0.127100,
		32.082527, 34.263866, 45.393559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.031483, 34.905277, 45.938736>,  <32.530369, 34.794453, 45.482529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.031483, 34.905277, 45.938736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027786, 34.512577, 45.862762>,  <32.025570, 34.276955, 45.817177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.027786, 34.512577, 45.862762>,  <32.031483, 34.905277, 45.938736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.027786, 34.512577, 45.862762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101462, -0.188042, 0.976906,
		-0.994796, 0.028295, -0.097874,
		-0.009237, -0.981753, -0.189934,
		32.025017, 34.218052, 45.805782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.705633, 34.668724, 46.554157>,  <32.031483, 34.905277, 45.938736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.705633, 34.668724, 46.554157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836800, 34.329205, 46.388264>,  <31.915501, 34.125492, 46.288727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.836800, 34.329205, 46.388264>,  <31.705633, 34.668724, 46.554157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836800, 34.329205, 46.388264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017250, -0.444317, 0.895704,
		-0.944549, -0.286563, -0.160341,
		0.327918, -0.848802, -0.414735,
		31.935175, 34.074566, 46.263844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.269804, 34.138817, 46.846382>,  <31.705633, 34.668724, 46.554157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.269804, 34.138817, 46.846382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592367, 33.942501, 46.714420>,  <31.785904, 33.824711, 46.635242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592367, 33.942501, 46.714420>,  <31.269804, 34.138817, 46.846382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592367, 33.942501, 46.714420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091993, -0.655192, 0.749841,
		-0.584163, -0.574328, -0.573499,
		0.806406, -0.490787, -0.329905,
		31.834290, 33.795265, 46.615448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.116816, 33.492435, 46.876194>,  <31.269804, 34.138817, 46.846382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.116816, 33.492435, 46.876194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515066, 33.468887, 46.847187>,  <31.754017, 33.454758, 46.829784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.515066, 33.468887, 46.847187>,  <31.116816, 33.492435, 46.876194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.515066, 33.468887, 46.847187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019617, -0.627284, 0.778544,
		-0.091319, -0.776563, -0.623387,
		0.995628, -0.058867, -0.072517,
		31.813755, 33.451225, 46.825432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.284473, 32.768093, 46.872658>,  <31.116816, 33.492435, 46.876194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.284473, 32.768093, 46.872658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618860, 32.946735, 47.000217>,  <31.819492, 33.053921, 47.076756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.618860, 32.946735, 47.000217>,  <31.284473, 32.768093, 46.872658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.618860, 32.946735, 47.000217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076060, -0.669798, 0.738637,
		0.543479, -0.593223, -0.593900,
		0.835970, 0.446606, 0.318901,
		31.869652, 33.080719, 47.095886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.894917, 32.278130, 46.843914>,  <31.284473, 32.768093, 46.872658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.894917, 32.278130, 46.843914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986757, 32.542305, 47.129879>,  <32.041862, 32.700809, 47.301460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.986757, 32.542305, 47.129879>,  <31.894917, 32.278130, 46.843914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.986757, 32.542305, 47.129879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120965, -0.748206, 0.652346,
		0.965739, -0.063299, -0.251678,
		0.229600, 0.660440, 0.714915,
		32.055637, 32.740437, 47.344353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.427391, 31.948359, 47.117233>,  <31.894917, 32.278130, 46.843914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.427391, 31.948359, 47.117233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316219, 32.231411, 47.377083>,  <32.249516, 32.401241, 47.532993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.316219, 32.231411, 47.377083>,  <32.427391, 31.948359, 47.117233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.316219, 32.231411, 47.377083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108933, -0.648689, 0.753217,
		0.954405, 0.280108, 0.103206,
		-0.277931, 0.707631, 0.649625,
		32.232841, 32.443699, 47.571972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.814182, 31.818333, 47.714935>,  <32.427391, 31.948359, 47.117233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.814182, 31.818333, 47.714935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515717, 32.046436, 47.852364>,  <32.336636, 32.183300, 47.934822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.515717, 32.046436, 47.852364>,  <32.814182, 31.818333, 47.714935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.515717, 32.046436, 47.852364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071244, -0.581490, 0.810428,
		0.661936, 0.580237, 0.474516,
		-0.746167, 0.570258, 0.343571,
		32.291866, 32.217514, 47.955437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.963928, 31.843330, 48.482124>,  <32.814182, 31.818333, 47.714935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.963928, 31.843330, 48.482124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582294, 31.950773, 48.429104>,  <32.353313, 32.015240, 48.397293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.582294, 31.950773, 48.429104>,  <32.963928, 31.843330, 48.482124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.582294, 31.950773, 48.429104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284417, -0.673610, 0.682170,
		0.093948, 0.688549, 0.719078,
		-0.954086, 0.268607, -0.132551,
		32.296070, 32.031357, 48.389339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755325, 31.929241, 49.114784>,  <32.963928, 31.843330, 48.482124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755325, 31.929241, 49.114784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418472, 31.848595, 48.914715>,  <32.216362, 31.800207, 48.794674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.418472, 31.848595, 48.914715>,  <32.755325, 31.929241, 49.114784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.418472, 31.848595, 48.914715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252523, -0.672090, 0.696080,
		-0.476500, 0.712494, 0.515074,
		-0.842128, -0.201614, -0.500171,
		32.165833, 31.788111, 48.764664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.131683, 31.870106, 49.653076>,  <32.755325, 31.929241, 49.114784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.131683, 31.870106, 49.653076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039726, 31.687061, 49.309509>,  <31.984550, 31.577234, 49.103371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.039726, 31.687061, 49.309509>,  <32.131683, 31.870106, 49.653076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.039726, 31.687061, 49.309509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315173, -0.799986, 0.510576,
		-0.920768, 0.388087, 0.039687,
		-0.229897, -0.457613, -0.858916,
		31.970757, 31.549778, 49.051834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.479322, 31.445866, 49.693897>,  <32.131683, 31.870106, 49.653076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.479322, 31.445866, 49.693897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662489, 31.286301, 49.376110>,  <31.772388, 31.190561, 49.185436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662489, 31.286301, 49.376110>,  <31.479322, 31.445866, 49.693897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662489, 31.286301, 49.376110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250113, -0.915382, 0.315467,
		-0.853085, 0.054248, -0.518943,
		0.457918, -0.398915, -0.794467,
		31.799864, 31.166626, 49.137772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.463369, 30.751469, 49.581543>,  <31.479322, 31.445866, 49.693897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.463369, 30.751469, 49.581543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539223, 30.367218, 49.662773>,  <31.584734, 30.136667, 49.711510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.539223, 30.367218, 49.662773>,  <31.463369, 30.751469, 49.581543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.539223, 30.367218, 49.662773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074063, 0.192243, 0.978549,
		-0.979058, -0.200605, -0.034691,
		0.189632, -0.960625, 0.203074,
		31.596113, 30.079031, 49.723694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007099, 30.562061, 50.143059>,  <31.463369, 30.751469, 49.581543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007099, 30.562061, 50.143059> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328978, 30.324610, 50.146294>,  <31.522104, 30.182138, 50.148235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.328978, 30.324610, 50.146294>,  <31.007099, 30.562061, 50.143059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.328978, 30.324610, 50.146294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129273, 0.188494, 0.973529,
		-0.579440, -0.782351, 0.228421,
		0.804697, -0.593630, 0.008084,
		31.570387, 30.146521, 50.148720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.797100, 30.045118, 50.666340>,  <31.007099, 30.562061, 50.143059>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.797100, 30.045118, 50.666340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190380, 30.092312, 50.610634>,  <31.426348, 30.120628, 50.577209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.190380, 30.092312, 50.610634>,  <30.797100, 30.045118, 50.666340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.190380, 30.092312, 50.610634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112606, 0.208382, 0.971544,
		0.143641, -0.970906, 0.191597,
		0.983203, 0.117978, -0.139262,
		31.485340, 30.127707, 50.568855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.160362, 29.759548, 51.275677>,  <30.797100, 30.045118, 50.666340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.160362, 29.759548, 51.275677> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428640, 30.017822, 51.129658>,  <31.589607, 30.172787, 51.042046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.428640, 30.017822, 51.129658>,  <31.160362, 29.759548, 51.275677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.428640, 30.017822, 51.129658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293247, 0.221233, 0.930087,
		0.681303, -0.730854, -0.040965,
		0.670695, 0.645684, -0.365047,
		31.629848, 30.211527, 51.020145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800791, 29.550686, 51.547241>,  <31.160362, 29.759548, 51.275677>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800791, 29.550686, 51.547241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773176, 29.945148, 51.486942>,  <31.756607, 30.181826, 51.450764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.773176, 29.945148, 51.486942>,  <31.800791, 29.550686, 51.547241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.773176, 29.945148, 51.486942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287150, 0.164359, 0.943680,
		0.955395, 0.021859, -0.294522,
		-0.069035, 0.986158, -0.150750,
		31.752466, 30.240995, 51.441715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.479580, 29.802437, 51.761467>,  <31.800791, 29.550686, 51.547241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.479580, 29.802437, 51.761467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163536, 30.037849, 51.830009>,  <31.973911, 30.179096, 51.871136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.163536, 30.037849, 51.830009>,  <32.479580, 29.802437, 51.761467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.163536, 30.037849, 51.830009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179425, -0.045255, 0.982730,
		0.586123, 0.807206, -0.069841,
		-0.790105, 0.588532, 0.171359,
		31.926504, 30.214409, 51.881416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.305172, 30.295570, 51.183846>,  <32.479580, 29.802437, 51.761467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.305172, 30.295570, 51.183846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006264, 30.034098, 51.136028>,  <31.826920, 29.877214, 51.107338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006264, 30.034098, 51.136028>,  <32.305172, 30.295570, 51.183846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006264, 30.034098, 51.136028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181392, -0.027591, -0.983024,
		0.639289, -0.756264, 0.139191,
		-0.747266, -0.653684, -0.119542,
		31.782084, 29.837992, 51.100166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.497658, 29.743738, 50.664074>,  <32.305172, 30.295570, 51.183846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.497658, 29.743738, 50.664074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098454, 29.719263, 50.658108>,  <31.858931, 29.704578, 50.654526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.098454, 29.719263, 50.658108>,  <32.497658, 29.743738, 50.664074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.098454, 29.719263, 50.658108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017681, -0.044867, -0.998836,
		0.060450, -0.997117, 0.045860,
		-0.998015, -0.061191, -0.014918,
		31.799049, 29.700907, 50.653633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294857, 29.132730, 50.237778>,  <32.497658, 29.743738, 50.664074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294857, 29.132730, 50.237778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983891, 29.384289, 50.233421>,  <31.797312, 29.535223, 50.230808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.983891, 29.384289, 50.233421>,  <32.294857, 29.132730, 50.237778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.983891, 29.384289, 50.233421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089558, -0.127820, -0.987746,
		-0.622582, -0.766911, 0.155691,
		-0.777413, 0.628896, -0.010896,
		31.750666, 29.572958, 50.230152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.716925, 28.813189, 49.927635>,  <32.294857, 29.132730, 50.237778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.716925, 28.813189, 49.927635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668966, 29.206924, 49.875950>,  <31.640190, 29.443167, 49.844936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.668966, 29.206924, 49.875950>,  <31.716925, 28.813189, 49.927635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668966, 29.206924, 49.875950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276781, -0.158136, -0.947832,
		-0.953424, -0.077878, 0.291407,
		-0.119897, 0.984341, -0.129215,
		31.632998, 29.502228, 49.837185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071695, 28.851858, 49.544323>,  <31.716925, 28.813189, 49.927635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071695, 28.851858, 49.544323> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255201, 29.199236, 49.469128>,  <31.365305, 29.407663, 49.424011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.255201, 29.199236, 49.469128>,  <31.071695, 28.851858, 49.544323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.255201, 29.199236, 49.469128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287156, -0.055306, -0.956286,
		-0.840878, 0.492692, 0.224007,
		0.458765, 0.868445, -0.187985,
		31.392830, 29.459770, 49.412731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.678926, 29.203960, 48.980026>,  <31.071695, 28.851858, 49.544323>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.678926, 29.203960, 48.980026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029463, 29.396265, 48.968056>,  <31.239784, 29.511648, 48.960873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.029463, 29.396265, 48.968056>,  <30.678926, 29.203960, 48.980026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.029463, 29.396265, 48.968056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061368, 0.049800, -0.996872,
		-0.477769, 0.875435, 0.073145,
		0.876340, 0.480763, -0.029930,
		31.292364, 29.540493, 48.959076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.656723, 29.716509, 48.426186>,  <30.678926, 29.203960, 48.980026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.656723, 29.716509, 48.426186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040432, 29.631905, 48.501080>,  <31.270658, 29.581142, 48.546017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.040432, 29.631905, 48.501080>,  <30.656723, 29.716509, 48.426186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.040432, 29.631905, 48.501080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207407, 0.077390, -0.975189,
		0.191771, 0.974307, 0.118106,
		0.959274, -0.211509, 0.187237,
		31.328215, 29.568453, 48.557251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.956253, 30.032600, 47.878269>,  <30.656723, 29.716509, 48.426186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.956253, 30.032600, 47.878269> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238583, 29.775515, 47.997421>,  <31.407980, 29.621264, 48.068913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.238583, 29.775515, 47.997421>,  <30.956253, 30.032600, 47.878269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.238583, 29.775515, 47.997421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354176, -0.044002, -0.934143,
		0.613493, 0.764843, 0.196576,
		0.705823, -0.642713, 0.297884,
		31.450329, 29.582701, 48.086788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.610111, 30.334639, 47.721745>,  <30.956253, 30.032600, 47.878269>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.610111, 30.334639, 47.721745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662420, 29.939302, 47.752945>,  <31.693806, 29.702101, 47.771664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662420, 29.939302, 47.752945>,  <31.610111, 30.334639, 47.721745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662420, 29.939302, 47.752945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504121, -0.001455, -0.863632,
		0.853675, 0.152261, 0.498052,
		0.130773, -0.988339, 0.078000,
		31.701653, 29.642801, 47.776344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.251575, 30.208164, 47.714333>,  <31.610111, 30.334639, 47.721745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.251575, 30.208164, 47.714333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073086, 29.874075, 47.585777>,  <31.965992, 29.673622, 47.508644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.073086, 29.874075, 47.585777>,  <32.251575, 30.208164, 47.714333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.073086, 29.874075, 47.585777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276327, 0.212985, -0.937166,
		0.851193, -0.506991, 0.135756,
		-0.446221, -0.835223, -0.321387,
		31.939219, 29.623508, 47.489361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.722702, 29.898439, 47.317257>,  <32.251575, 30.208164, 47.714333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.722702, 29.898439, 47.317257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403820, 29.683462, 47.207264>,  <32.212490, 29.554476, 47.141270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.403820, 29.683462, 47.207264>,  <32.722702, 29.898439, 47.317257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.403820, 29.683462, 47.207264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341450, -0.025767, -0.939547,
		0.497869, -0.842905, 0.204052,
		-0.797207, -0.537445, -0.274981,
		32.164658, 29.522228, 47.124771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.992821, 29.377569, 46.897705>,  <32.722702, 29.898439, 47.317257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.992821, 29.377569, 46.897705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605938, 29.394650, 46.797562>,  <32.373806, 29.404898, 46.737476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.605938, 29.394650, 46.797562>,  <32.992821, 29.377569, 46.897705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.605938, 29.394650, 46.797562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240681, -0.160603, -0.957225,
		-0.081080, -0.986095, 0.145060,
		-0.967212, 0.042698, -0.250356,
		32.315773, 29.407459, 46.722454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.863628, 28.867981, 46.284725>,  <32.992821, 29.377569, 46.897705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.863628, 28.867981, 46.284725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530544, 29.089010, 46.270557>,  <32.330692, 29.221628, 46.262058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530544, 29.089010, 46.270557>,  <32.863628, 28.867981, 46.284725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530544, 29.089010, 46.270557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088155, 0.069151, -0.993703,
		-0.546644, -0.830591, -0.106295,
		-0.832711, 0.552573, -0.035419,
		32.280731, 29.254782, 46.259933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588634, 28.751667, 45.629902>,  <32.863628, 28.867981, 46.284725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588634, 28.751667, 45.629902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416183, 29.100080, 45.724072>,  <32.312714, 29.309130, 45.780575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.416183, 29.100080, 45.724072>,  <32.588634, 28.751667, 45.629902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.416183, 29.100080, 45.724072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108565, 0.309104, -0.944811,
		-0.895737, -0.381773, -0.227827,
		-0.431126, 0.871036, 0.235429,
		32.286846, 29.361391, 45.794701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.163258, 28.824823, 45.061771>,  <32.588634, 28.751667, 45.629902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.163258, 28.824823, 45.061771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188179, 29.198818, 45.201439>,  <32.203133, 29.423216, 45.285240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.188179, 29.198818, 45.201439>,  <32.163258, 28.824823, 45.061771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.188179, 29.198818, 45.201439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247029, 0.324514, -0.913054,
		-0.967003, 0.143139, -0.210751,
		0.062302, 0.934988, 0.349165,
		32.206871, 29.479315, 45.306187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.797770, 29.145565, 44.698292>,  <32.163258, 28.824823, 45.061771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.797770, 29.145565, 44.698292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009796, 29.448202, 44.851444>,  <32.137012, 29.629784, 44.943336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.009796, 29.448202, 44.851444>,  <31.797770, 29.145565, 44.698292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.009796, 29.448202, 44.851444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161182, 0.353405, -0.921480,
		-0.832497, 0.550158, 0.065378,
		0.530065, 0.756592, 0.382884,
		32.168816, 29.675180, 44.966309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.617868, 29.804953, 44.410732>,  <31.797770, 29.145565, 44.698292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.617868, 29.804953, 44.410732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994965, 29.851124, 44.535900>,  <32.221222, 29.878826, 44.611000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.994965, 29.851124, 44.535900>,  <31.617868, 29.804953, 44.410732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.994965, 29.851124, 44.535900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239303, 0.419460, -0.875664,
		-0.232333, 0.900406, 0.367820,
		0.942738, 0.115426, 0.312924,
		32.277786, 29.885752, 44.629776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820641, 30.384830, 44.119808>,  <31.617868, 29.804953, 44.410732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820641, 30.384830, 44.119808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162457, 30.210526, 44.232857>,  <32.367546, 30.105942, 44.300686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.162457, 30.210526, 44.232857>,  <31.820641, 30.384830, 44.119808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.162457, 30.210526, 44.232857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423280, 0.268937, -0.865163,
		0.300997, 0.858944, 0.414266,
		0.854538, -0.435762, 0.282624,
		32.418819, 30.079798, 44.317642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.272900, 30.833172, 43.990856>,  <31.820641, 30.384830, 44.119808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.272900, 30.833172, 43.990856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497177, 30.501986, 43.987125>,  <32.631744, 30.303272, 43.984886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.497177, 30.501986, 43.987125>,  <32.272900, 30.833172, 43.990856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.497177, 30.501986, 43.987125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483145, 0.336290, -0.808381,
		0.672450, 0.448751, 0.588586,
		0.560698, -0.827968, -0.009326,
		32.665386, 30.253595, 43.984329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.850273, 31.062744, 43.888897>,  <32.272900, 30.833172, 43.990856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.850273, 31.062744, 43.888897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894493, 30.679384, 43.783634>,  <32.921024, 30.449369, 43.720478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.894493, 30.679384, 43.783634>,  <32.850273, 31.062744, 43.888897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.894493, 30.679384, 43.783634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382175, 0.285413, -0.878909,
		0.917453, -0.003405, 0.397829,
		0.110553, -0.958399, -0.263154,
		32.927658, 30.391865, 43.704689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.184174, 31.149311, 43.335194>,  <32.850273, 31.062744, 43.888897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.184174, 31.149311, 43.335194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076080, 30.769005, 43.274506>,  <33.011223, 30.540821, 43.238094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.076080, 30.769005, 43.274506>,  <33.184174, 31.149311, 43.335194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.076080, 30.769005, 43.274506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253351, 0.081809, -0.963909,
		0.928862, -0.298922, 0.218770,
		-0.270237, -0.950764, -0.151721,
		32.995010, 30.483776, 43.228989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.703285, 30.724031, 42.875248>,  <33.184174, 31.149311, 43.335194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.703285, 30.724031, 42.875248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342960, 30.550369, 42.872425>,  <33.126766, 30.446173, 42.870731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.342960, 30.550369, 42.872425>,  <33.703285, 30.724031, 42.875248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342960, 30.550369, 42.872425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029015, 0.076394, -0.996655,
		0.433242, -0.897593, -0.081414,
		-0.900810, -0.434155, -0.007054,
		33.072716, 30.420122, 42.870308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838394, 30.183859, 42.450821>,  <33.703285, 30.724031, 42.875248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838394, 30.183859, 42.450821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443104, 30.243006, 42.466534>,  <33.205929, 30.278494, 42.475964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.443104, 30.243006, 42.466534>,  <33.838394, 30.183859, 42.450821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.443104, 30.243006, 42.466534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029866, 0.065389, -0.997413,
		-0.150053, -0.986843, -0.060203,
		-0.988227, 0.147866, 0.039285,
		33.146637, 30.287365, 42.478317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.673710, 30.022234, 41.737755>,  <33.838394, 30.183859, 42.450821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.673710, 30.022234, 41.737755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333954, 30.185966, 41.871014>,  <33.130100, 30.284206, 41.950970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.333954, 30.185966, 41.871014>,  <33.673710, 30.022234, 41.737755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.333954, 30.185966, 41.871014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198519, 0.337073, -0.920311,
		-0.489007, -0.847838, -0.205046,
		-0.849390, 0.409332, 0.333143,
		33.079136, 30.308765, 41.970955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230045, 29.811975, 41.281265>,  <33.673710, 30.022234, 41.737755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230045, 29.811975, 41.281265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097340, 30.143753, 41.461025>,  <33.017715, 30.342819, 41.568882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.097340, 30.143753, 41.461025>,  <33.230045, 29.811975, 41.281265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.097340, 30.143753, 41.461025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221113, 0.394735, -0.891792,
		-0.917084, -0.395229, 0.052444,
		-0.331761, 0.829445, 0.449396,
		32.997810, 30.392586, 41.595844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.599609, 29.778175, 40.971474>,  <33.230045, 29.811975, 41.281265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.599609, 29.778175, 40.971474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721481, 30.136820, 41.100010>,  <32.794605, 30.352007, 41.177132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.721481, 30.136820, 41.100010>,  <32.599609, 29.778175, 40.971474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721481, 30.136820, 41.100010> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224376, 0.395452, -0.890659,
		-0.925647, 0.199269, 0.321666,
		0.304684, 0.896610, 0.321338,
		32.812885, 30.405804, 41.196411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.150856, 30.238323, 40.709408>,  <32.599609, 29.778175, 40.971474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.150856, 30.238323, 40.709408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450890, 30.486128, 40.801991>,  <32.630909, 30.634809, 40.857540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.450890, 30.486128, 40.801991>,  <32.150856, 30.238323, 40.709408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450890, 30.486128, 40.801991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131845, 0.483043, -0.865613,
		-0.648062, 0.618769, 0.444005,
		0.750088, 0.619511, 0.231460,
		32.675915, 30.671982, 40.871429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.892126, 30.974672, 40.659859>,  <32.150856, 30.238323, 40.709408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.892126, 30.974672, 40.659859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289803, 30.980412, 40.617199>,  <32.528408, 30.983854, 40.591602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.289803, 30.980412, 40.617199>,  <31.892126, 30.974672, 40.659859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.289803, 30.980412, 40.617199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106018, 0.300541, -0.947858,
		0.018453, 0.953661, 0.300317,
		0.994193, 0.014349, -0.106652,
		32.588062, 30.984716, 40.585205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964233, 31.559418, 40.349838>,  <31.892126, 30.974672, 40.659859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964233, 31.559418, 40.349838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282955, 31.325039, 40.290821>,  <32.474190, 31.184412, 40.255413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.282955, 31.325039, 40.290821>,  <31.964233, 31.559418, 40.349838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.282955, 31.325039, 40.290821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049920, 0.307177, -0.950342,
		0.602171, 0.749872, 0.274011,
		0.796805, -0.585947, -0.147540,
		32.521996, 31.149256, 40.246559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.269398, 31.806192, 39.792664>,  <31.964233, 31.559418, 40.349838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.269398, 31.806192, 39.792664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512199, 31.488321, 39.794910>,  <32.657879, 31.297598, 39.796257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.512199, 31.488321, 39.794910>,  <32.269398, 31.806192, 39.792664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.512199, 31.488321, 39.794910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112251, 0.078741, -0.990555,
		0.786730, 0.601903, 0.137000,
		0.607005, -0.794678, 0.005617,
		32.694302, 31.249918, 39.796597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.975449, 31.980968, 39.351028>,  <32.269398, 31.806192, 39.792664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.975449, 31.980968, 39.351028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941452, 31.582638, 39.364311>,  <32.921055, 31.343639, 39.372280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.941452, 31.582638, 39.364311>,  <32.975449, 31.980968, 39.351028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.941452, 31.582638, 39.364311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303453, -0.057614, -0.951103,
		0.949048, -0.070762, 0.307084,
		-0.084994, -0.995828, 0.033206,
		32.915955, 31.283890, 39.374271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.515358, 31.849060, 39.094101>,  <32.975449, 31.980968, 39.351028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.515358, 31.849060, 39.094101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287601, 31.522799, 39.053104>,  <33.150948, 31.327042, 39.028507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.287601, 31.522799, 39.053104>,  <33.515358, 31.849060, 39.094101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.287601, 31.522799, 39.053104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257528, -0.058582, -0.964494,
		0.780690, -0.575566, 0.243410,
		-0.569389, -0.815655, -0.102490,
		33.116783, 31.278103, 39.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975544, 31.215178, 38.894112>,  <33.515358, 31.849060, 39.094101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975544, 31.215178, 38.894112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596794, 31.187504, 38.768482>,  <33.369545, 31.170900, 38.693104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.596794, 31.187504, 38.768482>,  <33.975544, 31.215178, 38.894112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.596794, 31.187504, 38.768482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320458, -0.285156, -0.903323,
		-0.027064, -0.955981, 0.292177,
		-0.946876, -0.069183, -0.314069,
		33.312733, 31.166748, 38.674263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.029247, 30.797567, 38.239803>,  <33.975544, 31.215178, 38.894112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.029247, 30.797567, 38.239803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656059, 30.935904, 38.199886>,  <33.432144, 31.018906, 38.175934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.656059, 30.935904, 38.199886>,  <34.029247, 30.797567, 38.239803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.656059, 30.935904, 38.199886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048546, -0.153823, -0.986905,
		-0.356661, -0.925600, 0.126724,
		-0.932972, 0.345838, -0.099797,
		33.376167, 31.039656, 38.169949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.735851, 30.232588, 37.823315>,  <34.029247, 30.797567, 38.239803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.735851, 30.232588, 37.823315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491657, 30.548212, 37.795914>,  <33.345142, 30.737587, 37.779472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.491657, 30.548212, 37.795914>,  <33.735851, 30.232588, 37.823315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.491657, 30.548212, 37.795914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081918, -0.148933, -0.985448,
		-0.787781, -0.595988, 0.155559,
		-0.610483, 0.789061, -0.068504,
		33.308514, 30.784931, 37.775364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266724, 30.047810, 37.310177>,  <33.735851, 30.232588, 37.823315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266724, 30.047810, 37.310177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208897, 30.441902, 37.346889>,  <33.174202, 30.678358, 37.368916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.208897, 30.441902, 37.346889>,  <33.266724, 30.047810, 37.310177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.208897, 30.441902, 37.346889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075535, 0.103470, -0.991760,
		-0.986608, -0.136442, -0.089378,
		-0.144565, 0.985230, 0.091778,
		33.165527, 30.737471, 37.374424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.769913, 30.252104, 36.790401>,  <33.266724, 30.047810, 37.310177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.769913, 30.252104, 36.790401> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971184, 30.582773, 36.891140>,  <33.091946, 30.781176, 36.951584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.971184, 30.582773, 36.891140>,  <32.769913, 30.252104, 36.790401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.971184, 30.582773, 36.891140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068544, 0.252330, -0.965210,
		-0.861462, 0.502933, 0.070303,
		0.503176, 0.826673, 0.251846,
		33.122135, 30.830774, 36.966694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.646324, 30.746138, 36.291527>,  <32.769913, 30.252104, 36.790401>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.646324, 30.746138, 36.291527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972015, 30.921072, 36.444244>,  <33.167431, 31.026031, 36.535873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972015, 30.921072, 36.444244>,  <32.646324, 30.746138, 36.291527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972015, 30.921072, 36.444244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210221, 0.390905, -0.896103,
		-0.541141, 0.809896, 0.226350,
		0.814232, 0.437335, 0.381792,
		33.216286, 31.052273, 36.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.573475, 31.635731, 36.287270>,  <32.646324, 30.746138, 36.291527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.573475, 31.635731, 36.287270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959759, 31.531879, 36.286777>,  <33.191528, 31.469568, 36.286484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.959759, 31.531879, 36.286777>,  <32.573475, 31.635731, 36.287270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.959759, 31.531879, 36.286777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136829, 0.512947, -0.847445,
		0.220650, 0.818216, 0.530882,
		0.965708, -0.259629, -0.001226,
		33.249470, 31.453991, 36.286411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.867970, 32.206387, 35.926079>,  <32.573475, 31.635731, 36.287270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.867970, 32.206387, 35.926079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155109, 31.928865, 35.902977>,  <33.327393, 31.762354, 35.889114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.155109, 31.928865, 35.902977>,  <32.867970, 32.206387, 35.926079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.155109, 31.928865, 35.902977> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353996, 0.435177, -0.827833,
		0.599484, 0.573814, 0.557994,
		0.717848, -0.693800, -0.057754,
		33.370464, 31.720726, 35.885651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.494953, 32.510124, 35.799694>,  <32.867970, 32.206387, 35.926079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.494953, 32.510124, 35.799694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575859, 32.138813, 35.674870>,  <33.624401, 31.916025, 35.599976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.575859, 32.138813, 35.674870>,  <33.494953, 32.510124, 35.799694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.575859, 32.138813, 35.674870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405509, 0.369435, -0.836110,
		0.891433, 0.042570, 0.451149,
		0.202264, -0.928281, -0.312064,
		33.636539, 31.860329, 35.581249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.205105, 32.604973, 35.613445>,  <33.494953, 32.510124, 35.799694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.205105, 32.604973, 35.613445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041031, 32.297203, 35.417595>,  <33.942585, 32.112541, 35.300083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.041031, 32.297203, 35.417595>,  <34.205105, 32.604973, 35.613445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041031, 32.297203, 35.417595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495370, 0.262804, -0.827975,
		0.765738, -0.582173, 0.273349,
		-0.410187, -0.769421, -0.489630,
		33.917976, 32.066376, 35.270706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.688156, 32.434967, 35.169712>,  <34.205105, 32.604973, 35.613445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.688156, 32.434967, 35.169712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391834, 32.233280, 34.992184>,  <34.214043, 32.112267, 34.885666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.391834, 32.233280, 34.992184>,  <34.688156, 32.434967, 35.169712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391834, 32.233280, 34.992184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467027, 0.088274, -0.879826,
		0.482804, -0.859052, 0.170091,
		-0.740801, -0.504220, -0.443819,
		34.169594, 32.082016, 34.859039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.053562, 32.048801, 34.598423>,  <34.688156, 32.434967, 35.169712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.053562, 32.048801, 34.598423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666496, 32.053017, 34.497608>,  <34.434258, 32.055546, 34.437119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666496, 32.053017, 34.497608>,  <35.053562, 32.048801, 34.598423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666496, 32.053017, 34.497608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248591, 0.209549, -0.945670,
		0.042844, -0.977741, -0.205393,
		-0.967660, 0.010543, -0.252036,
		34.376198, 32.056179, 34.421997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.484489, 32.177105, 35.252640>,  <35.053562, 32.048801, 34.598423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.484489, 32.177105, 35.252640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871864, 32.094761, 35.196434>,  <36.104290, 32.045357, 35.162712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.871864, 32.094761, 35.196434>,  <35.484489, 32.177105, 35.252640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871864, 32.094761, 35.196434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118518, -0.876301, 0.466959,
		-0.219258, -0.435569, -0.873044,
		0.968442, -0.205856, -0.140513,
		36.162395, 32.033005, 35.154282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.510090, 31.360676, 35.247154>,  <35.484489, 32.177105, 35.252640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.510090, 31.360676, 35.247154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896393, 31.457994, 35.283180>,  <36.128174, 31.516386, 35.304794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.896393, 31.457994, 35.283180>,  <35.510090, 31.360676, 35.247154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.896393, 31.457994, 35.283180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114614, -0.711571, 0.693203,
		0.232739, -0.659147, -0.715093,
		0.965762, 0.243295, 0.090063,
		36.186123, 31.530983, 35.310200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008545, 30.695406, 35.171925>,  <35.510090, 31.360676, 35.247154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008545, 30.695406, 35.171925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187321, 30.976971, 35.392742>,  <36.294586, 31.145910, 35.525234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.187321, 30.976971, 35.392742>,  <36.008545, 30.695406, 35.171925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.187321, 30.976971, 35.392742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048316, -0.635203, 0.770832,
		0.893258, -0.317844, -0.317908,
		0.446940, 0.703912, 0.552044,
		36.321404, 31.188145, 35.558353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.612247, 30.336548, 35.462223>,  <36.008545, 30.695406, 35.171925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.612247, 30.336548, 35.462223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539059, 30.663250, 35.681107>,  <36.495148, 30.859270, 35.812435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.539059, 30.663250, 35.681107>,  <36.612247, 30.336548, 35.462223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539059, 30.663250, 35.681107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093176, -0.539692, 0.836690,
		0.978694, 0.204074, 0.022645,
		-0.182968, 0.816753, 0.547208,
		36.484169, 30.908276, 35.845268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.104710, 30.336908, 35.965439>,  <36.612247, 30.336548, 35.462223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.104710, 30.336908, 35.965439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845757, 30.591623, 36.132961>,  <36.690384, 30.744452, 36.233475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.845757, 30.591623, 36.132961>,  <37.104710, 30.336908, 35.965439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.845757, 30.591623, 36.132961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045354, -0.580708, 0.812847,
		0.760817, 0.507226, 0.404819,
		-0.647380, 0.636788, 0.418808,
		36.651543, 30.782660, 36.258602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.298779, 30.403538, 36.670475>,  <37.104710, 30.336908, 35.965439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.298779, 30.403538, 36.670475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925953, 30.548321, 36.664219>,  <36.702259, 30.635191, 36.660465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.925953, 30.548321, 36.664219>,  <37.298779, 30.403538, 36.670475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.925953, 30.548321, 36.664219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221517, -0.535190, 0.815170,
		0.286685, 0.763255, 0.579011,
		-0.932063, 0.361958, -0.015642,
		36.646336, 30.656908, 36.659527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171112, 30.618988, 37.345650>,  <37.298779, 30.403538, 36.670475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171112, 30.618988, 37.345650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801197, 30.586422, 37.196983>,  <36.579247, 30.566883, 37.107784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.801197, 30.586422, 37.196983>,  <37.171112, 30.618988, 37.345650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.801197, 30.586422, 37.196983> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291918, -0.474674, 0.830343,
		-0.244020, 0.876388, 0.415208,
		-0.924791, -0.081414, -0.371663,
		36.523758, 30.561998, 37.085484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.773544, 30.992252, 37.773499>,  <37.171112, 30.618988, 37.345650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.773544, 30.992252, 37.773499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536247, 30.720083, 37.601414>,  <36.393867, 30.556782, 37.498165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.536247, 30.720083, 37.601414>,  <36.773544, 30.992252, 37.773499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536247, 30.720083, 37.601414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115777, -0.456738, 0.882035,
		-0.796652, 0.573073, 0.192180,
		-0.593246, -0.680425, -0.430210,
		36.358273, 30.515955, 37.472351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.398930, 30.846111, 38.361076>,  <36.773544, 30.992252, 37.773499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.398930, 30.846111, 38.361076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275341, 30.576218, 38.092964>,  <36.201187, 30.414282, 37.932098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.275341, 30.576218, 38.092964>,  <36.398930, 30.846111, 38.361076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.275341, 30.576218, 38.092964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141001, -0.664475, 0.733888,
		-0.940561, 0.321262, 0.110167,
		-0.308973, -0.674732, -0.670277,
		36.182648, 30.373798, 37.891880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780300, 30.519970, 38.607544>,  <36.398930, 30.846111, 38.361076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780300, 30.519970, 38.607544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939648, 30.246483, 38.362976>,  <36.035255, 30.082390, 38.216236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.939648, 30.246483, 38.362976>,  <35.780300, 30.519970, 38.607544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.939648, 30.246483, 38.362976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190628, -0.713756, 0.673953,
		-0.897200, -0.151925, -0.414670,
		0.398364, -0.683718, -0.611421,
		36.059158, 30.041367, 38.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325115, 29.859573, 38.721207>,  <35.780300, 30.519970, 38.607544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325115, 29.859573, 38.721207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654575, 29.712057, 38.548885>,  <35.852253, 29.623547, 38.445492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.654575, 29.712057, 38.548885>,  <35.325115, 29.859573, 38.721207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.654575, 29.712057, 38.548885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082248, -0.829319, 0.552689,
		-0.561104, -0.419789, -0.713400,
		0.823649, -0.368791, -0.430807,
		35.901669, 29.601419, 38.419643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138340, 29.254297, 38.305588>,  <35.325115, 29.859573, 38.721207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138340, 29.254297, 38.305588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511543, 29.249523, 38.449448>,  <35.735466, 29.246658, 38.535763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.511543, 29.249523, 38.449448>,  <35.138340, 29.254297, 38.305588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.511543, 29.249523, 38.449448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181229, -0.879033, 0.440973,
		0.310884, -0.476612, -0.822309,
		0.933009, -0.011935, 0.359653,
		35.791447, 29.245943, 38.557343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.362713, 28.558241, 38.317936>,  <35.138340, 29.254297, 38.305588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.362713, 28.558241, 38.317936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606441, 28.738686, 38.578773>,  <35.752678, 28.846952, 38.735275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.606441, 28.738686, 38.578773>,  <35.362713, 28.558241, 38.317936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.606441, 28.738686, 38.578773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148900, -0.742662, 0.652903,
		0.778817, -0.494924, -0.385349,
		0.609322, 0.451114, 0.652092,
		35.789238, 28.874020, 38.774403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596458, 28.017263, 38.691273>,  <35.362713, 28.558241, 38.317936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596458, 28.017263, 38.691273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686222, 28.332682, 38.920300>,  <35.740082, 28.521933, 39.057716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.686222, 28.332682, 38.920300>,  <35.596458, 28.017263, 38.691273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.686222, 28.332682, 38.920300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103156, -0.565029, 0.818597,
		0.969020, -0.242764, -0.045454,
		0.224409, 0.788548, 0.572567,
		35.753544, 28.569246, 39.092072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.036026, 27.806885, 39.266556>,  <35.596458, 28.017263, 38.691273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.036026, 27.806885, 39.266556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903748, 28.160042, 39.399902>,  <35.824379, 28.371937, 39.479912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903748, 28.160042, 39.399902>,  <36.036026, 27.806885, 39.266556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903748, 28.160042, 39.399902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017870, -0.359040, 0.933151,
		0.943567, 0.302635, 0.134511,
		-0.330699, 0.882894, 0.333370,
		35.804539, 28.424910, 39.499912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.272068, 27.764246, 39.860195>,  <36.036026, 27.806885, 39.266556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.272068, 27.764246, 39.860195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033379, 28.084370, 39.883602>,  <35.890163, 28.276443, 39.897644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.033379, 28.084370, 39.883602>,  <36.272068, 27.764246, 39.860195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.033379, 28.084370, 39.883602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092137, -0.140772, 0.985745,
		0.797138, 0.582828, 0.157741,
		-0.596725, 0.800309, 0.058514,
		35.854362, 28.324463, 39.901157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.488815, 28.190254, 40.495396>,  <36.272068, 27.764246, 39.860195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.488815, 28.190254, 40.495396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107841, 28.272749, 40.405659>,  <35.879257, 28.322247, 40.351818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107841, 28.272749, 40.405659>,  <36.488815, 28.190254, 40.495396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107841, 28.272749, 40.405659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225786, 0.016814, 0.974032,
		0.204655, 0.978357, 0.030552,
		-0.952437, 0.206238, -0.224340,
		35.822109, 28.334620, 40.338356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275494, 28.721441, 40.996262>,  <36.488815, 28.190254, 40.495396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275494, 28.721441, 40.996262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914978, 28.593094, 40.879833>,  <35.698669, 28.516085, 40.809975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.914978, 28.593094, 40.879833>,  <36.275494, 28.721441, 40.996262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914978, 28.593094, 40.879833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266818, -0.118181, 0.956473,
		-0.341302, 0.939721, 0.020901,
		-0.901289, -0.320869, -0.291070,
		35.644592, 28.496834, 40.792511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777332, 29.136402, 41.431957>,  <36.275494, 28.721441, 40.996262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777332, 29.136402, 41.431957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597870, 28.803587, 41.301468>,  <35.490192, 28.603897, 41.223175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.597870, 28.803587, 41.301468>,  <35.777332, 29.136402, 41.431957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.597870, 28.803587, 41.301468> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407095, -0.134684, 0.903401,
		-0.795601, 0.538119, -0.278292,
		-0.448656, -0.832038, -0.326221,
		35.463272, 28.553976, 41.203602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050610, 29.259209, 41.529224>,  <35.777332, 29.136402, 41.431957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050610, 29.259209, 41.529224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096413, 28.862465, 41.551521>,  <35.123894, 28.624418, 41.564899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.096413, 28.862465, 41.551521>,  <35.050610, 29.259209, 41.529224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096413, 28.862465, 41.551521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620879, -0.027646, 0.783418,
		-0.775498, -0.124316, -0.618989,
		0.114504, -0.991858, 0.055746,
		35.130764, 28.564907, 41.568245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364811, 29.007177, 41.771393>,  <35.050610, 29.259209, 41.529224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364811, 29.007177, 41.771393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619564, 28.708275, 41.847271>,  <34.772415, 28.528933, 41.892799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619564, 28.708275, 41.847271>,  <34.364811, 29.007177, 41.771393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619564, 28.708275, 41.847271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497838, -0.210740, 0.841276,
		-0.588671, -0.630236, -0.506230,
		0.636885, -0.747256, 0.189699,
		34.810631, 28.484098, 41.904182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.946648, 28.601377, 42.201214>,  <34.364811, 29.007177, 41.771393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.946648, 28.601377, 42.201214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320007, 28.472315, 42.264030>,  <34.544022, 28.394878, 42.301720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.320007, 28.472315, 42.264030>,  <33.946648, 28.601377, 42.201214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.320007, 28.472315, 42.264030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209868, -0.135874, 0.968243,
		-0.291072, -0.936713, -0.194539,
		0.933398, -0.322656, 0.157037,
		34.600025, 28.375519, 42.311142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.893890, 27.987728, 42.699738>,  <33.946648, 28.601377, 42.201214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.893890, 27.987728, 42.699738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274872, 28.105528, 42.730980>,  <34.503460, 28.176208, 42.749725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.274872, 28.105528, 42.730980>,  <33.893890, 27.987728, 42.699738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.274872, 28.105528, 42.730980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.080277, -0.004726, 0.996761,
		0.293916, -0.955640, 0.019140,
		0.952454, 0.294500, 0.078105,
		34.560608, 28.193878, 42.754410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264732, 27.480619, 43.070564>,  <33.893890, 27.987728, 42.699738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264732, 27.480619, 43.070564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485744, 27.808933, 43.128551>,  <34.618355, 28.005922, 43.163342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485744, 27.808933, 43.128551>,  <34.264732, 27.480619, 43.070564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485744, 27.808933, 43.128551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168949, -0.060022, 0.983796,
		0.816187, -0.568073, 0.105507,
		0.552535, 0.820786, 0.144965,
		34.651505, 28.055170, 43.172039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.672291, 27.305582, 43.807484>,  <34.264732, 27.480619, 43.070564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.672291, 27.305582, 43.807484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728741, 27.695818, 43.740177>,  <34.762611, 27.929958, 43.699795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.728741, 27.695818, 43.740177>,  <34.672291, 27.305582, 43.807484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.728741, 27.695818, 43.740177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069954, 0.179367, 0.981292,
		0.987518, -0.126709, 0.093559,
		0.141120, 0.975588, -0.168264,
		34.771076, 27.988495, 43.689697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309338, 27.617317, 44.063320>,  <34.672291, 27.305582, 43.807484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309338, 27.617317, 44.063320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044697, 27.916546, 44.042667>,  <34.885910, 28.096083, 44.030277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.044697, 27.916546, 44.042667>,  <35.309338, 27.617317, 44.063320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.044697, 27.916546, 44.042667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196954, 0.239803, 0.950633,
		0.723526, 0.618773, -0.305991,
		-0.661604, 0.748074, -0.051633,
		34.846214, 28.140968, 44.027176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.683926, 28.254759, 44.300541>,  <35.309338, 27.617317, 44.063320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.683926, 28.254759, 44.300541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289536, 28.299988, 44.349640>,  <35.052902, 28.327126, 44.379101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.289536, 28.299988, 44.349640>,  <35.683926, 28.254759, 44.300541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.289536, 28.299988, 44.349640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150654, 0.286530, 0.946152,
		0.071814, 0.951375, -0.299546,
		-0.985975, 0.113074, 0.122752,
		34.993744, 28.333910, 44.386467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652618, 28.485357, 44.931751>,  <35.683926, 28.254759, 44.300541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.652618, 28.485357, 44.931751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257549, 28.443691, 44.885021>,  <35.020508, 28.418692, 44.856983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.257549, 28.443691, 44.885021>,  <35.652618, 28.485357, 44.931751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.257549, 28.443691, 44.885021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133646, 0.172695, 0.975866,
		-0.081478, 0.979452, -0.184488,
		-0.987674, -0.104167, -0.116829,
		34.961246, 28.412441, 44.849972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.385586, 29.074678, 45.251099>,  <35.652618, 28.485357, 44.931751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.385586, 29.074678, 45.251099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122345, 28.773682, 45.240860>,  <34.964401, 28.593084, 45.234718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.122345, 28.773682, 45.240860>,  <35.385586, 29.074678, 45.251099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.122345, 28.773682, 45.240860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002892, -0.031463, 0.999501,
		-0.752921, 0.657850, 0.018530,
		-0.658105, -0.752491, -0.025592,
		34.924915, 28.547934, 45.233181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.863270, 29.332777, 45.807190>,  <35.385586, 29.074678, 45.251099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.863270, 29.332777, 45.807190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828312, 28.938171, 45.751835>,  <34.807339, 28.701408, 45.718620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828312, 28.938171, 45.751835>,  <34.863270, 29.332777, 45.807190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828312, 28.938171, 45.751835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005667, -0.139409, 0.990219,
		-0.996158, 0.085755, 0.017775,
		-0.087394, -0.986515, -0.138387,
		34.802094, 28.642218, 45.710320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.276009, 29.120455, 46.227776>,  <34.863270, 29.332777, 45.807190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.276009, 29.120455, 46.227776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456436, 28.765778, 46.187157>,  <34.564693, 28.552971, 46.162785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.456436, 28.765778, 46.187157>,  <34.276009, 29.120455, 46.227776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456436, 28.765778, 46.187157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025298, -0.101035, 0.994561,
		-0.892131, -0.451184, -0.023142,
		0.451068, -0.886693, -0.101550,
		34.591755, 28.499769, 46.156693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.903500, 28.509003, 46.531353>,  <34.276009, 29.120455, 46.227776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.903500, 28.509003, 46.531353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265949, 28.343657, 46.495415>,  <34.483418, 28.244450, 46.473854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.265949, 28.343657, 46.495415>,  <33.903500, 28.509003, 46.531353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.265949, 28.343657, 46.495415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110927, 0.027236, 0.993455,
		-0.408212, -0.910158, 0.070532,
		0.906123, -0.413365, -0.089843,
		34.537785, 28.219646, 46.468460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.864162, 27.989447, 47.102131>,  <33.903500, 28.509003, 46.531353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.864162, 27.989447, 47.102131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252995, 27.998970, 47.008762>,  <34.486294, 28.004684, 46.952744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.252995, 27.998970, 47.008762>,  <33.864162, 27.989447, 47.102131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.252995, 27.998970, 47.008762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232899, 0.022725, 0.972235,
		0.028475, -0.999458, 0.016540,
		0.972084, 0.023832, -0.233420,
		34.544621, 28.006113, 46.938736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.247753, 27.336908, 47.286709>,  <33.864162, 27.989447, 47.102131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.247753, 27.336908, 47.286709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490517, 27.654804, 47.283829>,  <34.636173, 27.845541, 47.282101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.490517, 27.654804, 47.283829>,  <34.247753, 27.336908, 47.286709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.490517, 27.654804, 47.283829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054088, -0.032268, 0.998015,
		0.792929, -0.606093, -0.062570,
		0.606908, 0.794739, -0.007197,
		34.672588, 27.893227, 47.281670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.609684, 27.170731, 47.836414>,  <34.247753, 27.336908, 47.286709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.609684, 27.170731, 47.836414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706352, 27.555534, 47.785603>,  <34.764355, 27.786417, 47.755116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.706352, 27.555534, 47.785603>,  <34.609684, 27.170731, 47.836414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.706352, 27.555534, 47.785603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082564, 0.110045, 0.990492,
		0.966840, -0.249860, -0.052832,
		0.241670, 0.962008, -0.127025,
		34.778854, 27.844137, 47.747494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.024155, 27.276970, 48.303299>,  <34.609684, 27.170731, 47.836414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.024155, 27.276970, 48.303299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989784, 27.665167, 48.213181>,  <34.969162, 27.898085, 48.159111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.989784, 27.665167, 48.213181>,  <35.024155, 27.276970, 48.303299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989784, 27.665167, 48.213181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130755, 0.235162, 0.963121,
		0.987684, 0.053297, -0.147103,
		-0.085924, 0.970494, -0.225297,
		34.964008, 27.956314, 48.145592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622074, 27.659309, 48.456642>,  <35.024155, 27.276970, 48.303299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622074, 27.659309, 48.456642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324875, 27.925983, 48.480247>,  <35.146557, 28.085987, 48.494411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324875, 27.925983, 48.480247>,  <35.622074, 27.659309, 48.456642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324875, 27.925983, 48.480247> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097047, 0.020079, 0.995077,
		0.662219, 0.745069, -0.079619,
		-0.743000, 0.666686, 0.059010,
		35.101974, 28.125990, 48.497952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.242527, 27.795307, 48.323025>,  <35.622074, 27.659309, 48.456642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.242527, 27.795307, 48.323025> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162102, 27.578127, 48.649162>,  <36.113846, 27.447819, 48.844845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162102, 27.578127, 48.649162>,  <36.242527, 27.795307, 48.323025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162102, 27.578127, 48.649162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281911, -0.765055, -0.578980,
		0.938137, -0.346263, 0.000758,
		-0.201059, -0.542949, 0.815342,
		36.101784, 27.415243, 48.893764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.936310, 28.130842, 48.919163>,  <36.242527, 27.795307, 48.323025>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.936310, 28.130842, 48.919163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233570, 28.322676, 49.105808>,  <36.411926, 28.437777, 49.217796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.233570, 28.322676, 49.105808>,  <35.936310, 28.130842, 48.919163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.233570, 28.322676, 49.105808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323067, 0.353519, -0.877868,
		-0.585968, 0.803134, 0.107780,
		0.743148, 0.479583, 0.466617,
		36.456516, 28.466551, 49.245792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894455, 28.877466, 48.679089>,  <35.936310, 28.130842, 48.919163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894455, 28.877466, 48.679089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268593, 28.803713, 48.799839>,  <36.493076, 28.759460, 48.872288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.268593, 28.803713, 48.799839>,  <35.894455, 28.877466, 48.679089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.268593, 28.803713, 48.799839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346637, 0.307726, -0.886086,
		0.070485, 0.933439, 0.351745,
		0.935347, -0.184383, 0.301874,
		36.549198, 28.748398, 48.890400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.305309, 29.454514, 48.554287>,  <35.894455, 28.877466, 48.679089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.305309, 29.454514, 48.554287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596985, 29.185259, 48.603554>,  <36.771992, 29.023706, 48.633114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.596985, 29.185259, 48.603554>,  <36.305309, 29.454514, 48.554287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.596985, 29.185259, 48.603554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493456, 0.392524, -0.776161,
		0.474115, 0.626747, 0.618388,
		0.729188, -0.673137, 0.123171,
		36.815742, 28.983318, 48.640507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.709293, 29.781979, 48.168797>,  <36.305309, 29.454514, 48.554287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.709293, 29.781979, 48.168797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876530, 29.427763, 48.249813>,  <36.976871, 29.215233, 48.298424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.876530, 29.427763, 48.249813>,  <36.709293, 29.781979, 48.168797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876530, 29.427763, 48.249813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667068, 0.147942, -0.730160,
		0.616621, 0.440380, 0.652568,
		0.418090, -0.885539, 0.202539,
		37.001957, 29.162102, 48.310574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.500317, 29.858154, 48.268272>,  <36.709293, 29.781979, 48.168797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.500317, 29.858154, 48.268272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407078, 29.490122, 48.142342>,  <37.351135, 29.269302, 48.066784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.407078, 29.490122, 48.142342>,  <37.500317, 29.858154, 48.268272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.407078, 29.490122, 48.142342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582124, 0.127308, -0.803072,
		0.778971, -0.370461, 0.505927,
		-0.233098, -0.920082, -0.314823,
		37.337147, 29.214098, 48.047894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.109104, 29.664137, 48.003681>,  <37.500317, 29.858154, 48.268272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.109104, 29.664137, 48.003681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849628, 29.418583, 47.823750>,  <37.693943, 29.271250, 47.715790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.849628, 29.418583, 47.823750>,  <38.109104, 29.664137, 48.003681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.849628, 29.418583, 47.823750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536152, 0.050863, -0.842587,
		0.540131, -0.787756, 0.296141,
		-0.648690, -0.613884, -0.449830,
		37.655022, 29.234417, 47.688801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525852, 29.329172, 47.517876>,  <38.109104, 29.664137, 48.003681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525852, 29.329172, 47.517876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168835, 29.226730, 47.369404>,  <37.954624, 29.165264, 47.280323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.168835, 29.226730, 47.369404>,  <38.525852, 29.329172, 47.517876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.168835, 29.226730, 47.369404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394116, -0.042983, -0.918055,
		0.219165, -0.965692, 0.139300,
		-0.892546, -0.256106, -0.371175,
		37.901070, 29.149899, 47.258053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.587387, 28.872606, 46.867836>,  <38.525852, 29.329172, 47.517876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.587387, 28.872606, 46.867836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217514, 29.015312, 46.814659>,  <37.995590, 29.100935, 46.782753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.217514, 29.015312, 46.814659>,  <38.587387, 28.872606, 46.867836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.217514, 29.015312, 46.814659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124703, -0.046114, -0.991122,
		-0.359727, -0.933056, -0.001849,
		-0.924687, 0.356763, -0.132943,
		37.940109, 29.122341, 46.774776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.259060, 28.492844, 46.304367>,  <38.587387, 28.872606, 46.867836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.259060, 28.492844, 46.304367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054966, 28.836845, 46.307186>,  <37.932510, 29.043247, 46.308876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.054966, 28.836845, 46.307186>,  <38.259060, 28.492844, 46.304367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.054966, 28.836845, 46.307186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061300, -0.028195, -0.997721,
		-0.857847, -0.509505, 0.067104,
		-0.510236, 0.860005, 0.007045,
		37.901894, 29.094847, 46.309299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760113, 28.379503, 45.768768>,  <38.259060, 28.492844, 46.304367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760113, 28.379503, 45.768768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756805, 28.775681, 45.823833>,  <37.754822, 29.013388, 45.856873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.756805, 28.775681, 45.823833>,  <37.760113, 28.379503, 45.768768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.756805, 28.775681, 45.823833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149869, 0.134886, -0.979462,
		-0.988671, -0.028730, 0.147322,
		-0.008268, 0.990445, 0.137664,
		37.754326, 29.072813, 45.865131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250610, 28.551437, 45.424896>,  <37.760113, 28.379503, 45.768768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250610, 28.551437, 45.424896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450741, 28.896399, 45.455708>,  <37.570820, 29.103374, 45.474194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.450741, 28.896399, 45.455708>,  <37.250610, 28.551437, 45.424896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450741, 28.896399, 45.455708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153077, 0.175664, -0.972476,
		-0.852197, 0.474765, 0.219903,
		0.500327, 0.862404, 0.077025,
		37.600838, 29.155119, 45.478817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.859684, 28.983841, 45.127136>,  <37.250610, 28.551437, 45.424896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.859684, 28.983841, 45.127136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219376, 29.158566, 45.117420>,  <37.435188, 29.263401, 45.111591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.219376, 29.158566, 45.117420>,  <36.859684, 28.983841, 45.127136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.219376, 29.158566, 45.117420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108005, 0.167843, -0.979879,
		-0.423945, 0.883756, 0.198106,
		0.899225, 0.436812, -0.024293,
		37.489143, 29.289610, 45.110130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.787498, 29.604921, 44.665615>,  <36.859684, 28.983841, 45.127136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.787498, 29.604921, 44.665615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160725, 29.461658, 44.678917>,  <37.384663, 29.375700, 44.686897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.160725, 29.461658, 44.678917>,  <36.787498, 29.604921, 44.665615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.160725, 29.461658, 44.678917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130523, 0.250980, -0.959152,
		0.335183, 0.899295, 0.280929,
		0.933068, -0.358160, 0.033254,
		37.440643, 29.354210, 44.688892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.155548, 30.029284, 44.184097>,  <36.787498, 29.604921, 44.665615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.155548, 30.029284, 44.184097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395912, 29.713346, 44.233181>,  <37.540131, 29.523785, 44.262630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395912, 29.713346, 44.233181>,  <37.155548, 30.029284, 44.184097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395912, 29.713346, 44.233181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341258, 0.114679, -0.932948,
		0.722811, 0.602490, 0.338452,
		0.600906, -0.789844, 0.122713,
		37.576183, 29.476393, 44.269997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853500, 30.268482, 44.029964>,  <37.155548, 30.029284, 44.184097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853500, 30.268482, 44.029964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829746, 29.870676, 43.995537>,  <37.815495, 29.631992, 43.974880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.829746, 29.870676, 43.995537>,  <37.853500, 30.268482, 44.029964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829746, 29.870676, 43.995537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163265, 0.075386, -0.983698,
		0.984793, -0.072468, 0.157893,
		-0.059384, -0.994518, -0.086071,
		37.811932, 29.572321, 43.969715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403385, 30.014238, 43.603863>,  <37.853500, 30.268482, 44.029964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403385, 30.014238, 43.603863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143856, 29.710606, 43.582634>,  <37.988136, 29.528425, 43.569897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.143856, 29.710606, 43.582634>,  <38.403385, 30.014238, 43.603863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.143856, 29.710606, 43.582634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147556, -0.057085, -0.987405,
		0.746493, -0.648486, 0.149045,
		-0.648827, -0.759083, -0.053074,
		37.949207, 29.482882, 43.566711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.744423, 29.445778, 43.288609>,  <38.403385, 30.014238, 43.603863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.744423, 29.445778, 43.288609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355877, 29.385094, 43.215462>,  <38.122749, 29.348682, 43.171574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355877, 29.385094, 43.215462>,  <38.744423, 29.445778, 43.288609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355877, 29.385094, 43.215462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178621, 0.041257, -0.983053,
		0.156686, -0.987563, -0.012977,
		-0.971362, -0.151712, -0.182864,
		38.064468, 29.339581, 43.160603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721226, 28.848063, 42.759151>,  <38.744423, 29.445778, 43.288609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721226, 28.848063, 42.759151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368023, 29.035713, 42.753227>,  <38.156101, 29.148304, 42.749672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368023, 29.035713, 42.753227>,  <38.721226, 28.848063, 42.759151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368023, 29.035713, 42.753227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020340, 0.006715, -0.999771,
		-0.468922, -0.883104, -0.015472,
		-0.883005, 0.469129, -0.014813,
		38.103123, 29.176453, 42.748783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370560, 28.526772, 42.166763>,  <38.721226, 28.848063, 42.759151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370560, 28.526772, 42.166763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204391, 28.882538, 42.243046>,  <38.104691, 29.095997, 42.288815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.204391, 28.882538, 42.243046>,  <38.370560, 28.526772, 42.166763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.204391, 28.882538, 42.243046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137335, 0.145925, -0.979717,
		-0.899204, -0.433182, 0.061529,
		-0.415417, 0.889415, 0.190707,
		38.079765, 29.149363, 42.300259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825714, 28.555288, 41.719818>,  <38.370560, 28.526772, 42.166763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825714, 28.555288, 41.719818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861397, 28.929726, 41.855919>,  <37.882805, 29.154388, 41.937580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.861397, 28.929726, 41.855919>,  <37.825714, 28.555288, 41.719818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.861397, 28.929726, 41.855919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164900, 0.350782, -0.921824,
		-0.982268, 0.026125, 0.185654,
		0.089206, 0.936093, 0.340254,
		37.888157, 29.210554, 41.957996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249355, 28.954149, 41.460320>,  <37.825714, 28.555288, 41.719818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249355, 28.954149, 41.460320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540829, 29.217268, 41.536564>,  <37.715714, 29.375139, 41.582310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.540829, 29.217268, 41.536564>,  <37.249355, 28.954149, 41.460320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.540829, 29.217268, 41.536564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106705, 0.383970, -0.917159,
		-0.676492, 0.647976, 0.349980,
		0.728679, 0.657795, 0.190610,
		37.759434, 29.414606, 41.593746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008827, 29.576038, 41.329407>,  <37.249355, 28.954149, 41.460320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008827, 29.576038, 41.329407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405151, 29.614302, 41.291145>,  <37.642944, 29.637260, 41.268188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.405151, 29.614302, 41.291145>,  <37.008827, 29.576038, 41.329407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.405151, 29.614302, 41.291145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127658, 0.427207, -0.895096,
		-0.044761, 0.899079, 0.435492,
		0.990808, 0.095660, -0.095652,
		37.702393, 29.643000, 41.262451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.100704, 30.213387, 41.018127>,  <37.008827, 29.576038, 41.329407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.100704, 30.213387, 41.018127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458103, 30.045153, 40.955185>,  <37.672543, 29.944212, 40.917419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.458103, 30.045153, 40.955185>,  <37.100704, 30.213387, 41.018127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.458103, 30.045153, 40.955185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086728, 0.505444, -0.858490,
		0.440606, 0.753415, 0.488091,
		0.893501, -0.420587, -0.157360,
		37.726154, 29.918976, 40.907978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.541599, 30.790331, 40.637962>,  <37.100704, 30.213387, 41.018127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.541599, 30.790331, 40.637962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755589, 30.452917, 40.618984>,  <37.883984, 30.250469, 40.607597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.755589, 30.452917, 40.618984>,  <37.541599, 30.790331, 40.637962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.755589, 30.452917, 40.618984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231842, 0.200578, -0.951850,
		0.812434, 0.498217, 0.302871,
		0.534977, -0.843533, -0.047449,
		37.916080, 30.199858, 40.604748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096954, 31.026506, 40.229435>,  <37.541599, 30.790331, 40.637962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096954, 31.026506, 40.229435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105118, 30.626595, 40.227489>,  <38.110016, 30.386648, 40.226322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.105118, 30.626595, 40.227489>,  <38.096954, 31.026506, 40.229435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.105118, 30.626595, 40.227489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370144, 0.012076, -0.928896,
		0.928750, 0.017160, 0.370309,
		0.020412, -0.999780, -0.004864,
		38.111240, 30.326660, 40.226028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.693096, 30.862892, 40.050930>,  <38.096954, 31.026506, 40.229435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.693096, 30.862892, 40.050930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474899, 30.539574, 39.962307>,  <38.343979, 30.345583, 39.909134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474899, 30.539574, 39.962307>,  <38.693096, 30.862892, 40.050930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474899, 30.539574, 39.962307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357897, 0.014383, -0.933650,
		0.757855, -0.588597, 0.281441,
		-0.545496, -0.808299, -0.221558,
		38.311249, 30.297085, 39.895840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.120319, 30.369240, 39.674660>,  <38.693096, 30.862892, 40.050930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.120319, 30.369240, 39.674660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753437, 30.242086, 39.578583>,  <38.533310, 30.165794, 39.520939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.753437, 30.242086, 39.578583>,  <39.120319, 30.369240, 39.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.753437, 30.242086, 39.578583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309450, -0.188651, -0.932015,
		0.250960, -0.929172, 0.271401,
		-0.917202, -0.317884, -0.240189,
		38.478275, 30.146721, 39.506527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146053, 29.575640, 39.462715>,  <39.120319, 30.369240, 39.674660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146053, 29.575640, 39.462715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835903, 29.763041, 39.293343>,  <38.649811, 29.875481, 39.191719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835903, 29.763041, 39.293343>,  <39.146053, 29.575640, 39.462715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835903, 29.763041, 39.293343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401140, -0.152450, -0.903242,
		-0.487723, -0.870209, -0.069729,
		-0.775379, 0.468503, -0.423429,
		38.603291, 29.903591, 39.166313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988338, 29.223783, 38.938915>,  <39.146053, 29.575640, 39.462715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988338, 29.223783, 38.938915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814400, 29.572390, 38.848259>,  <38.710037, 29.781553, 38.793865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.814400, 29.572390, 38.848259>,  <38.988338, 29.223783, 38.938915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.814400, 29.572390, 38.848259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431293, -0.019376, -0.902004,
		-0.790502, -0.489983, -0.367454,
		-0.434847, 0.871516, -0.226643,
		38.683945, 29.833845, 38.780266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.915829, 29.198668, 38.248196>,  <38.988338, 29.223783, 38.938915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.915829, 29.198668, 38.248196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891178, 29.590322, 38.325649>,  <38.876389, 29.825315, 38.372120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.891178, 29.590322, 38.325649>,  <38.915829, 29.198668, 38.248196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.891178, 29.590322, 38.325649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539025, 0.195927, -0.819185,
		-0.840032, 0.053895, -0.539853,
		-0.061622, 0.979136, 0.193635,
		38.872692, 29.884064, 38.383739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.671280, 29.530033, 37.644344>,  <38.915829, 29.198668, 38.248196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.671280, 29.530033, 37.644344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864468, 29.815109, 37.847839>,  <38.980381, 29.986155, 37.969936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.864468, 29.815109, 37.847839>,  <38.671280, 29.530033, 37.644344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.864468, 29.815109, 37.847839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470432, 0.278838, -0.837224,
		-0.738538, 0.643677, -0.200604,
		0.482965, 0.712692, 0.508738,
		39.009357, 30.028917, 38.000462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.733475, 30.057365, 37.255322>,  <38.671280, 29.530033, 37.644344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.733475, 30.057365, 37.255322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020035, 30.154953, 37.516781>,  <39.191971, 30.213505, 37.673656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.020035, 30.154953, 37.516781>,  <38.733475, 30.057365, 37.255322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.020035, 30.154953, 37.516781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561265, 0.354985, -0.747641,
		-0.414436, 0.902477, 0.117379,
		0.716397, 0.243969, 0.653647,
		39.234955, 30.228144, 37.712875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.975662, 30.657024, 37.009438>,  <38.733475, 30.057365, 37.255322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.975662, 30.657024, 37.009438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266716, 30.541342, 37.258244>,  <39.441349, 30.471931, 37.407528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.266716, 30.541342, 37.258244>,  <38.975662, 30.657024, 37.009438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.266716, 30.541342, 37.258244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685960, 0.305716, -0.660301,
		0.000805, 0.907136, 0.420836,
		0.727639, -0.289208, 0.622013,
		39.485008, 30.454578, 37.444847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.445744, 31.230003, 36.912384>,  <38.975662, 30.657024, 37.009438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.445744, 31.230003, 36.912384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660023, 30.938330, 37.082710>,  <39.788589, 30.763325, 37.184906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.660023, 30.938330, 37.082710>,  <39.445744, 31.230003, 36.912384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.660023, 30.938330, 37.082710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812965, 0.309036, -0.493543,
		0.228291, 0.610563, 0.758351,
		0.535697, -0.729184, 0.425817,
		39.820732, 30.719574, 37.210457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.019173, 31.572214, 37.217285>,  <39.445744, 31.230003, 36.912384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.019173, 31.572214, 37.217285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104439, 31.186920, 37.151875>,  <40.155598, 30.955744, 37.112629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.104439, 31.186920, 37.151875>,  <40.019173, 31.572214, 37.217285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.104439, 31.186920, 37.151875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874854, 0.262698, -0.406965,
		0.434961, -0.056312, 0.898687,
		0.213166, -0.963234, -0.163528,
		40.168388, 30.897949, 37.102818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.817535, 31.605999, 37.477726>,  <40.019173, 31.572214, 37.217285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.817535, 31.605999, 37.477726> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708813, 31.267746, 37.293976>,  <40.643578, 31.064795, 37.183727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.708813, 31.267746, 37.293976>,  <40.817535, 31.605999, 37.477726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.708813, 31.267746, 37.293976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869455, -0.011174, -0.493886,
		0.412514, -0.533647, 0.738277,
		-0.271811, -0.845634, -0.459372,
		40.627270, 31.014055, 37.156162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.525753, 31.270874, 37.386646>,  <40.817535, 31.605999, 37.477726>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.525753, 31.270874, 37.386646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274006, 31.095560, 37.129959>,  <41.122959, 30.990372, 36.975945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274006, 31.095560, 37.129959>,  <41.525753, 31.270874, 37.386646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274006, 31.095560, 37.129959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708249, 0.016344, -0.705774,
		0.319819, -0.898687, 0.300129,
		-0.629365, -0.438285, -0.641721,
		41.085197, 30.964075, 36.937443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.892761, 30.863043, 37.092945>,  <41.525753, 31.270874, 37.386646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.892761, 30.863043, 37.092945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599316, 30.894352, 36.822926>,  <41.423248, 30.913137, 36.660915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.599316, 30.894352, 36.822926>,  <41.892761, 30.863043, 37.092945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.599316, 30.894352, 36.822926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679268, 0.114142, -0.724960,
		0.020306, -0.990376, -0.136905,
		-0.733610, 0.078274, -0.675048,
		41.379234, 30.917833, 36.620411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.966125, 30.318331, 36.488834>,  <41.892761, 30.863043, 37.092945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.966125, 30.318331, 36.488834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747223, 30.631840, 36.371387>,  <41.615879, 30.819944, 36.300919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.747223, 30.631840, 36.371387>,  <41.966125, 30.318331, 36.488834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.747223, 30.631840, 36.371387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632070, 0.157065, -0.758827,
		-0.548630, -0.600860, -0.581353,
		-0.547260, 0.783771, -0.293615,
		41.583046, 30.866972, 36.283302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033417, 30.347178, 35.828712>,  <41.966125, 30.318331, 36.488834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033417, 30.347178, 35.828712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919643, 30.720314, 35.917168>,  <41.851379, 30.944197, 35.970242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.919643, 30.720314, 35.917168>,  <42.033417, 30.347178, 35.828712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.919643, 30.720314, 35.917168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662998, 0.358012, -0.657466,
		-0.692481, -0.040394, -0.720304,
		-0.284435, 0.932843, 0.221135,
		41.834312, 31.000168, 35.983509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919926, 30.663868, 35.169312>,  <42.033417, 30.347178, 35.828712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919926, 30.663868, 35.169312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019596, 30.953592, 35.426460>,  <42.079399, 31.127426, 35.580750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.019596, 30.953592, 35.426460>,  <41.919926, 30.663868, 35.169312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.019596, 30.953592, 35.426460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594943, 0.409306, -0.691745,
		-0.764170, 0.554838, -0.328935,
		0.249172, 0.724309, 0.642877,
		42.094349, 31.170885, 35.619324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809860, 31.376101, 34.862907>,  <41.919926, 30.663868, 35.169312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809860, 31.376101, 34.862907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131168, 31.348526, 35.099552>,  <42.323952, 31.331982, 35.241539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.131168, 31.348526, 35.099552>,  <41.809860, 31.376101, 34.862907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.131168, 31.348526, 35.099552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545794, 0.482873, -0.684794,
		-0.238467, 0.872973, 0.425502,
		0.803270, -0.068935, 0.591612,
		42.372150, 31.327845, 35.277035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.189194, 32.071171, 35.002857>,  <41.809860, 31.376101, 34.862907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.189194, 32.071171, 35.002857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465210, 31.791466, 35.077549>,  <42.630821, 31.623642, 35.122364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465210, 31.791466, 35.077549>,  <42.189194, 32.071171, 35.002857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465210, 31.791466, 35.077549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654230, 0.492289, -0.574138,
		0.309553, 0.518341, 0.797182,
		0.690043, -0.699267, 0.186725,
		42.672222, 31.581686, 35.133568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.779434, 32.349213, 35.307808>,  <42.189194, 32.071171, 35.002857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.779434, 32.349213, 35.307808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853687, 32.024017, 35.087048>,  <42.898239, 31.828901, 34.954594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.853687, 32.024017, 35.087048>,  <42.779434, 32.349213, 35.307808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.853687, 32.024017, 35.087048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438174, 0.571214, -0.694059,
		0.879513, -0.112986, 0.462268,
		0.185635, -0.812987, -0.551898,
		42.909378, 31.780121, 34.921478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546135, 32.294201, 35.146114>,  <42.779434, 32.349213, 35.307808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546135, 32.294201, 35.146114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332188, 32.143425, 34.843636>,  <43.203819, 32.052959, 34.662148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.332188, 32.143425, 34.843636>,  <43.546135, 32.294201, 35.146114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.332188, 32.143425, 34.843636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411970, 0.665048, -0.622891,
		0.737700, -0.644693, -0.200423,
		-0.534864, -0.376938, -0.756200,
		43.171730, 32.030342, 34.616776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.969437, 32.175266, 34.628956>,  <43.546135, 32.294201, 35.146114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.969437, 32.175266, 34.628956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610168, 32.216061, 34.457897>,  <43.394608, 32.240536, 34.355263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.610168, 32.216061, 34.457897>,  <43.969437, 32.175266, 34.628956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.610168, 32.216061, 34.457897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361271, 0.725536, -0.585730,
		0.250539, -0.680585, -0.688502,
		-0.898172, 0.101987, -0.427651,
		43.340717, 32.246658, 34.329601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.429939, 32.435623, 34.043533>,  <43.969437, 32.175266, 34.628956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.429939, 32.435623, 34.043533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493809, 32.827599, 33.995834>,  <44.532131, 33.062786, 33.967216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.493809, 32.827599, 33.995834>,  <44.429939, 32.435623, 34.043533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.493809, 32.827599, 33.995834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485059, -0.027325, -0.874054,
		-0.859780, 0.197404, 0.470967,
		0.159673, 0.979941, -0.119246,
		44.541710, 33.121582, 33.960060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.829609, 32.708664, 33.976566>,  <44.429939, 32.435623, 34.043533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.829609, 32.708664, 33.976566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093853, 32.956551, 33.807079>,  <44.252399, 33.105282, 33.705387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.093853, 32.956551, 33.807079>,  <43.829609, 32.708664, 33.976566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.093853, 32.956551, 33.807079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518501, -0.031528, -0.854496,
		-0.542905, 0.784191, 0.300496,
		0.660614, 0.619718, -0.423720,
		44.292038, 33.142467, 33.679962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.491730, 33.283829, 33.776642>,  <43.829609, 32.708664, 33.976566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.491730, 33.283829, 33.776642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817776, 33.242245, 33.548683>,  <44.013405, 33.217297, 33.411907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.817776, 33.242245, 33.548683>,  <43.491730, 33.283829, 33.776642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.817776, 33.242245, 33.548683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.579292, -0.141515, -0.802741,
		0.002801, 0.984463, -0.175572,
		0.815115, -0.103956, -0.569895,
		44.062309, 33.211060, 33.377716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339176, 33.722229, 33.122112>,  <43.491730, 33.283829, 33.776642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339176, 33.722229, 33.122112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633301, 33.470409, 33.021721>,  <43.809776, 33.319317, 32.961487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.633301, 33.470409, 33.021721>,  <43.339176, 33.722229, 33.122112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.633301, 33.470409, 33.021721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471997, -0.209935, -0.856240,
		0.486356, 0.748061, -0.451512,
		0.735308, -0.629549, -0.250979,
		43.853893, 33.281544, 32.946426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.531490, 33.885262, 32.442379>,  <43.339176, 33.722229, 33.122112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.531490, 33.885262, 32.442379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684029, 33.516457, 32.469112>,  <43.775551, 33.295174, 32.485153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.684029, 33.516457, 32.469112>,  <43.531490, 33.885262, 32.442379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.684029, 33.516457, 32.469112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355238, -0.212905, -0.910208,
		0.853453, 0.323360, -0.408724,
		0.381344, -0.922014, 0.066835,
		43.798431, 33.239853, 32.489162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.861790, 33.798660, 31.811996>,  <43.531490, 33.885262, 32.442379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.861790, 33.798660, 31.811996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810783, 33.417690, 31.922726>,  <43.780182, 33.189110, 31.989162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.810783, 33.417690, 31.922726>,  <43.861790, 33.798660, 31.811996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.810783, 33.417690, 31.922726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423345, -0.200136, -0.883586,
		0.896950, -0.229859, -0.377684,
		-0.127512, -0.952423, 0.276822,
		43.772530, 33.131962, 32.005772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.088001, 33.373901, 31.265789>,  <43.861790, 33.798660, 31.811996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.088001, 33.373901, 31.265789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877071, 33.107571, 31.476917>,  <43.750511, 32.947773, 31.603594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.877071, 33.107571, 31.476917>,  <44.088001, 33.373901, 31.265789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.877071, 33.107571, 31.476917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362700, -0.385370, -0.848492,
		0.768358, -0.638874, -0.038281,
		-0.527327, -0.665830, 0.527822,
		43.718872, 32.907822, 31.635263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.214867, 32.728409, 30.955198>,  <44.088001, 33.373901, 31.265789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.214867, 32.728409, 30.955198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863644, 32.716988, 31.146280>,  <43.652908, 32.710136, 31.260929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.863644, 32.716988, 31.146280>,  <44.214867, 32.728409, 30.955198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.863644, 32.716988, 31.146280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451754, -0.279925, -0.847089,
		0.157910, -0.959597, 0.232890,
		-0.878056, -0.028555, 0.477705,
		43.600227, 32.708420, 31.289591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.952957, 32.084446, 30.638393>,  <44.214867, 32.728409, 30.955198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.952957, 32.084446, 30.638393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658310, 32.283127, 30.821993>,  <43.481522, 32.402336, 30.932154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.658310, 32.283127, 30.821993>,  <43.952957, 32.084446, 30.638393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658310, 32.283127, 30.821993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615110, -0.209928, -0.759981,
		-0.281126, -0.842152, 0.460162,
		-0.736619, 0.496700, 0.458999,
		43.437325, 32.432137, 30.959692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358135, 31.677931, 30.624643>,  <43.952957, 32.084446, 30.638393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358135, 31.677931, 30.624643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233002, 32.057091, 30.648727>,  <43.157921, 32.284588, 30.663177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.233002, 32.057091, 30.648727>,  <43.358135, 31.677931, 30.624643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.233002, 32.057091, 30.648727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622630, -0.156786, -0.766648,
		-0.717265, -0.277321, 0.639238,
		-0.312831, 0.947898, 0.060211,
		43.139153, 32.341461, 30.666790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.758560, 31.626328, 30.335415>,  <43.358135, 31.677931, 30.624643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.758560, 31.626328, 30.335415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834522, 32.018875, 30.323748>,  <42.880100, 32.254402, 30.316748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.834522, 32.018875, 30.323748>,  <42.758560, 31.626328, 30.335415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.834522, 32.018875, 30.323748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607890, 0.094199, -0.788414,
		-0.770977, 0.167455, 0.614453,
		0.189905, 0.981369, -0.029169,
		42.891495, 32.313286, 30.314997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135899, 31.927221, 30.171782>,  <42.758560, 31.626328, 30.335415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135899, 31.927221, 30.171782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416302, 32.189953, 30.060671>,  <42.584545, 32.347591, 29.994003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.416302, 32.189953, 30.060671>,  <42.135899, 31.927221, 30.171782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416302, 32.189953, 30.060671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462910, 0.122796, -0.877858,
		-0.542492, 0.743975, 0.390133,
		0.701011, 0.656827, -0.277778,
		42.626606, 32.387001, 29.977337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.721031, 32.507595, 29.946272>,  <42.135899, 31.927221, 30.171782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.721031, 32.507595, 29.946272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086094, 32.541538, 29.786345>,  <42.305134, 32.561905, 29.690388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.086094, 32.541538, 29.786345>,  <41.721031, 32.507595, 29.946272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086094, 32.541538, 29.786345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408718, 0.193887, -0.891828,
		0.001844, 0.977347, 0.211635,
		0.912659, 0.084855, -0.399817,
		42.359890, 32.566994, 29.666399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.609257, 32.898823, 29.403221>,  <41.721031, 32.507595, 29.946272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.609257, 32.898823, 29.403221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988388, 32.807564, 29.314159>,  <42.215866, 32.752808, 29.260723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.988388, 32.807564, 29.314159>,  <41.609257, 32.898823, 29.403221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.988388, 32.807564, 29.314159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204653, 0.100043, -0.973709,
		0.244428, 0.968472, 0.048131,
		0.947825, -0.228152, -0.222654,
		42.272736, 32.739117, 29.247364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.816605, 33.404320, 28.999685>,  <41.609257, 32.898823, 29.403221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.816605, 33.404320, 28.999685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082485, 33.118771, 28.911543>,  <42.242012, 32.947441, 28.858658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.082485, 33.118771, 28.911543>,  <41.816605, 33.404320, 28.999685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.082485, 33.118771, 28.911543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201046, 0.113150, -0.973025,
		0.719550, 0.691073, -0.068310,
		0.664702, -0.713873, -0.220355,
		42.281895, 32.904610, 28.845436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249737, 33.630276, 28.415180>,  <41.816605, 33.404320, 28.999685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249737, 33.630276, 28.415180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311779, 33.236240, 28.385426>,  <42.349003, 32.999817, 28.367573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.311779, 33.236240, 28.385426>,  <42.249737, 33.630276, 28.415180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.311779, 33.236240, 28.385426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348841, 0.015835, -0.937048,
		0.924258, 0.171292, -0.341184,
		0.155106, -0.985093, -0.074389,
		42.358311, 32.940712, 28.363110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.497860, 33.554649, 27.782925>,  <42.249737, 33.630276, 28.415180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.497860, 33.554649, 27.782925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338394, 33.202286, 27.884958>,  <42.242714, 32.990868, 27.946178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.338394, 33.202286, 27.884958>,  <42.497860, 33.554649, 27.782925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.338394, 33.202286, 27.884958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296986, -0.139147, -0.944689,
		0.867678, -0.452371, -0.206144,
		-0.398665, -0.880908, 0.255083,
		42.218796, 32.938015, 27.961483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.843933, 32.989601, 27.384575>,  <42.497860, 33.554649, 27.782925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.843933, 32.989601, 27.384575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499207, 32.840786, 27.522482>,  <42.292370, 32.751495, 27.605227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.499207, 32.840786, 27.522482>,  <42.843933, 32.989601, 27.384575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.499207, 32.840786, 27.522482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305957, -0.160843, -0.938360,
		0.404563, -0.914174, 0.024787,
		-0.861811, -0.372042, 0.344769,
		42.240662, 32.729172, 27.625912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679020, 32.384342, 26.916586>,  <42.843933, 32.989601, 27.384575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679020, 32.384342, 26.916586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373783, 32.556122, 27.109774>,  <42.190639, 32.659191, 27.225685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.373783, 32.556122, 27.109774>,  <42.679020, 32.384342, 26.916586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.373783, 32.556122, 27.109774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468315, 0.147562, -0.871152,
		-0.445387, -0.890952, 0.088516,
		-0.763094, 0.429453, 0.482968,
		42.144855, 32.684959, 27.254663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.102669, 32.142296, 26.552994>,  <42.679020, 32.384342, 26.916586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.102669, 32.142296, 26.552994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950554, 32.442924, 26.768593>,  <41.859283, 32.623302, 26.897951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.950554, 32.442924, 26.768593>,  <42.102669, 32.142296, 26.552994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.950554, 32.442924, 26.768593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458960, 0.352605, -0.815491,
		-0.802954, -0.557502, 0.210850,
		-0.380291, 0.751573, 0.538996,
		41.836468, 32.668396, 26.930292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.380707, 32.139355, 26.530573>,  <42.102669, 32.142296, 26.552994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.380707, 32.139355, 26.530573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461872, 32.515152, 26.640980>,  <41.510571, 32.740631, 26.707224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.461872, 32.515152, 26.640980>,  <41.380707, 32.139355, 26.530573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.461872, 32.515152, 26.640980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520798, 0.342252, -0.782070,
		-0.829213, 0.014946, 0.558732,
		0.202916, 0.939489, 0.276016,
		41.522747, 32.796997, 26.723785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.819298, 32.405575, 26.677174>,  <41.380707, 32.139355, 26.530573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.819298, 32.405575, 26.677174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061504, 32.705456, 26.570366>,  <41.206829, 32.885384, 26.506281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.061504, 32.705456, 26.570366>,  <40.819298, 32.405575, 26.677174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061504, 32.705456, 26.570366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624695, 0.239876, -0.743112,
		-0.493062, 0.616770, 0.613584,
		0.605513, 0.749703, -0.267019,
		41.243156, 32.930367, 26.490261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377411, 32.888771, 26.432337>,  <40.819298, 32.405575, 26.677174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.377411, 32.888771, 26.432337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731487, 33.005051, 26.287048>,  <40.943935, 33.074818, 26.199875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.731487, 33.005051, 26.287048>,  <40.377411, 32.888771, 26.432337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.731487, 33.005051, 26.287048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462861, 0.471730, -0.750487,
		-0.046821, 0.832446, 0.552124,
		0.885193, 0.290696, -0.363220,
		40.997044, 33.092258, 26.178082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.357922, 33.610157, 26.285776>,  <40.377411, 32.888771, 26.432337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.357922, 33.610157, 26.285776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619255, 33.405529, 26.062546>,  <40.776054, 33.282753, 25.928608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.619255, 33.405529, 26.062546>,  <40.357922, 33.610157, 26.285776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.619255, 33.405529, 26.062546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468491, 0.305860, -0.828834,
		0.594699, 0.802961, -0.039837,
		0.653337, -0.511570, -0.558075,
		40.815254, 33.252056, 25.895123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718510, 34.029621, 25.710571>,  <40.357922, 33.610157, 26.285776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718510, 34.029621, 25.710571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656353, 33.652023, 25.594139>,  <40.619061, 33.425465, 25.524281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.656353, 33.652023, 25.594139>,  <40.718510, 34.029621, 25.710571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.656353, 33.652023, 25.594139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445480, 0.329957, -0.832271,
		0.881704, 0.000345, -0.471803,
		-0.155388, -0.943996, -0.291078,
		40.609737, 33.368824, 25.506815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083412, 34.277779, 25.984499>,  <40.718510, 34.029621, 25.710571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083412, 34.277779, 25.984499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959969, 34.308224, 26.363754>,  <39.885902, 34.326492, 26.591307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.959969, 34.308224, 26.363754>,  <40.083412, 34.277779, 25.984499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.959969, 34.308224, 26.363754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566167, 0.815684, 0.118800,
		-0.764338, 0.573468, -0.294825,
		-0.308612, 0.076117, 0.948138,
		39.867386, 34.331059, 26.648195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.719242, 34.907585, 26.138226>,  <40.083412, 34.277779, 25.984499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.719242, 34.907585, 26.138226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911240, 34.762749, 26.457850>,  <40.026440, 34.675846, 26.649624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.911240, 34.762749, 26.457850>,  <39.719242, 34.907585, 26.138226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.911240, 34.762749, 26.457850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442169, 0.886543, 0.136122,
		-0.757689, 0.287982, 0.585639,
		0.479994, -0.362090, 0.799060,
		40.055237, 34.654121, 26.697567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537571, 35.272240, 26.903938>,  <39.719242, 34.907585, 26.138226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537571, 35.272240, 26.903938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909172, 35.126667, 26.877098>,  <40.132133, 35.039326, 26.860994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.909172, 35.126667, 26.877098>,  <39.537571, 35.272240, 26.903938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909172, 35.126667, 26.877098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366153, 0.877660, 0.309265,
		-0.053659, -0.311879, 0.948605,
		0.929006, -0.363930, -0.067101,
		40.187874, 35.017487, 26.856968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492172, 35.783382, 26.502436>,  <39.537571, 35.272240, 26.903938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492172, 35.783382, 26.502436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558022, 36.176224, 26.539042>,  <39.597530, 36.411930, 26.561005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.558022, 36.176224, 26.539042>,  <39.492172, 35.783382, 26.502436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.558022, 36.176224, 26.539042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699134, -0.181629, 0.691536,
		0.695782, -0.049858, -0.716521,
		0.164620, 0.982102, 0.091517,
		39.607407, 36.470856, 26.566496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.234329, 36.059055, 26.250591>,  <39.492172, 35.783382, 26.502436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.234329, 36.059055, 26.250591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077061, 36.307449, 26.521822>,  <39.982700, 36.456486, 26.684561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.077061, 36.307449, 26.521822>,  <40.234329, 36.059055, 26.250591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.077061, 36.307449, 26.521822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724824, -0.244418, 0.644120,
		0.565724, 0.744739, -0.354007,
		-0.393176, 0.620987, 0.678077,
		39.959106, 36.493744, 26.725245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.777618, 36.413460, 26.610090>,  <40.234329, 36.059055, 26.250591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.777618, 36.413460, 26.610090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469147, 36.423290, 26.864548>,  <40.284065, 36.429188, 27.017223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.469147, 36.423290, 26.864548>,  <40.777618, 36.413460, 26.610090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469147, 36.423290, 26.864548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595775, -0.324299, 0.734767,
		0.224358, 0.945635, 0.235451,
		-0.771178, 0.024575, 0.636145,
		40.237793, 36.430664, 27.055391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.891186, 36.902390, 27.090017>,  <40.777618, 36.413460, 26.610090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.891186, 36.902390, 27.090017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663399, 36.616081, 27.251699>,  <40.526726, 36.444298, 27.348709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.663399, 36.616081, 27.251699>,  <40.891186, 36.902390, 27.090017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.663399, 36.616081, 27.251699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686346, -0.143416, 0.712995,
		-0.452372, 0.683449, 0.572937,
		-0.569464, -0.715771, 0.404205,
		40.492561, 36.401348, 27.372961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.847939, 37.062141, 27.797955>,  <40.891186, 36.902390, 27.090017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.847939, 37.062141, 27.797955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779022, 36.668457, 27.781694>,  <40.737671, 36.432247, 27.771938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.779022, 36.668457, 27.781694>,  <40.847939, 37.062141, 27.797955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.779022, 36.668457, 27.781694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569573, -0.133207, 0.811074,
		-0.803680, 0.116588, 0.583529,
		-0.172292, -0.984207, -0.040650,
		40.727333, 36.373196, 27.769499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585453, 36.809006, 28.468533>,  <40.847939, 37.062141, 27.797955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585453, 36.809006, 28.468533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761002, 36.506344, 28.274679>,  <40.866329, 36.324749, 28.158367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.761002, 36.506344, 28.274679>,  <40.585453, 36.809006, 28.468533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.761002, 36.506344, 28.274679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512790, -0.231994, 0.826574,
		-0.737862, -0.611274, 0.286188,
		0.438870, -0.756652, -0.484635,
		40.892662, 36.279346, 28.129290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.501369, 36.109474, 28.858496>,  <40.585453, 36.809006, 28.468533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.501369, 36.109474, 28.858496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815647, 36.085033, 28.612259>,  <41.004215, 36.070370, 28.464518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.815647, 36.085033, 28.612259>,  <40.501369, 36.109474, 28.858496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.815647, 36.085033, 28.612259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560937, -0.349216, 0.750599,
		-0.260834, -0.935049, -0.240105,
		0.785695, -0.061098, -0.615590,
		41.051353, 36.066704, 28.427582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.713448, 35.476162, 29.022932>,  <40.501369, 36.109474, 28.858496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.713448, 35.476162, 29.022932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034698, 35.627903, 28.839157>,  <41.227448, 35.718948, 28.728891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.034698, 35.627903, 28.839157>,  <40.713448, 35.476162, 29.022932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.034698, 35.627903, 28.839157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582857, -0.340307, 0.737881,
		0.123569, -0.860396, -0.494418,
		0.803124, 0.379354, -0.459437,
		41.275635, 35.741711, 28.701326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.271999, 35.030170, 29.167910>,  <40.713448, 35.476162, 29.022932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.271999, 35.030170, 29.167910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467144, 35.364582, 29.067476>,  <41.584232, 35.565228, 29.007215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.467144, 35.364582, 29.067476>,  <41.271999, 35.030170, 29.167910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.467144, 35.364582, 29.067476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718416, -0.221160, 0.659520,
		0.495848, -0.502139, -0.708513,
		0.487866, 0.836029, -0.251083,
		41.613503, 35.615391, 28.992151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004963, 34.913555, 29.366701>,  <41.271999, 35.030170, 29.167910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004963, 34.913555, 29.366701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979900, 35.310806, 29.327177>,  <41.964863, 35.549156, 29.303463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.979900, 35.310806, 29.327177>,  <42.004963, 34.913555, 29.366701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.979900, 35.310806, 29.327177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799756, 0.109192, 0.590311,
		0.597046, -0.042036, -0.801105,
		-0.062659, 0.993131, -0.098811,
		41.961102, 35.608746, 29.297533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.775291, 35.190514, 29.132898>,  <42.004963, 34.913555, 29.366701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.775291, 35.190514, 29.132898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569637, 35.482792, 29.312563>,  <42.446243, 35.658157, 29.420361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.569637, 35.482792, 29.312563>,  <42.775291, 35.190514, 29.132898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569637, 35.482792, 29.312563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834638, 0.305583, 0.458255,
		0.197590, 0.610492, -0.766979,
		-0.514137, 0.730697, 0.449160,
		42.415398, 35.702000, 29.447311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259407, 35.752815, 29.156050>,  <42.775291, 35.190514, 29.132898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259407, 35.752815, 29.156050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982449, 35.859325, 29.424284>,  <42.816273, 35.923233, 29.585224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.982449, 35.859325, 29.424284>,  <43.259407, 35.752815, 29.156050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.982449, 35.859325, 29.424284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721142, 0.285361, 0.631286,
		-0.023260, 0.920687, -0.389609,
		-0.692396, 0.266280, 0.670584,
		42.774731, 35.939209, 29.625460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.566071, 36.259007, 29.497227>,  <43.259407, 35.752815, 29.156050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.566071, 36.259007, 29.497227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272472, 36.164581, 29.751949>,  <43.096313, 36.107925, 29.904783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272472, 36.164581, 29.751949>,  <43.566071, 36.259007, 29.497227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272472, 36.164581, 29.751949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595132, 0.228187, 0.770551,
		-0.327207, 0.944567, -0.027003,
		-0.733999, -0.236059, 0.636806,
		43.052273, 36.093765, 29.942991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545532, 36.791050, 29.968082>,  <43.566071, 36.259007, 29.497227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545532, 36.791050, 29.968082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363724, 36.492775, 30.162962>,  <43.254639, 36.313808, 30.279890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363724, 36.492775, 30.162962>,  <43.545532, 36.791050, 29.968082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363724, 36.492775, 30.162962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685313, 0.056643, 0.726042,
		-0.568997, 0.663883, 0.485285,
		-0.454519, -0.745688, 0.487197,
		43.227367, 36.269070, 30.309122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.676697, 36.948387, 30.736456>,  <43.545532, 36.791050, 29.968082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.676697, 36.948387, 30.736456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604187, 36.555691, 30.713364>,  <43.560680, 36.320072, 30.699509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.604187, 36.555691, 30.713364>,  <43.676697, 36.948387, 30.736456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.604187, 36.555691, 30.713364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741661, -0.175019, 0.647539,
		-0.645817, 0.074565, 0.759843,
		-0.181271, -0.981737, -0.057728,
		43.549805, 36.261169, 30.696045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792957, 36.752663, 31.418974>,  <43.676697, 36.948387, 30.736456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792957, 36.752663, 31.418974> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823841, 36.418362, 31.201515>,  <43.842373, 36.217781, 31.071041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823841, 36.418362, 31.201515>,  <43.792957, 36.752663, 31.418974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823841, 36.418362, 31.201515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709411, -0.337083, 0.618959,
		-0.700552, -0.433460, 0.566868,
		0.077212, -0.835756, -0.543646,
		43.847004, 36.167633, 31.038422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.608337, 36.185242, 31.851444>,  <43.792957, 36.752663, 31.418974>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.608337, 36.185242, 31.851444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837952, 36.033897, 31.560976>,  <43.975719, 35.943092, 31.386696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.837952, 36.033897, 31.560976>,  <43.608337, 36.185242, 31.851444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.837952, 36.033897, 31.560976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618832, -0.380292, 0.687332,
		-0.536217, -0.843932, 0.015840,
		0.574037, -0.378361, -0.726171,
		44.010162, 35.920391, 31.343124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.830975, 35.543610, 32.098099>,  <43.608337, 36.185242, 31.851444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.830975, 35.543610, 32.098099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095036, 35.611259, 31.805361>,  <44.253471, 35.651852, 31.629719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.095036, 35.611259, 31.805361>,  <43.830975, 35.543610, 32.098099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.095036, 35.611259, 31.805361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721640, -0.413134, 0.555479,
		-0.208400, -0.894827, -0.394783,
		0.660155, 0.169129, -0.731840,
		44.293083, 35.661999, 31.585808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.110043, 34.915257, 31.946753>,  <43.830975, 35.543610, 32.098099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.110043, 34.915257, 31.946753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385960, 35.160160, 31.792183>,  <44.551510, 35.307102, 31.699442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.385960, 35.160160, 31.792183>,  <44.110043, 34.915257, 31.946753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.385960, 35.160160, 31.792183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721511, -0.537018, 0.437075,
		0.060088, -0.580300, -0.812184,
		0.689791, 0.612262, -0.386424,
		44.592896, 35.343838, 31.676256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.657391, 34.478245, 31.558735>,  <44.110043, 34.915257, 31.946753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.657391, 34.478245, 31.558735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809753, 34.828583, 31.677263>,  <44.901173, 35.038784, 31.748381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.809753, 34.828583, 31.677263>,  <44.657391, 34.478245, 31.558735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.809753, 34.828583, 31.677263> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763312, -0.478729, 0.433789,
		0.521790, 0.060954, -0.850894,
		0.380906, 0.875844, 0.296323,
		44.924026, 35.091335, 31.766161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368507, 34.275578, 31.626511>,  <44.657391, 34.478245, 31.558735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368507, 34.275578, 31.626511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356243, 34.618084, 31.832758>,  <45.348885, 34.823589, 31.956507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.356243, 34.618084, 31.832758>,  <45.368507, 34.275578, 31.626511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.356243, 34.618084, 31.832758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.706288, -0.346460, 0.617351,
		0.707260, 0.383101, -0.594152,
		-0.030658, 0.856271, 0.515617,
		45.347046, 34.874966, 31.987442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.087559, 34.608284, 31.638847>,  <45.368507, 34.275578, 31.626511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.087559, 34.608284, 31.638847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887661, 34.764301, 31.948200>,  <45.767723, 34.857910, 32.133812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.887661, 34.764301, 31.948200>,  <46.087559, 34.608284, 31.638847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.887661, 34.764301, 31.948200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659728, -0.407159, 0.631649,
		0.561260, 0.825886, -0.053846,
		-0.499747, 0.390043, 0.773382,
		45.737736, 34.881313, 32.180214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.547314, 34.912117, 32.001114>,  <46.087559, 34.608284, 31.638847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.547314, 34.912117, 32.001114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263317, 34.877872, 32.280708>,  <46.092918, 34.857327, 32.448463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.263317, 34.877872, 32.280708>,  <46.547314, 34.912117, 32.001114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.263317, 34.877872, 32.280708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683170, -0.324547, 0.654177,
		0.170849, 0.941987, 0.288913,
		-0.709992, -0.085611, 0.698986,
		46.050320, 34.852188, 32.490406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.898594, 35.086731, 32.538620>,  <46.547314, 34.912117, 32.001114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.898594, 35.086731, 32.538620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579746, 34.927914, 32.720592>,  <46.388439, 34.832623, 32.829777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.579746, 34.927914, 32.720592>,  <46.898594, 35.086731, 32.538620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.579746, 34.927914, 32.720592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572865, -0.259096, 0.777621,
		-0.190876, 0.880470, 0.433981,
		-0.797115, -0.397042, 0.454935,
		46.340611, 34.808800, 32.857075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.936081, 35.333736, 33.237293>,  <46.898594, 35.086731, 32.538620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.936081, 35.333736, 33.237293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730347, 34.990726, 33.233131>,  <46.606907, 34.784920, 33.230633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.730347, 34.990726, 33.233131>,  <46.936081, 35.333736, 33.237293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.730347, 34.990726, 33.233131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527287, -0.325782, 0.784751,
		-0.676336, 0.398137, 0.619723,
		-0.514333, -0.857528, -0.010405,
		46.576046, 34.733467, 33.230011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.558132, 35.088757, 33.796280>,  <46.936081, 35.333736, 33.237293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.558132, 35.088757, 33.796280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638283, 35.282230, 34.137077>,  <46.686375, 35.398315, 34.341557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.638283, 35.282230, 34.137077>,  <46.558132, 35.088757, 33.796280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.638283, 35.282230, 34.137077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821892, -0.556311, 0.122525,
		0.533238, 0.675696, -0.509011,
		0.200379, 0.483687, 0.851995,
		46.698395, 35.427338, 34.392677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.236702, 35.036015, 33.931053>,  <46.558132, 35.088757, 33.796280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.236702, 35.036015, 33.931053> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097004, 35.086514, 34.302448>,  <47.013187, 35.116814, 34.525288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.097004, 35.086514, 34.302448>,  <47.236702, 35.036015, 33.931053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.097004, 35.086514, 34.302448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779054, -0.511480, 0.362577,
		0.520678, 0.849971, 0.080278,
		-0.349240, 0.126245, 0.928490,
		46.992233, 35.124386, 34.580994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.764046, 35.194431, 34.356140>,  <47.236702, 35.036015, 33.931053>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.764046, 35.194431, 34.356140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481476, 35.005806, 34.567268>,  <47.311935, 34.892632, 34.693947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.481476, 35.005806, 34.567268>,  <47.764046, 35.194431, 34.356140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.481476, 35.005806, 34.567268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675641, -0.671478, 0.304345,
		0.210902, 0.571615, 0.792955,
		-0.706420, -0.471566, 0.527823,
		47.269550, 34.864338, 34.725616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.987370, 35.167801, 35.046413>,  <47.764046, 35.194431, 34.356140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.987370, 35.167801, 35.046413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743855, 34.860500, 34.967262>,  <47.597744, 34.676121, 34.919769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.743855, 34.860500, 34.967262>,  <47.987370, 35.167801, 35.046413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.743855, 34.860500, 34.967262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671734, -0.631892, 0.386633,
		-0.422072, 0.102456, 0.900754,
		-0.608792, -0.768255, -0.197881,
		47.561218, 34.630024, 34.907898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<36.159222, 34.535118, 44.140766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797295, 34.699566, 44.185112>,  <35.580139, 34.798237, 44.211720>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797295, 34.699566, 44.185112>,  <36.159222, 34.535118, 44.140766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797295, 34.699566, 44.185112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105367, 0.036089, -0.993778,
		-0.412566, -0.910865, 0.010665,
		-0.904813, 0.411123, 0.110865,
		35.525852, 34.822903, 44.218372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643883, 34.190262, 43.637871>,  <36.159222, 34.535118, 44.140766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643883, 34.190262, 43.637871> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484337, 34.547649, 43.720455>,  <35.388611, 34.762081, 43.770004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484337, 34.547649, 43.720455>,  <35.643883, 34.190262, 43.637871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484337, 34.547649, 43.720455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143393, 0.161608, -0.976382,
		-0.905731, -0.419046, 0.063657,
		-0.398861, 0.893467, 0.206462,
		35.364677, 34.815689, 43.782394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.025871, 34.203049, 43.299358>,  <35.643883, 34.190262, 43.637871>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.025871, 34.203049, 43.299358> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140900, 34.582817, 43.349800>,  <35.209919, 34.810677, 43.380066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.140900, 34.582817, 43.349800>,  <35.025871, 34.203049, 43.299358>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.140900, 34.582817, 43.349800> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173598, 0.181153, -0.968012,
		-0.941894, 0.256484, 0.216912,
		0.287574, 0.949421, 0.126102,
		35.227173, 34.867641, 43.387630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.475971, 34.640381, 42.988579>,  <35.025871, 34.203049, 43.299358>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.475971, 34.640381, 42.988579> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821163, 34.842346, 42.995903>,  <35.028278, 34.963524, 43.000298>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.821163, 34.842346, 42.995903>,  <34.475971, 34.640381, 42.988579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.821163, 34.842346, 42.995903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084228, 0.179496, -0.980146,
		-0.498172, 0.844302, 0.197428,
		0.862978, 0.504911, 0.018306,
		35.080055, 34.993820, 43.001396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354282, 35.132473, 42.585320>,  <34.475971, 34.640381, 42.988579>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354282, 35.132473, 42.585320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751545, 35.150326, 42.628475>,  <34.989902, 35.161037, 42.654369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.751545, 35.150326, 42.628475>,  <34.354282, 35.132473, 42.585320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.751545, 35.150326, 42.628475> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091470, 0.276824, -0.956557,
		-0.072560, 0.959883, 0.270849,
		0.993161, 0.044634, 0.107887,
		35.049492, 35.163715, 42.660843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505344, 35.737511, 42.239365>,  <34.354282, 35.132473, 42.585320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505344, 35.737511, 42.239365> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852600, 35.539539, 42.254250>,  <35.060951, 35.420757, 42.263180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.852600, 35.539539, 42.254250>,  <34.505344, 35.737511, 42.239365>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.852600, 35.539539, 42.254250> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134249, 0.161966, -0.977622,
		0.477827, 0.853704, 0.207052,
		0.868135, -0.494931, 0.037217,
		35.113041, 35.391060, 42.265415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.972000, 36.052856, 41.641262>,  <34.505344, 35.737511, 42.239365>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.972000, 36.052856, 41.641262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.156101, 35.714180, 41.748058>,  <35.266560, 35.510975, 41.812134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.156101, 35.714180, 41.748058>,  <34.972000, 36.052856, 41.641262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.156101, 35.714180, 41.748058> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371323, -0.089574, -0.924173,
		0.806405, 0.524489, 0.273170,
		0.460250, -0.846692, 0.266988,
		35.294174, 35.460171, 41.828156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.615147, 36.266472, 41.574070>,  <34.972000, 36.052856, 41.641262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.615147, 36.266472, 41.574070> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545853, 35.874561, 41.534023>,  <35.504276, 35.639416, 41.509995>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.545853, 35.874561, 41.534023>,  <35.615147, 36.266472, 41.574070>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.545853, 35.874561, 41.534023> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465380, 0.008156, -0.885073,
		0.867992, -0.199923, 0.454556,
		-0.173239, -0.979778, -0.100120,
		35.493881, 35.580627, 41.503986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.243206, 35.960762, 41.235641>,  <35.615147, 36.266472, 41.574070>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.243206, 35.960762, 41.235641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991386, 35.658131, 41.164921>,  <35.840294, 35.476551, 41.122486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.991386, 35.658131, 41.164921>,  <36.243206, 35.960762, 41.235641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991386, 35.658131, 41.164921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417855, -0.137847, -0.897995,
		0.655029, -0.639212, 0.402921,
		-0.629551, -0.756576, -0.176804,
		35.802521, 35.431156, 41.111881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.622211, 35.403500, 41.126678>,  <36.243206, 35.960762, 41.235641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.622211, 35.403500, 41.126678> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279037, 35.312599, 40.942375>,  <36.073132, 35.258057, 40.831795>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.279037, 35.312599, 40.942375>,  <36.622211, 35.403500, 41.126678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.279037, 35.312599, 40.942375> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502043, -0.180470, -0.845803,
		0.109059, -0.956967, 0.268924,
		-0.857939, -0.227254, -0.460757,
		36.021656, 35.244423, 40.804150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751965, 34.747246, 40.867012>,  <36.622211, 35.403500, 41.126678>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751965, 34.747246, 40.867012> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463516, 34.923943, 40.653522>,  <36.290447, 35.029961, 40.525429>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.463516, 34.923943, 40.653522>,  <36.751965, 34.747246, 40.867012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463516, 34.923943, 40.653522> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562356, -0.076744, -0.823326,
		-0.404656, -0.893855, -0.193074,
		-0.721117, 0.441740, -0.533719,
		36.247181, 35.056465, 40.493408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.743301, 34.341103, 40.252026>,  <36.751965, 34.747246, 40.867012>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.743301, 34.341103, 40.252026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505550, 34.648758, 40.158092>,  <36.362900, 34.833351, 40.101730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.505550, 34.648758, 40.158092>,  <36.743301, 34.341103, 40.252026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.505550, 34.648758, 40.158092> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274837, -0.080156, -0.958144,
		-0.755767, -0.634038, -0.163745,
		-0.594374, 0.769136, -0.234836,
		36.327236, 34.879498, 40.087643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483074, 34.113678, 39.592724>,  <36.743301, 34.341103, 40.252026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483074, 34.113678, 39.592724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458015, 34.511833, 39.621761>,  <36.442978, 34.750729, 39.639183>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.458015, 34.511833, 39.621761>,  <36.483074, 34.113678, 39.592724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.458015, 34.511833, 39.621761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268100, 0.086848, -0.959468,
		-0.961352, -0.040647, -0.272306,
		-0.062649, 0.995392, 0.072594,
		36.439220, 34.810452, 39.643539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240612, 34.332314, 38.909683>,  <36.483074, 34.113678, 39.592724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240612, 34.332314, 38.909683> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431557, 34.641891, 39.076122>,  <36.546124, 34.827637, 39.175983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.431557, 34.641891, 39.076122>,  <36.240612, 34.332314, 38.909683>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.431557, 34.641891, 39.076122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383104, 0.242845, -0.891211,
		-0.790792, 0.584842, -0.180574,
		0.477366, 0.773942, 0.416096,
		36.574768, 34.874073, 39.200951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.064751, 34.959087, 38.527473>,  <36.240612, 34.332314, 38.909683>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.064751, 34.959087, 38.527473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428654, 34.965282, 38.693417>,  <36.646996, 34.968998, 38.792984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.428654, 34.965282, 38.693417>,  <36.064751, 34.959087, 38.527473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.428654, 34.965282, 38.693417> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389055, 0.316902, -0.864991,
		-0.144865, 0.948332, 0.282278,
		0.909753, 0.015486, 0.414861,
		36.701580, 34.969929, 38.817875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.275162, 35.486149, 38.245628>,  <36.064751, 34.959087, 38.527473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.275162, 35.486149, 38.245628> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610687, 35.348301, 38.414215>,  <36.812000, 35.265594, 38.515369>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.610687, 35.348301, 38.414215>,  <36.275162, 35.486149, 38.245628>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.610687, 35.348301, 38.414215> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529334, 0.335247, -0.779369,
		0.127286, 0.876841, 0.463625,
		0.838811, -0.344615, 0.421470,
		36.862331, 35.244915, 38.540657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.716537, 35.966042, 38.012985>,  <36.275162, 35.486149, 38.245628>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.716537, 35.966042, 38.012985> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985073, 35.699665, 38.143108>,  <37.146194, 35.539841, 38.221180>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.985073, 35.699665, 38.143108>,  <36.716537, 35.966042, 38.012985>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.985073, 35.699665, 38.143108> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719812, 0.481299, -0.500222,
		0.176550, 0.569977, 0.802469,
		0.671342, -0.665941, 0.325303,
		37.186478, 35.499882, 38.240700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.317604, 36.213089, 38.393101>,  <36.716537, 35.966042, 38.012985>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.317604, 36.213089, 38.393101> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427200, 35.869129, 38.220818>,  <37.492958, 35.662754, 38.117447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.427200, 35.869129, 38.220818>,  <37.317604, 36.213089, 38.393101>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427200, 35.869129, 38.220818> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797340, 0.453513, -0.398213,
		0.537754, -0.234316, 0.809887,
		0.273987, -0.859896, -0.430708,
		37.509396, 35.611160, 38.091606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991005, 36.385639, 38.127880>,  <37.317604, 36.213089, 38.393101>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991005, 36.385639, 38.127880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911572, 36.017784, 37.992336>,  <37.863911, 35.797070, 37.911011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911572, 36.017784, 37.992336>,  <37.991005, 36.385639, 38.127880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911572, 36.017784, 37.992336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656568, 0.131862, -0.742651,
		0.727655, -0.369963, 0.577621,
		-0.198587, -0.919641, -0.338856,
		37.851994, 35.741890, 37.890678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.707733, 36.051937, 38.113464>,  <37.991005, 36.385639, 38.127880>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.707733, 36.051937, 38.113464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471317, 35.866135, 37.849678>,  <38.329468, 35.754654, 37.691406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.471317, 35.866135, 37.849678>,  <38.707733, 36.051937, 38.113464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471317, 35.866135, 37.849678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681873, 0.149066, -0.716121,
		0.430950, -0.872932, 0.228632,
		-0.591043, -0.464509, -0.659468,
		38.294003, 35.726784, 37.651836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.197323, 35.621727, 37.762264>,  <38.707733, 36.051937, 38.113464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.197323, 35.621727, 37.762264> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866737, 35.684860, 37.546101>,  <38.668385, 35.722740, 37.416405>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.866737, 35.684860, 37.546101>,  <39.197323, 35.621727, 37.762264>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.866737, 35.684860, 37.546101> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562975, 0.237160, -0.791716,
		0.003203, -0.958563, -0.284862,
		-0.826468, 0.157834, -0.540406,
		38.618797, 35.732212, 37.383980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690861, 35.468307, 37.217010>,  <39.197323, 35.621727, 37.762264>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690861, 35.468307, 37.217010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564022, 35.171104, 37.452770>,  <39.487919, 34.992783, 37.594227>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.564022, 35.171104, 37.452770>,  <39.690861, 35.468307, 37.217010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.564022, 35.171104, 37.452770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721617, -0.592286, -0.358422,
		0.615403, 0.311665, 0.723978,
		-0.317095, -0.743009, 0.589397,
		39.468895, 34.948200, 37.629589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.736897, 34.993809, 36.696346>,  <39.690861, 35.468307, 37.217010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.736897, 34.993809, 36.696346> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053699, 34.759155, 36.628708>,  <40.243782, 34.618362, 36.588123>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.053699, 34.759155, 36.628708>,  <39.736897, 34.993809, 36.696346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.053699, 34.759155, 36.628708> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056188, -0.205765, 0.976987,
		-0.607925, -0.783279, -0.130005,
		0.792004, -0.586630, -0.169100,
		40.291302, 34.583168, 36.577976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624912, 34.357788, 37.044243>,  <39.736897, 34.993809, 36.696346>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624912, 34.357788, 37.044243> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.023251, 34.374165, 37.011711>,  <40.262253, 34.383991, 36.992191>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.023251, 34.374165, 37.011711>,  <39.624912, 34.357788, 37.044243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023251, 34.374165, 37.011711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085013, -0.098124, 0.991536,
		0.032618, -0.994331, -0.101197,
		0.995845, 0.040945, -0.081331,
		40.322006, 34.386448, 36.987312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.966702, 33.760616, 37.474442>,  <39.624912, 34.357788, 37.044243>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.966702, 33.760616, 37.474442> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.269596, 34.012722, 37.405899>,  <40.451332, 34.163986, 37.364773>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.269596, 34.012722, 37.405899>,  <39.966702, 33.760616, 37.474442>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.269596, 34.012722, 37.405899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.279147, -0.075104, 0.957307,
		0.590485, -0.772741, -0.232807,
		0.757235, 0.630263, -0.171361,
		40.496765, 34.201801, 37.354492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439781, 33.413357, 37.733364>,  <39.966702, 33.760616, 37.474442>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439781, 33.413357, 37.733364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.588249, 33.783482, 37.702274>,  <40.677330, 34.005554, 37.683620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.588249, 33.783482, 37.702274>,  <40.439781, 33.413357, 37.733364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.588249, 33.783482, 37.702274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241398, -0.015330, 0.970305,
		0.896639, -0.378907, -0.229058,
		0.371167, 0.925307, -0.077722,
		40.699600, 34.061073, 37.678959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062244, 33.441116, 38.069336>,  <40.439781, 33.413357, 37.733364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062244, 33.441116, 38.069336> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.915497, 33.813042, 38.057598>,  <40.827450, 34.036198, 38.050556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.915497, 33.813042, 38.057598>,  <41.062244, 33.441116, 38.069336>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.915497, 33.813042, 38.057598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005902, 0.033865, 0.999409,
		0.930255, 0.366475, -0.017911,
		-0.366865, 0.929811, -0.029340,
		40.805439, 34.091984, 38.048798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.452526, 33.776417, 38.519356>,  <41.062244, 33.441116, 38.069336>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.452526, 33.776417, 38.519356> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.156902, 34.040451, 38.465572>,  <40.979527, 34.198872, 38.433304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.156902, 34.040451, 38.465572>,  <41.452526, 33.776417, 38.519356>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156902, 34.040451, 38.465572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040482, 0.155721, 0.986971,
		0.672422, 0.734874, -0.088365,
		-0.739060, 0.660084, -0.134459,
		40.935184, 34.238476, 38.425236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.587730, 34.399200, 38.979321>,  <41.452526, 33.776417, 38.519356>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.587730, 34.399200, 38.979321> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.193157, 34.423084, 38.918167>,  <40.956413, 34.437416, 38.881474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.193157, 34.423084, 38.918167>,  <41.587730, 34.399200, 38.979321>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.193157, 34.423084, 38.918167> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141838, 0.158630, 0.977097,
		0.082598, 0.985531, -0.148009,
		-0.986438, 0.059713, -0.152888,
		40.897224, 34.440998, 38.872299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391930, 34.924488, 39.411549>,  <41.587730, 34.399200, 38.979321>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391930, 34.924488, 39.411549> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050095, 34.735104, 39.326214>,  <40.844994, 34.621471, 39.275013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.050095, 34.735104, 39.326214>,  <41.391930, 34.924488, 39.411549>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.050095, 34.735104, 39.326214> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221282, -0.039657, 0.974403,
		-0.469804, 0.879921, -0.070879,
		-0.854587, -0.473463, -0.213342,
		40.793720, 34.593063, 39.262211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782108, 35.246986, 39.777233>,  <41.391930, 34.924488, 39.411549>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782108, 35.246986, 39.777233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671654, 34.865715, 39.727917>,  <40.605381, 34.636951, 39.698326>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.671654, 34.865715, 39.727917>,  <40.782108, 35.246986, 39.777233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.671654, 34.865715, 39.727917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291872, -0.039057, 0.955660,
		-0.915728, 0.299882, -0.267420,
		-0.276140, -0.953177, -0.123292,
		40.588810, 34.579762, 39.690929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.285358, 35.201706, 40.169926>,  <40.782108, 35.246986, 39.777233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.285358, 35.201706, 40.169926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.278233, 34.805161, 40.117943>,  <40.273956, 34.567234, 40.086754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.278233, 34.805161, 40.117943>,  <40.285358, 35.201706, 40.169926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.278233, 34.805161, 40.117943> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308622, -0.118183, 0.943814,
		-0.951018, 0.056920, -0.303850,
		-0.017812, -0.991359, -0.129961,
		40.272888, 34.507751, 40.078953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.542656, 35.002598, 40.190952>,  <40.285358, 35.201706, 40.169926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.542656, 35.002598, 40.190952> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785080, 34.698528, 40.284611>,  <39.930534, 34.516087, 40.340805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.785080, 34.698528, 40.284611>,  <39.542656, 35.002598, 40.190952>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.785080, 34.698528, 40.284611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565815, -0.205120, 0.798611,
		-0.559058, -0.616488, -0.554434,
		0.606059, -0.760177, 0.234145,
		39.966896, 34.470474, 40.354855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.056015, 34.476757, 40.366669>,  <39.542656, 35.002598, 40.190952>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.056015, 34.476757, 40.366669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410576, 34.378857, 40.523842>,  <39.623310, 34.320118, 40.618145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.410576, 34.378857, 40.523842>,  <39.056015, 34.476757, 40.366669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410576, 34.378857, 40.523842> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415202, -0.044986, 0.908616,
		-0.204708, -0.968542, -0.141496,
		0.886398, -0.244751, 0.392932,
		39.676495, 34.305431, 40.641720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998409, 33.833572, 40.784401>,  <39.056015, 34.476757, 40.366669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998409, 33.833572, 40.784401> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327118, 34.014404, 40.923149>,  <39.524342, 34.122906, 41.006397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.327118, 34.014404, 40.923149>,  <38.998409, 33.833572, 40.784401>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327118, 34.014404, 40.923149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342911, -0.093823, 0.934671,
		0.455093, -0.887028, 0.077924,
		0.821768, 0.452082, 0.346870,
		39.573647, 34.150028, 41.027210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.261253, 33.443783, 41.209080>,  <38.998409, 33.833572, 40.784401>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.261253, 33.443783, 41.209080> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405499, 33.803074, 41.309601>,  <39.492046, 34.018646, 41.369911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.405499, 33.803074, 41.309601>,  <39.261253, 33.443783, 41.209080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.405499, 33.803074, 41.309601> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317592, -0.135079, 0.938557,
		0.876979, -0.418268, 0.236558,
		0.360614, 0.898224, 0.251300,
		39.513683, 34.072540, 41.384991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.312172, 33.258747, 41.869335>,  <39.261253, 33.443783, 41.209080>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.312172, 33.258747, 41.869335> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386757, 33.650841, 41.842873>,  <39.431507, 33.886097, 41.826996>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.386757, 33.650841, 41.842873>,  <39.312172, 33.258747, 41.869335>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386757, 33.650841, 41.842873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325053, 0.125096, 0.937385,
		0.927130, -0.153287, 0.341954,
		0.186466, 0.980232, -0.066154,
		39.442696, 33.944912, 41.823025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.827343, 33.406624, 42.321518>,  <39.312172, 33.258747, 41.869335>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.827343, 33.406624, 42.321518> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607624, 33.737484, 42.274036>,  <39.475792, 33.936001, 42.245548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.607624, 33.737484, 42.274036>,  <39.827343, 33.406624, 42.321518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.607624, 33.737484, 42.274036> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353317, -0.101168, 0.930017,
		0.757257, 0.552797, 0.347818,
		-0.549299, 0.827152, -0.118702,
		39.442833, 33.985630, 42.238426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.960075, 33.844246, 42.962105>,  <39.827343, 33.406624, 42.321518>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.960075, 33.844246, 42.962105> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.620998, 33.984375, 42.802761>,  <39.417553, 34.068455, 42.707153>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.620998, 33.984375, 42.802761>,  <39.960075, 33.844246, 42.962105>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620998, 33.984375, 42.802761> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392334, 0.091421, 0.915268,
		0.357060, 0.932155, 0.059948,
		-0.847692, 0.350326, -0.398359,
		39.366692, 34.089474, 42.683254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.790276, 34.463577, 43.412086>,  <39.960075, 33.844246, 42.962105>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.790276, 34.463577, 43.412086> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467266, 34.324718, 43.221344>,  <39.273460, 34.241402, 43.106899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.467266, 34.324718, 43.221344>,  <39.790276, 34.463577, 43.412086>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.467266, 34.324718, 43.221344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518142, 0.031188, 0.854726,
		-0.281843, 0.937292, -0.205056,
		-0.807523, -0.347147, -0.476860,
		39.225010, 34.220573, 43.078285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.929207, 35.065571, 43.769569> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.797768, 34.759098, 43.548664>,  <38.718903, 34.575214, 43.416122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.797768, 34.759098, 43.548664>,  <38.929207, 35.065571, 43.769569>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797768, 34.759098, 43.548664> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628708, -0.258903, 0.733277,
		-0.704805, 0.588163, -0.396630,
		-0.328597, -0.766181, -0.552259,
		38.699188, 34.529243, 43.382988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.202877, 35.127811, 43.836185>,  <38.929207, 35.065571, 43.769569>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.202877, 35.127811, 43.836185> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276337, 34.744591, 43.748180>,  <38.320412, 34.514660, 43.695377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.276337, 34.744591, 43.748180>,  <38.202877, 35.127811, 43.836185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.276337, 34.744591, 43.748180> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629341, -0.286535, 0.722377,
		-0.755117, 0.005799, -0.655564,
		0.183653, -0.958053, -0.220017,
		38.331432, 34.457176, 43.682175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502579, 34.731926, 43.823109>,  <38.202877, 35.127811, 43.836185>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502579, 34.731926, 43.823109> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775085, 34.445236, 43.882668>,  <37.938591, 34.273220, 43.918404>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.775085, 34.445236, 43.882668>,  <37.502579, 34.731926, 43.823109>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775085, 34.445236, 43.882668> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600392, -0.430706, 0.673811,
		-0.418805, -0.548448, -0.723745,
		0.681272, -0.716727, 0.148902,
		37.979465, 34.230217, 43.927338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.120804, 34.128117, 43.885071>,  <37.502579, 34.731926, 43.823109>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.120804, 34.128117, 43.885071> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454548, 34.010998, 44.071884>,  <37.654793, 33.940727, 44.183971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.454548, 34.010998, 44.071884>,  <37.120804, 34.128117, 43.885071>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454548, 34.010998, 44.071884> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550304, -0.393458, 0.736448,
		-0.031875, -0.871469, -0.489413,
		0.834356, -0.292800, 0.467031,
		37.704853, 33.923157, 44.211994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.084454, 33.425823, 44.064526>,  <37.120804, 34.128117, 43.885071>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.084454, 33.425823, 44.064526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339569, 33.593338, 44.323090>,  <37.492638, 33.693848, 44.478226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.339569, 33.593338, 44.323090>,  <37.084454, 33.425823, 44.064526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.339569, 33.593338, 44.323090> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545471, -0.346921, 0.762959,
		0.543769, -0.839204, 0.007173,
		0.637790, 0.418786, 0.646406,
		37.530907, 33.718975, 44.517010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233559, 32.874813, 44.633236>,  <37.084454, 33.425823, 44.064526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233559, 32.874813, 44.633236> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415939, 33.179134, 44.817966>,  <37.525368, 33.361729, 44.928806>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.415939, 33.179134, 44.817966>,  <37.233559, 32.874813, 44.633236>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.415939, 33.179134, 44.817966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253947, -0.386123, 0.886803,
		0.853005, -0.521620, 0.017150,
		0.455953, 0.760803, 0.461829,
		37.552727, 33.407375, 44.956516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629719, 32.580154, 45.128513>,  <37.233559, 32.874813, 44.633236>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629719, 32.580154, 45.128513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585567, 32.956009, 45.258064>,  <37.559078, 33.181522, 45.335796>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585567, 32.956009, 45.258064>,  <37.629719, 32.580154, 45.128513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585567, 32.956009, 45.258064> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232730, -0.341246, 0.910707,
		0.966258, 0.025142, 0.256347,
		-0.110374, 0.939638, 0.323880,
		37.552456, 33.237900, 45.355228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.050919, 32.629124, 45.793209>,  <37.629719, 32.580154, 45.128513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.050919, 32.629124, 45.793209> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772861, 32.916271, 45.808395>,  <37.606026, 33.088558, 45.817505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.772861, 32.916271, 45.808395>,  <38.050919, 32.629124, 45.793209>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772861, 32.916271, 45.808395> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159185, -0.205215, 0.965685,
		0.701022, 0.665249, 0.256928,
		-0.695146, 0.717866, 0.037963,
		37.564320, 33.131630, 45.819786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293392, 32.972023, 46.315228>,  <38.050919, 32.629124, 45.793209>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293392, 32.972023, 46.315228> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903721, 33.052002, 46.273277>,  <37.669918, 33.099987, 46.248108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.903721, 33.052002, 46.273277>,  <38.293392, 32.972023, 46.315228>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903721, 33.052002, 46.273277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112540, -0.027351, 0.993271,
		0.195731, 0.979425, 0.049147,
		-0.974179, 0.199945, -0.104871,
		37.611465, 33.111984, 46.241817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.082298, 33.343533, 46.913624>,  <38.293392, 32.972023, 46.315228>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.082298, 33.343533, 46.913624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748653, 33.179790, 46.765736>,  <37.548466, 33.081547, 46.677002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.748653, 33.179790, 46.765736>,  <38.082298, 33.343533, 46.913624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.748653, 33.179790, 46.765736> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291394, -0.242108, 0.925458,
		-0.468353, 0.879666, 0.082661,
		-0.834108, -0.409354, -0.369721,
		37.498421, 33.056984, 46.654819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.533493, 33.489555, 47.438049>,  <38.082298, 33.343533, 46.913624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.533493, 33.489555, 47.438049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321808, 33.233429, 47.215363>,  <37.194798, 33.079754, 47.081753>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.321808, 33.233429, 47.215363>,  <37.533493, 33.489555, 47.438049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.321808, 33.233429, 47.215363> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474457, -0.320635, 0.819807,
		-0.703434, 0.697993, -0.134115,
		-0.529217, -0.640312, -0.556713,
		37.163044, 33.041336, 47.048347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.818275, 33.605354, 47.659893>,  <37.533493, 33.489555, 47.438049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.818275, 33.605354, 47.659893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818783, 33.252193, 47.472069>,  <36.819088, 33.040298, 47.359375>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.818783, 33.252193, 47.472069>,  <36.818275, 33.605354, 47.659893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.818783, 33.252193, 47.472069> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484987, -0.411188, 0.771824,
		-0.874521, 0.226750, -0.428717,
		0.001272, -0.882898, -0.469563,
		36.819164, 32.987324, 47.331200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.116985, 33.267258, 47.816349>,  <36.818275, 33.605354, 47.659893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.116985, 33.267258, 47.816349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350964, 32.963394, 47.702679>,  <36.491352, 32.781075, 47.634476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.350964, 32.963394, 47.702679>,  <36.116985, 33.267258, 47.816349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350964, 32.963394, 47.702679> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369192, -0.561351, 0.740664,
		-0.722172, -0.328336, -0.608822,
		0.584949, -0.759658, -0.284172,
		36.526447, 32.735497, 47.617428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.661423, 32.672413, 47.597691>,  <36.116985, 33.267258, 47.816349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.661423, 32.672413, 47.597691> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023170, 32.530460, 47.692497>,  <36.240219, 32.445290, 47.749382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.023170, 32.530460, 47.692497>,  <35.661423, 32.672413, 47.597691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.023170, 32.530460, 47.692497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.422206, -0.663170, 0.618019,
		-0.062139, -0.658988, -0.749582,
		0.904368, -0.354882, 0.237020,
		36.294479, 32.423996, 47.763603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646484, 31.976429, 47.433708>,  <35.661423, 32.672413, 47.597691>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646484, 31.976429, 47.433708> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915413, 32.025414, 47.725731>,  <36.076771, 32.054806, 47.900944>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.915413, 32.025414, 47.725731>,  <35.646484, 31.976429, 47.433708>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915413, 32.025414, 47.725731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508030, -0.640977, 0.575373,
		0.538411, -0.757728, -0.368731,
		0.672324, 0.122461, 0.730058,
		36.117111, 32.062153, 47.944748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668781, 31.254570, 47.808918>,  <35.646484, 31.976429, 47.433708>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668781, 31.254570, 47.808918> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867474, 31.492260, 48.061951>,  <35.986687, 31.634874, 48.213772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.867474, 31.492260, 48.061951>,  <35.668781, 31.254570, 47.808918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.867474, 31.492260, 48.061951> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236768, -0.608434, 0.757462,
		0.834987, -0.526027, -0.161533,
		0.496728, 0.594225, 0.632581,
		36.016491, 31.670527, 48.251724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.019951, 30.800877, 48.186356>,  <35.668781, 31.254570, 47.808918>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.019951, 30.800877, 48.186356> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045471, 31.123095, 48.421993>,  <36.060783, 31.316425, 48.563374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.045471, 31.123095, 48.421993>,  <36.019951, 30.800877, 48.186356>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045471, 31.123095, 48.421993> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056968, -0.592272, 0.803722,
		0.996335, -0.017722, -0.083680,
		0.063805, 0.805543, 0.589092,
		36.064613, 31.364758, 48.598721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539158, 30.712992, 48.687046>,  <36.019951, 30.800877, 48.186356>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539158, 30.712992, 48.687046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298637, 30.987551, 48.850655>,  <36.154327, 31.152287, 48.948822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.298637, 30.987551, 48.850655>,  <36.539158, 30.712992, 48.687046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.298637, 30.987551, 48.850655> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153768, -0.601740, 0.783750,
		0.784089, 0.408373, 0.467371,
		-0.601298, 0.686397, 0.409023,
		36.118248, 31.193470, 48.973362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.910393, 30.713131, 49.379429>,  <36.539158, 30.712992, 48.687046>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.910393, 30.713131, 49.379429> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547054, 30.877375, 49.411194>,  <36.329052, 30.975920, 49.430252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.547054, 30.877375, 49.411194>,  <36.910393, 30.713131, 49.379429>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547054, 30.877375, 49.411194> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190742, -0.575734, 0.795077,
		0.372185, 0.707059, 0.601287,
		-0.908348, 0.410607, 0.079414,
		36.274551, 31.000557, 49.435017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.824127, 30.845139, 50.067715>,  <36.910393, 30.713131, 49.379429>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.824127, 30.845139, 50.067715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451557, 30.843359, 49.922150>,  <36.228016, 30.842291, 49.834808>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.451557, 30.843359, 49.922150>,  <36.824127, 30.845139, 50.067715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.451557, 30.843359, 49.922150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295052, -0.576176, 0.762211,
		-0.213069, 0.817313, 0.535350,
		-0.931422, -0.004447, -0.363915,
		36.172131, 30.842026, 49.812977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326542, 30.952875, 50.680122>,  <36.824127, 30.845139, 50.067715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326542, 30.952875, 50.680122> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132172, 30.767864, 50.383488>,  <36.015549, 30.656858, 50.205509>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.132172, 30.767864, 50.383488>,  <36.326542, 30.952875, 50.680122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.132172, 30.767864, 50.383488> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518455, -0.530540, 0.670620,
		-0.703619, 0.710350, 0.018004,
		-0.485927, -0.462527, -0.741582,
		35.986393, 30.629107, 50.161015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.674618, 31.033783, 50.904331>,  <36.326542, 30.952875, 50.680122>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.674618, 31.033783, 50.904331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716965, 30.732780, 50.644325>,  <35.742371, 30.552179, 50.488319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.716965, 30.732780, 50.644325>,  <35.674618, 31.033783, 50.904331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.716965, 30.732780, 50.644325> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410769, -0.628406, 0.660587,
		-0.905573, 0.197075, -0.375633,
		0.105865, -0.752507, -0.650020,
		35.748726, 30.507029, 50.449318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.530907, 31.054977, 51.627831>,  <35.674618, 31.033783, 50.904331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.530907, 31.054977, 51.627831> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787560, 31.350559, 51.710060>,  <35.941551, 31.527908, 51.759399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.787560, 31.350559, 51.710060>,  <35.530907, 31.054977, 51.627831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787560, 31.350559, 51.710060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463418, 0.587048, -0.663791,
		-0.611193, 0.330639, 0.719111,
		0.641628, 0.738954, 0.205576,
		35.980049, 31.572245, 51.771732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.055878, 31.643887, 51.415009>,  <35.530907, 31.054977, 51.627831>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.055878, 31.643887, 51.415009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664780, 31.714766, 51.459927>,  <34.430119, 31.757294, 51.486877>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.664780, 31.714766, 51.459927>,  <35.055878, 31.643887, 51.415009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.664780, 31.714766, 51.459927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004355, 0.518031, -0.855351,
		-0.209739, -0.836806, -0.505732,
		-0.977748, 0.177198, 0.112296,
		34.371456, 31.767925, 51.493614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717392, 31.436962, 50.767811>,  <35.055878, 31.643887, 51.415009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717392, 31.436962, 50.767811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507298, 31.706783, 50.975311>,  <34.381241, 31.868675, 51.099812>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.507298, 31.706783, 50.975311>,  <34.717392, 31.436962, 50.767811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.507298, 31.706783, 50.975311> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109968, 0.550696, -0.827430,
		-0.843820, -0.491644, -0.215068,
		-0.525238, 0.674552, 0.518753,
		34.349728, 31.909149, 51.130936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.160389, 31.520994, 50.439167>,  <34.717392, 31.436962, 50.767811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.160389, 31.520994, 50.439167> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219788, 31.857794, 50.646622>,  <34.255428, 32.059875, 50.771095>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.219788, 31.857794, 50.646622>,  <34.160389, 31.520994, 50.439167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.219788, 31.857794, 50.646622> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064183, 0.531553, -0.844590,
		-0.986828, 0.092132, 0.132977,
		0.148498, 0.842000, 0.518638,
		34.264336, 32.110394, 50.802212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686848, 31.960888, 50.248146>,  <34.160389, 31.520994, 50.439167>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686848, 31.960888, 50.248146> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919670, 32.226570, 50.435780>,  <34.059364, 32.385979, 50.548359>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.919670, 32.226570, 50.435780>,  <33.686848, 31.960888, 50.248146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.919670, 32.226570, 50.435780> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222938, 0.685119, -0.693476,
		-0.781989, 0.299067, 0.546856,
		0.582057, 0.664206, 0.469083,
		34.094288, 32.425831, 50.576504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320702, 32.480164, 50.402107>,  <33.686848, 31.960888, 50.248146>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320702, 32.480164, 50.402107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700546, 32.602604, 50.375179>,  <33.928455, 32.676067, 50.359020>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.700546, 32.602604, 50.375179>,  <33.320702, 32.480164, 50.402107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700546, 32.602604, 50.375179> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256911, 0.637211, -0.726608,
		-0.179514, 0.707295, 0.683746,
		0.949616, 0.306098, -0.067324,
		33.985432, 32.694435, 50.354980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.283356, 33.228951, 50.323624>,  <33.320702, 32.480164, 50.402107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.283356, 33.228951, 50.323624> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652485, 33.134636, 50.201775>,  <33.873962, 33.078049, 50.128666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.652485, 33.134636, 50.201775>,  <33.283356, 33.228951, 50.323624>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.652485, 33.134636, 50.201775> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178949, 0.437882, -0.881043,
		0.341126, 0.867563, 0.361896,
		0.922827, -0.235786, -0.304622,
		33.929333, 33.063900, 50.110390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.467293, 33.778229, 50.032444>,  <33.283356, 33.228951, 50.323624>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.467293, 33.778229, 50.032444> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748528, 33.537113, 49.881542>,  <33.917267, 33.392445, 49.791000>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.748528, 33.537113, 49.881542>,  <33.467293, 33.778229, 50.032444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.748528, 33.537113, 49.881542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092198, 0.603305, -0.792163,
		0.705105, 0.522175, 0.479750,
		0.703084, -0.602790, -0.377250,
		33.959454, 33.356277, 49.768368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.024307, 34.231014, 49.805588>,  <33.467293, 33.778229, 50.032444>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.024307, 34.231014, 49.805588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063381, 33.887745, 49.603996>,  <34.086826, 33.681782, 49.483040>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.063381, 33.887745, 49.603996>,  <34.024307, 34.231014, 49.805588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063381, 33.887745, 49.603996> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145510, 0.513275, -0.845798,
		0.984523, 0.009284, 0.175010,
		0.097681, -0.858174, -0.503980,
		34.092686, 33.630291, 49.452801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.586563, 34.358120, 49.355446>,  <34.024307, 34.231014, 49.805588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.586563, 34.358120, 49.355446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.374893, 34.059120, 49.194839>,  <34.247890, 33.879719, 49.098476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.374893, 34.059120, 49.194839>,  <34.586563, 34.358120, 49.355446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374893, 34.059120, 49.194839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186560, 0.359118, -0.914456,
		0.827748, -0.558815, -0.050583,
		-0.529177, -0.747503, -0.401512,
		34.216141, 33.834869, 49.074387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937958, 34.238754, 48.751873>,  <34.586563, 34.358120, 49.355446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937958, 34.238754, 48.751873> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601658, 34.029602, 48.695690>,  <34.399879, 33.904110, 48.661980>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.601658, 34.029602, 48.695690>,  <34.937958, 34.238754, 48.751873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.601658, 34.029602, 48.695690> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067235, 0.156591, -0.985372,
		0.537231, -0.837897, -0.096498,
		-0.840751, -0.522884, -0.140461,
		34.349434, 33.872738, 48.653553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.119316, 33.786610, 48.310883>,  <34.937958, 34.238754, 48.751873>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.119316, 33.786610, 48.310883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722057, 33.822559, 48.280994>,  <34.483704, 33.844128, 48.263062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.722057, 33.822559, 48.280994>,  <35.119316, 33.786610, 48.310883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722057, 33.822559, 48.280994> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090284, 0.183943, -0.978782,
		-0.074222, -0.978820, -0.190796,
		-0.993146, 0.089873, -0.074719,
		34.424114, 33.849522, 48.258579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.978855, 33.290691, 47.838699>,  <35.119316, 33.786610, 48.310883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.978855, 33.290691, 47.838699> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672100, 33.547333, 47.832680>,  <34.488049, 33.701317, 47.829067>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.672100, 33.547333, 47.832680>,  <34.978855, 33.290691, 47.838699>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672100, 33.547333, 47.832680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030073, 0.012502, -0.999469,
		-0.641075, -0.766934, -0.028883,
		-0.766888, 0.641604, -0.015049,
		34.442032, 33.739815, 47.828163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.410774, 33.049782, 47.342720>,  <34.978855, 33.290691, 47.838699>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.410774, 33.049782, 47.342720> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372684, 33.446682, 47.374626>,  <34.349831, 33.684822, 47.393772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.372684, 33.446682, 47.374626>,  <34.410774, 33.049782, 47.342720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.372684, 33.446682, 47.374626> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044518, 0.084296, -0.995446,
		-0.994460, -0.091241, -0.052201,
		-0.095226, 0.992255, 0.079768,
		34.344116, 33.744358, 47.398556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.028500, 33.332962, 46.707039>,  <34.410774, 33.049782, 47.342720>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.028500, 33.332962, 46.707039> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203854, 33.655258, 46.866337>,  <34.309067, 33.848637, 46.961918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.203854, 33.655258, 46.866337>,  <34.028500, 33.332962, 46.707039>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203854, 33.655258, 46.866337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207391, 0.340455, -0.917104,
		-0.874531, 0.484641, -0.017851,
		0.438389, 0.805738, 0.398249,
		34.335369, 33.896980, 46.985813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.020821, 33.771641, 46.124733>,  <34.028500, 33.332962, 46.707039>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.020821, 33.771641, 46.124733> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254265, 33.956856, 46.391563>,  <34.394329, 34.067986, 46.551662>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.254265, 33.956856, 46.391563>,  <34.020821, 33.771641, 46.124733>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254265, 33.956856, 46.391563> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461178, 0.487153, -0.741618,
		-0.668370, 0.740456, 0.070761,
		0.583606, 0.463042, 0.667080,
		34.429348, 34.095768, 46.591686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019997, 34.583546, 46.019958>,  <34.020821, 33.771641, 46.124733>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019997, 34.583546, 46.019958> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355770, 34.439545, 46.182812>,  <34.557232, 34.353146, 46.280525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.355770, 34.439545, 46.182812>,  <34.019997, 34.583546, 46.019958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.355770, 34.439545, 46.182812> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528467, 0.365914, -0.766048,
		0.126802, 0.858200, 0.497407,
		0.839430, -0.360000, 0.407132,
		34.607597, 34.331543, 46.304951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462273, 35.162197, 45.903900>,  <34.019997, 34.583546, 46.019958>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462273, 35.162197, 45.903900> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726192, 34.879456, 46.005901>,  <34.884544, 34.709812, 46.067104>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.726192, 34.879456, 46.005901>,  <34.462273, 35.162197, 45.903900>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.726192, 34.879456, 46.005901> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614217, 0.311802, -0.724925,
		0.432904, 0.634932, 0.639887,
		0.659796, -0.706853, 0.255006,
		34.924129, 34.667400, 46.082401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.184929, 35.405491, 46.171482>,  <34.462273, 35.162197, 45.903900>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.184929, 35.405491, 46.171482> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172745, 35.063019, 45.965172>,  <35.165436, 34.857536, 45.841385>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.172745, 35.063019, 45.965172>,  <35.184929, 35.405491, 46.171482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.172745, 35.063019, 45.965172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394242, 0.463893, -0.793332,
		0.918502, -0.227506, 0.323413,
		-0.030459, -0.856180, -0.515779,
		35.163609, 34.806164, 45.810436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284485, 35.708302, 45.521595>,  <35.184929, 35.405491, 46.171482>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284485, 35.708302, 45.521595> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.293915, 35.311436, 45.472507>,  <35.299572, 35.073318, 45.443054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.293915, 35.311436, 45.472507>,  <35.284485, 35.708302, 45.521595>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.293915, 35.311436, 45.472507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200576, 0.124947, -0.971678,
		0.979394, -0.001709, 0.201950,
		0.023572, -0.992162, -0.122715,
		35.300987, 35.013786, 45.435692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.959217, 35.515900, 45.205494>,  <35.284485, 35.708302, 45.521595>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.959217, 35.515900, 45.205494> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658154, 35.265617, 45.123512>,  <35.477516, 35.115448, 45.074326>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.658154, 35.265617, 45.123512>,  <35.959217, 35.515900, 45.205494>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.658154, 35.265617, 45.123512> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110831, 0.186437, -0.976196,
		0.649021, -0.757452, -0.070975,
		-0.752654, -0.625705, -0.204950,
		35.432358, 35.077908, 45.062027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247204, 35.150444, 44.606277>,  <35.959217, 35.515900, 45.205494>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247204, 35.150444, 44.606277> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859436, 35.052273, 44.606400>,  <35.626778, 34.993370, 44.606472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.859436, 35.052273, 44.606400>,  <36.247204, 35.150444, 44.606277>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859436, 35.052273, 44.606400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033173, 0.129802, -0.990985,
		0.243176, -0.960686, -0.133973,
		-0.969415, -0.245428, 0.000304,
		35.568611, 34.978645, 44.606491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<41.965195, 33.968754, 26.410086> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700207, 33.676975, 26.478241>,  <41.541214, 33.501907, 26.519135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.700207, 33.676975, 26.478241>,  <41.965195, 33.968754, 26.410086>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700207, 33.676975, 26.478241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438348, -0.193051, 0.877828,
		-0.607438, 0.656227, 0.447643,
		-0.662473, -0.729450, 0.170389,
		41.501465, 33.458141, 26.529358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.745216, 33.976841, 27.151579>,  <41.965195, 33.968754, 26.410086>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.745216, 33.976841, 27.151579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654747, 33.613064, 27.012003>,  <41.600464, 33.394798, 26.928257>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.654747, 33.613064, 27.012003>,  <41.745216, 33.976841, 27.151579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654747, 33.613064, 27.012003> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305783, -0.406402, 0.861007,
		-0.924847, 0.088036, 0.370009,
		-0.226172, -0.909443, -0.348940,
		41.586895, 33.340229, 26.907320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.230347, 33.639896, 27.664766>,  <41.745216, 33.976841, 27.151579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.230347, 33.639896, 27.664766> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415398, 33.360527, 27.446342>,  <41.526428, 33.192905, 27.315289>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.415398, 33.360527, 27.446342>,  <41.230347, 33.639896, 27.664766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.415398, 33.360527, 27.446342> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259224, -0.482453, 0.836685,
		-0.847810, -0.528623, -0.042147,
		0.462625, -0.698424, -0.546061,
		41.554184, 33.151001, 27.282524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.108006, 33.056271, 27.978359>,  <41.230347, 33.639896, 27.664766>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.108006, 33.056271, 27.978359> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439991, 32.965813, 27.774389>,  <41.639183, 32.911537, 27.652006>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.439991, 32.965813, 27.774389>,  <41.108006, 33.056271, 27.978359>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439991, 32.965813, 27.774389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321587, -0.552959, 0.768647,
		-0.455793, -0.801932, -0.386209,
		0.829960, -0.226144, -0.509926,
		41.688980, 32.897968, 27.621410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.102139, 32.358448, 28.128717>,  <41.108006, 33.056271, 27.978359>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.102139, 32.358448, 28.128717> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445602, 32.521290, 28.004150>,  <41.651680, 32.618996, 27.929411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.445602, 32.521290, 28.004150>,  <41.102139, 32.358448, 28.128717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445602, 32.521290, 28.004150> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476336, -0.409475, 0.778096,
		0.189246, -0.816455, -0.545515,
		0.858655, 0.407100, -0.311416,
		41.703197, 32.643421, 27.910727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.568596, 31.885456, 28.383152>,  <41.102139, 32.358448, 28.128717>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.568596, 31.885456, 28.383152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782848, 32.193962, 28.245600>,  <41.911400, 32.379066, 28.163069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.782848, 32.193962, 28.245600>,  <41.568596, 31.885456, 28.383152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.782848, 32.193962, 28.245600> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674320, -0.145512, 0.723961,
		0.508326, -0.619660, -0.598019,
		0.535629, 0.771264, -0.343881,
		41.943539, 32.425343, 28.142435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.158520, 31.652918, 28.403515>,  <41.568596, 31.885456, 28.383152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.158520, 31.652918, 28.403515> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.214127, 32.049000, 28.398365>,  <42.247490, 32.286648, 28.395275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.214127, 32.049000, 28.398365>,  <42.158520, 31.652918, 28.403515>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.214127, 32.049000, 28.398365> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723120, -0.092625, 0.684484,
		0.676587, -0.104466, -0.728915,
		0.139021, 0.990206, -0.012873,
		42.255833, 32.346062, 28.394503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.826191, 31.714296, 28.675161>,  <42.158520, 31.652918, 28.403515>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.826191, 31.714296, 28.675161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683636, 32.082130, 28.741312>,  <42.598103, 32.302830, 28.781002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.683636, 32.082130, 28.741312>,  <42.826191, 31.714296, 28.675161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.683636, 32.082130, 28.741312> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553799, 0.065348, 0.830082,
		0.752524, 0.387420, -0.532555,
		-0.356392, 0.919585, 0.165376,
		42.576717, 32.358006, 28.790924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.416515, 32.148975, 28.960094>,  <42.826191, 31.714296, 28.675161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.416515, 32.148975, 28.960094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065735, 32.319775, 29.048294>,  <42.855267, 32.422256, 29.101213>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.065735, 32.319775, 29.048294>,  <43.416515, 32.148975, 28.960094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.065735, 32.319775, 29.048294> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317000, 0.169138, 0.933222,
		0.361194, 0.888291, -0.283687,
		-0.876955, 0.427003, 0.220497,
		42.802647, 32.447876, 29.114443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.517834, 32.904842, 29.199127>,  <43.416515, 32.148975, 28.960094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.517834, 32.904842, 29.199127> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168694, 32.795486, 29.360815>,  <42.959209, 32.729874, 29.457827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.168694, 32.795486, 29.360815>,  <43.517834, 32.904842, 29.199127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.168694, 32.795486, 29.360815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382169, 0.132123, 0.914599,
		-0.303444, 0.952788, -0.010844,
		-0.872851, -0.273385, 0.404218,
		42.906837, 32.713470, 29.482080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436108, 33.353100, 29.734436>,  <43.517834, 32.904842, 29.199127>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436108, 33.353100, 29.734436> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.170589, 33.065910, 29.818232>,  <43.011276, 32.893597, 29.868509>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.170589, 33.065910, 29.818232>,  <43.436108, 33.353100, 29.734436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.170589, 33.065910, 29.818232> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200500, 0.099016, 0.974677,
		-0.720537, 0.688990, 0.078227,
		-0.663797, -0.717975, 0.209487,
		42.971451, 32.850517, 29.881077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.976395, 33.613182, 30.271666>,  <43.436108, 33.353100, 29.734436>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.976395, 33.613182, 30.271666> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.986404, 33.213409, 30.280733>,  <42.992409, 32.973545, 30.286175>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.986404, 33.213409, 30.280733>,  <42.976395, 33.613182, 30.271666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.986404, 33.213409, 30.280733> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192948, 0.027080, 0.980835,
		-0.980890, -0.020169, 0.193516,
		0.025023, -0.999430, 0.022670,
		42.993912, 32.913582, 30.287535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.786781, 33.552433, 30.893801>,  <42.976395, 33.613182, 30.271666>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.786781, 33.552433, 30.893801> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894909, 33.174606, 30.819258>,  <42.959785, 32.947910, 30.774532>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.894909, 33.174606, 30.819258>,  <42.786781, 33.552433, 30.893801>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.894909, 33.174606, 30.819258> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470738, -0.039177, 0.881403,
		-0.839842, -0.325983, 0.434052,
		0.270317, -0.944564, -0.186355,
		42.976006, 32.891235, 30.763351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.475220, 33.181171, 31.501932>,  <42.786781, 33.552433, 30.893801>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.475220, 33.181171, 31.501932> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735065, 32.932014, 31.327574>,  <42.890972, 32.782520, 31.222960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.735065, 32.932014, 31.327574>,  <42.475220, 33.181171, 31.501932>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.735065, 32.932014, 31.327574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495814, -0.087537, 0.864006,
		-0.576339, -0.777395, 0.251973,
		0.649617, -0.622892, -0.435894,
		42.929951, 32.745148, 31.196806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.481853, 32.609436, 31.965002>,  <42.475220, 33.181171, 31.501932>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.481853, 32.609436, 31.965002> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818127, 32.631466, 31.749516>,  <43.019890, 32.644684, 31.620224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.818127, 32.631466, 31.749516>,  <42.481853, 32.609436, 31.965002>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.818127, 32.631466, 31.749516> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530735, 0.113793, 0.839864,
		0.107539, -0.991978, 0.066446,
		0.840688, 0.055053, -0.538715,
		43.070332, 32.647987, 31.587900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.892006, 32.188915, 32.325588>,  <42.481853, 32.609436, 31.965002>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.892006, 32.188915, 32.325588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157875, 32.398041, 32.112095>,  <43.317398, 32.523518, 31.983999>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.157875, 32.398041, 32.112095>,  <42.892006, 32.188915, 32.325588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.157875, 32.398041, 32.112095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535821, 0.164281, 0.828195,
		0.520677, -0.836465, -0.170944,
		0.664673, 0.522818, -0.533733,
		43.357277, 32.554886, 31.951975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444534, 31.983246, 32.567730>,  <42.892006, 32.188915, 32.325588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444534, 31.983246, 32.567730> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.538548, 32.330082, 32.392044>,  <43.594955, 32.538185, 32.286633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.538548, 32.330082, 32.392044>,  <43.444534, 31.983246, 32.567730>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.538548, 32.330082, 32.392044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555306, 0.251082, 0.792838,
		0.797742, -0.430246, -0.422487,
		0.235037, 0.867091, -0.439217,
		43.609058, 32.590210, 32.260281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197685, 32.054798, 32.708187>,  <43.444534, 31.983246, 32.567730>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197685, 32.054798, 32.708187> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077862, 32.428589, 32.631218>,  <44.005970, 32.652863, 32.585037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.077862, 32.428589, 32.631218>,  <44.197685, 32.054798, 32.708187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.077862, 32.428589, 32.631218> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553853, 0.334544, 0.762448,
		0.776861, 0.121821, -0.617775,
		-0.299555, 0.934473, -0.192423,
		43.987995, 32.708931, 32.573490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.839108, 32.489136, 32.587017>,  <44.197685, 32.054798, 32.708187>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.839108, 32.489136, 32.587017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538563, 32.731983, 32.690453>,  <44.358234, 32.877689, 32.752514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.538563, 32.731983, 32.690453>,  <44.839108, 32.489136, 32.587017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.538563, 32.731983, 32.690453> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557454, 0.374259, 0.741063,
		0.353132, 0.700957, -0.619643,
		-0.751361, 0.607116, 0.258588,
		44.313156, 32.914120, 32.768028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.056206, 33.219986, 32.539986>,  <44.839108, 32.489136, 32.587017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.056206, 33.219986, 32.539986> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757179, 33.224312, 32.805626>,  <44.577763, 33.226910, 32.965012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.757179, 33.224312, 32.805626>,  <45.056206, 33.219986, 32.539986>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.757179, 33.224312, 32.805626> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594681, 0.456203, 0.661992,
		-0.295803, 0.889810, -0.347474,
		-0.747566, 0.010817, 0.664099,
		44.532909, 33.227558, 33.004856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.128582, 33.748692, 32.903629>,  <45.056206, 33.219986, 32.539986>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.128582, 33.748692, 32.903629> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885376, 33.555939, 33.156013>,  <44.739452, 33.440285, 33.307446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.885376, 33.555939, 33.156013>,  <45.128582, 33.748692, 32.903629>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.885376, 33.555939, 33.156013> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534765, 0.338833, 0.774092,
		-0.586813, 0.808071, 0.051681,
		-0.608011, -0.481884, 0.630960,
		44.702972, 33.411373, 33.345303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.823563, 33.649693, 33.187069>,  <45.128582, 33.748692, 32.903629>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.823563, 33.649693, 33.187069> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993599, 34.004494, 33.259205>,  <46.095623, 34.217373, 33.302486>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.993599, 34.004494, 33.259205>,  <45.823563, 33.649693, 33.187069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993599, 34.004494, 33.259205> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481346, 0.390254, -0.784862,
		-0.766552, 0.246835, 0.592849,
		0.425093, 0.887003, 0.180337,
		46.121128, 34.270596, 33.313305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.373177, 34.188629, 33.477734>,  <45.823563, 33.649693, 33.187069>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.373177, 34.188629, 33.477734> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655399, 34.392918, 33.281223>,  <45.824734, 34.515491, 33.163315>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.655399, 34.392918, 33.281223>,  <45.373177, 34.188629, 33.477734>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655399, 34.392918, 33.281223> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686132, 0.318928, -0.653841,
		-0.177250, 0.798401, 0.575445,
		0.705553, 0.510725, -0.491278,
		45.867065, 34.546135, 33.133839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.065228, 34.778389, 33.333401>,  <45.373177, 34.188629, 33.477734>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.065228, 34.778389, 33.333401> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363693, 34.805714, 33.068501>,  <45.542774, 34.822109, 32.909561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.363693, 34.805714, 33.068501>,  <45.065228, 34.778389, 33.333401>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.363693, 34.805714, 33.068501> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578990, 0.557614, -0.594842,
		0.328647, 0.827285, 0.455622,
		0.746165, 0.068308, -0.662248,
		45.587543, 34.826206, 32.869827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.179390, 35.527393, 33.189163>,  <45.065228, 34.778389, 33.333401>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.179390, 35.527393, 33.189163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331944, 35.318779, 32.883865>,  <45.423473, 35.193611, 32.700687>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.331944, 35.318779, 32.883865>,  <45.179390, 35.527393, 33.189163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.331944, 35.318779, 32.883865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511932, 0.568326, -0.644152,
		0.769723, 0.636398, -0.050243,
		0.381382, -0.521540, -0.763246,
		45.446358, 35.162315, 32.654892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.216042, 36.017235, 32.656132>,  <45.179390, 35.527393, 33.189163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.216042, 36.017235, 32.656132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271713, 35.670212, 32.465149>,  <45.305119, 35.461998, 32.350559>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.271713, 35.670212, 32.465149>,  <45.216042, 36.017235, 32.656132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.271713, 35.670212, 32.465149> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425458, 0.382996, -0.819939,
		0.894211, 0.317259, -0.315805,
		0.139181, -0.867560, -0.477460,
		45.313469, 35.409943, 32.321911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.566948, 36.191772, 32.041206>,  <45.216042, 36.017235, 32.656132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.566948, 36.191772, 32.041206> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370865, 35.851292, 31.966211>,  <45.253216, 35.647003, 31.921215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370865, 35.851292, 31.966211>,  <45.566948, 36.191772, 32.041206>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370865, 35.851292, 31.966211> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462543, 0.436370, -0.771774,
		0.738750, -0.291607, -0.607629,
		-0.490206, -0.851203, -0.187487,
		45.223804, 35.595932, 31.909966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.590683, 36.103054, 31.308933>,  <45.566948, 36.191772, 32.041206>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.590683, 36.103054, 31.308933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274910, 35.886536, 31.424717>,  <45.085445, 35.756622, 31.494186>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.274910, 35.886536, 31.424717>,  <45.590683, 36.103054, 31.308933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.274910, 35.886536, 31.424717> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581281, 0.507717, -0.635875,
		0.197235, -0.670240, -0.715456,
		-0.789437, -0.541297, 0.289458,
		45.038078, 35.724148, 31.511555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.122955, 36.038788, 30.660440>,  <45.590683, 36.103054, 31.308933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.122955, 36.038788, 30.660440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871944, 35.876900, 30.926497>,  <44.721340, 35.779766, 31.086130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.871944, 35.876900, 30.926497>,  <45.122955, 36.038788, 30.660440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.871944, 35.876900, 30.926497> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767420, 0.177281, -0.616148,
		0.131445, -0.897095, -0.421832,
		-0.627526, -0.404712, 0.665146,
		44.683685, 35.755486, 31.126040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.734299, 35.520039, 30.244871>,  <45.122955, 36.038788, 30.660440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.734299, 35.520039, 30.244871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533516, 35.666908, 30.558107>,  <44.413048, 35.755028, 30.746048>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.533516, 35.666908, 30.558107>,  <44.734299, 35.520039, 30.244871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.533516, 35.666908, 30.558107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789878, 0.174224, -0.587996,
		-0.352328, -0.913691, 0.202567,
		-0.501955, 0.367170, 0.783088,
		44.382931, 35.777058, 30.793034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023701, 35.212212, 30.198305>,  <44.734299, 35.520039, 30.244871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023701, 35.212212, 30.198305> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959656, 35.516396, 30.450039>,  <43.921230, 35.698906, 30.601080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.959656, 35.516396, 30.450039>,  <44.023701, 35.212212, 30.198305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.959656, 35.516396, 30.450039> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.898026, 0.152451, -0.412683,
		-0.409773, -0.631235, 0.658505,
		-0.160110, 0.760461, 0.629336,
		43.911621, 35.744534, 30.638840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336735, 35.030277, 30.497425>,  <44.023701, 35.212212, 30.198305>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336735, 35.030277, 30.497425> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405590, 35.420376, 30.552950>,  <43.446903, 35.654434, 30.586266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.405590, 35.420376, 30.552950>,  <43.336735, 35.030277, 30.497425>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.405590, 35.420376, 30.552950> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940862, 0.204514, -0.270097,
		-0.291799, -0.084111, 0.952774,
		0.172137, 0.975243, 0.138814,
		43.457230, 35.712948, 30.594595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.739372, 35.281696, 30.949591>,  <43.336735, 35.030277, 30.497425>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.739372, 35.281696, 30.949591> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.906204, 35.577160, 30.737770>,  <43.006306, 35.754436, 30.610678>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.906204, 35.577160, 30.737770>,  <42.739372, 35.281696, 30.949591>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906204, 35.577160, 30.737770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.877197, 0.174689, -0.447225,
		-0.237839, 0.651053, 0.720807,
		0.417084, 0.738657, -0.529554,
		43.031330, 35.798756, 30.578903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.192810, 35.699833, 30.766066>,  <42.739372, 35.281696, 30.949591>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.192810, 35.699833, 30.766066> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457848, 35.836987, 30.499714>,  <42.616871, 35.919277, 30.339903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.457848, 35.836987, 30.499714>,  <42.192810, 35.699833, 30.766066>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.457848, 35.836987, 30.499714> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739507, 0.158578, -0.654204,
		-0.118719, 0.925897, 0.358635,
		0.662597, 0.342880, -0.665882,
		42.656628, 35.939850, 30.299950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915726, 36.254074, 30.530247>,  <42.192810, 35.699833, 30.766066>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915726, 36.254074, 30.530247> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180584, 36.130531, 30.257139>,  <42.339497, 36.056404, 30.093275>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.180584, 36.130531, 30.257139>,  <41.915726, 36.254074, 30.530247>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.180584, 36.130531, 30.257139> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703232, 0.058683, -0.708534,
		0.258904, 0.949296, -0.178344,
		0.662143, -0.308859, -0.682769,
		42.379227, 36.037872, 30.052309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.654629, 36.605785, 29.950916>,  <41.915726, 36.254074, 30.530247>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.654629, 36.605785, 29.950916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930424, 36.358559, 29.799862>,  <42.095901, 36.210224, 29.709230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.930424, 36.358559, 29.799862>,  <41.654629, 36.605785, 29.950916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.930424, 36.358559, 29.799862> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556122, -0.117704, -0.822724,
		0.464048, 0.777265, -0.424875,
		0.689484, -0.618066, -0.377634,
		42.137268, 36.173138, 29.686571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.963844, 36.945168, 29.307041>,  <41.654629, 36.605785, 29.950916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.963844, 36.945168, 29.307041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992199, 36.546688, 29.286800>,  <42.009212, 36.307602, 29.274656>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.992199, 36.546688, 29.286800>,  <41.963844, 36.945168, 29.307041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.992199, 36.546688, 29.286800> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488085, 0.009600, -0.872743,
		0.869912, 0.086566, -0.485550,
		0.070889, -0.996200, -0.050603,
		42.013466, 36.247829, 29.271620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.227028, 36.731030, 28.608232>,  <41.963844, 36.945168, 29.307041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.227028, 36.731030, 28.608232> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.034660, 36.414440, 28.759115>,  <41.919239, 36.224487, 28.849646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.034660, 36.414440, 28.759115>,  <42.227028, 36.731030, 28.608232>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034660, 36.414440, 28.759115> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528201, -0.081848, -0.845166,
		0.699800, -0.605698, -0.378695,
		-0.480919, -0.791474, 0.377207,
		41.890385, 36.176998, 28.872278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252674, 36.297768, 28.064867>,  <42.227028, 36.731030, 28.608232>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252674, 36.297768, 28.064867> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.959515, 36.119129, 28.270159>,  <41.783619, 36.011944, 28.393333>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.959515, 36.119129, 28.270159>,  <42.252674, 36.297768, 28.064867>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.959515, 36.119129, 28.270159> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554674, -0.044574, -0.830873,
		0.393944, -0.893623, -0.215049,
		-0.732902, -0.446599, 0.513229,
		41.739643, 35.985149, 28.424128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023746, 35.824852, 27.678179>,  <42.252674, 36.297768, 28.064867>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023746, 35.824852, 27.678179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.723980, 35.863155, 27.940231>,  <41.544121, 35.886139, 28.097464>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.723980, 35.863155, 27.940231>,  <42.023746, 35.824852, 27.678179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.723980, 35.863155, 27.940231> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656033, 0.026189, -0.754278,
		-0.089388, -0.995060, 0.043197,
		-0.749420, 0.095762, 0.655133,
		41.499153, 35.891884, 28.136770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.501465, 35.304657, 27.460831>,  <42.023746, 35.824852, 27.678179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.501465, 35.304657, 27.460831> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.308228, 35.585571, 27.669987>,  <41.192284, 35.754120, 27.795481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.308228, 35.585571, 27.669987>,  <41.501465, 35.304657, 27.460831>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.308228, 35.585571, 27.669987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710020, 0.035234, -0.703300,
		-0.512342, -0.711021, 0.481617,
		-0.483092, 0.702288, 0.522890,
		41.163300, 35.796257, 27.826855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785240, 35.084560, 27.452724>,  <41.501465, 35.304657, 27.460831>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785240, 35.084560, 27.452724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.791916, 35.471497, 27.553896>,  <40.795921, 35.703659, 27.614599>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.791916, 35.471497, 27.553896>,  <40.785240, 35.084560, 27.452724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.791916, 35.471497, 27.553896> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855464, 0.144766, -0.497216,
		-0.517593, -0.208072, 0.829942,
		0.016691, 0.967341, 0.252928,
		40.796925, 35.761700, 27.629774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<40.889866, 34.049461, 41.063446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512230, 34.118618, 40.951160>,  <40.285648, 34.160114, 40.883789>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.512230, 34.118618, 40.951160>,  <40.889866, 34.049461, 41.063446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512230, 34.118618, 40.951160> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271847, -0.073494, -0.959530,
		-0.186529, -0.982194, 0.022384,
		-0.944090, 0.172895, -0.280715,
		40.229004, 34.170486, 40.866947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.674706, 33.470612, 40.672546>,  <40.889866, 34.049461, 41.063446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.674706, 33.470612, 40.672546> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457287, 33.785946, 40.557255>,  <40.326836, 33.975147, 40.488079>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457287, 33.785946, 40.557255>,  <40.674706, 33.470612, 40.672546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.457287, 33.785946, 40.557255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444405, -0.021030, -0.895579,
		-0.712080, -0.614883, -0.338911,
		-0.543550, 0.788338, -0.288232,
		40.294224, 34.022446, 40.470787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.636986, 33.306187, 39.904987>,  <40.674706, 33.470612, 40.672546>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.636986, 33.306187, 39.904987> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524216, 33.686085, 39.959396>,  <40.456554, 33.914024, 39.992043>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.524216, 33.686085, 39.959396>,  <40.636986, 33.306187, 39.904987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.524216, 33.686085, 39.959396> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003533, 0.140749, -0.990039,
		-0.959429, -0.279600, -0.036325,
		-0.281928, 0.949744, 0.136027,
		40.439636, 33.971008, 40.000206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.388046, 33.346916, 39.301723>,  <40.636986, 33.306187, 39.904987>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.388046, 33.346916, 39.301723> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407436, 33.722427, 39.438156>,  <40.419071, 33.947735, 39.520016>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.407436, 33.722427, 39.438156>,  <40.388046, 33.346916, 39.301723>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.407436, 33.722427, 39.438156> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109497, 0.344424, -0.932407,
		-0.992804, 0.007853, 0.119491,
		0.048478, 0.938781, 0.341086,
		40.421978, 34.004063, 39.540482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.732262, 33.843449, 39.134651>,  <40.388046, 33.346916, 39.301723>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.732262, 33.843449, 39.134651> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054413, 34.077271, 39.173985>,  <40.247704, 34.217564, 39.197586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.054413, 34.077271, 39.173985>,  <39.732262, 33.843449, 39.134651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.054413, 34.077271, 39.173985> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109795, 0.310131, -0.944333,
		-0.582509, 0.749745, 0.313952,
		0.805374, 0.584553, 0.098336,
		40.296024, 34.252636, 39.203484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.642994, 34.567825, 38.890839>,  <39.732262, 33.843449, 39.134651>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.642994, 34.567825, 38.890839> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030338, 34.474239, 38.856117>,  <40.262745, 34.418087, 38.835285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.030338, 34.474239, 38.856117>,  <39.642994, 34.567825, 38.890839>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.030338, 34.474239, 38.856117> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022098, 0.266097, -0.963693,
		0.248568, 0.935122, 0.252508,
		0.968362, -0.233964, -0.086808,
		40.320847, 34.404049, 38.830074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.773926, 34.889030, 38.351734>,  <39.642994, 34.567825, 38.890839>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.773926, 34.889030, 38.351734> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139282, 34.728462, 38.378792>,  <40.358498, 34.632122, 38.395027>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139282, 34.728462, 38.378792>,  <39.773926, 34.889030, 38.351734>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139282, 34.728462, 38.378792> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138829, 0.150959, -0.978743,
		0.382679, 0.903366, 0.193614,
		0.913391, -0.401424, 0.067644,
		40.413300, 34.608036, 38.399086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.308617, 35.332100, 37.922085>,  <39.773926, 34.889030, 38.351734>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.308617, 35.332100, 37.922085> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469822, 34.968414, 37.963867>,  <40.566547, 34.750202, 37.988937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.469822, 34.968414, 37.963867>,  <40.308617, 35.332100, 37.922085>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.469822, 34.968414, 37.963867> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156895, -0.043811, -0.986643,
		0.901644, 0.414023, 0.124994,
		0.403016, -0.909212, 0.104460,
		40.590729, 34.695652, 37.995205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.911922, 35.409073, 37.487614>,  <40.308617, 35.332100, 37.922085>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.911922, 35.409073, 37.487614> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859295, 35.018112, 37.553806>,  <40.827717, 34.783535, 37.593521>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.859295, 35.018112, 37.553806>,  <40.911922, 35.409073, 37.487614>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.859295, 35.018112, 37.553806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148726, -0.184503, -0.971514,
		0.980086, -0.103213, 0.169640,
		-0.131572, -0.977397, 0.165479,
		40.819824, 34.724892, 37.603451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.515541, 35.004726, 37.232353>,  <40.911922, 35.409073, 37.487614>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.515541, 35.004726, 37.232353> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209484, 34.749702, 37.268276>,  <41.025848, 34.596687, 37.289829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.209484, 34.749702, 37.268276>,  <41.515541, 35.004726, 37.232353>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209484, 34.749702, 37.268276> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061895, -0.211674, -0.975379,
		0.640874, -0.740749, 0.201423,
		-0.765147, -0.637562, 0.089807,
		40.979939, 34.558434, 37.295219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.685429, 34.447479, 36.874748>,  <41.515541, 35.004726, 37.232353>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.685429, 34.447479, 36.874748> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286602, 34.443878, 36.905144>,  <41.047306, 34.441719, 36.923382>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.286602, 34.443878, 36.905144>,  <41.685429, 34.447479, 36.874748>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.286602, 34.443878, 36.905144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066870, -0.380316, -0.922436,
		0.037203, -0.924813, 0.378599,
		-0.997068, -0.009001, 0.075991,
		40.987480, 34.441177, 36.927940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.413200, 33.836132, 36.568905>,  <41.685429, 34.447479, 36.874748>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.413200, 33.836132, 36.568905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101120, 34.085812, 36.552551>,  <40.913872, 34.235619, 36.542740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.101120, 34.085812, 36.552551>,  <41.413200, 33.836132, 36.568905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101120, 34.085812, 36.552551> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021259, -0.038860, -0.999018,
		-0.625171, -0.780302, 0.017049,
		-0.780198, 0.624195, -0.040882,
		40.867062, 34.273071, 36.540287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.975643, 33.635174, 36.088814>,  <41.413200, 33.836132, 36.568905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.975643, 33.635174, 36.088814> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885963, 34.023430, 36.123653>,  <40.832157, 34.256386, 36.144558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885963, 34.023430, 36.123653>,  <40.975643, 33.635174, 36.088814>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.885963, 34.023430, 36.123653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011155, 0.086814, -0.996162,
		-0.974480, -0.224308, -0.008636,
		-0.224197, 0.970644, 0.087100,
		40.818703, 34.314625, 36.149784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.238110, 32.999977, 36.476547>,  <40.975643, 33.635174, 36.088814>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.238110, 32.999977, 36.476547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096859, 32.694149, 36.692226>,  <41.012108, 32.510651, 36.821632>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.096859, 32.694149, 36.692226>,  <41.238110, 32.999977, 36.476547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.096859, 32.694149, 36.692226> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932522, 0.334164, -0.136884,
		-0.075521, -0.551148, -0.830983,
		-0.353128, -0.764572, 0.539194,
		40.990921, 32.464779, 36.853985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454845, 32.184162, 36.310375>,  <41.238110, 32.999977, 36.476547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454845, 32.184162, 36.310375> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561291, 31.817097, 36.192337>,  <41.625156, 31.596857, 36.121513>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.561291, 31.817097, 36.192337>,  <41.454845, 32.184162, 36.310375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.561291, 31.817097, 36.192337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.870974, -0.360072, 0.334294,
		-0.413025, 0.168063, -0.895078,
		0.266110, -0.917662, -0.295097,
		41.641125, 31.541798, 36.103809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828270, 31.895838, 36.019924>,  <41.454845, 32.184162, 36.310375>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828270, 31.895838, 36.019924> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065353, 31.582043, 36.092892>,  <41.207603, 31.393766, 36.136673>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.065353, 31.582043, 36.092892>,  <40.828270, 31.895838, 36.019924>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.065353, 31.582043, 36.092892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750417, -0.455622, 0.478836,
		-0.292524, -0.420704, -0.858742,
		0.592710, -0.784485, 0.182423,
		41.243168, 31.346697, 36.147617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373772, 31.234459, 35.884785>,  <40.828270, 31.895838, 36.019924>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373772, 31.234459, 35.884785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689934, 31.106121, 36.093521>,  <40.879631, 31.029119, 36.218761>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689934, 31.106121, 36.093521>,  <40.373772, 31.234459, 35.884785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689934, 31.106121, 36.093521> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610955, -0.474933, 0.633382,
		0.044624, -0.819450, -0.571411,
		0.790407, -0.320842, 0.521840,
		40.927055, 31.009869, 36.250072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307552, 30.422430, 35.980438>,  <40.373772, 31.234459, 35.884785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307552, 30.422430, 35.980438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518353, 30.608442, 36.264977>,  <40.644833, 30.720049, 36.435699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.518353, 30.608442, 36.264977>,  <40.307552, 30.422430, 35.980438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.518353, 30.608442, 36.264977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620465, -0.361456, 0.695969,
		0.580768, -0.808143, 0.098047,
		0.527003, 0.465031, 0.711347,
		40.676453, 30.747952, 36.478382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394829, 29.951101, 36.459152>,  <40.307552, 30.422430, 35.980438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394829, 29.951101, 36.459152> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455639, 30.289762, 36.663139>,  <40.492123, 30.492960, 36.785534>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.455639, 30.289762, 36.663139>,  <40.394829, 29.951101, 36.459152>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455639, 30.289762, 36.663139> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.604304, -0.328672, 0.725804,
		0.782116, -0.418515, 0.461671,
		0.152021, 0.846652, 0.509970,
		40.501244, 30.543758, 36.816132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459766, 29.664539, 37.062752>,  <40.394829, 29.951101, 36.459152>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459766, 29.664539, 37.062752> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385883, 30.055815, 37.100769>,  <40.341553, 30.290579, 37.123581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.385883, 30.055815, 37.100769>,  <40.459766, 29.664539, 37.062752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.385883, 30.055815, 37.100769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665363, -0.195638, 0.720429,
		0.723309, 0.069827, 0.686985,
		-0.184706, 0.978187, 0.095046,
		40.330471, 30.349272, 37.129284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.466541, 29.747772, 37.746502>,  <40.459766, 29.664539, 37.062752>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.466541, 29.747772, 37.746502> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290508, 30.067629, 37.583092>,  <40.184887, 30.259542, 37.485046>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290508, 30.067629, 37.583092>,  <40.466541, 29.747772, 37.746502>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.290508, 30.067629, 37.583092> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760904, -0.090506, 0.642522,
		0.476814, 0.593615, 0.648282,
		-0.440084, 0.799643, -0.408529,
		40.158482, 30.307522, 37.460533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.378757, 30.104923, 38.315384>,  <40.466541, 29.747772, 37.746502>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.378757, 30.104923, 38.315384> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108410, 30.231323, 38.049046>,  <39.946201, 30.307163, 37.889244>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.108410, 30.231323, 38.049046>,  <40.378757, 30.104923, 38.315384>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.108410, 30.231323, 38.049046> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.719584, -0.087568, 0.688862,
		0.159374, 0.944709, 0.286573,
		-0.675869, 0.316000, -0.665842,
		39.905651, 30.326124, 37.849293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.000122, 30.573513, 38.672012>,  <40.378757, 30.104923, 38.315384>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.000122, 30.573513, 38.672012> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764000, 30.468363, 38.366745>,  <39.622326, 30.405272, 38.183582>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.764000, 30.468363, 38.366745>,  <40.000122, 30.573513, 38.672012>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764000, 30.468363, 38.366745> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.788820, -0.012619, 0.614494,
		-0.171167, 0.964747, -0.199914,
		-0.590309, -0.262878, -0.763172,
		39.586906, 30.389500, 38.137794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469795, 31.045135, 38.646980>,  <40.000122, 30.573513, 38.672012>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469795, 31.045135, 38.646980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330204, 30.722090, 38.456837>,  <39.246449, 30.528261, 38.342751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.330204, 30.722090, 38.456837>,  <39.469795, 31.045135, 38.646980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330204, 30.722090, 38.456837> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.808062, 0.002435, 0.589093,
		-0.474604, 0.589703, -0.653453,
		-0.348981, -0.807616, -0.475361,
		39.225510, 30.479805, 38.314228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.773991, 31.135511, 38.640236>,  <39.469795, 31.045135, 38.646980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.773991, 31.135511, 38.640236> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796089, 30.746620, 38.549267>,  <38.809349, 30.513285, 38.494686>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.796089, 30.746620, 38.549267>,  <38.773991, 31.135511, 38.640236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796089, 30.746620, 38.549267> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.738155, -0.193151, 0.646390,
		-0.672365, 0.132161, -0.728326,
		0.055249, -0.972228, -0.227423,
		38.812664, 30.454952, 38.481041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.096039, 30.899803, 38.445305>,  <38.773991, 31.135511, 38.640236>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.096039, 30.899803, 38.445305> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279129, 30.556232, 38.537155>,  <38.388985, 30.350090, 38.592266>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279129, 30.556232, 38.537155>,  <38.096039, 30.899803, 38.445305>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.279129, 30.556232, 38.537155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718047, -0.204830, 0.665172,
		-0.524302, -0.469348, -0.710507,
		0.457730, -0.858928, 0.229621,
		38.416447, 30.298553, 38.606041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531582, 30.408474, 38.511990>,  <38.096039, 30.899803, 38.445305>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531582, 30.408474, 38.511990> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850063, 30.270872, 38.711075>,  <38.041153, 30.188311, 38.830524>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.850063, 30.270872, 38.711075>,  <37.531582, 30.408474, 38.511990>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.850063, 30.270872, 38.711075> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574214, -0.170481, 0.800758,
		-0.190617, -0.923360, -0.333273,
		0.796205, -0.344009, 0.497710,
		38.088924, 30.167671, 38.860390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.371578, 29.721878, 38.990803>,  <37.531582, 30.408474, 38.511990>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.371578, 29.721878, 38.990803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697559, 29.879383, 39.160885>,  <37.893147, 29.973886, 39.262936>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697559, 29.879383, 39.160885>,  <37.371578, 29.721878, 38.990803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697559, 29.879383, 39.160885> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438223, -0.061411, 0.896766,
		0.379224, -0.917159, 0.122508,
		0.814954, 0.393761, 0.425209,
		37.942047, 29.997511, 39.288448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.094906, 29.162205, 38.763573>,  <37.371578, 29.721878, 38.990803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.094906, 29.162205, 38.763573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699226, 29.206116, 38.724739>,  <36.461819, 29.232462, 38.701439>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699226, 29.206116, 38.724739>,  <37.094906, 29.162205, 38.763573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.699226, 29.206116, 38.724739> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137678, 0.469122, -0.872335,
		-0.050215, -0.876284, -0.479171,
		-0.989203, 0.109776, -0.097088,
		36.402466, 29.239048, 38.695614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968464, 29.041172, 38.048149>,  <37.094906, 29.162205, 38.763573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968464, 29.041172, 38.048149> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642036, 29.245176, 38.156898>,  <36.446178, 29.367579, 38.222149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.642036, 29.245176, 38.156898>,  <36.968464, 29.041172, 38.048149>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642036, 29.245176, 38.156898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035211, 0.425665, -0.904196,
		-0.576879, -0.747460, -0.329415,
		-0.816070, 0.510012, 0.271876,
		36.397217, 29.398180, 38.238461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.577972, 29.107542, 37.458855>,  <36.968464, 29.041172, 38.048149>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.577972, 29.107542, 37.458855> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426979, 29.406477, 37.677578>,  <36.336384, 29.585838, 37.808811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426979, 29.406477, 37.677578>,  <36.577972, 29.107542, 37.458855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.426979, 29.406477, 37.677578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041857, 0.576116, -0.816295,
		-0.925071, -0.331024, -0.186192,
		-0.377481, 0.747337, 0.546804,
		36.313736, 29.630678, 37.841618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.995773, 29.378069, 36.981674>,  <36.577972, 29.107542, 37.458855>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.995773, 29.378069, 36.981674> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044334, 29.675692, 37.244473>,  <36.073471, 29.854265, 37.402153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.044334, 29.675692, 37.244473>,  <35.995773, 29.378069, 36.981674>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044334, 29.675692, 37.244473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304202, 0.657930, -0.688904,
		-0.944840, -0.116226, 0.306216,
		0.121400, 0.744056, 0.656996,
		36.080753, 29.898909, 37.441570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.475510, 29.759914, 36.939491>,  <35.995773, 29.378069, 36.981674>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.475510, 29.759914, 36.939491> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756023, 29.997244, 37.097565>,  <35.924332, 30.139641, 37.192410>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756023, 29.997244, 37.097565>,  <35.475510, 29.759914, 36.939491>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756023, 29.997244, 37.097565> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148791, 0.663956, -0.732819,
		-0.697181, 0.455116, 0.553903,
		0.701285, 0.593323, 0.395180,
		35.966408, 30.175241, 37.216118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.430080, 30.301651, 36.497601>,  <35.475510, 29.759914, 36.939491>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.430080, 30.301651, 36.497601> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749596, 30.412647, 36.711121>,  <35.941303, 30.479246, 36.839233>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.749596, 30.412647, 36.711121>,  <35.430080, 30.301651, 36.497601>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.749596, 30.412647, 36.711121> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189399, 0.726170, -0.660913,
		-0.571028, 0.629027, 0.527496,
		0.798784, 0.277492, 0.533800,
		35.989231, 30.495895, 36.871262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439640, 31.048845, 36.525112>,  <35.430080, 30.301651, 36.497601>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439640, 31.048845, 36.525112> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815525, 30.931293, 36.595066>,  <36.041054, 30.860762, 36.637039>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815525, 30.931293, 36.595066>,  <35.439640, 31.048845, 36.525112>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.815525, 30.931293, 36.595066> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338754, 0.729887, -0.593726,
		0.046841, 0.617171, 0.785434,
		0.939708, -0.293880, 0.174880,
		36.097439, 30.843130, 36.647530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753197, 31.592216, 36.820232>,  <35.439640, 31.048845, 36.525112>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753197, 31.592216, 36.820232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025154, 31.357771, 36.643955>,  <36.188328, 31.217104, 36.538189>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.025154, 31.357771, 36.643955>,  <35.753197, 31.592216, 36.820232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.025154, 31.357771, 36.643955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096467, 0.667234, -0.738576,
		0.726936, 0.459642, 0.510189,
		0.679895, -0.586114, -0.440696,
		36.229122, 31.181936, 36.511745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298523, 31.936153, 36.660381>,  <35.753197, 31.592216, 36.820232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298523, 31.936153, 36.660381> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390091, 31.636868, 36.411297>,  <36.445030, 31.457296, 36.261845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390091, 31.636868, 36.411297>,  <36.298523, 31.936153, 36.660381>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.390091, 31.636868, 36.411297> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125575, 0.657053, -0.743311,
		0.965312, 0.091959, 0.244368,
		0.228917, -0.748214, -0.622714,
		36.458767, 31.412403, 36.224483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.954304, 32.046753, 36.252602>,  <36.298523, 31.936153, 36.660381>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.954304, 32.046753, 36.252602> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770710, 31.780647, 36.017056>,  <36.660553, 31.620985, 35.875729>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770710, 31.780647, 36.017056>,  <36.954304, 32.046753, 36.252602>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.770710, 31.780647, 36.017056> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163181, 0.588408, -0.791927,
		0.873332, -0.459571, -0.161509,
		-0.458980, -0.665260, -0.588869,
		36.633015, 31.581070, 35.840393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.359180, 32.009109, 35.588661>,  <36.954304, 32.046753, 36.252602>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.359180, 32.009109, 35.588661> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993603, 31.871082, 35.503212>,  <36.774258, 31.788267, 35.451942>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.993603, 31.871082, 35.503212>,  <37.359180, 32.009109, 35.588661>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.993603, 31.871082, 35.503212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069897, 0.652345, -0.754693,
		0.399772, -0.674817, -0.620327,
		-0.913946, -0.345064, -0.213621,
		36.719418, 31.767563, 35.439125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.396461, 31.776949, 34.899151>,  <37.359180, 32.009109, 35.588661>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.396461, 31.776949, 34.899151> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021252, 31.871613, 35.000420>,  <36.796124, 31.928410, 35.061180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021252, 31.871613, 35.000420>,  <37.396461, 31.776949, 34.899151>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.021252, 31.871613, 35.000420> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056853, 0.615546, -0.786048,
		-0.341863, -0.751729, -0.563945,
		-0.938029, 0.236658, 0.253170,
		36.739841, 31.942610, 35.076370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.600975, 27.441847, 41.981533> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.343414, 27.747549, 41.967083>,  <35.188877, 27.930969, 41.958412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.343414, 27.747549, 41.967083>,  <35.600975, 27.441847, 41.981533>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.343414, 27.747549, 41.967083> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205297, 0.127102, -0.970412,
		-0.737049, -0.632267, -0.238740,
		-0.643903, 0.764254, -0.036122,
		35.150242, 27.976826, 41.956245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244980, 27.306438, 41.393589>,  <35.600975, 27.441847, 41.981533>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244980, 27.306438, 41.393589> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192417, 27.697517, 41.459122>,  <35.160877, 27.932165, 41.498440>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.192417, 27.697517, 41.459122>,  <35.244980, 27.306438, 41.393589>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192417, 27.697517, 41.459122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299801, 0.196721, -0.933499,
		-0.944908, -0.073556, -0.318966,
		-0.131411, 0.977696, 0.163831,
		35.152992, 27.990826, 41.508270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.694328, 27.538778, 40.939949>,  <35.244980, 27.306438, 41.393589>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.694328, 27.538778, 40.939949> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954224, 27.832182, 41.019749>,  <35.110161, 28.008224, 41.067627>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.954224, 27.832182, 41.019749>,  <34.694328, 27.538778, 40.939949>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.954224, 27.832182, 41.019749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127863, 0.153246, -0.979881,
		-0.749323, 0.662179, 0.005782,
		0.649743, 0.733508, 0.199499,
		35.149147, 28.052235, 41.079597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551788, 27.944153, 40.333687>,  <34.694328, 27.538778, 40.939949>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551788, 27.944153, 40.333687> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890270, 28.093254, 40.486000>,  <35.093361, 28.182714, 40.577389>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.890270, 28.093254, 40.486000>,  <34.551788, 27.944153, 40.333687>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.890270, 28.093254, 40.486000> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229308, 0.390312, -0.891669,
		-0.480996, 0.841850, 0.244808,
		0.846203, 0.372753, 0.380782,
		35.144131, 28.205080, 40.600235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605663, 28.625408, 40.089520>,  <34.551788, 27.944153, 40.333687>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605663, 28.625408, 40.089520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.988075, 28.530684, 40.158718>,  <35.217522, 28.473848, 40.200237>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.988075, 28.530684, 40.158718>,  <34.605663, 28.625408, 40.089520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.988075, 28.530684, 40.158718> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223689, 0.207318, -0.952356,
		0.189661, 0.949179, 0.251174,
		0.956029, -0.236810, 0.173001,
		35.274883, 28.459641, 40.210617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002743, 29.265076, 40.046837>,  <34.605663, 28.625408, 40.089520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002743, 29.265076, 40.046837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.270485, 28.972322, 39.995762>,  <35.431129, 28.796671, 39.965118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.270485, 28.972322, 39.995762>,  <35.002743, 29.265076, 40.046837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270485, 28.972322, 39.995762> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335712, 0.451280, -0.826827,
		0.662764, 0.510579, 0.547771,
		0.669359, -0.731885, -0.127685,
		35.471294, 28.752756, 39.957455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.561939, 29.676903, 39.985737>,  <35.002743, 29.265076, 40.046837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.561939, 29.676903, 39.985737> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596722, 29.316519, 39.815697>,  <35.617592, 29.100288, 39.713673>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.596722, 29.316519, 39.815697>,  <35.561939, 29.676903, 39.985737>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.596722, 29.316519, 39.815697> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460496, 0.414743, -0.784813,
		0.883393, -0.127517, 0.450950,
		0.086952, -0.900959, -0.425102,
		35.622807, 29.046230, 39.688168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128639, 29.670435, 39.712471>,  <35.561939, 29.676903, 39.985737>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128639, 29.670435, 39.712471> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009995, 29.333971, 39.531597>,  <35.938808, 29.132093, 39.423073>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.009995, 29.333971, 39.531597>,  <36.128639, 29.670435, 39.712471>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.009995, 29.333971, 39.531597> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388754, 0.326133, -0.861689,
		0.872290, -0.431377, 0.230268,
		-0.296615, -0.841160, -0.452182,
		35.921009, 29.081623, 39.395943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.699127, 29.457520, 39.434303>,  <36.128639, 29.670435, 39.712471>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.699127, 29.457520, 39.434303> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395420, 29.287977, 39.236771>,  <36.213196, 29.186253, 39.118252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395420, 29.287977, 39.236771>,  <36.699127, 29.457520, 39.434303>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395420, 29.287977, 39.236771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394334, 0.304009, -0.867225,
		0.517706, -0.853185, -0.063682,
		-0.759264, -0.423856, -0.493827,
		36.167641, 29.160820, 39.088623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.453678, 29.306135, 39.596401>,  <36.699127, 29.457520, 39.434303>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.453678, 29.306135, 39.596401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715611, 29.598835, 39.672016>,  <37.872768, 29.774456, 39.717384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.715611, 29.598835, 39.672016>,  <37.453678, 29.306135, 39.596401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715611, 29.598835, 39.672016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045328, -0.211652, 0.976293,
		0.754415, -0.647876, -0.105427,
		0.654831, 0.731751, 0.189040,
		37.912060, 29.818361, 39.728729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.934765, 29.032562, 40.003750>,  <37.453678, 29.306135, 39.596401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.934765, 29.032562, 40.003750> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980846, 29.426500, 40.055611>,  <38.008495, 29.662863, 40.086727>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.980846, 29.426500, 40.055611>,  <37.934765, 29.032562, 40.003750>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.980846, 29.426500, 40.055611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141585, -0.145464, 0.979180,
		0.983199, -0.094453, -0.156198,
		0.115208, 0.984845, 0.129647,
		38.015408, 29.721954, 40.094505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.569359, 29.066254, 40.353565>,  <37.934765, 29.032562, 40.003750>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.569359, 29.066254, 40.353565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360420, 29.402676, 40.409821>,  <38.235058, 29.604528, 40.443573>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.360420, 29.402676, 40.409821>,  <38.569359, 29.066254, 40.353565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.360420, 29.402676, 40.409821> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113520, -0.094877, 0.988995,
		0.845141, 0.532568, -0.045917,
		-0.522350, 0.841053, 0.140642,
		38.203716, 29.654991, 40.452015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919891, 29.429914, 40.836407>,  <38.569359, 29.066254, 40.353565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919891, 29.429914, 40.836407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530266, 29.518757, 40.853703>,  <38.296490, 29.572062, 40.864079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530266, 29.518757, 40.853703>,  <38.919891, 29.429914, 40.836407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530266, 29.518757, 40.853703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016699, -0.120001, 0.992633,
		0.225658, 0.967610, 0.113180,
		-0.974064, 0.222106, 0.043237,
		38.238049, 29.585388, 40.866673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.996326, 29.785734, 41.436211>,  <38.919891, 29.429914, 40.836407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.996326, 29.785734, 41.436211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.606003, 29.730883, 41.368103>,  <38.371807, 29.697971, 41.327240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.606003, 29.730883, 41.368103>,  <38.996326, 29.785734, 41.436211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.606003, 29.730883, 41.368103> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175908, 0.030045, 0.983948,
		-0.129812, 0.990098, -0.053441,
		-0.975810, -0.137129, -0.170266,
		38.313259, 29.689743, 41.317024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.667149, 30.288038, 41.868782>,  <38.996326, 29.785734, 41.436211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.667149, 30.288038, 41.868782> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383022, 30.022743, 41.774490>,  <38.212547, 29.863565, 41.717915>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.383022, 30.022743, 41.774490>,  <38.667149, 30.288038, 41.868782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383022, 30.022743, 41.774490> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223481, -0.105069, 0.969029,
		-0.667465, 0.740997, -0.073588,
		-0.710315, -0.663238, -0.235728,
		38.169930, 29.823772, 41.703773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055531, 30.478603, 42.145027>,  <38.667149, 30.288038, 41.868782>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055531, 30.478603, 42.145027> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003532, 30.085447, 42.092831>,  <37.972336, 29.849554, 42.061512>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.003532, 30.085447, 42.092831>,  <38.055531, 30.478603, 42.145027>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.003532, 30.085447, 42.092831> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191707, -0.104214, 0.975904,
		-0.972805, 0.151877, -0.174880,
		-0.129992, -0.982890, -0.130495,
		37.964535, 29.790581, 42.053680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.470802, 30.255703, 42.592316>,  <38.055531, 30.478603, 42.145027>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.470802, 30.255703, 42.592316> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651028, 29.913155, 42.491425>,  <37.759163, 29.707624, 42.430889>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.651028, 29.913155, 42.491425>,  <37.470802, 30.255703, 42.592316>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651028, 29.913155, 42.491425> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242689, -0.389383, 0.888529,
		-0.859125, -0.339125, -0.383274,
		0.450562, -0.856373, -0.252227,
		37.786198, 29.656242, 42.415756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933800, 29.811331, 42.790676>,  <37.470802, 30.255703, 42.592316>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933800, 29.811331, 42.790676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282784, 29.617607, 42.764576>,  <37.492176, 29.501373, 42.748917>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.282784, 29.617607, 42.764576>,  <36.933800, 29.811331, 42.790676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.282784, 29.617607, 42.764576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161826, -0.412312, 0.896555,
		-0.461117, -0.771648, -0.438100,
		0.872458, -0.484313, -0.065251,
		37.544521, 29.472315, 42.745003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.834637, 29.047674, 43.034130>,  <36.933800, 29.811331, 42.790676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.834637, 29.047674, 43.034130> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209915, 29.180592, 43.072853>,  <37.435081, 29.260342, 43.096088>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.209915, 29.180592, 43.072853>,  <36.834637, 29.047674, 43.034130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.209915, 29.180592, 43.072853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003271, -0.271181, 0.962523,
		0.346093, -0.903350, -0.253334,
		0.938195, 0.332293, 0.096809,
		37.491375, 29.280279, 43.101894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.081585, 28.517572, 43.430435>,  <36.834637, 29.047674, 43.034130>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.081585, 28.517572, 43.430435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356316, 28.806263, 43.464787>,  <37.521156, 28.979477, 43.485397>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.356316, 28.806263, 43.464787>,  <37.081585, 28.517572, 43.430435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356316, 28.806263, 43.464787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124496, -0.233235, 0.964418,
		0.716076, -0.651700, -0.250045,
		0.686831, 0.721726, 0.085880,
		37.562366, 29.022781, 43.490551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.745472, 28.247423, 43.769630>,  <37.081585, 28.517572, 43.430435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.745472, 28.247423, 43.769630> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763641, 28.641214, 43.837440>,  <37.774544, 28.877489, 43.878128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.763641, 28.641214, 43.837440>,  <37.745472, 28.247423, 43.769630>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.763641, 28.641214, 43.837440> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133766, -0.174169, 0.975588,
		0.989972, -0.021633, -0.139601,
		0.045419, 0.984478, 0.169529,
		37.777267, 28.936558, 43.888298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209362, 28.377934, 44.296337>,  <37.745472, 28.247423, 43.769630>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209362, 28.377934, 44.296337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043762, 28.741976, 44.303379>,  <37.944401, 28.960402, 44.307606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.043762, 28.741976, 44.303379>,  <38.209362, 28.377934, 44.296337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.043762, 28.741976, 44.303379> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153512, 0.050738, 0.986843,
		0.897238, 0.411258, -0.160718,
		-0.414002, 0.910106, 0.017609,
		37.919563, 29.015007, 44.308662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654663, 28.832664, 44.653496>,  <38.209362, 28.377934, 44.296337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654663, 28.832664, 44.653496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300098, 29.014830, 44.686646>,  <38.087360, 29.124128, 44.706535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.300098, 29.014830, 44.686646>,  <38.654663, 28.832664, 44.653496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.300098, 29.014830, 44.686646> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122815, 0.058762, 0.990688,
		0.446304, 0.888338, -0.108019,
		-0.886414, 0.455415, 0.082876,
		38.034176, 29.151455, 44.711510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<31.234451, 34.540333, 44.346264> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.588263, 34.373592, 44.430019>,  <31.800550, 34.273548, 44.480274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.588263, 34.373592, 44.430019>,  <31.234451, 34.540333, 44.346264>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.588263, 34.373592, 44.430019> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392870, 0.423662, -0.816189,
		0.251516, 0.804206, 0.538509,
		0.884530, -0.416849, 0.209391,
		31.853621, 34.248539, 44.492836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.721102, 34.898430, 43.985687>,  <31.234451, 34.540333, 44.346264>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.721102, 34.898430, 43.985687> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955425, 34.579468, 44.043610>,  <32.096020, 34.388088, 44.078362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.955425, 34.579468, 44.043610>,  <31.721102, 34.898430, 43.985687>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.955425, 34.579468, 44.043610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441556, 0.164201, -0.882081,
		0.679602, 0.580669, 0.448291,
		0.585807, -0.797409, 0.144807,
		32.131168, 34.340244, 44.087051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.369476, 35.125355, 43.804153>,  <31.721102, 34.898430, 43.985687>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.369476, 35.125355, 43.804153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.372910, 34.725422, 43.810543>,  <32.374969, 34.485462, 43.814377>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.372910, 34.725422, 43.810543>,  <32.369476, 35.125355, 43.804153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372910, 34.725422, 43.810543> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457683, -0.010281, -0.889056,
		0.889074, 0.014940, 0.457520,
		0.008579, -0.999835, 0.015978,
		32.375484, 34.425472, 43.815338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.949070, 34.921947, 43.566364>,  <32.369476, 35.125355, 43.804153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.949070, 34.921947, 43.566364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740520, 34.593464, 43.473595>,  <32.615391, 34.396374, 43.417931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.740520, 34.593464, 43.473595>,  <32.949070, 34.921947, 43.566364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.740520, 34.593464, 43.473595> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436118, -0.022819, -0.899600,
		0.733464, -0.570176, 0.370040,
		-0.521375, -0.821206, -0.231927,
		32.584106, 34.347103, 43.404015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393791, 34.343079, 43.306004>,  <32.949070, 34.921947, 43.566364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393791, 34.343079, 43.306004> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038269, 34.227581, 43.163651>,  <32.824955, 34.158283, 43.078239>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.038269, 34.227581, 43.163651>,  <33.393791, 34.343079, 43.306004>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.038269, 34.227581, 43.163651> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434899, -0.286534, -0.853675,
		0.144518, -0.913525, 0.380246,
		-0.888807, -0.288740, -0.355882,
		32.771626, 34.140961, 43.056885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.575191, 33.691223, 42.942020>,  <33.393791, 34.343079, 43.306004>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.575191, 33.691223, 42.942020> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217117, 33.812038, 42.810921>,  <33.002274, 33.884529, 42.732262>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.217117, 33.812038, 42.810921>,  <33.575191, 33.691223, 42.942020>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217117, 33.812038, 42.810921> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202489, -0.379475, -0.902772,
		-0.397055, -0.874508, 0.278537,
		-0.895179, 0.302049, -0.327751,
		32.948563, 33.902649, 42.712597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.460629, 33.187592, 42.379677>,  <33.575191, 33.691223, 42.942020>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.460629, 33.187592, 42.379677> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173805, 33.462425, 42.332779>,  <33.001713, 33.627323, 42.304642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.173805, 33.462425, 42.332779>,  <33.460629, 33.187592, 42.379677>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173805, 33.462425, 42.332779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134711, -0.028422, -0.990477,
		-0.683871, -0.726024, -0.072177,
		-0.717059, 0.687082, -0.117240,
		32.958687, 33.668549, 42.297607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.028538, 32.942226, 41.868191>,  <33.460629, 33.187592, 42.379677>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.028538, 32.942226, 41.868191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960491, 33.336288, 41.877453>,  <32.919662, 33.572723, 41.883011>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.960491, 33.336288, 41.877453>,  <33.028538, 32.942226, 41.868191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960491, 33.336288, 41.877453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311997, 0.076133, -0.947028,
		-0.934729, -0.153885, -0.320316,
		-0.170120, 0.985151, 0.023152,
		32.909454, 33.631832, 41.884399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.562286, 33.110233, 41.448006>,  <33.028538, 32.942226, 41.868191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.562286, 33.110233, 41.448006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779301, 33.445057, 41.476261>,  <32.909508, 33.645950, 41.493214>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.779301, 33.445057, 41.476261>,  <32.562286, 33.110233, 41.448006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.779301, 33.445057, 41.476261> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212381, -0.055318, -0.975620,
		-0.812742, 0.544312, -0.207788,
		0.542536, 0.837057, 0.070642,
		32.942062, 33.696175, 41.497456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.440525, 33.562744, 40.888607>,  <32.562286, 33.110233, 41.448006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.440525, 33.562744, 40.888607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797077, 33.712269, 40.991131>,  <33.011009, 33.801983, 41.052647>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.797077, 33.712269, 40.991131>,  <32.440525, 33.562744, 40.888607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.797077, 33.712269, 40.991131> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247875, 0.071383, -0.966159,
		-0.379461, 0.924752, -0.029029,
		0.891385, 0.373815, 0.256311,
		33.064491, 33.824413, 41.068024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583286, 33.966267, 40.257153>,  <32.440525, 33.562744, 40.888607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583286, 33.966267, 40.257153> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901287, 34.010418, 40.495747>,  <33.092087, 34.036907, 40.638901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.901287, 34.010418, 40.495747>,  <32.583286, 33.966267, 40.257153>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901287, 34.010418, 40.495747> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564840, 0.223869, -0.794254,
		-0.221202, 0.968349, 0.115629,
		0.795000, 0.110379, 0.596482,
		33.139786, 34.043533, 40.674690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.895069, 34.589100, 40.072609>,  <32.583286, 33.966267, 40.257153>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.895069, 34.589100, 40.072609> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219189, 34.407280, 40.220554>,  <33.413662, 34.298187, 40.309322>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.219189, 34.407280, 40.220554>,  <32.895069, 34.589100, 40.072609>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.219189, 34.407280, 40.220554> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512255, 0.242876, -0.823776,
		0.284616, 0.856970, 0.429647,
		0.810302, -0.454548, 0.369860,
		33.462280, 34.270916, 40.331512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536739, 35.095016, 40.137817>,  <32.895069, 34.589100, 40.072609>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536739, 35.095016, 40.137817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.604527, 34.707298, 40.066547>,  <33.645199, 34.474667, 40.023785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.604527, 34.707298, 40.066547>,  <33.536739, 35.095016, 40.137817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.604527, 34.707298, 40.066547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451321, 0.237044, -0.860302,
		0.876122, 0.065381, 0.477636,
		0.169468, -0.969296, -0.178172,
		33.655369, 34.416508, 40.013096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.256439, 35.024574, 39.910831>,  <33.536739, 35.095016, 40.137817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.256439, 35.024574, 39.910831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091866, 34.675930, 39.804237>,  <33.993122, 34.466743, 39.740280>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.091866, 34.675930, 39.804237>,  <34.256439, 35.024574, 39.910831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091866, 34.675930, 39.804237> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379113, 0.102230, -0.919686,
		0.828852, -0.479420, 0.288378,
		-0.411435, -0.871611, -0.266488,
		33.968433, 34.414448, 39.724293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.913486, 34.985695, 40.330978>,  <34.256439, 35.024574, 39.910831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.913486, 34.985695, 40.330978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264015, 35.098011, 40.487549>,  <35.474331, 35.165401, 40.581493>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.264015, 35.098011, 40.487549>,  <34.913486, 34.985695, 40.330978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.264015, 35.098011, 40.487549> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373780, -0.116259, 0.920202,
		0.303896, -0.952700, 0.003075,
		0.876320, 0.280795, 0.391431,
		35.526913, 35.182251, 40.604977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939484, 34.514526, 40.852287>,  <34.913486, 34.985695, 40.330978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939484, 34.514526, 40.852287> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192924, 34.812099, 40.937252>,  <35.344990, 34.990643, 40.988232>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.192924, 34.812099, 40.937252>,  <34.939484, 34.514526, 40.852287>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.192924, 34.812099, 40.937252> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214489, -0.094888, 0.972106,
		0.743336, -0.661485, 0.099445,
		0.633597, 0.743932, 0.212415,
		35.383003, 35.035278, 41.000977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.441826, 34.270947, 41.344269>,  <34.939484, 34.514526, 40.852287>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.441826, 34.270947, 41.344269> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436256, 34.669056, 41.382702>,  <35.432915, 34.907921, 41.405762>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.436256, 34.669056, 41.382702>,  <35.441826, 34.270947, 41.344269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.436256, 34.669056, 41.382702> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208471, -0.096866, 0.973220,
		0.977929, -0.006481, 0.208835,
		-0.013922, 0.995276, 0.096079,
		35.432079, 34.967640, 41.411526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950790, 34.384914, 42.015007>,  <35.441826, 34.270947, 41.344269>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950790, 34.384914, 42.015007> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729130, 34.711567, 41.950474>,  <35.596134, 34.907558, 41.911755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.729130, 34.711567, 41.950474>,  <35.950790, 34.384914, 42.015007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729130, 34.711567, 41.950474> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083140, 0.138545, 0.986860,
		0.828256, 0.560279, -0.008879,
		-0.554147, 0.816635, -0.161332,
		35.562885, 34.956558, 41.902073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.333183, 34.859138, 42.359047>,  <35.950790, 34.384914, 42.015007>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.333183, 34.859138, 42.359047> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955887, 34.987339, 42.324253>,  <35.729507, 35.064259, 42.303379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.955887, 34.987339, 42.324253>,  <36.333183, 34.859138, 42.359047>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.955887, 34.987339, 42.324253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032293, 0.172158, 0.984540,
		0.330521, 0.931472, -0.152038,
		-0.943246, 0.320502, -0.086982,
		35.672913, 35.083488, 42.298157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.348534, 35.268383, 42.842979>,  <36.333183, 34.859138, 42.359047>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.348534, 35.268383, 42.842979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957207, 35.236492, 42.766529>,  <35.722408, 35.217358, 42.720657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.957207, 35.236492, 42.766529>,  <36.348534, 35.268383, 42.842979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957207, 35.236492, 42.766529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196303, 0.063006, 0.978517,
		-0.065970, 0.994824, -0.077290,
		-0.978322, -0.079725, -0.191130,
		35.663712, 35.212574, 42.709190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.062363, 35.850632, 43.162281>,  <36.348534, 35.268383, 42.842979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.062363, 35.850632, 43.162281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775738, 35.576111, 43.112450>,  <35.603764, 35.411396, 43.082550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.775738, 35.576111, 43.112450>,  <36.062363, 35.850632, 43.162281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.775738, 35.576111, 43.112450> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026729, -0.151453, 0.988103,
		-0.697009, 0.711369, 0.090182,
		-0.716564, -0.686306, -0.124578,
		35.560768, 35.370220, 43.075077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.458656, 36.103710, 43.618664>,  <36.062363, 35.850632, 43.162281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.458656, 36.103710, 43.618664> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.409809, 35.712765, 43.549564>,  <35.380501, 35.478195, 43.508106>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.409809, 35.712765, 43.549564>,  <35.458656, 36.103710, 43.618664>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.409809, 35.712765, 43.549564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143033, -0.154904, 0.977521,
		-0.982155, 0.144080, -0.120879,
		-0.122117, -0.977367, -0.172748,
		35.373173, 35.419556, 43.497742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.949833, 35.972881, 44.144650>,  <35.458656, 36.103710, 43.618664>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.949833, 35.972881, 44.144650> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087002, 35.614197, 44.032707>,  <35.169304, 35.398987, 43.965542>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087002, 35.614197, 44.032707>,  <34.949833, 35.972881, 44.144650>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087002, 35.614197, 44.032707> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122100, -0.337939, 0.933214,
		-0.931394, -0.285850, -0.225375,
		0.342923, -0.896709, -0.279853,
		35.189880, 35.345184, 43.948753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449650, 35.478191, 44.405777>,  <34.949833, 35.972881, 44.144650>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449650, 35.478191, 44.405777> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791512, 35.280994, 44.340641>,  <34.996628, 35.162674, 44.301559>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.791512, 35.280994, 44.340641>,  <34.449650, 35.478191, 44.405777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.791512, 35.280994, 44.340641> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077034, -0.430576, 0.899261,
		-0.513448, -0.756014, -0.405973,
		0.854656, -0.492997, -0.162839,
		35.047909, 35.133095, 44.291790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.314426, 34.772400, 44.664089>,  <34.449650, 35.478191, 44.405777>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.314426, 34.772400, 44.664089> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709450, 34.826279, 44.631634>,  <34.946465, 34.858604, 44.612160>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.709450, 34.826279, 44.631634>,  <34.314426, 34.772400, 44.664089>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.709450, 34.826279, 44.631634> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140097, -0.519317, 0.843020,
		0.071415, -0.843900, -0.531726,
		0.987559, 0.134698, -0.081141,
		35.005718, 34.866688, 44.607292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.725010, 34.055370, 44.790550>,  <34.314426, 34.772400, 44.664089>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.725010, 34.055370, 44.790550> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953518, 34.370144, 44.883839>,  <35.090622, 34.559010, 44.939812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.953518, 34.370144, 44.883839>,  <34.725010, 34.055370, 44.790550>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953518, 34.370144, 44.883839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164211, -0.387991, 0.906917,
		0.804171, -0.479792, -0.350869,
		0.571265, 0.786932, 0.233224,
		35.124897, 34.606224, 44.953804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.389263, 33.795372, 45.084442>,  <34.725010, 34.055370, 44.790550>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.389263, 33.795372, 45.084442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335930, 34.171268, 45.210373>,  <35.303928, 34.396805, 45.285931>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.335930, 34.171268, 45.210373>,  <35.389263, 33.795372, 45.084442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.335930, 34.171268, 45.210373> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213405, -0.282991, 0.935080,
		0.967823, 0.191863, -0.162813,
		-0.133332, 0.939737, 0.314830,
		35.295929, 34.453190, 45.304821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.964024, 33.971107, 45.537148>,  <35.389263, 33.795372, 45.084442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.964024, 33.971107, 45.537148> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636982, 34.179817, 45.634537>,  <35.440758, 34.305042, 45.692970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.636982, 34.179817, 45.634537>,  <35.964024, 33.971107, 45.537148>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636982, 34.179817, 45.634537> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040915, -0.369143, 0.928472,
		0.574328, 0.769082, 0.280464,
		-0.817602, 0.521772, 0.243476,
		35.391701, 34.336349, 45.707581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636944, 34.065258, 45.817886>,  <35.964024, 33.971107, 45.537148>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636944, 34.065258, 45.817886> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934048, 33.797802, 45.831898>,  <37.112312, 33.637329, 45.840305>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.934048, 33.797802, 45.831898>,  <36.636944, 34.065258, 45.817886>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.934048, 33.797802, 45.831898> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442218, 0.450614, -0.775493,
		0.502741, 0.591497, 0.630383,
		0.742762, -0.668639, 0.035028,
		37.156876, 33.597210, 45.842407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.234909, 34.470512, 45.668304>,  <36.636944, 34.065258, 45.817886>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.234909, 34.470512, 45.668304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.356842, 34.097961, 45.588696>,  <37.430000, 33.874432, 45.540932>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.356842, 34.097961, 45.588696>,  <37.234909, 34.470512, 45.668304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.356842, 34.097961, 45.588696> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429416, 0.320928, -0.844161,
		0.850105, 0.171865, 0.497779,
		0.304833, -0.931379, -0.199021,
		37.448292, 33.818546, 45.528988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027790, 34.366852, 45.674660>,  <37.234909, 34.470512, 45.668304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027790, 34.366852, 45.674660> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839272, 34.108406, 45.434521>,  <37.726162, 33.953339, 45.290436>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.839272, 34.108406, 45.434521>,  <38.027790, 34.366852, 45.674660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.839272, 34.108406, 45.434521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536429, 0.330322, -0.776615,
		0.700091, -0.688058, 0.190917,
		-0.471292, -0.646114, -0.600350,
		37.697884, 33.914574, 45.254417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.549004, 34.133930, 45.197556>,  <38.027790, 34.366852, 45.674660>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.549004, 34.133930, 45.197556> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224464, 34.024887, 44.990711>,  <38.029739, 33.959461, 44.866604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.224464, 34.024887, 44.990711>,  <38.549004, 34.133930, 45.197556>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224464, 34.024887, 44.990711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553744, -0.074971, -0.829305,
		0.187307, -0.959200, 0.211783,
		-0.811347, -0.272608, -0.517109,
		37.981060, 33.943104, 44.835579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.851124, 33.633183, 44.789520>,  <38.549004, 34.133930, 45.197556>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.851124, 33.633183, 44.789520> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.508709, 33.726196, 44.604858>,  <38.303261, 33.782005, 44.494061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.508709, 33.726196, 44.604858>,  <38.851124, 33.633183, 44.789520>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.508709, 33.726196, 44.604858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492270, 0.094257, -0.865324,
		-0.157708, -0.968009, -0.195160,
		-0.856036, 0.232540, -0.461657,
		38.251900, 33.795959, 44.466362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.964554, 33.414474, 44.113083>,  <38.851124, 33.633183, 44.789520>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.964554, 33.414474, 44.113083> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640549, 33.639442, 44.046684>,  <38.446144, 33.774426, 44.006844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.640549, 33.639442, 44.046684>,  <38.964554, 33.414474, 44.113083>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.640549, 33.639442, 44.046684> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350299, 0.237066, -0.906140,
		-0.470282, -0.792136, -0.389043,
		-0.810015, 0.562423, -0.165997,
		38.397545, 33.808170, 43.996883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.615215, 33.180248, 43.510551>,  <38.964554, 33.414474, 44.113083>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.615215, 33.180248, 43.510551> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521774, 33.567207, 43.549706>,  <38.465710, 33.799381, 43.573196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.521774, 33.567207, 43.549706>,  <38.615215, 33.180248, 43.510551>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.521774, 33.567207, 43.549706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339109, 0.175406, -0.924250,
		-0.911283, -0.182708, -0.369026,
		-0.233598, 0.967394, 0.097886,
		38.451694, 33.857426, 43.579071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293606, 33.407555, 42.862999>,  <38.615215, 33.180248, 43.510551>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293606, 33.407555, 42.862999> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438965, 33.739471, 43.032417>,  <38.526180, 33.938622, 43.134068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.438965, 33.739471, 43.032417>,  <38.293606, 33.407555, 42.862999>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438965, 33.739471, 43.032417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346605, 0.301572, -0.888211,
		-0.864760, 0.469573, -0.178021,
		0.363394, 0.829792, 0.423544,
		38.547981, 33.988411, 43.159481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108742, 33.980602, 42.406902>,  <38.293606, 33.407555, 42.862999>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108742, 33.980602, 42.406902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.431843, 34.062443, 42.628052>,  <38.625702, 34.111549, 42.760742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.431843, 34.062443, 42.628052>,  <38.108742, 33.980602, 42.406902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.431843, 34.062443, 42.628052> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421962, 0.454266, -0.784596,
		-0.411685, 0.867052, 0.280599,
		0.807752, 0.204604, 0.552878,
		38.674168, 34.123825, 42.793915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315315, 34.636662, 42.159969>,  <38.108742, 33.980602, 42.406902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315315, 34.636662, 42.159969> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635113, 34.462147, 42.325119>,  <38.826992, 34.357437, 42.424210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.635113, 34.462147, 42.325119>,  <38.315315, 34.636662, 42.159969>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.635113, 34.462147, 42.325119> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577051, 0.366993, -0.729608,
		0.166796, 0.821566, 0.545168,
		0.799494, -0.436285, 0.412873,
		38.874962, 34.331261, 42.448982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822990, 35.090717, 42.012890>,  <38.315315, 34.636662, 42.159969>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822990, 35.090717, 42.012890> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024525, 34.761028, 42.116283>,  <39.145447, 34.563217, 42.178318>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.024525, 34.761028, 42.116283>,  <38.822990, 35.090717, 42.012890>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024525, 34.761028, 42.116283> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670251, 0.184262, -0.718896,
		0.544898, 0.535455, 0.645271,
		0.503835, -0.824218, 0.258485,
		39.175674, 34.513763, 42.193829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.584412, 35.247925, 41.874252>,  <38.822990, 35.090717, 42.012890>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.584412, 35.247925, 41.874252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.543812, 34.850540, 41.853348>,  <39.519451, 34.612110, 41.840805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.543812, 34.850540, 41.853348>,  <39.584412, 35.247925, 41.874252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543812, 34.850540, 41.853348> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725562, -0.037984, -0.687108,
		0.680630, -0.107665, 0.724673,
		-0.101504, -0.993461, -0.052265,
		39.513359, 34.552502, 41.837669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.217438, 35.072884, 41.769199>,  <39.584412, 35.247925, 41.874252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.217438, 35.072884, 41.769199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.994095, 34.761158, 41.655426>,  <39.860088, 34.574123, 41.587162>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.994095, 34.761158, 41.655426>,  <40.217438, 35.072884, 41.769199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994095, 34.761158, 41.655426> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570312, -0.111593, -0.813813,
		0.602475, -0.616617, 0.506762,
		-0.558362, -0.779314, -0.284432,
		39.826588, 34.527363, 41.570095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.707111, 34.624058, 41.470192>,  <40.217438, 35.072884, 41.769199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.707111, 34.624058, 41.470192> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359203, 34.484135, 41.330975>,  <40.150459, 34.400181, 41.247444>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.359203, 34.484135, 41.330975>,  <40.707111, 34.624058, 41.470192>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359203, 34.484135, 41.330975> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436256, -0.215467, -0.873645,
		0.230618, -0.911705, 0.340013,
		-0.869768, -0.349811, -0.348046,
		40.098274, 34.379192, 41.226562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<30.988735, 40.732277, 32.856422> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813002, 40.854416, 32.518486>,  <30.707561, 40.927700, 32.315723>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.813002, 40.854416, 32.518486>,  <30.988735, 40.732277, 32.856422>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.813002, 40.854416, 32.518486> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749022, -0.643711, 0.156853,
		-0.495937, 0.701712, 0.511514,
		-0.439332, 0.305346, -0.844838,
		30.681202, 40.946018, 32.265034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.394590, 40.829388, 33.076897>,  <30.988735, 40.732277, 32.856422>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.394590, 40.829388, 33.076897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373945, 40.768208, 32.682144>,  <30.361559, 40.731499, 32.445293>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.373945, 40.768208, 32.682144>,  <30.394590, 40.829388, 33.076897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.373945, 40.768208, 32.682144> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506129, -0.847884, 0.157878,
		-0.860912, 0.507640, -0.033653,
		-0.051612, -0.152951, -0.986885,
		30.358461, 40.722321, 32.386078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.640776, 40.692062, 32.988304>,  <30.394590, 40.829388, 33.076897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.640776, 40.692062, 32.988304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803848, 40.577324, 32.641544>,  <29.901691, 40.508480, 32.433487>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.803848, 40.577324, 32.641544>,  <29.640776, 40.692062, 32.988304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803848, 40.577324, 32.641544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594616, -0.803894, -0.013633,
		-0.692986, 0.521031, -0.498295,
		0.407680, -0.286846, -0.866900,
		29.926151, 40.491268, 32.381474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.137028, 40.541206, 32.583511>,  <29.640776, 40.692062, 32.988304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.137028, 40.541206, 32.583511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440472, 40.333370, 32.426266>,  <29.622538, 40.208668, 32.331917>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.440472, 40.333370, 32.426266>,  <29.137028, 40.541206, 32.583511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.440472, 40.333370, 32.426266> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499390, -0.851215, 0.161378,
		-0.418476, 0.073895, -0.905217,
		0.758609, -0.519589, -0.393115,
		29.668055, 40.177494, 32.308331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.897177, 40.162838, 31.952385>,  <29.137028, 40.541206, 32.583511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.897177, 40.162838, 31.952385> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210176, 39.973267, 32.113922>,  <29.397976, 39.859524, 32.210846>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.210176, 39.973267, 32.113922>,  <28.897177, 40.162838, 31.952385>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.210176, 39.973267, 32.113922> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557626, -0.821965, 0.115869,
		0.277031, -0.315861, -0.907461,
		0.782501, -0.473925, 0.403842,
		29.444927, 39.831089, 32.235073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.742825, 39.452835, 31.865625>,  <28.897177, 40.162838, 31.952385>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.742825, 39.452835, 31.865625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051048, 39.436550, 32.120052>,  <29.235983, 39.426777, 32.272709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.051048, 39.436550, 32.120052>,  <28.742825, 39.452835, 31.865625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.051048, 39.436550, 32.120052> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507853, -0.642238, 0.574122,
		0.385133, -0.765423, -0.515558,
		0.770557, -0.040715, 0.636070,
		29.282215, 39.424335, 32.310875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974159, 38.705395, 31.826006>,  <28.742825, 39.452835, 31.865625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974159, 38.705395, 31.826006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099245, 38.875904, 32.165535>,  <29.174297, 38.978210, 32.369251>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.099245, 38.875904, 32.165535>,  <28.974159, 38.705395, 31.826006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.099245, 38.875904, 32.165535> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421770, -0.738392, 0.526201,
		0.851069, -0.522559, -0.051117,
		0.312716, 0.426274, 0.848823,
		29.193060, 39.003788, 32.420181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.356113, 38.275074, 32.139881>,  <28.974159, 38.705395, 31.826006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.356113, 38.275074, 32.139881> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228609, 38.510658, 32.436939>,  <29.152107, 38.652008, 32.615173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.228609, 38.510658, 32.436939>,  <29.356113, 38.275074, 32.139881>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.228609, 38.510658, 32.436939> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401722, -0.793608, 0.456953,
		0.858494, -0.152678, 0.489569,
		-0.318759, 0.588962, 0.742642,
		29.132982, 38.687347, 32.659733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.613964, 38.016224, 32.809490>,  <29.356113, 38.275074, 32.139881>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.613964, 38.016224, 32.809490> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313196, 38.265213, 32.896343>,  <29.132736, 38.414608, 32.948456>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.313196, 38.265213, 32.896343>,  <29.613964, 38.016224, 32.809490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.313196, 38.265213, 32.896343> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395877, -0.689697, 0.606300,
		0.527163, 0.369928, 0.765018,
		-0.751918, 0.622471, 0.217137,
		29.087620, 38.451954, 32.961483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.650829, 37.949196, 33.521347>,  <29.613964, 38.016224, 32.809490>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.650829, 37.949196, 33.521347> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295605, 38.105400, 33.424316>,  <29.082470, 38.199123, 33.366096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.295605, 38.105400, 33.424316>,  <29.650829, 37.949196, 33.521347>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.295605, 38.105400, 33.424316> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454631, -0.667711, 0.589468,
		0.068218, 0.633770, 0.770507,
		-0.888064, 0.390509, -0.242581,
		29.029186, 38.222553, 33.351543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.364073, 38.172737, 34.178539>,  <29.650829, 37.949196, 33.521347>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.364073, 38.172737, 34.178539> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104448, 38.091862, 33.885189>,  <28.948673, 38.043335, 33.709179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.104448, 38.091862, 33.885189>,  <29.364073, 38.172737, 34.178539>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.104448, 38.091862, 33.885189> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526300, -0.576746, 0.624798,
		-0.549298, 0.791507, 0.267933,
		-0.649061, -0.202187, -0.733376,
		28.909731, 38.031204, 33.665176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.792896, 38.331043, 34.546902>,  <29.364073, 38.172737, 34.178539>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.792896, 38.331043, 34.546902> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697266, 38.075417, 34.254482>,  <28.639887, 37.922039, 34.079029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.697266, 38.075417, 34.254482>,  <28.792896, 38.331043, 34.546902>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.697266, 38.075417, 34.254482> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535005, -0.541597, 0.648416,
		-0.810317, 0.546135, -0.212423,
		-0.239075, -0.639069, -0.731050,
		28.625544, 37.883698, 34.035168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.129511, 38.028141, 34.813274>,  <28.792896, 38.331043, 34.546902>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.129511, 38.028141, 34.813274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259882, 37.774090, 34.533165>,  <28.338104, 37.621658, 34.365097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.259882, 37.774090, 34.533165>,  <28.129511, 38.028141, 34.813274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.259882, 37.774090, 34.533165> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442027, -0.757148, 0.480976,
		-0.835693, 0.152779, -0.527518,
		0.325926, -0.635126, -0.700277,
		28.357660, 37.583553, 34.323082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.518353, 37.563564, 34.648548>,  <28.129511, 38.028141, 34.813274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.518353, 37.563564, 34.648548> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859690, 37.385445, 34.540092>,  <28.064491, 37.278572, 34.475021>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.859690, 37.385445, 34.540092>,  <27.518353, 37.563564, 34.648548>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.859690, 37.385445, 34.540092> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428779, -0.895285, 0.120889,
		-0.296576, 0.013098, -0.954920,
		0.853342, -0.445302, -0.271136,
		28.115692, 37.251854, 34.458752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.357250, 37.006432, 34.048630>,  <27.518353, 37.563564, 34.648548>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.357250, 37.006432, 34.048630> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683199, 36.913132, 34.260887>,  <27.878767, 36.857151, 34.388241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.683199, 36.913132, 34.260887>,  <27.357250, 37.006432, 34.048630>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683199, 36.913132, 34.260887> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405863, -0.883193, 0.235042,
		0.413838, -0.406898, -0.814354,
		0.814870, -0.233247, 0.530644,
		27.927660, 36.843159, 34.420082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.347713, 36.200912, 34.117661>,  <27.357250, 37.006432, 34.048630>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.347713, 36.200912, 34.117661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678570, 36.290844, 34.323689>,  <27.877083, 36.344803, 34.447304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.678570, 36.290844, 34.323689>,  <27.347713, 36.200912, 34.117661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.678570, 36.290844, 34.323689> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010589, -0.922565, 0.385697,
		0.561898, -0.313571, -0.765469,
		0.827138, 0.224828, 0.515067,
		27.926712, 36.358292, 34.478210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.858410, 35.637928, 34.187763>,  <27.347713, 36.200912, 34.117661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.858410, 35.637928, 34.187763> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984844, 35.841648, 34.507938>,  <28.060705, 35.963882, 34.700043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.984844, 35.841648, 34.507938>,  <27.858410, 35.637928, 34.187763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.984844, 35.841648, 34.507938> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029724, -0.848594, 0.528208,
		0.948265, -0.143167, -0.283367,
		0.316086, 0.509304, 0.800437,
		28.079670, 35.994438, 34.748070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.428064, 35.289593, 34.469852>,  <27.858410, 35.637928, 34.187763>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.428064, 35.289593, 34.469852> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337021, 35.536377, 34.771194>,  <28.282394, 35.684448, 34.952000>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.337021, 35.536377, 34.771194>,  <28.428064, 35.289593, 34.469852>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.337021, 35.536377, 34.771194> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159244, -0.739665, 0.653864,
		0.960643, 0.268794, 0.070108,
		-0.227611, 0.616965, 0.753357,
		28.268738, 35.721466, 34.997200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.967325, 35.221146, 34.921722>,  <28.428064, 35.289593, 34.469852>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.967325, 35.221146, 34.921722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640636, 35.331200, 35.124607>,  <28.444624, 35.397232, 35.246338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.640636, 35.331200, 35.124607>,  <28.967325, 35.221146, 34.921722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.640636, 35.331200, 35.124607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192816, -0.698349, 0.689297,
		0.543862, 0.660763, 0.517306,
		-0.816723, 0.275138, 0.507212,
		28.395620, 35.413742, 35.276772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.721729, 35.381859, 34.911907>,  <28.967325, 35.221146, 34.921722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.721729, 35.381859, 34.911907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.079739, 35.237057, 34.807690>,  <30.294544, 35.150173, 34.745159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.079739, 35.237057, 34.807690>,  <29.721729, 35.381859, 34.911907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.079739, 35.237057, 34.807690> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412661, 0.893769, 0.175751,
		0.169239, -0.264817, 0.949332,
		0.895025, -0.362008, -0.260540,
		30.348246, 35.128456, 34.729527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.153723, 35.685097, 35.336388>,  <29.721729, 35.381859, 34.911907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.153723, 35.685097, 35.336388> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387074, 35.580574, 35.028782>,  <30.527084, 35.517860, 34.844219>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.387074, 35.580574, 35.028782>,  <30.153723, 35.685097, 35.336388>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387074, 35.580574, 35.028782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539611, 0.832354, 0.126521,
		0.607034, -0.488780, 0.626582,
		0.583378, -0.261308, -0.769018,
		30.562086, 35.502182, 34.798077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.883381, 35.896942, 35.560326>,  <30.153723, 35.685097, 35.336388>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.883381, 35.896942, 35.560326> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910795, 35.868973, 35.162247>,  <30.927244, 35.852192, 34.923401>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.910795, 35.868973, 35.162247>,  <30.883381, 35.896942, 35.560326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910795, 35.868973, 35.162247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621656, 0.783195, -0.012214,
		0.780286, -0.617832, 0.097144,
		0.068536, -0.069920, -0.995195,
		30.931356, 35.847996, 34.863689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595854, 35.937908, 35.317726>,  <30.883381, 35.896942, 35.560326>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595854, 35.937908, 35.317726> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397625, 36.030323, 34.982815>,  <31.278688, 36.085770, 34.781868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.397625, 36.030323, 34.982815>,  <31.595854, 35.937908, 35.317726>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.397625, 36.030323, 34.982815> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584933, 0.801378, -0.125085,
		0.642075, -0.551739, -0.532281,
		-0.495573, 0.231035, -0.837276,
		31.248953, 36.099632, 34.731632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.125950, 36.072765, 34.713730>,  <31.595854, 35.937908, 35.317726>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.125950, 36.072765, 34.713730> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.787403, 36.271118, 34.636009>,  <31.584274, 36.390129, 34.589375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.787403, 36.271118, 34.636009>,  <32.125950, 36.072765, 34.713730>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.787403, 36.271118, 34.636009> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531985, 0.804562, -0.263953,
		0.025440, -0.326770, -0.944762,
		-0.846371, 0.495884, -0.194305,
		31.533491, 36.419884, 34.577717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.242249, 36.464241, 34.146233>,  <32.125950, 36.072765, 34.713730>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.242249, 36.464241, 34.146233> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.924643, 36.645176, 34.308674>,  <31.734077, 36.753738, 34.406139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.924643, 36.645176, 34.308674>,  <32.242249, 36.464241, 34.146233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.924643, 36.645176, 34.308674> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415581, 0.891480, -0.180433,
		-0.443654, 0.025504, -0.895835,
		-0.794018, 0.452341, 0.406107,
		31.686438, 36.780880, 34.430508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.935188, 36.885090, 33.685600>,  <32.242249, 36.464241, 34.146233>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.935188, 36.885090, 33.685600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.797302, 37.058876, 34.018444>,  <31.714571, 37.163147, 34.218151>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.797302, 37.058876, 34.018444>,  <31.935188, 36.885090, 33.685600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.797302, 37.058876, 34.018444> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178419, 0.900611, -0.396316,
		-0.921595, 0.011848, -0.387973,
		-0.344717, 0.434465, 0.832112,
		31.693888, 37.189217, 34.268078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.647995, 37.504448, 33.431011>,  <31.935188, 36.885090, 33.685600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.647995, 37.504448, 33.431011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659494, 37.569557, 33.825508>,  <31.666395, 37.608624, 34.062206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.659494, 37.569557, 33.825508>,  <31.647995, 37.504448, 33.431011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.659494, 37.569557, 33.825508> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210342, 0.963576, -0.165160,
		-0.977205, 0.212197, -0.006535,
		0.028750, 0.162769, 0.986245,
		31.668119, 37.618389, 34.121380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248970, 38.028400, 33.537285>,  <31.647995, 37.504448, 33.431011>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248970, 38.028400, 33.537285> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475100, 38.027721, 33.867233>,  <31.610777, 38.027313, 34.065201>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475100, 38.027721, 33.867233>,  <31.248970, 38.028400, 33.537285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475100, 38.027721, 33.867233> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254483, 0.951577, -0.172450,
		-0.784632, 0.307404, 0.538382,
		0.565324, -0.001700, 0.824867,
		31.644697, 38.027210, 34.114693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.112217, 38.612427, 33.867790>,  <31.248970, 38.028400, 33.537285>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.112217, 38.612427, 33.867790> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475803, 38.521912, 34.007835>,  <31.693954, 38.467602, 34.091862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.475803, 38.521912, 34.007835>,  <31.112217, 38.612427, 33.867790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.475803, 38.521912, 34.007835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298054, 0.939955, -0.166278,
		-0.291459, 0.255492, 0.921833,
		0.908964, -0.226293, 0.350109,
		31.748493, 38.454025, 34.112869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.306154, 39.290859, 34.102619>,  <31.112217, 38.612427, 33.867790>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.306154, 39.290859, 34.102619> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649010, 39.084957, 34.109909>,  <31.854723, 38.961414, 34.114285>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.649010, 39.084957, 34.109909>,  <31.306154, 39.290859, 34.102619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.649010, 39.084957, 34.109909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509413, 0.841941, -0.177860,
		0.076208, 0.161737, 0.983887,
		0.857141, -0.514759, 0.018229,
		31.906153, 38.930531, 34.115379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.704767, 39.470638, 34.703316>,  <31.306154, 39.290859, 34.102619>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.704767, 39.470638, 34.703316> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954672, 39.339409, 34.419895>,  <32.104614, 39.260674, 34.249844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.954672, 39.339409, 34.419895>,  <31.704767, 39.470638, 34.703316>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954672, 39.339409, 34.419895> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417639, 0.907137, -0.051769,
		0.659736, -0.263575, 0.703759,
		0.624761, -0.328071, -0.708550,
		32.142101, 39.240986, 34.207329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.393314, 39.777760, 34.854580>,  <31.704767, 39.470638, 34.703316>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.393314, 39.777760, 34.854580> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.429428, 39.665909, 34.472237>,  <32.451096, 39.598797, 34.242832>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.429428, 39.665909, 34.472237>,  <32.393314, 39.777760, 34.854580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.429428, 39.665909, 34.472237> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436659, 0.873716, -0.214355,
		0.895085, -0.398029, 0.200986,
		0.090285, -0.279629, -0.955854,
		32.456512, 39.582020, 34.185482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024925, 40.010551, 34.667095>,  <32.393314, 39.777760, 34.854580>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024925, 40.010551, 34.667095> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864666, 39.950718, 34.305519>,  <32.768509, 39.914818, 34.088573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.864666, 39.950718, 34.305519>,  <33.024925, 40.010551, 34.667095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.864666, 39.950718, 34.305519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335405, 0.894157, -0.296628,
		0.852633, -0.422029, -0.308072,
		-0.400650, -0.149586, -0.903938,
		32.744473, 39.905842, 34.034336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549927, 40.098309, 34.299961>,  <33.024925, 40.010551, 34.667095>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549927, 40.098309, 34.299961> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215660, 40.179783, 34.095932>,  <33.015102, 40.228668, 33.973515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.215660, 40.179783, 34.095932>,  <33.549927, 40.098309, 34.299961>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.215660, 40.179783, 34.095932> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470525, 0.744557, -0.473542,
		0.283323, -0.635724, -0.718041,
		-0.835664, 0.203690, -0.510074,
		32.964962, 40.240891, 33.942909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.736954, 40.285641, 33.576694>,  <33.549927, 40.098309, 34.299961>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.736954, 40.285641, 33.576694> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367424, 40.433369, 33.616985>,  <33.145706, 40.522007, 33.641159>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.367424, 40.433369, 33.616985>,  <33.736954, 40.285641, 33.576694>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.367424, 40.433369, 33.616985> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335914, 0.908279, -0.249382,
		-0.183589, -0.196550, -0.963153,
		-0.923827, 0.369320, 0.100726,
		33.090275, 40.544167, 33.647202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.678535, 40.735378, 33.133202>,  <33.736954, 40.285641, 33.576694>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.678535, 40.735378, 33.133202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.343246, 40.843990, 33.322372>,  <33.142075, 40.909157, 33.435875>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.343246, 40.843990, 33.322372>,  <33.678535, 40.735378, 33.133202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.343246, 40.843990, 33.322372> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091410, 0.924912, -0.369029,
		-0.537615, -0.266098, -0.800101,
		-0.838221, 0.271532, 0.472922,
		33.091782, 40.925449, 33.464249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.294334, 41.276337, 32.738850>,  <33.678535, 40.735378, 33.133202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.294334, 41.276337, 32.738850> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.168991, 41.330688, 33.114796>,  <33.093784, 41.363300, 33.340363>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.168991, 41.330688, 33.114796>,  <33.294334, 41.276337, 32.738850>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.168991, 41.330688, 33.114796> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038029, 0.990712, -0.130554,
		-0.948874, -0.005168, -0.315612,
		-0.313356, 0.135882, 0.939864,
		33.074986, 41.371452, 33.396755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.791428, 41.815632, 32.717384>,  <33.294334, 41.276337, 32.738850>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.791428, 41.815632, 32.717384> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.847488, 41.798443, 33.113064>,  <32.881126, 41.788128, 33.350471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.847488, 41.798443, 33.113064>,  <32.791428, 41.815632, 32.717384>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847488, 41.798443, 33.113064> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201241, 0.976969, 0.070955,
		-0.969463, -0.209011, 0.128280,
		0.140156, -0.042974, 0.989197,
		32.889534, 41.785549, 33.409824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267303, 42.275078, 32.995602>,  <32.791428, 41.815632, 32.717384>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267303, 42.275078, 32.995602> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552868, 42.234207, 33.272697>,  <32.724205, 42.209682, 33.438957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.552868, 42.234207, 33.272697>,  <32.267303, 42.275078, 32.995602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552868, 42.234207, 33.272697> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037227, 0.982359, 0.183261,
		-0.699248, -0.156620, 0.697511,
		0.713909, -0.102178, 0.692744,
		32.767040, 42.203552, 33.480522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.094437, 42.578518, 33.713352>,  <32.267303, 42.275078, 32.995602>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.094437, 42.578518, 33.713352> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.492565, 42.607800, 33.688141>,  <32.731441, 42.625370, 33.673016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.492565, 42.607800, 33.688141>,  <32.094437, 42.578518, 33.713352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.492565, 42.607800, 33.688141> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047583, 0.939367, 0.339596,
		0.084067, -0.335009, 0.938457,
		0.995323, 0.073204, -0.063029,
		32.791161, 42.629761, 33.669231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.195419, 43.041561, 34.151470>,  <32.094437, 42.578518, 33.713352>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.195419, 43.041561, 34.151470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.539139, 43.031494, 33.947128>,  <32.745369, 43.025455, 33.824524>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.539139, 43.031494, 33.947128>,  <32.195419, 43.041561, 34.151470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.539139, 43.031494, 33.947128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126973, 0.978019, 0.165401,
		0.495464, -0.206994, 0.843605,
		0.859298, -0.025164, -0.510855,
		32.796928, 43.023945, 33.793873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.630486, 43.334656, 34.617306>,  <32.195419, 43.041561, 34.151470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.630486, 43.334656, 34.617306> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777222, 43.383942, 34.248470>,  <32.865265, 43.413513, 34.027168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.777222, 43.383942, 34.248470>,  <32.630486, 43.334656, 34.617306>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.777222, 43.383942, 34.248470> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185157, 0.961688, 0.202171,
		0.911672, -0.244895, 0.329970,
		0.366839, 0.123217, -0.922088,
		32.887272, 43.420906, 33.971844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<38.673004, 29.778959, 45.083134> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297607, 29.641916, 45.100395>,  <38.072369, 29.559690, 45.110752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.297607, 29.641916, 45.100395>,  <38.673004, 29.778959, 45.083134>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297607, 29.641916, 45.100395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032098, 0.210973, 0.976965,
		-0.343817, 0.915484, -0.208993,
		-0.938488, -0.342606, 0.043151,
		38.016060, 29.539135, 45.113342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.257408, 30.247753, 45.508995>,  <38.673004, 29.778959, 45.083134>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.257408, 30.247753, 45.508995> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040554, 29.911640, 45.507568>,  <37.910442, 29.709972, 45.506714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.040554, 29.911640, 45.507568>,  <38.257408, 30.247753, 45.508995>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040554, 29.911640, 45.507568> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123420, 0.075431, 0.989483,
		-0.831177, 0.536876, -0.144602,
		-0.542137, -0.840282, -0.003565,
		37.877914, 29.659555, 45.506500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718533, 30.355803, 46.015076>,  <38.257408, 30.247753, 45.508995>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718533, 30.355803, 46.015076> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733379, 29.959393, 45.963703>,  <37.742287, 29.721546, 45.932880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.733379, 29.959393, 45.963703>,  <37.718533, 30.355803, 46.015076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.733379, 29.959393, 45.963703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203417, -0.133324, 0.969972,
		-0.978388, -0.009878, -0.206539,
		0.037118, -0.991023, -0.128434,
		37.744514, 29.662086, 45.925175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.195641, 30.139738, 46.307034>,  <37.718533, 30.355803, 46.015076>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.195641, 30.139738, 46.307034> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431339, 29.816616, 46.300850>,  <37.572758, 29.622744, 46.297138>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.431339, 29.816616, 46.300850>,  <37.195641, 30.139738, 46.307034>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.431339, 29.816616, 46.300850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150562, -0.128585, 0.980203,
		-0.793800, -0.575254, -0.197393,
		0.589247, -0.807805, -0.015459,
		37.608112, 29.574274, 46.296211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.756741, 29.697788, 46.731697>,  <37.195641, 30.139738, 46.307034>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.756741, 29.697788, 46.731697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111332, 29.512768, 46.737431>,  <37.324085, 29.401756, 46.740871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.111332, 29.512768, 46.737431>,  <36.756741, 29.697788, 46.731697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111332, 29.512768, 46.737431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108537, -0.177707, 0.978080,
		-0.449864, -0.868601, -0.207737,
		0.886477, -0.462550, 0.014331,
		37.377274, 29.374002, 46.741730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663586, 28.976599, 46.941216>,  <36.756741, 29.697788, 46.731697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.663586, 28.976599, 46.941216> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053837, 29.027481, 47.012737>,  <37.287987, 29.058010, 47.055649>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.053837, 29.027481, 47.012737>,  <36.663586, 28.976599, 46.941216>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.053837, 29.027481, 47.012737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121313, -0.366324, 0.922545,
		0.182856, -0.921751, -0.341963,
		0.975626, 0.127209, 0.178805,
		37.346523, 29.065643, 47.066380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.866379, 28.376841, 47.040607>,  <36.663586, 28.976599, 46.941216>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.866379, 28.376841, 47.040607> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119152, 28.607431, 47.247814>,  <37.270817, 28.745787, 47.372139>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.119152, 28.607431, 47.247814>,  <36.866379, 28.376841, 47.040607>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.119152, 28.607431, 47.247814> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307985, -0.426553, 0.850410,
		0.711203, -0.696940, -0.092005,
		0.631930, 0.576479, 0.518013,
		37.308731, 28.780375, 47.403217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080288, 28.029167, 47.621731>,  <36.866379, 28.376841, 47.040607>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080288, 28.029167, 47.621731> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180676, 28.397324, 47.741661>,  <37.240910, 28.618217, 47.813618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.180676, 28.397324, 47.741661>,  <37.080288, 28.029167, 47.621731>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180676, 28.397324, 47.741661> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335924, -0.207676, 0.918709,
		0.907838, -0.331285, 0.257062,
		0.250969, 0.920392, 0.299823,
		37.255966, 28.673441, 47.831608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346104, 27.872793, 48.255424>,  <37.080288, 28.029167, 47.621731>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346104, 27.872793, 48.255424> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272915, 28.265806, 48.268982>,  <37.229004, 28.501614, 48.277115>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.272915, 28.265806, 48.268982>,  <37.346104, 27.872793, 48.255424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.272915, 28.265806, 48.268982> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183004, -0.067912, 0.980764,
		0.965936, 0.173247, 0.192234,
		-0.182969, 0.982534, 0.033894,
		37.218025, 28.560566, 48.279152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.856613, 28.186432, 48.796532>,  <37.346104, 27.872793, 48.255424>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.856613, 28.186432, 48.796532> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527260, 28.409269, 48.753281>,  <37.329647, 28.542973, 48.727329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.527260, 28.409269, 48.753281>,  <37.856613, 28.186432, 48.796532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527260, 28.409269, 48.753281> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187587, -0.087365, 0.978355,
		0.535588, 0.825842, 0.176438,
		-0.823381, 0.557093, -0.108125,
		37.280247, 28.576397, 48.720844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764862, 28.649302, 49.338261>,  <37.856613, 28.186432, 48.796532>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764862, 28.649302, 49.338261> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387833, 28.649700, 49.204662>,  <37.161613, 28.649939, 49.124504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.387833, 28.649700, 49.204662>,  <37.764862, 28.649302, 49.338261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387833, 28.649700, 49.204662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333543, -0.054714, 0.941146,
		-0.017337, 0.998502, 0.051905,
		-0.942576, 0.000996, -0.333992,
		37.105061, 28.650000, 49.104465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466660, 28.898819, 49.864643>,  <37.764862, 28.649302, 49.338261>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466660, 28.898819, 49.864643> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147713, 28.768877, 49.661201>,  <36.956345, 28.690912, 49.539135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.147713, 28.768877, 49.661201>,  <37.466660, 28.898819, 49.864643>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.147713, 28.768877, 49.661201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438896, -0.266305, 0.858168,
		-0.414224, 0.907497, 0.069765,
		-0.797364, -0.324854, -0.508607,
		36.908504, 28.671421, 49.508621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817600, 29.111982, 50.172909>,  <37.466660, 28.898819, 49.864643>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817600, 29.111982, 50.172909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746155, 28.769054, 49.979786>,  <36.703285, 28.563297, 49.863911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.746155, 28.769054, 49.979786>,  <36.817600, 29.111982, 50.172909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.746155, 28.769054, 49.979786> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540767, -0.324404, 0.776101,
		-0.821990, 0.399711, -0.405666,
		-0.178616, -0.857318, -0.482807,
		36.692570, 28.511860, 49.834946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.112625, 29.163616, 49.931686>,  <36.817600, 29.111982, 50.172909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.112625, 29.163616, 49.931686> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266129, 28.801525, 50.004669>,  <36.358231, 28.584270, 50.048458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.266129, 28.801525, 50.004669>,  <36.112625, 29.163616, 49.931686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266129, 28.801525, 50.004669> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598746, -0.093496, 0.795463,
		-0.703017, -0.414512, -0.577881,
		0.383759, -0.905228, 0.182459,
		36.381256, 28.529957, 50.059406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.910278, 29.693245, 49.480118>,  <36.112625, 29.163616, 49.931686>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.910278, 29.693245, 49.480118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841850, 29.944651, 49.783619>,  <35.800793, 30.095493, 49.965721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.841850, 29.944651, 49.783619>,  <35.910278, 29.693245, 49.480118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.841850, 29.944651, 49.783619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036524, 0.765529, -0.642364,
		-0.984582, -0.137600, -0.108002,
		-0.171068, 0.628515, 0.758752,
		35.790531, 30.133205, 50.011246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.292404, 29.938461, 49.297615>,  <35.910278, 29.693245, 49.480118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.292404, 29.938461, 49.297615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485199, 30.181282, 49.550335>,  <35.600876, 30.326975, 49.701969>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.485199, 30.181282, 49.550335>,  <35.292404, 29.938461, 49.297615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485199, 30.181282, 49.550335> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125241, 0.761419, -0.636047,
		-0.867182, 0.227438, 0.443021,
		0.481986, 0.607053, 0.631804,
		35.629795, 30.363398, 49.739876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.974552, 30.688913, 49.384743>,  <35.292404, 29.938461, 49.297615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.974552, 30.688913, 49.384743> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354527, 30.734449, 49.501133>,  <35.582512, 30.761770, 49.570965>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.354527, 30.734449, 49.501133>,  <34.974552, 30.688913, 49.384743>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354527, 30.734449, 49.501133> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093058, 0.785918, -0.611287,
		-0.298269, 0.607760, 0.735977,
		0.949934, 0.113840, 0.290972,
		35.639507, 30.768600, 49.588425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.047485, 31.411615, 49.465546>,  <34.974552, 30.688913, 49.384743>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.047485, 31.411615, 49.465546> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433239, 31.305923, 49.460659>,  <35.664692, 31.242508, 49.457726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.433239, 31.305923, 49.460659>,  <35.047485, 31.411615, 49.465546>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433239, 31.305923, 49.460659> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194386, 0.739280, -0.644732,
		0.179392, 0.619393, 0.764311,
		0.964382, -0.264231, -0.012220,
		35.722553, 31.226654, 49.456993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.366337, 32.053593, 49.554020>,  <35.047485, 31.411615, 49.465546>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.366337, 32.053593, 49.554020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583092, 31.772888, 49.369026>,  <35.713146, 31.604465, 49.258030>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.583092, 31.772888, 49.369026>,  <35.366337, 32.053593, 49.554020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.583092, 31.772888, 49.369026> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267276, 0.665601, -0.696806,
		0.796820, 0.253980, 0.548245,
		0.541887, -0.701762, -0.462481,
		35.745659, 31.562359, 49.230282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.897041, 32.428379, 49.287998>,  <35.366337, 32.053593, 49.554020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.897041, 32.428379, 49.287998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934475, 32.090160, 49.077740>,  <35.956936, 31.887230, 48.951584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.934475, 32.090160, 49.077740>,  <35.897041, 32.428379, 49.287998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.934475, 32.090160, 49.077740> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.449393, 0.506992, -0.735530,
		0.888419, -0.167384, 0.427428,
		0.093587, -0.845542, -0.525643,
		35.962551, 31.836498, 48.920048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.556580, 32.379372, 49.150661>,  <35.897041, 32.428379, 49.287998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.556580, 32.379372, 49.150661> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381653, 32.166599, 48.860615>,  <36.276695, 32.038937, 48.686584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.381653, 32.166599, 48.860615>,  <36.556580, 32.379372, 49.150661>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381653, 32.166599, 48.860615> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416540, 0.594795, -0.687542,
		0.797023, -0.602718, -0.038546,
		-0.437321, -0.531930, -0.725121,
		36.250458, 32.007019, 48.643078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135124, 32.103737, 48.765915>,  <36.556580, 32.379372, 49.150661>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135124, 32.103737, 48.765915> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816246, 32.115383, 48.524708>,  <36.624920, 32.122372, 48.379986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.816246, 32.115383, 48.524708>,  <37.135124, 32.103737, 48.765915>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.816246, 32.115383, 48.524708> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567585, 0.376508, -0.732181,
		0.205721, -0.925956, -0.316678,
		-0.797199, 0.029117, -0.603014,
		36.577087, 32.124119, 48.343803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.445324, 31.941849, 48.061714>,  <37.135124, 32.103737, 48.765915>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.445324, 31.941849, 48.061714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080856, 32.073986, 47.963215>,  <36.862175, 32.153267, 47.904114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.080856, 32.073986, 47.963215>,  <37.445324, 31.941849, 48.061714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.080856, 32.073986, 47.963215> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356953, 0.334386, -0.872221,
		-0.205791, -0.882643, -0.422601,
		-0.911172, 0.330344, -0.246248,
		36.807503, 32.173088, 47.889339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.278774, 31.709969, 47.398090>,  <37.445324, 31.941849, 48.061714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.278774, 31.709969, 47.398090> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069492, 32.045174, 47.460045>,  <36.943924, 32.246296, 47.497219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.069492, 32.045174, 47.460045>,  <37.278774, 31.709969, 47.398090>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069492, 32.045174, 47.460045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164921, 0.277881, -0.946352,
		-0.836098, -0.469589, -0.283595,
		-0.523203, 0.838014, 0.154891,
		36.912533, 32.296577, 47.506512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.759480, 31.756720, 46.912048>,  <37.278774, 31.709969, 47.398090>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.759480, 31.756720, 46.912048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799812, 32.132587, 47.042805>,  <36.824013, 32.358109, 47.121258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.799812, 32.132587, 47.042805>,  <36.759480, 31.756720, 46.912048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.799812, 32.132587, 47.042805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236044, 0.296585, -0.925376,
		-0.966497, 0.170469, -0.191898,
		0.100834, 0.939669, 0.326886,
		36.830063, 32.414490, 47.140869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.829163, 32.113247, 46.289215>,  <36.759480, 31.756720, 46.912048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.829163, 32.113247, 46.289215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876411, 32.438950, 46.516560>,  <36.904758, 32.634369, 46.652966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.876411, 32.438950, 46.516560>,  <36.829163, 32.113247, 46.289215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876411, 32.438950, 46.516560> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186011, 0.544096, -0.818144,
		-0.975422, 0.202361, -0.087192,
		0.118120, 0.814254, 0.568364,
		36.911846, 32.683228, 46.687069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.412193, 32.667118, 46.087093>,  <36.829163, 32.113247, 46.289215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.412193, 32.667118, 46.087093> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744789, 32.802929, 46.262974>,  <36.944347, 32.884415, 46.368504>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.744789, 32.802929, 46.262974>,  <36.412193, 32.667118, 46.087093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.744789, 32.802929, 46.262974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181807, 0.581596, -0.792901,
		-0.524943, 0.739233, 0.421864,
		0.831493, 0.339531, 0.439702,
		36.994236, 32.904789, 46.394886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359844, 33.397297, 45.949043>,  <36.412193, 32.667118, 46.087093>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359844, 33.397297, 45.949043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733200, 33.295090, 46.049839>,  <36.957214, 33.233765, 46.110317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.733200, 33.295090, 46.049839>,  <36.359844, 33.397297, 45.949043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733200, 33.295090, 46.049839> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349128, 0.484040, -0.802381,
		0.083053, 0.836908, 0.541006,
		0.933387, -0.255520, 0.251987,
		37.013218, 33.218433, 46.125435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655113, 33.608898, 46.227997>,  <36.359844, 33.397297, 45.949043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655113, 33.608898, 46.227997> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450504, 33.952518, 46.220169>,  <35.327740, 34.158691, 46.215473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.450504, 33.952518, 46.220169>,  <35.655113, 33.608898, 46.227997>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.450504, 33.952518, 46.220169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415019, -0.227060, 0.881024,
		0.752398, 0.458784, 0.472667,
		-0.511523, 0.859047, -0.019565,
		35.297047, 34.210232, 46.214298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.732494, 33.982559, 46.843056>,  <35.655113, 33.608898, 46.227997>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.732494, 33.982559, 46.843056> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382450, 34.090252, 46.682209>,  <35.172424, 34.154869, 46.585701>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.382450, 34.090252, 46.682209>,  <35.732494, 33.982559, 46.843056>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.382450, 34.090252, 46.682209> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471342, -0.285928, 0.834315,
		0.109651, 0.919650, 0.377120,
		-0.875107, 0.269236, -0.402118,
		35.119919, 34.171024, 46.561573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.410656, 34.537277, 47.270493>,  <35.732494, 33.982559, 46.843056>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.410656, 34.537277, 47.270493> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108959, 34.379978, 47.060169>,  <34.927940, 34.285599, 46.933975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.108959, 34.379978, 47.060169>,  <35.410656, 34.537277, 47.270493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.108959, 34.379978, 47.060169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472920, -0.230155, 0.850515,
		-0.455482, 0.890159, -0.012384,
		-0.754243, -0.393251, -0.525805,
		34.882687, 34.262001, 46.902428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.827801, 35.003151, 47.389832>,  <35.410656, 34.537277, 47.270493>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.827801, 35.003151, 47.389832> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690929, 34.640751, 47.290173>,  <34.608807, 34.423309, 47.230377>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.690929, 34.640751, 47.290173>,  <34.827801, 35.003151, 47.389832>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.690929, 34.640751, 47.290173> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596506, 0.004584, 0.802595,
		-0.726010, 0.423250, -0.542004,
		-0.342183, -0.906001, -0.249143,
		34.588276, 34.368950, 47.215431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100033, 34.996174, 47.572983>,  <34.827801, 35.003151, 47.389832>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100033, 34.996174, 47.572983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189369, 34.610443, 47.516144>,  <34.242970, 34.379005, 47.482040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.189369, 34.610443, 47.516144>,  <34.100033, 34.996174, 47.572983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.189369, 34.610443, 47.516144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567933, -0.247217, 0.785070,
		-0.792195, -0.094632, -0.602887,
		0.223336, -0.964328, -0.142099,
		34.256371, 34.321144, 47.473515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.377266, 34.543835, 47.631470>,  <34.100033, 34.996174, 47.572983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.377266, 34.543835, 47.631470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713223, 34.339268, 47.704170>,  <33.914799, 34.216530, 47.747791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.713223, 34.339268, 47.704170>,  <33.377266, 34.543835, 47.631470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713223, 34.339268, 47.704170> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448044, -0.464317, 0.763981,
		-0.306319, -0.723096, -0.619113,
		0.839896, -0.511411, 0.181750,
		33.965191, 34.185844, 47.758694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.089920, 34.065353, 48.172466>,  <33.377266, 34.543835, 47.631470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.089920, 34.065353, 48.172466> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482212, 33.992397, 48.200470>,  <33.717587, 33.948624, 48.217270>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.482212, 33.992397, 48.200470>,  <33.089920, 34.065353, 48.172466>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.482212, 33.992397, 48.200470> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157017, -0.522675, 0.837948,
		-0.116239, -0.832794, -0.541242,
		0.980732, -0.182386, 0.070008,
		33.776432, 33.937683, 48.221474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933537, 33.632904, 47.558956>,  <33.089920, 34.065353, 48.172466>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933537, 33.632904, 47.558956> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599792, 33.470482, 47.409847>,  <32.399544, 33.373028, 47.320381>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.599792, 33.470482, 47.409847>,  <32.933537, 33.632904, 47.558956>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599792, 33.470482, 47.409847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097597, 0.556769, -0.824914,
		0.542503, -0.724661, -0.424920,
		-0.834366, -0.406047, -0.372774,
		32.349483, 33.348667, 47.298016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.141079, 33.491470, 46.859806>,  <32.933537, 33.632904, 47.558956>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.141079, 33.491470, 46.859806> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742035, 33.463840, 46.859383>,  <32.502609, 33.447262, 46.859131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.742035, 33.463840, 46.859383>,  <33.141079, 33.491470, 46.859806>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.742035, 33.463840, 46.859383> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031568, 0.469418, -0.882411,
		0.061445, -0.880270, -0.470477,
		-0.997611, -0.069072, -0.001055,
		32.442753, 33.443119, 46.859066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.856964, 33.177624, 46.187984>,  <33.141079, 33.491470, 46.859806>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.856964, 33.177624, 46.187984> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548031, 33.379234, 46.342625>,  <32.362671, 33.500202, 46.435410>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.548031, 33.379234, 46.342625>,  <32.856964, 33.177624, 46.187984>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.548031, 33.379234, 46.342625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239599, 0.332509, -0.912157,
		-0.588303, -0.797115, -0.136041,
		-0.772329, 0.504029, 0.386604,
		32.316334, 33.530441, 46.458607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288666, 32.855808, 45.892677>,  <32.856964, 33.177624, 46.187984>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288666, 32.855808, 45.892677> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200745, 33.232025, 45.996265>,  <32.147991, 33.457756, 46.058418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.200745, 33.232025, 45.996265>,  <32.288666, 32.855808, 45.892677>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200745, 33.232025, 45.996265> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183682, 0.220817, -0.957862,
		-0.958095, -0.258113, 0.124223,
		-0.219806, 0.940541, 0.258975,
		32.134804, 33.514187, 46.073959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.645254, 32.963501, 45.608559>,  <32.288666, 32.855808, 45.892677>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.645254, 32.963501, 45.608559> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788511, 33.333504, 45.659294>,  <31.874466, 33.555508, 45.689735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.788511, 33.333504, 45.659294>,  <31.645254, 32.963501, 45.608559>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.788511, 33.333504, 45.659294> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152830, 0.192094, -0.969403,
		-0.921074, 0.327801, 0.210167,
		0.358143, 0.925012, 0.126835,
		31.895954, 33.611008, 45.697346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.241697, 33.301105, 45.200470>,  <31.645254, 32.963501, 45.608559>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.241697, 33.301105, 45.200470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538555, 33.562569, 45.259724>,  <31.716671, 33.719448, 45.295277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.538555, 33.562569, 45.259724>,  <31.241697, 33.301105, 45.200470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.538555, 33.562569, 45.259724> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081174, 0.131733, -0.987956,
		-0.665304, 0.745233, 0.044705,
		0.742147, 0.653662, 0.148136,
		31.761200, 33.758667, 45.304165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.048056, 33.744816, 44.683197>,  <31.241697, 33.301105, 45.200470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.048056, 33.744816, 44.683197> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414860, 33.858723, 44.794910>,  <31.634943, 33.927067, 44.861938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.414860, 33.858723, 44.794910>,  <31.048056, 33.744816, 44.683197>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.414860, 33.858723, 44.794910> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155122, 0.390456, -0.907459,
		-0.367460, 0.875473, 0.313880,
		0.917012, 0.284765, 0.279282,
		31.689962, 33.944153, 44.878696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<33.916294, 28.176531, 48.762409> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288017, 28.296711, 48.848301>,  <34.511051, 28.368818, 48.899837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.288017, 28.296711, 48.848301>,  <33.916294, 28.176531, 48.762409>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.288017, 28.296711, 48.848301> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192139, 0.103195, -0.975927,
		-0.315377, 0.948199, 0.038172,
		0.929312, 0.300450, 0.214732,
		34.566811, 28.386847, 48.912720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.100269, 28.906786, 48.431450>,  <33.916294, 28.176531, 48.762409>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.100269, 28.906786, 48.431450> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.396492, 28.640303, 48.466637>,  <34.574226, 28.480412, 48.487751>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.396492, 28.640303, 48.466637>,  <34.100269, 28.906786, 48.431450>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396492, 28.640303, 48.466637> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136416, 0.020859, -0.990432,
		0.658001, 0.745473, 0.106329,
		0.740558, -0.666210, 0.087969,
		34.618660, 28.440439, 48.493027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646118, 29.188107, 47.962921>,  <34.100269, 28.906786, 48.431450>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646118, 29.188107, 47.962921> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.747253, 28.805216, 48.019192>,  <34.807934, 28.575481, 48.052952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.747253, 28.805216, 48.019192>,  <34.646118, 29.188107, 47.962921>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747253, 28.805216, 48.019192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238011, -0.079391, -0.968013,
		0.937777, 0.278230, 0.207758,
		0.252836, -0.957228, 0.140672,
		34.823105, 28.518047, 48.061394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256584, 29.025951, 47.577560>,  <34.646118, 29.188107, 47.962921>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256584, 29.025951, 47.577560> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123520, 28.652843, 47.633095>,  <35.043682, 28.428978, 47.666416>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.123520, 28.652843, 47.633095>,  <35.256584, 29.025951, 47.577560>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.123520, 28.652843, 47.633095> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097988, -0.180609, -0.978662,
		0.937940, -0.311962, 0.151482,
		-0.332664, -0.932770, 0.138832,
		35.023720, 28.373013, 47.674744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.700344, 28.709686, 47.197685>,  <35.256584, 29.025951, 47.577560>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.700344, 28.709686, 47.197685> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410160, 28.435167, 47.218456>,  <35.236050, 28.270456, 47.230919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.410160, 28.435167, 47.218456>,  <35.700344, 28.709686, 47.197685>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.410160, 28.435167, 47.218456> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061070, -0.010964, -0.998073,
		0.685546, -0.727237, -0.033959,
		-0.725463, -0.686299, 0.051929,
		35.192520, 28.229279, 47.234035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.853809, 28.255404, 46.787201>,  <35.700344, 28.709686, 47.197685>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.853809, 28.255404, 46.787201> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460609, 28.186354, 46.812248>,  <35.224689, 28.144924, 46.827278>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.460609, 28.186354, 46.812248>,  <35.853809, 28.255404, 46.787201>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.460609, 28.186354, 46.812248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042469, -0.118047, -0.992099,
		0.178652, -0.977888, 0.108709,
		-0.982995, -0.172624, 0.062619,
		35.165710, 28.134567, 46.831036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.755718, 27.774504, 46.304295>,  <35.853809, 28.255404, 46.787201>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.755718, 27.774504, 46.304295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383320, 27.910511, 46.357414>,  <35.159882, 27.992115, 46.389286>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.383320, 27.910511, 46.357414>,  <35.755718, 27.774504, 46.304295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383320, 27.910511, 46.357414> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149353, -0.022859, -0.988520,
		-0.333079, -0.940141, 0.072064,
		-0.930995, 0.340018, 0.132799,
		35.104023, 28.012516, 46.397255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.355022, 27.485291, 45.817097>,  <35.755718, 27.774504, 46.304295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.355022, 27.485291, 45.817097> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.120148, 27.787920, 45.932205>,  <34.979225, 27.969498, 46.001270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.120148, 27.787920, 45.932205>,  <35.355022, 27.485291, 45.817097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.120148, 27.787920, 45.932205> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248049, 0.170223, -0.953675,
		-0.770511, -0.631363, 0.087715,
		-0.587184, 0.756574, 0.287767,
		34.943993, 28.014893, 46.018536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612873, 27.340048, 45.506538>,  <35.355022, 27.485291, 45.817097>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612873, 27.340048, 45.506538> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699238, 27.726379, 45.563892>,  <34.751057, 27.958178, 45.598305>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.699238, 27.726379, 45.563892>,  <34.612873, 27.340048, 45.506538>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699238, 27.726379, 45.563892> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180689, 0.183834, -0.966207,
		-0.959548, 0.182711, 0.214207,
		0.215915, 0.965827, 0.143384,
		34.764011, 28.016127, 45.606907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.973484, 27.648672, 45.381939>,  <34.612873, 27.340048, 45.506538>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.973484, 27.648672, 45.381939> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.283024, 27.894585, 45.321007>,  <34.468746, 28.042131, 45.284447>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.283024, 27.894585, 45.321007>,  <33.973484, 27.648672, 45.381939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.283024, 27.894585, 45.321007> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223843, 0.040477, -0.973784,
		-0.592498, 0.787658, 0.168938,
		0.773848, 0.614781, -0.152329,
		34.515179, 28.079020, 45.275307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.716751, 28.049629, 44.794800>,  <33.973484, 27.648672, 45.381939>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.716751, 28.049629, 44.794800> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098503, 28.167448, 44.814369>,  <34.327557, 28.238138, 44.826111>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.098503, 28.167448, 44.814369>,  <33.716751, 28.049629, 44.794800>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.098503, 28.167448, 44.814369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057752, 0.342875, -0.937604,
		-0.292944, 0.892009, 0.344245,
		0.954384, 0.294546, 0.048928,
		34.384819, 28.255812, 44.829048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.663548, 28.687796, 44.551529>,  <33.716751, 28.049629, 44.794800>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.663548, 28.687796, 44.551529> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.045845, 28.585878, 44.492695>,  <34.275223, 28.524727, 44.457394>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.045845, 28.585878, 44.492695>,  <33.663548, 28.687796, 44.551529>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.045845, 28.585878, 44.492695> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070972, 0.285514, -0.955743,
		0.285514, 0.923884, 0.254795,
		0.955743, -0.254795, -0.147089,
		34.332569, 28.509439, 44.448566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.552467, 29.484497, 44.598255>,  <33.663548, 28.687796, 44.551529>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.552467, 29.484497, 44.598255> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.192108, 29.627077, 44.499203>,  <32.975891, 29.712626, 44.439774>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.192108, 29.627077, 44.499203>,  <33.552467, 29.484497, 44.598255>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.192108, 29.627077, 44.499203> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326774, -0.181557, 0.927500,
		0.285648, 0.916505, 0.280044,
		-0.900902, 0.356449, -0.247629,
		32.921837, 29.734013, 44.424915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.443340, 30.109423, 45.082088>,  <33.552467, 29.484497, 44.598255>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.443340, 30.109423, 45.082088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071266, 30.051231, 44.947273>,  <32.848022, 30.016315, 44.866386>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.071266, 30.051231, 44.947273>,  <33.443340, 30.109423, 45.082088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.071266, 30.051231, 44.947273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319355, -0.132050, 0.938390,
		-0.181022, 0.980509, 0.076371,
		-0.930185, -0.145479, -0.337034,
		32.792210, 30.007587, 44.846165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.954922, 30.598305, 45.470066>,  <33.443340, 30.109423, 45.082088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.954922, 30.598305, 45.470066> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.732578, 30.299908, 45.323364>,  <32.599171, 30.120869, 45.235344>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.732578, 30.299908, 45.323364>,  <32.954922, 30.598305, 45.470066>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.732578, 30.299908, 45.323364> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491695, -0.060685, 0.868650,
		-0.670263, 0.663184, -0.333068,
		-0.555863, -0.745992, -0.366759,
		32.565819, 30.076111, 45.213337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.354095, 30.660828, 45.822906>,  <32.954922, 30.598305, 45.470066>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.354095, 30.660828, 45.822906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.317341, 30.287281, 45.684662>,  <32.295288, 30.063152, 45.601715>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.317341, 30.287281, 45.684662>,  <32.354095, 30.660828, 45.822906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.317341, 30.287281, 45.684662> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557862, -0.239222, 0.794709,
		-0.824832, 0.265824, -0.498989,
		-0.091884, -0.933869, -0.345611,
		32.289776, 30.007120, 45.580978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.633698, 30.444647, 46.001961>,  <32.354095, 30.660828, 45.822906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.633698, 30.444647, 46.001961> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819468, 30.096842, 45.934715>,  <31.930929, 29.888159, 45.894367>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.819468, 30.096842, 45.934715>,  <31.633698, 30.444647, 46.001961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.819468, 30.096842, 45.934715> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390365, -0.371379, 0.842433,
		-0.794938, -0.325621, -0.511903,
		0.464424, -0.869511, -0.168112,
		31.958796, 29.835989, 45.884281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.185411, 29.972658, 46.153866>,  <31.633698, 30.444647, 46.001961>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.185411, 29.972658, 46.153866> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523720, 29.764687, 46.201767>,  <31.726706, 29.639904, 46.230507>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.523720, 29.764687, 46.201767>,  <31.185411, 29.972658, 46.153866>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.523720, 29.764687, 46.201767> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318168, -0.311323, 0.895459,
		-0.428297, -0.795455, -0.428734,
		0.845772, -0.519932, 0.119750,
		31.777452, 29.608707, 46.237694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954729, 29.275412, 46.411102>,  <31.185411, 29.972658, 46.153866>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954729, 29.275412, 46.411102> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344191, 29.311789, 46.494743>,  <31.577868, 29.333614, 46.544930>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.344191, 29.311789, 46.494743>,  <30.954729, 29.275412, 46.411102>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.344191, 29.311789, 46.494743> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175777, -0.284776, 0.942340,
		0.145247, -0.954271, -0.261288,
		0.973656, 0.090944, 0.209102,
		31.636288, 29.339071, 46.557472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.238314, 28.650019, 46.781731>,  <30.954729, 29.275412, 46.411102>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.238314, 28.650019, 46.781731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.496992, 28.935081, 46.890472>,  <31.652199, 29.106119, 46.955719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.496992, 28.935081, 46.890472>,  <31.238314, 28.650019, 46.781731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.496992, 28.935081, 46.890472> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160280, -0.221493, 0.961900,
		0.745719, -0.665628, -0.029014,
		0.646694, 0.712657, 0.271858,
		31.691000, 29.148878, 46.972031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.691038, 28.395323, 47.244331>,  <31.238314, 28.650019, 46.781731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.691038, 28.395323, 47.244331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748056, 28.785406, 47.312038>,  <31.782267, 29.019455, 47.352665>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.748056, 28.785406, 47.312038>,  <31.691038, 28.395323, 47.244331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.748056, 28.785406, 47.312038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058533, -0.162411, 0.984986,
		0.988056, -0.150313, 0.033931,
		0.142545, 0.975207, 0.169270,
		31.790819, 29.077969, 47.362820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.857283, 28.374664, 47.916042>,  <31.691038, 28.395323, 47.244331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.857283, 28.374664, 47.916042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836241, 28.772541, 47.880665>,  <31.823616, 29.011267, 47.859436>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.836241, 28.772541, 47.880665>,  <31.857283, 28.374664, 47.916042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.836241, 28.772541, 47.880665> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024490, 0.087257, 0.995885,
		0.998315, 0.054553, 0.019770,
		-0.052603, 0.994691, -0.088446,
		31.820459, 29.070948, 47.854130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.304478, 28.693308, 48.429234>,  <31.857283, 28.374664, 47.916042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.304478, 28.693308, 48.429234> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046581, 28.984716, 48.336655>,  <31.891844, 29.159561, 48.281105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.046581, 28.984716, 48.336655>,  <32.304478, 28.693308, 48.429234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046581, 28.984716, 48.336655> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069035, 0.246055, 0.966794,
		0.761279, 0.639308, -0.108348,
		-0.644739, 0.728520, -0.231451,
		31.853159, 29.203272, 48.267220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.508724, 29.290386, 48.887218>,  <32.304478, 28.693308, 48.429234>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.508724, 29.290386, 48.887218> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149712, 29.407431, 48.755272>,  <31.934303, 29.477657, 48.676105>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.149712, 29.407431, 48.755272>,  <32.508724, 29.290386, 48.887218>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.149712, 29.407431, 48.755272> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192737, 0.412501, 0.890335,
		0.396589, 0.862684, -0.313838,
		-0.897535, 0.292609, -0.329864,
		31.880451, 29.495213, 48.656311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.485817, 30.100231, 48.939419>,  <32.508724, 29.290386, 48.887218>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.485817, 30.100231, 48.939419> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125862, 29.926506, 48.955273>,  <31.909889, 29.822271, 48.964787>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.125862, 29.926506, 48.955273>,  <32.485817, 30.100231, 48.939419>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.125862, 29.926506, 48.955273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081092, 0.255930, 0.963288,
		-0.428513, 0.863639, -0.265528,
		-0.899889, -0.434314, 0.039635,
		31.855896, 29.796211, 48.967163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.994307, 30.585968, 49.142410>,  <32.485817, 30.100231, 48.939419>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.994307, 30.585968, 49.142410> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818859, 30.240812, 49.242840>,  <31.713591, 30.033720, 49.303097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.818859, 30.240812, 49.242840>,  <31.994307, 30.585968, 49.142410>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.818859, 30.240812, 49.242840> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054164, 0.304261, 0.951048,
		-0.897040, 0.403548, -0.180192,
		-0.438618, -0.862887, 0.251076,
		31.687273, 29.981947, 49.318161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.820044, 30.507427, 48.420975>,  <31.994307, 30.585968, 49.142410>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.820044, 30.507427, 48.420975> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.682579, 30.799862, 48.656742>,  <31.600100, 30.975323, 48.798203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.682579, 30.799862, 48.656742>,  <31.820044, 30.507427, 48.420975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.682579, 30.799862, 48.656742> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.341606, 0.681966, -0.646705,
		-0.874758, -0.020901, -0.484110,
		-0.343663, 0.731085, 0.589415,
		31.579479, 31.019188, 48.833565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511499, 31.003143, 47.960217>,  <31.820044, 30.507427, 48.420975>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511499, 31.003143, 47.960217> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607531, 31.174496, 48.308666>,  <31.665150, 31.277308, 48.517735>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.607531, 31.174496, 48.308666>,  <31.511499, 31.003143, 47.960217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.607531, 31.174496, 48.308666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227113, 0.847675, -0.479445,
		-0.943812, 0.312948, 0.106218,
		0.240080, 0.428382, 0.871120,
		31.679554, 31.303011, 48.570004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.260714, 31.544285, 47.924488>,  <31.511499, 31.003143, 47.960217>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.260714, 31.544285, 47.924488> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520084, 31.631123, 48.216354>,  <31.675707, 31.683226, 48.391476>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.520084, 31.631123, 48.216354>,  <31.260714, 31.544285, 47.924488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.520084, 31.631123, 48.216354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167828, 0.894129, -0.415170,
		-0.742546, 0.391667, 0.543344,
		0.648428, 0.217094, 0.729665,
		31.714613, 31.696251, 48.435253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986174, 32.185955, 48.201424>,  <31.260714, 31.544285, 47.924488>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986174, 32.185955, 48.201424> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.379175, 32.126427, 48.246204>,  <31.614977, 32.090710, 48.273071>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.379175, 32.126427, 48.246204>,  <30.986174, 32.185955, 48.201424>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.379175, 32.126427, 48.246204> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183549, 0.875519, -0.446964,
		-0.031497, 0.459693, 0.887519,
		0.982506, -0.148826, 0.111953,
		31.673927, 32.081779, 48.279789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.213182, 32.872047, 48.278992>,  <30.986174, 32.185955, 48.201424>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.213182, 32.872047, 48.278992> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.570324, 32.699963, 48.225735>,  <31.784609, 32.596710, 48.193783>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.570324, 32.699963, 48.225735>,  <31.213182, 32.872047, 48.278992>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.570324, 32.699963, 48.225735> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331441, 0.827897, -0.452475,
		0.304887, 0.359866, 0.881782,
		0.892855, -0.430213, -0.133140,
		31.838181, 32.570900, 48.185791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.776865, 33.337036, 48.525612>,  <31.213182, 32.872047, 48.278992>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.776865, 33.337036, 48.525612> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.922886, 33.087139, 48.249516>,  <32.010498, 32.937202, 48.083858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.922886, 33.087139, 48.249516>,  <31.776865, 33.337036, 48.525612>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.922886, 33.087139, 48.249516> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248820, 0.779912, -0.574305,
		0.897121, 0.037904, 0.440155,
		0.365050, -0.624741, -0.690244,
		32.032402, 32.899715, 48.042442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.416328, 33.574436, 48.226624>,  <31.776865, 33.337036, 48.525612>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.416328, 33.574436, 48.226624> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.312168, 33.310440, 47.944744>,  <32.249672, 33.152042, 47.775616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<32.312168, 33.310440, 47.944744>,  <32.416328, 33.574436, 48.226624>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<32.312168, 33.310440, 47.944744> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326127, 0.626855, -0.707598,
		0.908752, -0.414083, 0.052005,
		-0.260405, -0.659991, -0.704699,
		32.234047, 33.112442, 47.733334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.178085, 33.399857, 48.415874>,  <32.416328, 33.574436, 48.226624>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.178085, 33.399857, 48.415874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554218, 33.521179, 48.477547>,  <33.779900, 33.593975, 48.514549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.554218, 33.521179, 48.477547>,  <33.178085, 33.399857, 48.415874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.554218, 33.521179, 48.477547> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007543, -0.471621, 0.881769,
		0.340166, -0.827995, -0.445770,
		0.940335, 0.303310, 0.154184,
		33.836319, 33.612171, 48.523804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.599609, 32.782627, 48.644627>,  <33.178085, 33.399857, 48.415874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.599609, 32.782627, 48.644627> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818626, 33.086216, 48.785576>,  <33.950035, 33.268368, 48.870148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.818626, 33.086216, 48.785576>,  <33.599609, 32.782627, 48.644627>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818626, 33.086216, 48.785576> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119916, -0.487932, 0.864605,
		0.828144, -0.431149, -0.358174,
		0.547539, 0.758968, 0.352376,
		33.982887, 33.313908, 48.891289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.251499, 32.498081, 48.823990>,  <33.599609, 32.782627, 48.644627>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.251499, 32.498081, 48.823990> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218479, 32.840126, 49.028721>,  <34.198669, 33.045353, 49.151558>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.218479, 32.840126, 49.028721>,  <34.251499, 32.498081, 48.823990>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.218479, 32.840126, 49.028721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130381, -0.499896, 0.856215,
		0.988022, 0.137411, -0.070225,
		-0.082548, 0.855115, 0.511824,
		34.193714, 33.096661, 49.182266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761971, 32.456734, 49.319088>,  <34.251499, 32.498081, 48.823990>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761971, 32.456734, 49.319088> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547230, 32.753204, 49.480305>,  <34.418385, 32.931087, 49.577034>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.547230, 32.753204, 49.480305>,  <34.761971, 32.456734, 49.319088>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.547230, 32.753204, 49.480305> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161580, -0.378552, 0.911367,
		0.828056, 0.554397, 0.083469,
		-0.536857, 0.741176, 0.403041,
		34.386173, 32.975555, 49.601215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193077, 32.743454, 49.826527>,  <34.761971, 32.456734, 49.319088>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193077, 32.743454, 49.826527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.815788, 32.842293, 49.915318>,  <34.589417, 32.901596, 49.968590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.815788, 32.842293, 49.915318>,  <35.193077, 32.743454, 49.826527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.815788, 32.842293, 49.915318> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196799, -0.122618, 0.972746,
		0.267585, 0.961200, 0.067026,
		-0.943222, 0.247101, 0.221974,
		34.532822, 32.916424, 49.981911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.253403, 33.033047, 50.420277>,  <35.193077, 32.743454, 49.826527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.253403, 33.033047, 50.420277> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.857418, 32.984447, 50.391373>,  <34.619827, 32.955288, 50.374031>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.857418, 32.984447, 50.391373>,  <35.253403, 33.033047, 50.420277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857418, 32.984447, 50.391373> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023517, -0.362522, 0.931678,
		-0.139390, 0.924022, 0.356024,
		-0.989958, -0.121494, -0.072262,
		34.560432, 32.947998, 50.369694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.008198, 33.106606, 51.135742>,  <35.253403, 33.033047, 50.420277>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.008198, 33.106606, 51.135742> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722111, 32.907299, 50.939705>,  <34.550461, 32.787716, 50.822083>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.722111, 32.907299, 50.939705>,  <35.008198, 33.106606, 51.135742>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.722111, 32.907299, 50.939705> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241947, -0.481358, 0.842470,
		-0.655690, 0.721124, 0.223719,
		-0.715215, -0.498271, -0.490096,
		34.507545, 32.757816, 50.792675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356503, 33.205647, 51.555504>,  <35.008198, 33.106606, 51.135742>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356503, 33.205647, 51.555504> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313278, 32.877258, 51.331242>,  <34.287346, 32.680225, 51.196686>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.313278, 32.877258, 51.331242>,  <34.356503, 33.205647, 51.555504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.313278, 32.877258, 51.331242> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292571, -0.512722, 0.807167,
		-0.950119, 0.251252, -0.184788,
		-0.108058, -0.820968, -0.560656,
		34.280861, 32.630966, 51.163044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.630802, 32.864471, 51.740517>,  <34.356503, 33.205647, 51.555504>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.630802, 32.864471, 51.740517> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864521, 32.576366, 51.590950>,  <34.004753, 32.403503, 51.501209>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.864521, 32.576366, 51.590950>,  <33.630802, 32.864471, 51.740517>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.864521, 32.576366, 51.590950> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144818, -0.545892, 0.825245,
		-0.798514, -0.428039, -0.423271,
		0.584297, -0.720267, -0.373914,
		34.039810, 32.360287, 51.478775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<38.128944, 36.530243, 36.652668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333332, 36.190990, 36.708645>,  <38.455963, 35.987438, 36.742229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333332, 36.190990, 36.708645>,  <38.128944, 36.530243, 36.652668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333332, 36.190990, 36.708645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830587, -0.445198, 0.334551,
		-0.221441, -0.287178, -0.931929,
		0.510969, -0.848132, 0.139941,
		38.486622, 35.936550, 36.750626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.687420, 35.924679, 36.563786>,  <38.128944, 36.530243, 36.652668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.687420, 35.924679, 36.563786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973362, 35.810219, 36.819004>,  <38.144928, 35.741543, 36.972134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.973362, 35.810219, 36.819004>,  <37.687420, 35.924679, 36.563786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.973362, 35.810219, 36.819004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.694816, -0.393523, 0.601972,
		0.078829, -0.873645, -0.480136,
		0.714854, -0.286153, 0.638043,
		38.187817, 35.724373, 37.010418>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.570168, 35.185799, 36.733391>,  <37.687420, 35.924679, 36.563786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.570168, 35.185799, 36.733391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788956, 35.331722, 37.034786>,  <37.920227, 35.419277, 37.215622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.788956, 35.331722, 37.034786>,  <37.570168, 35.185799, 36.733391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.788956, 35.331722, 37.034786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643961, -0.391768, 0.657139,
		0.534922, -0.844649, 0.020639,
		0.546967, 0.364809, 0.753486,
		37.953045, 35.441166, 37.260834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566544, 34.687008, 37.186588>,  <37.570168, 35.185799, 36.733391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566544, 34.687008, 37.186588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674099, 34.999405, 37.412064>,  <37.738632, 35.186844, 37.547348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.674099, 34.999405, 37.412064>,  <37.566544, 34.687008, 37.186588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.674099, 34.999405, 37.412064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496809, -0.388922, 0.775836,
		0.825155, -0.488660, 0.283428,
		0.268888, 0.780994, 0.563691,
		37.754765, 35.233704, 37.581169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815475, 34.341740, 37.779423>,  <37.566544, 34.687008, 37.186588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815475, 34.341740, 37.779423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715302, 34.720776, 37.858768>,  <37.655197, 34.948196, 37.906376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.715302, 34.720776, 37.858768>,  <37.815475, 34.341740, 37.779423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.715302, 34.720776, 37.858768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598558, -0.312588, 0.737575,
		0.760928, 0.065981, 0.645473,
		-0.250433, 0.947595, 0.198364,
		37.640171, 35.005054, 37.918278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.954926, 34.507065, 38.489895>,  <37.815475, 34.341740, 37.779423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.954926, 34.507065, 38.489895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669895, 34.777523, 38.414997>,  <37.498875, 34.939796, 38.370060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.669895, 34.777523, 38.414997>,  <37.954926, 34.507065, 38.489895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669895, 34.777523, 38.414997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430149, -0.210199, 0.877946,
		0.554259, 0.706149, 0.440626,
		-0.712580, 0.676143, -0.187244,
		37.456120, 34.980366, 38.358826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.977829, 34.984711, 39.095516>,  <37.954926, 34.507065, 38.489895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.977829, 34.984711, 39.095516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624393, 35.026005, 38.912819>,  <37.412331, 35.050781, 38.803200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.624393, 35.026005, 38.912819>,  <37.977829, 34.984711, 39.095516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.624393, 35.026005, 38.912819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445649, 0.114083, 0.887909,
		0.143772, 0.988093, -0.054794,
		-0.883587, 0.103238, -0.456744,
		37.359318, 35.056976, 38.775795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.692451, 35.355831, 39.697464>,  <37.977829, 34.984711, 39.095516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.692451, 35.355831, 39.697464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422207, 35.275311, 39.413769>,  <37.260059, 35.226997, 39.243549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.422207, 35.275311, 39.413769>,  <37.692451, 35.355831, 39.697464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422207, 35.275311, 39.413769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732960, 0.079696, 0.675587,
		-0.079471, 0.976283, -0.201388,
		-0.675614, -0.201299, -0.709243,
		37.219524, 35.214920, 39.200996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.105175, 35.927536, 39.702259>,  <37.692451, 35.355831, 39.697464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.105175, 35.927536, 39.702259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957497, 35.589844, 39.546841>,  <36.868889, 35.387230, 39.453590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.957497, 35.589844, 39.546841>,  <37.105175, 35.927536, 39.702259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.957497, 35.589844, 39.546841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791727, 0.066767, 0.607215,
		-0.486688, 0.531803, -0.693052,
		-0.369192, -0.844232, -0.388548,
		36.846741, 35.336575, 39.430275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.411919, 36.135838, 39.647575>,  <37.105175, 35.927536, 39.702259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.411919, 36.135838, 39.647575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422546, 35.736160, 39.659622>,  <36.428925, 35.496353, 39.666851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.422546, 35.736160, 39.659622>,  <36.411919, 36.135838, 39.647575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.422546, 35.736160, 39.659622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705324, 0.002611, 0.708881,
		-0.708387, -0.040081, -0.704685,
		0.026573, -0.999193, 0.030120,
		36.430519, 35.436401, 39.668659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.728851, 36.005993, 39.767513>,  <36.411919, 36.135838, 39.647575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.728851, 36.005993, 39.767513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933315, 35.677994, 39.870522>,  <36.055992, 35.481194, 39.932327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.933315, 35.677994, 39.870522>,  <35.728851, 36.005993, 39.767513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933315, 35.677994, 39.870522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610301, -0.135312, 0.780528,
		-0.605188, -0.556138, -0.569613,
		0.511156, -0.820001, 0.257522,
		36.086662, 35.431995, 39.947777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.239822, 35.434280, 39.740124>,  <35.728851, 36.005993, 39.767513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.239822, 35.434280, 39.740124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538155, 35.324444, 39.982887>,  <35.717152, 35.258541, 40.128548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.538155, 35.324444, 39.982887>,  <35.239822, 35.434280, 39.740124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.538155, 35.324444, 39.982887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661733, -0.200773, 0.722357,
		-0.076501, -0.940367, -0.331448,
		0.745826, -0.274591, 0.606913,
		35.761902, 35.242065, 40.164959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.865616, 34.682426, 39.616283>,  <35.239822, 35.434280, 39.740124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.865616, 34.682426, 39.616283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509926, 34.538254, 39.503590>,  <34.296513, 34.451752, 39.435974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.509926, 34.538254, 39.503590>,  <34.865616, 34.682426, 39.616283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509926, 34.538254, 39.503590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297860, 0.011268, -0.954543,
		0.347221, -0.932718, 0.097338,
		-0.889223, -0.360430, -0.281732,
		34.243160, 34.430126, 39.419071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.080906, 34.243923, 39.198490>,  <34.865616, 34.682426, 39.616283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.080906, 34.243923, 39.198490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697601, 34.299610, 39.098606>,  <34.467617, 34.333023, 39.038677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.697601, 34.299610, 39.098606>,  <35.080906, 34.243923, 39.198490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.697601, 34.299610, 39.098606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238876, -0.090023, -0.966868,
		-0.157083, -0.986162, 0.053010,
		-0.958260, 0.139216, -0.249711,
		34.410122, 34.341373, 39.023693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.783108, 33.637951, 38.703495>,  <35.080906, 34.243923, 39.198490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.783108, 33.637951, 38.703495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517757, 33.934570, 38.663437>,  <34.358547, 34.112541, 38.639400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.517757, 33.934570, 38.663437>,  <34.783108, 33.637951, 38.703495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.517757, 33.934570, 38.663437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050073, -0.089547, -0.994723,
		-0.746607, -0.664892, 0.022271,
		-0.663378, 0.741552, -0.100150,
		34.318745, 34.157036, 38.633392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392738, 33.461102, 38.104900>,  <34.783108, 33.637951, 38.703495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392738, 33.461102, 38.104900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314922, 33.852375, 38.134079>,  <34.268234, 34.087139, 38.151585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.314922, 33.852375, 38.134079>,  <34.392738, 33.461102, 38.104900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.314922, 33.852375, 38.134079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090341, 0.056179, -0.994325,
		-0.976726, -0.200021, 0.077441,
		-0.194536, 0.978180, 0.072942,
		34.256561, 34.145828, 38.155960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.017014, 33.540470, 37.537788>,  <34.392738, 33.461102, 38.104900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.017014, 33.540470, 37.537788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143398, 33.902840, 37.650543>,  <34.219231, 34.120262, 37.718197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.143398, 33.902840, 37.650543>,  <34.017014, 33.540470, 37.537788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143398, 33.902840, 37.650543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056905, 0.314666, -0.947495,
		-0.947062, 0.283335, 0.150976,
		0.315966, 0.905928, 0.281885,
		34.238190, 34.174618, 37.735107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.506187, 34.058510, 37.203114>,  <34.017014, 33.540470, 37.537788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.506187, 34.058510, 37.203114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872017, 34.197327, 37.286171>,  <34.091515, 34.280617, 37.336006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872017, 34.197327, 37.286171>,  <33.506187, 34.058510, 37.203114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872017, 34.197327, 37.286171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074791, 0.359437, -0.930167,
		-0.397441, 0.866237, 0.302776,
		0.914575, 0.347042, 0.207641,
		34.146389, 34.301441, 37.348465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406609, 34.854687, 36.954746>,  <33.506187, 34.058510, 37.203114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406609, 34.854687, 36.954746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798882, 34.784229, 36.988758>,  <34.034245, 34.741955, 37.009163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.798882, 34.784229, 36.988758>,  <33.406609, 34.854687, 36.954746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.798882, 34.784229, 36.988758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112164, 0.150334, -0.982252,
		0.160238, 0.972817, 0.167187,
		0.980685, -0.176147, 0.085026,
		34.093086, 34.731384, 37.014267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.702309, 35.301765, 36.495579>,  <33.406609, 34.854687, 36.954746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.702309, 35.301765, 36.495579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995930, 35.038113, 36.560959>,  <34.172104, 34.879921, 36.600185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.995930, 35.038113, 36.560959>,  <33.702309, 35.301765, 36.495579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995930, 35.038113, 36.560959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155517, -0.071131, -0.985269,
		0.661044, 0.748660, 0.050291,
		0.734054, -0.659127, 0.163450,
		34.216145, 34.840374, 36.609993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.341927, 35.533184, 36.146042>,  <33.702309, 35.301765, 36.495579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.341927, 35.533184, 36.146042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389862, 35.136509, 36.164761>,  <34.418625, 34.898502, 36.175991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.389862, 35.136509, 36.164761>,  <34.341927, 35.533184, 36.146042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.389862, 35.136509, 36.164761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292959, -0.009713, -0.956076,
		0.948585, 0.128284, 0.289360,
		0.119839, -0.991690, 0.046795,
		34.425812, 34.839001, 36.178799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973827, 35.388222, 35.702709>,  <34.341927, 35.533184, 36.146042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973827, 35.388222, 35.702709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793262, 35.037415, 35.768517>,  <34.684925, 34.826931, 35.808002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793262, 35.037415, 35.768517>,  <34.973827, 35.388222, 35.702709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793262, 35.037415, 35.768517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287261, -0.317386, -0.903741,
		0.844813, -0.360698, 0.395205,
		-0.451410, -0.877019, 0.164518,
		34.657841, 34.774307, 35.817871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.448215, 34.929039, 35.481079>,  <34.973827, 35.388222, 35.702709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.448215, 34.929039, 35.481079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074337, 34.787045, 35.473831>,  <34.850010, 34.701847, 35.469482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.074337, 34.787045, 35.473831>,  <35.448215, 34.929039, 35.481079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074337, 34.787045, 35.473831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136007, -0.310087, -0.940929,
		0.328404, -0.881945, 0.338117,
		-0.934694, -0.354991, -0.018117,
		34.793930, 34.680546, 35.468395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.516090, 34.261242, 35.209183>,  <35.448215, 34.929039, 35.481079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.516090, 34.261242, 35.209183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129539, 34.346359, 35.151451>,  <34.897610, 34.397430, 35.116814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.129539, 34.346359, 35.151451>,  <35.516090, 34.261242, 35.209183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.129539, 34.346359, 35.151451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059735, -0.360166, -0.930974,
		-0.250087, -0.908295, 0.335346,
		-0.966379, 0.212792, -0.144330,
		34.839626, 34.410198, 35.108150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.294346, 33.806328, 34.688911>,  <35.516090, 34.261242, 35.209183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.294346, 33.806328, 34.688911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960159, 34.026127, 34.685810>,  <34.759647, 34.158005, 34.683949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.960159, 34.026127, 34.685810>,  <35.294346, 33.806328, 34.688911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.960159, 34.026127, 34.685810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191072, -0.303676, -0.933420,
		-0.515262, -0.778356, 0.358702,
		-0.835462, 0.549494, -0.007751,
		34.709522, 34.190975, 34.683483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767010, 33.327965, 34.557228>,  <35.294346, 33.806328, 34.688911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767010, 33.327965, 34.557228> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632874, 33.690624, 34.454834>,  <34.552391, 33.908222, 34.393398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632874, 33.690624, 34.454834>,  <34.767010, 33.327965, 34.557228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632874, 33.690624, 34.454834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071312, -0.295372, -0.952717,
		-0.939393, -0.301232, 0.163705,
		-0.335343, 0.906650, -0.255989,
		34.532272, 33.962620, 34.378036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.201027, 32.857635, 34.461483>,  <34.767010, 33.327965, 34.557228>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.201027, 32.857635, 34.461483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126762, 32.660004, 34.121738>,  <34.082203, 32.541424, 33.917892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.126762, 32.660004, 34.121738>,  <34.201027, 32.857635, 34.461483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.126762, 32.660004, 34.121738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307982, -0.791574, 0.527785,
		-0.933100, 0.359580, -0.005199,
		-0.185666, -0.494077, -0.849362,
		34.071064, 32.511780, 33.866928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499336, 32.745621, 34.541367>,  <34.201027, 32.857635, 34.461483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499336, 32.745621, 34.541367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755299, 32.509739, 34.344284>,  <33.908878, 32.368210, 34.226032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.755299, 32.509739, 34.344284>,  <33.499336, 32.745621, 34.541367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.755299, 32.509739, 34.344284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129155, -0.714586, 0.687522,
		-0.757523, -0.376312, -0.533431,
		0.639905, -0.589708, -0.492713,
		33.947273, 32.332829, 34.196472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.153896, 32.119225, 34.272057>,  <33.499336, 32.745621, 34.541367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.153896, 32.119225, 34.272057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548603, 32.064072, 34.306175>,  <33.785427, 32.030979, 34.326645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.548603, 32.064072, 34.306175>,  <33.153896, 32.119225, 34.272057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548603, 32.064072, 34.306175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150067, -0.577587, 0.802417,
		-0.061375, -0.804600, -0.590637,
		0.986769, -0.137884, 0.085295,
		33.844635, 32.022705, 34.331764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.206615, 31.380915, 34.324089>,  <33.153896, 32.119225, 34.272057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.206615, 31.380915, 34.324089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517838, 31.580286, 34.477036>,  <33.704571, 31.699909, 34.568802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.517838, 31.580286, 34.477036>,  <33.206615, 31.380915, 34.324089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.517838, 31.580286, 34.477036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143603, -0.451435, 0.880673,
		0.611566, -0.740118, -0.279664,
		0.778052, 0.498429, 0.382366,
		33.751251, 31.729815, 34.591743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318981, 30.910791, 34.841145>,  <33.206615, 31.380915, 34.324089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318981, 30.910791, 34.841145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526302, 31.236074, 34.947021>,  <33.650696, 31.431244, 35.010548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.526302, 31.236074, 34.947021>,  <33.318981, 30.910791, 34.841145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.526302, 31.236074, 34.947021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159011, -0.212472, 0.964143,
		0.840287, -0.541802, 0.019185,
		0.518298, 0.813208, 0.264690,
		33.681793, 31.480036, 35.026428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.693142, 30.589394, 35.344696>,  <33.318981, 30.910791, 34.841145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.693142, 30.589394, 35.344696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717415, 30.984507, 35.402111>,  <33.731979, 31.221575, 35.436558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.717415, 30.984507, 35.402111>,  <33.693142, 30.589394, 35.344696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.717415, 30.984507, 35.402111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097711, -0.137230, 0.985708,
		0.993363, -0.073843, 0.088190,
		0.060686, 0.987783, 0.143535,
		33.735622, 31.280842, 35.445171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.165501, 30.721975, 35.816795>,  <33.693142, 30.589394, 35.344696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.165501, 30.721975, 35.816795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936619, 31.048937, 35.843430>,  <33.799290, 31.245113, 35.859409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.936619, 31.048937, 35.843430>,  <34.165501, 30.721975, 35.816795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.936619, 31.048937, 35.843430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116400, -0.161313, 0.980015,
		0.811810, 0.553016, 0.187450,
		-0.572202, 0.817406, 0.066584,
		33.764957, 31.294159, 35.863403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.506260, 31.147036, 36.341629>,  <34.165501, 30.721975, 35.816795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.506260, 31.147036, 36.341629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118092, 31.241634, 36.322208>,  <33.885193, 31.298393, 36.310555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.118092, 31.241634, 36.322208>,  <34.506260, 31.147036, 36.341629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.118092, 31.241634, 36.322208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107178, -0.241789, 0.964392,
		0.216335, 0.941067, 0.259983,
		-0.970418, 0.236497, -0.048554,
		33.826965, 31.312584, 36.307644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.332825, 31.434397, 36.957283>,  <34.506260, 31.147036, 36.341629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.332825, 31.434397, 36.957283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959549, 31.340305, 36.848598>,  <33.735584, 31.283850, 36.783390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.959549, 31.340305, 36.848598>,  <34.332825, 31.434397, 36.957283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959549, 31.340305, 36.848598> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.175555, -0.361324, 0.915765,
		-0.313590, 0.902282, 0.295887,
		-0.933189, -0.235230, -0.271707,
		33.679592, 31.269735, 36.767086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846184, 31.800707, 37.432030>,  <34.332825, 31.434397, 36.957283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846184, 31.800707, 37.432030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660728, 31.478165, 37.285152>,  <33.549454, 31.284639, 37.197025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.660728, 31.478165, 37.285152>,  <33.846184, 31.800707, 37.432030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660728, 31.478165, 37.285152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185586, -0.316858, 0.930139,
		-0.866370, 0.499394, -0.002741,
		-0.463638, -0.806354, -0.367197,
		33.521637, 31.236259, 37.174992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083008, 32.050518, 37.471096>,  <33.846184, 31.800707, 37.432030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083008, 32.050518, 37.471096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130402, 31.655483, 37.429836>,  <33.158836, 31.418463, 37.405079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.130402, 31.655483, 37.429836>,  <33.083008, 32.050518, 37.471096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.130402, 31.655483, 37.429836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430079, -0.144671, 0.891124,
		-0.894983, -0.061220, -0.441880,
		0.118482, -0.987584, -0.103149,
		33.165947, 31.359207, 37.398891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.507469, 31.788805, 37.657833>,  <33.083008, 32.050518, 37.471096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.507469, 31.788805, 37.657833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762985, 31.485992, 37.712746>,  <32.916294, 31.304306, 37.745693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.762985, 31.485992, 37.712746>,  <32.507469, 31.788805, 37.657833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.762985, 31.485992, 37.712746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312715, -0.092440, 0.945338,
		-0.702959, -0.646808, -0.295785,
		0.638794, -0.757030, 0.137285,
		32.954624, 31.258883, 37.753933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.108711, 31.325562, 38.054180>,  <32.507469, 31.788805, 37.657833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.108711, 31.325562, 38.054180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491520, 31.211561, 38.075642>,  <32.721207, 31.143162, 38.088516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.491520, 31.211561, 38.075642>,  <32.108711, 31.325562, 38.054180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.491520, 31.211561, 38.075642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141901, -0.298860, 0.943688,
		-0.252912, -0.910747, -0.326458,
		0.957027, -0.284995, 0.053650,
		32.778629, 31.126062, 38.091736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.167385, 30.648781, 38.356651>,  <32.108711, 31.325562, 38.054180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.167385, 30.648781, 38.356651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508728, 30.830330, 38.459236>,  <32.713535, 30.939260, 38.520786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.508728, 30.830330, 38.459236>,  <32.167385, 30.648781, 38.356651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508728, 30.830330, 38.459236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123404, -0.302097, 0.945256,
		0.506505, -0.838293, -0.201787,
		0.853361, 0.453875, 0.256462,
		32.764736, 30.966492, 38.536175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.356865, 30.234875, 38.874977>,  <32.167385, 30.648781, 38.356651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.356865, 30.234875, 38.874977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603775, 30.547474, 38.911282>,  <32.751919, 30.735033, 38.933064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603775, 30.547474, 38.911282>,  <32.356865, 30.234875, 38.874977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603775, 30.547474, 38.911282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006781, -0.120645, 0.992673,
		0.786720, -0.612134, -0.079770,
		0.617272, 0.781497, 0.090763,
		32.788956, 30.781923, 38.938511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842300, 29.992199, 39.382904>,  <32.356865, 30.234875, 38.874977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842300, 29.992199, 39.382904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883224, 30.390099, 39.384209>,  <32.907780, 30.628838, 39.384991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883224, 30.390099, 39.384209>,  <32.842300, 29.992199, 39.382904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883224, 30.390099, 39.384209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093236, 0.006326, 0.995624,
		0.990374, -0.102166, 0.093394,
		0.102310, 0.994747, 0.003260,
		32.913918, 30.688522, 39.385185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.247570, 30.085659, 39.914692>,  <32.842300, 29.992199, 39.382904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.247570, 30.085659, 39.914692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090763, 30.450224, 39.864651>,  <32.996681, 30.668962, 39.834625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.090763, 30.450224, 39.864651>,  <33.247570, 30.085659, 39.914692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.090763, 30.450224, 39.864651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019655, 0.127655, 0.991624,
		0.919749, 0.391190, -0.032129,
		-0.392014, 0.911414, -0.125099,
		32.973160, 30.723648, 39.827122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.674381, 30.541584, 40.149647>,  <33.247570, 30.085659, 39.914692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.674381, 30.541584, 40.149647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329369, 30.741415, 40.181797>,  <33.122360, 30.861315, 40.201088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.329369, 30.741415, 40.181797>,  <33.674381, 30.541584, 40.149647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.329369, 30.741415, 40.181797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.132017, 0.068834, 0.988855,
		0.488479, 0.863529, -0.125325,
		-0.862531, 0.499579, 0.080376,
		33.070610, 30.891289, 40.205910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.850380, 31.019354, 40.569729>,  <33.674381, 30.541584, 40.149647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.850380, 31.019354, 40.569729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450394, 31.020866, 40.566681>,  <33.210403, 31.021774, 40.564854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.450394, 31.020866, 40.566681>,  <33.850380, 31.019354, 40.569729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450394, 31.020866, 40.566681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007756, -0.037688, 0.999260,
		0.003492, 0.999282, 0.037716,
		-0.999964, 0.003782, -0.007619,
		33.150406, 31.022001, 40.564396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.695732, 31.432571, 41.177326>,  <33.850380, 31.019354, 40.569729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.695732, 31.432571, 41.177326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368633, 31.221413, 41.085579>,  <33.172375, 31.094717, 41.030529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.368633, 31.221413, 41.085579>,  <33.695732, 31.432571, 41.177326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.368633, 31.221413, 41.085579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117719, -0.236688, 0.964428,
		-0.563410, 0.815660, 0.131408,
		-0.817748, -0.527899, -0.229371,
		33.123310, 31.063044, 41.016769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.129028, 31.694687, 41.674660>,  <33.695732, 31.432571, 41.177326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.129028, 31.694687, 41.674660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059525, 31.317638, 41.560627>,  <33.017822, 31.091410, 41.492207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.059525, 31.317638, 41.560627>,  <33.129028, 31.694687, 41.674660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.059525, 31.317638, 41.560627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128691, -0.265270, 0.955547,
		-0.976343, 0.202723, -0.075214,
		-0.173760, -0.942621, -0.285084,
		33.007397, 31.034851, 41.475101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.605450, 31.554495, 42.046513>,  <33.129028, 31.694687, 41.674660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.605450, 31.554495, 42.046513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744621, 31.200739, 41.922062>,  <32.828125, 30.988485, 41.847393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.744621, 31.200739, 41.922062>,  <32.605450, 31.554495, 42.046513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.744621, 31.200739, 41.922062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282170, -0.415258, 0.864836,
		-0.894049, -0.213112, -0.394029,
		0.347931, -0.884390, -0.311127,
		32.848999, 30.935423, 41.828724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.137272, 31.076088, 42.455688>,  <32.605450, 31.554495, 42.046513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.137272, 31.076088, 42.455688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443142, 30.862766, 42.310993>,  <32.626663, 30.734774, 42.224174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.443142, 30.862766, 42.310993>,  <32.137272, 31.076088, 42.455688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.443142, 30.862766, 42.310993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028722, -0.588994, 0.807627,
		-0.643777, -0.607181, -0.465706,
		0.764674, -0.533307, -0.361742,
		32.672546, 30.702774, 42.202473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.834190, 30.467377, 42.531548>,  <32.137272, 31.076088, 42.455688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.834190, 30.467377, 42.531548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230370, 30.415838, 42.511902>,  <32.468079, 30.384916, 42.500114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.230370, 30.415838, 42.511902>,  <31.834190, 30.467377, 42.531548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.230370, 30.415838, 42.511902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049719, -0.665921, 0.744363,
		-0.128610, -0.734811, -0.665967,
		0.990448, -0.128844, -0.049110,
		32.527504, 30.377186, 42.497169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.007145, 29.694151, 42.767822>,  <31.834190, 30.467377, 42.531548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.007145, 29.694151, 42.767822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321270, 29.937979, 42.811092>,  <32.509747, 30.084276, 42.837055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.321270, 29.937979, 42.811092>,  <32.007145, 29.694151, 42.767822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.321270, 29.937979, 42.811092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267290, -0.491451, 0.828874,
		0.558423, -0.622012, -0.548877,
		0.785315, 0.609571, 0.108180,
		32.556866, 30.120850, 42.843548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.531281, 29.209494, 42.922005>,  <32.007145, 29.694151, 42.767822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.531281, 29.209494, 42.922005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664303, 29.572678, 43.023998>,  <32.744114, 29.790588, 43.085194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664303, 29.572678, 43.023998>,  <32.531281, 29.209494, 42.922005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664303, 29.572678, 43.023998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278165, -0.352783, 0.893403,
		0.901128, -0.226176, -0.369882,
		0.332554, 0.907959, 0.254988,
		32.764069, 29.845066, 43.100494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168957, 29.190374, 43.396935>,  <32.531281, 29.209494, 42.922005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168957, 29.190374, 43.396935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018612, 29.551723, 43.479538>,  <32.928406, 29.768532, 43.529102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.018612, 29.551723, 43.479538>,  <33.168957, 29.190374, 43.396935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.018612, 29.551723, 43.479538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287687, -0.098089, 0.952688,
		0.880888, 0.417492, -0.223020,
		-0.375864, 0.903371, 0.206512,
		32.905853, 29.822735, 43.541492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.291706, 29.089808, 44.058765>,  <33.168957, 29.190374, 43.396935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.291706, 29.089808, 44.058765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107975, 29.443094, 44.020927>,  <32.997738, 29.655066, 43.998222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.107975, 29.443094, 44.020927>,  <33.291706, 29.089808, 44.058765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.107975, 29.443094, 44.020927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153145, 0.026161, 0.987857,
		0.874965, 0.468238, 0.123243,
		-0.459328, 0.883215, -0.094599,
		32.970177, 29.708059, 43.992546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.126106, 29.159761, 43.905560>,  <33.291706, 29.089808, 44.058765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.126106, 29.159761, 43.905560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365002, 28.844048, 43.962601>,  <34.508339, 28.654619, 43.996826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.365002, 28.844048, 43.962601>,  <34.126106, 29.159761, 43.905560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.365002, 28.844048, 43.962601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336220, 0.084948, -0.937945,
		0.728193, 0.608121, 0.316108,
		0.597236, -0.789286, 0.142604,
		34.544174, 28.607262, 44.005383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.735981, 29.316484, 43.589169>,  <34.126106, 29.159761, 43.905560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.735981, 29.316484, 43.589169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745377, 28.916899, 43.604736>,  <34.751015, 28.677147, 43.614075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.745377, 28.916899, 43.604736>,  <34.735981, 29.316484, 43.589169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.745377, 28.916899, 43.604736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302416, -0.030005, -0.952704,
		0.952886, 0.034147, 0.301399,
		0.023489, -0.998966, 0.038918,
		34.752422, 28.617208, 43.616413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.384048, 29.051758, 43.346558>,  <34.735981, 29.316484, 43.589169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.384048, 29.051758, 43.346558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147423, 28.736826, 43.277081>,  <35.005447, 28.547867, 43.235394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.147423, 28.736826, 43.277081>,  <35.384048, 29.051758, 43.346558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.147423, 28.736826, 43.277081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330133, -0.039990, -0.943087,
		0.735573, -0.615236, 0.283580,
		-0.591562, -0.787328, -0.173695,
		34.969955, 28.500628, 43.224972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.793880, 28.508951, 42.992859>,  <35.384048, 29.051758, 43.346558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.793880, 28.508951, 42.992859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415081, 28.416109, 42.904034>,  <35.187801, 28.360403, 42.850739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.415081, 28.416109, 42.904034>,  <35.793880, 28.508951, 42.992859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.415081, 28.416109, 42.904034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266148, -0.179867, -0.947002,
		0.179864, -0.955916, 0.232110,
		-0.947003, -0.232107, -0.222063,
		35.130981, 28.346478, 42.837414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.834595, 27.963772, 42.509968>,  <35.793880, 28.508951, 42.992859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.834595, 27.963772, 42.509968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459522, 28.092180, 42.456753>,  <35.234478, 28.169226, 42.424824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459522, 28.092180, 42.456753>,  <35.834595, 27.963772, 42.509968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459522, 28.092180, 42.456753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100556, -0.115786, -0.988171,
		-0.332628, -0.939968, 0.076290,
		-0.937682, 0.321021, -0.133033,
		35.178219, 28.188486, 42.416843>
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
