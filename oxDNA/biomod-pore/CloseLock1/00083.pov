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
	<23.749924, 34.861076, 35.088474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144066, 34.827522, 35.029091>,  <24.380550, 34.807388, 34.993462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.144066, 34.827522, 35.029091>,  <23.749924, 34.861076, 35.088474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.144066, 34.827522, 35.029091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170340, 0.444085, 0.879644,
		-0.007865, -0.892049, 0.451871,
		0.985354, -0.083890, -0.148459,
		24.439672, 34.802357, 34.984554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.075493, 34.699986, 35.747990>,  <23.749924, 34.861076, 35.088474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.075493, 34.699986, 35.747990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350939, 34.862770, 35.507927>,  <24.516207, 34.960442, 35.363888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.350939, 34.862770, 35.507927>,  <24.075493, 34.699986, 35.747990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.350939, 34.862770, 35.507927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421371, 0.448999, 0.787938,
		0.590133, -0.795475, 0.137704,
		0.688614, 0.406964, -0.600159,
		24.557524, 34.984859, 35.327881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629368, 34.589218, 36.181519>,  <24.075493, 34.699986, 35.747990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629368, 34.589218, 36.181519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684931, 34.889900, 35.923637>,  <24.718269, 35.070309, 35.768909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.684931, 34.889900, 35.923637>,  <24.629368, 34.589218, 36.181519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.684931, 34.889900, 35.923637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418355, 0.545524, 0.726211,
		0.897599, -0.370589, -0.238704,
		0.138907, 0.751709, -0.644700,
		24.726603, 35.115414, 35.730228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.075521, 35.208447, 36.220757>,  <24.629368, 34.589218, 36.181519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.075521, 35.208447, 36.220757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835213, 35.366341, 36.498821>,  <24.691029, 35.461079, 36.665661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.835213, 35.366341, 36.498821>,  <25.075521, 35.208447, 36.220757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.835213, 35.366341, 36.498821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726955, 0.631532, 0.269637,
		-0.332584, 0.667344, -0.666364,
		-0.600770, 0.394740, 0.695166,
		24.654982, 35.484764, 36.707371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.078106, 36.030743, 36.278900>,  <25.075521, 35.208447, 36.220757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.078106, 36.030743, 36.278900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066841, 35.823593, 36.620895>,  <25.060081, 35.699303, 36.826092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.066841, 35.823593, 36.620895>,  <25.078106, 36.030743, 36.278900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.066841, 35.823593, 36.620895> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.784083, 0.519085, 0.340242,
		-0.620016, 0.679968, 0.391438,
		-0.028164, -0.517875, 0.854992,
		25.058392, 35.668232, 36.877392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.837229, 36.391182, 36.978413>,  <25.078106, 36.030743, 36.278900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.837229, 36.391182, 36.978413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152256, 36.146091, 36.952183>,  <25.341272, 35.999035, 36.936443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.152256, 36.146091, 36.952183>,  <24.837229, 36.391182, 36.978413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.152256, 36.146091, 36.952183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610490, 0.761320, 0.218389,
		-0.083889, -0.212030, 0.973656,
		0.787569, -0.612728, -0.065576,
		25.388527, 35.962273, 36.932510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235472, 36.488926, 37.620472>,  <24.837229, 36.391182, 36.978413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235472, 36.488926, 37.620472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466139, 36.352955, 37.323311>,  <25.604538, 36.271374, 37.145012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.466139, 36.352955, 37.323311>,  <25.235472, 36.488926, 37.620472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.466139, 36.352955, 37.323311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647124, 0.745108, 0.161386,
		0.498686, -0.573818, 0.649650,
		0.576666, -0.339923, -0.742906,
		25.639139, 36.250977, 37.100441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.883209, 36.692524, 37.772930>,  <25.235472, 36.488926, 37.620472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.883209, 36.692524, 37.772930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924042, 36.607498, 37.384209>,  <25.948542, 36.556484, 37.150978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.924042, 36.607498, 37.384209>,  <25.883209, 36.692524, 37.772930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.924042, 36.607498, 37.384209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.654678, 0.749883, -0.095252,
		0.748984, -0.626493, 0.215707,
		0.102080, -0.212561, -0.971801,
		25.954666, 36.543732, 37.092667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.618755, 36.646049, 37.626610>,  <25.883209, 36.692524, 37.772930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.618755, 36.646049, 37.626610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436077, 36.722618, 37.279095>,  <26.326469, 36.768559, 37.070587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.436077, 36.722618, 37.279095>,  <26.618755, 36.646049, 37.626610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.436077, 36.722618, 37.279095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648335, 0.740329, -0.177692,
		0.609172, -0.644415, -0.462211,
		-0.456696, 0.191423, -0.868784,
		26.299068, 36.780045, 37.018459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.169294, 36.650089, 37.124592>,  <26.618755, 36.646049, 37.626610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.169294, 36.650089, 37.124592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865448, 36.853878, 36.962891>,  <26.683140, 36.976151, 36.865868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.865448, 36.853878, 36.962891>,  <27.169294, 36.650089, 37.124592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.865448, 36.853878, 36.962891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640809, 0.692508, -0.331355,
		0.111133, -0.510752, -0.852515,
		-0.759614, 0.509475, -0.404255,
		26.637564, 37.006721, 36.841614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.366367, 36.896534, 36.447891>,  <27.169294, 36.650089, 37.124592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.366367, 36.896534, 36.447891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034233, 37.116180, 36.485859>,  <26.834951, 37.247967, 36.508640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034233, 37.116180, 36.485859>,  <27.366367, 36.896534, 36.447891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034233, 37.116180, 36.485859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478211, 0.789589, -0.384531,
		-0.286102, -0.273898, -0.918219,
		-0.830338, 0.549117, 0.094922,
		26.785131, 37.280914, 36.514336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.354876, 37.257420, 35.793079>,  <27.366367, 36.896534, 36.447891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.354876, 37.257420, 35.793079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096325, 37.470825, 36.011272>,  <26.941195, 37.598869, 36.142189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.096325, 37.470825, 36.011272>,  <27.354876, 37.257420, 35.793079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.096325, 37.470825, 36.011272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359852, 0.843558, -0.398643,
		-0.672833, -0.061378, -0.737244,
		-0.646376, 0.533519, 0.545487,
		26.902412, 37.630882, 36.174919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.201296, 37.845936, 35.367115>,  <27.354876, 37.257420, 35.793079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.201296, 37.845936, 35.367115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104233, 37.932217, 35.745445>,  <27.045996, 37.983986, 35.972443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.104233, 37.932217, 35.745445>,  <27.201296, 37.845936, 35.367115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.104233, 37.932217, 35.745445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309228, 0.941309, -0.135334,
		-0.919509, 0.259637, -0.295115,
		-0.242657, 0.215698, 0.945829,
		27.031435, 37.996925, 36.029194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.919022, 38.510616, 35.313839>,  <27.201296, 37.845936, 35.367115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.919022, 38.510616, 35.313839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031397, 38.447971, 35.692585>,  <27.098822, 38.410385, 35.919830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.031397, 38.447971, 35.692585>,  <26.919022, 38.510616, 35.313839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.031397, 38.447971, 35.692585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408511, 0.912270, 0.029684,
		-0.868443, 0.378465, 0.320268,
		0.280936, -0.156612, 0.946862,
		27.115679, 38.400990, 35.976643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564060, 38.920834, 35.743805>,  <26.919022, 38.510616, 35.313839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564060, 38.920834, 35.743805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874184, 38.827839, 35.978699>,  <27.060259, 38.772041, 36.119637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.874184, 38.827839, 35.978699>,  <26.564060, 38.920834, 35.743805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.874184, 38.827839, 35.978699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186730, 0.972596, 0.138523,
		-0.603346, 0.002256, 0.797476,
		0.775310, -0.232490, 0.587233,
		27.106777, 38.758091, 36.154869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.577246, 39.404308, 36.224186>,  <26.564060, 38.920834, 35.743805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.577246, 39.404308, 36.224186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948336, 39.258202, 36.254944>,  <27.170990, 39.170540, 36.273399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.948336, 39.258202, 36.254944>,  <26.577246, 39.404308, 36.224186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.948336, 39.258202, 36.254944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348559, 0.921434, 0.171657,
		-0.133554, -0.132447, 0.982151,
		0.927723, -0.365263, 0.076895,
		27.226652, 39.148624, 36.278011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.832747, 39.715050, 36.814449>,  <26.577246, 39.404308, 36.224186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.832747, 39.715050, 36.814449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153296, 39.581905, 36.615650>,  <27.345625, 39.502018, 36.496368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.153296, 39.581905, 36.615650>,  <26.832747, 39.715050, 36.814449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.153296, 39.581905, 36.615650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424938, 0.901558, 0.081376,
		0.420989, -0.276407, 0.863925,
		0.801371, -0.332856, -0.497002,
		27.393707, 39.482048, 36.466549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.396061, 40.195988, 37.089684>,  <26.832747, 39.715050, 36.814449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.396061, 40.195988, 37.089684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548897, 40.010075, 36.770187>,  <27.640598, 39.898525, 36.578491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.548897, 40.010075, 36.770187>,  <27.396061, 40.195988, 37.089684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.548897, 40.010075, 36.770187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595245, 0.784921, -0.171997,
		0.706888, -0.409727, 0.576570,
		0.382090, -0.464783, -0.798739,
		27.663523, 39.870640, 36.530567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.085249, 40.287045, 37.153091>,  <27.396061, 40.195988, 37.089684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.085249, 40.287045, 37.153091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049501, 40.200340, 36.764240>,  <28.028053, 40.148319, 36.530930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.049501, 40.200340, 36.764240>,  <28.085249, 40.287045, 37.153091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.049501, 40.200340, 36.764240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434388, 0.869831, -0.233886,
		0.896282, -0.443181, 0.016422,
		-0.089369, -0.216761, -0.972125,
		28.022692, 40.135311, 36.472603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.761320, 40.333576, 36.922859>,  <28.085249, 40.287045, 37.153091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.761320, 40.333576, 36.922859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511749, 40.364712, 36.611820>,  <28.362007, 40.383392, 36.425198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.511749, 40.364712, 36.611820>,  <28.761320, 40.333576, 36.922859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.511749, 40.364712, 36.611820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458111, 0.842561, -0.283242,
		0.633125, -0.532947, -0.561355,
		-0.623929, 0.077835, -0.777595,
		28.324572, 40.388062, 36.378540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.176483, 40.545502, 36.448704>,  <28.761320, 40.333576, 36.922859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.176483, 40.545502, 36.448704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818434, 40.657963, 36.310307>,  <28.603605, 40.725441, 36.227268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.818434, 40.657963, 36.310307>,  <29.176483, 40.545502, 36.448704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.818434, 40.657963, 36.310307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415583, 0.807168, -0.419251,
		0.161395, -0.519067, -0.839357,
		-0.895121, 0.281157, -0.345989,
		28.549898, 40.742310, 36.206509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.363396, 40.587688, 35.782883>,  <29.176483, 40.545502, 36.448704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.363396, 40.587688, 35.782883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037094, 40.800865, 35.872791>,  <28.841314, 40.928772, 35.926735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.037094, 40.800865, 35.872791>,  <29.363396, 40.587688, 35.782883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.037094, 40.800865, 35.872791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374855, 0.783079, -0.496257,
		-0.440490, -0.320566, -0.838574,
		-0.815753, 0.532940, 0.224773,
		28.792368, 40.960747, 35.940224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273144, 40.881931, 35.142246>,  <29.363396, 40.587688, 35.782883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273144, 40.881931, 35.142246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064444, 41.103111, 35.402100>,  <28.939224, 41.235817, 35.558010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064444, 41.103111, 35.402100>,  <29.273144, 40.881931, 35.142246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064444, 41.103111, 35.402100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319990, 0.832750, -0.451812,
		-0.790812, -0.027856, -0.611425,
		-0.521750, 0.552948, 0.649635,
		28.907919, 41.268997, 35.596989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885378, 41.309032, 34.744209>,  <29.273144, 40.881931, 35.142246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885378, 41.309032, 34.744209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931128, 41.482845, 35.101555>,  <28.958578, 41.587132, 35.315964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.931128, 41.482845, 35.101555>,  <28.885378, 41.309032, 34.744209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.931128, 41.482845, 35.101555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280265, 0.848624, -0.448652,
		-0.953084, 0.301694, -0.024723,
		0.114375, 0.434532, 0.893365,
		28.965441, 41.613205, 35.369564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.508013, 41.934261, 34.677803>,  <28.885378, 41.309032, 34.744209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.508013, 41.934261, 34.677803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817789, 41.932384, 34.930855>,  <29.003654, 41.931259, 35.082687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.817789, 41.932384, 34.930855>,  <28.508013, 41.934261, 34.677803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.817789, 41.932384, 34.930855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408115, 0.767790, -0.493904,
		-0.483411, 0.640685, 0.596520,
		0.774439, -0.004690, 0.632631,
		29.050121, 41.930977, 35.120644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.826561, 42.611786, 34.798065>,  <28.508013, 41.934261, 34.677803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.826561, 42.611786, 34.798065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128813, 42.362152, 34.877613>,  <29.310163, 42.212372, 34.925343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.128813, 42.362152, 34.877613>,  <28.826561, 42.611786, 34.798065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.128813, 42.362152, 34.877613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648858, 0.671722, -0.357452,
		0.089496, 0.399137, 0.912513,
		0.755628, -0.624083, 0.198867,
		29.355501, 42.174927, 34.937275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422188, 42.932854, 35.110622>,  <28.826561, 42.611786, 34.798065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422188, 42.932854, 35.110622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588194, 42.593624, 34.978844>,  <29.687798, 42.390087, 34.899776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.588194, 42.593624, 34.978844>,  <29.422188, 42.932854, 35.110622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.588194, 42.593624, 34.978844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736478, 0.525754, -0.425656,
		0.534194, -0.065973, 0.842784,
		0.415015, -0.848075, -0.329442,
		29.712698, 42.339203, 34.880013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.112333, 42.845070, 35.442139>,  <29.422188, 42.932854, 35.110622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.112333, 42.845070, 35.442139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022959, 42.758194, 35.062054>,  <29.969334, 42.706066, 34.834003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.022959, 42.758194, 35.062054>,  <30.112333, 42.845070, 35.442139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.022959, 42.758194, 35.062054> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647548, 0.695560, -0.311252,
		0.728532, -0.684853, -0.014770,
		-0.223435, -0.217193, -0.950213,
		29.955929, 42.693035, 34.776989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.669724, 42.521400, 35.086601>,  <30.112333, 42.845070, 35.442139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.669724, 42.521400, 35.086601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449203, 42.760540, 34.853828>,  <30.316891, 42.904022, 34.714165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.449203, 42.760540, 34.853828>,  <30.669724, 42.521400, 35.086601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.449203, 42.760540, 34.853828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814661, 0.536221, -0.220894,
		0.179982, -0.595856, -0.782663,
		-0.551302, 0.597848, -0.581931,
		30.283813, 42.939896, 34.679249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885633, 42.641418, 34.367455>,  <30.669724, 42.521400, 35.086601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885633, 42.641418, 34.367455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666117, 42.973743, 34.404495>,  <30.534407, 43.173138, 34.426720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666117, 42.973743, 34.404495>,  <30.885633, 42.641418, 34.367455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666117, 42.973743, 34.404495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713063, 0.523050, -0.466862,
		-0.436309, -0.190181, -0.879469,
		-0.548794, 0.830813, 0.092600,
		30.501478, 43.222988, 34.432274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.742023, 42.854485, 33.780788>,  <30.885633, 42.641418, 34.367455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.742023, 42.854485, 33.780788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739111, 43.172169, 34.023827>,  <30.737364, 43.362778, 34.169651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.739111, 43.172169, 34.023827>,  <30.742023, 42.854485, 33.780788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.739111, 43.172169, 34.023827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764028, 0.396427, -0.509026,
		-0.645142, 0.460515, -0.609686,
		-0.007282, 0.794211, 0.607598,
		30.736927, 43.410431, 34.206104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.789427, 42.693928, 33.088345>,  <30.742023, 42.854485, 33.780788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.789427, 42.693928, 33.088345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689026, 43.072025, 33.171791>,  <30.628786, 43.298882, 33.221859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.689026, 43.072025, 33.171791>,  <30.789427, 42.693928, 33.088345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.689026, 43.072025, 33.171791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396750, 0.297040, -0.868537,
		-0.882942, -0.135238, -0.449582,
		-0.251002, 0.945240, 0.208613,
		30.613726, 43.355598, 33.234375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.516638, 42.730217, 32.891548>,  <30.789427, 42.693928, 33.088345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.516638, 42.730217, 32.891548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374275, 43.056278, 32.708748>,  <31.288858, 43.251915, 32.599068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.374275, 43.056278, 32.708748>,  <31.516638, 42.730217, 32.891548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.374275, 43.056278, 32.708748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232280, -0.550841, -0.801636,
		-0.905195, -0.179153, 0.385391,
		-0.355904, 0.815156, -0.457005,
		31.267504, 43.300823, 32.571648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337095, 42.415634, 32.384060>,  <31.516638, 42.730217, 32.891548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337095, 42.415634, 32.384060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191755, 42.775120, 32.285847>,  <31.104551, 42.990810, 32.226917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.191755, 42.775120, 32.285847>,  <31.337095, 42.415634, 32.384060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.191755, 42.775120, 32.285847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394799, -0.387243, -0.833173,
		-0.843866, -0.205798, 0.495517,
		-0.363351, 0.898715, -0.245532,
		31.082750, 43.044735, 32.212189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.747980, 42.308613, 32.086170>,  <31.337095, 42.415634, 32.384060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.747980, 42.308613, 32.086170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827940, 42.684624, 31.975624>,  <30.875916, 42.910233, 31.909296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.827940, 42.684624, 31.975624>,  <30.747980, 42.308613, 32.086170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.827940, 42.684624, 31.975624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456543, -0.160211, -0.875158,
		-0.866953, 0.301119, 0.397139,
		0.199901, 0.940032, -0.276369,
		30.887911, 42.966633, 31.892714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.809275, 41.500671, 32.276649>,  <30.747980, 42.308613, 32.086170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.809275, 41.500671, 32.276649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478317, 41.564346, 32.492088>,  <30.279743, 41.602551, 32.621349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.478317, 41.564346, 32.492088>,  <30.809275, 41.500671, 32.276649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478317, 41.564346, 32.492088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091171, -0.908201, 0.408483,
		0.554176, 0.387080, 0.736925,
		-0.827392, 0.159185, 0.538594,
		30.230101, 41.612103, 32.653667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.975348, 41.237213, 32.863625>,  <30.809275, 41.500671, 32.276649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.975348, 41.237213, 32.863625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576040, 41.213692, 32.863605>,  <30.336456, 41.199577, 32.863594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.576040, 41.213692, 32.863605>,  <30.975348, 41.237213, 32.863625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.576040, 41.213692, 32.863605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053700, -0.911950, 0.406773,
		-0.023959, 0.406067, 0.913529,
		-0.998270, -0.058803, -0.000043,
		30.276560, 41.196053, 32.863594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.774090, 41.095814, 33.562950>,  <30.975348, 41.237213, 32.863625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.774090, 41.095814, 33.562950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474739, 40.980030, 33.324238>,  <30.295130, 40.910561, 33.181011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.474739, 40.980030, 33.324238>,  <30.774090, 41.095814, 33.562950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474739, 40.980030, 33.324238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062508, -0.864963, 0.497927,
		-0.660323, 0.409941, 0.629224,
		-0.748376, -0.289461, -0.596780,
		30.250227, 40.893192, 33.145203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.367842, 40.750538, 34.001686>,  <30.774090, 41.095814, 33.562950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.367842, 40.750538, 34.001686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229208, 40.640026, 33.643124>,  <30.146027, 40.573719, 33.427986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.229208, 40.640026, 33.643124>,  <30.367842, 40.750538, 34.001686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.229208, 40.640026, 33.643124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049586, -0.948908, 0.311634,
		-0.936707, 0.152457, 0.315178,
		-0.346586, -0.276281, -0.896408,
		30.125233, 40.557140, 33.374203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.829075, 40.379311, 34.170567>,  <30.367842, 40.750538, 34.001686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.829075, 40.379311, 34.170567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906115, 40.265488, 33.794922>,  <29.952339, 40.197193, 33.569534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.906115, 40.265488, 33.794922>,  <29.829075, 40.379311, 34.170567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.906115, 40.265488, 33.794922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213929, -0.946187, 0.242824,
		-0.957674, 0.154136, -0.243111,
		0.192600, -0.284555, -0.939113,
		29.963894, 40.180122, 33.513187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.265070, 39.968052, 34.048344>,  <29.829075, 40.379311, 34.170567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.265070, 39.968052, 34.048344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557789, 39.878586, 33.790836>,  <29.733421, 39.824905, 33.636330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.557789, 39.878586, 33.790836>,  <29.265070, 39.968052, 34.048344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.557789, 39.878586, 33.790836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207763, -0.972864, 0.101831,
		-0.649079, 0.059232, -0.758411,
		0.731799, -0.223667, -0.643772,
		29.777328, 39.811485, 33.597706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.995251, 39.491817, 33.593884>,  <29.265070, 39.968052, 34.048344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.995251, 39.491817, 33.593884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389265, 39.430092, 33.563168>,  <29.625673, 39.393055, 33.544739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.389265, 39.430092, 33.563168>,  <28.995251, 39.491817, 33.593884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.389265, 39.430092, 33.563168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156468, -0.987419, -0.022850,
		-0.072296, 0.034522, -0.996786,
		0.985034, -0.154313, -0.076788,
		29.684774, 39.383797, 33.540131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.251486, 38.966255, 32.989071>,  <28.995251, 39.491817, 33.593884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.251486, 38.966255, 32.989071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537531, 38.936382, 33.267075>,  <29.709158, 38.918457, 33.433876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.537531, 38.936382, 33.267075>,  <29.251486, 38.966255, 32.989071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.537531, 38.936382, 33.267075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308648, -0.925836, 0.218091,
		0.627177, -0.370473, -0.685127,
		0.715112, -0.074682, 0.695009,
		29.752064, 38.913979, 33.475578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422365, 38.292480, 32.974087>,  <29.251486, 38.966255, 32.989071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422365, 38.292480, 32.974087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614237, 38.406597, 33.305992>,  <29.729361, 38.475067, 33.505135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.614237, 38.406597, 33.305992>,  <29.422365, 38.292480, 32.974087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.614237, 38.406597, 33.305992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093333, -0.923710, 0.371549,
		0.872466, -0.255669, -0.416457,
		0.479679, 0.285295, 0.829768,
		29.758141, 38.492188, 33.554924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844484, 37.760826, 33.115711>,  <29.422365, 38.292480, 32.974087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844484, 37.760826, 33.115711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818398, 37.957329, 33.463139>,  <29.802746, 38.075230, 33.671597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.818398, 37.957329, 33.463139>,  <29.844484, 37.760826, 33.115711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.818398, 37.957329, 33.463139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125131, -0.867579, 0.481300,
		0.989995, -0.077297, 0.118051,
		-0.065215, 0.491256, 0.868570,
		29.798834, 38.104706, 33.723709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.152872, 37.257462, 33.572144>,  <29.844484, 37.760826, 33.115711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.152872, 37.257462, 33.572144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997881, 37.530838, 33.819618>,  <29.904886, 37.694862, 33.968102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997881, 37.530838, 33.819618>,  <30.152872, 37.257462, 33.572144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997881, 37.530838, 33.819618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234334, -0.722090, 0.650902,
		0.891599, 0.107231, 0.439947,
		-0.387478, 0.683438, 0.618686,
		29.881638, 37.735870, 34.005222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.450016, 37.202400, 34.233540>,  <30.152872, 37.257462, 33.572144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.450016, 37.202400, 34.233540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118900, 37.402336, 34.335464>,  <29.920231, 37.522297, 34.396618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.118900, 37.402336, 34.335464>,  <30.450016, 37.202400, 34.233540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.118900, 37.402336, 34.335464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181014, -0.667834, 0.721963,
		0.531036, 0.551508, 0.643303,
		-0.827789, 0.499835, 0.254814,
		29.870564, 37.552288, 34.411907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.420612, 37.395092, 35.026524>,  <30.450016, 37.202400, 34.233540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.420612, 37.395092, 35.026524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040316, 37.416077, 34.904320>,  <29.812138, 37.428665, 34.830997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.040316, 37.416077, 34.904320>,  <30.420612, 37.395092, 35.026524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040316, 37.416077, 34.904320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277171, -0.585146, 0.762089,
		-0.138789, 0.809229, 0.570864,
		-0.950744, 0.052457, -0.305507,
		29.755093, 37.431812, 34.812668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029833, 37.499195, 35.650871>,  <30.420612, 37.395092, 35.026524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029833, 37.499195, 35.650871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772421, 37.350361, 35.383312>,  <29.617973, 37.261063, 35.222778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.772421, 37.350361, 35.383312>,  <30.029833, 37.499195, 35.650871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.772421, 37.350361, 35.383312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546165, -0.389038, 0.741858,
		-0.536259, 0.842736, 0.047139,
		-0.643529, -0.372082, -0.668898,
		29.579363, 37.238735, 35.182644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.333157, 37.605759, 35.869102>,  <30.029833, 37.499195, 35.650871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.333157, 37.605759, 35.869102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273441, 37.328678, 35.586861>,  <29.237612, 37.162430, 35.417515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.273441, 37.328678, 35.586861>,  <29.333157, 37.605759, 35.869102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.273441, 37.328678, 35.586861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642607, -0.474387, 0.601675,
		-0.751511, 0.543249, -0.374315,
		-0.149289, -0.692703, -0.705603,
		29.228655, 37.120869, 35.375179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.609430, 37.375710, 35.995975>,  <29.333157, 37.605759, 35.869102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.609430, 37.375710, 35.995975> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738821, 37.088387, 35.749596>,  <28.816456, 36.915993, 35.601768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.738821, 37.088387, 35.749596>,  <28.609430, 37.375710, 35.995975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.738821, 37.088387, 35.749596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523667, -0.678076, 0.515739,
		-0.788122, 0.155726, -0.595494,
		0.323476, -0.718306, -0.615955,
		28.835863, 36.872894, 35.564808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.068068, 37.034119, 35.641693>,  <28.609430, 37.375710, 35.995975>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.068068, 37.034119, 35.641693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369221, 36.770897, 35.646355>,  <28.549913, 36.612965, 35.649151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.369221, 36.770897, 35.646355>,  <28.068068, 37.034119, 35.641693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.369221, 36.770897, 35.646355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605844, -0.686015, 0.402909,
		-0.257140, -0.310404, -0.915166,
		0.752883, -0.658052, 0.011655,
		28.595085, 36.573483, 35.649853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.841089, 36.375130, 35.361523>,  <28.068068, 37.034119, 35.641693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.841089, 36.375130, 35.361523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172974, 36.279018, 35.563053>,  <28.372105, 36.221352, 35.683971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.172974, 36.279018, 35.563053>,  <27.841089, 36.375130, 35.361523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.172974, 36.279018, 35.563053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449839, -0.822238, 0.348669,
		0.330488, -0.515936, -0.790308,
		0.829712, -0.240280, 0.503828,
		28.421888, 36.206936, 35.714203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.984800, 35.671806, 35.196205>,  <27.841089, 36.375130, 35.361523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.984800, 35.671806, 35.196205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151554, 35.765945, 35.547390>,  <28.251606, 35.822430, 35.758102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.151554, 35.765945, 35.547390>,  <27.984800, 35.671806, 35.196205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.151554, 35.765945, 35.547390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458575, -0.779508, 0.426704,
		0.784803, -0.580498, -0.217041,
		0.416886, 0.235349, 0.877962,
		28.276621, 35.836552, 35.810780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.203127, 34.963638, 35.445343>,  <27.984800, 35.671806, 35.196205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.203127, 34.963638, 35.445343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189104, 35.218575, 35.753254>,  <28.180691, 35.371536, 35.938000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.189104, 35.218575, 35.753254>,  <28.203127, 34.963638, 35.445343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.189104, 35.218575, 35.753254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570360, -0.645256, 0.508266,
		0.820646, -0.421233, 0.386138,
		-0.035059, 0.637344, 0.769781,
		28.178587, 35.409779, 35.984188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.499153, 34.558193, 36.004383>,  <28.203127, 34.963638, 35.445343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.499153, 34.558193, 36.004383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290575, 34.827400, 36.214199>,  <28.165428, 34.988922, 36.340088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.290575, 34.827400, 36.214199>,  <28.499153, 34.558193, 36.004383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.290575, 34.827400, 36.214199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331494, -0.726229, 0.602248,
		0.786260, 0.140158, 0.601790,
		-0.521447, 0.673014, 0.524543,
		28.134140, 35.029305, 36.371563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.639290, 34.397354, 36.816471>,  <28.499153, 34.558193, 36.004383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.639290, 34.397354, 36.816471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295458, 34.601543, 36.807198>,  <28.089159, 34.724056, 36.801636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.295458, 34.601543, 36.807198>,  <28.639290, 34.397354, 36.816471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.295458, 34.601543, 36.807198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385821, -0.618599, 0.684454,
		0.335056, 0.597287, 0.728688,
		-0.859581, 0.510473, -0.023181,
		28.037584, 34.754684, 36.800243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.335526, 34.416508, 36.544876>,  <28.639290, 34.397354, 36.816471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.335526, 34.416508, 36.544876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635786, 34.269337, 36.764385>,  <29.815943, 34.181034, 36.896091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.635786, 34.269337, 36.764385>,  <29.335526, 34.416508, 36.544876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.635786, 34.269337, 36.764385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180214, -0.913119, -0.365699,
		0.635645, 0.175616, -0.751741,
		0.750651, -0.367929, 0.548772,
		29.860981, 34.158958, 36.929016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.842350, 33.994785, 36.212399>,  <29.335526, 34.416508, 36.544876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.842350, 33.994785, 36.212399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697975, 33.900032, 36.573200>,  <29.611351, 33.843182, 36.789680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.697975, 33.900032, 36.573200>,  <29.842350, 33.994785, 36.212399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.697975, 33.900032, 36.573200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372921, -0.849849, -0.372407,
		0.854784, -0.470791, 0.218403,
		-0.360935, -0.236880, 0.902005,
		29.589695, 33.828968, 36.843803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.214962, 33.773972, 35.501816>,  <29.842350, 33.994785, 36.212399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.214962, 33.773972, 35.501816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427710, 33.604473, 35.208542>,  <30.555359, 33.502773, 35.032578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427710, 33.604473, 35.208542>,  <30.214962, 33.773972, 35.501816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427710, 33.604473, 35.208542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764825, -0.131309, 0.630714,
		-0.363533, -0.896215, 0.254249,
		0.531870, -0.423742, -0.733183,
		30.587271, 33.477352, 34.988586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196804, 33.033707, 35.472149>,  <30.214962, 33.773972, 35.501816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196804, 33.033707, 35.472149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542126, 33.213863, 35.381065>,  <30.749319, 33.321957, 35.326416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.542126, 33.213863, 35.381065>,  <30.196804, 33.033707, 35.472149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542126, 33.213863, 35.381065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417384, -0.383505, 0.823841,
		0.283725, -0.806268, -0.519069,
		0.863302, 0.450395, -0.227713,
		30.801117, 33.348984, 35.312752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.739386, 32.574600, 35.616478>,  <30.196804, 33.033707, 35.472149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.739386, 32.574600, 35.616478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944212, 32.917908, 35.602810>,  <31.067108, 33.123890, 35.594608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.944212, 32.917908, 35.602810>,  <30.739386, 32.574600, 35.616478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.944212, 32.917908, 35.602810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569706, -0.309592, 0.761306,
		0.642825, -0.409306, -0.647491,
		0.512065, 0.858267, -0.034171,
		31.097832, 33.175388, 35.592560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490030, 32.458382, 35.577641>,  <30.739386, 32.574600, 35.616478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490030, 32.458382, 35.577641> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410347, 32.802925, 35.764565>,  <31.362537, 33.009651, 35.876717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.410347, 32.802925, 35.764565>,  <31.490030, 32.458382, 35.577641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.410347, 32.802925, 35.764565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569942, -0.286080, 0.770275,
		0.797171, 0.419783, -0.433936,
		-0.199209, 0.861360, 0.467307,
		31.350584, 33.061333, 35.904755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.186451, 32.630096, 35.698132>,  <31.490030, 32.458382, 35.577641>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.186451, 32.630096, 35.698132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914175, 32.765205, 35.958157>,  <31.750811, 32.846272, 36.114170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.914175, 32.765205, 35.958157>,  <32.186451, 32.630096, 35.698132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.914175, 32.765205, 35.958157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508176, -0.421441, 0.751095,
		0.527659, 0.841605, 0.115223,
		-0.680685, 0.337769, 0.650061,
		31.709969, 32.866535, 36.153175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.566280, 32.813965, 36.271385>,  <32.186451, 32.630096, 35.698132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.566280, 32.813965, 36.271385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191425, 32.751987, 36.396450>,  <31.966511, 32.714802, 36.471489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.191425, 32.751987, 36.396450>,  <32.566280, 32.813965, 36.271385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.191425, 32.751987, 36.396450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345063, -0.544842, 0.764250,
		0.051937, 0.824099, 0.564059,
		-0.937141, -0.154943, 0.312664,
		31.910282, 32.705505, 36.490250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.588352, 32.972931, 36.943211>,  <32.566280, 32.813965, 36.271385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.588352, 32.972931, 36.943211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263832, 32.740223, 36.920124>,  <32.069118, 32.600597, 36.906273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.263832, 32.740223, 36.920124>,  <32.588352, 32.972931, 36.943211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.263832, 32.740223, 36.920124> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348714, -0.560791, 0.750940,
		-0.469238, 0.589116, 0.657843,
		-0.811304, -0.581769, -0.057712,
		32.020439, 32.565693, 36.902809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297287, 32.807594, 37.070374>,  <32.588352, 32.972931, 36.943211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297287, 32.807594, 37.070374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628979, 33.015877, 37.151604>,  <33.827995, 33.140846, 37.200340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.628979, 33.015877, 37.151604>,  <33.297287, 32.807594, 37.070374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.628979, 33.015877, 37.151604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139206, -0.159468, 0.977339,
		0.541292, -0.838709, -0.059750,
		0.829231, 0.520709, 0.203072,
		33.877747, 33.172089, 37.212524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.902470, 32.416451, 37.480976>,  <33.297287, 32.807594, 37.070374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.902470, 32.416451, 37.480976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934612, 32.802341, 37.581253>,  <33.953899, 33.033875, 37.641418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.934612, 32.802341, 37.581253>,  <33.902470, 32.416451, 37.480976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.934612, 32.802341, 37.581253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181795, -0.233105, 0.955308,
		0.980047, -0.122344, 0.156650,
		0.080360, 0.964725, 0.250695,
		33.958721, 33.091759, 37.656460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186893, 32.384663, 38.104530>,  <33.902470, 32.416451, 37.480976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186893, 32.384663, 38.104530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072781, 32.767323, 38.081085>,  <34.004314, 32.996918, 38.067017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.072781, 32.767323, 38.081085>,  <34.186893, 32.384663, 38.104530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.072781, 32.767323, 38.081085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071774, 0.039662, 0.996632,
		0.955752, 0.288530, 0.057347,
		-0.285283, 0.956649, -0.058616,
		33.987194, 33.054317, 38.063499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.525730, 32.682896, 38.626007>,  <34.186893, 32.384663, 38.104530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.525730, 32.682896, 38.626007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228405, 32.938953, 38.548340>,  <34.050011, 33.092587, 38.501740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.228405, 32.938953, 38.548340>,  <34.525730, 32.682896, 38.626007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.228405, 32.938953, 38.548340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119543, 0.158469, 0.980101,
		0.658173, 0.751735, -0.041268,
		-0.743315, 0.640143, -0.194165,
		34.005409, 33.130997, 38.490089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.732601, 33.275826, 38.923897>,  <34.525730, 32.682896, 38.626007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.732601, 33.275826, 38.923897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336643, 33.300571, 38.872849>,  <34.099068, 33.315418, 38.842220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.336643, 33.300571, 38.872849>,  <34.732601, 33.275826, 38.923897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.336643, 33.300571, 38.872849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103120, 0.303837, 0.947127,
		0.097374, 0.950713, -0.294386,
		-0.989891, 0.061868, -0.127623,
		34.039677, 33.319134, 38.834560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608646, 33.852707, 39.214046>,  <34.732601, 33.275826, 38.923897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608646, 33.852707, 39.214046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251770, 33.672165, 39.220539>,  <34.037643, 33.563839, 39.224434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.251770, 33.672165, 39.220539>,  <34.608646, 33.852707, 39.214046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.251770, 33.672165, 39.220539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071890, 0.177401, 0.981509,
		-0.445892, 0.874531, -0.190725,
		-0.892195, -0.451358, 0.016231,
		33.984112, 33.536758, 39.225407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.132793, 34.379997, 39.487587>,  <34.608646, 33.852707, 39.214046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.132793, 34.379997, 39.487587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940273, 34.031727, 39.528152>,  <33.824760, 33.822765, 39.552490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.940273, 34.031727, 39.528152>,  <34.132793, 34.379997, 39.487587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.940273, 34.031727, 39.528152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267718, 0.256173, 0.928818,
		-0.834674, 0.419888, -0.356390,
		-0.481297, -0.870672, 0.101410,
		33.795883, 33.770527, 39.558575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.545784, 34.546669, 39.884857>,  <34.132793, 34.379997, 39.487587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.545784, 34.546669, 39.884857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595047, 34.152870, 39.934803>,  <33.624603, 33.916592, 39.964771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595047, 34.152870, 39.934803>,  <33.545784, 34.546669, 39.884857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595047, 34.152870, 39.934803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064217, 0.117649, 0.990977,
		-0.990308, -0.130060, -0.048733,
		0.123153, -0.984501, 0.124861,
		33.631992, 33.857521, 39.972260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150433, 34.419632, 40.409027>,  <33.545784, 34.546669, 39.884857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150433, 34.419632, 40.409027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392365, 34.101460, 40.393730>,  <33.537525, 33.910557, 40.384552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.392365, 34.101460, 40.393730>,  <33.150433, 34.419632, 40.409027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.392365, 34.101460, 40.393730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079217, -0.107875, 0.991003,
		-0.792401, -0.596363, -0.128259,
		0.604834, -0.795433, -0.038238,
		33.573814, 33.862831, 40.382259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.806942, 33.895889, 40.887478>,  <33.150433, 34.419632, 40.409027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.806942, 33.895889, 40.887478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186039, 33.773026, 40.852962>,  <33.413498, 33.699306, 40.832253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186039, 33.773026, 40.852962>,  <32.806942, 33.895889, 40.887478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186039, 33.773026, 40.852962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013050, -0.232907, 0.972412,
		-0.318780, -0.922718, -0.216726,
		0.947739, -0.307157, -0.086287,
		33.470360, 33.680878, 40.827076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.858074, 33.078098, 41.150478>,  <32.806942, 33.895889, 40.887478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.858074, 33.078098, 41.150478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198540, 33.286396, 41.176823>,  <33.402821, 33.411377, 41.192631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.198540, 33.286396, 41.176823>,  <32.858074, 33.078098, 41.150478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.198540, 33.286396, 41.176823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047228, -0.200952, 0.978462,
		0.522768, -0.829723, -0.195637,
		0.851166, 0.520748, 0.065865,
		33.453888, 33.442619, 41.196583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.326405, 32.681282, 41.628914>,  <32.858074, 33.078098, 41.150478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.326405, 32.681282, 41.628914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504505, 33.039379, 41.635838>,  <33.611366, 33.254238, 41.639992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.504505, 33.039379, 41.635838>,  <33.326405, 32.681282, 41.628914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504505, 33.039379, 41.635838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211792, -0.124076, 0.969407,
		0.869999, -0.427962, -0.244849,
		0.445249, 0.895240, 0.017307,
		33.638081, 33.307953, 41.641029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.896286, 32.592213, 41.994587>,  <33.326405, 32.681282, 41.628914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.896286, 32.592213, 41.994587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882221, 32.990829, 42.024696>,  <33.873783, 33.230000, 42.042763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.882221, 32.990829, 42.024696>,  <33.896286, 32.592213, 41.994587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882221, 32.990829, 42.024696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245729, -0.064391, 0.967198,
		0.968701, 0.052502, -0.242615,
		-0.035158, 0.996543, 0.075277,
		33.871674, 33.289791, 42.047279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535305, 32.807442, 42.340416>,  <33.896286, 32.592213, 41.994587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535305, 32.807442, 42.340416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263401, 33.095245, 42.397320>,  <34.100258, 33.267929, 42.431461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.263401, 33.095245, 42.397320>,  <34.535305, 32.807442, 42.340416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.263401, 33.095245, 42.397320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198638, -0.006113, 0.980054,
		0.706027, 0.694457, -0.138767,
		-0.679757, 0.719508, 0.142261,
		34.059475, 33.311096, 42.439999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846603, 33.272861, 42.785194>,  <34.535305, 32.807442, 42.340416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846603, 33.272861, 42.785194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460922, 33.367123, 42.833832>,  <34.229515, 33.423679, 42.863014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.460922, 33.367123, 42.833832>,  <34.846603, 33.272861, 42.785194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.460922, 33.367123, 42.833832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151635, 0.113787, 0.981865,
		0.217546, 0.965152, -0.145447,
		-0.964199, 0.235655, 0.121597,
		34.171661, 33.437820, 42.870312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.835262, 33.855228, 43.168491>,  <34.846603, 33.272861, 42.785194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.835262, 33.855228, 43.168491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454449, 33.735676, 43.194729>,  <34.225960, 33.663944, 43.210472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.454449, 33.735676, 43.194729>,  <34.835262, 33.855228, 43.168491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.454449, 33.735676, 43.194729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039126, 0.093714, 0.994830,
		-0.303484, 0.949678, -0.077524,
		-0.952033, -0.298881, 0.065598,
		34.168839, 33.646011, 43.214409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462711, 34.378479, 43.488457>,  <34.835262, 33.855228, 43.168491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462711, 34.378479, 43.488457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268314, 34.035259, 43.554859>,  <34.151676, 33.829327, 43.594700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.268314, 34.035259, 43.554859>,  <34.462711, 34.378479, 43.488457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.268314, 34.035259, 43.554859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038993, 0.168472, 0.984935,
		-0.873095, 0.485141, -0.048418,
		-0.485989, -0.858053, 0.166009,
		34.122517, 33.777843, 43.604664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.890358, 34.528728, 43.867439>,  <34.462711, 34.378479, 43.488457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.890358, 34.528728, 43.867439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931137, 34.135384, 43.927586>,  <33.955605, 33.899376, 43.963673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.931137, 34.135384, 43.927586>,  <33.890358, 34.528728, 43.867439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.931137, 34.135384, 43.927586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063221, 0.144441, 0.987492,
		-0.992779, -0.110177, -0.047444,
		0.101946, -0.983361, 0.150363,
		33.961720, 33.840374, 43.972694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.457901, 34.296505, 44.458504>,  <33.890358, 34.528728, 43.867439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.457901, 34.296505, 44.458504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726101, 34.000328, 44.439842>,  <33.887020, 33.822624, 44.428646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.726101, 34.000328, 44.439842>,  <33.457901, 34.296505, 44.458504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726101, 34.000328, 44.439842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016074, -0.077372, 0.996873,
		-0.741733, -0.667655, -0.063780,
		0.670502, -0.740439, -0.046657,
		33.927250, 33.778198, 44.425846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.215164, 33.795483, 44.992584>,  <33.457901, 34.296505, 44.458504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.215164, 33.795483, 44.992584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590160, 33.689919, 44.901833>,  <33.815159, 33.626579, 44.847382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.590160, 33.689919, 44.901833>,  <33.215164, 33.795483, 44.992584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590160, 33.689919, 44.901833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226602, -0.031902, 0.973465,
		-0.264143, -0.964020, 0.029894,
		0.937486, -0.263908, -0.226875,
		33.871407, 33.610744, 44.833771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.354321, 33.282722, 45.492676>,  <33.215164, 33.795483, 44.992584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.354321, 33.282722, 45.492676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702106, 33.415703, 45.346519>,  <33.910778, 33.495491, 45.258823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.702106, 33.415703, 45.346519>,  <33.354321, 33.282722, 45.492676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.702106, 33.415703, 45.346519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386791, 0.001969, 0.922165,
		0.307298, -0.943117, -0.126878,
		0.869460, 0.332455, -0.365394,
		33.962944, 33.515438, 45.236900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.859146, 32.828220, 45.816875>,  <33.354321, 33.282722, 45.492676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.859146, 32.828220, 45.816875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088856, 33.142635, 45.725353>,  <34.226681, 33.331284, 45.670441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.088856, 33.142635, 45.725353>,  <33.859146, 32.828220, 45.816875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.088856, 33.142635, 45.725353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352753, 0.014620, 0.935602,
		0.738768, -0.618000, -0.268883,
		0.574271, 0.786042, -0.228802,
		34.261139, 33.378448, 45.656712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.389759, 32.760349, 46.353062>,  <33.859146, 32.828220, 45.816875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.389759, 32.760349, 46.353062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461258, 33.120239, 46.193794>,  <34.504158, 33.336174, 46.098232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.461258, 33.120239, 46.193794>,  <34.389759, 32.760349, 46.353062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.461258, 33.120239, 46.193794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514650, 0.259411, 0.817215,
		0.838561, -0.350993, -0.416676,
		0.178747, 0.899728, -0.398170,
		34.514881, 33.390156, 46.074345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982609, 32.788494, 46.316692>,  <34.389759, 32.760349, 46.353062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982609, 32.788494, 46.316692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894394, 33.178612, 46.311619>,  <34.841465, 33.412682, 46.308575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.894394, 33.178612, 46.311619>,  <34.982609, 32.788494, 46.316692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894394, 33.178612, 46.311619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574089, 0.140305, 0.806682,
		0.788533, 0.170626, -0.590849,
		-0.220540, 0.975295, -0.012681,
		34.828232, 33.471199, 46.307816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.623432, 33.144711, 46.397808>,  <34.982609, 32.788494, 46.316692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.623432, 33.144711, 46.397808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332535, 33.394588, 46.511566>,  <35.157997, 33.544514, 46.579819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.332535, 33.394588, 46.511566>,  <35.623432, 33.144711, 46.397808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.332535, 33.394588, 46.511566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533594, 0.253928, 0.806721,
		0.431736, 0.738432, -0.517999,
		-0.727242, 0.624692, 0.284393,
		35.114361, 33.581997, 46.596886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007492, 33.698971, 46.579670>,  <35.623432, 33.144711, 46.397808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007492, 33.698971, 46.579670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644550, 33.745850, 46.741146>,  <35.426785, 33.773979, 46.838032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.644550, 33.745850, 46.741146>,  <36.007492, 33.698971, 46.579670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.644550, 33.745850, 46.741146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420049, 0.215894, 0.881447,
		0.016152, 0.969357, -0.245123,
		-0.907358, 0.117201, 0.403690,
		35.372341, 33.781010, 46.862255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.996361, 34.415985, 46.898174>,  <36.007492, 33.698971, 46.579670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.996361, 34.415985, 46.898174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728477, 34.175995, 47.073227>,  <35.567749, 34.032001, 47.178261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.728477, 34.175995, 47.073227>,  <35.996361, 34.415985, 46.898174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.728477, 34.175995, 47.073227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331483, 0.285830, 0.899122,
		-0.664542, 0.747214, 0.007461,
		-0.669704, -0.599977, 0.437635,
		35.527565, 33.996002, 47.204517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.900784, 34.695148, 47.617512>,  <35.996361, 34.415985, 46.898174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.900784, 34.695148, 47.617512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733150, 34.335129, 47.665310>,  <35.632572, 34.119118, 47.693989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.733150, 34.335129, 47.665310>,  <35.900784, 34.695148, 47.617512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.733150, 34.335129, 47.665310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219221, 0.027406, 0.975290,
		-0.881086, 0.434921, 0.185825,
		-0.419081, -0.900052, 0.119491,
		35.607426, 34.065113, 47.701157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.388226, 34.759182, 48.196709>,  <35.900784, 34.695148, 47.617512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.388226, 34.759182, 48.196709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474926, 34.369518, 48.171307>,  <35.526947, 34.135719, 48.156067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.474926, 34.369518, 48.171307>,  <35.388226, 34.759182, 48.196709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.474926, 34.369518, 48.171307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120021, -0.037965, 0.992045,
		-0.968822, -0.222644, 0.108691,
		0.216747, -0.974160, -0.063503,
		35.539951, 34.077271, 48.152256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973564, 34.394619, 48.724205>,  <35.388226, 34.759182, 48.196709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973564, 34.394619, 48.724205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297215, 34.182789, 48.622326>,  <35.491405, 34.055691, 48.561199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.297215, 34.182789, 48.622326>,  <34.973564, 34.394619, 48.724205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.297215, 34.182789, 48.622326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271453, -0.047572, 0.961275,
		-0.521183, -0.846928, 0.105262,
		0.809124, -0.529574, -0.254695,
		35.539951, 34.023918, 48.545918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043056, 33.854675, 49.213089>,  <34.973564, 34.394619, 48.724205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043056, 33.854675, 49.213089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401516, 33.863018, 49.035782>,  <35.616592, 33.868023, 48.929398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.401516, 33.863018, 49.035782>,  <35.043056, 33.854675, 49.213089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.401516, 33.863018, 49.035782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442559, -0.115372, 0.889287,
		-0.032595, -0.993103, -0.112619,
		0.896147, 0.020854, -0.443267,
		35.670361, 33.869274, 48.902802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.427780, 33.335274, 49.405991>,  <35.043056, 33.854675, 49.213089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.427780, 33.335274, 49.405991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724068, 33.565266, 49.266998>,  <35.901840, 33.703259, 49.183601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.724068, 33.565266, 49.266998>,  <35.427780, 33.335274, 49.405991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.724068, 33.565266, 49.266998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600193, -0.333974, 0.726794,
		0.301839, -0.746904, -0.592476,
		0.740717, 0.574975, -0.347480,
		35.946281, 33.737759, 49.162754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.046818, 32.901112, 49.405338>,  <35.427780, 33.335274, 49.405991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.046818, 32.901112, 49.405338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167774, 33.282284, 49.414104>,  <36.240349, 33.510986, 49.419365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.167774, 33.282284, 49.414104>,  <36.046818, 32.901112, 49.405338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.167774, 33.282284, 49.414104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667099, -0.227998, 0.709221,
		0.680834, -0.199848, -0.704645,
		0.302394, 0.952931, 0.021911,
		36.258492, 33.568165, 49.420677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726170, 32.735252, 49.512436>,  <36.046818, 32.901112, 49.405338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726170, 32.735252, 49.512436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665878, 33.120323, 49.602360>,  <36.629704, 33.351364, 49.656315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.665878, 33.120323, 49.602360>,  <36.726170, 32.735252, 49.512436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.665878, 33.120323, 49.602360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594928, -0.093282, 0.798348,
		0.789520, 0.254077, -0.558662,
		-0.150729, 0.962675, 0.224806,
		36.620659, 33.409126, 49.669800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436211, 33.046078, 49.582710>,  <36.726170, 32.735252, 49.512436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436211, 33.046078, 49.582710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174545, 33.264542, 49.792007>,  <37.017548, 33.395618, 49.917587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174545, 33.264542, 49.792007>,  <37.436211, 33.046078, 49.582710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174545, 33.264542, 49.792007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502357, -0.203436, 0.840388,
		0.565430, 0.812605, -0.141286,
		-0.654161, 0.546156, 0.523247,
		36.978298, 33.428387, 49.948982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.853058, 33.443375, 49.956947>,  <37.436211, 33.046078, 49.582710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.853058, 33.443375, 49.956947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507042, 33.482647, 50.153751>,  <37.299435, 33.506210, 50.271835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.507042, 33.482647, 50.153751>,  <37.853058, 33.443375, 49.956947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.507042, 33.482647, 50.153751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498469, 0.056924, 0.865036,
		0.056924, 0.993539, -0.098181,
		-0.865036, 0.098181, 0.492009,
		37.247532, 33.512100, 50.301353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.985859, 33.862461, 50.529236>,  <37.853058, 33.443375, 49.956947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.985859, 33.862461, 50.529236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659161, 33.650440, 50.620426>,  <37.463142, 33.523228, 50.675140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659161, 33.650440, 50.620426>,  <37.985859, 33.862461, 50.529236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659161, 33.650440, 50.620426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347652, -0.136730, 0.927601,
		-0.460502, 0.836872, 0.295946,
		-0.816747, -0.530048, 0.227976,
		37.414135, 33.491425, 50.688820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711487, 34.133644, 51.126240>,  <37.985859, 33.862461, 50.529236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711487, 34.133644, 51.126240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537094, 33.773941, 51.140442>,  <37.432457, 33.558121, 51.148964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.537094, 33.773941, 51.140442>,  <37.711487, 34.133644, 51.126240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.537094, 33.773941, 51.140442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366934, -0.141596, 0.919407,
		-0.821753, 0.413875, 0.391701,
		-0.435984, -0.899254, 0.035508,
		37.406300, 33.504166, 51.151093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.370430, 34.039280, 51.785034>,  <37.711487, 34.133644, 51.126240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.370430, 34.039280, 51.785034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427265, 33.669609, 51.643211>,  <37.461365, 33.447807, 51.558117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.427265, 33.669609, 51.643211>,  <37.370430, 34.039280, 51.785034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.427265, 33.669609, 51.643211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303686, -0.300216, 0.904237,
		-0.942118, -0.236154, 0.238002,
		0.142087, -0.924176, -0.354556,
		37.469891, 33.392357, 51.536846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972977, 33.508595, 52.108982>,  <37.370430, 34.039280, 51.785034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972977, 33.508595, 52.108982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318638, 33.353096, 51.981159>,  <37.526035, 33.259796, 51.904465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.318638, 33.353096, 51.981159>,  <36.972977, 33.508595, 52.108982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.318638, 33.353096, 51.981159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218058, -0.283046, 0.933989,
		-0.453533, -0.876792, -0.159826,
		0.864152, -0.388743, -0.319562,
		37.577885, 33.236473, 51.885292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.034233, 32.769608, 52.231186>,  <36.972977, 33.508595, 52.108982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.034233, 32.769608, 52.231186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398659, 32.932983, 52.208794>,  <37.617313, 33.031010, 52.195358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.398659, 32.932983, 52.208794>,  <37.034233, 32.769608, 52.231186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.398659, 32.932983, 52.208794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226912, -0.383446, 0.895254,
		0.344193, -0.828339, -0.442025,
		0.911066, 0.408441, -0.055981,
		37.671978, 33.055515, 52.191998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.567303, 32.263199, 52.487221>,  <37.034233, 32.769608, 52.231186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.567303, 32.263199, 52.487221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670609, 32.644745, 52.548466>,  <37.732594, 32.873672, 52.585213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670609, 32.644745, 52.548466>,  <37.567303, 32.263199, 52.487221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670609, 32.644745, 52.548466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289108, -0.227537, 0.929862,
		0.921801, -0.195883, -0.334534,
		0.258263, 0.953864, 0.153112,
		37.748089, 32.930904, 52.594398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.998085, 32.108311, 53.020557>,  <37.567303, 32.263199, 52.487221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.998085, 32.108311, 53.020557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972706, 32.507492, 53.023865>,  <37.957478, 32.747002, 53.025848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.972706, 32.507492, 53.023865>,  <37.998085, 32.108311, 53.020557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.972706, 32.507492, 53.023865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317764, 0.012351, 0.948089,
		0.946044, 0.062783, -0.317897,
		-0.063450, 0.997951, 0.008266,
		37.953671, 32.806877, 53.026344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678478, 32.356739, 53.251804>,  <37.998085, 32.108311, 53.020557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678478, 32.356739, 53.251804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394371, 32.626801, 53.331493>,  <38.223907, 32.788837, 53.379307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.394371, 32.626801, 53.331493>,  <38.678478, 32.356739, 53.251804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.394371, 32.626801, 53.331493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375972, 0.124579, 0.918219,
		0.595116, 0.727085, -0.342321,
		-0.710269, 0.675150, 0.199225,
		38.181290, 32.829346, 53.391262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.371639, 32.694256, 53.454941>,  <38.678478, 32.356739, 53.251804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.371639, 32.694256, 53.454941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734722, 32.678288, 53.287861>,  <39.952572, 32.668705, 53.187614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.734722, 32.678288, 53.287861>,  <39.371639, 32.694256, 53.454941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.734722, 32.678288, 53.287861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400452, 0.214884, -0.890765,
		0.125321, 0.975823, 0.179064,
		0.907708, -0.039925, -0.417699,
		40.007034, 32.666309, 53.162552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.553741, 33.355080, 53.081821>,  <39.371639, 32.694256, 53.454941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.553741, 33.355080, 53.081821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681503, 33.004635, 52.937370>,  <39.758160, 32.794369, 52.850700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.681503, 33.004635, 52.937370>,  <39.553741, 33.355080, 53.081821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.681503, 33.004635, 52.937370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439096, 0.200873, -0.875697,
		0.839746, 0.438274, -0.320535,
		0.319408, -0.876108, -0.361127,
		39.777325, 32.741802, 52.829033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.048912, 33.377140, 52.580681>,  <39.553741, 33.355080, 53.081821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.048912, 33.377140, 52.580681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289181, 33.064461, 52.513580>,  <39.433342, 32.876854, 52.473320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.289181, 33.064461, 52.513580>,  <39.048912, 33.377140, 52.580681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.289181, 33.064461, 52.513580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331971, -0.052981, -0.941800,
		0.727316, 0.621402, -0.291326,
		0.600672, -0.781698, -0.167753,
		39.469383, 32.829952, 52.463253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.298416, 33.319195, 51.903084>,  <39.048912, 33.377140, 52.580681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.298416, 33.319195, 51.903084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394993, 32.947239, 52.014091>,  <39.452938, 32.724064, 52.080696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.394993, 32.947239, 52.014091>,  <39.298416, 33.319195, 51.903084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.394993, 32.947239, 52.014091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161624, -0.320513, -0.933354,
		0.956862, 0.180493, -0.227676,
		0.241437, -0.929889, 0.277515,
		39.467422, 32.668274, 52.097347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.718380, 33.061321, 51.368179>,  <39.298416, 33.319195, 51.903084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.718380, 33.061321, 51.368179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570580, 32.746395, 51.565605>,  <39.481899, 32.557438, 51.684059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.570580, 32.746395, 51.565605>,  <39.718380, 33.061321, 51.368179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.570580, 32.746395, 51.565605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020552, -0.524100, -0.851409,
		0.929003, -0.324740, 0.177475,
		-0.369501, -0.787314, 0.493564,
		39.459728, 32.510201, 51.713673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110512, 32.376163, 51.581207>,  <39.718380, 33.061321, 51.368179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110512, 32.376163, 51.581207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730907, 32.310280, 51.473686>,  <39.503147, 32.270748, 51.409172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.730907, 32.310280, 51.473686>,  <40.110512, 32.376163, 51.581207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730907, 32.310280, 51.473686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311495, -0.358631, -0.879974,
		0.048538, -0.918833, 0.391650,
		-0.949007, -0.164709, -0.268805,
		39.446205, 32.260868, 51.393044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.053089, 31.727205, 51.184868>,  <40.110512, 32.376163, 51.581207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.053089, 31.727205, 51.184868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723721, 31.924194, 51.072121>,  <39.526100, 32.042389, 51.004471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.723721, 31.924194, 51.072121>,  <40.053089, 31.727205, 51.184868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.723721, 31.924194, 51.072121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208929, -0.198710, -0.957530,
		-0.527566, -0.847340, 0.060730,
		-0.823421, 0.492472, -0.281867,
		39.476696, 32.071938, 50.987560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.842335, 31.326391, 50.554245>,  <40.053089, 31.727205, 51.184868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.842335, 31.326391, 50.554245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676243, 31.689919, 50.538071>,  <39.576588, 31.908035, 50.528366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.676243, 31.689919, 50.538071>,  <39.842335, 31.326391, 50.554245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.676243, 31.689919, 50.538071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010295, -0.049142, -0.998739,
		-0.909658, -0.414291, 0.029762,
		-0.415231, 0.908817, -0.040438,
		39.551674, 31.962564, 50.525940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.231632, 31.291599, 50.084919>,  <39.842335, 31.326391, 50.554245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.231632, 31.291599, 50.084919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351723, 31.672861, 50.099670>,  <39.423779, 31.901619, 50.108521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.351723, 31.672861, 50.099670>,  <39.231632, 31.291599, 50.084919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.351723, 31.672861, 50.099670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028934, 0.029542, -0.999145,
		-0.953428, 0.301040, -0.018709,
		0.300229, 0.953154, 0.036876,
		39.441792, 31.958807, 50.110733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838055, 31.704254, 49.528774>,  <39.231632, 31.291599, 50.084919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838055, 31.704254, 49.528774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168972, 31.913843, 49.609814>,  <39.367523, 32.039597, 49.658436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168972, 31.913843, 49.609814>,  <38.838055, 31.704254, 49.528774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168972, 31.913843, 49.609814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163820, 0.119947, -0.979171,
		-0.537358, 0.843248, 0.013394,
		0.827290, 0.523971, 0.202595,
		39.417160, 32.071033, 49.670593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838646, 32.250893, 49.105122>,  <38.838055, 31.704254, 49.528774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838646, 32.250893, 49.105122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217556, 32.245426, 49.233177>,  <39.444901, 32.242146, 49.310013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.217556, 32.245426, 49.233177>,  <38.838646, 32.250893, 49.105122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.217556, 32.245426, 49.233177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318458, 0.150892, -0.935850,
		-0.035519, 0.988456, 0.147287,
		0.947271, -0.013664, 0.320141,
		39.501736, 32.241325, 49.329220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093346, 32.811398, 48.767345>,  <38.838646, 32.250893, 49.105122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093346, 32.811398, 48.767345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411350, 32.592041, 48.871056>,  <39.602154, 32.460426, 48.933281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.411350, 32.592041, 48.871056>,  <39.093346, 32.811398, 48.767345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411350, 32.592041, 48.871056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366924, 0.094379, -0.925451,
		0.483042, 0.830876, 0.276251,
		0.795008, -0.548395, 0.259279,
		39.649853, 32.427521, 48.948841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.654499, 33.240173, 48.477337>,  <39.093346, 32.811398, 48.767345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.654499, 33.240173, 48.477337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819584, 32.883736, 48.552834>,  <39.918636, 32.669872, 48.598133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.819584, 32.883736, 48.552834>,  <39.654499, 33.240173, 48.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.819584, 32.883736, 48.552834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400222, -0.008733, -0.916377,
		0.818223, 0.453741, 0.353030,
		0.412714, -0.891091, 0.188742,
		39.943398, 32.616409, 48.609455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328533, 33.275314, 48.259113>,  <39.654499, 33.240173, 48.477337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328533, 33.275314, 48.259113> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208519, 32.893749, 48.261230>,  <40.136509, 32.664810, 48.262501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.208519, 32.893749, 48.261230>,  <40.328533, 33.275314, 48.259113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.208519, 32.893749, 48.261230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143914, -0.050751, -0.988288,
		0.943009, -0.295761, 0.152509,
		-0.300037, -0.953913, 0.005295,
		40.118507, 32.607574, 48.262817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.678928, 32.908722, 47.735336>,  <40.328533, 33.275314, 48.259113>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.678928, 32.908722, 47.735336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383209, 32.644962, 47.789928>,  <40.205776, 32.486706, 47.822681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383209, 32.644962, 47.789928>,  <40.678928, 32.908722, 47.735336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383209, 32.644962, 47.789928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035610, -0.164109, -0.985799,
		0.672432, -0.733663, 0.097845,
		-0.739302, -0.659399, 0.136478,
		40.161419, 32.447144, 47.830872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.855801, 32.371429, 47.268463>,  <40.678928, 32.908722, 47.735336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.855801, 32.371429, 47.268463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461273, 32.342350, 47.327644>,  <40.224556, 32.324902, 47.363152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461273, 32.342350, 47.327644>,  <40.855801, 32.371429, 47.268463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461273, 32.342350, 47.327644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138246, -0.124069, -0.982596,
		0.089787, -0.989607, 0.112321,
		-0.986320, -0.072697, 0.147949,
		40.165379, 32.320541, 47.372028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.503681, 31.996151, 46.799160>,  <40.855801, 32.371429, 47.268463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.503681, 31.996151, 46.799160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137188, 32.099960, 46.921257>,  <39.917294, 32.162247, 46.994514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.137188, 32.099960, 46.921257>,  <40.503681, 31.996151, 46.799160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.137188, 32.099960, 46.921257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260111, 0.194163, -0.945856,
		-0.304739, -0.946017, -0.110393,
		-0.916230, 0.259524, 0.305238,
		39.862320, 32.177818, 47.012829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.919315, 31.562466, 46.439415>,  <40.503681, 31.996151, 46.799160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.919315, 31.562466, 46.439415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779018, 31.918547, 46.555702>,  <39.694839, 32.132195, 46.625473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.779018, 31.918547, 46.555702>,  <39.919315, 31.562466, 46.439415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.779018, 31.918547, 46.555702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276091, 0.198342, -0.940444,
		-0.894849, -0.410117, 0.176210,
		-0.350742, 0.890205, 0.290716,
		39.673798, 32.185608, 46.642918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.244106, 31.555363, 46.262741>,  <39.919315, 31.562466, 46.439415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.244106, 31.555363, 46.262741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342434, 31.940121, 46.310627>,  <39.401428, 32.170975, 46.339359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.342434, 31.940121, 46.310627>,  <39.244106, 31.555363, 46.262741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.342434, 31.940121, 46.310627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339607, 0.201141, -0.918809,
		-0.907878, 0.185202, 0.376110,
		0.245816, 0.961895, 0.119715,
		39.416180, 32.228691, 46.346542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.692528, 31.843227, 46.112701>,  <39.244106, 31.555363, 46.262741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.692528, 31.843227, 46.112701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939014, 32.156239, 46.077076>,  <39.086906, 32.344044, 46.055698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.939014, 32.156239, 46.077076>,  <38.692528, 31.843227, 46.112701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.939014, 32.156239, 46.077076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465590, 0.270735, -0.842573,
		-0.635223, 0.560673, 0.531167,
		0.616213, 0.782527, -0.089067,
		39.123878, 32.390995, 46.050358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.354191, 32.537346, 46.005798>,  <38.692528, 31.843227, 46.112701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.354191, 32.537346, 46.005798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722809, 32.597523, 45.862625>,  <38.943981, 32.633629, 45.776722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.722809, 32.597523, 45.862625>,  <38.354191, 32.537346, 46.005798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.722809, 32.597523, 45.862625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382646, 0.195661, -0.902939,
		-0.065807, 0.969063, 0.237877,
		0.921548, 0.150443, -0.357933,
		38.999275, 32.642654, 45.755245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.245285, 33.077164, 45.453716>,  <38.354191, 32.537346, 46.005798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.245285, 33.077164, 45.453716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617527, 32.951248, 45.379002>,  <38.840870, 32.875698, 45.334171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.617527, 32.951248, 45.379002>,  <38.245285, 33.077164, 45.453716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.617527, 32.951248, 45.379002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.120306, 0.218911, -0.968300,
		0.345699, 0.923573, 0.165847,
		0.930601, -0.314788, -0.186789,
		38.896706, 32.856812, 45.322964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.537193, 33.633034, 45.148094>,  <38.245285, 33.077164, 45.453716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.537193, 33.633034, 45.148094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728088, 33.296600, 45.046249>,  <38.842625, 33.094742, 44.985142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.728088, 33.296600, 45.046249>,  <38.537193, 33.633034, 45.148094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.728088, 33.296600, 45.046249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208809, 0.172900, -0.962551,
		0.853604, 0.512533, -0.093110,
		0.477240, -0.841080, -0.254609,
		38.871262, 33.044277, 44.969868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.953579, 33.776669, 44.606121>,  <38.537193, 33.633034, 45.148094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.953579, 33.776669, 44.606121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985378, 33.378643, 44.582367>,  <39.004456, 33.139828, 44.568115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985378, 33.378643, 44.582367>,  <38.953579, 33.776669, 44.606121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985378, 33.378643, 44.582367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138556, 0.047970, -0.989192,
		0.987159, 0.086864, -0.134059,
		0.079495, -0.995065, -0.059389,
		39.009228, 33.080124, 44.564548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474087, 33.571434, 44.048084>,  <38.953579, 33.776669, 44.606121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474087, 33.571434, 44.048084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241280, 33.248833, 44.089657>,  <39.101597, 33.055271, 44.114601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241280, 33.248833, 44.089657>,  <39.474087, 33.571434, 44.048084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241280, 33.248833, 44.089657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177168, 0.001024, -0.984180,
		0.793642, -0.591224, -0.143483,
		-0.582018, -0.806507, 0.103933,
		39.066673, 33.006882, 44.120838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.678955, 33.184620, 43.514454>,  <39.474087, 33.571434, 44.048084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.678955, 33.184620, 43.514454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337181, 32.993202, 43.595379>,  <39.132118, 32.878349, 43.643936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337181, 32.993202, 43.595379>,  <39.678955, 33.184620, 43.514454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337181, 32.993202, 43.595379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185177, -0.083331, -0.979166,
		0.485437, -0.874098, -0.017416,
		-0.854436, -0.478549, 0.202315,
		39.080849, 32.849636, 43.656075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.672081, 32.571041, 43.113686>,  <39.678955, 33.184620, 43.514454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.672081, 32.571041, 43.113686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279552, 32.603596, 43.183407>,  <39.044037, 32.623131, 43.225239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.279552, 32.603596, 43.183407>,  <39.672081, 32.571041, 43.113686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.279552, 32.603596, 43.183407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183228, -0.119485, -0.975782,
		-0.058589, -0.989495, 0.132166,
		-0.981323, 0.081386, 0.174303,
		38.985157, 32.628014, 43.235699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.376232, 32.037594, 42.769379>,  <39.672081, 32.571041, 43.113686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.376232, 32.037594, 42.769379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089664, 32.315716, 42.792343>,  <38.917725, 32.482590, 42.806122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.089664, 32.315716, 42.792343>,  <39.376232, 32.037594, 42.769379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089664, 32.315716, 42.792343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246084, -0.174836, -0.953350,
		-0.652834, -0.697122, 0.296359,
		-0.716415, 0.695308, 0.057412,
		38.874741, 32.524307, 42.809566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819839, 31.805145, 42.299183>,  <39.376232, 32.037594, 42.769379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819839, 31.805145, 42.299183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707645, 32.186920, 42.339928>,  <38.640331, 32.415985, 42.364376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707645, 32.186920, 42.339928>,  <38.819839, 31.805145, 42.299183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707645, 32.186920, 42.339928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304144, 0.012282, -0.952547,
		-0.910399, -0.298153, 0.286842,
		-0.280482, 0.954439, 0.101863,
		38.623501, 32.473251, 42.370487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.062752, 31.807894, 42.246136>,  <38.819839, 31.805145, 42.299183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.062752, 31.807894, 42.246136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211926, 32.159580, 42.127544>,  <38.301430, 32.370590, 42.056389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.211926, 32.159580, 42.127544>,  <38.062752, 31.807894, 42.246136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.211926, 32.159580, 42.127544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374476, -0.149725, -0.915068,
		-0.848931, 0.452287, 0.273407,
		0.372938, 0.879215, -0.296477,
		38.323807, 32.423344, 42.038601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.546154, 32.097225, 41.807991>,  <38.062752, 31.807894, 42.246136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.546154, 32.097225, 41.807991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863979, 32.324970, 41.723614>,  <38.054676, 32.461617, 41.672989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.863979, 32.324970, 41.723614>,  <37.546154, 32.097225, 41.807991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.863979, 32.324970, 41.723614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253781, -0.004192, -0.967253,
		-0.551599, 0.822078, 0.141162,
		0.794565, 0.569360, -0.210940,
		38.102348, 32.495777, 41.660332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.269402, 32.681374, 41.428253>,  <37.546154, 32.097225, 41.807991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.269402, 32.681374, 41.428253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659424, 32.679317, 41.339493>,  <37.893436, 32.678085, 41.286236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659424, 32.679317, 41.339493>,  <37.269402, 32.681374, 41.428253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659424, 32.679317, 41.339493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221530, -0.084854, -0.971455,
		-0.013836, 0.996380, -0.083876,
		0.975055, -0.005140, -0.221902,
		37.951939, 32.677776, 41.272923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.393124, 33.026939, 40.861629>,  <37.269402, 32.681374, 41.428253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.393124, 33.026939, 40.861629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735912, 32.821091, 40.872700>,  <37.941586, 32.697582, 40.879341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.735912, 32.821091, 40.872700>,  <37.393124, 33.026939, 40.861629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.735912, 32.821091, 40.872700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013773, -0.030817, -0.999430,
		0.515180, 0.856865, -0.019321,
		0.856972, -0.514620, 0.027678,
		37.993004, 32.666706, 40.881004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873291, 33.335770, 40.372353>,  <37.393124, 33.026939, 40.861629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.873291, 33.335770, 40.372353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989193, 32.955620, 40.417660>,  <38.058735, 32.727531, 40.444843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.989193, 32.955620, 40.417660>,  <37.873291, 33.335770, 40.372353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.989193, 32.955620, 40.417660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060607, -0.099890, -0.993151,
		0.955180, 0.294636, 0.028655,
		0.289755, -0.950375, 0.113270,
		38.076118, 32.670509, 40.451641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480270, 33.165421, 39.925339>,  <37.873291, 33.335770, 40.372353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480270, 33.165421, 39.925339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319164, 32.807652, 40.003101>,  <38.222500, 32.592991, 40.049759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.319164, 32.807652, 40.003101>,  <38.480270, 33.165421, 39.925339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.319164, 32.807652, 40.003101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046844, -0.232260, -0.971525,
		0.914105, -0.382188, 0.135444,
		-0.402763, -0.894420, 0.194407,
		38.198334, 32.539326, 40.061424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842186, 32.715233, 39.444981>,  <38.480270, 33.165421, 39.925339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842186, 32.715233, 39.444981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525211, 32.511177, 39.578735>,  <38.335026, 32.388744, 39.658989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.525211, 32.511177, 39.578735>,  <38.842186, 32.715233, 39.444981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.525211, 32.511177, 39.578735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152200, -0.365497, -0.918285,
		0.590667, -0.778571, 0.211989,
		-0.792432, -0.510136, 0.334385,
		38.287483, 32.358135, 39.679050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920376, 32.050125, 39.149384>,  <38.842186, 32.715233, 39.444981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.920376, 32.050125, 39.149384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534348, 32.088135, 39.247040>,  <38.302731, 32.110943, 39.305634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.534348, 32.088135, 39.247040>,  <38.920376, 32.050125, 39.149384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.534348, 32.088135, 39.247040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261218, -0.277928, -0.924403,
		-0.019989, -0.955890, 0.293043,
		-0.965073, 0.095026, 0.244140,
		38.244827, 32.116642, 39.320282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.619495, 31.561092, 38.667946>,  <38.920376, 32.050125, 39.149384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.619495, 31.561092, 38.667946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324409, 31.809399, 38.774101>,  <38.147358, 31.958382, 38.837795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.324409, 31.809399, 38.774101>,  <38.619495, 31.561092, 38.667946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.324409, 31.809399, 38.774101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379555, -0.056270, -0.923456,
		-0.558315, -0.781975, 0.277125,
		-0.737714, 0.620764, 0.265387,
		38.103096, 31.995628, 38.853718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.991348, 31.254087, 38.387589>,  <38.619495, 31.561092, 38.667946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.991348, 31.254087, 38.387589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920742, 31.639238, 38.469284>,  <37.878376, 31.870329, 38.518299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.920742, 31.639238, 38.469284>,  <37.991348, 31.254087, 38.387589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.920742, 31.639238, 38.469284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220010, 0.163648, -0.961673,
		-0.959394, -0.214687, 0.182955,
		-0.176519, 0.962875, 0.204236,
		37.867786, 31.928101, 38.530556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378181, 31.492296, 38.002293>,  <37.991348, 31.254087, 38.387589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378181, 31.492296, 38.002293> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541443, 31.839031, 38.116837>,  <37.639400, 32.047073, 38.185562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.541443, 31.839031, 38.116837>,  <37.378181, 31.492296, 38.002293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541443, 31.839031, 38.116837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293491, 0.421616, -0.857965,
		-0.864449, 0.266141, 0.426494,
		0.408157, 0.866838, 0.286355,
		37.663891, 32.099083, 38.202744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.854866, 32.031315, 37.862381>,  <37.378181, 31.492296, 38.002293>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.854866, 32.031315, 37.862381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213840, 32.206116, 37.838249>,  <37.429226, 32.310997, 37.823769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.213840, 32.206116, 37.838249>,  <36.854866, 32.031315, 37.862381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.213840, 32.206116, 37.838249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268694, 0.433008, -0.860411,
		-0.349877, 0.788374, 0.506016,
		0.897435, 0.437002, -0.060331,
		37.483070, 32.337215, 37.820148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.637596, 32.634537, 37.620159>,  <36.854866, 32.031315, 37.862381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.637596, 32.634537, 37.620159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031105, 32.603241, 37.555561>,  <37.267208, 32.584461, 37.516804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.031105, 32.603241, 37.555561>,  <36.637596, 32.634537, 37.620159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.031105, 32.603241, 37.555561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087324, 0.577460, -0.811735,
		0.156765, 0.812661, 0.561254,
		0.983768, -0.078241, -0.161491,
		37.326237, 32.579769, 37.507114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950329, 33.345661, 37.529133>,  <36.637596, 32.634537, 37.620159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950329, 33.345661, 37.529133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208645, 33.103222, 37.343399>,  <37.363636, 32.957760, 37.231960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.208645, 33.103222, 37.343399>,  <36.950329, 33.345661, 37.529133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208645, 33.103222, 37.343399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172416, 0.476678, -0.862004,
		0.743794, 0.636731, 0.203333,
		0.645789, -0.606096, -0.464333,
		37.402382, 32.921394, 37.204098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.498665, 33.733601, 37.174110>,  <36.950329, 33.345661, 37.529133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.498665, 33.733601, 37.174110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542179, 33.393764, 36.967670>,  <37.568287, 33.189861, 36.843807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.542179, 33.393764, 36.967670>,  <37.498665, 33.733601, 37.174110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542179, 33.393764, 36.967670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115152, 0.504913, -0.855455,
		0.987373, 0.152488, -0.042907,
		0.108783, -0.849594, -0.516097,
		37.574814, 33.138885, 36.812840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.015724, 33.358021, 37.101097>,  <37.498665, 33.733601, 37.174110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.015724, 33.358021, 37.101097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943897, 33.460533, 36.721188>,  <37.900803, 33.522041, 36.493240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.943897, 33.460533, 36.721188>,  <38.015724, 33.358021, 37.101097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.943897, 33.460533, 36.721188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967701, -0.219676, 0.123681,
		-0.176946, 0.941308, 0.287452,
		-0.179569, 0.256283, -0.949776,
		37.890026, 33.537418, 36.436256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455460, 33.674599, 36.593647>,  <38.015724, 33.358021, 37.101097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455460, 33.674599, 36.593647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601162, 34.027184, 36.473419>,  <38.688583, 34.238735, 36.401283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.601162, 34.027184, 36.473419>,  <38.455460, 33.674599, 36.593647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.601162, 34.027184, 36.473419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534961, 0.066140, 0.842284,
		0.762322, -0.467598, -0.447456,
		0.364255, 0.881463, -0.300567,
		38.710438, 34.291622, 36.383247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.095402, 33.559746, 36.629208>,  <38.455460, 33.674599, 36.593647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.095402, 33.559746, 36.629208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084667, 33.958614, 36.657280>,  <39.078228, 34.197937, 36.674122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.084667, 33.958614, 36.657280>,  <39.095402, 33.559746, 36.629208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.084667, 33.958614, 36.657280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538514, -0.044728, 0.841429,
		0.842189, 0.060371, -0.535792,
		-0.026833, 0.997173, 0.070180,
		39.076618, 34.257767, 36.678333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.815758, 33.797512, 36.730824>,  <39.095402, 33.559746, 36.629208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.815758, 33.797512, 36.730824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578026, 34.082993, 36.879093>,  <39.435387, 34.254280, 36.968056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.578026, 34.082993, 36.879093>,  <39.815758, 33.797512, 36.730824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.578026, 34.082993, 36.879093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568141, 0.046382, 0.821623,
		0.569203, 0.698910, -0.433050,
		-0.594327, 0.713704, 0.370679,
		39.399727, 34.297104, 36.990295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.299698, 34.172916, 37.021770>,  <39.815758, 33.797512, 36.730824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.299698, 34.172916, 37.021770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963673, 34.312389, 37.188004>,  <39.762058, 34.396072, 37.287743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.963673, 34.312389, 37.188004>,  <40.299698, 34.172916, 37.021770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.963673, 34.312389, 37.188004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455979, 0.038833, 0.889143,
		0.293891, 0.936436, -0.191614,
		-0.840066, 0.348683, 0.415583,
		39.711655, 34.416996, 37.312679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.527630, 34.454407, 37.564209>,  <40.299698, 34.172916, 37.021770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.527630, 34.454407, 37.564209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138802, 34.438454, 37.656712>,  <39.905502, 34.428883, 37.712215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.138802, 34.438454, 37.656712>,  <40.527630, 34.454407, 37.564209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.138802, 34.438454, 37.656712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232079, -0.017210, 0.972545,
		-0.034810, 0.999056, 0.025986,
		-0.972074, -0.039885, 0.231261,
		39.847179, 34.426487, 37.726089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.483597, 34.842113, 38.101196>,  <40.527630, 34.454407, 37.564209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.483597, 34.842113, 38.101196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135876, 34.650150, 38.148537>,  <39.927242, 34.534973, 38.176941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.135876, 34.650150, 38.148537>,  <40.483597, 34.842113, 38.101196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.135876, 34.650150, 38.148537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154100, -0.035630, 0.987413,
		-0.469652, 0.876594, 0.104927,
		-0.869299, -0.479909, 0.118349,
		39.875088, 34.506176, 38.184040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.204945, 35.160816, 38.728134>,  <40.483597, 34.842113, 38.101196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.204945, 35.160816, 38.728134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040562, 34.801067, 38.668488>,  <39.941933, 34.585217, 38.632698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.040562, 34.801067, 38.668488>,  <40.204945, 35.160816, 38.728134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.040562, 34.801067, 38.668488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005108, -0.165838, 0.986140,
		-0.911639, 0.404502, 0.072747,
		-0.410960, -0.899375, -0.149119,
		39.917274, 34.531254, 38.623753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578457, 35.120346, 39.116531>,  <40.204945, 35.160816, 38.728134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578457, 35.120346, 39.116531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703094, 34.748848, 39.036190>,  <39.777878, 34.525948, 38.987988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.703094, 34.748848, 39.036190>,  <39.578457, 35.120346, 39.116531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.703094, 34.748848, 39.036190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117487, -0.247407, 0.961762,
		-0.942924, -0.276083, -0.186206,
		0.311595, -0.928745, -0.200850,
		39.796574, 34.470222, 38.975937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.187267, 34.659397, 39.516220>,  <39.578457, 35.120346, 39.116531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.187267, 34.659397, 39.516220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533886, 34.468597, 39.457470>,  <39.741856, 34.354118, 39.422222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.533886, 34.468597, 39.457470>,  <39.187267, 34.659397, 39.516220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.533886, 34.468597, 39.457470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118988, -0.088348, 0.988957,
		-0.484705, -0.874453, -0.019801,
		0.866546, -0.476996, -0.146872,
		39.793850, 34.325497, 39.413410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.166767, 34.207912, 40.098225>,  <39.187267, 34.659397, 39.516220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.166767, 34.207912, 40.098225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536278, 34.161270, 39.952328>,  <39.757984, 34.133286, 39.864788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.536278, 34.161270, 39.952328>,  <39.166767, 34.207912, 40.098225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.536278, 34.161270, 39.952328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358472, -0.071637, 0.930788,
		-0.134664, -0.990592, -0.024377,
		0.923777, -0.116606, -0.364746,
		39.813412, 34.126289, 39.842903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546806, 33.645172, 40.568417>,  <39.166767, 34.207912, 40.098225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546806, 33.645172, 40.568417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824169, 33.855431, 40.371281>,  <39.990585, 33.981586, 40.252998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.824169, 33.855431, 40.371281>,  <39.546806, 33.645172, 40.568417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.824169, 33.855431, 40.371281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599709, -0.041854, 0.799123,
		0.399427, -0.849675, -0.344255,
		0.693403, 0.525644, -0.492840,
		40.032188, 34.013123, 40.223427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.181770, 33.276951, 40.726170>,  <39.546806, 33.645172, 40.568417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.181770, 33.276951, 40.726170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271164, 33.649948, 40.612671>,  <40.324799, 33.873745, 40.544571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.271164, 33.649948, 40.612671>,  <40.181770, 33.276951, 40.726170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.271164, 33.649948, 40.612671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.670585, 0.064171, 0.739052,
		0.707369, -0.355443, -0.610974,
		0.223484, 0.932492, -0.283748,
		40.338211, 33.929695, 40.527546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.880268, 33.247837, 40.651432>,  <40.181770, 33.276951, 40.726170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.880268, 33.247837, 40.651432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755489, 33.624886, 40.699009>,  <40.680622, 33.851116, 40.727554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.755489, 33.624886, 40.699009>,  <40.880268, 33.247837, 40.651432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.755489, 33.624886, 40.699009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644079, 0.117773, 0.755838,
		0.698464, 0.312389, -0.643864,
		-0.311945, 0.942625, 0.118943,
		40.661907, 33.907673, 40.734692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.454948, 33.588970, 40.880562>,  <40.880268, 33.247837, 40.651432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.454948, 33.588970, 40.880562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156673, 33.835773, 40.981163>,  <40.977707, 33.983856, 41.041523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.156673, 33.835773, 40.981163>,  <41.454948, 33.588970, 40.880562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.156673, 33.835773, 40.981163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410314, 0.127830, 0.902941,
		0.524969, 0.776508, -0.348487,
		-0.745688, 0.617005, 0.251505,
		40.932968, 34.020874, 41.056614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.799164, 34.187000, 41.108540>,  <41.454948, 33.588970, 40.880562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.799164, 34.187000, 41.108540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440392, 34.158531, 41.283104>,  <41.225128, 34.141449, 41.387840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.440392, 34.158531, 41.283104>,  <41.799164, 34.187000, 41.108540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.440392, 34.158531, 41.283104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415943, 0.199063, 0.887336,
		-0.150029, 0.977398, -0.148941,
		-0.896930, -0.071175, 0.436407,
		41.171314, 34.137180, 41.414024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.814571, 34.686092, 41.582802>,  <41.799164, 34.187000, 41.108540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.814571, 34.686092, 41.582802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496475, 34.470478, 41.693817>,  <41.305618, 34.341110, 41.760426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.496475, 34.470478, 41.693817>,  <41.814571, 34.686092, 41.582802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.496475, 34.470478, 41.693817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211792, 0.181938, 0.960230,
		-0.568096, 0.822396, -0.030520,
		-0.795243, -0.539039, 0.277535,
		41.257904, 34.308765, 41.777077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.500938, 35.059383, 42.158237>,  <41.814571, 34.686092, 41.582802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.500938, 35.059383, 42.158237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349930, 34.689548, 42.178696>,  <41.259327, 34.467648, 42.190971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349930, 34.689548, 42.178696>,  <41.500938, 35.059383, 42.158237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349930, 34.689548, 42.178696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088373, 0.019004, 0.995906,
		-0.921775, 0.380493, 0.074534,
		-0.377519, -0.924589, 0.051143,
		41.236675, 34.412170, 42.194038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.113697, 35.099777, 42.859394>,  <41.500938, 35.059383, 42.158237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.113697, 35.099777, 42.859394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138573, 34.708290, 42.781166>,  <41.153500, 34.473400, 42.734230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138573, 34.708290, 42.781166>,  <41.113697, 35.099777, 42.859394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138573, 34.708290, 42.781166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045621, -0.198537, 0.979031,
		-0.997021, -0.051964, -0.056997,
		0.062190, -0.978715, -0.195575,
		41.157230, 34.414677, 42.722492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522877, 34.772640, 43.222820>,  <41.113697, 35.099777, 42.859394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522877, 34.772640, 43.222820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826023, 34.521091, 43.153351>,  <41.007912, 34.370163, 43.111668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.826023, 34.521091, 43.153351>,  <40.522877, 34.772640, 43.222820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.826023, 34.521091, 43.153351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123997, -0.122513, 0.984690,
		-0.640523, -0.767795, -0.014869,
		0.757862, -0.628874, -0.173677,
		41.053383, 34.332428, 43.101246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330910, 34.208233, 43.633877>,  <40.522877, 34.772640, 43.222820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330910, 34.208233, 43.633877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721508, 34.155743, 43.565472>,  <40.955868, 34.124249, 43.524429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721508, 34.155743, 43.565472>,  <40.330910, 34.208233, 43.633877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721508, 34.155743, 43.565472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129059, -0.279513, 0.951428,
		-0.172648, -0.951132, -0.256007,
		0.976492, -0.131223, -0.171010,
		41.014454, 34.116375, 43.514168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.439980, 33.553947, 43.928596>,  <40.330910, 34.208233, 43.633877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.439980, 33.553947, 43.928596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770222, 33.779541, 43.935555>,  <40.968369, 33.914898, 43.939728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.770222, 33.779541, 43.935555>,  <40.439980, 33.553947, 43.928596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.770222, 33.779541, 43.935555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060168, -0.118647, 0.991112,
		0.561032, -0.817220, -0.131889,
		0.825605, 0.563981, 0.017394,
		41.017902, 33.948734, 43.940773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.722107, 33.282513, 44.517662>,  <40.439980, 33.553947, 43.928596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.722107, 33.282513, 44.517662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934055, 33.612892, 44.440674>,  <41.061222, 33.811119, 44.394482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.934055, 33.612892, 44.440674>,  <40.722107, 33.282513, 44.517662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934055, 33.612892, 44.440674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308345, 0.023796, 0.950977,
		0.790040, -0.563240, -0.242069,
		0.529868, 0.825951, -0.192471,
		41.093018, 33.860676, 44.382931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.232212, 33.149345, 44.924046>,  <40.722107, 33.282513, 44.517662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.232212, 33.149345, 44.924046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214790, 33.546162, 44.876801>,  <41.204338, 33.784252, 44.848454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.214790, 33.546162, 44.876801>,  <41.232212, 33.149345, 44.924046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.214790, 33.546162, 44.876801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035513, 0.116612, 0.992543,
		0.998420, 0.047422, 0.030151,
		-0.043553, 0.992045, -0.118112,
		41.201725, 33.843777, 44.841366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754826, 33.408253, 45.302662>,  <41.232212, 33.149345, 44.924046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754826, 33.408253, 45.302662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474762, 33.691738, 45.268013>,  <41.306725, 33.861828, 45.247223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.474762, 33.691738, 45.268013>,  <41.754826, 33.408253, 45.302662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.474762, 33.691738, 45.268013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032532, 0.089532, 0.995452,
		0.713248, 0.699791, -0.039631,
		-0.700157, 0.708715, -0.086624,
		41.264713, 33.904354, 45.242027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.813099, 33.757668, 45.920761>,  <41.754826, 33.408253, 45.302662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.813099, 33.757668, 45.920761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480488, 33.913563, 45.762436>,  <41.280922, 34.007099, 45.667442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.480488, 33.913563, 45.762436>,  <41.813099, 33.757668, 45.920761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480488, 33.913563, 45.762436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319047, 0.248206, 0.914660,
		0.454724, 0.886846, -0.082043,
		-0.831526, 0.389742, -0.395811,
		41.231030, 34.030487, 45.643692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.919155, 34.429207, 46.076546>,  <41.813099, 33.757668, 45.920761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.919155, 34.429207, 46.076546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533962, 34.335678, 46.022881>,  <41.302849, 34.279560, 45.990681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.533962, 34.335678, 46.022881>,  <41.919155, 34.429207, 46.076546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.533962, 34.335678, 46.022881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228867, 0.446127, 0.865211,
		-0.142457, 0.863884, -0.483125,
		-0.962978, -0.233827, -0.134161,
		41.245068, 34.265530, 45.982632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.529240, 35.041462, 46.091759>,  <41.919155, 34.429207, 46.076546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.529240, 35.041462, 46.091759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289730, 34.736324, 46.189362>,  <41.146023, 34.553242, 46.247925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.289730, 34.736324, 46.189362>,  <41.529240, 35.041462, 46.091759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.289730, 34.736324, 46.189362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282783, 0.486398, 0.826711,
		-0.749335, 0.426013, -0.506962,
		-0.598775, -0.762843, 0.244005,
		41.110096, 34.507473, 46.262562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003952, 35.406643, 46.291260>,  <41.529240, 35.041462, 46.091759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003952, 35.406643, 46.291260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007320, 35.043663, 46.459286>,  <41.009342, 34.825874, 46.560101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.007320, 35.043663, 46.459286>,  <41.003952, 35.406643, 46.291260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.007320, 35.043663, 46.459286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147070, 0.414391, 0.898137,
		-0.989090, -0.069341, -0.129971,
		0.008419, -0.907454, 0.420068,
		41.009846, 34.771427, 46.585304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.373955, 35.361298, 46.606937>,  <41.003952, 35.406643, 46.291260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.373955, 35.361298, 46.606937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637077, 35.121311, 46.789070>,  <40.794952, 34.977322, 46.898350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.637077, 35.121311, 46.789070>,  <40.373955, 35.361298, 46.606937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.637077, 35.121311, 46.789070> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220437, 0.424719, 0.878078,
		-0.720205, -0.677981, 0.147130,
		0.657809, -0.599963, 0.455336,
		40.834419, 34.941322, 46.925671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016384, 35.095726, 47.250561>,  <40.373955, 35.361298, 46.606937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016384, 35.095726, 47.250561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401501, 35.015881, 47.323441>,  <40.632568, 34.967972, 47.367168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.401501, 35.015881, 47.323441>,  <40.016384, 35.095726, 47.250561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.401501, 35.015881, 47.323441> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141913, 0.200327, 0.969396,
		-0.230004, -0.959178, 0.164545,
		0.962787, -0.199614, 0.182196,
		40.690338, 34.955997, 47.378098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.957451, 34.906105, 47.945499>,  <40.016384, 35.095726, 47.250561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.957451, 34.906105, 47.945499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352497, 34.962353, 47.917679>,  <40.589527, 34.996101, 47.900986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352497, 34.962353, 47.917679>,  <39.957451, 34.906105, 47.945499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352497, 34.962353, 47.917679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062093, 0.056788, 0.996454,
		0.144075, -0.988433, 0.047353,
		0.987617, 0.140624, -0.069556,
		40.648781, 35.004539, 47.896812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.241543, 34.500195, 48.378963>,  <39.957451, 34.906105, 47.945499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.241543, 34.500195, 48.378963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512268, 34.790009, 48.326847>,  <40.674702, 34.963898, 48.295578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.512268, 34.790009, 48.326847>,  <40.241543, 34.500195, 48.378963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.512268, 34.790009, 48.326847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068167, 0.237911, 0.968892,
		0.732995, -0.646875, 0.210410,
		0.676811, 0.724535, -0.130292,
		40.715313, 35.007370, 48.287758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.658932, 34.429226, 48.951492>,  <40.241543, 34.500195, 48.378963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.658932, 34.429226, 48.951492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716442, 34.811474, 48.848633>,  <40.750950, 35.040821, 48.786919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.716442, 34.811474, 48.848633>,  <40.658932, 34.429226, 48.951492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.716442, 34.811474, 48.848633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068224, 0.249659, 0.965927,
		0.987256, -0.156421, -0.029301,
		0.143776, 0.955616, -0.257149,
		40.759575, 35.098160, 48.771488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.318703, 34.696766, 49.336994>,  <40.658932, 34.429226, 48.951492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.318703, 34.696766, 49.336994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110775, 35.018982, 49.223228>,  <40.986019, 35.212311, 49.154968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.110775, 35.018982, 49.223228>,  <41.318703, 34.696766, 49.336994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.110775, 35.018982, 49.223228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168118, 0.422881, 0.890454,
		0.837568, 0.415064, -0.355249,
		-0.519824, 0.805539, -0.284411,
		40.954826, 35.260643, 49.137905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.697647, 35.372524, 49.660088>,  <41.318703, 34.696766, 49.336994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.697647, 35.372524, 49.660088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335514, 35.512848, 49.564331>,  <41.118233, 35.597042, 49.506878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.335514, 35.512848, 49.564331>,  <41.697647, 35.372524, 49.660088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.335514, 35.512848, 49.564331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097607, 0.376713, 0.921173,
		0.413334, 0.857335, -0.306810,
		-0.905333, 0.350805, -0.239390,
		41.063915, 35.618088, 49.492516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.596592, 36.089298, 49.880917>,  <41.697647, 35.372524, 49.660088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.596592, 36.089298, 49.880917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217690, 35.966167, 49.845257>,  <40.990349, 35.892288, 49.823860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.217690, 35.966167, 49.845257>,  <41.596592, 36.089298, 49.880917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.217690, 35.966167, 49.845257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194857, 0.332358, 0.922805,
		-0.254438, 0.891504, -0.374810,
		-0.947255, -0.307831, -0.089151,
		40.933514, 35.873817, 49.818512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175495, 36.672695, 49.836552>,  <41.596592, 36.089298, 49.880917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175495, 36.672695, 49.836552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958668, 36.367992, 49.978474>,  <40.828571, 36.185169, 50.063625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.958668, 36.367992, 49.978474>,  <41.175495, 36.672695, 49.836552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.958668, 36.367992, 49.978474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017034, 0.432095, 0.901667,
		-0.840160, 0.482724, -0.247202,
		-0.542071, -0.761756, 0.354806,
		40.796047, 36.139465, 50.084915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.589424, 36.962570, 50.235203>,  <41.175495, 36.672695, 49.836552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.589424, 36.962570, 50.235203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606201, 36.582958, 50.360153>,  <40.616268, 36.355190, 50.435123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.606201, 36.582958, 50.360153>,  <40.589424, 36.962570, 50.235203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.606201, 36.582958, 50.360153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128139, 0.304963, 0.943704,
		-0.990869, -0.079610, -0.108817,
		0.041943, -0.949031, 0.312379,
		40.618786, 36.298248, 50.453869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190632, 37.297356, 50.768757>,  <40.589424, 36.962570, 50.235203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190632, 37.297356, 50.768757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210869, 37.685825, 50.675579>,  <40.223011, 37.918907, 50.619675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.210869, 37.685825, 50.675579>,  <40.190632, 37.297356, 50.768757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.210869, 37.685825, 50.675579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094403, -0.227545, -0.969181,
		-0.994248, 0.071021, 0.080170,
		0.050590, 0.971174, -0.232941,
		40.226048, 37.977177, 50.605698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.662945, 37.393982, 50.252029>,  <40.190632, 37.297356, 50.768757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.662945, 37.393982, 50.252029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898811, 37.712460, 50.197823>,  <40.040329, 37.903549, 50.165298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898811, 37.712460, 50.197823>,  <39.662945, 37.393982, 50.252029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898811, 37.712460, 50.197823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250425, 0.020720, -0.967914,
		-0.767844, 0.604680, 0.211606,
		0.589663, 0.796199, -0.135518,
		40.075710, 37.951321, 50.157166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213783, 37.853539, 49.896069>,  <39.662945, 37.393982, 50.252029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213783, 37.853539, 49.896069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597092, 37.954422, 49.842232>,  <39.827076, 38.014950, 49.809929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.597092, 37.954422, 49.842232>,  <39.213783, 37.853539, 49.896069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.597092, 37.954422, 49.842232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137227, -0.007193, -0.990514,
		-0.250781, 0.967647, 0.027717,
		0.958268, 0.252206, -0.134591,
		39.884571, 38.030083, 49.801853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201805, 38.595623, 49.597504>,  <39.213783, 37.853539, 49.896069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201805, 38.595623, 49.597504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543201, 38.402130, 49.519978>,  <39.748039, 38.286034, 49.473461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.543201, 38.402130, 49.519978>,  <39.201805, 38.595623, 49.597504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.543201, 38.402130, 49.519978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157813, 0.114534, -0.980804,
		0.496641, 0.867692, 0.021415,
		0.853489, -0.483728, -0.193815,
		39.799248, 38.257011, 49.461834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.567360, 38.962902, 49.023964>,  <39.201805, 38.595623, 49.597504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.567360, 38.962902, 49.023964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735889, 38.600140, 49.024876>,  <39.837009, 38.382481, 49.025421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.735889, 38.600140, 49.024876>,  <39.567360, 38.962902, 49.023964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.735889, 38.600140, 49.024876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061706, -0.031173, -0.997607,
		0.904807, 0.420178, -0.069095,
		0.421327, -0.906906, 0.002278,
		39.862286, 38.328068, 49.025558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166943, 38.992393, 48.688152>,  <39.567360, 38.962902, 49.023964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166943, 38.992393, 48.688152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023262, 38.622437, 48.638268>,  <39.937054, 38.400463, 48.608337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.023262, 38.622437, 48.638268>,  <40.166943, 38.992393, 48.688152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.023262, 38.622437, 48.638268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019594, 0.126127, -0.991821,
		0.933056, -0.358703, -0.027183,
		-0.359198, -0.924892, -0.124712,
		39.915504, 38.344971, 48.600853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.334290, 38.991497, 48.008430>,  <40.166943, 38.992393, 48.688152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.334290, 38.991497, 48.008430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199482, 38.619148, 48.064857>,  <40.118599, 38.395741, 48.098713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.199482, 38.619148, 48.064857>,  <40.334290, 38.991497, 48.008430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.199482, 38.619148, 48.064857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002439, -0.148972, -0.988838,
		0.941495, -0.333599, 0.047936,
		-0.337017, -0.930870, 0.141070,
		40.098377, 38.339886, 48.107178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.643215, 38.556385, 47.556416>,  <40.334290, 38.991497, 48.008430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.643215, 38.556385, 47.556416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334000, 38.330002, 47.671036>,  <40.148472, 38.194172, 47.739807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.334000, 38.330002, 47.671036>,  <40.643215, 38.556385, 47.556416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.334000, 38.330002, 47.671036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.013841, -0.436552, -0.899572,
		0.634212, -0.699367, 0.329637,
		-0.773035, -0.565958, 0.286547,
		40.102089, 38.160213, 47.757000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.846886, 37.868687, 47.410152>,  <40.643215, 38.556385, 47.556416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.846886, 37.868687, 47.410152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452774, 37.936588, 47.402012>,  <40.216309, 37.977329, 47.397129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.452774, 37.936588, 47.402012>,  <40.846886, 37.868687, 47.410152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.452774, 37.936588, 47.402012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043850, -0.365952, -0.929600,
		-0.165247, -0.915021, 0.368008,
		-0.985277, 0.169751, -0.020348,
		40.157192, 37.987514, 47.395908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.566734, 37.293133, 47.182640>,  <40.846886, 37.868687, 47.410152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.566734, 37.293133, 47.182640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264702, 37.539612, 47.093056>,  <40.083485, 37.687500, 47.039307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.264702, 37.539612, 47.093056>,  <40.566734, 37.293133, 47.182640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.264702, 37.539612, 47.093056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122552, -0.468220, -0.875072,
		-0.644080, -0.633301, 0.429059,
		-0.755078, 0.616198, -0.223960,
		40.038177, 37.724472, 47.025867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.023285, 36.881462, 46.813854>,  <40.566734, 37.293133, 47.182640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.023285, 36.881462, 46.813854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921810, 37.260525, 46.736294>,  <39.860924, 37.487961, 46.689758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921810, 37.260525, 46.736294>,  <40.023285, 36.881462, 46.813854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921810, 37.260525, 46.736294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363895, -0.279237, -0.888598,
		-0.896228, -0.154864, 0.415684,
		-0.253686, 0.947652, -0.193906,
		39.845703, 37.544819, 46.678123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.421890, 36.770588, 46.491936>,  <40.023285, 36.881462, 46.813854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.421890, 36.770588, 46.491936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560810, 37.129387, 46.382557>,  <39.644161, 37.344666, 46.316929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.560810, 37.129387, 46.382557>,  <39.421890, 36.770588, 46.491936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.560810, 37.129387, 46.382557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423305, -0.110241, -0.899255,
		-0.836775, 0.428067, 0.341417,
		0.347303, 0.896998, -0.273450,
		39.665001, 37.398487, 46.300522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.835140, 37.080616, 46.037884>,  <39.421890, 36.770588, 46.491936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.835140, 37.080616, 46.037884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168274, 37.281158, 45.944046>,  <39.368153, 37.401485, 45.887741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.168274, 37.281158, 45.944046>,  <38.835140, 37.080616, 46.037884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.168274, 37.281158, 45.944046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.136764, -0.224300, -0.964876,
		-0.536366, 0.835662, -0.118237,
		0.832831, 0.501356, -0.234596,
		39.418121, 37.431564, 45.873669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.658615, 37.598835, 45.518204>,  <38.835140, 37.080616, 46.037884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.658615, 37.598835, 45.518204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051487, 37.528320, 45.492115>,  <39.287209, 37.486012, 45.476460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051487, 37.528320, 45.492115>,  <38.658615, 37.598835, 45.518204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051487, 37.528320, 45.492115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103449, -0.217245, -0.970620,
		0.156939, 0.960066, -0.231610,
		0.982175, -0.176288, -0.065224,
		39.346138, 37.475433, 45.472549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.997589, 37.914539, 44.864502>,  <38.658615, 37.598835, 45.518204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.997589, 37.914539, 44.864502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264580, 37.635872, 44.969673>,  <39.424774, 37.468674, 45.032776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.264580, 37.635872, 44.969673>,  <38.997589, 37.914539, 44.864502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.264580, 37.635872, 44.969673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228651, -0.144289, -0.962756,
		0.708658, 0.702735, 0.062985,
		0.667475, -0.696666, 0.262933,
		39.464821, 37.426872, 45.048553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.658543, 38.044415, 44.479191>,  <38.997589, 37.914539, 44.864502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.658543, 38.044415, 44.479191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692513, 37.663216, 44.595524>,  <39.712894, 37.434498, 44.665325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.692513, 37.663216, 44.595524>,  <39.658543, 38.044415, 44.479191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.692513, 37.663216, 44.595524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216906, -0.267208, -0.938910,
		0.972492, 0.142816, 0.184020,
		0.084920, -0.952997, 0.290836,
		39.717987, 37.377316, 44.682774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247059, 37.828041, 44.140301>,  <39.658543, 38.044415, 44.479191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247059, 37.828041, 44.140301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048916, 37.490997, 44.224808>,  <39.930031, 37.288773, 44.275513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048916, 37.490997, 44.224808>,  <40.247059, 37.828041, 44.140301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048916, 37.490997, 44.224808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376726, -0.427513, -0.821773,
		0.782749, -0.327485, 0.529205,
		-0.495361, -0.842606, 0.211263,
		39.900307, 37.238216, 44.288185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738468, 37.193359, 44.138680>,  <40.247059, 37.828041, 44.140301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738468, 37.193359, 44.138680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359810, 37.080753, 44.075920>,  <40.132614, 37.013191, 44.038265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.359810, 37.080753, 44.075920>,  <40.738468, 37.193359, 44.138680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.359810, 37.080753, 44.075920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281857, -0.487080, -0.826625,
		0.156285, -0.826742, 0.540438,
		-0.946643, -0.281515, -0.156900,
		40.075817, 36.996300, 44.028851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785564, 36.530712, 43.910961>,  <40.738468, 37.193359, 44.138680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785564, 36.530712, 43.910961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420544, 36.640591, 43.789768>,  <40.201530, 36.706520, 43.717052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.420544, 36.640591, 43.789768>,  <40.785564, 36.530712, 43.910961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.420544, 36.640591, 43.789768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158774, -0.444762, -0.881463,
		-0.376888, -0.852484, 0.362253,
		-0.912549, 0.274697, -0.302978,
		40.146778, 36.723000, 43.698875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.687855, 36.081593, 43.416626>,  <40.785564, 36.530712, 43.910961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.687855, 36.081593, 43.416626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390018, 36.336906, 43.338474>,  <40.211315, 36.490093, 43.291584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.390018, 36.336906, 43.338474>,  <40.687855, 36.081593, 43.416626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.390018, 36.336906, 43.338474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044138, -0.244976, -0.968524,
		-0.666056, -0.729782, 0.154235,
		-0.744595, 0.638283, -0.195379,
		40.166641, 36.528393, 43.279861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.317486, 35.717152, 42.972675>,  <40.687855, 36.081593, 43.416626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.317486, 35.717152, 42.972675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224159, 36.101536, 42.913197>,  <40.168163, 36.332169, 42.877510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224159, 36.101536, 42.913197>,  <40.317486, 35.717152, 42.972675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224159, 36.101536, 42.913197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086657, -0.131758, -0.987487,
		-0.968531, -0.243286, -0.052533,
		-0.233320, 0.960964, -0.148694,
		40.154163, 36.389824, 42.868587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829845, 35.775478, 42.390800>,  <40.317486, 35.717152, 42.972675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829845, 35.775478, 42.390800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002743, 36.134907, 42.421066>,  <40.106483, 36.350563, 42.439224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.002743, 36.134907, 42.421066>,  <39.829845, 35.775478, 42.390800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.002743, 36.134907, 42.421066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125793, 0.023000, -0.991790,
		-0.892938, 0.438217, -0.103093,
		0.432248, 0.898575, 0.075662,
		40.132416, 36.404480, 42.443764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.628742, 36.081680, 41.775894>,  <39.829845, 35.775478, 42.390800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.628742, 36.081680, 41.775894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921913, 36.322491, 41.902622>,  <40.097816, 36.466976, 41.978661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.921913, 36.322491, 41.902622>,  <39.628742, 36.081680, 41.775894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.921913, 36.322491, 41.902622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354841, 0.059035, -0.933061,
		-0.580435, 0.796288, -0.170357,
		0.732928, 0.602031, 0.316822,
		40.141792, 36.503101, 41.997669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.509895, 36.632526, 41.439308>,  <39.628742, 36.081680, 41.775894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.509895, 36.632526, 41.439308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899925, 36.616806, 41.526649>,  <40.133945, 36.607372, 41.579052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.899925, 36.616806, 41.526649>,  <39.509895, 36.632526, 41.439308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.899925, 36.616806, 41.526649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220865, 0.078843, -0.972112,
		0.020993, 0.996112, 0.085559,
		0.975078, -0.039305, 0.218351,
		40.192448, 36.605015, 41.592155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.768635, 37.325642, 41.192135>,  <39.509895, 36.632526, 41.439308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.768635, 37.325642, 41.192135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083138, 37.081833, 41.232700>,  <40.271839, 36.935547, 41.257038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083138, 37.081833, 41.232700>,  <39.768635, 37.325642, 41.192135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083138, 37.081833, 41.232700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288291, 0.216698, -0.932700,
		0.546524, 0.762579, 0.346100,
		0.786256, -0.609521, 0.101414,
		40.319016, 36.898975, 41.263126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.262737, 37.645741, 40.798195>,  <39.768635, 37.325642, 41.192135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.262737, 37.645741, 40.798195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428288, 37.288258, 40.867481>,  <40.527618, 37.073769, 40.909054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.428288, 37.288258, 40.867481>,  <40.262737, 37.645741, 40.798195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.428288, 37.288258, 40.867481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363540, -0.012188, -0.931499,
		0.834594, 0.448493, 0.319853,
		0.413873, -0.893703, 0.173217,
		40.552448, 37.020145, 40.919445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.949871, 37.734634, 40.578007>,  <40.262737, 37.645741, 40.798195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.949871, 37.734634, 40.578007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841923, 37.351334, 40.540237>,  <40.777153, 37.121353, 40.517574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.841923, 37.351334, 40.540237>,  <40.949871, 37.734634, 40.578007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.841923, 37.351334, 40.540237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445590, -0.037349, -0.894458,
		0.853592, -0.283463, 0.437069,
		-0.269869, -0.958256, -0.094428,
		40.760963, 37.063858, 40.511909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.510437, 37.408520, 40.356247>,  <40.949871, 37.734634, 40.578007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.510437, 37.408520, 40.356247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202499, 37.173634, 40.256237>,  <41.017735, 37.032700, 40.196232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.202499, 37.173634, 40.256237>,  <41.510437, 37.408520, 40.356247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.202499, 37.173634, 40.256237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336994, -0.041321, -0.940600,
		0.542006, -0.808373, 0.229700,
		-0.769847, -0.587218, -0.250021,
		40.971546, 36.997467, 40.181232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.834721, 36.963688, 39.819920>,  <41.510437, 37.408520, 40.356247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.834721, 36.963688, 39.819920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445961, 36.888428, 39.763332>,  <41.212704, 36.843269, 39.729382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.445961, 36.888428, 39.763332>,  <41.834721, 36.963688, 39.819920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.445961, 36.888428, 39.763332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166093, -0.122246, -0.978504,
		0.166814, -0.974502, 0.150062,
		-0.971898, -0.188153, -0.141465,
		41.154392, 36.831982, 39.720894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.801975, 36.441566, 39.369408>,  <41.834721, 36.963688, 39.819920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.801975, 36.441566, 39.369408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439598, 36.609364, 39.346466>,  <41.222172, 36.710041, 39.332703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.439598, 36.609364, 39.346466>,  <41.801975, 36.441566, 39.369408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.439598, 36.609364, 39.346466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113692, 0.110541, -0.987347,
		-0.407843, -0.901004, -0.147837,
		-0.905946, 0.419491, -0.057354,
		41.167816, 36.735210, 39.329258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704742, 36.275364, 38.675522>,  <41.801975, 36.441566, 39.369408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704742, 36.275364, 38.675522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397469, 36.519096, 38.754116>,  <41.213104, 36.665337, 38.801273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.397469, 36.519096, 38.754116>,  <41.704742, 36.275364, 38.675522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397469, 36.519096, 38.754116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229632, 0.024251, -0.972975,
		-0.597632, -0.792543, 0.121293,
		-0.768184, 0.609334, 0.196486,
		41.167015, 36.701897, 38.813061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126572, 35.941708, 38.356331>,  <41.704742, 36.275364, 38.675522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.126572, 35.941708, 38.356331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107594, 36.339588, 38.392818>,  <41.096207, 36.578316, 38.414711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.107594, 36.339588, 38.392818>,  <41.126572, 35.941708, 38.356331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.107594, 36.339588, 38.392818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198988, 0.080076, -0.976725,
		-0.978853, -0.064495, 0.194134,
		-0.047449, 0.994700, 0.091217,
		41.093357, 36.637997, 38.420185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.496815, 36.129158, 37.978237>,  <41.126572, 35.941708, 38.356331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.496815, 36.129158, 37.978237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703102, 36.471458, 37.961666>,  <40.826874, 36.676838, 37.951721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.703102, 36.471458, 37.961666>,  <40.496815, 36.129158, 37.978237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.703102, 36.471458, 37.961666> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189411, 0.066720, -0.979628,
		-0.835558, 0.513060, 0.196499,
		0.515719, 0.855756, -0.041431,
		40.857819, 36.728184, 37.949238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.084366, 36.688187, 37.705742>,  <40.496815, 36.129158, 37.978237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.084366, 36.688187, 37.705742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461395, 36.809967, 37.650795>,  <40.687611, 36.883038, 37.617825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.461395, 36.809967, 37.650795>,  <40.084366, 36.688187, 37.705742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.461395, 36.809967, 37.650795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195097, 0.168015, -0.966286,
		-0.271110, 0.937592, 0.217764,
		0.942569, 0.304455, -0.137371,
		40.744167, 36.901302, 37.609585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.992641, 37.311916, 37.369144>,  <40.084366, 36.688187, 37.705742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.992641, 37.311916, 37.369144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382866, 37.237904, 37.321739>,  <40.617001, 37.193497, 37.293297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382866, 37.237904, 37.321739>,  <39.992641, 37.311916, 37.369144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382866, 37.237904, 37.321739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076451, 0.219850, -0.972534,
		0.206006, 0.957825, 0.200330,
		0.975560, -0.185033, -0.118517,
		40.675533, 37.182392, 37.286182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190212, 37.634453, 36.819996>,  <39.992641, 37.311916, 37.369144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190212, 37.634453, 36.819996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567406, 37.502167, 36.835052>,  <40.793720, 37.422794, 36.844086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.567406, 37.502167, 36.835052>,  <40.190212, 37.634453, 36.819996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.567406, 37.502167, 36.835052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134665, 0.275651, -0.951778,
		0.304388, 0.902578, 0.304469,
		0.942981, -0.330711, 0.037641,
		40.850300, 37.402954, 36.846344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.738182, 38.261333, 36.633438>,  <40.190212, 37.634453, 36.819996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.738182, 38.261333, 36.633438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844807, 37.884815, 36.550575>,  <40.908779, 37.658905, 36.500858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.844807, 37.884815, 36.550575>,  <40.738182, 38.261333, 36.633438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844807, 37.884815, 36.550575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243321, 0.273696, -0.930530,
		0.932599, 0.197634, 0.301992,
		0.266558, -0.941292, -0.207160,
		40.924774, 37.602428, 36.488426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.350452, 38.382225, 36.198544>,  <40.738182, 38.261333, 36.633438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.350452, 38.382225, 36.198544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260643, 37.997128, 36.138252>,  <41.206757, 37.766071, 36.102077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.260643, 37.997128, 36.138252>,  <41.350452, 38.382225, 36.198544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.260643, 37.997128, 36.138252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394309, 0.051689, -0.917523,
		0.891129, -0.265436, 0.368013,
		-0.224521, -0.962742, -0.150726,
		41.193287, 37.708305, 36.093033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.931328, 37.975121, 36.039886>,  <41.350452, 38.382225, 36.198544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.931328, 37.975121, 36.039886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619389, 37.795860, 35.865078>,  <41.432224, 37.688305, 35.760193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.619389, 37.795860, 35.865078>,  <41.931328, 37.975121, 36.039886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.619389, 37.795860, 35.865078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503076, -0.033266, -0.863602,
		0.372487, -0.893338, 0.251397,
		-0.779851, -0.448152, -0.437026,
		41.385433, 37.661415, 35.733971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.251472, 37.394749, 35.797459>,  <41.931328, 37.975121, 36.039886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.251472, 37.394749, 35.797459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912407, 37.483711, 35.604794>,  <41.708965, 37.537086, 35.489197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.912407, 37.483711, 35.604794>,  <42.251472, 37.394749, 35.797459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.912407, 37.483711, 35.604794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432282, -0.236777, -0.870097,
		-0.307557, -0.945766, 0.104568,
		-0.847668, 0.222402, -0.481660,
		41.658108, 37.550430, 35.460297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418869, 36.914341, 36.265560>,  <42.251472, 37.394749, 35.797459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418869, 36.914341, 36.265560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720032, 36.660583, 36.335606>,  <42.900730, 36.508327, 36.377632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.720032, 36.660583, 36.335606>,  <42.418869, 36.914341, 36.265560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.720032, 36.660583, 36.335606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129546, -0.403740, -0.905655,
		0.645248, 0.659191, -0.386164,
		0.752910, -0.634398, 0.175117,
		42.945904, 36.470264, 36.388142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.719978, 36.798130, 35.642109>,  <42.418869, 36.914341, 36.265560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.719978, 36.798130, 35.642109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848923, 36.478462, 35.845051>,  <42.926289, 36.286663, 35.966816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.848923, 36.478462, 35.845051>,  <42.719978, 36.798130, 35.642109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.848923, 36.478462, 35.845051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192113, -0.580048, -0.791604,
		0.926917, 0.157714, -0.340517,
		0.322363, -0.799169, 0.507357,
		42.945633, 36.238712, 35.997257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339661, 36.492558, 35.505646>,  <42.719978, 36.798130, 35.642109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339661, 36.492558, 35.505646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091141, 36.205811, 35.632191>,  <42.942028, 36.033764, 35.708118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.091141, 36.205811, 35.632191>,  <43.339661, 36.492558, 35.505646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.091141, 36.205811, 35.632191> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025501, -0.422028, -0.906224,
		0.783154, -0.554973, 0.280489,
		-0.621304, -0.716866, 0.316360,
		42.904751, 35.990749, 35.727100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.557610, 35.825867, 35.335976>,  <43.339661, 36.492558, 35.505646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.557610, 35.825867, 35.335976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163933, 35.793423, 35.398956>,  <42.927727, 35.773956, 35.436745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.163933, 35.793423, 35.398956>,  <43.557610, 35.825867, 35.335976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.163933, 35.793423, 35.398956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114116, -0.389452, -0.913950,
		0.135452, -0.917469, 0.374038,
		-0.984190, -0.081112, 0.157450,
		42.868675, 35.769089, 35.446190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.254681, 35.158459, 35.320259>,  <43.557610, 35.825867, 35.335976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.254681, 35.158459, 35.320259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955742, 35.403969, 35.218479>,  <42.776379, 35.551277, 35.157410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.955742, 35.403969, 35.218479>,  <43.254681, 35.158459, 35.320259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.955742, 35.403969, 35.218479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076113, -0.459525, -0.884897,
		-0.660060, -0.641958, 0.390142,
		-0.747347, 0.613780, -0.254452,
		42.731537, 35.588104, 35.142143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606300, 34.688610, 35.237850>,  <43.254681, 35.158459, 35.320259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606300, 34.688610, 35.237850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661533, 35.019218, 35.019566>,  <42.694675, 35.217583, 34.888596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.661533, 35.019218, 35.019566>,  <42.606300, 34.688610, 35.237850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661533, 35.019218, 35.019566> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082556, -0.539469, -0.837948,
		-0.986974, 0.160760, -0.006258,
		0.138085, 0.826516, -0.545714,
		42.702957, 35.267174, 34.855850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.084351, 34.880508, 34.764126>,  <42.606300, 34.688610, 35.237850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.084351, 34.880508, 34.764126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420795, 34.997444, 34.582104>,  <42.622662, 35.067608, 34.472893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.420795, 34.997444, 34.582104>,  <42.084351, 34.880508, 34.764126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.420795, 34.997444, 34.582104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180551, -0.641314, -0.745733,
		-0.509841, 0.709403, -0.486632,
		0.841109, 0.292344, -0.455051,
		42.673126, 35.085148, 34.445587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.907745, 35.183739, 34.092686>,  <42.084351, 34.880508, 34.764126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.907745, 35.183739, 34.092686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229717, 34.971458, 34.198849>,  <42.422901, 34.844090, 34.262547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.229717, 34.971458, 34.198849>,  <41.907745, 35.183739, 34.092686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.229717, 34.971458, 34.198849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324569, -0.768237, -0.551784,
		0.496729, 0.358006, -0.790628,
		0.804932, -0.530701, 0.265408,
		42.471195, 34.812248, 34.278473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.122299, 34.907936, 33.539265>,  <41.907745, 35.183739, 34.092686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.122299, 34.907936, 33.539265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286701, 34.663654, 33.810001>,  <42.385342, 34.517086, 33.972443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.286701, 34.663654, 33.810001>,  <42.122299, 34.907936, 33.539265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.286701, 34.663654, 33.810001> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265477, -0.790452, -0.552003,
		0.872122, 0.047189, -0.487008,
		0.411005, -0.610703, 0.676843,
		42.410004, 34.480442, 34.013054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.671234, 34.498646, 33.149120>,  <42.122299, 34.907936, 33.539265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.671234, 34.498646, 33.149120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607780, 34.295090, 33.487556>,  <42.569710, 34.172958, 33.690617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.607780, 34.295090, 33.487556>,  <42.671234, 34.498646, 33.149120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607780, 34.295090, 33.487556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018458, -0.858321, -0.512780,
		0.987165, -0.065727, 0.145551,
		-0.158633, -0.508885, 0.846092,
		42.560192, 34.142426, 33.741383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.175236, 33.930691, 33.126511>,  <42.671234, 34.498646, 33.149120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.175236, 33.930691, 33.126511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905228, 33.815639, 33.398281>,  <42.743221, 33.746609, 33.561344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.905228, 33.815639, 33.398281>,  <43.175236, 33.930691, 33.126511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905228, 33.815639, 33.398281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019216, -0.913713, -0.405905,
		0.737550, -0.287050, 0.611247,
		-0.675020, -0.287629, 0.679425,
		42.702721, 33.729351, 33.602108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382755, 33.314449, 33.388630>,  <43.175236, 33.930691, 33.126511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382755, 33.314449, 33.388630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987125, 33.317348, 33.447533>,  <42.749748, 33.319088, 33.482876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987125, 33.317348, 33.447533>,  <43.382755, 33.314449, 33.388630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987125, 33.317348, 33.447533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066739, -0.912629, -0.403304,
		0.131469, -0.408724, 0.903139,
		-0.989071, 0.007252, 0.147260,
		42.690403, 33.319523, 33.491711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.238346, 32.688854, 33.658424>,  <43.382755, 33.314449, 33.388630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.238346, 32.688854, 33.658424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890354, 32.826702, 33.517361>,  <42.681561, 32.909412, 33.432720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.890354, 32.826702, 33.517361>,  <43.238346, 32.688854, 33.658424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.890354, 32.826702, 33.517361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124226, -0.845327, -0.519606,
		-0.477183, -0.408237, 0.778228,
		-0.869979, 0.344624, -0.352662,
		42.629360, 32.930088, 33.411564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941074, 32.072701, 33.526356>,  <43.238346, 32.688854, 33.658424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941074, 32.072701, 33.526356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679588, 32.311188, 33.339951>,  <42.522697, 32.454281, 33.228107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.679588, 32.311188, 33.339951>,  <42.941074, 32.072701, 33.526356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.679588, 32.311188, 33.339951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233901, -0.744867, -0.624871,
		-0.719682, -0.299488, 0.626390,
		-0.653719, 0.596222, -0.466016,
		42.483475, 32.490055, 33.200146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.253986, 31.660995, 33.456970>,  <42.941074, 32.072701, 33.526356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.253986, 31.660995, 33.456970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266701, 31.939734, 33.170364>,  <42.274330, 32.106976, 32.998402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.266701, 31.939734, 33.170364>,  <42.253986, 31.660995, 33.456970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.266701, 31.939734, 33.170364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350210, -0.663669, -0.660981,
		-0.936132, 0.271944, 0.222945,
		0.031788, 0.696843, -0.716519,
		42.276237, 32.148785, 32.955410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.622478, 31.454018, 33.007687>,  <42.253986, 31.660995, 33.456970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.622478, 31.454018, 33.007687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797848, 31.722219, 32.768284>,  <41.903069, 31.883141, 32.624641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.797848, 31.722219, 32.768284>,  <41.622478, 31.454018, 33.007687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797848, 31.722219, 32.768284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411192, -0.442498, -0.796942,
		-0.799191, 0.595499, 0.081705,
		0.438423, 0.670505, -0.598505,
		41.929375, 31.923370, 32.588734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.139099, 31.533026, 32.491737>,  <41.622478, 31.454018, 33.007687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.139099, 31.533026, 32.491737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505566, 31.618809, 32.356304>,  <41.725445, 31.670279, 32.275043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.505566, 31.618809, 32.356304>,  <41.139099, 31.533026, 32.491737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.505566, 31.618809, 32.356304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176653, -0.542236, -0.821446,
		-0.359758, 0.812397, -0.458896,
		0.916170, 0.214457, -0.338586,
		41.780418, 31.683146, 32.254730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.062931, 31.715338, 31.701347>,  <41.139099, 31.533026, 32.491737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.062931, 31.715338, 31.701347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449150, 31.625874, 31.754543>,  <41.680882, 31.572195, 31.786461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.449150, 31.625874, 31.754543>,  <41.062931, 31.715338, 31.701347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.449150, 31.625874, 31.754543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009489, -0.480472, -0.876959,
		0.260039, 0.848011, -0.461798,
		0.965551, -0.223662, 0.132988,
		41.738815, 31.558775, 31.794439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.390480, 31.918470, 31.113312>,  <41.062931, 31.715338, 31.701347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.390480, 31.918470, 31.113312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646481, 31.651384, 31.265392>,  <41.800083, 31.491133, 31.356642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.646481, 31.651384, 31.265392>,  <41.390480, 31.918470, 31.113312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.646481, 31.651384, 31.265392> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032993, -0.470479, -0.881794,
		0.767663, 0.576895, -0.279078,
		0.640003, -0.667713, 0.380203,
		41.838482, 31.451071, 31.379454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956345, 31.859032, 30.635139>,  <41.390480, 31.918470, 31.113312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956345, 31.859032, 30.635139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029716, 31.525736, 30.843779>,  <42.073742, 31.325758, 30.968962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.029716, 31.525736, 30.843779>,  <41.956345, 31.859032, 30.635139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029716, 31.525736, 30.843779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121054, -0.507417, -0.853155,
		0.975550, 0.219639, 0.007790,
		0.183433, -0.833239, 0.521599,
		42.084747, 31.275764, 31.000257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.522560, 31.621508, 30.351257>,  <41.956345, 31.859032, 30.635139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.522560, 31.621508, 30.351257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331837, 31.319054, 30.530552>,  <42.217403, 31.137581, 30.638128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.331837, 31.319054, 30.530552>,  <42.522560, 31.621508, 30.351257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.331837, 31.319054, 30.530552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117106, -0.560034, -0.820151,
		0.871172, -0.338562, 0.355576,
		-0.476807, -0.756133, 0.448239,
		42.188793, 31.092215, 30.665024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858704, 31.092348, 30.057297>,  <42.522560, 31.621508, 30.351257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858704, 31.092348, 30.057297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531174, 30.921045, 30.210201>,  <42.334656, 30.818264, 30.301945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.531174, 30.921045, 30.210201>,  <42.858704, 31.092348, 30.057297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.531174, 30.921045, 30.210201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049449, -0.610813, -0.790230,
		0.571913, -0.665961, 0.478970,
		-0.818823, -0.428257, 0.382262,
		42.285526, 30.792568, 30.324881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.859421, 30.380188, 30.088884>,  <42.858704, 31.092348, 30.057297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.859421, 30.380188, 30.088884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465012, 30.446424, 30.081438>,  <42.228367, 30.486166, 30.076971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.465012, 30.446424, 30.081438>,  <42.859421, 30.380188, 30.088884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465012, 30.446424, 30.081438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096072, -0.656198, -0.748448,
		-0.136153, -0.736195, 0.662932,
		-0.986018, 0.165593, -0.018616,
		42.169205, 30.496103, 30.075853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.621246, 29.776470, 29.845024>,  <42.859421, 30.380188, 30.088884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.621246, 29.776470, 29.845024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316185, 30.022657, 29.765472>,  <42.133148, 30.170370, 29.717741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316185, 30.022657, 29.765472>,  <42.621246, 29.776470, 29.845024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316185, 30.022657, 29.765472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181464, -0.498732, -0.847548,
		-0.620829, -0.610296, 0.492046,
		-0.762654, 0.615471, -0.198881,
		42.087387, 30.207298, 29.705809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.079586, 29.338463, 29.666309>,  <42.621246, 29.776470, 29.845024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.079586, 29.338463, 29.666309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985126, 29.694075, 29.509411>,  <41.928452, 29.907442, 29.415272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.985126, 29.694075, 29.509411>,  <42.079586, 29.338463, 29.666309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.985126, 29.694075, 29.509411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177992, -0.436409, -0.881967,
		-0.955276, -0.138458, 0.261298,
		-0.236149, 0.889031, -0.392247,
		41.914280, 29.960785, 29.391737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.428162, 29.233521, 29.288055>,  <42.079586, 29.338463, 29.666309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.428162, 29.233521, 29.288055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569386, 29.581694, 29.150831>,  <41.654121, 29.790598, 29.068497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.569386, 29.581694, 29.150831>,  <41.428162, 29.233521, 29.288055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.569386, 29.581694, 29.150831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313729, -0.235302, -0.919895,
		-0.881431, 0.432409, 0.190004,
		0.353063, 0.870434, -0.343062,
		41.675304, 29.842823, 29.047913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.888954, 29.534294, 28.922459>,  <41.428162, 29.233521, 29.288055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.888954, 29.534294, 28.922459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207825, 29.710531, 28.757349>,  <41.399147, 29.816273, 28.658283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.207825, 29.710531, 28.757349>,  <40.888954, 29.534294, 28.922459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.207825, 29.710531, 28.757349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287840, -0.323633, -0.901338,
		-0.530709, 0.837342, -0.131174,
		0.797180, 0.440591, -0.412775,
		41.446980, 29.842709, 28.633516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601528, 29.874258, 28.327265>,  <40.888954, 29.534294, 28.922459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601528, 29.874258, 28.327265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995190, 29.808060, 28.301815>,  <41.231388, 29.768341, 28.286545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.995190, 29.808060, 28.301815>,  <40.601528, 29.874258, 28.327265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.995190, 29.808060, 28.301815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107965, -0.274710, -0.955446,
		0.140644, 0.947178, -0.288225,
		0.984156, -0.165496, -0.063626,
		41.290436, 29.758411, 28.282726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.981094, 30.250967, 27.805765>,  <40.601528, 29.874258, 28.327265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.981094, 30.250967, 27.805765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102222, 29.874502, 27.865776>,  <41.174900, 29.648623, 27.901783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.102222, 29.874502, 27.865776>,  <40.981094, 30.250967, 27.805765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.102222, 29.874502, 27.865776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298258, -0.243100, -0.923009,
		0.905174, 0.234760, -0.354326,
		0.302822, -0.941165, 0.150028,
		41.193069, 29.592154, 27.910784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.676373, 30.051743, 27.496986>,  <40.981094, 30.250967, 27.805765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.676373, 30.051743, 27.496986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977726, 30.294411, 27.598467>,  <42.158539, 30.440012, 27.659355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.977726, 30.294411, 27.598467>,  <41.676373, 30.051743, 27.496986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.977726, 30.294411, 27.598467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394089, -0.725395, 0.564354,
		0.526411, -0.325194, -0.785583,
		0.753382, 0.606672, 0.253700,
		42.203739, 30.476412, 27.674578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.522568, 30.488754, 26.936403>,  <41.676373, 30.051743, 27.496986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.522568, 30.488754, 26.936403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609818, 30.316130, 26.586277>,  <41.662167, 30.212555, 26.376202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.609818, 30.316130, 26.586277>,  <41.522568, 30.488754, 26.936403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.609818, 30.316130, 26.586277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248278, -0.891941, 0.377889,
		-0.943811, 0.134894, -0.301702,
		0.218125, -0.431562, -0.875315,
		41.675255, 30.186661, 26.323683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.049747, 30.962326, 26.938614>,  <41.522568, 30.488754, 26.936403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.049747, 30.962326, 26.938614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890316, 31.301846, 26.799662>,  <41.794655, 31.505558, 26.716290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.890316, 31.301846, 26.799662>,  <42.049747, 30.962326, 26.938614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.890316, 31.301846, 26.799662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773414, 0.514648, 0.370092,
		0.492913, -0.121159, -0.861602,
		-0.398582, 0.848798, -0.347382,
		41.770741, 31.556484, 26.695446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.414902, 31.219915, 26.358583>,  <42.049747, 30.962326, 26.938614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.414902, 31.219915, 26.358583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225754, 31.484196, 26.591776>,  <42.112267, 31.642765, 26.731691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225754, 31.484196, 26.591776>,  <42.414902, 31.219915, 26.358583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225754, 31.484196, 26.591776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879189, 0.309874, 0.361944,
		0.058486, 0.683704, -0.727412,
		-0.472869, 0.660702, 0.582982,
		42.083893, 31.682405, 26.766670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747757, 30.641392, 26.094971>,  <42.414902, 31.219915, 26.358583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747757, 30.641392, 26.094971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066547, 30.506821, 25.894316>,  <43.257824, 30.426079, 25.773922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.066547, 30.506821, 25.894316>,  <42.747757, 30.641392, 26.094971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.066547, 30.506821, 25.894316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593174, 0.279360, 0.755051,
		-0.113883, -0.899319, 0.422205,
		0.796979, -0.336429, -0.501638,
		43.305641, 30.405891, 25.743824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.080585, 30.301128, 26.597965>,  <42.747757, 30.641392, 26.094971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.080585, 30.301128, 26.597965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355995, 30.410933, 26.329464>,  <43.521240, 30.476814, 26.168364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.355995, 30.410933, 26.329464>,  <43.080585, 30.301128, 26.597965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.355995, 30.410933, 26.329464> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576215, 0.354955, 0.736195,
		0.440358, -0.893673, 0.086218,
		0.688521, 0.274509, -0.671255,
		43.562553, 30.493284, 26.128088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.761139, 30.011637, 26.859365>,  <43.080585, 30.301128, 26.597965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.761139, 30.011637, 26.859365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772175, 30.343435, 26.636234>,  <43.778797, 30.542515, 26.502356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.772175, 30.343435, 26.636234>,  <43.761139, 30.011637, 26.859365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.772175, 30.343435, 26.636234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550792, 0.453071, 0.700967,
		0.834186, -0.326590, -0.444379,
		0.027594, 0.829497, -0.557829,
		43.780453, 30.592285, 26.468885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.326031, 30.168709, 27.001980>,  <43.761139, 30.011637, 26.859365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.326031, 30.168709, 27.001980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164398, 30.502321, 26.851725>,  <44.067417, 30.702490, 26.761572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.164398, 30.502321, 26.851725>,  <44.326031, 30.168709, 27.001980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164398, 30.502321, 26.851725> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665396, 0.549802, 0.504941,
		0.627664, -0.045910, -0.777129,
		-0.404085, 0.834032, -0.375639,
		44.043171, 30.752531, 26.739033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.937366, 30.724398, 26.779987>,  <44.326031, 30.168709, 27.001980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.937366, 30.724398, 26.779987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576786, 30.866501, 26.878923>,  <44.360435, 30.951763, 26.938284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.576786, 30.866501, 26.878923>,  <44.937366, 30.724398, 26.779987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.576786, 30.866501, 26.878923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426465, 0.630866, 0.648178,
		0.074231, 0.689784, -0.720200,
		-0.901453, 0.355256, 0.247339,
		44.306351, 30.973078, 26.953125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.011974, 31.449003, 26.815031>,  <44.937366, 30.724398, 26.779987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.011974, 31.449003, 26.815031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708076, 31.327625, 27.045057>,  <44.525738, 31.254799, 27.183073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.708076, 31.327625, 27.045057>,  <45.011974, 31.449003, 26.815031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.708076, 31.327625, 27.045057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263573, 0.664778, 0.698999,
		-0.594399, 0.682636, -0.425085,
		-0.759749, -0.303444, 0.575068,
		44.480152, 31.236591, 27.217577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.778694, 32.060867, 27.155226>,  <45.011974, 31.449003, 26.815031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.778694, 32.060867, 27.155226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583664, 31.789503, 27.375051>,  <44.466644, 31.626684, 27.506947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.583664, 31.789503, 27.375051>,  <44.778694, 32.060867, 27.155226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.583664, 31.789503, 27.375051> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001292, 0.630017, 0.776580,
		-0.873077, 0.377935, -0.308060,
		-0.487580, -0.678412, 0.549566,
		44.437389, 31.585979, 27.539921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.279213, 32.391758, 27.538427>,  <44.778694, 32.060867, 27.155226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.279213, 32.391758, 27.538427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315285, 32.055420, 27.751913>,  <44.336929, 31.853619, 27.880005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.315285, 32.055420, 27.751913>,  <44.279213, 32.391758, 27.538427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.315285, 32.055420, 27.751913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165330, 0.541102, 0.824545,
		-0.982107, 0.013881, 0.187813,
		0.090180, -0.840842, 0.533715,
		44.342339, 31.803167, 27.912027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.976536, 32.551750, 28.226988>,  <44.279213, 32.391758, 27.538427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.976536, 32.551750, 28.226988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191078, 32.223469, 28.305750>,  <44.319801, 32.026501, 28.353006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.191078, 32.223469, 28.305750>,  <43.976536, 32.551750, 28.226988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.191078, 32.223469, 28.305750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148898, 0.321653, 0.935077,
		-0.830756, -0.472212, 0.294721,
		0.536353, -0.820704, 0.196904,
		44.351986, 31.977257, 28.364820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.718010, 32.323219, 28.812553>,  <43.976536, 32.551750, 28.226988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.718010, 32.323219, 28.812553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090237, 32.177731, 28.795790>,  <44.313572, 32.090439, 28.785730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090237, 32.177731, 28.795790>,  <43.718010, 32.323219, 28.812553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090237, 32.177731, 28.795790> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169404, 0.326256, 0.929978,
		-0.324577, -0.872505, 0.365218,
		0.930565, -0.363719, -0.041911,
		44.369408, 32.068615, 28.783216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769253, 31.863140, 29.390154>,  <43.718010, 32.323219, 28.812553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769253, 31.863140, 29.390154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131119, 31.974163, 29.260820>,  <44.348240, 32.040775, 29.183220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.131119, 31.974163, 29.260820>,  <43.769253, 31.863140, 29.390154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.131119, 31.974163, 29.260820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298609, 0.128387, 0.945700,
		0.303998, -0.952091, 0.033266,
		0.904664, 0.277558, -0.323333,
		44.402519, 32.057430, 29.163820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.193954, 31.538158, 29.829760>,  <43.769253, 31.863140, 29.390154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.193954, 31.538158, 29.829760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419479, 31.839392, 29.694122>,  <44.554794, 32.020130, 29.612740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.419479, 31.839392, 29.694122>,  <44.193954, 31.538158, 29.829760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.419479, 31.839392, 29.694122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347583, 0.156085, 0.924566,
		0.749204, -0.639141, -0.173757,
		0.563808, 0.753084, -0.339094,
		44.588623, 32.065315, 29.592394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.841576, 31.425488, 30.077347>,  <44.193954, 31.538158, 29.829760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.841576, 31.425488, 30.077347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843086, 31.814077, 29.982502>,  <44.843990, 32.047230, 29.925596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.843086, 31.814077, 29.982502>,  <44.841576, 31.425488, 30.077347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.843086, 31.814077, 29.982502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375739, 0.218360, 0.900632,
		0.926718, -0.092489, -0.364198,
		0.003772, 0.971475, -0.237110,
		44.844219, 32.105518, 29.911369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.395176, 31.736015, 30.418667>,  <44.841576, 31.425488, 30.077347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.395176, 31.736015, 30.418667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171524, 32.055229, 30.328770>,  <45.037331, 32.246758, 30.274832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.171524, 32.055229, 30.328770>,  <45.395176, 31.736015, 30.418667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171524, 32.055229, 30.328770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310355, 0.452834, 0.835835,
		0.768797, 0.397594, -0.500869,
		-0.559134, 0.798035, -0.224742,
		45.003784, 32.294640, 30.261347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.732311, 32.315868, 30.591816>,  <45.395176, 31.736015, 30.418667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.732311, 32.315868, 30.591816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346863, 32.422169, 30.603174>,  <45.115593, 32.485950, 30.609989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.346863, 32.422169, 30.603174>,  <45.732311, 32.315868, 30.591816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.346863, 32.422169, 30.603174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180886, 0.570268, 0.801296,
		0.196753, 0.777283, -0.597594,
		-0.963623, 0.265754, 0.028398,
		45.057777, 32.501896, 30.611694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.838684, 32.823811, 31.111422>,  <45.732311, 32.315868, 30.591816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.838684, 32.823811, 31.111422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448631, 32.828037, 31.022869>,  <45.214600, 32.830574, 30.969738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.448631, 32.828037, 31.022869>,  <45.838684, 32.823811, 31.111422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.448631, 32.828037, 31.022869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199333, 0.394852, 0.896860,
		0.096893, 0.918684, -0.382925,
		-0.975130, 0.010570, -0.221382,
		45.156094, 32.831207, 30.956455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.676029, 33.518894, 31.280451>,  <45.838684, 32.823811, 31.111422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.676029, 33.518894, 31.280451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372005, 33.259247, 31.292738>,  <45.189590, 33.103458, 31.300110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.372005, 33.259247, 31.292738>,  <45.676029, 33.518894, 31.280451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.372005, 33.259247, 31.292738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235730, 0.319450, 0.917814,
		-0.605587, 0.690356, -0.395820,
		-0.760063, -0.649122, 0.030718,
		45.143986, 33.064510, 31.301952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.098309, 33.867035, 31.381250>,  <45.676029, 33.518894, 31.280451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.098309, 33.867035, 31.381250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008156, 33.501827, 31.517248>,  <44.954063, 33.282703, 31.598846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.008156, 33.501827, 31.517248>,  <45.098309, 33.867035, 31.381250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.008156, 33.501827, 31.517248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008825, 0.350874, 0.936381,
		-0.974232, 0.208039, -0.087136,
		-0.225378, -0.913021, 0.339996,
		44.940544, 33.227921, 31.619247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.592762, 33.969673, 31.862547>,  <45.098309, 33.867035, 31.381250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.592762, 33.969673, 31.862547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721565, 33.603661, 31.959736>,  <44.798847, 33.384052, 32.018051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.721565, 33.603661, 31.959736>,  <44.592762, 33.969673, 31.862547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.721565, 33.603661, 31.959736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228343, 0.174003, 0.957905,
		-0.918788, -0.363933, -0.152910,
		0.322007, -0.915027, 0.242974,
		44.818169, 33.329151, 32.032627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.089584, 33.771236, 32.346645>,  <44.592762, 33.969673, 31.862547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.089584, 33.771236, 32.346645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422104, 33.556324, 32.403606>,  <44.621616, 33.427376, 32.437782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422104, 33.556324, 32.403606>,  <44.089584, 33.771236, 32.346645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422104, 33.556324, 32.403606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053194, 0.178120, 0.982570,
		-0.553277, -0.824383, 0.119491,
		0.831297, -0.537277, 0.142402,
		44.671494, 33.395142, 32.446327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.911644, 33.337425, 32.881195>,  <44.089584, 33.771236, 32.346645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.911644, 33.337425, 32.881195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311520, 33.329865, 32.874763>,  <44.551445, 33.325329, 32.870903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.311520, 33.329865, 32.874763>,  <43.911644, 33.337425, 32.881195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.311520, 33.329865, 32.874763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019404, 0.191507, 0.981299,
		-0.015475, -0.981309, 0.191815,
		0.999692, -0.018908, -0.016078,
		44.611427, 33.324192, 32.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.077282, 32.957390, 33.458214>,  <43.911644, 33.337425, 32.881195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.077282, 32.957390, 33.458214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407639, 33.162457, 33.364338>,  <44.605850, 33.285496, 33.308014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.407639, 33.162457, 33.364338>,  <44.077282, 32.957390, 33.458214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.407639, 33.162457, 33.364338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142618, 0.212756, 0.966641,
		0.545497, -0.831809, 0.102598,
		0.825889, 0.512668, -0.234689,
		44.655407, 33.316257, 33.293930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.328724, 33.111107, 34.098236>,  <44.077282, 32.957390, 33.458214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.328724, 33.111107, 34.098236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596359, 33.340305, 33.908920>,  <44.756939, 33.477825, 33.795330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596359, 33.340305, 33.908920>,  <44.328724, 33.111107, 34.098236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596359, 33.340305, 33.908920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192108, 0.481853, 0.854934,
		0.717929, -0.662946, 0.212324,
		0.669084, 0.572992, -0.473293,
		44.797085, 33.512203, 33.766933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.991192, 33.109718, 34.463833>,  <44.328724, 33.111107, 34.098236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.991192, 33.109718, 34.463833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988281, 33.453213, 34.258884>,  <44.986534, 33.659309, 34.135918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.988281, 33.453213, 34.258884>,  <44.991192, 33.109718, 34.463833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.988281, 33.453213, 34.258884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153658, 0.507255, 0.847987,
		0.988097, -0.072561, -0.135641,
		-0.007274, 0.858736, -0.512367,
		44.986099, 33.710835, 34.105175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.507298, 33.479099, 34.777431>,  <44.991192, 33.109718, 34.463833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.507298, 33.479099, 34.777431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336205, 33.760998, 34.551022>,  <45.233547, 33.930138, 34.415176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.336205, 33.760998, 34.551022>,  <45.507298, 33.479099, 34.777431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.336205, 33.760998, 34.551022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242388, 0.692689, 0.679286,
		0.870799, 0.153357, -0.467108,
		-0.427734, 0.704744, -0.566021,
		45.207886, 33.972420, 34.381214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.906528, 33.964245, 34.911911>,  <45.507298, 33.479099, 34.777431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.906528, 33.964245, 34.911911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565422, 34.129292, 34.783829>,  <45.360756, 34.228321, 34.706982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.565422, 34.129292, 34.783829>,  <45.906528, 33.964245, 34.911911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.565422, 34.129292, 34.783829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035690, 0.565608, 0.823902,
		0.521068, 0.714026, -0.467606,
		-0.852768, 0.412620, -0.320204,
		45.309593, 34.253078, 34.687767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.903366, 34.645355, 35.013351>,  <45.906528, 33.964245, 34.911911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.903366, 34.645355, 35.013351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511860, 34.564495, 34.999809>,  <45.276955, 34.515980, 34.991684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.511860, 34.564495, 34.999809>,  <45.903366, 34.645355, 35.013351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.511860, 34.564495, 34.999809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150452, 0.596384, 0.788473,
		-0.139197, 0.776827, -0.614136,
		-0.978769, -0.202151, -0.033860,
		45.218227, 34.503849, 34.989651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.407166, 35.007401, 34.611404>,  <45.903366, 34.645355, 35.013351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.407166, 35.007401, 34.611404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318245, 35.394821, 34.566692>,  <46.264893, 35.627274, 34.539864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.318245, 35.394821, 34.566692>,  <46.407166, 35.007401, 34.611404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.318245, 35.394821, 34.566692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209931, 0.159509, 0.964617,
		0.952110, 0.190966, -0.238787,
		-0.222297, 0.968550, -0.111780,
		46.251556, 35.685387, 34.533157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.003471, 35.509747, 34.750069>,  <46.407166, 35.007401, 34.611404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.003471, 35.509747, 34.750069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667389, 35.713024, 34.825748>,  <46.465740, 35.834991, 34.871159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.667389, 35.713024, 34.825748>,  <47.003471, 35.509747, 34.750069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.667389, 35.713024, 34.825748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298150, 0.141489, 0.943974,
		0.452955, 0.849539, -0.270398,
		-0.840202, 0.508197, 0.189202,
		46.415329, 35.865482, 34.882507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.706631, 35.223656, 34.957474>,  <47.003471, 35.509747, 34.750069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.706631, 35.223656, 34.957474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486603, 34.891479, 34.922153>,  <47.354588, 34.692173, 34.900963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.486603, 34.891479, 34.922153>,  <47.706631, 35.223656, 34.957474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.486603, 34.891479, 34.922153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828714, -0.529715, -0.180652,
		0.103246, -0.172547, 0.979575,
		-0.550067, -0.830439, -0.088301,
		47.321583, 34.642349, 34.895664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<35.780609, 37.012981, 44.478115> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555370, 36.686607, 44.530525>,  <35.420227, 36.490784, 44.561970>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.555370, 36.686607, 44.530525>,  <35.780609, 37.012981, 44.478115>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.555370, 36.686607, 44.530525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104252, -0.227421, -0.968200,
		0.819790, -0.531529, 0.213123,
		-0.563095, -0.815939, 0.131024,
		35.386440, 36.441826, 44.569832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151985, 36.460709, 44.177258>,  <35.780609, 37.012981, 44.478115>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151985, 36.460709, 44.177258> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762169, 36.371704, 44.188293>,  <35.528278, 36.318302, 44.194916>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.762169, 36.371704, 44.188293>,  <36.151985, 36.460709, 44.177258>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762169, 36.371704, 44.188293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041342, -0.299262, -0.953275,
		0.220372, -0.927863, 0.300842,
		-0.974539, -0.222513, 0.027589,
		35.469807, 36.304951, 44.196571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.096344, 35.966793, 43.733959>,  <36.151985, 36.460709, 44.177258>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.096344, 35.966793, 43.733959> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707756, 36.056625, 43.764435>,  <35.474602, 36.110523, 43.782719>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.707756, 36.056625, 43.764435>,  <36.096344, 35.966793, 43.733959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707756, 36.056625, 43.764435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157582, -0.371209, -0.915080,
		-0.177226, -0.900982, 0.396009,
		-0.971473, 0.224580, 0.076191,
		35.416313, 36.124001, 43.787292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.734711, 35.367439, 43.423897>,  <36.096344, 35.966793, 43.733959>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.734711, 35.367439, 43.423897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484310, 35.678082, 43.395592>,  <35.334068, 35.864468, 43.378609>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.484310, 35.678082, 43.395592>,  <35.734711, 35.367439, 43.423897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484310, 35.678082, 43.395592> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261325, -0.294406, -0.919258,
		-0.734733, -0.556965, 0.387244,
		-0.626001, 0.776605, -0.070761,
		35.296509, 35.911064, 43.374363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.122665, 35.064331, 43.147499>,  <35.734711, 35.367439, 43.423897>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.122665, 35.064331, 43.147499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102837, 35.457367, 43.075886>,  <35.090939, 35.693188, 43.032917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.102837, 35.457367, 43.075886>,  <35.122665, 35.064331, 43.147499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.102837, 35.457367, 43.075886> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333496, -0.185253, -0.924371,
		-0.941447, 0.013882, 0.336874,
		-0.049575, 0.982593, -0.179036,
		35.087963, 35.752144, 43.022175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424030, 35.144733, 42.717525>,  <35.122665, 35.064331, 43.147499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424030, 35.144733, 42.717525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647999, 35.471691, 42.663326>,  <34.782379, 35.667866, 42.630806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.647999, 35.471691, 42.663326>,  <34.424030, 35.144733, 42.717525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647999, 35.471691, 42.663326> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200311, -0.025143, -0.979410,
		-0.803969, 0.575531, 0.149655,
		0.559918, 0.817393, -0.135500,
		34.815975, 35.716908, 42.622677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013889, 35.582462, 42.185627>,  <34.424030, 35.144733, 42.717525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013889, 35.582462, 42.185627> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.384571, 35.732731, 42.181965>,  <34.606979, 35.822891, 42.179768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.384571, 35.732731, 42.181965>,  <34.013889, 35.582462, 42.185627>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.384571, 35.732731, 42.181965> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059928, 0.123701, -0.990508,
		-0.370974, 0.918460, 0.137148,
		0.926708, 0.375672, -0.009151,
		34.662582, 35.845432, 42.179218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938778, 36.016140, 41.622242>,  <34.013889, 35.582462, 42.185627>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938778, 36.016140, 41.622242> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331200, 35.959164, 41.674778>,  <34.566650, 35.924980, 41.706299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.331200, 35.959164, 41.674778>,  <33.938778, 36.016140, 41.622242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331200, 35.959164, 41.674778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116721, -0.106597, -0.987428,
		0.154649, 0.984047, -0.087952,
		0.981050, -0.142439, 0.131344,
		34.625515, 35.916431, 41.714180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.356377, 36.317154, 40.983063>,  <33.938778, 36.016140, 41.622242>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.356377, 36.317154, 40.983063> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624321, 36.089542, 41.173843>,  <34.785088, 35.952976, 41.288311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.624321, 36.089542, 41.173843>,  <34.356377, 36.317154, 40.983063>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.624321, 36.089542, 41.173843> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297293, -0.383075, -0.874569,
		0.680365, 0.727638, -0.087440,
		0.669865, -0.569031, 0.476953,
		34.825279, 35.918835, 41.316929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919792, 36.464207, 40.757675>,  <34.356377, 36.317154, 40.983063>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919792, 36.464207, 40.757675> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023636, 36.113678, 40.919991>,  <35.085941, 35.903362, 41.017380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.023636, 36.113678, 40.919991>,  <34.919792, 36.464207, 40.757675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.023636, 36.113678, 40.919991> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476440, -0.249274, -0.843129,
		0.840003, 0.412223, 0.352799,
		0.259614, -0.876319, 0.405791,
		35.101521, 35.850780, 41.041729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.696987, 36.384991, 40.727631>,  <34.919792, 36.464207, 40.757675>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.696987, 36.384991, 40.727631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512558, 36.030197, 40.717270>,  <35.401901, 35.817322, 40.711052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.512558, 36.030197, 40.717270>,  <35.696987, 36.384991, 40.727631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512558, 36.030197, 40.717270> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483740, -0.226777, -0.845321,
		0.743911, -0.402288, 0.533631,
		-0.461078, -0.886982, -0.025901,
		35.374233, 35.764103, 40.709499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.203327, 35.914501, 40.566654>,  <35.696987, 36.384991, 40.727631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.203327, 35.914501, 40.566654> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868011, 35.709812, 40.491386>,  <35.666821, 35.586998, 40.446224>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.868011, 35.709812, 40.491386>,  <36.203327, 35.914501, 40.566654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868011, 35.709812, 40.491386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423095, -0.392870, -0.816482,
		0.343882, -0.764066, 0.545847,
		-0.838293, -0.511719, -0.188172,
		35.616524, 35.556297, 40.434937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.442467, 35.287434, 40.542923>,  <36.203327, 35.914501, 40.566654>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.442467, 35.287434, 40.542923> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101707, 35.285580, 40.333447>,  <35.897251, 35.284466, 40.207760>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.101707, 35.285580, 40.333447>,  <36.442467, 35.287434, 40.542923>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.101707, 35.285580, 40.333447> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511582, -0.221292, -0.830249,
		-0.112040, -0.975196, 0.190889,
		-0.851898, -0.004634, -0.523687,
		35.846138, 35.284191, 40.176342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551384, 34.813068, 40.010887>,  <36.442467, 35.287434, 40.542923>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551384, 34.813068, 40.010887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245251, 35.022621, 39.861320>,  <36.061569, 35.148354, 39.771580>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245251, 35.022621, 39.861320>,  <36.551384, 34.813068, 40.010887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245251, 35.022621, 39.861320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284458, -0.245812, -0.926639,
		-0.577366, -0.815549, 0.039104,
		-0.765332, 0.523886, -0.373913,
		36.015652, 35.179787, 39.749146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395924, 34.403831, 39.484272>,  <36.551384, 34.813068, 40.010887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395924, 34.403831, 39.484272> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221493, 34.757488, 39.417187>,  <36.116833, 34.969681, 39.376938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.221493, 34.757488, 39.417187>,  <36.395924, 34.403831, 39.484272>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221493, 34.757488, 39.417187> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213111, -0.079601, -0.973780,
		-0.874310, -0.460387, -0.153709,
		-0.436080, 0.884142, -0.167710,
		36.090668, 35.022732, 39.366875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.040852, 34.354244, 38.847515>,  <36.395924, 34.403831, 39.484272>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.040852, 34.354244, 38.847515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055870, 34.751102, 38.895237>,  <36.064880, 34.989220, 38.923870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.055870, 34.751102, 38.895237>,  <36.040852, 34.354244, 38.847515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.055870, 34.751102, 38.895237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337503, 0.099783, -0.936021,
		-0.940575, 0.075410, -0.331106,
		0.037547, 0.992148, 0.119305,
		36.067135, 35.048748, 38.931030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783974, 34.575790, 38.247612>,  <36.040852, 34.354244, 38.847515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783974, 34.575790, 38.247612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996014, 34.888119, 38.379860>,  <36.123238, 35.075516, 38.459209>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.996014, 34.888119, 38.379860>,  <35.783974, 34.575790, 38.247612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.996014, 34.888119, 38.379860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485059, 0.040572, -0.873540,
		-0.695495, 0.623432, -0.357239,
		0.530098, 0.780825, 0.330619,
		36.155045, 35.122368, 38.479046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636112, 35.195248, 37.731647>,  <35.783974, 34.575790, 38.247612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636112, 35.195248, 37.731647> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975777, 35.257401, 37.933552>,  <36.179573, 35.294693, 38.054695>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.975777, 35.257401, 37.933552>,  <35.636112, 35.195248, 37.731647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.975777, 35.257401, 37.933552> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478073, 0.180029, -0.859672,
		-0.224454, 0.971311, 0.078587,
		0.849157, 0.155386, 0.504765,
		36.230522, 35.304016, 38.084980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829689, 35.905113, 37.498692>,  <35.636112, 35.195248, 37.731647>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829689, 35.905113, 37.498692> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146309, 35.710430, 37.646507>,  <36.336281, 35.593620, 37.735199>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.146309, 35.710430, 37.646507>,  <35.829689, 35.905113, 37.498692>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.146309, 35.710430, 37.646507> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542508, 0.281302, -0.791552,
		0.281302, 0.827033, 0.486709,
		0.791552, -0.486709, 0.369541,
		36.383774, 35.564419, 37.757370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.325108, 36.431644, 37.400402>,  <35.829689, 35.905113, 37.498692>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.325108, 36.431644, 37.400402> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499126, 36.075466, 37.453827>,  <36.603539, 35.861759, 37.485882>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.499126, 36.075466, 37.453827>,  <36.325108, 36.431644, 37.400402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.499126, 36.075466, 37.453827> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660787, 0.214978, -0.719128,
		0.611631, 0.401114, 0.681921,
		0.435050, -0.890445, 0.133564,
		36.629642, 35.808334, 37.493896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071045, 36.640553, 37.514553>,  <36.325108, 36.431644, 37.400402>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071045, 36.640553, 37.514553> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055584, 36.259018, 37.395416>,  <37.046307, 36.030098, 37.323933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.055584, 36.259018, 37.395416>,  <37.071045, 36.640553, 37.514553>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.055584, 36.259018, 37.395416> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521707, 0.234950, -0.820134,
		0.852248, -0.187088, 0.488539,
		-0.038655, -0.953833, -0.297841,
		37.043987, 35.972870, 37.306065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766468, 36.352150, 37.383156>,  <37.071045, 36.640553, 37.514553>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766468, 36.352150, 37.383156> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462368, 36.212803, 37.163822>,  <37.279907, 36.129196, 37.032223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.462368, 36.212803, 37.163822>,  <37.766468, 36.352150, 37.383156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.462368, 36.212803, 37.163822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529639, 0.156382, -0.833683,
		0.376177, -0.924221, 0.065621,
		-0.760246, -0.348368, -0.548330,
		37.234295, 36.108292, 36.999325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251453, 36.480053, 36.914791>,  <37.766468, 36.352150, 37.383156>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.251453, 36.480053, 36.914791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285957, 36.839714, 36.743168>,  <38.306660, 37.055511, 36.640194>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.285957, 36.839714, 36.743168>,  <38.251453, 36.480053, 36.914791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.285957, 36.839714, 36.743168> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333000, 0.431913, 0.838190,
		0.938973, 0.070577, 0.336672,
		0.086256, 0.899149, -0.429057,
		38.311832, 37.109459, 36.614452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.438965, 36.831524, 37.412624>,  <38.251453, 36.480053, 36.914791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.438965, 36.831524, 37.412624> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306332, 37.116539, 37.165287>,  <38.226749, 37.287548, 37.016884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.306332, 37.116539, 37.165287>,  <38.438965, 36.831524, 37.412624>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306332, 37.116539, 37.165287> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324540, 0.529271, 0.783930,
		0.885846, 0.460618, 0.055746,
		-0.331587, 0.712533, -0.618341,
		38.206856, 37.330299, 36.979786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.640205, 37.388996, 37.764927>,  <38.438965, 36.831524, 37.412624>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.640205, 37.388996, 37.764927> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348923, 37.511257, 37.519554>,  <38.174152, 37.584614, 37.372330>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.348923, 37.511257, 37.519554>,  <38.640205, 37.388996, 37.764927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348923, 37.511257, 37.519554> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322277, 0.637207, 0.700075,
		0.604860, 0.707492, -0.365512,
		-0.728204, 0.305651, -0.613430,
		38.130463, 37.602951, 37.335526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.663406, 38.222969, 37.702633>,  <38.640205, 37.388996, 37.764927>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.663406, 38.222969, 37.702633> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292702, 38.098518, 37.618435>,  <38.070278, 38.023849, 37.567917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.292702, 38.098518, 37.618435>,  <38.663406, 38.222969, 37.702633>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.292702, 38.098518, 37.618435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339087, 0.451763, 0.825185,
		-0.161638, 0.836130, -0.524176,
		-0.926765, -0.311123, -0.210498,
		38.014671, 38.005180, 37.555286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.269848, 38.775307, 37.697140>,  <38.663406, 38.222969, 37.702633>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.269848, 38.775307, 37.697140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024300, 38.469074, 37.774143>,  <37.876972, 38.285336, 37.820347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.024300, 38.469074, 37.774143>,  <38.269848, 38.775307, 37.697140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.024300, 38.469074, 37.774143> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405223, 0.514883, 0.755440,
		-0.677468, 0.385729, -0.626299,
		-0.613866, -0.765577, 0.192510,
		37.840141, 38.239403, 37.831898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.744312, 39.033680, 38.048107>,  <38.269848, 38.775307, 37.697140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.744312, 39.033680, 38.048107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676815, 38.647701, 38.128502>,  <37.636314, 38.416115, 38.176739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.676815, 38.647701, 38.128502>,  <37.744312, 39.033680, 38.048107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.676815, 38.647701, 38.128502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272283, 0.241612, 0.931389,
		-0.947305, 0.102442, -0.303510,
		-0.168745, -0.964950, 0.200987,
		37.626190, 38.358215, 38.188797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.204357, 39.132011, 38.452778>,  <37.744312, 39.033680, 38.048107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.204357, 39.132011, 38.452778> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.323483, 38.755890, 38.518669>,  <37.394958, 38.530216, 38.558205>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.323483, 38.755890, 38.518669>,  <37.204357, 39.132011, 38.452778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323483, 38.755890, 38.518669> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284121, 0.077426, 0.955657,
		-0.911361, -0.331414, -0.244101,
		0.297818, -0.940303, 0.164725,
		37.412827, 38.473801, 38.568085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689400, 38.875599, 38.925453>,  <37.204357, 39.132011, 38.452778>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689400, 38.875599, 38.925453> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024021, 38.660503, 38.967442>,  <37.224792, 38.531445, 38.992634>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.024021, 38.660503, 38.967442>,  <36.689400, 38.875599, 38.925453>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.024021, 38.660503, 38.967442> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036768, 0.136053, 0.990019,
		-0.546656, -0.832060, 0.094044,
		0.836550, -0.537742, 0.104967,
		37.274986, 38.499180, 38.998932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.569149, 38.260265, 39.423515>,  <36.689400, 38.875599, 38.925453>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.569149, 38.260265, 39.423515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963223, 38.328732, 39.419209>,  <37.199665, 38.369812, 39.416622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.963223, 38.328732, 39.419209>,  <36.569149, 38.260265, 39.423515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963223, 38.328732, 39.419209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016181, -0.030257, 0.999411,
		0.170743, -0.984777, -0.032579,
		0.985183, 0.171169, -0.010769,
		37.258778, 38.380081, 39.415977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.793133, 37.921722, 39.965771>,  <36.569149, 38.260265, 39.423515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.793133, 37.921722, 39.965771> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104240, 38.151512, 39.863747>,  <37.290905, 38.289387, 39.802532>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.104240, 38.151512, 39.863747>,  <36.793133, 37.921722, 39.965771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104240, 38.151512, 39.863747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238847, 0.105234, 0.965338,
		0.581402, -0.811730, -0.055363,
		0.777768, 0.574473, -0.255062,
		37.337570, 38.323853, 39.787228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.337925, 37.590092, 40.302776>,  <36.793133, 37.921722, 39.965771>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.337925, 37.590092, 40.302776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508080, 37.948521, 40.252022>,  <37.610172, 38.163578, 40.221569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.508080, 37.948521, 40.252022>,  <37.337925, 37.590092, 40.302776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508080, 37.948521, 40.252022> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385986, -0.052822, 0.920991,
		0.818573, -0.440753, -0.368341,
		0.425386, 0.896073, -0.126886,
		37.635696, 38.217342, 40.213955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.029861, 37.582062, 40.560318>,  <37.337925, 37.590092, 40.302776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.029861, 37.582062, 40.560318> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911354, 37.963894, 40.547630>,  <37.840252, 38.192993, 40.540016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.911354, 37.963894, 40.547630>,  <38.029861, 37.582062, 40.560318>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.911354, 37.963894, 40.547630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091873, 0.061540, 0.993867,
		0.950677, 0.291533, -0.105932,
		-0.296264, 0.954579, -0.031720,
		37.822475, 38.250267, 40.538113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.568649, 37.939373, 40.873291>,  <38.029861, 37.582062, 40.560318>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.568649, 37.939373, 40.873291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248955, 38.176380, 40.913589>,  <38.057140, 38.318584, 40.937771>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.248955, 38.176380, 40.913589>,  <38.568649, 37.939373, 40.873291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.248955, 38.176380, 40.913589> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104955, -0.027460, 0.994098,
		0.591788, 0.805089, -0.040241,
		-0.799232, 0.592519, 0.100748,
		38.009186, 38.354137, 40.943813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.842686, 38.439198, 41.289791>,  <38.568649, 37.939373, 40.873291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.842686, 38.439198, 41.289791> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443497, 38.440273, 41.315228>,  <38.203983, 38.440918, 41.330490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.443497, 38.440273, 41.315228>,  <38.842686, 38.439198, 41.289791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.443497, 38.440273, 41.315228> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060768, 0.337204, 0.939468,
		-0.018915, 0.941428, -0.336683,
		-0.997973, 0.002690, 0.063587,
		38.144104, 38.441082, 41.334305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.804546, 38.892178, 41.720592>,  <38.842686, 38.439198, 41.289791>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.804546, 38.892178, 41.720592> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435604, 38.737957, 41.710655>,  <38.214241, 38.645424, 41.704693>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.435604, 38.737957, 41.710655>,  <38.804546, 38.892178, 41.720592>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.435604, 38.737957, 41.710655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198247, 0.417108, 0.886972,
		-0.331606, 0.823027, -0.461155,
		-0.922353, -0.385548, -0.024847,
		38.158897, 38.622292, 41.703201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359001, 39.372005, 42.052929>,  <38.804546, 38.892178, 41.720592>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359001, 39.372005, 42.052929> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124496, 39.048988, 42.078751>,  <37.983791, 38.855179, 42.094242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.124496, 39.048988, 42.078751>,  <38.359001, 39.372005, 42.052929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.124496, 39.048988, 42.078751> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127779, 0.170859, 0.976975,
		-0.799978, 0.564519, -0.203356,
		-0.586266, -0.807543, 0.064550,
		37.948616, 38.806725, 42.098114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.678135, 39.526207, 42.479424>,  <38.359001, 39.372005, 42.052929>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.678135, 39.526207, 42.479424> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714024, 39.128208, 42.496967>,  <37.735558, 38.889408, 42.507492>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.714024, 39.128208, 42.496967>,  <37.678135, 39.526207, 42.479424>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.714024, 39.128208, 42.496967> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196241, 0.025510, 0.980224,
		-0.976443, -0.096550, -0.192971,
		0.089718, -0.995001, 0.043856,
		37.740940, 38.829708, 42.510124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.063503, 39.220661, 42.740986>,  <37.678135, 39.526207, 42.479424>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.063503, 39.220661, 42.740986> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350544, 38.951515, 42.812874>,  <37.522770, 38.790028, 42.856007>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.350544, 38.951515, 42.812874>,  <37.063503, 39.220661, 42.740986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350544, 38.951515, 42.812874> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381738, -0.164179, 0.909572,
		-0.582510, -0.721320, -0.374673,
		0.717605, -0.672862, 0.179719,
		37.565826, 38.749657, 42.866791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<36.764523, 38.589832, 42.880585> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133972, 38.571060, 43.032749>,  <37.355644, 38.559795, 43.124046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.133972, 38.571060, 43.032749>,  <36.764523, 38.589832, 42.880585>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133972, 38.571060, 43.032749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372500, -0.343772, 0.862012,
		0.090320, -0.937880, -0.334998,
		0.923627, -0.046930, 0.380409,
		37.411060, 38.556980, 43.146873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780117, 37.925201, 43.277649>,  <36.764523, 38.589832, 42.880585>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780117, 37.925201, 43.277649> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105278, 38.111500, 43.417515>,  <37.300377, 38.223278, 43.501434>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.105278, 38.111500, 43.417515>,  <36.780117, 37.925201, 43.277649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105278, 38.111500, 43.417515> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397204, 0.004277, 0.917720,
		0.425929, -0.884908, 0.188473,
		0.812904, 0.465746, 0.349668,
		37.349148, 38.251225, 43.522415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.016239, 37.496181, 43.793655>,  <36.780117, 37.925201, 43.277649>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.016239, 37.496181, 43.793655> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180012, 37.855801, 43.855721>,  <37.278275, 38.071571, 43.892960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.180012, 37.855801, 43.855721>,  <37.016239, 37.496181, 43.793655>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.180012, 37.855801, 43.855721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261398, -0.047346, 0.964069,
		0.874090, -0.435285, 0.215624,
		0.409436, 0.899047, 0.155167,
		37.302841, 38.125515, 43.902271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.440697, 37.348755, 44.381485>,  <37.016239, 37.496181, 43.793655>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.440697, 37.348755, 44.381485> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.382843, 37.743755, 44.356426>,  <37.348129, 37.980755, 44.341393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.382843, 37.743755, 44.356426>,  <37.440697, 37.348755, 44.381485>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.382843, 37.743755, 44.356426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167333, 0.037987, 0.985168,
		0.975233, 0.152974, 0.159747,
		-0.144637, 0.987500, -0.062644,
		37.339451, 38.040005, 44.337631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801140, 37.645489, 45.013535>,  <37.440697, 37.348755, 44.381485>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801140, 37.645489, 45.013535> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585529, 37.946350, 44.861897>,  <37.456165, 38.126865, 44.770912>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.585529, 37.946350, 44.861897>,  <37.801140, 37.645489, 45.013535>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.585529, 37.946350, 44.861897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106572, 0.385562, 0.916506,
		0.835521, 0.534421, -0.127669,
		-0.539024, 0.752154, -0.379099,
		37.423820, 38.171997, 44.748165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.058659, 38.173126, 45.356297>,  <37.801140, 37.645489, 45.013535>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.058659, 38.173126, 45.356297> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712650, 38.297802, 45.199020>,  <37.505047, 38.372608, 45.104656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.712650, 38.297802, 45.199020>,  <38.058659, 38.173126, 45.356297>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712650, 38.297802, 45.199020> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266521, 0.378502, 0.886399,
		0.425100, 0.871544, -0.244340,
		-0.865018, 0.311686, -0.393186,
		37.453144, 38.391308, 45.081066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.033596, 38.895931, 45.436024>,  <38.058659, 38.173126, 45.356297>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.033596, 38.895931, 45.436024> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669086, 38.733456, 45.408897>,  <37.450382, 38.635971, 45.392620>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.669086, 38.733456, 45.408897>,  <38.033596, 38.895931, 45.436024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.669086, 38.733456, 45.408897> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220679, 0.342620, 0.913188,
		-0.347690, 0.847126, -0.401857,
		-0.911270, -0.406187, -0.067817,
		37.395706, 38.611599, 45.388554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.587742, 39.362804, 45.812965>,  <38.033596, 38.895931, 45.436024>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.587742, 39.362804, 45.812965> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374084, 39.025040, 45.796696>,  <37.245888, 38.822380, 45.786934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.374084, 39.025040, 45.796696>,  <37.587742, 39.362804, 45.812965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.374084, 39.025040, 45.796696> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279879, 0.131228, 0.951024,
		-0.797719, 0.519370, -0.306429,
		-0.534146, -0.844413, -0.040678,
		37.213840, 38.771717, 45.784492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.945961, 39.523743, 46.021843>,  <37.587742, 39.362804, 45.812965>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.945961, 39.523743, 46.021843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976700, 39.131653, 46.094795>,  <36.995144, 38.896400, 46.138565>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.976700, 39.131653, 46.094795>,  <36.945961, 39.523743, 46.021843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.976700, 39.131653, 46.094795> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183633, 0.165872, 0.968899,
		-0.979986, -0.107951, -0.167254,
		0.076851, -0.980221, 0.182376,
		36.999756, 38.837585, 46.149509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.385860, 39.342793, 46.473732>,  <36.945961, 39.523743, 46.021843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.385860, 39.342793, 46.473732> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652725, 39.048256, 46.518803>,  <36.812843, 38.871532, 46.545845>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.652725, 39.048256, 46.518803>,  <36.385860, 39.342793, 46.473732>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.652725, 39.048256, 46.518803> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067121, 0.091217, 0.993566,
		-0.741884, -0.670431, 0.011432,
		0.667160, -0.736344, 0.112673,
		36.852875, 38.827354, 46.552605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164803, 39.059582, 47.175301>,  <36.385860, 39.342793, 46.473732>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164803, 39.059582, 47.175301> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522041, 38.896824, 47.098549>,  <36.736385, 38.799168, 47.052498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522041, 38.896824, 47.098549>,  <36.164803, 39.059582, 47.175301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522041, 38.896824, 47.098549> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227893, 0.041462, 0.972803,
		-0.387875, -0.912532, 0.129759,
		0.893094, -0.406897, -0.191878,
		36.789970, 38.774754, 47.040985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256916, 38.379875, 47.516571>,  <36.164803, 39.059582, 47.175301>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.256916, 38.379875, 47.516571> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615562, 38.549839, 47.466702>,  <36.830750, 38.651817, 47.436779>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.615562, 38.549839, 47.466702>,  <36.256916, 38.379875, 47.516571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.615562, 38.549839, 47.466702> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102264, 0.075245, 0.991907,
		0.430848, -0.902105, 0.024013,
		0.896611, 0.424906, -0.124672,
		36.884544, 38.677311, 47.429298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.648499, 38.139557, 48.093971>,  <36.256916, 38.379875, 47.516571>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.648499, 38.139557, 48.093971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888805, 38.430267, 47.960777>,  <37.032990, 38.604694, 47.880859>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.888805, 38.430267, 47.960777>,  <36.648499, 38.139557, 48.093971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.888805, 38.430267, 47.960777> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320568, 0.162561, 0.933172,
		0.732335, -0.667363, -0.135319,
		0.600767, 0.726774, -0.332984,
		37.069035, 38.648300, 47.860882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.199459, 37.973259, 48.398922>,  <36.648499, 38.139557, 48.093971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.199459, 37.973259, 48.398922> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234978, 38.357334, 48.292969>,  <37.256290, 38.587780, 48.229397>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.234978, 38.357334, 48.292969>,  <37.199459, 37.973259, 48.398922>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234978, 38.357334, 48.292969> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338622, 0.220989, 0.914603,
		0.936723, -0.170912, -0.305516,
		0.088801, 0.960184, -0.264880,
		37.261620, 38.645390, 48.213505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.901657, 38.186054, 48.464382>,  <37.199459, 37.973259, 48.398922>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.901657, 38.186054, 48.464382> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696655, 38.528942, 48.484425>,  <37.573654, 38.734676, 48.496449>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.696655, 38.528942, 48.484425>,  <37.901657, 38.186054, 48.464382>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.696655, 38.528942, 48.484425> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622639, 0.330804, 0.709147,
		0.591321, 0.394639, -0.703278,
		-0.512504, 0.857222, 0.050107,
		37.542904, 38.786110, 48.499458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358856, 38.727959, 48.706848>,  <37.901657, 38.186054, 48.464382>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358856, 38.727959, 48.706848> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996887, 38.888771, 48.762699>,  <37.779705, 38.985260, 48.796211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.996887, 38.888771, 48.762699>,  <38.358856, 38.727959, 48.706848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.996887, 38.888771, 48.762699> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299018, 0.367148, 0.880790,
		0.302840, 0.838793, -0.452453,
		-0.904918, 0.402030, 0.139627,
		37.725410, 39.009380, 48.804588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.482075, 39.450924, 48.935600>,  <38.358856, 38.727959, 48.706848>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.482075, 39.450924, 48.935600> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107719, 39.392132, 49.063671>,  <37.883106, 39.356857, 49.140514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107719, 39.392132, 49.063671>,  <38.482075, 39.450924, 48.935600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107719, 39.392132, 49.063671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285556, 0.215789, 0.933752,
		-0.206329, 0.965315, -0.159985,
		-0.935888, -0.146976, 0.320175,
		37.826954, 39.348038, 49.159725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.309437, 40.064648, 49.300762>,  <38.482075, 39.450924, 48.935600>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.309437, 40.064648, 49.300762> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044640, 39.785862, 49.411041>,  <37.885761, 39.618591, 49.477207>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.044640, 39.785862, 49.411041>,  <38.309437, 40.064648, 49.300762>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.044640, 39.785862, 49.411041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246133, 0.145285, 0.958285,
		-0.707945, 0.702235, 0.075368,
		-0.661991, -0.696964, 0.275697,
		37.846043, 39.576775, 49.493752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034508, 40.353477, 49.833992>,  <38.309437, 40.064648, 49.300762>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034508, 40.353477, 49.833992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975338, 39.959839, 49.873314>,  <37.939835, 39.723656, 49.896908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.975338, 39.959839, 49.873314>,  <38.034508, 40.353477, 49.833992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975338, 39.959839, 49.873314> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202287, 0.067187, 0.977019,
		-0.968090, 0.164412, 0.189132,
		-0.147926, -0.984101, 0.098302,
		37.930962, 39.664608, 49.902805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.735352, 40.318974, 50.544327>,  <38.034508, 40.353477, 49.833992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.735352, 40.318974, 50.544327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856373, 39.948734, 50.453342>,  <37.928986, 39.726593, 50.398754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.856373, 39.948734, 50.453342>,  <37.735352, 40.318974, 50.544327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.856373, 39.948734, 50.453342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292139, -0.137103, 0.946498,
		-0.907259, -0.352811, 0.228922,
		0.302549, -0.925595, -0.227458,
		37.947136, 39.671055, 50.385105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.495243, 39.890285, 51.192520>,  <37.735352, 40.318974, 50.544327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.495243, 39.890285, 51.192520> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761456, 39.662704, 50.999287>,  <37.921185, 39.526157, 50.883347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.761456, 39.662704, 50.999287>,  <37.495243, 39.890285, 51.192520>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.761456, 39.662704, 50.999287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222832, -0.466255, 0.856126,
		-0.712330, -0.677424, -0.183527,
		0.665531, -0.568949, -0.483079,
		37.961113, 39.492020, 50.854362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.457294, 39.162457, 51.380672>,  <37.495243, 39.890285, 51.192520>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.457294, 39.162457, 51.380672> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822731, 39.213871, 51.226357>,  <38.041992, 39.244720, 51.133766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.822731, 39.213871, 51.226357>,  <37.457294, 39.162457, 51.380672>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822731, 39.213871, 51.226357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403270, -0.408242, 0.818970,
		-0.052229, -0.903779, -0.424799,
		0.913589, 0.128535, -0.385789,
		38.096809, 39.252430, 51.110619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.761753, 38.527729, 51.582500>,  <37.457294, 39.162457, 51.380672>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.761753, 38.527729, 51.582500> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036880, 38.808846, 51.509850>,  <38.201958, 38.977516, 51.466259>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.036880, 38.808846, 51.509850>,  <37.761753, 38.527729, 51.582500>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036880, 38.808846, 51.509850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475799, -0.247543, 0.844001,
		0.548201, -0.666934, -0.504654,
		0.687816, 0.702796, -0.181623,
		38.243225, 39.019684, 51.455364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445080, 38.289646, 51.579018>,  <37.761753, 38.527729, 51.582500>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445080, 38.289646, 51.579018> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.489258, 38.670666, 51.692471>,  <38.515762, 38.899277, 51.760544>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.489258, 38.670666, 51.692471>,  <38.445080, 38.289646, 51.579018>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489258, 38.670666, 51.692471> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649394, -0.285199, 0.704946,
		0.752390, 0.106334, -0.650079,
		0.110442, 0.952552, 0.283633,
		38.522388, 38.956432, 51.777561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685860, 37.636486, 51.225346>,  <38.445080, 38.289646, 51.579018>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685860, 37.636486, 51.225346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497181, 37.400021, 51.487041>,  <38.383976, 37.258141, 51.644058>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.497181, 37.400021, 51.487041>,  <38.685860, 37.636486, 51.225346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.497181, 37.400021, 51.487041> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452387, -0.474630, -0.755031,
		0.756869, -0.652113, -0.043555,
		-0.471694, -0.591164, 0.654241,
		38.355671, 37.222672, 51.683315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.673618, 36.873646, 50.935596>,  <38.685860, 37.636486, 51.225346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.673618, 36.873646, 50.935596> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389175, 36.925297, 51.212048>,  <38.218510, 36.956287, 51.377918>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.389175, 36.925297, 51.212048>,  <38.673618, 36.873646, 50.935596>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.389175, 36.925297, 51.212048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639772, -0.526508, -0.559894,
		0.291585, -0.840306, 0.457016,
		-0.711105, 0.129129, 0.691126,
		38.175842, 36.964035, 51.419384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.411648, 36.173588, 51.173153>,  <38.673618, 36.873646, 50.935596>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.411648, 36.173588, 51.173153> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107449, 36.421879, 51.249413>,  <37.924931, 36.570854, 51.295170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.107449, 36.421879, 51.249413>,  <38.411648, 36.173588, 51.173153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.107449, 36.421879, 51.249413> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583868, -0.525185, -0.619095,
		-0.284161, -0.582134, 0.761822,
		-0.760494, 0.620726, 0.190653,
		37.879299, 36.608097, 51.306606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816273, 35.726566, 51.116135>,  <38.411648, 36.173588, 51.173153>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816273, 35.726566, 51.116135> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670029, 36.095909, 51.069260>,  <37.582283, 36.317516, 51.041134>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.670029, 36.095909, 51.069260>,  <37.816273, 35.726566, 51.116135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670029, 36.095909, 51.069260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745168, -0.365819, -0.557585,
		-0.557721, -0.116535, 0.821807,
		-0.365611, 0.923361, -0.117187,
		37.560345, 36.372917, 51.034103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095676, 35.592167, 50.959938>,  <37.816273, 35.726566, 51.116135>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095676, 35.592167, 50.959938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183952, 35.963535, 50.840385>,  <37.236919, 36.186356, 50.768654>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.183952, 35.963535, 50.840385>,  <37.095676, 35.592167, 50.959938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.183952, 35.963535, 50.840385> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549066, -0.135006, -0.824803,
		-0.806116, 0.346130, 0.479970,
		0.220691, 0.928422, -0.298879,
		37.250160, 36.242062, 50.750721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407898, 35.891884, 50.771324>,  <37.095676, 35.592167, 50.959938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.407898, 35.891884, 50.771324> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666359, 36.139992, 50.593452>,  <36.821438, 36.288857, 50.486729>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.666359, 36.139992, 50.593452>,  <36.407898, 35.891884, 50.771324>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.666359, 36.139992, 50.593452> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484635, -0.116641, -0.866905,
		-0.589587, 0.775664, 0.225238,
		0.646155, 0.620274, -0.444684,
		36.860207, 36.326073, 50.460049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.039989, 36.451939, 50.420898>,  <36.407898, 35.891884, 50.771324>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.039989, 36.451939, 50.420898> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389576, 36.418430, 50.229416>,  <36.599327, 36.398327, 50.114525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.389576, 36.418430, 50.229416>,  <36.039989, 36.451939, 50.420898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.389576, 36.418430, 50.229416> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484114, -0.063836, -0.872673,
		0.042544, 0.994438, -0.096344,
		0.873970, -0.083769, -0.478706,
		36.651768, 36.393299, 50.085804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.027145, 36.855968, 49.885094>,  <36.039989, 36.451939, 50.420898>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.027145, 36.855968, 49.885094> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325405, 36.620697, 49.759842>,  <36.504360, 36.479534, 49.684692>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.325405, 36.620697, 49.759842>,  <36.027145, 36.855968, 49.885094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325405, 36.620697, 49.759842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399978, -0.019242, -0.916323,
		0.532937, 0.808502, -0.249607,
		0.745651, -0.588180, -0.313128,
		36.549099, 36.444244, 49.665905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164513, 37.087460, 49.208523>,  <36.027145, 36.855968, 49.885094>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164513, 37.087460, 49.208523> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381069, 36.751160, 49.210667>,  <36.511002, 36.549377, 49.211952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.381069, 36.751160, 49.210667>,  <36.164513, 37.087460, 49.208523>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.381069, 36.751160, 49.210667> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087856, -0.062912, -0.994145,
		0.836168, 0.537750, -0.107925,
		0.541391, -0.840754, 0.005361,
		36.543488, 36.498932, 49.212276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707317, 37.208755, 48.676815>,  <36.164513, 37.087460, 49.208523>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707317, 37.208755, 48.676815> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644558, 36.814617, 48.703606>,  <36.606903, 36.578136, 48.719681>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.644558, 36.814617, 48.703606>,  <36.707317, 37.208755, 48.676815>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.644558, 36.814617, 48.703606> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005734, -0.068725, -0.997619,
		0.987599, -0.156136, 0.016433,
		-0.156894, -0.985342, 0.066978,
		36.597488, 36.519016, 48.723698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041492, 36.973057, 48.123997>,  <36.707317, 37.208755, 48.676815>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041492, 36.973057, 48.123997> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810081, 36.659668, 48.214756>,  <36.671234, 36.471634, 48.269211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.810081, 36.659668, 48.214756>,  <37.041492, 36.973057, 48.123997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.810081, 36.659668, 48.214756> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046909, -0.245756, -0.968196,
		0.814313, -0.570771, 0.105425,
		-0.578528, -0.783469, 0.226897,
		36.636524, 36.424625, 48.282825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.235260, 36.617008, 47.638794>,  <37.041492, 36.973057, 48.123997>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.235260, 36.617008, 47.638794> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898975, 36.431061, 47.749863>,  <36.697205, 36.319492, 47.816505>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.898975, 36.431061, 47.749863>,  <37.235260, 36.617008, 47.638794>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.898975, 36.431061, 47.749863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189880, -0.227138, -0.955172,
		0.507098, -0.855749, 0.102689,
		-0.840713, -0.464867, 0.277671,
		36.646763, 36.291599, 47.833164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.203159, 36.000942, 47.249832>,  <37.235260, 36.617008, 47.638794>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.203159, 36.000942, 47.249832> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838139, 36.118725, 47.363354>,  <36.619125, 36.189392, 47.431465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.838139, 36.118725, 47.363354>,  <37.203159, 36.000942, 47.249832>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838139, 36.118725, 47.363354> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263488, 0.107392, -0.958666,
		-0.312759, -0.949613, -0.020416,
		-0.912554, 0.294453, 0.283800,
		36.564373, 36.207062, 47.448494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.774216, 35.563339, 46.835110>,  <37.203159, 36.000942, 47.249832>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.774216, 35.563339, 46.835110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532043, 35.859997, 46.950642>,  <36.386742, 36.037991, 47.019958>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.532043, 35.859997, 46.950642>,  <36.774216, 35.563339, 46.835110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.532043, 35.859997, 46.950642> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309741, 0.114733, -0.943873,
		-0.733157, -0.660907, 0.160256,
		-0.605426, 0.741645, 0.288827,
		36.350414, 36.082489, 47.037289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.140339, 35.472435, 46.512501>,  <36.774216, 35.563339, 46.835110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.140339, 35.472435, 46.512501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096420, 35.859367, 46.603909>,  <36.070068, 36.091526, 46.658752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.096420, 35.859367, 46.603909>,  <36.140339, 35.472435, 46.512501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.096420, 35.859367, 46.603909> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478551, 0.150060, -0.865142,
		-0.871168, -0.204344, 0.446441,
		-0.109794, 0.967329, 0.228516,
		36.063480, 36.149567, 46.672462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.399887, 35.568356, 46.465023>,  <36.140339, 35.472435, 46.512501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.399887, 35.568356, 46.465023> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588886, 35.919075, 46.429321>,  <35.702286, 36.129505, 46.407898>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.588886, 35.919075, 46.429321>,  <35.399887, 35.568356, 46.465023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.588886, 35.919075, 46.429321> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535687, 0.205296, -0.819081,
		-0.699846, 0.434828, 0.566692,
		0.472499, 0.876800, -0.089256,
		35.730637, 36.182114, 46.402546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.946716, 36.082451, 46.491211>,  <35.399887, 35.568356, 46.465023>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.946716, 36.082451, 46.491211> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268051, 36.235603, 46.308762>,  <35.460854, 36.327496, 46.199291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.268051, 36.235603, 46.308762>,  <34.946716, 36.082451, 46.491211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268051, 36.235603, 46.308762> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540658, 0.147793, -0.828158,
		-0.249674, 0.911899, 0.325736,
		0.803338, 0.382881, -0.456125,
		35.509052, 36.350468, 46.171925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.773918, 36.737835, 46.078064>,  <34.946716, 36.082451, 46.491211>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.773918, 36.737835, 46.078064> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104195, 36.582367, 45.914520>,  <35.302361, 36.489086, 45.816395>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.104195, 36.582367, 45.914520>,  <34.773918, 36.737835, 46.078064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.104195, 36.582367, 45.914520> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430431, 0.034414, -0.901967,
		0.364637, 0.920735, -0.138880,
		0.825693, -0.388669, -0.408862,
		35.351902, 36.465767, 45.791862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.860561, 37.050240, 45.488617>,  <34.773918, 36.737835, 46.078064>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.860561, 37.050240, 45.488617> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105320, 36.742283, 45.416126>,  <35.252174, 36.557507, 45.372631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.105320, 36.742283, 45.416126>,  <34.860561, 37.050240, 45.488617>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.105320, 36.742283, 45.416126> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272761, 0.009663, -0.962033,
		0.742414, 0.638099, -0.204084,
		0.611901, -0.769893, -0.181223,
		35.288891, 36.511314, 45.361759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.252590, 37.225960, 44.886631>,  <34.860561, 37.050240, 45.488617>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.252590, 37.225960, 44.886631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288330, 36.829308, 44.923904>,  <35.309772, 36.591316, 44.946270>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.288330, 36.829308, 44.923904>,  <35.252590, 37.225960, 44.886631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288330, 36.829308, 44.923904> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161398, -0.106739, -0.981100,
		0.982837, 0.072618, -0.169584,
		0.089347, -0.991632, 0.093187,
		35.315136, 36.531818, 44.951862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.579998, 29.867136, 28.062397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183121, 29.836716, 28.101948>,  <41.944996, 29.818462, 28.125677>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.183121, 29.836716, 28.101948>,  <42.579998, 29.867136, 28.062397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.183121, 29.836716, 28.101948> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048237, 0.497061, 0.866374,
		-0.115036, 0.864376, -0.489510,
		-0.992189, -0.076052, 0.098875,
		41.885464, 29.813900, 28.131611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585636, 30.452709, 28.302151>,  <42.579998, 29.867136, 28.062397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585636, 30.452709, 28.302151> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239574, 30.276251, 28.397564>,  <42.031937, 30.170376, 28.454811>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239574, 30.276251, 28.397564>,  <42.585636, 30.452709, 28.302151>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239574, 30.276251, 28.397564> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026698, 0.434444, 0.900303,
		-0.500795, 0.785269, -0.364083,
		-0.865154, -0.441147, 0.238533,
		41.980030, 30.143908, 28.469124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.133217, 30.946045, 28.540474>,  <42.585636, 30.452709, 28.302151>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.133217, 30.946045, 28.540474> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991993, 30.605553, 28.695786>,  <41.907261, 30.401258, 28.788973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.991993, 30.605553, 28.695786>,  <42.133217, 30.946045, 28.540474>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.991993, 30.605553, 28.695786> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023858, 0.406677, 0.913260,
		-0.935298, 0.331697, -0.123271,
		-0.353057, -0.851229, 0.388278,
		41.886074, 30.350183, 28.812269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.506191, 31.064335, 28.912460>,  <42.133217, 30.946045, 28.540474>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.506191, 31.064335, 28.912460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633568, 30.715023, 29.059959>,  <41.709995, 30.505436, 29.148458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.633568, 30.715023, 29.059959>,  <41.506191, 31.064335, 28.912460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.633568, 30.715023, 29.059959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168302, 0.330732, 0.928596,
		-0.932881, -0.357768, -0.041654,
		0.318446, -0.873280, 0.368746,
		41.729103, 30.453039, 29.170584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.029152, 30.815119, 29.399172>,  <41.506191, 31.064335, 28.912460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.029152, 30.815119, 29.399172> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386189, 30.664709, 29.498676>,  <41.600410, 30.574463, 29.558378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.386189, 30.664709, 29.498676>,  <41.029152, 30.815119, 29.399172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386189, 30.664709, 29.498676> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149433, 0.273826, 0.950100,
		-0.425379, -0.885226, 0.188224,
		0.892593, -0.376025, 0.248762,
		41.653965, 30.551901, 29.573305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.925533, 30.553568, 30.131161>,  <41.029152, 30.815119, 29.399172>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.925533, 30.553568, 30.131161> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323185, 30.549921, 30.088037>,  <41.561775, 30.547733, 30.062162>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.323185, 30.549921, 30.088037>,  <40.925533, 30.553568, 30.131161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.323185, 30.549921, 30.088037> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105685, 0.295193, 0.949574,
		0.023166, -0.955394, 0.294424,
		0.994130, -0.009119, -0.107810,
		41.621426, 30.547186, 30.055695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.239491, 30.218901, 30.795460>,  <40.925533, 30.553568, 30.131161>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.239491, 30.218901, 30.795460> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546501, 30.432837, 30.654121>,  <41.730705, 30.561199, 30.569319>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.546501, 30.432837, 30.654121>,  <41.239491, 30.218901, 30.795460>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.546501, 30.432837, 30.654121> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172916, 0.358042, 0.917555,
		0.617258, -0.765344, 0.182323,
		0.767524, 0.534841, -0.353344,
		41.776760, 30.593288, 30.548119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806919, 30.055639, 31.297476>,  <41.239491, 30.218901, 30.795460>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806919, 30.055639, 31.297476> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934761, 30.375334, 31.093882>,  <42.011467, 30.567150, 30.971725>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.934761, 30.375334, 31.093882>,  <41.806919, 30.055639, 31.297476>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.934761, 30.375334, 31.093882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349645, 0.399779, 0.847305,
		0.880681, -0.448771, -0.151677,
		0.319609, 0.799238, -0.508988,
		42.030643, 30.615105, 30.941185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.293106, 30.225861, 31.729031>,  <41.806919, 30.055639, 31.297476>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.293106, 30.225861, 31.729031> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232422, 30.550732, 31.503695>,  <42.196011, 30.745655, 31.368492>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.232422, 30.550732, 31.503695>,  <42.293106, 30.225861, 31.729031>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.232422, 30.550732, 31.503695> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269357, 0.582337, 0.767027,
		0.951016, -0.035374, -0.307112,
		-0.151710, 0.812177, -0.563340,
		42.186909, 30.794384, 31.334692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.683792, 30.679876, 32.042561>,  <42.293106, 30.225861, 31.729031>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.683792, 30.679876, 32.042561> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.451878, 30.918589, 31.820675>,  <42.312729, 31.061815, 31.687544>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.451878, 30.918589, 31.820675>,  <42.683792, 30.679876, 32.042561>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.451878, 30.918589, 31.820675> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054241, 0.707581, 0.704548,
		0.812964, 0.378397, -0.442612,
		-0.579783, 0.596779, -0.554713,
		42.277943, 31.097622, 31.654261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.007729, 31.305342, 31.956850>,  <42.683792, 30.679876, 32.042561>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.007729, 31.305342, 31.956850> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.620491, 31.393316, 31.908808>,  <42.388149, 31.446102, 31.879982>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.620491, 31.393316, 31.908808>,  <43.007729, 31.305342, 31.956850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620491, 31.393316, 31.908808> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098119, 0.773696, 0.625913,
		0.230588, 0.594156, -0.770589,
		-0.968092, 0.219937, -0.120107,
		42.330063, 31.459297, 31.872776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.970734, 31.957085, 31.783443>,  <43.007729, 31.305342, 31.956850>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.970734, 31.957085, 31.783443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606709, 31.880510, 31.930489>,  <42.388294, 31.834566, 32.018715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.606709, 31.880510, 31.930489>,  <42.970734, 31.957085, 31.783443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.606709, 31.880510, 31.930489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073735, 0.798012, 0.598113,
		-0.407861, 0.571426, -0.712125,
		-0.910062, -0.191438, 0.367612,
		42.333691, 31.823078, 32.040771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.684292, 32.665577, 31.882511>,  <42.970734, 31.957085, 31.783443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.684292, 32.665577, 31.882511> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448097, 32.425644, 32.098484>,  <42.306381, 32.281685, 32.228069>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.448097, 32.425644, 32.098484>,  <42.684292, 32.665577, 31.882511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.448097, 32.425644, 32.098484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127595, 0.729995, 0.671436,
		-0.796895, 0.327584, -0.507590,
		-0.590490, -0.599830, 0.539931,
		42.270950, 32.245693, 32.260464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.127689, 33.040394, 32.050861>,  <42.684292, 32.665577, 31.882511>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.127689, 33.040394, 32.050861> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167374, 32.765942, 32.339134>,  <42.191185, 32.601269, 32.512096>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.167374, 32.765942, 32.339134>,  <42.127689, 33.040394, 32.050861>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167374, 32.765942, 32.339134> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064936, 0.727176, 0.683373,
		-0.992945, -0.021002, 0.116700,
		0.099214, -0.686130, 0.720682,
		42.197136, 32.560104, 32.555340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849548, 33.408710, 32.501465>,  <42.127689, 33.040394, 32.050861>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849548, 33.408710, 32.501465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.029060, 33.120491, 32.712898>,  <42.136768, 32.947559, 32.839760>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.029060, 33.120491, 32.712898>,  <41.849548, 33.408710, 32.501465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.029060, 33.120491, 32.712898> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096108, 0.626982, 0.773082,
		-0.888460, -0.296141, 0.350626,
		0.448778, -0.720551, 0.528587,
		42.163692, 32.904327, 32.871475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.422058, 33.240505, 33.035080>,  <41.849548, 33.408710, 32.501465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.422058, 33.240505, 33.035080> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797783, 33.149136, 33.137466>,  <42.023216, 33.094315, 33.198898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797783, 33.149136, 33.137466>,  <41.422058, 33.240505, 33.035080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797783, 33.149136, 33.137466> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038741, 0.670705, 0.740712,
		-0.340876, -0.705674, 0.621150,
		0.939310, -0.228427, 0.255966,
		42.079575, 33.080608, 33.214256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.434956, 33.345825, 33.723537>,  <41.422058, 33.240505, 33.035080>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.434956, 33.345825, 33.723537> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825489, 33.375950, 33.642437>,  <42.059807, 33.394024, 33.593777>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.825489, 33.375950, 33.642437>,  <41.434956, 33.345825, 33.723537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.825489, 33.375950, 33.642437> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105267, 0.653453, 0.749613,
		0.188942, -0.753212, 0.630058,
		0.976330, 0.075309, -0.202753,
		42.118389, 33.398544, 33.581612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655392, 33.562874, 34.387077>,  <41.434956, 33.345825, 33.723537>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655392, 33.562874, 34.387077> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983959, 33.595760, 34.161331>,  <42.181099, 33.615494, 34.025883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.983959, 33.595760, 34.161331>,  <41.655392, 33.562874, 34.387077>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.983959, 33.595760, 34.161331> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297330, 0.782707, 0.546777,
		0.486689, -0.616937, 0.618484,
		0.821419, 0.082216, -0.564369,
		42.230385, 33.620426, 33.992020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.328983, 33.467464, 34.824589>,  <41.655392, 33.562874, 34.387077>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.328983, 33.467464, 34.824589> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366940, 33.674522, 34.484463>,  <42.389713, 33.798756, 34.280388>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.366940, 33.674522, 34.484463>,  <42.328983, 33.467464, 34.824589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366940, 33.674522, 34.484463> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375393, 0.772506, 0.512167,
		0.921995, -0.367805, -0.121014,
		0.094894, 0.517643, -0.850318,
		42.395409, 33.829815, 34.229366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.088978, 33.789570, 34.849163>,  <42.328983, 33.467464, 34.824589>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.088978, 33.789570, 34.849163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863297, 33.998688, 34.593548>,  <42.727890, 34.124157, 34.440178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.863297, 33.998688, 34.593548>,  <43.088978, 33.789570, 34.849163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.863297, 33.998688, 34.593548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420623, 0.848019, 0.322398,
		0.710460, -0.086895, -0.698352,
		-0.564201, 0.522794, -0.639033,
		42.694035, 34.155525, 34.401836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.577805, 34.258373, 34.623177>,  <43.088978, 33.789570, 34.849163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.577805, 34.258373, 34.623177> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222023, 34.423996, 34.545788>,  <43.008556, 34.523369, 34.499355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.222023, 34.423996, 34.545788>,  <43.577805, 34.258373, 34.623177>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.222023, 34.423996, 34.545788> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379377, 0.904964, 0.192647,
		0.254855, 0.097950, -0.962006,
		-0.889451, 0.414059, -0.193474,
		42.955189, 34.548214, 34.487747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.108601, 34.714909, 34.383236>,  <43.577805, 34.258373, 34.623177>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.108601, 34.714909, 34.383236> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479809, 34.587513, 34.460537>,  <44.702534, 34.511074, 34.506916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.479809, 34.587513, 34.460537>,  <44.108601, 34.714909, 34.383236>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.479809, 34.587513, 34.460537> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084016, -0.326447, -0.941474,
		0.362934, 0.889942, -0.276191,
		0.928019, -0.318489, 0.193248,
		44.758213, 34.491966, 34.518513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499561, 34.900963, 33.873955>,  <44.108601, 34.714909, 34.383236>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499561, 34.900963, 33.873955> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727074, 34.607132, 34.021946>,  <44.863579, 34.430832, 34.110741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.727074, 34.607132, 34.021946>,  <44.499561, 34.900963, 33.873955>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.727074, 34.607132, 34.021946> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054314, -0.415300, -0.908062,
		0.820696, 0.536580, -0.196316,
		0.568777, -0.734580, 0.369979,
		44.897705, 34.386757, 34.132938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028885, 34.829285, 33.436028>,  <44.499561, 34.900963, 33.873955>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028885, 34.829285, 33.436028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016571, 34.478271, 33.627438>,  <45.009182, 34.267662, 33.742283>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.016571, 34.478271, 33.627438>,  <45.028885, 34.829285, 33.436028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016571, 34.478271, 33.627438> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204992, -0.474123, -0.856263,
		0.978279, 0.071733, 0.194484,
		-0.030787, -0.877532, 0.478530,
		45.007336, 34.215012, 33.770996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.349804, 34.447231, 32.957397>,  <45.028885, 34.829285, 33.436028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.349804, 34.447231, 32.957397> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212749, 34.166874, 33.207630>,  <45.130516, 33.998661, 33.357769>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.212749, 34.166874, 33.207630>,  <45.349804, 34.447231, 32.957397>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.212749, 34.166874, 33.207630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087127, -0.686723, -0.721679,
		0.935418, -0.192771, 0.296366,
		-0.342641, -0.700892, 0.625577,
		45.109959, 33.956608, 33.395302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.806744, 33.874912, 32.981880>,  <45.349804, 34.447231, 32.957397>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.806744, 33.874912, 32.981880> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470463, 33.686935, 33.089489>,  <45.268696, 33.574150, 33.154053>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.470463, 33.686935, 33.089489>,  <45.806744, 33.874912, 32.981880>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.470463, 33.686935, 33.089489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041302, -0.551010, -0.833476,
		0.539919, -0.689595, 0.482645,
		-0.840703, -0.469944, 0.269019,
		45.218250, 33.545952, 33.170197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.902164, 33.228252, 32.789536>,  <45.806744, 33.874912, 32.981880>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.902164, 33.228252, 32.789536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504818, 33.255730, 32.826412>,  <45.266411, 33.272217, 32.848537>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.504818, 33.255730, 32.826412>,  <45.902164, 33.228252, 32.789536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.504818, 33.255730, 32.826412> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114702, -0.646650, -0.754114,
		0.007813, -0.759688, 0.650241,
		-0.993369, 0.068692, 0.092190,
		45.206806, 33.276337, 32.854069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.690060, 32.569050, 32.610443>,  <45.902164, 33.228252, 32.789536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.690060, 32.569050, 32.610443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370754, 32.808388, 32.582882>,  <45.179169, 32.951992, 32.566345>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.370754, 32.808388, 32.582882>,  <45.690060, 32.569050, 32.610443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.370754, 32.808388, 32.582882> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257025, -0.441880, -0.859465,
		-0.544708, -0.668372, 0.506529,
		-0.798268, 0.598348, -0.068907,
		45.131275, 32.987892, 32.562210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.194412, 32.143681, 32.463684>,  <45.690060, 32.569050, 32.610443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.194412, 32.143681, 32.463684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085793, 32.499638, 32.317066>,  <45.020622, 32.713211, 32.229095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.085793, 32.499638, 32.317066>,  <45.194412, 32.143681, 32.463684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085793, 32.499638, 32.317066> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073316, -0.398880, -0.914067,
		-0.959628, -0.221339, 0.173558,
		-0.271548, 0.889890, -0.366549,
		45.004330, 32.766605, 32.207100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.674339, 32.022110, 31.904882>,  <45.194412, 32.143681, 32.463684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.674339, 32.022110, 31.904882> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755650, 32.407703, 31.836287>,  <44.804436, 32.639061, 31.795130>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.755650, 32.407703, 31.836287>,  <44.674339, 32.022110, 31.904882>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.755650, 32.407703, 31.836287> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332118, -0.096874, -0.938250,
		-0.921073, 0.247681, 0.300465,
		0.203280, 0.963986, -0.171488,
		44.816635, 32.696899, 31.784840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.059990, 32.344196, 31.506502>,  <44.674339, 32.022110, 31.904882>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.059990, 32.344196, 31.506502> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394630, 32.550838, 31.433607>,  <44.595417, 32.674824, 31.389870>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394630, 32.550838, 31.433607>,  <44.059990, 32.344196, 31.506502>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394630, 32.550838, 31.433607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096763, -0.188078, -0.977376,
		-0.539196, 0.835310, -0.107358,
		0.836603, 0.516609, -0.182238,
		44.645611, 32.705822, 31.378935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.904644, 32.642536, 30.955975>,  <44.059990, 32.344196, 31.506502>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.904644, 32.642536, 30.955975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298416, 32.711922, 30.944548>,  <44.534679, 32.753551, 30.937693>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.298416, 32.711922, 30.944548>,  <43.904644, 32.642536, 30.955975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.298416, 32.711922, 30.944548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020358, -0.048912, -0.998596,
		-0.174614, 0.983625, -0.044619,
		0.984426, 0.173461, -0.028566,
		44.593742, 32.763962, 30.935978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.066517, 33.244652, 30.492462>,  <43.904644, 32.642536, 30.955975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.066517, 33.244652, 30.492462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373505, 32.989384, 30.516880>,  <44.557697, 32.836224, 30.531530>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.373505, 32.989384, 30.516880>,  <44.066517, 33.244652, 30.492462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.373505, 32.989384, 30.516880> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052348, -0.157284, -0.986165,
		0.638945, 0.753656, -0.154118,
		0.767469, -0.638173, 0.061044,
		44.603745, 32.797932, 30.535192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.480129, 33.391731, 29.945940>,  <44.066517, 33.244652, 30.492462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.480129, 33.391731, 29.945940> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626457, 33.032547, 30.043791>,  <44.714256, 32.817036, 30.102501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.626457, 33.032547, 30.043791>,  <44.480129, 33.391731, 29.945940>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.626457, 33.032547, 30.043791> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171429, -0.193332, -0.966041,
		0.914760, 0.395335, 0.083211,
		0.365822, -0.897960, 0.244625,
		44.736202, 32.763161, 30.117178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.882557, 33.337357, 29.506683>,  <44.480129, 33.391731, 29.945940>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.882557, 33.337357, 29.506683> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858227, 32.956860, 29.627640>,  <44.843628, 32.728561, 29.700212>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.858227, 32.956860, 29.627640>,  <44.882557, 33.337357, 29.506683>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.858227, 32.956860, 29.627640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109646, -0.307485, -0.945215,
		0.992108, -0.024340, 0.123004,
		-0.060828, -0.951242, 0.302389,
		44.839977, 32.671486, 29.718357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.331261, 32.926441, 29.017868>,  <44.882557, 33.337357, 29.506683>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.331261, 32.926441, 29.017868> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133511, 32.637199, 29.210833>,  <45.014862, 32.463654, 29.326611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.133511, 32.637199, 29.210833>,  <45.331261, 32.926441, 29.017868>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.133511, 32.637199, 29.210833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042917, -0.574600, -0.817309,
		0.868191, -0.383351, 0.315099,
		-0.494372, -0.723103, 0.482410,
		44.985199, 32.420269, 29.355556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.664143, 32.326088, 28.827627>,  <45.331261, 32.926441, 29.017868>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.664143, 32.326088, 28.827627> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290775, 32.250420, 28.949579>,  <45.066757, 32.205017, 29.022751>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.290775, 32.250420, 28.949579>,  <45.664143, 32.326088, 28.827627>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.290775, 32.250420, 28.949579> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132601, -0.607691, -0.783025,
		0.333401, -0.771314, 0.542143,
		-0.933413, -0.189173, 0.304881,
		45.010750, 32.193668, 29.041044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.536781, 31.572950, 28.833370>,  <45.664143, 32.326088, 28.827627>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.536781, 31.572950, 28.833370> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.178066, 31.746717, 28.799757>,  <44.962837, 31.850977, 28.779589>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.178066, 31.746717, 28.799757>,  <45.536781, 31.572950, 28.833370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178066, 31.746717, 28.799757> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222707, -0.607263, -0.762649,
		-0.382337, -0.665216, 0.641331,
		-0.896783, 0.434418, -0.084031,
		44.909031, 31.877043, 28.774548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.173412, 31.004932, 28.532362>,  <45.536781, 31.572950, 28.833370>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.173412, 31.004932, 28.532362> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919048, 31.310034, 28.485340>,  <44.766430, 31.493095, 28.457127>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919048, 31.310034, 28.485340>,  <45.173412, 31.004932, 28.532362>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919048, 31.310034, 28.485340> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417866, -0.468354, -0.778481,
		-0.648847, -0.445925, 0.616562,
		-0.635913, 0.762756, -0.117553,
		44.728275, 31.538860, 28.450075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.483856, 30.729879, 28.574823>,  <45.173412, 31.004932, 28.532362>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.483856, 30.729879, 28.574823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412178, 31.070452, 28.377663>,  <44.369171, 31.274796, 28.259367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.412178, 31.070452, 28.377663>,  <44.483856, 30.729879, 28.574823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.412178, 31.070452, 28.377663> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366193, -0.522738, -0.769836,
		-0.913121, 0.042543, 0.405462,
		-0.179199, 0.851431, -0.492902,
		44.358418, 31.325882, 28.229792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.849514, 30.758942, 28.382566>,  <44.483856, 30.729879, 28.574823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.849514, 30.758942, 28.382566> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023796, 31.000454, 28.115549>,  <44.128365, 31.145361, 27.955339>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.023796, 31.000454, 28.115549>,  <43.849514, 30.758942, 28.382566>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.023796, 31.000454, 28.115549> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302554, -0.600241, -0.740386,
		-0.847718, 0.524554, -0.078849,
		0.435701, 0.603782, -0.667542,
		44.154507, 31.181589, 27.915287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.316360, 30.777473, 27.955854>,  <43.849514, 30.758942, 28.382566>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.316360, 30.777473, 27.955854> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.636486, 30.900917, 27.750229>,  <43.828560, 30.974983, 27.626854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.636486, 30.900917, 27.750229>,  <43.316360, 30.777473, 27.955854>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.636486, 30.900917, 27.750229> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278328, -0.568177, -0.774409,
		-0.531070, 0.762846, -0.368823,
		0.800312, 0.308611, -0.514063,
		43.876579, 30.993500, 27.596010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.514557, 39.482071, 40.537827> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607693, 39.093311, 40.523956>,  <37.663574, 38.860054, 40.515633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607693, 39.093311, 40.523956>,  <37.514557, 39.482071, 40.537827>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607693, 39.093311, 40.523956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006838, 0.034022, -0.999398,
		0.972492, 0.232933, 0.001275,
		0.232836, -0.971897, -0.034679,
		37.677544, 38.801743, 40.513554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.030571, 39.456333, 40.071648>,  <37.514557, 39.482071, 40.537827>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.030571, 39.456333, 40.071648> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895676, 39.082680, 40.118401>,  <37.814739, 38.858486, 40.146450>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895676, 39.082680, 40.118401>,  <38.030571, 39.456333, 40.071648>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.895676, 39.082680, 40.118401> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208064, -0.047125, -0.976979,
		0.918141, -0.353790, -0.178468,
		-0.337235, -0.934137, 0.116878,
		37.794506, 38.802437, 40.153465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.433636, 39.132942, 39.576416>,  <38.030571, 39.456333, 40.071648>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.433636, 39.132942, 39.576416> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116512, 38.905697, 39.664692>,  <37.926239, 38.769352, 39.717659>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.116512, 38.905697, 39.664692>,  <38.433636, 39.132942, 39.576416>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.116512, 38.905697, 39.664692> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009146, -0.373155, -0.927724,
		0.609404, -0.733488, 0.301036,
		-0.792807, -0.568112, 0.220694,
		37.878670, 38.735264, 39.730900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.623955, 38.439240, 39.417923>,  <38.433636, 39.132942, 39.576416>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.623955, 38.439240, 39.417923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224499, 38.425842, 39.401928>,  <37.984825, 38.417805, 39.392330>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.224499, 38.425842, 39.401928>,  <38.623955, 38.439240, 39.417923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.224499, 38.425842, 39.401928> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048459, -0.312307, -0.948744,
		0.019289, -0.949391, 0.313505,
		-0.998639, -0.033492, -0.039983,
		37.924908, 38.415794, 39.389935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370056, 37.812389, 39.248024>,  <38.623955, 38.439240, 39.417923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370056, 37.812389, 39.248024> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040604, 38.014400, 39.144817>,  <37.842930, 38.135609, 39.082893>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.040604, 38.014400, 39.144817>,  <38.370056, 37.812389, 39.248024>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.040604, 38.014400, 39.144817> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004662, -0.460972, -0.887402,
		-0.567102, -0.729693, 0.382027,
		-0.823634, 0.505028, -0.258016,
		37.793514, 38.165909, 39.067413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.907589, 37.315723, 38.945709>,  <38.370056, 37.812389, 39.248024>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.907589, 37.315723, 38.945709> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783569, 37.673580, 38.817028>,  <37.709160, 37.888294, 38.739819>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.783569, 37.673580, 38.817028>,  <37.907589, 37.315723, 38.945709>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.783569, 37.673580, 38.817028> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145954, -0.379157, -0.913749,
		-0.939451, -0.236351, 0.248133,
		-0.310047, 0.894638, -0.321703,
		37.690556, 37.941971, 38.720516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.358711, 37.143902, 38.496082>,  <37.907589, 37.315723, 38.945709>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.358711, 37.143902, 38.496082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449089, 37.522182, 38.402626>,  <37.503315, 37.749153, 38.346554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.449089, 37.522182, 38.402626>,  <37.358711, 37.143902, 38.496082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449089, 37.522182, 38.402626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132780, -0.207705, -0.969138,
		-0.965048, 0.249997, 0.078640,
		0.225947, 0.945706, -0.233640,
		37.516872, 37.805893, 38.332535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.921295, 37.341148, 37.948444>,  <37.358711, 37.143902, 38.496082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.921295, 37.341148, 37.948444> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227032, 37.597263, 37.917923>,  <37.410473, 37.750931, 37.899609>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.227032, 37.597263, 37.917923>,  <36.921295, 37.341148, 37.948444>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.227032, 37.597263, 37.917923> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068709, -0.036786, -0.996958,
		-0.641143, 0.767257, 0.015876,
		0.764339, 0.640284, -0.076303,
		37.456333, 37.789349, 37.895031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.802761, 37.595528, 37.242699>,  <36.921295, 37.341148, 37.948444>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.802761, 37.595528, 37.242699> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166832, 37.724068, 37.347244>,  <37.385273, 37.801193, 37.409969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166832, 37.724068, 37.347244>,  <36.802761, 37.595528, 37.242699>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.166832, 37.724068, 37.347244> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315003, -0.127253, -0.940521,
		-0.268979, 0.938370, -0.217050,
		0.910177, 0.321352, 0.261361,
		37.439884, 37.820473, 37.425652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.050270, 37.911572, 36.676170>,  <36.802761, 37.595528, 37.242699>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.050270, 37.911572, 36.676170> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392384, 37.838600, 36.870163>,  <37.597652, 37.794815, 36.986557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.392384, 37.838600, 36.870163>,  <37.050270, 37.911572, 36.676170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392384, 37.838600, 36.870163> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451908, -0.195300, -0.870423,
		0.253510, 0.963627, -0.084595,
		0.855285, -0.182432, 0.484981,
		37.648968, 37.783871, 37.015656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553707, 38.113270, 36.204296>,  <37.050270, 37.911572, 36.676170>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553707, 38.113270, 36.204296> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775162, 37.892857, 36.454048>,  <37.908035, 37.760609, 36.603897>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.775162, 37.892857, 36.454048>,  <37.553707, 38.113270, 36.204296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775162, 37.892857, 36.454048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590559, -0.268828, -0.760902,
		0.587133, 0.789996, 0.176584,
		0.553638, -0.551034, 0.624377,
		37.941254, 37.727547, 36.641361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.285816, 38.282551, 36.000519>,  <37.553707, 38.113270, 36.204296>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.285816, 38.282551, 36.000519> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251537, 37.927929, 36.182369>,  <38.230968, 37.715157, 36.291481>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.251537, 37.927929, 36.182369>,  <38.285816, 38.282551, 36.000519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251537, 37.927929, 36.182369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511154, -0.430798, -0.743730,
		0.855206, 0.168648, 0.490082,
		-0.085697, -0.886550, 0.454626,
		38.225826, 37.661964, 36.318756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932022, 37.865067, 36.094456>,  <38.285816, 38.282551, 36.000519>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932022, 37.865067, 36.094456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625912, 37.609989, 36.059372>,  <38.442245, 37.456944, 36.038322>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.625912, 37.609989, 36.059372>,  <38.932022, 37.865067, 36.094456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625912, 37.609989, 36.059372> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374705, -0.330527, -0.866226,
		0.523399, -0.695769, 0.491893,
		-0.765277, -0.637697, -0.087710,
		38.396328, 37.418678, 36.033058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.164211, 37.367523, 35.602486>,  <38.932022, 37.865067, 36.094456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.164211, 37.367523, 35.602486> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768475, 37.316490, 35.630569>,  <38.531033, 37.285870, 35.647419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768475, 37.316490, 35.630569>,  <39.164211, 37.367523, 35.602486>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.768475, 37.316490, 35.630569> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047217, -0.175071, -0.983423,
		0.137756, -0.976255, 0.167181,
		-0.989340, -0.127578, 0.070212,
		38.471672, 37.278217, 35.651634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819180, 37.059013, 35.631390>,  <39.164211, 37.367523, 35.602486>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819180, 37.059013, 35.631390> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012005, 37.342678, 35.425591>,  <40.127701, 37.512875, 35.302113>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012005, 37.342678, 35.425591>,  <39.819180, 37.059013, 35.631390>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.012005, 37.342678, 35.425591> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394095, -0.348964, -0.850243,
		-0.782500, 0.612631, 0.111254,
		0.482061, 0.709160, -0.514499,
		40.156624, 37.555428, 35.271240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.472660, 36.925770, 35.231663>,  <39.819180, 37.059013, 35.631390>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.472660, 36.925770, 35.231663> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763927, 37.156895, 35.379120>,  <40.938690, 37.295570, 35.467594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.763927, 37.156895, 35.379120>,  <40.472660, 36.925770, 35.231663>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.763927, 37.156895, 35.379120> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262532, -0.261702, 0.928756,
		0.633122, -0.773075, -0.038870,
		0.728171, 0.577812, 0.368647,
		40.982380, 37.330238, 35.489716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.594765, 36.590675, 35.823273>,  <40.472660, 36.925770, 35.231663>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.594765, 36.590675, 35.823273> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781487, 36.938110, 35.889782>,  <40.893520, 37.146572, 35.929688>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.781487, 36.938110, 35.889782>,  <40.594765, 36.590675, 35.823273>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.781487, 36.938110, 35.889782> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018919, -0.197784, 0.980063,
		0.884160, -0.454348, -0.108758,
		0.466800, 0.868590, 0.166277,
		40.921528, 37.198689, 35.939667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.236168, 36.339073, 36.234558>,  <40.594765, 36.590675, 35.823273>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.236168, 36.339073, 36.234558> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146011, 36.721859, 36.307686>,  <41.091919, 36.951530, 36.351562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146011, 36.721859, 36.307686>,  <41.236168, 36.339073, 36.234558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.146011, 36.721859, 36.307686> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218041, -0.133343, 0.966787,
		0.949557, 0.257766, -0.178603,
		-0.225389, 0.956962, 0.182820,
		41.078396, 37.008949, 36.362534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658367, 36.495182, 36.748234>,  <41.236168, 36.339073, 36.234558>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658367, 36.495182, 36.748234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429562, 36.821438, 36.782940>,  <41.292278, 37.017193, 36.803764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429562, 36.821438, 36.782940>,  <41.658367, 36.495182, 36.748234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.429562, 36.821438, 36.782940> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245059, 0.068987, 0.967050,
		0.782780, 0.574432, -0.239342,
		-0.572016, 0.815640, 0.086768,
		41.257957, 37.066132, 36.808971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.037937, 37.055794, 37.129208>,  <41.658367, 36.495182, 36.748234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.037937, 37.055794, 37.129208> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642056, 37.100994, 37.164337>,  <41.404526, 37.128113, 37.185413>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.642056, 37.100994, 37.164337>,  <42.037937, 37.055794, 37.129208>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.642056, 37.100994, 37.164337> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076482, -0.101051, 0.991937,
		0.120966, 0.988443, 0.091368,
		-0.989706, 0.113002, 0.087821,
		41.345142, 37.134895, 37.190685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.962284, 37.355225, 37.660633>,  <42.037937, 37.055794, 37.129208>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.962284, 37.355225, 37.660633> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576694, 37.249557, 37.648136>,  <41.345341, 37.186157, 37.640636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.576694, 37.249557, 37.648136>,  <41.962284, 37.355225, 37.660633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576694, 37.249557, 37.648136> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051028, 0.068375, 0.996354,
		-0.261067, 0.962050, -0.079392,
		-0.963971, -0.264166, -0.031241,
		41.287502, 37.170307, 37.638763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.542847, 37.836109, 38.053902>,  <41.962284, 37.355225, 37.660633>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.542847, 37.836109, 38.053902> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326176, 37.500843, 38.028389>,  <41.196175, 37.299683, 38.013081>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326176, 37.500843, 38.028389>,  <41.542847, 37.836109, 38.053902>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.326176, 37.500843, 38.028389> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139067, 0.014530, 0.990176,
		-0.829003, 0.545225, -0.124432,
		-0.541677, -0.838163, -0.063777,
		41.163673, 37.249393, 38.009254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.085335, 37.947056, 38.477333>,  <41.542847, 37.836109, 38.053902>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.085335, 37.947056, 38.477333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080753, 37.548016, 38.450012>,  <41.078003, 37.308590, 38.433620>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.080753, 37.548016, 38.450012>,  <41.085335, 37.947056, 38.477333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.080753, 37.548016, 38.450012> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164044, -0.065502, 0.984276,
		-0.986387, 0.022478, -0.162900,
		-0.011454, -0.997599, -0.068298,
		41.077316, 37.248737, 38.429523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.420288, 37.767956, 38.784698>,  <41.085335, 37.947056, 38.477333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.420288, 37.767956, 38.784698> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618668, 37.422905, 38.824524>,  <40.737698, 37.215874, 38.848419>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618668, 37.422905, 38.824524>,  <40.420288, 37.767956, 38.784698>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.618668, 37.422905, 38.824524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539240, -0.216081, 0.813959,
		-0.680626, -0.457374, -0.572327,
		0.495952, -0.862623, 0.099564,
		40.767452, 37.164120, 38.854393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.021648, 37.306534, 39.239811>,  <40.420288, 37.767956, 38.784698>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.021648, 37.306534, 39.239811> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370918, 37.114548, 39.273735>,  <40.580482, 36.999355, 39.294090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.370918, 37.114548, 39.273735>,  <40.021648, 37.306534, 39.239811>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.370918, 37.114548, 39.273735> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246496, -0.284740, 0.926371,
		-0.420475, -0.829793, -0.366938,
		0.873178, -0.479965, 0.084814,
		40.632874, 36.970558, 39.299179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860649, 36.733097, 39.564327>,  <40.021648, 37.306534, 39.239811>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.860649, 36.733097, 39.564327> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254223, 36.755596, 39.632111>,  <40.490368, 36.769096, 39.672783>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.254223, 36.755596, 39.632111>,  <39.860649, 36.733097, 39.564327>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254223, 36.755596, 39.632111> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165594, -0.067515, 0.983880,
		0.066783, -0.996131, -0.057116,
		0.983930, 0.056249, 0.169462,
		40.549400, 36.772469, 39.682949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.103928, 36.111389, 39.926197>,  <39.860649, 36.733097, 39.564327>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.103928, 36.111389, 39.926197> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380356, 36.391502, 39.997776>,  <40.546215, 36.559570, 40.040726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380356, 36.391502, 39.997776>,  <40.103928, 36.111389, 39.926197>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.380356, 36.391502, 39.997776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103471, -0.149185, 0.983381,
		0.715339, -0.698105, -0.030639,
		0.691074, 0.700280, 0.178952,
		40.587677, 36.601585, 40.051460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.548092, 35.799099, 40.367451>,  <40.103928, 36.111389, 39.926197>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.548092, 35.799099, 40.367451> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600437, 36.188927, 40.440212>,  <40.631844, 36.422825, 40.483868>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.600437, 36.188927, 40.440212>,  <40.548092, 35.799099, 40.367451>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.600437, 36.188927, 40.440212> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082064, -0.172203, 0.981637,
		0.987998, -0.143386, 0.057443,
		0.130861, 0.974570, 0.181903,
		40.639694, 36.481297, 40.494781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.607285, 35.131142, 40.124802>,  <40.548092, 35.799099, 40.367451>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.607285, 35.131142, 40.124802> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515633, 34.766964, 40.262554>,  <40.460644, 34.548458, 40.345207>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515633, 34.766964, 40.262554>,  <40.607285, 35.131142, 40.124802>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.515633, 34.766964, 40.262554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271352, -0.280025, -0.920844,
		0.934810, -0.304438, -0.182889,
		-0.229127, -0.910441, 0.344380,
		40.446896, 34.493832, 40.365868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.977364, 34.678764, 39.760719>,  <40.607285, 35.131142, 40.124802>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.977364, 34.678764, 39.760719> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661816, 34.473534, 39.896038>,  <40.472488, 34.350395, 39.977230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661816, 34.473534, 39.896038>,  <40.977364, 34.678764, 39.760719>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661816, 34.473534, 39.896038> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152090, -0.370354, -0.916355,
		0.595445, -0.774335, 0.214128,
		-0.788868, -0.513072, 0.338294,
		40.425156, 34.319611, 39.997528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.988468, 34.058010, 39.397934>,  <40.977364, 34.678764, 39.760719>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.988468, 34.058010, 39.397934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613750, 34.079479, 39.536232>,  <40.388920, 34.092361, 39.619213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613750, 34.079479, 39.536232>,  <40.988468, 34.058010, 39.397934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.613750, 34.079479, 39.536232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349542, -0.187562, -0.917955,
		0.015579, -0.980785, 0.194468,
		-0.936791, 0.053674, 0.345748,
		40.332714, 34.095581, 39.639957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.615025, 33.408913, 39.146370>,  <40.988468, 34.058010, 39.397934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.615025, 33.408913, 39.146370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337219, 33.686222, 39.223331>,  <40.170536, 33.852608, 39.269508>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.337219, 33.686222, 39.223331>,  <40.615025, 33.408913, 39.146370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.337219, 33.686222, 39.223331> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367390, -0.111796, -0.923323,
		-0.618610, -0.711946, 0.332347,
		-0.694511, 0.693278, 0.192403,
		40.128864, 33.894207, 39.281052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.870728, 33.215855, 38.892357>,  <40.615025, 33.408913, 39.146370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.870728, 33.215855, 38.892357> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881168, 33.615555, 38.903843>,  <39.887432, 33.855373, 38.910736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881168, 33.615555, 38.903843>,  <39.870728, 33.215855, 38.892357>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881168, 33.615555, 38.903843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598889, 0.038632, -0.799900,
		-0.800407, 0.003683, 0.599446,
		0.026104, 0.999246, 0.028716,
		39.889000, 33.915329, 38.912457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228096, 33.410458, 38.706654>,  <39.870728, 33.215855, 38.892357>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228096, 33.410458, 38.706654> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459175, 33.732609, 38.653526>,  <39.597820, 33.925900, 38.621651>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459175, 33.732609, 38.653526>,  <39.228096, 33.410458, 38.706654>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.459175, 33.732609, 38.653526> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463676, 0.189873, -0.865421,
		-0.671768, 0.561535, 0.483121,
		0.577696, 0.805374, -0.132820,
		39.632484, 33.974220, 38.613682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.768875, 33.821136, 38.417511>,  <39.228096, 33.410458, 38.706654>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.768875, 33.821136, 38.417511> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121201, 33.990234, 38.332230>,  <39.332596, 34.091694, 38.281063>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.121201, 33.990234, 38.332230>,  <38.768875, 33.821136, 38.417511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121201, 33.990234, 38.332230> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354494, 0.290351, -0.888836,
		-0.313848, 0.858478, 0.405605,
		0.880814, 0.422744, -0.213199,
		39.385445, 34.117058, 38.268269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.517719, 34.325809, 38.046501>,  <38.768875, 33.821136, 38.417511>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.517719, 34.325809, 38.046501> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903805, 34.351517, 37.945126>,  <39.135456, 34.366940, 37.884300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.903805, 34.351517, 37.945126>,  <38.517719, 34.325809, 38.046501>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.903805, 34.351517, 37.945126> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261428, 0.221467, -0.939472,
		-0.004248, 0.973048, 0.230564,
		0.965214, 0.064267, -0.253441,
		39.193367, 34.370796, 37.869095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.583275, 34.906643, 37.691891>,  <38.517719, 34.325809, 38.046501>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.583275, 34.906643, 37.691891> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930695, 34.742252, 37.581104>,  <39.139149, 34.643616, 37.514633>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930695, 34.742252, 37.581104>,  <38.583275, 34.906643, 37.691891>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930695, 34.742252, 37.581104> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184137, 0.251240, -0.950248,
		0.460117, 0.876342, 0.142539,
		0.868554, -0.410978, -0.276967,
		39.191261, 34.618958, 37.498013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.066174, 35.415245, 37.432800>,  <38.583275, 34.906643, 37.691891>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.066174, 35.415245, 37.432800> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096039, 35.056278, 37.258877>,  <39.113960, 34.840897, 37.154522>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.096039, 35.056278, 37.258877>,  <39.066174, 35.415245, 37.432800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096039, 35.056278, 37.258877> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246376, 0.405911, -0.880077,
		0.966294, 0.172838, -0.190795,
		0.074665, -0.897420, -0.434813,
		39.118439, 34.787052, 37.128433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016552, 35.530663, 36.803432>,  <39.066174, 35.415245, 37.432800>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016552, 35.530663, 36.803432> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028076, 35.132931, 36.762489>,  <39.034992, 34.894291, 36.737923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.028076, 35.132931, 36.762489>,  <39.016552, 35.530663, 36.803432>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028076, 35.132931, 36.762489> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141058, 0.097334, -0.985205,
		0.989582, 0.042823, -0.137454,
		0.028811, -0.994330, -0.102361,
		39.036720, 34.834633, 36.731781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512417, 35.287724, 36.252975>,  <39.016552, 35.530663, 36.803432>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512417, 35.287724, 36.252975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211391, 35.031227, 36.312908>,  <39.030777, 34.877331, 36.348869>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211391, 35.031227, 36.312908>,  <39.512417, 35.287724, 36.252975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211391, 35.031227, 36.312908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412191, 0.281261, -0.866597,
		0.513557, -0.713933, -0.475983,
		-0.752567, -0.641243, 0.149833,
		38.985622, 34.838856, 36.357857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<42.111080, 34.550629, 43.837425> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.759418, 34.361404, 43.860439>,  <41.548424, 34.247871, 43.874249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.759418, 34.361404, 43.860439>,  <42.111080, 34.550629, 43.837425>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.759418, 34.361404, 43.860439> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156444, -0.400556, -0.902818,
		0.450131, -0.784712, 0.426156,
		-0.879152, -0.473056, 0.057539,
		41.495674, 34.219486, 43.877701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275902, 33.942265, 43.408817>,  <42.111080, 34.550629, 43.837425>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275902, 33.942265, 43.408817> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.883595, 34.016705, 43.432339>,  <41.648209, 34.061371, 43.446453>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.883595, 34.016705, 43.432339>,  <42.275902, 33.942265, 43.408817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883595, 34.016705, 43.432339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125267, -0.369178, -0.920878,
		-0.149668, -0.910535, 0.385390,
		-0.980769, 0.186102, 0.058806,
		41.589363, 34.072536, 43.449982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.067871, 33.587105, 42.808006>,  <42.275902, 33.942265, 43.408817>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.067871, 33.587105, 42.808006> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.740250, 33.791523, 42.912308>,  <41.543678, 33.914173, 42.974888>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.740250, 33.791523, 42.912308>,  <42.067871, 33.587105, 42.808006>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740250, 33.791523, 42.912308> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441628, -0.271469, -0.855143,
		-0.366227, -0.815561, 0.448037,
		-0.819049, 0.511042, 0.260755,
		41.494534, 33.944836, 42.990536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513794, 33.189972, 42.612408>,  <42.067871, 33.587105, 42.808006>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513794, 33.189972, 42.612408> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390350, 33.569862, 42.633476>,  <41.316284, 33.797798, 42.646118>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.390350, 33.569862, 42.633476>,  <41.513794, 33.189972, 42.612408>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.390350, 33.569862, 42.633476> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439080, -0.093112, -0.893610,
		-0.843784, -0.298903, 0.445742,
		-0.308607, 0.949730, 0.052676,
		41.297768, 33.854782, 42.649281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.716354, 33.231354, 42.325523>,  <41.513794, 33.189972, 42.612408>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.716354, 33.231354, 42.325523> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.850681, 33.607658, 42.306774>,  <40.931278, 33.833439, 42.295525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.850681, 33.607658, 42.306774>,  <40.716354, 33.231354, 42.325523>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.850681, 33.607658, 42.306774> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455589, 0.118675, -0.882244,
		-0.824417, 0.317630, 0.468453,
		0.335821, 0.940759, -0.046871,
		40.951427, 33.889885, 42.292713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.120914, 33.714005, 42.020874>,  <40.716354, 33.231354, 42.325523>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.120914, 33.714005, 42.020874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463696, 33.915035, 41.975189>,  <40.669365, 34.035652, 41.947781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.463696, 33.915035, 41.975189>,  <40.120914, 33.714005, 42.020874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.463696, 33.915035, 41.975189> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315489, 0.336299, -0.887338,
		-0.407548, 0.796441, 0.446751,
		0.856955, 0.502578, -0.114210,
		40.720783, 34.065807, 41.940926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922165, 34.335598, 41.745625>,  <40.120914, 33.714005, 42.020874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922165, 34.335598, 41.745625> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.304783, 34.292149, 41.637390>,  <40.534355, 34.266079, 41.572449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.304783, 34.292149, 41.637390>,  <39.922165, 34.335598, 41.745625>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.304783, 34.292149, 41.637390> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241976, 0.222031, -0.944537,
		0.162676, 0.968970, 0.186099,
		0.956548, -0.108622, -0.270587,
		40.591747, 34.259563, 41.556213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.032738, 34.912125, 41.308163>,  <39.922165, 34.335598, 41.745625>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.032738, 34.912125, 41.308163> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.312622, 34.630322, 41.260708>,  <40.480553, 34.461239, 41.232235>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.312622, 34.630322, 41.260708>,  <40.032738, 34.912125, 41.308163>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.312622, 34.630322, 41.260708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151879, 0.015578, -0.988276,
		0.698093, 0.709528, -0.096099,
		0.699713, -0.704504, -0.118637,
		40.522537, 34.418972, 41.225117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.440586, 35.258202, 40.815536>,  <40.032738, 34.912125, 41.308163>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.440586, 35.258202, 40.815536> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488762, 34.861183, 40.808098>,  <40.517666, 34.622971, 40.803635>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.488762, 34.861183, 40.808098>,  <40.440586, 35.258202, 40.815536>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.488762, 34.861183, 40.808098> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315233, -0.020475, -0.948794,
		0.941341, 0.120132, -0.315349,
		0.120437, -0.992547, -0.018596,
		40.524895, 34.563419, 40.802521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.007225, 35.779354, 40.989067>,  <40.440586, 35.258202, 40.815536>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.007225, 35.779354, 40.989067> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878860, 36.157677, 40.969196>,  <40.801842, 36.384670, 40.957275>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.878860, 36.157677, 40.969196>,  <41.007225, 35.779354, 40.989067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.878860, 36.157677, 40.969196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142448, 0.003652, 0.989796,
		0.936334, 0.324716, 0.133556,
		-0.320914, 0.945805, -0.049675,
		40.782585, 36.441418, 40.954292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.391483, 36.220093, 41.556564>,  <41.007225, 35.779354, 40.989067>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.391483, 36.220093, 41.556564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076569, 36.456120, 41.485016>,  <40.887619, 36.597736, 41.442085>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.076569, 36.456120, 41.485016>,  <41.391483, 36.220093, 41.556564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076569, 36.456120, 41.485016> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077862, 0.192634, 0.978177,
		0.611650, 0.784034, -0.105714,
		-0.787288, 0.590070, -0.178871,
		40.840382, 36.633141, 41.431355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.393852, 36.858971, 42.010212>,  <41.391483, 36.220093, 41.556564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.393852, 36.858971, 42.010212> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.017376, 36.824104, 41.879639>,  <40.791489, 36.803185, 41.801292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.017376, 36.824104, 41.879639>,  <41.393852, 36.858971, 42.010212>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.017376, 36.824104, 41.879639> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321948, -0.061763, 0.944741,
		-0.102512, 0.994277, 0.030068,
		-0.941191, -0.087167, -0.326437,
		40.735020, 36.797955, 41.781708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.084415, 37.287720, 42.450260>,  <41.393852, 36.858971, 42.010212>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.084415, 37.287720, 42.450260> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.786453, 37.066418, 42.301121>,  <40.607674, 36.933636, 42.211636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.786453, 37.066418, 42.301121>,  <41.084415, 37.287720, 42.450260>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.786453, 37.066418, 42.301121> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399442, -0.077776, 0.913453,
		-0.534375, 0.829371, -0.163059,
		-0.744909, -0.553259, -0.372847,
		40.562981, 36.900440, 42.189266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.502819, 37.657753, 42.513145>,  <41.084415, 37.287720, 42.450260>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.502819, 37.657753, 42.513145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.395065, 37.273304, 42.488880>,  <40.330414, 37.042633, 42.474319>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.395065, 37.273304, 42.488880>,  <40.502819, 37.657753, 42.513145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.395065, 37.273304, 42.488880> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408624, 0.057035, 0.910919,
		-0.872043, 0.270173, -0.408102,
		-0.269382, -0.961121, -0.060662,
		40.314251, 36.984966, 42.470680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.821827, 37.641560, 42.776207>,  <40.502819, 37.657753, 42.513145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.821827, 37.641560, 42.776207> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898785, 37.249947, 42.802975>,  <39.944958, 37.014980, 42.819035>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.898785, 37.249947, 42.802975>,  <39.821827, 37.641560, 42.776207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898785, 37.249947, 42.802975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.408259, -0.017842, 0.912692,
		-0.892362, -0.202916, -0.403132,
		0.192393, -0.979034, 0.066921,
		39.956501, 36.956238, 42.823051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.200897, 37.395241, 42.943432>,  <39.821827, 37.641560, 42.776207>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.200897, 37.395241, 42.943432> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.495647, 37.152611, 43.062817>,  <39.672497, 37.007034, 43.134449>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.495647, 37.152611, 43.062817>,  <39.200897, 37.395241, 42.943432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.495647, 37.152611, 43.062817> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448356, -0.108078, 0.887297,
		-0.505957, -0.787645, -0.351602,
		0.736875, -0.606576, 0.298462,
		39.716709, 36.970638, 43.152355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.907787, 36.974335, 43.436451>,  <39.200897, 37.395241, 42.943432>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.907787, 36.974335, 43.436451> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286724, 36.880043, 43.523144>,  <39.514088, 36.823467, 43.575157>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.286724, 36.880043, 43.523144>,  <38.907787, 36.974335, 43.436451>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.286724, 36.880043, 43.523144> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233580, -0.045736, 0.971261,
		-0.219042, -0.970742, -0.098389,
		0.947344, -0.235729, 0.216728,
		39.570927, 36.809326, 43.588161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.885513, 36.474949, 43.970043>,  <38.907787, 36.974335, 43.436451>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.885513, 36.474949, 43.970043> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254597, 36.626865, 43.996479>,  <39.476048, 36.718014, 44.012341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.254597, 36.626865, 43.996479>,  <38.885513, 36.474949, 43.970043>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.254597, 36.626865, 43.996479> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137136, 0.163166, 0.977021,
		0.360281, -0.910568, 0.202638,
		0.922709, 0.379792, 0.066086,
		39.531410, 36.740803, 44.016304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.238632, 36.152916, 44.557171>,  <38.885513, 36.474949, 43.970043>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.238632, 36.152916, 44.557171> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450989, 36.482628, 44.478466>,  <39.578403, 36.680454, 44.431244>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.450989, 36.482628, 44.478466>,  <39.238632, 36.152916, 44.557171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.450989, 36.482628, 44.478466> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053852, 0.264528, 0.962873,
		0.845726, -0.500586, 0.184826,
		0.530892, 0.824281, -0.196761,
		39.610256, 36.729912, 44.419437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874538, 36.167236, 44.941315>,  <39.238632, 36.152916, 44.557171>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874538, 36.167236, 44.941315> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.825375, 36.559780, 44.882217>,  <39.795876, 36.795307, 44.846760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.825375, 36.559780, 44.882217>,  <39.874538, 36.167236, 44.941315>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825375, 36.559780, 44.882217> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096303, 0.159968, 0.982413,
		0.987734, 0.106522, -0.114170,
		-0.122912, 0.981358, -0.147748,
		39.788502, 36.854187, 44.837894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.354393, 36.548157, 45.372646>,  <39.874538, 36.167236, 44.941315>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.354393, 36.548157, 45.372646> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.074223, 36.816292, 45.274620>,  <39.906120, 36.977173, 45.215805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.074223, 36.816292, 45.274620>,  <40.354393, 36.548157, 45.372646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.074223, 36.816292, 45.274620> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223692, 0.532237, 0.816508,
		0.677767, 0.517083, -0.522740,
		-0.700424, 0.670335, -0.245065,
		39.864094, 37.017391, 45.201099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.601429, 37.175674, 45.435474>,  <40.354393, 36.548157, 45.372646>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.601429, 37.175674, 45.435474> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.214149, 37.274368, 45.452076>,  <39.981781, 37.333584, 45.462036>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.214149, 37.274368, 45.452076>,  <40.601429, 37.175674, 45.435474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.214149, 37.274368, 45.452076> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142196, 0.406150, 0.902675,
		0.205861, 0.879867, -0.428317,
		-0.968195, 0.246730, 0.041503,
		39.923691, 37.348389, 45.464527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.545551, 37.907543, 45.514507>,  <40.601429, 37.175674, 45.435474>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.545551, 37.907543, 45.514507> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182407, 37.782669, 45.626457>,  <39.964520, 37.707745, 45.693626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.182407, 37.782669, 45.626457>,  <40.545551, 37.907543, 45.514507>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.182407, 37.782669, 45.626457> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045640, 0.589973, 0.806132,
		-0.416781, 0.744629, -0.521365,
		-0.907861, -0.312185, 0.279875,
		39.910049, 37.689014, 45.710419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.122421, 34.374306, 46.937641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441719, 34.159473, 46.828575>,  <34.633297, 34.030575, 46.763134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.441719, 34.159473, 46.828575>,  <34.122421, 34.374306, 46.937641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.441719, 34.159473, 46.828575> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423960, -0.179434, -0.887728,
		0.427860, 0.824223, -0.370935,
		0.798244, -0.537085, -0.272664,
		34.681190, 33.998348, 46.746777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386227, 34.702663, 46.336037>,  <34.122421, 34.374306, 46.937641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386227, 34.702663, 46.336037> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509335, 34.322132, 46.342316>,  <34.583199, 34.093811, 46.346085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.509335, 34.322132, 46.342316>,  <34.386227, 34.702663, 46.336037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.509335, 34.322132, 46.342316> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332407, -0.122972, -0.935085,
		0.891506, 0.282572, -0.354076,
		0.307770, -0.951331, 0.015701,
		34.601665, 34.036732, 46.347027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.574135, 34.617752, 45.741104>,  <34.386227, 34.702663, 46.336037>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.574135, 34.617752, 45.741104> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611492, 34.229492, 45.829762>,  <34.633907, 33.996536, 45.882954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.611492, 34.229492, 45.829762>,  <34.574135, 34.617752, 45.741104>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611492, 34.229492, 45.829762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.167785, -0.234772, -0.957460,
		0.981390, 0.052230, -0.184785,
		0.093390, -0.970646, 0.221640,
		34.639511, 33.938297, 45.896252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.011330, 34.369453, 45.287033>,  <34.574135, 34.617752, 45.741104>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.011330, 34.369453, 45.287033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768204, 34.073673, 45.402805>,  <34.622326, 33.896206, 45.472267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.768204, 34.073673, 45.402805>,  <35.011330, 34.369453, 45.287033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.768204, 34.073673, 45.402805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324038, -0.101789, -0.940552,
		0.724952, -0.665472, -0.177741,
		-0.607819, -0.739450, 0.289431,
		34.585857, 33.851837, 45.489635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.157089, 33.866467, 44.861191>,  <35.011330, 34.369453, 45.287033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.157089, 33.866467, 44.861191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797028, 33.734150, 44.974541>,  <34.580990, 33.654762, 45.042549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.797028, 33.734150, 44.974541>,  <35.157089, 33.866467, 44.861191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797028, 33.734150, 44.974541> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244496, -0.154693, -0.957231,
		0.360479, -0.930939, 0.058371,
		-0.900154, -0.330790, 0.283375,
		34.526981, 33.634914, 45.059551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.071999, 33.199440, 44.592442>,  <35.157089, 33.866467, 44.861191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.071999, 33.199440, 44.592442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699127, 33.309750, 44.686249>,  <34.475407, 33.375935, 44.742535>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.699127, 33.309750, 44.686249>,  <35.071999, 33.199440, 44.592442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699127, 33.309750, 44.686249> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296126, -0.208235, -0.932174,
		-0.208235, -0.938396, 0.275775,
		0.932174, -0.275775, -0.234521,
		34.419476, 33.392483, 44.756603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.646038, 32.736931, 44.341900>,  <35.071999, 33.199440, 44.592442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.646038, 32.736931, 44.341900> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403419, 33.054474, 44.359245>,  <34.257847, 33.244999, 44.369652>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.403419, 33.054474, 44.359245>,  <34.646038, 32.736931, 44.341900>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.403419, 33.054474, 44.359245> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256304, -0.143616, -0.955867,
		-0.752599, -0.590896, 0.290580,
		-0.606550, 0.793861, 0.043364,
		34.221455, 33.292633, 44.372253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.070511, 32.491131, 44.090473>,  <34.646038, 32.736931, 44.341900>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.070511, 32.491131, 44.090473> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067696, 32.889999, 44.060566>,  <34.066006, 33.129322, 44.042622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.067696, 32.889999, 44.060566>,  <34.070511, 32.491131, 44.090473>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.067696, 32.889999, 44.060566> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249932, -0.074153, -0.965419,
		-0.968238, 0.011891, 0.249748,
		-0.007040, 0.997176, -0.074770,
		34.065582, 33.189152, 44.038136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.543472, 32.654804, 43.666122>,  <34.070511, 32.491131, 44.090473>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.543472, 32.654804, 43.666122> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713593, 33.016682, 43.655949>,  <33.815666, 33.233807, 43.649845>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.713593, 33.016682, 43.655949>,  <33.543472, 32.654804, 43.666122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.713593, 33.016682, 43.655949> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359873, 0.143260, -0.921937,
		-0.830428, 0.401253, 0.386503,
		0.425301, 0.904695, -0.025434,
		33.841183, 33.288090, 43.648319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.007034, 33.031445, 43.266872>,  <33.543472, 32.654804, 43.666122>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.007034, 33.031445, 43.266872> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349117, 33.238525, 43.276737>,  <33.554367, 33.362774, 43.282658>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.349117, 33.238525, 43.276737>,  <33.007034, 33.031445, 43.266872>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.349117, 33.238525, 43.276737> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108111, 0.224729, -0.968405,
		-0.506885, 0.825521, 0.248159,
		0.855208, 0.517698, 0.024664,
		33.605679, 33.393833, 43.284138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.932026, 33.738037, 43.016743>,  <33.007034, 33.031445, 43.266872>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.932026, 33.738037, 43.016743> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314384, 33.635521, 42.959362>,  <33.543800, 33.574013, 42.924934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.314384, 33.635521, 42.959362>,  <32.932026, 33.738037, 43.016743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.314384, 33.635521, 42.959362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100564, 0.173314, -0.979719,
		0.275952, 0.950936, 0.139897,
		0.955896, -0.256287, -0.143456,
		33.601154, 33.558636, 42.916325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221687, 34.250427, 42.592468>,  <32.932026, 33.738037, 43.016743>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221687, 34.250427, 42.592468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460392, 33.932560, 42.547962>,  <33.603615, 33.741840, 42.521259>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.460392, 33.932560, 42.547962>,  <33.221687, 34.250427, 42.592468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460392, 33.932560, 42.547962> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046335, 0.172553, -0.983910,
		0.801083, 0.582000, 0.139793,
		0.596757, -0.794671, -0.111262,
		33.639420, 33.694160, 42.514584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.690464, 34.548286, 42.169785>,  <33.221687, 34.250427, 42.592468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.690464, 34.548286, 42.169785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745041, 34.153236, 42.138863>,  <33.777786, 33.916206, 42.120308>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.745041, 34.153236, 42.138863>,  <33.690464, 34.548286, 42.169785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745041, 34.153236, 42.138863> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071777, 0.087687, -0.993559,
		0.988044, 0.130014, 0.082853,
		0.136442, -0.987627, -0.077307,
		33.785973, 33.856949, 42.115669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.287712, 34.400761, 41.705956>,  <33.690464, 34.548286, 42.169785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.287712, 34.400761, 41.705956> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053398, 34.077709, 41.678814>,  <33.912811, 33.883881, 41.662529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.053398, 34.077709, 41.678814>,  <34.287712, 34.400761, 41.705956>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.053398, 34.077709, 41.678814> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197369, -0.060954, -0.978432,
		0.786070, -0.586538, 0.195106,
		-0.585781, -0.807625, -0.067850,
		33.877663, 33.835423, 41.658459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000378, 34.730991, 41.530449>,  <34.287712, 34.400761, 41.705956>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000378, 34.730991, 41.530449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073174, 35.080959, 41.350941>,  <35.116852, 35.290939, 41.243237>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.073174, 35.080959, 41.350941>,  <35.000378, 34.730991, 41.530449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.073174, 35.080959, 41.350941> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023662, 0.452362, 0.891520,
		0.983015, -0.172869, 0.061625,
		0.181993, 0.874920, -0.448769,
		35.127773, 35.343433, 41.216309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480164, 34.998100, 41.972828>,  <35.000378, 34.730991, 41.530449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480164, 34.998100, 41.972828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.298958, 35.278580, 41.752609>,  <35.190235, 35.446869, 41.620480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.298958, 35.278580, 41.752609>,  <35.480164, 34.998100, 41.972828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.298958, 35.278580, 41.752609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032054, 0.629958, 0.775967,
		0.890926, 0.333878, -0.307857,
		-0.453016, 0.701197, -0.550544,
		35.163052, 35.488937, 41.587444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.796986, 35.611790, 42.125641>,  <35.480164, 34.998100, 41.972828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.796986, 35.611790, 42.125641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459785, 35.741375, 41.953876>,  <35.257465, 35.819126, 41.850819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.459785, 35.741375, 41.953876>,  <35.796986, 35.611790, 42.125641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459785, 35.741375, 41.953876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165018, 0.604045, 0.779679,
		0.511973, 0.728131, -0.455751,
		-0.843003, 0.323967, -0.429409,
		35.206886, 35.838566, 41.825054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.850533, 36.279869, 42.128193>,  <35.796986, 35.611790, 42.125641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.850533, 36.279869, 42.128193> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465298, 36.174801, 42.151726>,  <35.234158, 36.111759, 42.165844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.465298, 36.174801, 42.151726>,  <35.850533, 36.279869, 42.128193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.465298, 36.174801, 42.151726> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062301, 0.430136, 0.900612,
		-0.261874, 0.863704, -0.430624,
		-0.963089, -0.262675, 0.058832,
		35.176373, 36.095997, 42.169376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.520912, 36.806850, 42.478111>,  <35.850533, 36.279869, 42.128193>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.520912, 36.806850, 42.478111> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292187, 36.479874, 42.505901>,  <35.154953, 36.283688, 42.522575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.292187, 36.479874, 42.505901>,  <35.520912, 36.806850, 42.478111>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.292187, 36.479874, 42.505901> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060480, 0.126455, 0.990127,
		-0.818152, 0.561965, -0.121747,
		-0.571813, -0.817438, 0.069472,
		35.120644, 36.234642, 42.526741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872486, 37.003178, 42.766209>,  <35.520912, 36.806850, 42.478111>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872486, 37.003178, 42.766209> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.967861, 36.624859, 42.854408>,  <35.025085, 36.397869, 42.907330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.967861, 36.624859, 42.854408>,  <34.872486, 37.003178, 42.766209>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.967861, 36.624859, 42.854408> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104739, 0.250766, 0.962365,
		-0.965494, -0.206365, 0.158853,
		0.238434, -0.945796, 0.220499,
		35.039391, 36.341122, 42.920559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.362461, 36.821430, 43.349285>,  <34.872486, 37.003178, 42.766209>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.362461, 36.821430, 43.349285> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655182, 36.549095, 43.361416>,  <34.830814, 36.385693, 43.368694>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.655182, 36.549095, 43.361416>,  <34.362461, 36.821430, 43.349285>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.655182, 36.549095, 43.361416> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064294, -0.024664, 0.997626,
		-0.678477, -0.732016, -0.061824,
		0.731803, -0.680841, 0.030330,
		34.874722, 36.344841, 43.370514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.133434, 36.364983, 43.910587>,  <34.362461, 36.821430, 43.349285>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.133434, 36.364983, 43.910587> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524754, 36.297405, 43.862606>,  <34.759544, 36.256859, 43.833817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.524754, 36.297405, 43.862606>,  <34.133434, 36.364983, 43.910587>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.524754, 36.297405, 43.862606> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072245, -0.264477, 0.961682,
		-0.194195, -0.949479, -0.246532,
		0.978299, -0.168943, -0.119956,
		34.818245, 36.246723, 43.826618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.275391, 35.852123, 44.369362>,  <34.133434, 36.364983, 43.910587>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.275391, 35.852123, 44.369362> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647820, 35.989826, 44.321041>,  <34.871277, 36.072449, 44.292049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.647820, 35.989826, 44.321041>,  <34.275391, 35.852123, 44.369362>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.647820, 35.989826, 44.321041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183911, -0.156915, 0.970337,
		0.315094, -0.925668, -0.209412,
		0.931071, 0.344261, -0.120797,
		34.927139, 36.093105, 44.284801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.778130, 35.347836, 44.719124>,  <34.275391, 35.852123, 44.369362>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.778130, 35.347836, 44.719124> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944988, 35.709824, 44.685612>,  <35.045105, 35.927017, 44.665504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.944988, 35.709824, 44.685612>,  <34.778130, 35.347836, 44.719124>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.944988, 35.709824, 44.685612> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285005, -0.042724, 0.957573,
		0.862996, -0.423325, -0.275743,
		0.417146, 0.904970, -0.083779,
		35.070133, 35.981316, 44.660477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.440834, 35.276859, 45.119102>,  <34.778130, 35.347836, 44.719124>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.440834, 35.276859, 45.119102> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402630, 35.668823, 45.049061>,  <35.379707, 35.903999, 45.007034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.402630, 35.668823, 45.049061>,  <35.440834, 35.276859, 45.119102>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.402630, 35.668823, 45.049061> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376472, 0.198405, 0.904933,
		0.921491, 0.020511, -0.387857,
		-0.095513, 0.979906, -0.175107,
		35.373978, 35.962795, 44.996529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128719, 35.592861, 45.129951>,  <35.440834, 35.276859, 45.119102>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128719, 35.592861, 45.129951> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872978, 35.893364, 45.195477>,  <35.719532, 36.073666, 45.234791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.872978, 35.893364, 45.195477>,  <36.128719, 35.592861, 45.129951>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.872978, 35.893364, 45.195477> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520241, 0.265774, 0.811612,
		0.566194, 0.604130, -0.560760,
		-0.639354, 0.751260, 0.163813,
		35.681171, 36.118740, 45.244621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.550507, 36.213795, 45.344055>,  <36.128719, 35.592861, 45.129951>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.550507, 36.213795, 45.344055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.178368, 36.266945, 45.480762>,  <35.955086, 36.298836, 45.562786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.178368, 36.266945, 45.480762>,  <36.550507, 36.213795, 45.344055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.178368, 36.266945, 45.480762> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366475, 0.305254, 0.878929,
		0.012467, 0.942955, -0.332688,
		-0.930345, 0.132879, 0.341764,
		35.899265, 36.306808, 45.583290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521408, 36.875435, 45.651623>,  <36.550507, 36.213795, 45.344055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521408, 36.875435, 45.651623> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220875, 36.671116, 45.818756>,  <36.040554, 36.548523, 45.919037>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.220875, 36.671116, 45.818756>,  <36.521408, 36.875435, 45.651623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.220875, 36.671116, 45.818756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283785, 0.321540, 0.903370,
		-0.595789, 0.797307, -0.096628,
		-0.751333, -0.510796, 0.417834,
		35.995476, 36.517876, 45.944107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.656151, 37.622803, 45.689850>,  <36.521408, 36.875435, 45.651623>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.656151, 37.622803, 45.689850> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824013, 37.982922, 45.736073>,  <36.924732, 38.198994, 45.763805>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.824013, 37.982922, 45.736073>,  <36.656151, 37.622803, 45.689850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.824013, 37.982922, 45.736073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020717, 0.136776, -0.990385,
		-0.907445, 0.413231, 0.076051,
		0.419660, 0.900296, 0.115556,
		36.949909, 38.253010, 45.770741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151569, 38.155071, 45.348190>,  <36.656151, 37.622803, 45.689850>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151569, 38.155071, 45.348190> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547112, 38.212883, 45.362438>,  <36.784439, 38.247570, 45.370987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.547112, 38.212883, 45.362438>,  <36.151569, 38.155071, 45.348190>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.547112, 38.212883, 45.362438> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035374, 0.004288, -0.999365,
		-0.144586, 0.989492, -0.000872,
		0.988860, 0.144525, 0.035622,
		36.843769, 38.256241, 45.373123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.253677, 38.672531, 44.732529>,  <36.151569, 38.155071, 45.348190>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.253677, 38.672531, 44.732529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621075, 38.561226, 44.844913>,  <36.841515, 38.494442, 44.912342>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.621075, 38.561226, 44.844913>,  <36.253677, 38.672531, 44.732529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.621075, 38.561226, 44.844913> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327278, 0.136160, -0.935067,
		0.221939, 0.950805, 0.216131,
		0.918495, -0.278262, 0.280958,
		36.896622, 38.477749, 44.929199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.553959, 39.043144, 44.350250>,  <36.253677, 38.672531, 44.732529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.553959, 39.043144, 44.350250> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.829243, 38.781910, 44.476639>,  <36.994415, 38.625168, 44.552471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.829243, 38.781910, 44.476639>,  <36.553959, 39.043144, 44.350250>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.829243, 38.781910, 44.476639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426722, 0.012154, -0.904301,
		0.586749, 0.757184, 0.287052,
		0.688211, -0.653089, 0.315975,
		37.035706, 38.585983, 44.571430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.250427, 39.336727, 44.359669>,  <36.553959, 39.043144, 44.350250>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.250427, 39.336727, 44.359669> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298458, 38.939697, 44.351830>,  <37.327278, 38.701481, 44.347126>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.298458, 38.939697, 44.351830>,  <37.250427, 39.336727, 44.359669>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.298458, 38.939697, 44.351830> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683197, 0.096946, -0.723770,
		0.720294, 0.073519, 0.689762,
		0.120081, -0.992571, -0.019602,
		37.334484, 38.641926, 44.345947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.960106, 39.136673, 44.317364>,  <37.250427, 39.336727, 44.359669>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.960106, 39.136673, 44.317364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768814, 38.816898, 44.171928>,  <37.654041, 38.625034, 44.084667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.768814, 38.816898, 44.171928>,  <37.960106, 39.136673, 44.317364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.768814, 38.816898, 44.171928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497919, 0.094222, -0.862090,
		0.723446, -0.593311, 0.352997,
		-0.478228, -0.799439, -0.363586,
		37.625347, 38.577068, 44.062851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.427372, 38.999893, 43.836979>,  <37.960106, 39.136673, 44.317364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.427372, 38.999893, 43.836979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.095509, 38.790958, 43.758156>,  <37.896389, 38.665600, 43.710861>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.095509, 38.790958, 43.758156>,  <38.427372, 38.999893, 43.836979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.095509, 38.790958, 43.758156> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329733, -0.173651, -0.927966,
		0.450490, -0.834872, 0.316303,
		-0.829659, -0.522335, -0.197057,
		37.846611, 38.634258, 43.699039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.566338, 38.322289, 43.678509>,  <38.427372, 38.999893, 43.836979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.566338, 38.322289, 43.678509> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218655, 38.410656, 43.501568>,  <38.010044, 38.463676, 43.395401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.218655, 38.410656, 43.501568>,  <38.566338, 38.322289, 43.678509>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218655, 38.410656, 43.501568> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367008, -0.311254, -0.876599,
		-0.331347, -0.924291, 0.189462,
		-0.869203, 0.220924, -0.442355,
		37.957893, 38.476933, 43.368862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.472786, 37.882240, 43.050461>,  <38.566338, 38.322289, 43.678509>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.472786, 37.882240, 43.050461> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157417, 38.123314, 43.001198>,  <37.968197, 38.267960, 42.971638>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.157417, 38.123314, 43.001198>,  <38.472786, 37.882240, 43.050461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157417, 38.123314, 43.001198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.052977, -0.265998, -0.962517,
		-0.612855, -0.752340, 0.241646,
		-0.788417, 0.602685, -0.123162,
		37.920891, 38.304119, 42.964249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.938297, 37.545387, 42.657288>,  <38.472786, 37.882240, 43.050461>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.938297, 37.545387, 42.657288> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886669, 37.936985, 42.594143>,  <37.855694, 38.171944, 42.556255>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.886669, 37.936985, 42.594143>,  <37.938297, 37.545387, 42.657288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886669, 37.936985, 42.594143> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061372, -0.166775, -0.984083,
		-0.989735, -0.117326, 0.081608,
		-0.129069, 0.978990, -0.157863,
		37.847950, 38.230682, 42.546783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304989, 37.688614, 42.249607>,  <37.938297, 37.545387, 42.657288>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.304989, 37.688614, 42.249607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.539574, 38.005886, 42.183971>,  <37.680325, 38.196251, 42.144588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.539574, 38.005886, 42.183971>,  <37.304989, 37.688614, 42.249607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.539574, 38.005886, 42.183971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204050, -0.051380, -0.977611,
		-0.783857, 0.606811, 0.131717,
		0.586458, 0.793184, -0.164094,
		37.715511, 38.243843, 42.134743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018291, 37.912613, 41.662960>,  <37.304989, 37.688614, 42.249607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018291, 37.912613, 41.662960> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357048, 38.124020, 41.686394>,  <37.560303, 38.250866, 41.700455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.357048, 38.124020, 41.686394>,  <37.018291, 37.912613, 41.662960>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.357048, 38.124020, 41.686394> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074413, 0.226885, -0.971074,
		-0.526526, 0.818039, 0.231477,
		0.846896, 0.528521, 0.058588,
		37.611118, 38.282578, 41.703972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.846901, 38.553555, 41.510983>,  <37.018291, 37.912613, 41.662960>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.846901, 38.553555, 41.510983> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236126, 38.491695, 41.442585>,  <37.469662, 38.454578, 41.401546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.236126, 38.491695, 41.442585>,  <36.846901, 38.553555, 41.510983>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.236126, 38.491695, 41.442585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096283, 0.401301, -0.910872,
		0.209487, 0.902796, 0.375599,
		0.973059, -0.154652, -0.170992,
		37.528046, 38.445301, 41.391289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010002, 39.154316, 41.012882>,  <36.846901, 38.553555, 41.510983>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010002, 39.154316, 41.012882> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315212, 38.896530, 40.993042>,  <37.498337, 38.741859, 40.981136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.315212, 38.896530, 40.993042>,  <37.010002, 39.154316, 41.012882>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.315212, 38.896530, 40.993042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168708, 0.272646, -0.947207,
		0.623962, 0.714376, 0.316762,
		0.763026, -0.644462, -0.049600,
		37.544121, 38.703190, 40.978161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<29.518581, 42.021210, 35.913849> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899857, 42.057663, 35.798519>,  <30.128622, 42.079533, 35.729321>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.899857, 42.057663, 35.798519>,  <29.518581, 42.021210, 35.913849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.899857, 42.057663, 35.798519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060658, -0.991750, -0.112927,
		-0.296238, 0.090151, -0.950850,
		0.953186, 0.091130, -0.288325,
		30.185812, 42.085003, 35.712021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.055609, 42.063961, 36.562866>,  <29.518581, 42.021210, 35.913849>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.055609, 42.063961, 36.562866> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985432, 41.960724, 36.182842>,  <28.943325, 41.898781, 35.954830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.985432, 41.960724, 36.182842>,  <29.055609, 42.063961, 36.562866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.985432, 41.960724, 36.182842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620544, -0.720191, 0.310241,
		-0.764294, 0.643981, -0.033808,
		-0.175441, -0.258095, -0.950057,
		28.932800, 41.883297, 35.897827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.317066, 42.089542, 36.415653>,  <29.055609, 42.063961, 36.562866>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.317066, 42.089542, 36.415653> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478458, 41.830410, 36.157188>,  <28.575293, 41.674931, 36.002110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.478458, 41.830410, 36.157188>,  <28.317066, 42.089542, 36.415653>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.478458, 41.830410, 36.157188> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632490, -0.707776, 0.314657,
		-0.661181, 0.281733, -0.695317,
		0.403479, -0.647827, -0.646162,
		28.599503, 41.636063, 35.963341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.772404, 41.697384, 36.144970>,  <28.317066, 42.089542, 36.415653>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.772404, 41.697384, 36.144970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099241, 41.472691, 36.093102>,  <28.295343, 41.337875, 36.061981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.099241, 41.472691, 36.093102>,  <27.772404, 41.697384, 36.144970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.099241, 41.472691, 36.093102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486936, -0.792876, 0.366388,
		-0.308628, -0.236230, -0.921382,
		0.817094, -0.561732, -0.129675,
		28.344370, 41.304173, 36.054199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.432529, 41.170074, 35.636860>,  <27.772404, 41.697384, 36.144970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.432529, 41.170074, 35.636860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765009, 41.013664, 35.794956>,  <27.964497, 40.919819, 35.889812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.765009, 41.013664, 35.794956>,  <27.432529, 41.170074, 35.636860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.765009, 41.013664, 35.794956> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445825, -0.893514, 0.053596,
		0.332193, -0.220755, -0.917014,
		0.831196, -0.391024, 0.395238,
		28.014368, 40.896358, 35.913528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.342049, 40.483833, 35.518379>,  <27.432529, 41.170074, 35.636860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.342049, 40.483833, 35.518379> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680479, 40.442303, 35.727520>,  <27.883537, 40.417385, 35.853004>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.680479, 40.442303, 35.727520>,  <27.342049, 40.483833, 35.518379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.680479, 40.442303, 35.727520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176473, -0.980095, 0.090946,
		0.503006, -0.169217, -0.847556,
		0.846075, -0.103824, 0.522856,
		27.934301, 40.411156, 35.884377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.749168, 39.952019, 35.259972>,  <27.342049, 40.483833, 35.518379>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.749168, 39.952019, 35.259972> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.841566, 39.997330, 35.646507>,  <27.897005, 40.024517, 35.878429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.841566, 39.997330, 35.646507>,  <27.749168, 39.952019, 35.259972>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.841566, 39.997330, 35.646507> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326842, -0.926447, 0.186733,
		0.916414, -0.358975, -0.176980,
		0.230995, 0.113281, 0.966338,
		27.910864, 40.031315, 35.936409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.223722, 39.397655, 35.486572>,  <27.749168, 39.952019, 35.259972>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.223722, 39.397655, 35.486572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025381, 39.530098, 35.807693>,  <27.906376, 39.609562, 36.000366>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025381, 39.530098, 35.807693>,  <28.223722, 39.397655, 35.486572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025381, 39.530098, 35.807693> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260947, -0.938546, 0.225915,
		0.828274, -0.097470, 0.551781,
		-0.495852, 0.331105, 0.802807,
		27.876625, 39.629429, 36.048534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.530485, 39.085999, 35.979660>,  <28.223722, 39.397655, 35.486572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.530485, 39.085999, 35.979660> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173075, 39.197975, 36.120083>,  <27.958628, 39.265163, 36.204334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.173075, 39.197975, 36.120083>,  <28.530485, 39.085999, 35.979660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.173075, 39.197975, 36.120083> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264198, -0.959968, 0.093065,
		0.363054, -0.009592, 0.931719,
		-0.893528, 0.279946, 0.351054,
		27.905016, 39.281960, 36.225399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.400171, 38.564671, 36.335564>,  <28.530485, 39.085999, 35.979660>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.400171, 38.564671, 36.335564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052221, 38.761959, 36.338600>,  <27.843452, 38.880333, 36.340424>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.052221, 38.761959, 36.338600>,  <28.400171, 38.564671, 36.335564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.052221, 38.761959, 36.338600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490986, -0.867213, 0.082918,
		0.047480, 0.068401, 0.996527,
		-0.869873, 0.493218, 0.007591,
		27.791260, 38.909924, 36.340878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003668, 38.496838, 36.939751>,  <28.400171, 38.564671, 36.335564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003668, 38.496838, 36.939751> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.737301, 38.565121, 36.649258>,  <27.577480, 38.606091, 36.474964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.737301, 38.565121, 36.649258>,  <28.003668, 38.496838, 36.939751>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.737301, 38.565121, 36.649258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578849, -0.732337, 0.358632,
		-0.470623, 0.659197, 0.586492,
		-0.665919, 0.170710, -0.726230,
		27.537525, 38.616333, 36.431389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.327324, 38.372429, 37.234375>,  <28.003668, 38.496838, 36.939751>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.327324, 38.372429, 37.234375> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259350, 38.367344, 36.840225>,  <27.218565, 38.364292, 36.603737>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.259350, 38.367344, 36.840225>,  <27.327324, 38.372429, 37.234375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.259350, 38.367344, 36.840225> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641908, -0.757259, 0.120471,
		-0.747714, 0.652991, 0.120524,
		-0.169934, -0.012713, -0.985373,
		27.208370, 38.363529, 36.544613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.725952, 38.336540, 37.244511>,  <27.327324, 38.372429, 37.234375>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.725952, 38.336540, 37.244511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811853, 38.218475, 36.872112>,  <26.863394, 38.147636, 36.648674>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.811853, 38.218475, 36.872112>,  <26.725952, 38.336540, 37.244511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.811853, 38.218475, 36.872112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659147, -0.747212, 0.084848,
		-0.720699, 0.595445, -0.355020,
		0.214753, -0.295160, -0.931000,
		26.876280, 38.129929, 36.592812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.142801, 38.243065, 37.009064>,  <26.725952, 38.336540, 37.244511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.142801, 38.243065, 37.009064> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380571, 38.045311, 36.755375>,  <26.523233, 37.926659, 36.603161>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.380571, 38.045311, 36.755375>,  <26.142801, 38.243065, 37.009064>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.380571, 38.045311, 36.755375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580709, -0.809479, 0.086727,
		-0.556268, 0.316747, -0.768269,
		0.594427, -0.494384, -0.634225,
		26.558899, 37.896996, 36.565109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655550, 37.894989, 36.617531>,  <26.142801, 38.243065, 37.009064>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655550, 37.894989, 36.617531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.013119, 37.718517, 36.585865>,  <26.227659, 37.612637, 36.566864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.013119, 37.718517, 36.585865>,  <25.655550, 37.894989, 36.617531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.013119, 37.718517, 36.585865> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436740, -0.897050, 0.067529,
		-0.100810, -0.025790, -0.994572,
		0.893922, -0.441176, -0.079168,
		26.281296, 37.586163, 36.562115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.713741, 37.440426, 36.022457>,  <25.655550, 37.894989, 36.617531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.713741, 37.440426, 36.022457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001101, 37.318932, 36.272785>,  <26.173517, 37.246037, 36.422981>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.001101, 37.318932, 36.272785>,  <25.713741, 37.440426, 36.022457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.001101, 37.318932, 36.272785> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465784, -0.878228, 0.108452,
		0.516670, -0.369407, -0.772393,
		0.718400, -0.303734, 0.625818,
		26.216621, 37.227810, 36.460529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.875399, 36.888584, 35.764969>,  <25.713741, 37.440426, 36.022457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.875399, 36.888584, 35.764969> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.990372, 36.851559, 36.146297>,  <26.059355, 36.829342, 36.375095>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.990372, 36.851559, 36.146297>,  <25.875399, 36.888584, 35.764969>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.990372, 36.851559, 36.146297> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452506, -0.890360, 0.049981,
		0.844169, -0.445748, -0.297804,
		0.287431, -0.092566, 0.953318,
		26.076601, 36.823788, 36.432293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107361, 36.294300, 35.779240>,  <25.875399, 36.888584, 35.764969>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107361, 36.294300, 35.779240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.037989, 36.379707, 36.163807>,  <25.996367, 36.430954, 36.394547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.037989, 36.379707, 36.163807>,  <26.107361, 36.294300, 35.779240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.037989, 36.379707, 36.163807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310780, -0.938200, 0.152302,
		0.934526, -0.272377, 0.229069,
		-0.173429, 0.213520, 0.961421,
		25.985960, 36.443764, 36.452232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.413202, 35.783260, 36.174511>,  <26.107361, 36.294300, 35.779240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.413202, 35.783260, 36.174511> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175602, 35.937435, 36.456959>,  <26.033041, 36.029942, 36.626427>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.175602, 35.937435, 36.456959>,  <26.413202, 35.783260, 36.174511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.175602, 35.937435, 36.456959> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424138, -0.895891, 0.132236,
		0.683571, -0.220942, 0.695640,
		-0.594001, 0.385440, 0.706115,
		25.997402, 36.053066, 36.668793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.423820, 35.265404, 36.767990>,  <26.413202, 35.783260, 36.174511>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.423820, 35.265404, 36.767990> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.080891, 35.467274, 36.808578>,  <25.875132, 35.588394, 36.832932>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.080891, 35.467274, 36.808578>,  <26.423820, 35.265404, 36.767990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.080891, 35.467274, 36.808578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442093, -0.822819, 0.357103,
		0.263714, 0.261293, 0.928537,
		-0.857326, 0.504673, 0.101473,
		25.823692, 35.618675, 36.839020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.022913, 35.600739, 36.668804>,  <26.423820, 35.265404, 36.767990>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.022913, 35.600739, 36.668804> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316320, 35.332710, 36.714321>,  <27.492365, 35.171894, 36.741631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.316320, 35.332710, 36.714321>,  <27.022913, 35.600739, 36.668804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.316320, 35.332710, 36.714321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591432, 0.546784, -0.592652,
		0.334899, 0.502025, 0.797380,
		0.733520, -0.670074, 0.113796,
		27.536377, 35.131687, 36.748459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.609877, 36.051315, 36.844341>,  <27.022913, 35.600739, 36.668804>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.609877, 36.051315, 36.844341> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763231, 35.707802, 36.708397>,  <27.855244, 35.501694, 36.626831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.763231, 35.707802, 36.708397>,  <27.609877, 36.051315, 36.844341>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.763231, 35.707802, 36.708397> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625608, 0.512174, -0.588466,
		0.679434, 0.012988, 0.733621,
		0.383385, -0.858783, -0.339863,
		27.878246, 35.450169, 36.606438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.242495, 36.160904, 37.048801>,  <27.609877, 36.051315, 36.844341>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.242495, 36.160904, 37.048801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224783, 35.916588, 36.732578>,  <28.214155, 35.770000, 36.542847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.224783, 35.916588, 36.732578>,  <28.242495, 36.160904, 37.048801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.224783, 35.916588, 36.732578> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719718, 0.529312, -0.449261,
		0.692853, -0.588871, 0.416156,
		-0.044280, -0.610787, -0.790556,
		28.211498, 35.733353, 36.495411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.923883, 35.885258, 36.928886>,  <28.242495, 36.160904, 37.048801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.923883, 35.885258, 36.928886> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705643, 35.903027, 36.594139>,  <28.574697, 35.913689, 36.393291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.705643, 35.903027, 36.594139>,  <28.923883, 35.885258, 36.928886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.705643, 35.903027, 36.594139> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763884, 0.437066, -0.474821,
		0.344674, -0.898332, -0.272397,
		-0.545602, 0.044421, -0.836866,
		28.541962, 35.916351, 36.343079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.483759, 35.953403, 36.419727>,  <28.923883, 35.885258, 36.928886>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.483759, 35.953403, 36.419727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159937, 36.007442, 36.191212>,  <28.965645, 36.039867, 36.054104>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.159937, 36.007442, 36.191212>,  <29.483759, 35.953403, 36.419727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.159937, 36.007442, 36.191212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502424, 0.662789, -0.555231,
		0.303635, -0.736519, -0.604439,
		-0.809553, 0.135097, -0.571290,
		28.917070, 36.047970, 36.019825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579874, 35.740520, 35.672421>,  <29.483759, 35.953403, 36.419727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579874, 35.740520, 35.672421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263819, 35.985409, 35.660629>,  <29.074186, 36.132343, 35.653553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.263819, 35.985409, 35.660629>,  <29.579874, 35.740520, 35.672421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.263819, 35.985409, 35.660629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463747, 0.565683, -0.681866,
		-0.400775, -0.552440, -0.730883,
		-0.790138, 0.612220, -0.029481,
		29.026777, 36.169075, 35.651787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.479626, 35.852226, 34.947681>,  <29.579874, 35.740520, 35.672421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.479626, 35.852226, 34.947681> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283812, 36.147556, 35.133255>,  <29.166323, 36.324753, 35.244598>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.283812, 36.147556, 35.133255>,  <29.479626, 35.852226, 34.947681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.283812, 36.147556, 35.133255> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398904, 0.662726, -0.633774,
		-0.775391, -0.125190, -0.618948,
		-0.489535, 0.738323, 0.463932,
		29.136951, 36.369053, 35.272434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.086895, 36.245403, 34.464600>,  <29.479626, 35.852226, 34.947681>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.086895, 36.245403, 34.464600> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139668, 36.509701, 34.760170>,  <29.171331, 36.668282, 34.937511>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.139668, 36.509701, 34.760170>,  <29.086895, 36.245403, 34.464600>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.139668, 36.509701, 34.760170> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195462, 0.713462, -0.672879,
		-0.971797, 0.233204, -0.035024,
		0.131930, 0.660748, 0.738923,
		29.179247, 36.707924, 34.981846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.659941, 36.772572, 34.260040>,  <29.086895, 36.245403, 34.464600>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.659941, 36.772572, 34.260040> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917126, 36.909367, 34.534161>,  <29.071438, 36.991444, 34.698635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.917126, 36.909367, 34.534161>,  <28.659941, 36.772572, 34.260040>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.917126, 36.909367, 34.534161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149904, 0.821276, -0.550486,
		-0.751083, 0.456673, 0.476785,
		0.642964, 0.341989, 0.685303,
		29.110016, 37.011963, 34.739750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.559057, 37.438629, 34.350559>,  <28.659941, 36.772572, 34.260040>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.559057, 37.438629, 34.350559> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934925, 37.413490, 34.485065>,  <29.160446, 37.398407, 34.565769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.934925, 37.413490, 34.485065>,  <28.559057, 37.438629, 34.350559>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.934925, 37.413490, 34.485065> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214647, 0.873705, -0.436540,
		-0.266360, 0.482381, 0.834483,
		0.939670, -0.062843, 0.336261,
		29.216825, 37.394638, 34.585945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.715256, 38.173164, 34.494640>,  <28.559057, 37.438629, 34.350559>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.715256, 38.173164, 34.494640> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072838, 37.994946, 34.475346>,  <29.287388, 37.888012, 34.463768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.072838, 37.994946, 34.475346>,  <28.715256, 38.173164, 34.494640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.072838, 37.994946, 34.475346> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353402, 0.767043, -0.535492,
		0.275589, 0.461660, 0.843161,
		0.893956, -0.445550, -0.048237,
		29.341024, 37.861279, 34.460873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.224554, 38.642166, 34.687988>,  <28.715256, 38.173164, 34.494640>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.224554, 38.642166, 34.687988> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433743, 38.352055, 34.508892>,  <29.559256, 38.177986, 34.401436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.433743, 38.352055, 34.508892>,  <29.224554, 38.642166, 34.687988>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.433743, 38.352055, 34.508892> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475914, 0.684260, -0.552534,
		0.707112, 0.075875, 0.703019,
		0.522971, -0.725280, -0.447738,
		29.590633, 38.134472, 34.374569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.879795, 38.800926, 34.768467>,  <29.224554, 38.642166, 34.687988>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.879795, 38.800926, 34.768467> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.862049, 38.590622, 34.428677>,  <29.851402, 38.464439, 34.224804>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.862049, 38.590622, 34.428677>,  <29.879795, 38.800926, 34.768467>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.862049, 38.590622, 34.428677> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313652, 0.799984, -0.511514,
		0.948501, -0.289132, 0.129416,
		-0.044364, -0.525764, -0.849473,
		29.848740, 38.432892, 34.173836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.582373, 38.767040, 34.499775>,  <29.879795, 38.800926, 34.768467>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.582373, 38.767040, 34.499775> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328379, 38.686005, 34.201580>,  <30.175982, 38.637383, 34.022663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.328379, 38.686005, 34.201580>,  <30.582373, 38.767040, 34.499775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.328379, 38.686005, 34.201580> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231415, 0.870804, -0.433759,
		0.737048, -0.447948, -0.506066,
		-0.634986, -0.202590, -0.745486,
		30.137882, 38.625229, 33.977936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.906860, 39.044933, 34.000137>,  <30.582373, 38.767040, 34.499775>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.906860, 39.044933, 34.000137> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.532806, 39.012215, 33.862247>,  <30.308374, 38.992584, 33.779514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.532806, 39.012215, 33.862247>,  <30.906860, 39.044933, 34.000137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.532806, 39.012215, 33.862247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144157, 0.800957, -0.581109,
		0.323639, -0.593108, -0.737211,
		-0.935134, -0.081796, -0.344721,
		30.252266, 38.987675, 33.758831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.998442, 39.273819, 33.449635>,  <30.906860, 39.044933, 34.000137>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.998442, 39.273819, 33.449635> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601765, 39.304188, 33.491161>,  <30.363758, 39.322411, 33.516079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.601765, 39.304188, 33.491161>,  <30.998442, 39.273819, 33.449635>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.601765, 39.304188, 33.491161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018030, 0.881288, -0.472235,
		-0.127349, -0.466440, -0.875337,
		-0.991694, 0.075921, 0.103822,
		30.304256, 39.326965, 33.522308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.696230, 39.437912, 32.795715>,  <30.998442, 39.273819, 33.449635>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.696230, 39.437912, 32.795715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430912, 39.558575, 33.069660>,  <30.271721, 39.630974, 33.234028>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.430912, 39.558575, 33.069660>,  <30.696230, 39.437912, 32.795715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.430912, 39.558575, 33.069660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060511, 0.890544, -0.450855,
		-0.745907, -0.340492, -0.572440,
		-0.663296, 0.301657, 0.684867,
		30.231924, 39.649071, 33.275120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.138599, 39.645405, 32.413734>,  <30.696230, 39.437912, 32.795715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.138599, 39.645405, 32.413734> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099134, 39.823898, 32.769520>,  <30.075455, 39.930996, 32.982990>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.099134, 39.823898, 32.769520>,  <30.138599, 39.645405, 32.413734>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.099134, 39.823898, 32.769520> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187387, 0.869501, -0.457006,
		-0.977319, -0.211763, -0.002169,
		-0.098663, 0.446234, 0.889461,
		30.069536, 39.957767, 33.036358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.714708, 40.119488, 32.193268>,  <30.138599, 39.645405, 32.413734>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.714708, 40.119488, 32.193268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834873, 40.250412, 32.551624>,  <29.906973, 40.328964, 32.766640>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.834873, 40.250412, 32.551624>,  <29.714708, 40.119488, 32.193268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.834873, 40.250412, 32.551624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215977, 0.938224, -0.270351,
		-0.929035, -0.112275, 0.352545,
		0.300413, 0.327307, 0.895892,
		29.924997, 40.348602, 32.820393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166170, 40.493591, 32.436325>,  <29.714708, 40.119488, 32.193268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166170, 40.493591, 32.436325> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475121, 40.610218, 32.662041>,  <29.660492, 40.680195, 32.797470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.475121, 40.610218, 32.662041>,  <29.166170, 40.493591, 32.436325>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.475121, 40.610218, 32.662041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308217, 0.948855, -0.068390,
		-0.555369, -0.121100, 0.822740,
		0.772378, 0.291564, 0.564289,
		29.706835, 40.697689, 32.831329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.987095, 41.026157, 32.912006>,  <29.166170, 40.493591, 32.436325>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.987095, 41.026157, 32.912006> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381680, 41.087749, 32.889446>,  <29.618431, 41.124702, 32.875912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.381680, 41.087749, 32.889446>,  <28.987095, 41.026157, 32.912006>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.381680, 41.087749, 32.889446> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146492, 0.982046, 0.118850,
		0.073683, -0.108980, 0.991310,
		0.986464, 0.153976, -0.056396,
		29.677618, 41.133942, 32.872528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.214973, 41.507011, 33.446011>,  <28.987095, 41.026157, 32.912006>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.214973, 41.507011, 33.446011> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495085, 41.537327, 33.162079>,  <29.663153, 41.555515, 32.991718>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.495085, 41.537327, 33.162079>,  <29.214973, 41.507011, 33.446011>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.495085, 41.537327, 33.162079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132736, 0.990832, -0.025161,
		0.701419, 0.111840, 0.703920,
		0.700281, 0.075787, -0.709833,
		29.705170, 41.560062, 32.949127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.085854, 38.554852, 45.753963> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918900, 38.232533, 45.922001>,  <39.818726, 38.039139, 46.022823>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.918900, 38.232533, 45.922001>,  <40.085854, 38.554852, 45.753963>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.918900, 38.232533, 45.922001> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026861, 0.451142, 0.892048,
		-0.908332, 0.383612, -0.166656,
		-0.417386, -0.805799, 0.420091,
		39.793682, 37.990791, 46.048027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491722, 38.806519, 46.214672>,  <40.085854, 38.554852, 45.753963>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491722, 38.806519, 46.214672> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.588776, 38.440311, 46.343014>,  <39.647007, 38.220585, 46.420021>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.588776, 38.440311, 46.343014>,  <39.491722, 38.806519, 46.214672>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.588776, 38.440311, 46.343014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017931, 0.334917, 0.942077,
		-0.969953, -0.222825, 0.097677,
		0.242632, -0.915521, 0.320858,
		39.661564, 38.165653, 46.439270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077160, 38.595577, 46.828735>,  <39.491722, 38.806519, 46.214672>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077160, 38.595577, 46.828735> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358421, 38.314804, 46.874111>,  <39.527180, 38.146339, 46.901337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.358421, 38.314804, 46.874111>,  <39.077160, 38.595577, 46.828735>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.358421, 38.314804, 46.874111> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073118, 0.230076, 0.970422,
		-0.707270, -0.674060, 0.213102,
		0.703152, -0.701932, 0.113440,
		39.569366, 38.104225, 46.908142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.861752, 38.316273, 47.546726>,  <39.077160, 38.595577, 46.828735>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.861752, 38.316273, 47.546726> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243759, 38.221745, 47.475075>,  <39.472965, 38.165028, 47.432083>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.243759, 38.221745, 47.475075>,  <38.861752, 38.316273, 47.546726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.243759, 38.221745, 47.475075> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138463, -0.178802, 0.974093,
		-0.262232, -0.955081, -0.138038,
		0.955020, -0.236325, -0.179131,
		39.530266, 38.150848, 47.421337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995033, 37.622318, 48.027771>,  <38.861752, 38.316273, 47.546726>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995033, 37.622318, 48.027771> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.335606, 37.815491, 47.945950>,  <39.539948, 37.931396, 47.896858>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.335606, 37.815491, 47.945950>,  <38.995033, 37.622318, 48.027771>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.335606, 37.815491, 47.945950> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285207, -0.099038, 0.953336,
		0.440140, -0.870038, -0.222060,
		0.851430, 0.482934, -0.204550,
		39.591034, 37.960373, 47.884586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402824, 37.312210, 48.462284>,  <38.995033, 37.622318, 48.027771>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.402824, 37.312210, 48.462284> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.620750, 37.619598, 48.328041>,  <39.751507, 37.804031, 48.247498>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.620750, 37.619598, 48.328041>,  <39.402824, 37.312210, 48.462284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620750, 37.619598, 48.328041> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426428, 0.090708, 0.899962,
		0.722035, -0.633425, -0.278278,
		0.544816, 0.768469, -0.335604,
		39.784195, 37.850140, 48.227360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985050, 37.150017, 48.747574>,  <39.402824, 37.312210, 48.462284>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985050, 37.150017, 48.747574> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.014240, 37.538376, 48.656334>,  <40.031754, 37.771393, 48.601589>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.014240, 37.538376, 48.656334>,  <39.985050, 37.150017, 48.747574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.014240, 37.538376, 48.656334> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416769, 0.178093, 0.891396,
		0.906078, -0.160115, -0.391644,
		0.072977, 0.970900, -0.228097,
		40.036133, 37.829647, 48.587906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.610985, 37.266693, 48.990322>,  <39.985050, 37.150017, 48.747574>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.610985, 37.266693, 48.990322> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377548, 37.591316, 49.001556>,  <40.237484, 37.786091, 49.008297>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.377548, 37.591316, 49.001556>,  <40.610985, 37.266693, 48.990322>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377548, 37.591316, 49.001556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303286, 0.185753, 0.934619,
		0.753283, 0.553956, -0.354539,
		-0.583594, 0.811560, 0.028082,
		40.202469, 37.834785, 49.009979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.087013, 37.805153, 49.183163>,  <40.610985, 37.266693, 48.990322>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.087013, 37.805153, 49.183163> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710972, 37.920033, 49.256607>,  <40.485348, 37.988960, 49.300674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.710972, 37.920033, 49.256607>,  <41.087013, 37.805153, 49.183163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710972, 37.920033, 49.256607> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249402, 0.212329, 0.944836,
		0.232369, 0.934042, -0.271240,
		-0.940108, 0.287198, 0.183613,
		40.428940, 38.006191, 49.311691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.169907, 38.384407, 49.579449>,  <41.087013, 37.805153, 49.183163>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.169907, 38.384407, 49.579449> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.782101, 38.299500, 49.628410>,  <40.549416, 38.248554, 49.657787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.782101, 38.299500, 49.628410>,  <41.169907, 38.384407, 49.579449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782101, 38.299500, 49.628410> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041428, 0.350373, 0.935694,
		-0.241503, 0.912241, -0.330898,
		-0.969515, -0.212264, 0.122408,
		40.491245, 38.235821, 49.665134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.908447, 38.923553, 50.064819>,  <41.169907, 38.384407, 49.579449>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.908447, 38.923553, 50.064819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.617237, 38.649845, 50.081558>,  <40.442513, 38.485619, 50.091602>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.617237, 38.649845, 50.081558>,  <40.908447, 38.923553, 50.064819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617237, 38.649845, 50.081558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131942, 0.199756, 0.970921,
		-0.672732, 0.701336, -0.235712,
		-0.728027, -0.684270, 0.041847,
		40.398830, 38.444565, 50.094112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.271809, 39.209660, 50.263927>,  <40.908447, 38.923553, 50.064819>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.271809, 39.209660, 50.263927> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.280128, 38.825214, 50.374081>,  <40.285122, 38.594547, 50.440174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.280128, 38.825214, 50.374081>,  <40.271809, 39.209660, 50.263927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.280128, 38.825214, 50.374081> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245614, 0.262092, 0.933264,
		-0.969144, -0.087054, -0.230609,
		0.020804, -0.961109, 0.275387,
		40.286369, 38.536880, 50.456696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661713, 39.078392, 50.773266>,  <40.271809, 39.209660, 50.263927>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661713, 39.078392, 50.773266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.958908, 38.820557, 50.845337>,  <40.137226, 38.665855, 50.888580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.958908, 38.820557, 50.845337>,  <39.661713, 39.078392, 50.773266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958908, 38.820557, 50.845337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016436, 0.251543, 0.967707,
		-0.669097, -0.721961, 0.176300,
		0.742993, -0.644592, 0.180173,
		40.181805, 38.627178, 50.899387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.432323, 39.623207, 51.108059>,  <39.661713, 39.078392, 50.773266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.432323, 39.623207, 51.108059> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089684, 39.427994, 51.175053>,  <38.884098, 39.310867, 51.215248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.089684, 39.427994, 51.175053>,  <39.432323, 39.623207, 51.108059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.089684, 39.427994, 51.175053> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363846, 0.341175, -0.866727,
		0.365849, -0.803382, -0.469821,
		-0.856604, -0.488034, 0.167488,
		38.832703, 39.281582, 51.225300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.102585, 39.471542, 50.404194>,  <39.432323, 39.623207, 51.108059>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.102585, 39.471542, 50.404194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.796741, 39.368679, 50.640583>,  <38.613235, 39.306961, 50.782417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.796741, 39.368679, 50.640583>,  <39.102585, 39.471542, 50.404194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796741, 39.368679, 50.640583> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630828, 0.110744, -0.767979,
		0.132055, -0.960000, -0.246906,
		-0.764603, -0.257171, 0.590970,
		38.567360, 39.291531, 50.817875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.831238, 38.842400, 50.224522>,  <39.102585, 39.471542, 50.404194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.831238, 38.842400, 50.224522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535915, 39.020515, 50.427155>,  <38.358723, 39.127384, 50.548733>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.535915, 39.020515, 50.427155>,  <38.831238, 38.842400, 50.224522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.535915, 39.020515, 50.427155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590825, -0.064718, -0.804200,
		-0.325320, -0.893043, 0.310871,
		-0.738304, 0.445293, 0.506578,
		38.314423, 39.154102, 50.579128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314312, 38.408730, 50.074745>,  <38.831238, 38.842400, 50.224522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314312, 38.408730, 50.074745> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192139, 38.779629, 50.161385>,  <38.118835, 39.002171, 50.213367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.192139, 38.779629, 50.161385>,  <38.314312, 38.408730, 50.074745>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192139, 38.779629, 50.161385> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630162, -0.026308, -0.776017,
		-0.713866, -0.373513, 0.592355,
		-0.305436, 0.927252, 0.216594,
		38.100510, 39.057804, 50.226364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.591167, 38.401634, 50.102577>,  <38.314312, 38.408730, 50.074745>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.591167, 38.401634, 50.102577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.724083, 38.773582, 50.039429>,  <37.803833, 38.996750, 50.001541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.724083, 38.773582, 50.039429>,  <37.591167, 38.401634, 50.102577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724083, 38.773582, 50.039429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564569, 0.062015, -0.823053,
		-0.755543, 0.362621, 0.545583,
		0.332290, 0.929871, -0.157869,
		37.823769, 39.052544, 49.992069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.933002, 38.787304, 50.049431>,  <37.591167, 38.401634, 50.102577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.933002, 38.787304, 50.049431> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245838, 38.972324, 49.882393>,  <37.433540, 39.083336, 49.782169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.245838, 38.972324, 49.882393>,  <36.933002, 38.787304, 50.049431>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.245838, 38.972324, 49.882393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.480548, 0.021020, -0.876716,
		-0.396749, 0.886343, 0.238718,
		0.782089, 0.462552, -0.417591,
		37.480465, 39.111092, 49.757114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616177, 39.198799, 49.543472>,  <36.933002, 38.787304, 50.049431>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616177, 39.198799, 49.543472> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996101, 39.188839, 49.418739>,  <37.224056, 39.182861, 49.343899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.996101, 39.188839, 49.418739>,  <36.616177, 39.198799, 49.543472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.996101, 39.188839, 49.418739> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309546, 0.069222, -0.948362,
		0.045202, 0.997290, 0.058040,
		0.949810, -0.024902, -0.311836,
		37.281044, 39.181370, 49.325188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.696877, 39.798611, 49.098007>,  <36.616177, 39.198799, 49.543472>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.696877, 39.798611, 49.098007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988255, 39.537563, 49.014618>,  <37.163082, 39.380936, 48.964584>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.988255, 39.537563, 49.014618>,  <36.696877, 39.798611, 49.098007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.988255, 39.537563, 49.014618> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228068, 0.055939, -0.972037,
		0.646030, 0.755620, -0.108093,
		0.728444, -0.652617, -0.208471,
		37.206787, 39.341778, 48.952076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.819962, 39.867832, 48.355679>,  <36.696877, 39.798611, 49.098007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.819962, 39.867832, 48.355679> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094273, 39.579594, 48.396572>,  <37.258858, 39.406651, 48.421108>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.094273, 39.579594, 48.396572>,  <36.819962, 39.867832, 48.355679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094273, 39.579594, 48.396572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051647, -0.188301, -0.980752,
		0.725979, 0.667295, -0.166349,
		0.685775, -0.720597, 0.102239,
		37.300007, 39.363415, 48.427242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.411560, 39.953892, 47.946426>,  <36.819962, 39.867832, 48.355679>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.411560, 39.953892, 47.946426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394001, 39.562038, 48.024811>,  <37.383465, 39.326927, 48.071842>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.394001, 39.562038, 48.024811>,  <37.411560, 39.953892, 47.946426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.394001, 39.562038, 48.024811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.041399, -0.197764, -0.979375,
		0.998178, -0.034883, 0.049237,
		-0.043900, -0.979629, 0.195960,
		37.380833, 39.268150, 48.083599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.852348, 39.651707, 47.475788>,  <37.411560, 39.953892, 47.946426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.852348, 39.651707, 47.475788> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.609695, 39.352074, 47.582275>,  <37.464104, 39.172295, 47.646168>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.609695, 39.352074, 47.582275>,  <37.852348, 39.651707, 47.475788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.609695, 39.352074, 47.582275> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058643, -0.291799, -0.954680,
		0.792815, -0.594754, 0.133088,
		-0.606635, -0.749080, 0.266221,
		37.427704, 39.127350, 47.662140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.114311, 39.094776, 47.081867>,  <37.852348, 39.651707, 47.475788>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.114311, 39.094776, 47.081867> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743038, 38.995121, 47.192429>,  <37.520275, 38.935329, 47.258766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.743038, 38.995121, 47.192429>,  <38.114311, 39.094776, 47.081867>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.743038, 38.995121, 47.192429> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163295, -0.394756, -0.904159,
		0.334374, -0.884363, 0.325724,
		-0.928186, -0.249138, 0.276408,
		37.464581, 38.920380, 47.275352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032784, 38.458080, 46.705933>,  <38.114311, 39.094776, 47.081867>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032784, 38.458080, 46.705933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658913, 38.543724, 46.819450>,  <37.434589, 38.595108, 46.887562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.658913, 38.543724, 46.819450>,  <38.032784, 38.458080, 46.705933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.658913, 38.543724, 46.819450> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343530, -0.338543, -0.876000,
		-0.091478, -0.916269, 0.389979,
		-0.934676, 0.214105, 0.283796,
		37.378510, 38.607956, 46.904591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.660915, 37.859886, 46.646896>,  <38.032784, 38.458080, 46.705933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.660915, 37.859886, 46.646896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402851, 38.164536, 46.622570>,  <37.248013, 38.347324, 46.607975>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.402851, 38.164536, 46.622570>,  <37.660915, 37.859886, 46.646896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.402851, 38.164536, 46.622570> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248243, -0.284229, -0.926061,
		-0.722591, -0.582365, 0.372442,
		-0.645164, 0.761620, -0.060813,
		37.209301, 38.393021, 46.604324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128189, 37.560574, 46.280209>,  <37.660915, 37.859886, 46.646896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128189, 37.560574, 46.280209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068069, 37.953079, 46.232002>,  <37.031998, 38.188583, 46.203079>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.068069, 37.953079, 46.232002>,  <37.128189, 37.560574, 46.280209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068069, 37.953079, 46.232002> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115288, -0.138463, -0.983634,
		-0.981896, -0.133944, 0.133939,
		-0.150298, 0.981268, -0.120514,
		37.022980, 38.247459, 46.195847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.409245, 37.321365, 46.377213>,  <37.128189, 37.560574, 46.280209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.409245, 37.321365, 46.377213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155235, 37.013073, 46.398048>,  <36.002831, 36.828098, 46.410549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.155235, 37.013073, 46.398048>,  <36.409245, 37.321365, 46.377213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.155235, 37.013073, 46.398048> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184929, -0.086200, 0.978964,
		-0.750030, 0.631300, 0.197270,
		-0.635024, -0.770733, 0.052093,
		35.964729, 36.781853, 46.413677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.061111, 37.361515, 46.984680>,  <36.409245, 37.321365, 46.377213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.061111, 37.361515, 46.984680> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016521, 36.974865, 46.892418>,  <35.989765, 36.742874, 46.837059>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.016521, 36.974865, 46.892418>,  <36.061111, 37.361515, 46.984680>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.016521, 36.974865, 46.892418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181754, -0.248019, 0.951552,
		-0.977005, 0.064156, 0.203338,
		-0.111479, -0.966628, -0.230656,
		35.983078, 36.684875, 46.823223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555302, 37.049454, 47.381485>,  <36.061111, 37.361515, 46.984680>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555302, 37.049454, 47.381485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795219, 36.746670, 47.277748>,  <35.939171, 36.564999, 47.215508>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.795219, 36.746670, 47.277748>,  <35.555302, 37.049454, 47.381485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.795219, 36.746670, 47.277748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025050, -0.306188, 0.951642,
		-0.799760, -0.577288, -0.164689,
		0.599797, -0.756960, -0.259338,
		35.975159, 36.519581, 47.199947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.277916, 36.413948, 47.653214>,  <35.555302, 37.049454, 47.381485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.277916, 36.413948, 47.653214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672874, 36.365616, 47.612339>,  <35.909851, 36.336617, 47.587814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.672874, 36.365616, 47.612339>,  <35.277916, 36.413948, 47.653214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.672874, 36.365616, 47.612339> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052993, -0.355994, 0.932985,
		-0.149114, -0.926643, -0.345105,
		0.987399, -0.120833, -0.102189,
		35.969093, 36.329365, 47.581684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.439426, 35.781048, 47.994308>,  <35.277916, 36.413948, 47.653214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.439426, 35.781048, 47.994308> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802826, 35.945465, 47.964191>,  <36.020866, 36.044117, 47.946121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.802826, 35.945465, 47.964191>,  <35.439426, 35.781048, 47.994308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.802826, 35.945465, 47.964191> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.248265, -0.385973, 0.888476,
		0.336144, -0.825873, -0.452705,
		0.908500, 0.411046, -0.075293,
		36.075375, 36.068779, 47.941605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.872143, 35.410469, 48.532768>,  <35.439426, 35.781048, 47.994308>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.872143, 35.410469, 48.532768> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110748, 35.724674, 48.466862>,  <36.253910, 35.913197, 48.427319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.110748, 35.724674, 48.466862>,  <35.872143, 35.410469, 48.532768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.110748, 35.724674, 48.466862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407416, -0.119474, 0.905394,
		0.691511, -0.607206, -0.391297,
		0.596510, 0.785511, -0.164767,
		36.289700, 35.960327, 48.417431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.444832, 35.207664, 48.875217>,  <35.872143, 35.410469, 48.532768>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.444832, 35.207664, 48.875217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498043, 35.602333, 48.837746>,  <36.529972, 35.839134, 48.815262>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.498043, 35.602333, 48.837746>,  <36.444832, 35.207664, 48.875217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.498043, 35.602333, 48.837746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583453, -0.001556, 0.812145,
		0.801178, -0.162697, -0.575885,
		0.133030, 0.986675, -0.093680,
		36.537952, 35.898335, 48.809643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.891636, 34.480572, 48.703438>,  <36.444832, 35.207664, 48.875217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.891636, 34.480572, 48.703438> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605385, 34.244267, 48.852505>,  <36.433636, 34.102482, 48.941944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.605385, 34.244267, 48.852505>,  <36.891636, 34.480572, 48.703438>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.605385, 34.244267, 48.852505> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522448, 0.098603, -0.846951,
		0.463601, -0.800798, -0.379205,
		-0.715627, -0.590763, 0.372663,
		36.390697, 34.067039, 48.964302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.781700, 34.013889, 48.201252>,  <36.891636, 34.480572, 48.703438>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.781700, 34.013889, 48.201252> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.456886, 33.965725, 48.429672>,  <36.261997, 33.936829, 48.566727>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.456886, 33.965725, 48.429672>,  <36.781700, 34.013889, 48.201252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456886, 33.965725, 48.429672> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524200, -0.279646, -0.804371,
		0.256546, -0.952523, 0.163964,
		-0.812033, -0.120408, 0.571055,
		36.213276, 33.929604, 48.600990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578415, 33.270206, 48.231899>,  <36.781700, 34.013889, 48.201252>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578415, 33.270206, 48.231899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263515, 33.510368, 48.288116>,  <36.074574, 33.654465, 48.321846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.263515, 33.510368, 48.288116>,  <36.578415, 33.270206, 48.231899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.263515, 33.510368, 48.288116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444152, -0.394024, -0.804658,
		-0.427746, -0.695887, 0.576867,
		-0.787250, 0.600405, 0.140537,
		36.027340, 33.690491, 48.330276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919563, 32.847588, 48.006557>,  <36.578415, 33.270206, 48.231899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919563, 32.847588, 48.006557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811497, 33.232346, 48.023342>,  <35.746655, 33.463200, 48.033413>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.811497, 33.232346, 48.023342>,  <35.919563, 32.847588, 48.006557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.811497, 33.232346, 48.023342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601060, -0.134451, -0.787813,
		-0.752153, -0.238067, 0.614483,
		-0.270170, 0.961898, 0.041964,
		35.730446, 33.520916, 48.035931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.128746, 32.880997, 47.816891>,  <35.919563, 32.847588, 48.006557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.128746, 32.880997, 47.816891> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258163, 33.257664, 47.779858>,  <35.335815, 33.483665, 47.757637>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.258163, 33.257664, 47.779858>,  <35.128746, 32.880997, 47.816891>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258163, 33.257664, 47.779858> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599463, 0.128295, -0.790053,
		-0.732093, 0.311118, 0.606007,
		0.323547, 0.941672, -0.092580,
		35.355228, 33.540165, 47.752083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.535816, 33.320557, 47.731991>,  <35.128746, 32.880997, 47.816891>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.535816, 33.320557, 47.731991> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846828, 33.510944, 47.567604>,  <35.033436, 33.625179, 47.468971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.846828, 33.510944, 47.567604>,  <34.535816, 33.320557, 47.731991>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.846828, 33.510944, 47.567604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528584, 0.140658, -0.837146,
		-0.340653, 0.868139, 0.360958,
		0.777530, 0.475973, -0.410969,
		35.080086, 33.653736, 47.444313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336475, 34.009708, 47.510387>,  <34.535816, 33.320557, 47.731991>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336475, 34.009708, 47.510387> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641506, 33.889481, 47.281254>,  <34.824524, 33.817345, 47.143776>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.641506, 33.889481, 47.281254>,  <34.336475, 34.009708, 47.510387>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641506, 33.889481, 47.281254> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542310, 0.185720, -0.819395,
		0.352672, 0.935503, -0.021377,
		0.762576, -0.300570, -0.572830,
		34.870277, 33.799309, 47.109406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<40.559788, 35.073673, 50.851048> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.533470, 35.453506, 50.728428>,  <40.517677, 35.681404, 50.654858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.533470, 35.453506, 50.728428>,  <40.559788, 35.073673, 50.851048>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.533470, 35.453506, 50.728428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097281, -0.311854, -0.945136,
		-0.993080, -0.032365, 0.112895,
		-0.065796, 0.949578, -0.306548,
		40.513733, 35.738380, 50.636463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.971256, 35.109150, 50.403679>,  <40.559788, 35.073673, 50.851048>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.971256, 35.109150, 50.403679> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.216259, 35.410156, 50.306885>,  <40.363262, 35.590759, 50.248810>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.216259, 35.410156, 50.306885>,  <39.971256, 35.109150, 50.403679>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.216259, 35.410156, 50.306885> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024542, -0.287878, -0.957353,
		-0.790083, 0.592325, -0.157859,
		0.612508, 0.752514, -0.241984,
		40.400013, 35.635910, 50.234291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.665585, 35.519287, 49.768360>,  <39.971256, 35.109150, 50.403679>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.665585, 35.519287, 49.768360> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.052597, 35.618778, 49.786316>,  <40.284805, 35.678474, 49.797089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.052597, 35.618778, 49.786316>,  <39.665585, 35.519287, 49.768360>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.052597, 35.618778, 49.786316> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113016, -0.266889, -0.957078,
		-0.226075, 0.931076, -0.286334,
		0.967532, 0.248731, 0.044890,
		40.342857, 35.693398, 49.799782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.882435, 36.028393, 49.152542>,  <39.665585, 35.519287, 49.768360>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.882435, 36.028393, 49.152542> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.240688, 35.890137, 49.264526>,  <40.455639, 35.807182, 49.331718>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.240688, 35.890137, 49.264526>,  <39.882435, 36.028393, 49.152542>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.240688, 35.890137, 49.264526> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247795, -0.134968, -0.959365,
		0.369381, 0.928610, -0.035233,
		0.895631, -0.345640, 0.279959,
		40.509377, 35.786446, 49.348515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460915, 36.422295, 48.803551>,  <39.882435, 36.028393, 49.152542>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460915, 36.422295, 48.803551> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.608021, 36.066315, 48.911434>,  <40.696285, 35.852726, 48.976166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.608021, 36.066315, 48.911434>,  <40.460915, 36.422295, 48.803551>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.608021, 36.066315, 48.911434> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302606, -0.159721, -0.939638,
		0.879305, 0.427184, 0.210562,
		0.367767, -0.889946, 0.269712,
		40.718349, 35.799332, 48.992348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.049995, 36.387310, 48.446667>,  <40.460915, 36.422295, 48.803551>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.049995, 36.387310, 48.446667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.929813, 36.012615, 48.518501>,  <40.857704, 35.787800, 48.561600>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.929813, 36.012615, 48.518501>,  <41.049995, 36.387310, 48.446667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.929813, 36.012615, 48.518501> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231349, -0.254234, -0.939065,
		0.925312, -0.240605, 0.293100,
		-0.300459, -0.936736, 0.179582,
		40.839676, 35.731594, 48.572376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464466, 35.966698, 47.852642>,  <41.049995, 36.387310, 48.446667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464466, 35.966698, 47.852642> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.243782, 35.669373, 48.003960>,  <41.111374, 35.490978, 48.094749>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.243782, 35.669373, 48.003960>,  <41.464466, 35.966698, 47.852642>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243782, 35.669373, 48.003960> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181811, -0.549849, -0.815237,
		0.813980, -0.380994, 0.438498,
		-0.551708, -0.743310, 0.378297,
		41.078270, 35.446381, 48.117451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.864342, 35.426628, 47.783306>,  <41.464466, 35.966698, 47.852642>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.864342, 35.426628, 47.783306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.493793, 35.278374, 47.810028>,  <41.271465, 35.189419, 47.826061>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.493793, 35.278374, 47.810028>,  <41.864342, 35.426628, 47.783306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.493793, 35.278374, 47.810028> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173692, -0.577854, -0.797443,
		0.334168, -0.727125, 0.599685,
		-0.926371, -0.370640, 0.066805,
		41.215881, 35.167183, 47.830070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881699, 34.685429, 47.625549>,  <41.864342, 35.426628, 47.783306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881699, 34.685429, 47.625549> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.497066, 34.774090, 47.560772>,  <41.266285, 34.827286, 47.521908>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.497066, 34.774090, 47.560772>,  <41.881699, 34.685429, 47.625549>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.497066, 34.774090, 47.560772> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016616, -0.541845, -0.840314,
		-0.274008, -0.810723, 0.517346,
		-0.961584, 0.221657, -0.161941,
		41.208591, 34.840588, 47.512188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.584244, 34.014343, 47.437210>,  <41.881699, 34.685429, 47.625549>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.584244, 34.014343, 47.437210> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.342762, 34.294697, 47.285263>,  <41.197872, 34.462910, 47.194096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.342762, 34.294697, 47.285263>,  <41.584244, 34.014343, 47.437210>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.342762, 34.294697, 47.285263> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114924, -0.548034, -0.828523,
		-0.788885, -0.456523, 0.411397,
		-0.603699, 0.700889, -0.379871,
		41.161652, 34.504963, 47.171303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.036678, 33.591167, 47.115402>,  <41.584244, 34.014343, 47.437210>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.036678, 33.591167, 47.115402> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.021179, 33.960533, 46.962666>,  <41.011879, 34.182152, 46.871025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<41.021179, 33.960533, 46.962666>,  <41.036678, 33.591167, 47.115402>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<41.021179, 33.960533, 46.962666> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173384, -0.382545, -0.907522,
		-0.984092, 0.031044, 0.174926,
		-0.038744, 0.923415, -0.381843,
		41.009556, 34.237556, 46.848114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.394169, 33.526028, 46.678295>,  <41.036678, 33.591167, 47.115402>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.394169, 33.526028, 46.678295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.617008, 33.833107, 46.551620>,  <40.750710, 34.017353, 46.475616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.617008, 33.833107, 46.551620>,  <40.394169, 33.526028, 46.678295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.617008, 33.833107, 46.551620> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197230, -0.248124, -0.948438,
		-0.806688, 0.590830, 0.013184,
		0.557095, 0.767694, -0.316688,
		40.784138, 34.063416, 46.456615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.722942, 33.462452, 46.508038>,  <40.394169, 33.526028, 46.678295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.722942, 33.462452, 46.508038> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.620930, 33.079315, 46.455120>,  <39.559723, 32.849434, 46.423370>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.620930, 33.079315, 46.455120>,  <39.722942, 33.462452, 46.508038>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.620930, 33.079315, 46.455120> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061902, -0.152713, 0.986330,
		-0.964950, 0.243352, 0.098239,
		-0.255028, -0.957840, -0.132297,
		39.544422, 32.791962, 46.415432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250877, 33.338085, 47.013805>,  <39.722942, 33.462452, 46.508038>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250877, 33.338085, 47.013805> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.386974, 32.979351, 46.900723>,  <39.468632, 32.764111, 46.832870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.386974, 32.979351, 46.900723>,  <39.250877, 33.338085, 47.013805>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.386974, 32.979351, 46.900723> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039100, -0.286897, 0.957163,
		-0.939524, -0.336723, -0.062549,
		0.340245, -0.896832, -0.282712,
		39.489048, 32.710300, 46.815910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.825138, 32.781677, 47.403652>,  <39.250877, 33.338085, 47.013805>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.825138, 32.781677, 47.403652> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.176365, 32.620476, 47.300438>,  <39.387100, 32.523754, 47.238510>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.176365, 32.620476, 47.300438>,  <38.825138, 32.781677, 47.403652>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.176365, 32.620476, 47.300438> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088614, -0.392959, 0.915276,
		-0.470255, -0.826543, -0.309334,
		0.878071, -0.403002, -0.258034,
		39.439785, 32.499577, 47.223026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.844383, 32.106140, 47.552727>,  <38.825138, 32.781677, 47.403652>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.844383, 32.106140, 47.552727> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231869, 32.198967, 47.517540>,  <39.464359, 32.254665, 47.496429>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.231869, 32.198967, 47.517540>,  <38.844383, 32.106140, 47.552727>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.231869, 32.198967, 47.517540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154170, -0.284939, 0.946066,
		0.194488, -0.930029, -0.311803,
		0.968714, 0.232069, -0.087966,
		39.522484, 32.268589, 47.491150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.213436, 31.540424, 47.923359>,  <38.844383, 32.106140, 47.552727>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.213436, 31.540424, 47.923359> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.485889, 31.832197, 47.898109>,  <39.649361, 32.007263, 47.882961>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.485889, 31.832197, 47.898109>,  <39.213436, 31.540424, 47.923359>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.485889, 31.832197, 47.898109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308884, -0.208121, 0.928050,
		0.663814, -0.651622, -0.367068,
		0.681133, 0.729434, -0.063122,
		39.690228, 32.051029, 47.879173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771072, 31.328558, 48.225437>,  <39.213436, 31.540424, 47.923359>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771072, 31.328558, 48.225437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.873482, 31.715071, 48.236378>,  <39.934925, 31.946980, 48.242943>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.873482, 31.715071, 48.236378>,  <39.771072, 31.328558, 48.225437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.873482, 31.715071, 48.236378> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180729, -0.075646, 0.980620,
		0.949626, -0.246116, -0.194002,
		0.256021, 0.966284, 0.027355,
		39.950287, 32.004955, 48.244583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.405510, 31.401049, 48.684681>,  <39.771072, 31.328558, 48.225437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.405510, 31.401049, 48.684681> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.250271, 31.769524, 48.673409>,  <40.157127, 31.990608, 48.666645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.250271, 31.769524, 48.673409>,  <40.405510, 31.401049, 48.684681>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.250271, 31.769524, 48.673409> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127661, 0.084011, 0.988253,
		0.912735, 0.379939, -0.150204,
		-0.388095, 0.921188, -0.028177,
		40.133842, 32.045879, 48.664955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.786278, 31.744429, 49.176369>,  <40.405510, 31.401049, 48.684681>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.786278, 31.744429, 49.176369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.453060, 31.958719, 49.121185>,  <40.253128, 32.087296, 49.088078>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.453060, 31.958719, 49.121185>,  <40.786278, 31.744429, 49.176369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453060, 31.958719, 49.121185> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104872, 0.091918, 0.990229,
		0.543173, 0.839373, -0.020389,
		-0.833045, 0.535727, -0.137955,
		40.203148, 32.119438, 49.079800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.792381, 32.255341, 49.678272>,  <40.786278, 31.744429, 49.176369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.792381, 32.255341, 49.678272> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.405590, 32.257050, 49.576340>,  <40.173515, 32.258076, 49.515179>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.405590, 32.257050, 49.576340>,  <40.792381, 32.255341, 49.678272>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405590, 32.257050, 49.576340> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249494, 0.188372, 0.949878,
		0.052060, 0.982088, -0.181086,
		-0.966976, 0.004271, -0.254832,
		40.115498, 32.258331, 49.499889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.475452, 32.658497, 50.100117>,  <40.792381, 32.255341, 49.678272>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.475452, 32.658497, 50.100117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.147873, 32.482533, 49.952717>,  <39.951324, 32.376953, 49.864277>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<40.147873, 32.482533, 49.952717>,  <40.475452, 32.658497, 50.100117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<40.147873, 32.482533, 49.952717> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473204, 0.154410, 0.867315,
		-0.324645, 0.884665, -0.334624,
		-0.818953, -0.439915, -0.368498,
		39.902187, 32.350559, 49.842167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.830853, 33.208313, 50.144329>,  <40.475452, 32.658497, 50.100117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.830853, 33.208313, 50.144329> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.711533, 32.826527, 50.142750>,  <39.639942, 32.597454, 50.141804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.711533, 32.826527, 50.142750>,  <39.830853, 33.208313, 50.144329>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711533, 32.826527, 50.142750> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527245, 0.161331, 0.834257,
		-0.795632, 0.250939, -0.551362,
		-0.298299, -0.954464, -0.003946,
		39.622044, 32.540188, 50.141567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.044617, 33.188129, 50.331146>,  <39.830853, 33.208313, 50.144329>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.044617, 33.188129, 50.331146> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.179031, 32.817482, 50.398636>,  <39.259678, 32.595093, 50.439129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.179031, 32.817482, 50.398636>,  <39.044617, 33.188129, 50.331146>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.179031, 32.817482, 50.398636> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453254, -0.002058, 0.891379,
		-0.825617, -0.376009, -0.420683,
		0.336032, -0.926614, 0.168728,
		39.279842, 32.539497, 50.449253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.508354, 32.804024, 50.528614>,  <39.044617, 33.188129, 50.331146>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.508354, 32.804024, 50.528614> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.799995, 32.575592, 50.679489>,  <38.974979, 32.438534, 50.770012>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.799995, 32.575592, 50.679489>,  <38.508354, 32.804024, 50.528614>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.799995, 32.575592, 50.679489> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551478, -0.163849, 0.817940,
		-0.405309, -0.804375, -0.434402,
		0.729107, -0.571081, 0.377185,
		39.018726, 32.404266, 50.792645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.211479, 32.206841, 50.966042>,  <38.508354, 32.804024, 50.528614>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.211479, 32.206841, 50.966042> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.583832, 32.220013, 51.111572>,  <38.807243, 32.227917, 51.198891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.583832, 32.220013, 51.111572>,  <38.211479, 32.206841, 50.966042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.583832, 32.220013, 51.111572> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360148, -0.084171, 0.929090,
		0.061221, -0.995907, -0.066493,
		0.930884, 0.032932, 0.363827,
		38.863098, 32.229893, 51.220722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540401, 32.136356, 51.289211>,  <38.211479, 32.206841, 50.966042>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540401, 32.136356, 51.289211> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.500420, 32.519386, 51.397331>,  <37.476429, 32.749203, 51.462204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.500420, 32.519386, 51.397331>,  <37.540401, 32.136356, 51.289211>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.500420, 32.519386, 51.397331> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515382, 0.182547, -0.837292,
		-0.851111, -0.222999, 0.475270,
		-0.099956, 0.957574, 0.270297,
		37.470432, 32.806660, 51.478420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.828987, 32.310234, 51.085598>,  <37.540401, 32.136356, 51.289211>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.828987, 32.310234, 51.085598> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.016678, 32.662498, 51.111721>,  <37.129292, 32.873856, 51.127396>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.016678, 32.662498, 51.111721>,  <36.828987, 32.310234, 51.085598>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.016678, 32.662498, 51.111721> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418974, 0.287116, -0.861409,
		-0.777361, 0.376831, 0.503696,
		0.469224, 0.880661, 0.065310,
		37.157444, 32.926697, 51.131313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.299141, 32.717026, 50.875202>,  <36.828987, 32.310234, 51.085598>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.299141, 32.717026, 50.875202> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614540, 32.962734, 50.862881>,  <36.803780, 33.110157, 50.855488>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.614540, 32.962734, 50.862881>,  <36.299141, 32.717026, 50.875202>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.614540, 32.962734, 50.862881> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282645, 0.317416, -0.905184,
		-0.546248, 0.722441, 0.423901,
		0.788495, 0.614269, -0.030806,
		36.851089, 33.147015, 50.853638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045162, 33.500423, 50.811172>,  <36.299141, 32.717026, 50.875202>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.045162, 33.500423, 50.811172> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.421894, 33.503506, 50.676773>,  <36.647934, 33.505356, 50.596134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.421894, 33.503506, 50.676773>,  <36.045162, 33.500423, 50.811172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.421894, 33.503506, 50.676773> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302398, 0.455726, -0.837179,
		0.146672, 0.890087, 0.431547,
		0.941830, 0.007709, -0.336002,
		36.704441, 33.505817, 50.575974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.154736, 34.183792, 50.564655>,  <36.045162, 33.500423, 50.811172>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.154736, 34.183792, 50.564655> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.420887, 33.948254, 50.381119>,  <36.580578, 33.806931, 50.270996>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.420887, 33.948254, 50.381119>,  <36.154736, 34.183792, 50.564655>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420887, 33.948254, 50.381119> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238750, 0.414515, -0.878166,
		0.707301, 0.693859, 0.135222,
		0.665375, -0.588844, -0.458846,
		36.620499, 33.771599, 50.243465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.485947, 34.595135, 50.073376>,  <36.154736, 34.183792, 50.564655>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.485947, 34.595135, 50.073376> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535919, 34.222279, 49.937428>,  <36.565903, 33.998566, 49.855858>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.535919, 34.222279, 49.937428>,  <36.485947, 34.595135, 50.073376>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535919, 34.222279, 49.937428> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153990, 0.320186, -0.934756,
		0.980142, 0.169118, -0.103538,
		0.124933, -0.932138, -0.339870,
		36.573399, 33.942638, 49.835468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885456, 34.715286, 49.441914>,  <36.485947, 34.595135, 50.073376>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885456, 34.715286, 49.441914> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.696682, 34.362850, 49.429527>,  <36.583416, 34.151390, 49.422096>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.696682, 34.362850, 49.429527>,  <36.885456, 34.715286, 49.441914>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.696682, 34.362850, 49.429527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314704, 0.201166, -0.927628,
		0.823550, -0.428039, -0.372220,
		-0.471940, -0.881087, -0.030965,
		36.555099, 34.098526, 49.420238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090076, 35.344742, 49.204025>,  <36.885456, 34.715286, 49.441914>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090076, 35.344742, 49.204025> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.922211, 35.706886, 49.178116>,  <36.821491, 35.924175, 49.162571>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.922211, 35.706886, 49.178116>,  <37.090076, 35.344742, 49.204025>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922211, 35.706886, 49.178116> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338655, 0.222386, 0.914252,
		0.842135, 0.361748, -0.399934,
		-0.419669, 0.905363, -0.064772,
		36.796310, 35.978497, 49.158684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.610638, 35.758480, 49.310070>,  <37.090076, 35.344742, 49.204025>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.610638, 35.758480, 49.310070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286915, 35.978165, 49.393387>,  <37.092682, 36.109974, 49.443375>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.286915, 35.978165, 49.393387>,  <37.610638, 35.758480, 49.310070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.286915, 35.978165, 49.393387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420381, 0.293906, 0.858428,
		0.410240, 0.782296, -0.468739,
		-0.809310, 0.549211, 0.208290,
		37.044121, 36.142929, 49.455875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.874378, 36.424290, 49.491776>,  <37.610638, 35.758480, 49.310070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.874378, 36.424290, 49.491776> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.506626, 36.407238, 49.648201>,  <37.285976, 36.397007, 49.742054>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.506626, 36.407238, 49.648201>,  <37.874378, 36.424290, 49.491776>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.506626, 36.407238, 49.648201> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327224, 0.468877, 0.820414,
		-0.218337, 0.882234, -0.417124,
		-0.919377, -0.042634, 0.391061,
		37.230812, 36.394447, 49.765518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.724232, 37.088078, 49.758942>,  <37.874378, 36.424290, 49.491776>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.724232, 37.088078, 49.758942> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.482491, 36.844040, 49.963898>,  <37.337444, 36.697617, 50.086872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.482491, 36.844040, 49.963898>,  <37.724232, 37.088078, 49.758942>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.482491, 36.844040, 49.963898> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.364692, 0.359951, 0.858740,
		-0.708349, 0.705845, 0.004961,
		-0.604352, -0.610097, 0.512387,
		37.301186, 36.661011, 50.117615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.434887, 37.443733, 50.339237>,  <37.724232, 37.088078, 49.758942>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.434887, 37.443733, 50.339237> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.373302, 37.066864, 50.458302>,  <37.336353, 36.840740, 50.529739>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.373302, 37.066864, 50.458302>,  <37.434887, 37.443733, 50.339237>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373302, 37.066864, 50.458302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244780, 0.255489, 0.935312,
		-0.957277, 0.216859, 0.191292,
		-0.153958, -0.942177, 0.297657,
		37.327114, 36.784210, 50.547600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139824, 37.589951, 50.924648>,  <37.434887, 37.443733, 50.339237>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139824, 37.589951, 50.924648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.248280, 37.206234, 50.956253>,  <37.313351, 36.976006, 50.975216>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.248280, 37.206234, 50.956253>,  <37.139824, 37.589951, 50.924648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248280, 37.206234, 50.956253> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.536026, 0.218665, 0.815391,
		-0.799476, -0.178729, 0.573493,
		0.271137, -0.959292, 0.079014,
		37.329620, 36.918446, 50.979958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876057, 37.427311, 51.548214>,  <37.139824, 37.589951, 50.924648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.876057, 37.427311, 51.548214> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.194538, 37.209759, 51.442188>,  <37.385628, 37.079227, 51.378574>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.194538, 37.209759, 51.442188>,  <36.876057, 37.427311, 51.548214>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.194538, 37.209759, 51.442188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477873, 0.296611, 0.826837,
		-0.371083, -0.784993, 0.496069,
		0.796200, -0.543883, -0.265060,
		37.433399, 37.046593, 51.362671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125095, 37.092861, 52.188957>,  <36.876057, 37.427311, 51.548214>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.125095, 37.092861, 52.188957> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.449928, 37.069775, 51.956688>,  <37.644829, 37.055923, 51.817326>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.449928, 37.069775, 51.956688>,  <37.125095, 37.092861, 52.188957>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.449928, 37.069775, 51.956688> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569464, 0.295611, 0.767023,
		0.127383, -0.953563, 0.272930,
		0.812086, -0.057719, -0.580676,
		37.693554, 37.052460, 51.782486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.589748, 36.663296, 52.561562>,  <37.125095, 37.092861, 52.188957>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.589748, 36.663296, 52.561562> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.811863, 36.840149, 52.279800>,  <37.945133, 36.946259, 52.110744>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.811863, 36.840149, 52.279800>,  <37.589748, 36.663296, 52.561562>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.811863, 36.840149, 52.279800> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666676, 0.269711, 0.694837,
		0.497192, -0.855440, -0.144990,
		0.555287, 0.442129, -0.704400,
		37.978451, 36.972786, 52.068481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.543465, 35.198956, 36.520561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865829, 35.361450, 36.692829>,  <37.059250, 35.458946, 36.796188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.865829, 35.361450, 36.692829>,  <36.543465, 35.198956, 36.520561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865829, 35.361450, 36.692829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383702, -0.195582, 0.902508,
		0.450864, -0.892591, -0.001748,
		0.805912, 0.406237, 0.430670,
		37.107605, 35.483322, 36.822029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.886860, 34.738045, 37.018139>,  <36.543465, 35.198956, 36.520561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.886860, 34.738045, 37.018139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968071, 35.118713, 37.110306>,  <37.016796, 35.347115, 37.165607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.968071, 35.118713, 37.110306>,  <36.886860, 34.738045, 37.018139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.968071, 35.118713, 37.110306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314654, -0.159428, 0.935722,
		0.927239, -0.262478, 0.267081,
		0.203026, 0.951676, 0.230418,
		37.028980, 35.404217, 37.179432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.326557, 34.683800, 37.608566>,  <36.886860, 34.738045, 37.018139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.326557, 34.683800, 37.608566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138329, 35.036598, 37.598354>,  <37.025391, 35.248276, 37.592228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138329, 35.036598, 37.598354>,  <37.326557, 34.683800, 37.608566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138329, 35.036598, 37.598354> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335576, -0.152125, 0.929649,
		0.816061, 0.446031, 0.367561,
		-0.470567, 0.881994, -0.025534,
		36.997158, 35.301197, 37.590694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442085, 35.076977, 38.316341>,  <37.326557, 34.683800, 37.608566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442085, 35.076977, 38.316341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112812, 35.225327, 38.144379>,  <36.915249, 35.314335, 38.041203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.112812, 35.225327, 38.144379>,  <37.442085, 35.076977, 38.316341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.112812, 35.225327, 38.144379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424817, 0.100028, 0.899736,
		0.376690, 0.923281, 0.075211,
		-0.823186, 0.370872, -0.429905,
		36.865856, 35.336590, 38.015408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346687, 35.627983, 38.732857>,  <37.442085, 35.076977, 38.316341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346687, 35.627983, 38.732857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020687, 35.508320, 38.534351>,  <36.825089, 35.436523, 38.415249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.020687, 35.508320, 38.534351>,  <37.346687, 35.627983, 38.732857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.020687, 35.508320, 38.534351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.560520, 0.189820, 0.806093,
		-0.146946, 0.935133, -0.322386,
		-0.815000, -0.299156, -0.496267,
		36.776188, 35.418571, 38.385471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.907913, 36.088135, 38.933041>,  <37.346687, 35.627983, 38.732857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.907913, 36.088135, 38.933041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678902, 35.783321, 38.812035>,  <36.541496, 35.600433, 38.739433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.678902, 35.783321, 38.812035>,  <36.907913, 36.088135, 38.933041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.678902, 35.783321, 38.812035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639227, 0.183828, 0.746724,
		-0.513419, 0.620895, -0.592359,
		-0.572530, -0.762034, -0.302512,
		36.507141, 35.554710, 38.721279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.229080, 36.301533, 38.975491>,  <36.907913, 36.088135, 38.933041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.229080, 36.301533, 38.975491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196671, 35.902893, 38.981472>,  <36.177223, 35.663708, 38.985062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.196671, 35.902893, 38.981472>,  <36.229080, 36.301533, 38.975491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.196671, 35.902893, 38.981472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587270, 0.059859, 0.807175,
		-0.805326, 0.056616, -0.590123,
		-0.081023, -0.996600, 0.014957,
		36.172363, 35.603912, 38.985958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.596394, 36.183208, 39.051495>,  <36.229080, 36.301533, 38.975491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.596394, 36.183208, 39.051495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737068, 35.822479, 39.151924>,  <35.821472, 35.606041, 39.212181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.737068, 35.822479, 39.151924>,  <35.596394, 36.183208, 39.051495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.737068, 35.822479, 39.151924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619175, -0.022938, 0.784918,
		-0.702096, -0.431502, -0.566451,
		0.351686, -0.901820, 0.251070,
		35.842575, 35.551933, 39.227245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993710, 35.761433, 39.200081>,  <35.596394, 36.183208, 39.051495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993710, 35.761433, 39.200081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303825, 35.595348, 39.390461>,  <35.489895, 35.495697, 39.504688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.303825, 35.595348, 39.390461>,  <34.993710, 35.761433, 39.200081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.303825, 35.595348, 39.390461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.543202, -0.053843, 0.837873,
		-0.322266, -0.908131, -0.267286,
		0.775291, -0.415208, 0.475948,
		35.536411, 35.470787, 39.533245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.720306, 35.263687, 39.551620>,  <34.993710, 35.761433, 39.200081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.720306, 35.263687, 39.551620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069775, 35.241764, 39.744987>,  <35.279457, 35.228611, 39.861008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.069775, 35.241764, 39.744987>,  <34.720306, 35.263687, 39.551620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069775, 35.241764, 39.744987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476561, 0.103541, 0.873023,
		-0.097906, -0.993114, 0.064340,
		0.873673, -0.054812, 0.483416,
		35.331875, 35.225319, 39.890011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604221, 34.846264, 40.091194>,  <34.720306, 35.263687, 39.551620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604221, 34.846264, 40.091194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924591, 35.067444, 40.183075>,  <35.116814, 35.200150, 40.238205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.924591, 35.067444, 40.183075>,  <34.604221, 34.846264, 40.091194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.924591, 35.067444, 40.183075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370189, 0.155770, 0.915803,
		0.470610, -0.818527, 0.329456,
		0.800929, 0.552947, 0.229703,
		35.164871, 35.233326, 40.251987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.780144, 34.601276, 40.738869>,  <34.604221, 34.846264, 40.091194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.780144, 34.601276, 40.738869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980545, 34.947384, 40.745865>,  <35.100784, 35.155048, 40.750065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.980545, 34.947384, 40.745865>,  <34.780144, 34.601276, 40.738869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.980545, 34.947384, 40.745865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232271, 0.114960, 0.965834,
		0.833697, -0.487945, 0.258572,
		0.500999, 0.865271, 0.017494,
		35.130844, 35.206966, 40.751114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.673019, 33.968311, 41.217030>,  <34.780144, 34.601276, 40.738869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.673019, 33.968311, 41.217030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309998, 33.800465, 41.210365>,  <34.092186, 33.699757, 41.206367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309998, 33.800465, 41.210365>,  <34.673019, 33.968311, 41.217030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309998, 33.800465, 41.210365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029517, 0.103319, -0.994210,
		0.418905, -0.901804, -0.106153,
		-0.907550, -0.419613, -0.016662,
		34.037731, 33.674580, 41.205368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769722, 33.399651, 40.675388>,  <34.673019, 33.968311, 41.217030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769722, 33.399651, 40.675388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378532, 33.469894, 40.720524>,  <34.143818, 33.512039, 40.747604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.378532, 33.469894, 40.720524>,  <34.769722, 33.399651, 40.675388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.378532, 33.469894, 40.720524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143492, -0.173011, -0.974411,
		-0.151579, -0.969141, 0.194397,
		-0.977974, 0.175595, 0.112839,
		34.085140, 33.522579, 40.754375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.472614, 32.961506, 40.293682>,  <34.769722, 33.399651, 40.675388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.472614, 32.961506, 40.293682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203674, 33.255615, 40.327900>,  <34.042313, 33.432083, 40.348431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.203674, 33.255615, 40.327900>,  <34.472614, 32.961506, 40.293682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.203674, 33.255615, 40.327900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283766, -0.149280, -0.947203,
		-0.683687, -0.661122, 0.309014,
		-0.672346, 0.735278, 0.085543,
		34.001972, 33.476200, 40.353561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.813122, 32.606781, 40.184044>,  <34.472614, 32.961506, 40.293682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.813122, 32.606781, 40.184044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801250, 32.996544, 40.094917>,  <33.794128, 33.230404, 40.041443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.801250, 32.996544, 40.094917>,  <33.813122, 32.606781, 40.184044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.801250, 32.996544, 40.094917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429528, -0.213714, -0.877401,
		-0.902566, 0.069668, 0.424878,
		-0.029676, 0.974409, -0.222815,
		33.792347, 33.288868, 40.028072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.168671, 32.655632, 39.849903>,  <33.813122, 32.606781, 40.184044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.168671, 32.655632, 39.849903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360828, 32.989586, 39.742424>,  <33.476124, 33.189957, 39.677937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.360828, 32.989586, 39.742424>,  <33.168671, 32.655632, 39.849903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.360828, 32.989586, 39.742424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223073, -0.179975, -0.958043,
		-0.848212, 0.520173, 0.099781,
		0.480390, 0.834883, -0.268693,
		33.504944, 33.240051, 39.661816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.842178, 32.887302, 39.239491>,  <33.168671, 32.655632, 39.849903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.842178, 32.887302, 39.239491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185745, 33.092140, 39.237957>,  <33.391888, 33.215042, 39.237038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.185745, 33.092140, 39.237957>,  <32.842178, 32.887302, 39.239491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.185745, 33.092140, 39.237957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000517, -0.006621, -0.999978,
		-0.512107, 0.858905, -0.005422,
		0.858922, 0.512093, -0.003834,
		33.443420, 33.245770, 39.236805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.782196, 33.370354, 38.720219>,  <32.842178, 32.887302, 39.239491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.782196, 33.370354, 38.720219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180107, 33.353992, 38.757607>,  <33.418854, 33.344177, 38.780037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.180107, 33.353992, 38.757607>,  <32.782196, 33.370354, 38.720219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.180107, 33.353992, 38.757607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097112, 0.098808, -0.990357,
		0.031270, 0.994266, 0.102264,
		0.994782, -0.040899, 0.093466,
		33.478542, 33.341724, 38.785645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.982029, 33.917542, 38.352341>,  <32.782196, 33.370354, 38.720219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.982029, 33.917542, 38.352341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307503, 33.686398, 38.377655>,  <33.502785, 33.547710, 38.392845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.307503, 33.686398, 38.377655>,  <32.982029, 33.917542, 38.352341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.307503, 33.686398, 38.377655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174969, 0.139630, -0.974623,
		0.554355, 0.804105, 0.214721,
		0.813681, -0.577856, 0.063289,
		33.551605, 33.513042, 38.396641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423687, 34.252422, 37.881596>,  <32.982029, 33.917542, 38.352341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423687, 34.252422, 37.881596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595238, 33.901218, 37.966602>,  <33.698170, 33.690495, 38.017605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.595238, 33.901218, 37.966602>,  <33.423687, 34.252422, 37.881596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.595238, 33.901218, 37.966602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461106, 0.010475, -0.887283,
		0.776817, 0.478529, 0.409348,
		0.428879, -0.878009, 0.212515,
		33.723900, 33.637817, 38.030357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.226967, 34.318657, 37.747272>,  <33.423687, 34.252422, 37.881596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.226967, 34.318657, 37.747272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095303, 33.942547, 37.712540>,  <34.016304, 33.716881, 37.691700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.095303, 33.942547, 37.712540>,  <34.226967, 34.318657, 37.747272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.095303, 33.942547, 37.712540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421928, -0.064189, -0.904354,
		0.844767, -0.334312, 0.417857,
		-0.329158, -0.940274, -0.086831,
		33.996555, 33.660465, 37.686489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.788479, 34.025707, 37.468662>,  <34.226967, 34.318657, 37.747272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.788479, 34.025707, 37.468662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501221, 33.758434, 37.390896>,  <34.328865, 33.598072, 37.344234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.501221, 33.758434, 37.390896>,  <34.788479, 34.025707, 37.468662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.501221, 33.758434, 37.390896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345166, -0.099429, -0.933260,
		0.604258, -0.737323, 0.302038,
		-0.718145, -0.668183, -0.194418,
		34.285778, 33.557980, 37.332569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.826740, 33.414051, 36.991360>,  <34.788479, 34.025707, 37.468662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.826740, 33.414051, 36.991360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747299, 33.084393, 37.203522>,  <34.699635, 32.886597, 37.330818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.747299, 33.084393, 37.203522>,  <34.826740, 33.414051, 36.991360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.747299, 33.084393, 37.203522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760737, 0.470844, 0.446750,
		-0.617928, -0.314774, -0.720473,
		-0.198605, -0.824150, 0.530408,
		34.687717, 32.837147, 37.362644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746243, 32.983990, 36.337322>,  <34.826740, 33.414051, 36.991360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746243, 32.983990, 36.337322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731121, 33.145733, 35.971794>,  <34.722050, 33.242779, 35.752480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.731121, 33.145733, 35.971794>,  <34.746243, 32.983990, 36.337322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.731121, 33.145733, 35.971794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295535, 0.878088, 0.376324,
		0.954584, -0.255839, -0.152699,
		-0.037805, 0.404361, -0.913818,
		34.719780, 33.267040, 35.697647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.444370, 33.079395, 35.920692>,  <34.746243, 32.983990, 36.337322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.444370, 33.079395, 35.920692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614170, 32.941158, 36.255444>,  <35.716049, 32.858215, 36.456295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.614170, 32.941158, 36.255444>,  <35.444370, 33.079395, 35.920692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614170, 32.941158, 36.255444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845472, -0.482050, 0.229792,
		0.324005, -0.805106, -0.496815,
		0.424497, -0.345589, 0.836882,
		35.741520, 32.837482, 36.506508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060249, 32.626774, 36.051903>,  <35.444370, 33.079395, 35.920692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060249, 32.626774, 36.051903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988708, 32.238922, 35.985172>,  <35.945782, 32.006210, 35.945133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.988708, 32.238922, 35.985172>,  <36.060249, 32.626774, 36.051903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.988708, 32.238922, 35.985172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.770912, -0.243466, 0.588574,
		-0.611315, -0.023342, 0.791043,
		-0.178854, -0.969628, -0.166829,
		35.935051, 31.948034, 35.935123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.711128, 32.861816, 36.437267>,  <36.060249, 32.626774, 36.051903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.711128, 32.861816, 36.437267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000786, 32.933685, 36.170933>,  <37.174580, 32.976807, 36.011131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.000786, 32.933685, 36.170933>,  <36.711128, 32.861816, 36.437267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.000786, 32.933685, 36.170933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666279, -0.431467, 0.608201,
		-0.178010, -0.884056, -0.432155,
		0.724145, 0.179670, -0.665833,
		37.218029, 32.987587, 35.971184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.037170, 32.218719, 36.129868>,  <36.711128, 32.861816, 36.437267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.037170, 32.218719, 36.129868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274334, 32.535858, 36.186226>,  <37.416634, 32.726143, 36.220039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.274334, 32.535858, 36.186226>,  <37.037170, 32.218719, 36.129868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.274334, 32.535858, 36.186226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480535, -0.488753, 0.728152,
		0.646174, -0.364026, -0.670778,
		0.592912, 0.792846, 0.140892,
		37.452209, 32.773712, 36.228493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.707050, 31.972231, 36.295425>,  <37.037170, 32.218719, 36.129868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.707050, 31.972231, 36.295425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670628, 32.342113, 36.443279>,  <37.648773, 32.564041, 36.531990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.670628, 32.342113, 36.443279>,  <37.707050, 31.972231, 36.295425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670628, 32.342113, 36.443279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354248, -0.316820, 0.879848,
		0.930707, 0.211061, -0.298726,
		-0.091059, 0.924704, 0.369635,
		37.643311, 32.619526, 36.554169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.315163, 32.066429, 36.701824>,  <37.707050, 31.972231, 36.295425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.315163, 32.066429, 36.701824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058720, 32.335030, 36.850452>,  <37.904854, 32.496189, 36.939629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.058720, 32.335030, 36.850452>,  <38.315163, 32.066429, 36.701824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.058720, 32.335030, 36.850452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372066, -0.151503, 0.915759,
		0.671226, 0.725352, -0.152711,
		-0.641111, 0.671499, 0.371571,
		37.866386, 32.536480, 36.961926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.604408, 32.424351, 37.250233>,  <38.315163, 32.066429, 36.701824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.604408, 32.424351, 37.250233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218433, 32.481625, 37.338230>,  <37.986851, 32.515991, 37.391029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.218433, 32.481625, 37.338230>,  <38.604408, 32.424351, 37.250233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.218433, 32.481625, 37.338230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202556, -0.126863, 0.971019,
		0.166947, 0.981531, 0.093411,
		-0.964935, 0.143187, 0.219994,
		37.928951, 32.524582, 37.404228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.588684, 32.935341, 37.705769>,  <38.604408, 32.424351, 37.250233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.588684, 32.935341, 37.705769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239971, 32.742752, 37.741959>,  <38.030743, 32.627197, 37.763672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.239971, 32.742752, 37.741959>,  <38.588684, 32.935341, 37.705769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.239971, 32.742752, 37.741959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144507, -0.076261, 0.986561,
		-0.468103, 0.873137, 0.136059,
		-0.871778, -0.481473, 0.090477,
		37.978439, 32.598309, 37.769100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.273426, 33.188492, 38.356007>,  <38.588684, 32.935341, 37.705769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.273426, 33.188492, 38.356007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077484, 32.842430, 38.313023>,  <37.959919, 32.634792, 38.287231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.077484, 32.842430, 38.313023>,  <38.273426, 33.188492, 38.356007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.077484, 32.842430, 38.313023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001502, -0.122419, 0.992477,
		-0.871801, 0.486334, 0.058668,
		-0.489858, -0.865155, -0.107455,
		37.930527, 32.582882, 38.280785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.668911, 33.214375, 38.776165>,  <38.273426, 33.188492, 38.356007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.668911, 33.214375, 38.776165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753216, 32.830395, 38.702324>,  <37.803799, 32.600006, 38.658020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.753216, 32.830395, 38.702324>,  <37.668911, 33.214375, 38.776165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.753216, 32.830395, 38.702324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200483, -0.227274, 0.952971,
		-0.956758, -0.163838, -0.240354,
		0.210759, -0.959949, -0.184600,
		37.816444, 32.542408, 38.646942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.116009, 32.847656, 39.080959>,  <37.668911, 33.214375, 38.776165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.116009, 32.847656, 39.080959> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393326, 32.561306, 39.047802>,  <37.559715, 32.389496, 39.027908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.393326, 32.561306, 39.047802>,  <37.116009, 32.847656, 39.080959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.393326, 32.561306, 39.047802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077405, -0.040388, 0.996181,
		-0.716489, -0.697059, 0.027412,
		0.693291, -0.715875, -0.082894,
		37.601315, 32.346542, 39.022934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.018112, 32.243801, 39.578922>,  <37.116009, 32.847656, 39.080959>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.018112, 32.243801, 39.578922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410530, 32.224388, 39.503876>,  <37.645981, 32.212742, 39.458847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.410530, 32.224388, 39.503876>,  <37.018112, 32.243801, 39.578922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.410530, 32.224388, 39.503876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188636, 0.017353, 0.981894,
		-0.044398, -0.998671, 0.026179,
		0.981043, -0.048532, -0.187614,
		37.704842, 32.209827, 39.447590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223171, 31.708397, 40.073528>,  <37.018112, 32.243801, 39.578922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223171, 31.708397, 40.073528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556686, 31.896595, 39.957993>,  <37.756798, 32.009514, 39.888672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.556686, 31.896595, 39.957993>,  <37.223171, 31.708397, 40.073528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.556686, 31.896595, 39.957993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292061, 0.068076, 0.953974,
		0.468502, -0.879774, -0.080652,
		0.833790, 0.470494, -0.288841,
		37.806824, 32.037743, 39.871342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.804539, 31.365250, 40.393673>,  <37.223171, 31.708397, 40.073528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.804539, 31.365250, 40.393673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928787, 31.723608, 40.266624>,  <38.003338, 31.938623, 40.190395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.928787, 31.723608, 40.266624>,  <37.804539, 31.365250, 40.393673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928787, 31.723608, 40.266624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340759, 0.206985, 0.917082,
		0.887353, -0.393102, -0.240990,
		0.310626, 0.895895, -0.317622,
		38.021976, 31.992376, 40.171337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387531, 31.454105, 40.720947>,  <37.804539, 31.365250, 40.393673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387531, 31.454105, 40.720947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295746, 31.835173, 40.641182>,  <38.240673, 32.063812, 40.593323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.295746, 31.835173, 40.641182>,  <38.387531, 31.454105, 40.720947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.295746, 31.835173, 40.641182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243805, 0.254607, 0.935807,
		0.942288, 0.166114, -0.290688,
		-0.229462, 0.952671, -0.199414,
		38.226906, 32.120975, 40.581356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977795, 31.884758, 40.923580>,  <38.387531, 31.454105, 40.720947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977795, 31.884758, 40.923580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652973, 32.118179, 40.921234>,  <38.458080, 32.258232, 40.919827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.652973, 32.118179, 40.921234>,  <38.977795, 31.884758, 40.923580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.652973, 32.118179, 40.921234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199104, 0.286481, 0.937169,
		0.548569, 0.759863, -0.348826,
		-0.812053, 0.583555, -0.005863,
		38.409359, 32.293247, 40.919476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.223419, 32.515953, 41.085663>,  <38.977795, 31.884758, 40.923580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.223419, 32.515953, 41.085663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834248, 32.498775, 41.176491>,  <38.600742, 32.488468, 41.230988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.834248, 32.498775, 41.176491>,  <39.223419, 32.515953, 41.085663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.834248, 32.498775, 41.176491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189744, 0.412455, 0.890998,
		-0.131920, 0.909965, -0.393142,
		-0.972931, -0.042944, 0.227072,
		38.542370, 32.485893, 41.244614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.202473, 33.211624, 41.257862>,  <39.223419, 32.515953, 41.085663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.202473, 33.211624, 41.257862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893764, 32.995789, 41.392452>,  <38.708538, 32.866287, 41.473206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.893764, 32.995789, 41.392452>,  <39.202473, 33.211624, 41.257862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.893764, 32.995789, 41.392452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090953, 0.430024, 0.898224,
		-0.629360, 0.723829, -0.282804,
		-0.771773, -0.539585, 0.336474,
		38.662231, 32.833912, 41.493393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.850334, 33.600208, 41.712326>,  <39.202473, 33.211624, 41.257862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.850334, 33.600208, 41.712326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679272, 33.252415, 41.811207>,  <38.576633, 33.043739, 41.870533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679272, 33.252415, 41.811207>,  <38.850334, 33.600208, 41.712326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679272, 33.252415, 41.811207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044869, 0.252713, 0.966500,
		-0.902826, 0.424425, -0.069062,
		-0.427660, -0.869483, 0.247199,
		38.550972, 32.991570, 41.885368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.391804, 33.747189, 42.339828>,  <38.850334, 33.600208, 41.712326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.391804, 33.747189, 42.339828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475822, 33.356140, 42.344463>,  <38.526234, 33.121510, 42.347244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.475822, 33.356140, 42.344463>,  <38.391804, 33.747189, 42.339828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.475822, 33.356140, 42.344463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091949, 0.031549, 0.995264,
		-0.973357, -0.207991, 0.096518,
		0.210051, -0.977622, 0.011584,
		38.538837, 33.062855, 42.347939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928532, 33.435822, 42.927788>,  <38.391804, 33.747189, 42.339828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928532, 33.435822, 42.927788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200058, 33.146103, 42.879448>,  <38.362976, 32.972271, 42.850445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.200058, 33.146103, 42.879448>,  <37.928532, 33.435822, 42.927788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200058, 33.146103, 42.879448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160896, -0.013866, 0.986874,
		-0.716461, -0.689353, 0.107123,
		0.678819, -0.724292, -0.120849,
		38.403706, 32.928814, 42.843193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.743507, 32.922653, 43.478558>,  <37.928532, 33.435822, 42.927788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.743507, 32.922653, 43.478558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128136, 32.851692, 43.394741>,  <38.358913, 32.809116, 43.344452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.128136, 32.851692, 43.394741>,  <37.743507, 32.922653, 43.478558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.128136, 32.851692, 43.394741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191960, -0.111228, 0.975079,
		-0.196286, -0.977833, -0.072900,
		0.961573, -0.177401, -0.209537,
		38.416607, 32.798473, 43.331879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.883766, 32.359161, 43.866180>,  <37.743507, 32.922653, 43.478558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.883766, 32.359161, 43.866180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251621, 32.504875, 43.807434>,  <38.472332, 32.592304, 43.772186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.251621, 32.504875, 43.807434>,  <37.883766, 32.359161, 43.866180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.251621, 32.504875, 43.807434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227924, -0.190423, 0.954877,
		0.319878, -0.911613, -0.258148,
		0.919635, 0.364282, -0.146866,
		38.527512, 32.614159, 43.763374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.231888, 32.070789, 44.374451>,  <37.883766, 32.359161, 43.866180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.231888, 32.070789, 44.374451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529964, 32.323933, 44.290367>,  <38.708809, 32.475819, 44.239918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.529964, 32.323933, 44.290367>,  <38.231888, 32.070789, 44.374451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.529964, 32.323933, 44.290367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349696, -0.102444, 0.931245,
		0.567811, -0.767461, -0.297648,
		0.745186, 0.632858, -0.210209,
		38.753521, 32.513790, 44.227303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928738, 31.790422, 44.515659>,  <38.231888, 32.070789, 44.374451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.928738, 31.790422, 44.515659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992397, 32.185299, 44.520142>,  <39.030594, 32.422226, 44.522831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.992397, 32.185299, 44.520142>,  <38.928738, 31.790422, 44.515659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.992397, 32.185299, 44.520142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458704, -0.083987, 0.884611,
		0.874221, -0.135647, -0.466195,
		0.159149, 0.987191, 0.011202,
		39.040142, 32.481457, 44.523502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.592010, 31.970715, 44.701630>,  <38.928738, 31.790422, 44.515659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.592010, 31.970715, 44.701630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383472, 32.305786, 44.766735>,  <39.258350, 32.506828, 44.805798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383472, 32.305786, 44.766735>,  <39.592010, 31.970715, 44.701630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383472, 32.305786, 44.766735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444061, 0.103438, 0.890006,
		0.728703, 0.536279, -0.425907,
		-0.521346, 0.837679, 0.162765,
		39.227070, 32.557091, 44.815563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.042118, 32.435669, 44.962097>,  <39.592010, 31.970715, 44.701630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.042118, 32.435669, 44.962097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688778, 32.572227, 45.090565>,  <39.476776, 32.654163, 45.167645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.688778, 32.572227, 45.090565>,  <40.042118, 32.435669, 44.962097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.688778, 32.572227, 45.090565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391502, 0.160635, 0.906048,
		0.257730, 0.926092, -0.275554,
		-0.883347, 0.341395, 0.321166,
		39.423775, 32.674644, 45.186916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.245323, 32.858395, 45.411369>,  <40.042118, 32.435669, 44.962097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.245323, 32.858395, 45.411369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861523, 32.822933, 45.518326>,  <39.631241, 32.801659, 45.582500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.861523, 32.822933, 45.518326>,  <40.245323, 32.858395, 45.411369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.861523, 32.822933, 45.518326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264142, 0.046797, 0.963348,
		-0.097916, 0.994963, -0.021485,
		-0.959501, -0.088652, 0.267394,
		39.573673, 32.796337, 45.598545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.175266, 33.304497, 45.937889>,  <40.245323, 32.858395, 45.411369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.175266, 33.304497, 45.937889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866131, 33.056084, 45.990112>,  <39.680649, 32.907036, 46.021446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.866131, 33.056084, 45.990112>,  <40.175266, 33.304497, 45.937889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.866131, 33.056084, 45.990112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177784, -0.014387, 0.983964,
		-0.609193, 0.783655, 0.121528,
		-0.772837, -0.621030, 0.130557,
		39.634281, 32.869774, 46.029278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.948780, 34.079220, 45.874680>,  <40.175266, 33.304497, 45.937889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.948780, 34.079220, 45.874680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345085, 34.122688, 45.907120>,  <40.582867, 34.148769, 45.926582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.345085, 34.122688, 45.907120>,  <39.948780, 34.079220, 45.874680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.345085, 34.122688, 45.907120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074351, 0.064773, -0.995126,
		-0.113395, 0.991965, 0.056095,
		0.990764, 0.108672, 0.081098,
		40.642315, 34.155289, 45.931450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.070156, 34.377060, 45.276844>,  <39.948780, 34.079220, 45.874680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.070156, 34.377060, 45.276844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444530, 34.314705, 45.403164>,  <40.669155, 34.277290, 45.478954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.444530, 34.314705, 45.403164>,  <40.070156, 34.377060, 45.276844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.444530, 34.314705, 45.403164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307740, -0.074028, -0.948586,
		0.171253, 0.984996, -0.021312,
		0.935932, -0.155890, 0.315800,
		40.725311, 34.267937, 45.497906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520851, 34.894974, 44.976517>,  <40.070156, 34.377060, 45.276844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520851, 34.894974, 44.976517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746086, 34.576218, 45.064060>,  <40.881226, 34.384964, 45.116585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746086, 34.576218, 45.064060>,  <40.520851, 34.894974, 44.976517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746086, 34.576218, 45.064060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484399, 0.103702, -0.868679,
		0.669547, 0.595155, 0.444406,
		0.563085, -0.796891, 0.218860,
		40.915012, 34.337151, 45.129719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.118404, 35.135582, 44.681362>,  <40.520851, 34.894974, 44.976517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.118404, 35.135582, 44.681362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131512, 34.737747, 44.720795>,  <41.139374, 34.499046, 44.744453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.131512, 34.737747, 44.720795>,  <41.118404, 35.135582, 44.681362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.131512, 34.737747, 44.720795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058092, -0.096576, -0.993629,
		0.997773, 0.038285, 0.054613,
		0.032766, -0.994589, 0.098585,
		41.141342, 34.439369, 44.750370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.704113, 35.034225, 44.314137>,  <41.118404, 35.135582, 44.681362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.704113, 35.034225, 44.314137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487118, 34.698318, 44.323059>,  <41.356922, 34.496773, 44.328415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.487118, 34.698318, 44.323059>,  <41.704113, 35.034225, 44.314137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.487118, 34.698318, 44.323059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089632, -0.084266, -0.992404,
		0.835269, -0.536367, 0.120983,
		-0.542487, -0.839768, 0.022309,
		41.324371, 34.446388, 44.329750>
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
