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
	<4.594908, 15.343824, 14.923321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.214970, 15.268740, 14.823275>,  <3.987007, 15.223689, 14.763247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.214970, 15.268740, 14.823275>,  <4.594908, 15.343824, 14.923321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.214970, 15.268740, 14.823275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309992, 0.459771, 0.832176,
		-0.041213, 0.867972, -0.494900,
		-0.949846, -0.187712, -0.250115,
		3.930016, 15.212426, 14.748240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.143934, 15.999572, 14.909863>,  <4.594908, 15.343824, 14.923321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.143934, 15.999572, 14.909863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.932966, 15.675428, 15.011958>,  <3.806385, 15.480943, 15.073215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.932966, 15.675428, 15.011958>,  <4.143934, 15.999572, 14.909863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.932966, 15.675428, 15.011958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460595, 0.525164, 0.715580,
		-0.713919, 0.259849, -0.650229,
		-0.527419, -0.810359, 0.255240,
		3.774740, 15.432321, 15.088530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435537, 16.182692, 14.919571>,  <4.143934, 15.999572, 14.909863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435537, 16.182692, 14.919571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.515334, 15.875146, 15.162569>,  <3.563213, 15.690619, 15.308368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.515334, 15.875146, 15.162569>,  <3.435537, 16.182692, 14.919571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.515334, 15.875146, 15.162569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246813, 0.560544, 0.790489,
		-0.948307, -0.307636, -0.077941,
		0.199494, -0.768863, 0.607496,
		3.575182, 15.644487, 15.344818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.486557, 15.595571, 14.428205>,  <3.435537, 16.182692, 14.919571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.486557, 15.595571, 14.428205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.861693, 15.722438, 14.371831>,  <4.086774, 15.798558, 14.338007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.861693, 15.722438, 14.371831>,  <3.486557, 15.595571, 14.428205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.861693, 15.722438, 14.371831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262637, 0.383079, -0.885591,
		-0.226893, 0.867557, 0.442567,
		0.937839, 0.317169, -0.140935,
		4.143044, 15.817589, 14.329551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.411683, 16.234762, 14.149812>,  <3.486557, 15.595571, 14.428205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.411683, 16.234762, 14.149812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.759535, 16.076389, 14.031840>,  <3.968246, 15.981366, 13.961058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.759535, 16.076389, 14.031840>,  <3.411683, 16.234762, 14.149812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.759535, 16.076389, 14.031840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091069, 0.458486, -0.884023,
		0.485232, 0.795632, 0.362656,
		0.869630, -0.395930, -0.294930,
		4.020424, 15.957610, 13.943361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.970128, 16.832155, 14.116811>,  <3.411683, 16.234762, 14.149812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.970128, 16.832155, 14.116811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065770, 16.527063, 13.876454>,  <4.123156, 16.344007, 13.732241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.065770, 16.527063, 13.876454>,  <3.970128, 16.832155, 14.116811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.065770, 16.527063, 13.876454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148026, 0.582974, -0.798893,
		0.959644, 0.279967, 0.026488,
		0.239106, -0.762731, -0.600890,
		4.137502, 16.298244, 13.696187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.409573, 17.095610, 13.660366>,  <3.970128, 16.832155, 14.116811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.409573, 17.095610, 13.660366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.318842, 16.762901, 13.457700>,  <4.264404, 16.563276, 13.336101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.318842, 16.762901, 13.457700>,  <4.409573, 17.095610, 13.660366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.318842, 16.762901, 13.457700> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064281, 0.531875, -0.844379,
		0.971812, -0.158958, -0.174110,
		-0.226826, -0.831770, -0.506665,
		4.250795, 16.513371, 13.305700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.813846, 17.110231, 13.035358>,  <4.409573, 17.095610, 13.660366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.813846, 17.110231, 13.035358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554642, 16.817183, 12.952079>,  <4.399120, 16.641354, 12.902111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.554642, 16.817183, 12.952079>,  <4.813846, 17.110231, 13.035358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.554642, 16.817183, 12.952079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139016, 0.382538, -0.913422,
		0.748839, -0.562962, -0.349734,
		-0.648009, -0.732624, -0.208198,
		4.360240, 16.597395, 12.889620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.083756, 16.837608, 12.486943>,  <4.813846, 17.110231, 13.035358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.083756, 16.837608, 12.486943> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.691512, 16.761284, 12.504808>,  <4.456165, 16.715488, 12.515528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.691512, 16.761284, 12.504808>,  <5.083756, 16.837608, 12.486943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.691512, 16.761284, 12.504808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118497, 0.395821, -0.910650,
		0.156082, -0.898286, -0.410757,
		-0.980611, -0.190810, 0.044663,
		4.397328, 16.704041, 12.518208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.847041, 16.654202, 11.812375>,  <5.083756, 16.837608, 12.486943>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.847041, 16.654202, 11.812375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498899, 16.760532, 11.978179>,  <4.290014, 16.824331, 12.077662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.498899, 16.760532, 11.978179>,  <4.847041, 16.654202, 11.812375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.498899, 16.760532, 11.978179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339618, 0.285491, -0.896189,
		-0.356572, -0.920777, -0.158198,
		-0.870354, 0.265829, 0.414510,
		4.237793, 16.840281, 12.102532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.480114, 16.560446, 11.180704>,  <4.847041, 16.654202, 11.812375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.480114, 16.560446, 11.180704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.228639, 16.751268, 11.426359>,  <4.077753, 16.865763, 11.573752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.228639, 16.751268, 11.426359>,  <4.480114, 16.560446, 11.180704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.228639, 16.751268, 11.426359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467438, 0.399317, -0.788700,
		-0.621491, -0.782919, -0.028051,
		-0.628690, 0.477058, 0.614138,
		4.040032, 16.894386, 11.610600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.838829, 16.445541, 10.920736>,  <4.480114, 16.560446, 11.180704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.838829, 16.445541, 10.920736> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863300, 16.781849, 11.135908>,  <3.877982, 16.983633, 11.265011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.863300, 16.781849, 11.135908>,  <3.838829, 16.445541, 10.920736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.863300, 16.781849, 11.135908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541304, 0.480747, -0.689835,
		-0.838598, -0.248982, 0.484521,
		0.061176, 0.840768, 0.537928,
		3.881652, 17.034079, 11.297287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.157631, 16.728891, 10.769768>,  <3.838829, 16.445541, 10.920736>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.157631, 16.728891, 10.769768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396047, 17.004534, 10.934628>,  <3.539096, 17.169920, 11.033545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.396047, 17.004534, 10.934628>,  <3.157631, 16.728891, 10.769768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396047, 17.004534, 10.934628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113279, 0.580325, -0.806468,
		-0.794924, 0.433998, 0.423958,
		0.596039, 0.689107, 0.412152,
		3.574859, 17.211266, 11.058274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.810922, 17.344654, 10.897733>,  <3.157631, 16.728891, 10.769768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.810922, 17.344654, 10.897733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.201445, 17.413954, 10.845878>,  <3.435759, 17.455534, 10.814764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.201445, 17.413954, 10.845878>,  <2.810922, 17.344654, 10.897733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.201445, 17.413954, 10.845878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213463, 0.673040, -0.708132,
		-0.035432, 0.719028, 0.694077,
		0.976309, 0.173250, -0.129639,
		3.494338, 17.465929, 10.806986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.756187, 17.972229, 10.509729>,  <2.810922, 17.344654, 10.897733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.756187, 17.972229, 10.509729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.150990, 17.908478, 10.501587>,  <3.387872, 17.870228, 10.496701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.150990, 17.908478, 10.501587>,  <2.756187, 17.972229, 10.509729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.150990, 17.908478, 10.501587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080638, 0.600954, -0.795206,
		0.138971, 0.783233, 0.605998,
		0.987008, -0.159377, -0.020357,
		3.447093, 17.860664, 10.495480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.124054, 18.652905, 10.614879>,  <2.756187, 17.972229, 10.509729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.124054, 18.652905, 10.614879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.370406, 18.392162, 10.437892>,  <3.518218, 18.235718, 10.331699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.370406, 18.392162, 10.437892>,  <3.124054, 18.652905, 10.614879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.370406, 18.392162, 10.437892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271655, 0.702885, -0.657386,
		0.739524, 0.284673, 0.609973,
		0.615880, -0.651854, -0.442467,
		3.555171, 18.196606, 10.305152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.811276, 18.859892, 10.656061>,  <3.124054, 18.652905, 10.614879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.811276, 18.859892, 10.656061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806606, 18.616676, 10.338532>,  <3.803803, 18.470747, 10.148015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.806606, 18.616676, 10.338532>,  <3.811276, 18.859892, 10.656061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.806606, 18.616676, 10.338532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525256, 0.671797, -0.522298,
		0.850864, -0.423057, 0.311532,
		-0.011676, -0.608039, -0.793821,
		3.803103, 18.434265, 10.100386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.485738, 18.897995, 10.423184>,  <3.811276, 18.859892, 10.656061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.485738, 18.897995, 10.423184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265808, 18.765278, 10.116563>,  <4.133850, 18.685648, 9.932590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.265808, 18.765278, 10.116563>,  <4.485738, 18.897995, 10.423184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.265808, 18.765278, 10.116563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494914, 0.609873, -0.618963,
		0.672870, -0.719699, -0.171112,
		-0.549824, -0.331796, -0.766554,
		4.100861, 18.665739, 9.886597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.951962, 18.796350, 9.915404>,  <4.485738, 18.897995, 10.423184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.951962, 18.796350, 9.915404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.606812, 18.827663, 9.715677>,  <4.399722, 18.846451, 9.595840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.606812, 18.827663, 9.715677>,  <4.951962, 18.796350, 9.915404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.606812, 18.827663, 9.715677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455734, 0.547657, -0.701696,
		0.218526, -0.833033, -0.508235,
		-0.862875, 0.078281, -0.499319,
		4.347949, 18.851149, 9.565882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.066554, 18.572268, 9.176881>,  <4.951962, 18.796350, 9.915404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.066554, 18.572268, 9.176881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.742524, 18.806313, 9.161785>,  <4.548107, 18.946739, 9.152728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.742524, 18.806313, 9.161785>,  <5.066554, 18.572268, 9.176881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.742524, 18.806313, 9.161785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324154, 0.393291, -0.860376,
		-0.488574, -0.709201, -0.508261,
		-0.810074, 0.585112, -0.037739,
		4.499502, 18.981846, 9.150463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.041779, 18.677361, 8.440300>,  <5.066554, 18.572268, 9.176881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.041779, 18.677361, 8.440300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.788088, 18.943699, 8.597478>,  <4.635874, 19.103502, 8.691785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.788088, 18.943699, 8.597478>,  <5.041779, 18.677361, 8.440300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.788088, 18.943699, 8.597478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196567, 0.630408, -0.750964,
		-0.747742, -0.399041, -0.530705,
		-0.634226, 0.665847, 0.392944,
		4.597820, 19.143454, 8.715362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.694072, 18.961365, 7.868086>,  <5.041779, 18.677361, 8.440300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.694072, 18.961365, 7.868086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.667581, 19.246666, 8.147194>,  <4.651686, 19.417847, 8.314659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.667581, 19.246666, 8.147194>,  <4.694072, 18.961365, 7.868086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.667581, 19.246666, 8.147194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236635, 0.690583, -0.683446,
		-0.969339, 0.119854, -0.214517,
		-0.066228, 0.713253, 0.697771,
		4.647712, 19.460642, 8.356525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.316670, 19.512402, 7.557353>,  <4.694072, 18.961365, 7.868086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.316670, 19.512402, 7.557353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.546514, 19.639624, 7.858993>,  <4.684420, 19.715958, 8.039977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.546514, 19.639624, 7.858993>,  <4.316670, 19.512402, 7.557353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.546514, 19.639624, 7.858993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427643, 0.668931, -0.607991,
		-0.697816, 0.671842, 0.248358,
		0.574608, 0.318057, 0.754099,
		4.718896, 19.735041, 8.085223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.250304, 20.249805, 7.519366>,  <4.316670, 19.512402, 7.557353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.250304, 20.249805, 7.519366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.589842, 20.175758, 7.717435>,  <4.793564, 20.131330, 7.836276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.589842, 20.175758, 7.717435>,  <4.250304, 20.249805, 7.519366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.589842, 20.175758, 7.717435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475505, 0.676661, -0.562160,
		-0.230996, 0.712643, 0.662405,
		0.848844, -0.185120, 0.495171,
		4.844495, 20.120222, 7.865986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.435170, 20.890703, 7.559941>,  <4.250304, 20.249805, 7.519366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.435170, 20.890703, 7.559941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752158, 20.656614, 7.628651>,  <4.942351, 20.516161, 7.669878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.752158, 20.656614, 7.628651>,  <4.435170, 20.890703, 7.559941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.752158, 20.656614, 7.628651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574457, 0.621566, -0.532593,
		0.204914, 0.520742, 0.828757,
		0.792471, -0.585220, 0.171776,
		4.989900, 20.481049, 7.680184>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.950378, 21.197832, 8.036339>,  <4.435170, 20.890703, 7.559941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.950378, 21.197832, 8.036339> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102191, 20.950399, 7.761149>,  <5.193279, 20.801939, 7.596035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.102191, 20.950399, 7.761149>,  <4.950378, 21.197832, 8.036339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.102191, 20.950399, 7.761149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559060, 0.745834, -0.362192,
		0.737162, -0.247156, 0.628893,
		0.379532, -0.618583, -0.687976,
		5.216051, 20.764824, 7.554756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.735759, 21.040693, 7.936321>,  <4.950378, 21.197832, 8.036339>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.735759, 21.040693, 7.936321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.563093, 21.007078, 7.577076>,  <5.459494, 20.986908, 7.361530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.563093, 21.007078, 7.577076>,  <5.735759, 21.040693, 7.936321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.563093, 21.007078, 7.577076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.673327, 0.632523, -0.382813,
		0.600247, -0.769969, -0.216453,
		-0.431666, -0.084039, -0.898110,
		5.433594, 20.981867, 7.307643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.212790, 21.363869, 7.402831>,  <5.735759, 21.040693, 7.936321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.212790, 21.363869, 7.402831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.870041, 21.330578, 7.199324>,  <5.664392, 21.310602, 7.077220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.870041, 21.330578, 7.199324>,  <6.212790, 21.363869, 7.402831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.870041, 21.330578, 7.199324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197327, 0.858775, -0.472828,
		0.476269, -0.505547, -0.719438,
		-0.856872, -0.083229, -0.508766,
		5.612980, 21.305609, 7.046694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.847594, 22.030527, 7.351198>,  <6.212790, 21.363869, 7.402831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.847594, 22.030527, 7.351198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.536398, 22.281807, 7.347241>,  <5.349680, 22.432575, 7.344867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.536398, 22.281807, 7.347241>,  <5.847594, 22.030527, 7.351198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.536398, 22.281807, 7.347241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.580597, -0.724876, -0.370758,
		-0.240080, -0.282703, 0.928677,
		-0.777990, 0.628199, -0.009892,
		5.303001, 22.470266, 7.344274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.375001, 22.458746, 7.547441>,  <5.847594, 22.030527, 7.351198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.375001, 22.458746, 7.547441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.098444, 22.552256, 7.820886>,  <5.932510, 22.608362, 7.984953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.098444, 22.552256, 7.820886>,  <6.375001, 22.458746, 7.547441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.098444, 22.552256, 7.820886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711271, 0.054226, 0.700823,
		0.126766, 0.970777, -0.203770,
		-0.691393, 0.233776, 0.683612,
		5.891026, 22.622389, 8.025970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.704934, 22.774265, 7.052982>,  <6.375001, 22.458746, 7.547441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.704934, 22.774265, 7.052982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.379396, 22.799284, 6.821898>,  <6.184074, 22.814295, 6.683248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.379396, 22.799284, 6.821898>,  <6.704934, 22.774265, 7.052982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.379396, 22.799284, 6.821898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277509, 0.915324, -0.291839,
		0.510538, -0.397831, -0.762287,
		-0.813843, 0.062546, -0.577710,
		6.135243, 22.818048, 6.648585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.451731, 22.756531, 7.194360>,  <6.704934, 22.774265, 7.052982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.451731, 22.756531, 7.194360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.848484, 22.705919, 7.199415>,  <8.086535, 22.675552, 7.202448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.848484, 22.705919, 7.199415>,  <7.451731, 22.756531, 7.194360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.848484, 22.705919, 7.199415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034021, 0.359833, 0.932396,
		-0.122524, -0.924397, 0.361217,
		0.991882, -0.126530, 0.012639,
		8.146049, 22.667961, 7.203207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.556687, 22.355560, 7.829120>,  <7.451731, 22.756531, 7.194360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.556687, 22.355560, 7.829120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864410, 22.590687, 7.729007>,  <8.049044, 22.731762, 7.668940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.864410, 22.590687, 7.729007>,  <7.556687, 22.355560, 7.829120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.864410, 22.590687, 7.729007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104734, 0.502486, 0.858218,
		0.630236, -0.634021, 0.448130,
		0.769307, 0.587815, -0.250281,
		8.095202, 22.767031, 7.653923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.136320, 22.433001, 8.447715>,  <7.556687, 22.355560, 7.829120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.136320, 22.433001, 8.447715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.101746, 22.750036, 8.206275>,  <8.081001, 22.940258, 8.061411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.101746, 22.750036, 8.206275>,  <8.136320, 22.433001, 8.447715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.101746, 22.750036, 8.206275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023325, 0.604091, 0.796574,
		0.995984, 0.082932, -0.033728,
		-0.086436, 0.792588, -0.603600,
		8.075815, 22.987812, 8.025195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.720929, 22.479963, 8.952047>,  <8.136320, 22.433001, 8.447715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.720929, 22.479963, 8.952047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.467627, 22.602186, 9.236475>,  <8.315645, 22.675520, 9.407131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.467627, 22.602186, 9.236475>,  <8.720929, 22.479963, 8.952047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.467627, 22.602186, 9.236475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178511, -0.951656, 0.249968,
		0.753074, 0.031360, 0.657188,
		-0.633256, 0.305559, 0.711069,
		8.277650, 22.693853, 9.449796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.807539, 22.186390, 9.579412>,  <8.720929, 22.479963, 8.952047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.807539, 22.186390, 9.579412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.430707, 22.315523, 9.615774>,  <8.204608, 22.393003, 9.637591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.430707, 22.315523, 9.615774>,  <8.807539, 22.186390, 9.579412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.430707, 22.315523, 9.615774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242992, -0.843816, 0.478466,
		0.231171, 0.428664, 0.873388,
		-0.942080, 0.322834, 0.090903,
		8.148083, 22.412373, 9.643045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.566397, 22.044451, 10.278034>,  <8.807539, 22.186390, 9.579412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.566397, 22.044451, 10.278034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.256934, 22.061716, 10.025182>,  <8.071257, 22.072075, 9.873470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.256934, 22.061716, 10.025182>,  <8.566397, 22.044451, 10.278034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.256934, 22.061716, 10.025182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378584, -0.831491, 0.406568,
		-0.508063, 0.553859, 0.659630,
		-0.773658, 0.043163, -0.632132,
		8.024837, 22.074665, 9.835542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.037396, 22.029930, 10.713186>,  <8.566397, 22.044451, 10.278034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.037396, 22.029930, 10.713186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.900522, 21.917305, 10.354605>,  <7.818397, 21.849730, 10.139456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.900522, 21.917305, 10.354605>,  <8.037396, 22.029930, 10.713186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.900522, 21.917305, 10.354605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469087, -0.775468, 0.422619,
		-0.814165, 0.565130, 0.133278,
		-0.342188, -0.281562, -0.896454,
		7.797865, 21.832836, 10.085669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.420789, 21.832489, 10.883596>,  <8.037396, 22.029930, 10.713186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.420789, 21.832489, 10.883596> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.506968, 21.655981, 10.535146>,  <7.558675, 21.550076, 10.326076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.506968, 21.655981, 10.535146>,  <7.420789, 21.832489, 10.883596>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.506968, 21.655981, 10.535146> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358282, -0.865584, 0.349854,
		-0.908414, 0.236733, -0.344588,
		0.215447, -0.441272, -0.871126,
		7.571602, 21.523600, 10.273808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.734314, 21.387037, 10.742295>,  <7.420789, 21.832489, 10.883596>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.734314, 21.387037, 10.742295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.025452, 21.235140, 10.513896>,  <7.200134, 21.144001, 10.376857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.025452, 21.235140, 10.513896>,  <6.734314, 21.387037, 10.742295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.025452, 21.235140, 10.513896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174094, -0.907716, 0.381762,
		-0.663275, -0.178456, -0.726787,
		0.727844, -0.379743, -0.570998,
		7.243805, 21.121218, 10.342596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.404178, 20.768089, 10.487523>,  <6.734314, 21.387037, 10.742295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.404178, 20.768089, 10.487523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.800625, 20.722645, 10.459864>,  <7.038493, 20.695379, 10.443268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.800625, 20.722645, 10.459864>,  <6.404178, 20.768089, 10.487523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.800625, 20.722645, 10.459864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075573, -0.908902, 0.410105,
		-0.109441, -0.401236, -0.909413,
		0.991116, -0.113609, -0.069148,
		7.097960, 20.688562, 10.439119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.573275, 20.128063, 10.063848>,  <6.404178, 20.768089, 10.487523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.573275, 20.128063, 10.063848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.892439, 20.206974, 10.291679>,  <7.083938, 20.254320, 10.428378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.892439, 20.206974, 10.291679>,  <6.573275, 20.128063, 10.063848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.892439, 20.206974, 10.291679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018898, -0.936274, 0.350761,
		0.602479, -0.290640, -0.743336,
		0.797911, 0.197279, 0.569578,
		7.131812, 20.266157, 10.462553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.049008, 19.727755, 9.755575>,  <6.573275, 20.128063, 10.063848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.049008, 19.727755, 9.755575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.168015, 19.801746, 10.130225>,  <7.239420, 19.846142, 10.355015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.168015, 19.801746, 10.130225>,  <7.049008, 19.727755, 9.755575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.168015, 19.801746, 10.130225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052539, -0.982736, 0.177399,
		0.953269, -0.003570, -0.302101,
		0.297518, 0.184981, 0.936624,
		7.257271, 19.857241, 10.411213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.545219, 19.161858, 9.942456>,  <7.049008, 19.727755, 9.755575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.545219, 19.161858, 9.942456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464335, 19.331636, 10.295490>,  <7.415805, 19.433504, 10.507311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.464335, 19.331636, 10.295490>,  <7.545219, 19.161858, 9.942456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.464335, 19.331636, 10.295490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026763, -0.903260, 0.428259,
		0.978977, 0.062977, 0.194006,
		-0.202208, 0.424448, 0.882585,
		7.403673, 19.458971, 10.560266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.046233, 18.858812, 10.481898>,  <7.545219, 19.161858, 9.942456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.046233, 18.858812, 10.481898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.717968, 18.985617, 10.672063>,  <7.521009, 19.061699, 10.786161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.717968, 18.985617, 10.672063>,  <8.046233, 18.858812, 10.481898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.717968, 18.985617, 10.672063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005107, -0.827889, 0.560868,
		0.571390, 0.462711, 0.677799,
		-0.820663, 0.317013, 0.475411,
		7.471769, 19.080721, 10.814686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.148541, 18.569012, 11.124419>,  <8.046233, 18.858812, 10.481898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.148541, 18.569012, 11.124419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.764631, 18.679703, 11.143386>,  <7.534284, 18.746117, 11.154766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.764631, 18.679703, 11.143386>,  <8.148541, 18.569012, 11.124419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.764631, 18.679703, 11.143386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226638, -0.863315, 0.450912,
		0.165717, 0.422028, 0.891308,
		-0.959778, 0.276728, 0.047418,
		7.476697, 18.762722, 11.157611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.985365, 18.393793, 11.760884>,  <8.148541, 18.569012, 11.124419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.985365, 18.393793, 11.760884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.621067, 18.436924, 11.601428>,  <7.402487, 18.462803, 11.505754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.621067, 18.436924, 11.601428>,  <7.985365, 18.393793, 11.760884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.621067, 18.436924, 11.601428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311752, -0.812594, 0.492445,
		-0.270835, 0.572769, 0.773682,
		-0.910746, 0.107825, -0.398641,
		7.347843, 18.469271, 11.481835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.539119, 18.122641, 12.273420>,  <7.985365, 18.393793, 11.760884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.539119, 18.122641, 12.273420> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.328673, 18.103765, 11.933779>,  <7.202406, 18.092442, 11.729994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.328673, 18.103765, 11.933779>,  <7.539119, 18.122641, 12.273420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.328673, 18.103765, 11.933779> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437645, -0.841071, 0.317909,
		-0.729158, 0.538863, 0.421849,
		-0.526114, -0.047186, -0.849104,
		7.170839, 18.089609, 11.679048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.885707, 17.984392, 12.491749>,  <7.539119, 18.122641, 12.273420>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.885707, 17.984392, 12.491749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.909600, 17.874437, 12.107902>,  <6.923936, 17.808464, 11.877593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.909600, 17.874437, 12.107902>,  <6.885707, 17.984392, 12.491749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.909600, 17.874437, 12.107902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.349826, -0.906133, 0.237790,
		-0.934909, 0.321496, -0.150288,
		0.059732, -0.274887, -0.959619,
		6.927520, 17.791971, 11.820016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.195660, 17.719391, 12.222645>,  <6.885707, 17.984392, 12.491749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.195660, 17.719391, 12.222645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.449633, 17.557327, 11.959522>,  <6.602016, 17.460089, 11.801649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.449633, 17.557327, 11.959522>,  <6.195660, 17.719391, 12.222645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.449633, 17.557327, 11.959522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394895, -0.902019, 0.174410,
		-0.664017, 0.149025, -0.732716,
		0.634932, -0.405158, -0.657805,
		6.640112, 17.435780, 11.762180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.818009, 17.274872, 11.850439>,  <6.195660, 17.719391, 12.222645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.818009, 17.274872, 11.850439> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.191208, 17.143166, 11.792333>,  <6.415127, 17.064142, 11.757469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.191208, 17.143166, 11.792333>,  <5.818009, 17.274872, 11.850439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.191208, 17.143166, 11.792333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281549, -0.919220, 0.275253,
		-0.224162, -0.215911, -0.950333,
		0.932996, -0.329267, -0.145265,
		6.471107, 17.044386, 11.748754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.740207, 16.740440, 11.385416>,  <5.818009, 17.274872, 11.850439>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.740207, 16.740440, 11.385416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.091442, 16.672451, 11.564333>,  <6.302183, 16.631657, 11.671683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.091442, 16.672451, 11.564333>,  <5.740207, 16.740440, 11.385416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.091442, 16.672451, 11.564333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186413, -0.982444, -0.007386,
		0.440696, -0.076895, -0.894357,
		0.878087, -0.169975, 0.447293,
		6.354868, 16.621458, 11.698521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.054560, 16.286654, 10.986874>,  <5.740207, 16.740440, 11.385416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.054560, 16.286654, 10.986874> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.254993, 16.244656, 11.330476>,  <6.375253, 16.219458, 11.536637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.254993, 16.244656, 11.330476>,  <6.054560, 16.286654, 10.986874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.254993, 16.244656, 11.330476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213983, -0.976822, 0.005428,
		0.838526, -0.186533, -0.511936,
		0.501083, -0.104994, 0.859006,
		6.405318, 16.213158, 11.588178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.230044, 15.595137, 10.993984>,  <6.054560, 16.286654, 10.986874>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.230044, 15.595137, 10.993984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.259094, 15.681429, 11.383484>,  <6.276525, 15.733205, 11.617184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.259094, 15.681429, 11.383484>,  <6.230044, 15.595137, 10.993984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.259094, 15.681429, 11.383484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269983, -0.935622, 0.227421,
		0.960122, -0.279412, -0.009706,
		0.072625, 0.215732, 0.973748,
		6.280882, 15.746148, 11.675609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.623792, 15.006699, 11.313778>,  <6.230044, 15.595137, 10.993984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.623792, 15.006699, 11.313778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.430193, 15.178001, 11.619023>,  <6.314034, 15.280783, 11.802171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.430193, 15.178001, 11.619023>,  <6.623792, 15.006699, 11.313778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.430193, 15.178001, 11.619023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277008, -0.902196, 0.330619,
		0.830068, -0.051369, 0.555291,
		-0.483998, 0.428256, 0.763114,
		6.284994, 15.306479, 11.847958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.758341, 14.601647, 11.943326>,  <6.623792, 15.006699, 11.313778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.758341, 14.601647, 11.943326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.419914, 14.801133, 12.018640>,  <6.216857, 14.920825, 12.063828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.419914, 14.801133, 12.018640>,  <6.758341, 14.601647, 11.943326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.419914, 14.801133, 12.018640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429944, -0.847212, 0.312058,
		0.315144, 0.183071, 0.931219,
		-0.846069, 0.498715, 0.188283,
		6.166093, 14.950747, 12.075125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.542011, 14.667714, 12.742414>,  <6.758341, 14.601647, 11.943326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.542011, 14.667714, 12.742414> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.236783, 14.671429, 12.483914>,  <6.053646, 14.673657, 12.328815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<6.236783, 14.671429, 12.483914>,  <6.542011, 14.667714, 12.742414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<6.236783, 14.671429, 12.483914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401306, -0.790604, 0.462492,
		-0.506631, 0.612258, 0.607014,
		-0.763072, 0.009285, -0.646248,
		6.007861, 14.674214, 12.290040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.980913, 14.598154, 13.328978>,  <6.542011, 14.667714, 12.742414>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.980913, 14.598154, 13.328978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.368328, 14.522791, 13.394014>,  <7.600777, 14.477573, 13.433036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.368328, 14.522791, 13.394014>,  <6.980913, 14.598154, 13.328978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.368328, 14.522791, 13.394014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.029833, 0.560719, 0.827469,
		-0.247070, -0.806286, 0.537457,
		0.968538, -0.188408, 0.162591,
		7.658890, 14.466269, 13.442792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.933371, 14.505517, 14.023028>,  <6.980913, 14.598154, 13.328978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.933371, 14.505517, 14.023028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.308165, 14.598662, 13.918847>,  <7.533041, 14.654550, 13.856339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.308165, 14.598662, 13.918847>,  <6.933371, 14.505517, 14.023028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.308165, 14.598662, 13.918847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122509, 0.479161, 0.869135,
		0.327188, -0.846274, 0.420438,
		0.936984, 0.232863, -0.260452,
		7.589260, 14.668522, 13.840712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.367504, 14.408196, 14.543133>,  <6.933371, 14.505517, 14.023028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.367504, 14.408196, 14.543133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.531833, 14.703648, 14.329347>,  <7.630430, 14.880919, 14.201075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.531833, 14.703648, 14.329347>,  <7.367504, 14.408196, 14.543133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.531833, 14.703648, 14.329347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061225, 0.607247, 0.792151,
		0.909658, -0.292710, 0.294692,
		0.410821, 0.738629, -0.534465,
		7.655079, 14.925236, 14.169007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.077058, 14.535033, 14.783963>,  <7.367504, 14.408196, 14.543133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.077058, 14.535033, 14.783963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.890602, 14.868774, 14.666272>,  <7.778728, 15.069019, 14.595657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<7.890602, 14.868774, 14.666272>,  <8.077058, 14.535033, 14.783963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<7.890602, 14.868774, 14.666272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219770, 0.431347, 0.875009,
		0.856980, 0.343214, -0.384433,
		-0.466140, 0.834352, -0.294228,
		7.750760, 15.119081, 14.578004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.413912, 15.259031, 14.606482>,  <8.077058, 14.535033, 14.783963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.413912, 15.259031, 14.606482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078467, 15.304310, 14.819618>,  <7.877201, 15.331477, 14.947500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.078467, 15.304310, 14.819618>,  <8.413912, 15.259031, 14.606482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.078467, 15.304310, 14.819618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508583, 0.513096, 0.691430,
		-0.195131, 0.850834, -0.487858,
		-0.838610, 0.113197, 0.532841,
		7.826884, 15.338269, 14.979470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.239130, 15.951394, 14.560298>,  <8.413912, 15.259031, 14.606482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.239130, 15.951394, 14.560298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.149120, 15.762829, 14.901386>,  <8.095115, 15.649690, 15.106039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.149120, 15.762829, 14.901386>,  <8.239130, 15.951394, 14.560298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.149120, 15.762829, 14.901386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668797, 0.561713, 0.487021,
		-0.708573, 0.679889, 0.188880,
		-0.225024, -0.471412, 0.852722,
		8.081614, 15.621405, 15.157203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.020348, 16.415932, 15.148229>,  <8.239130, 15.951394, 14.560298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.020348, 16.415932, 15.148229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180249, 16.070480, 15.271091>,  <8.276191, 15.863210, 15.344808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.180249, 16.070480, 15.271091>,  <8.020348, 16.415932, 15.148229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.180249, 16.070480, 15.271091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633996, 0.502521, 0.587811,
		-0.662001, -0.040246, 0.748421,
		0.399755, -0.863627, 0.307154,
		8.300176, 15.811392, 15.363236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.955863, 16.496511, 15.794843>,  <8.020348, 16.415932, 15.148229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.955863, 16.496511, 15.794843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.248044, 16.227057, 15.749858>,  <8.423353, 16.065384, 15.722867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.248044, 16.227057, 15.749858>,  <7.955863, 16.496511, 15.794843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.248044, 16.227057, 15.749858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576864, 0.520404, 0.629609,
		-0.365604, -0.524776, 0.768729,
		0.730453, -0.673639, -0.112463,
		8.467180, 16.024965, 15.716119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.209298, 16.331285, 16.469675>,  <7.955863, 16.496511, 15.794843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.209298, 16.331285, 16.469675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.500163, 16.262516, 16.203840>,  <8.674682, 16.221254, 16.044338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.500163, 16.262516, 16.203840>,  <8.209298, 16.331285, 16.469675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.500163, 16.262516, 16.203840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638913, 0.523559, 0.563628,
		0.251050, -0.834463, 0.490556,
		0.727161, -0.171924, -0.664589,
		8.718311, 16.210939, 16.004463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.711379, 16.271360, 16.970997>,  <8.209298, 16.331285, 16.469675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.711379, 16.271360, 16.970997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.918519, 16.245684, 16.629774>,  <9.042803, 16.230278, 16.425039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.918519, 16.245684, 16.629774>,  <8.711379, 16.271360, 16.970997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.918519, 16.245684, 16.629774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842357, 0.212196, 0.495386,
		0.149216, -0.975116, 0.163959,
		0.517851, -0.064192, -0.853059,
		9.073874, 16.226427, 16.373856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.218220, 15.702342, 16.996725>,  <8.711379, 16.271360, 16.970997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.218220, 15.702342, 16.996725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.335492, 15.960106, 16.714228>,  <9.405856, 16.114763, 16.544729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.335492, 15.960106, 16.714228>,  <9.218220, 15.702342, 16.996725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.335492, 15.960106, 16.714228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879580, 0.107692, 0.463401,
		0.374677, -0.757060, -0.535236,
		0.293182, 0.644409, -0.706245,
		9.423447, 16.153429, 16.502354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.905107, 15.600512, 16.949665>,  <9.218220, 15.702342, 16.996725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.905107, 15.600512, 16.949665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.877254, 15.972339, 16.804857>,  <9.860541, 16.195435, 16.717974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.877254, 15.972339, 16.804857>,  <9.905107, 15.600512, 16.949665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.877254, 15.972339, 16.804857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889305, 0.222269, 0.399667,
		0.451982, -0.294113, -0.842146,
		-0.069635, 0.929567, -0.362017,
		9.856363, 16.251209, 16.696253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.528218, 15.714194, 16.537064>,  <9.905107, 15.600512, 16.949665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.528218, 15.714194, 16.537064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.380809, 16.059015, 16.676235>,  <10.292363, 16.265907, 16.759739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.380809, 16.059015, 16.676235>,  <10.528218, 15.714194, 16.537064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.380809, 16.059015, 16.676235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917646, 0.277467, 0.284495,
		0.148710, 0.424120, -0.893313,
		-0.368524, 0.862053, 0.347930,
		10.270251, 16.317631, 16.780615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.017533, 16.258778, 16.444225>,  <10.528218, 15.714194, 16.537064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.017533, 16.258778, 16.444225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.779718, 16.414722, 16.725517>,  <10.637030, 16.508289, 16.894293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.779718, 16.414722, 16.725517>,  <11.017533, 16.258778, 16.444225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.779718, 16.414722, 16.725517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781803, 0.484678, 0.392266,
		-0.187912, 0.783005, -0.592953,
		-0.594537, 0.389860, 0.703232,
		10.601357, 16.531681, 16.936487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.275488, 16.886381, 16.491190>,  <11.017533, 16.258778, 16.444225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.275488, 16.886381, 16.491190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.056949, 16.836458, 16.822474>,  <10.925825, 16.806505, 17.021244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.056949, 16.836458, 16.822474>,  <11.275488, 16.886381, 16.491190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.056949, 16.836458, 16.822474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759906, 0.341954, 0.552821,
		-0.352204, 0.931392, -0.091985,
		-0.546348, -0.124806, 0.828208,
		10.893044, 16.799017, 17.070936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.421132, 17.515049, 16.968763>,  <11.275488, 16.886381, 16.491190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.421132, 17.515049, 16.968763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.248282, 17.227818, 17.186987>,  <11.144572, 17.055479, 17.317921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.248282, 17.227818, 17.186987>,  <11.421132, 17.515049, 16.968763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.248282, 17.227818, 17.186987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666944, 0.152724, 0.729288,
		-0.607005, 0.679001, 0.412921,
		-0.432124, -0.718076, 0.545560,
		11.118645, 17.012394, 17.350655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.243649, 17.826048, 17.568031>,  <11.421132, 17.515049, 16.968763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.243649, 17.826048, 17.568031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302668, 17.447836, 17.684103>,  <11.338078, 17.220909, 17.753746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.302668, 17.447836, 17.684103>,  <11.243649, 17.826048, 17.568031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.302668, 17.447836, 17.684103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499516, 0.324461, 0.803249,
		-0.853648, 0.026434, 0.520180,
		0.147544, -0.945530, 0.290180,
		11.346931, 17.164177, 17.771156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.130749, 17.774734, 18.286434>,  <11.243649, 17.826048, 17.568031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.130749, 17.774734, 18.286434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319628, 17.427816, 18.223406>,  <11.432955, 17.219666, 18.185589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.319628, 17.427816, 18.223406>,  <11.130749, 17.774734, 18.286434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.319628, 17.427816, 18.223406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422998, 0.066113, 0.903716,
		-0.773371, -0.493384, 0.398083,
		0.472197, -0.867296, -0.157571,
		11.461287, 17.167627, 18.176134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.916999, 17.462507, 19.008884>,  <11.130749, 17.774734, 18.286434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.916999, 17.462507, 19.008884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251540, 17.321188, 18.841223>,  <11.452265, 17.236397, 18.740625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251540, 17.321188, 18.841223>,  <10.916999, 17.462507, 19.008884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251540, 17.321188, 18.841223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494395, 0.155801, 0.855161,
		-0.236823, -0.922445, 0.304975,
		0.836354, -0.353300, -0.419155,
		11.502446, 17.215199, 18.715477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979018, 16.949278, 19.326817>,  <10.916999, 17.462507, 19.008884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.979018, 16.949278, 19.326817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.346165, 17.034077, 19.192606>,  <11.566453, 17.084957, 19.112080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.346165, 17.034077, 19.192606>,  <10.979018, 16.949278, 19.326817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.346165, 17.034077, 19.192606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340756, 0.012487, 0.940069,
		0.203484, -0.977190, -0.060779,
		0.917867, 0.212000, -0.335525,
		11.621525, 17.097677, 19.091949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.380433, 16.439913, 19.724129>,  <10.979018, 16.949278, 19.326817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.380433, 16.439913, 19.724129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626965, 16.712589, 19.566427>,  <11.774883, 16.876196, 19.471807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.626965, 16.712589, 19.566427>,  <11.380433, 16.439913, 19.724129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.626965, 16.712589, 19.566427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522095, 0.021078, 0.852627,
		0.589539, -0.731336, -0.342916,
		0.616329, 0.681692, -0.394253,
		11.811863, 16.917097, 19.448151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.993597, 16.277948, 19.905104>,  <11.380433, 16.439913, 19.724129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.993597, 16.277948, 19.905104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.019067, 16.669886, 19.829369>,  <12.034348, 16.905048, 19.783928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.019067, 16.669886, 19.829369>,  <11.993597, 16.277948, 19.905104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.019067, 16.669886, 19.829369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515415, 0.130173, 0.846996,
		0.854572, -0.151519, -0.496738,
		0.063674, 0.979846, -0.189337,
		12.038169, 16.963839, 19.772568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.772131, 16.514566, 20.130108>,  <11.993597, 16.277948, 19.905104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.772131, 16.514566, 20.130108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.585171, 16.866060, 20.091400>,  <12.472994, 17.076956, 20.068176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.585171, 16.866060, 20.091400>,  <12.772131, 16.514566, 20.130108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.585171, 16.866060, 20.091400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516894, 0.360444, 0.776467,
		0.717186, 0.312903, -0.622684,
		-0.467402, 0.878733, -0.096768,
		12.444950, 17.129681, 20.062370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.335810, 17.018059, 20.242926>,  <12.772131, 16.514566, 20.130108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.335810, 17.018059, 20.242926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.991600, 17.209558, 20.312553>,  <12.785074, 17.324457, 20.354330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.991600, 17.209558, 20.312553>,  <13.335810, 17.018059, 20.242926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.991600, 17.209558, 20.312553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390667, 0.400912, 0.828643,
		0.326924, 0.781070, -0.532025,
		-0.860523, 0.478748, 0.174070,
		12.733443, 17.353184, 20.364775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.582991, 17.644730, 20.461857>,  <13.335810, 17.018059, 20.242926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.582991, 17.644730, 20.461857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200409, 17.625214, 20.576965>,  <12.970860, 17.613504, 20.646030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.200409, 17.625214, 20.576965>,  <13.582991, 17.644730, 20.461857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.200409, 17.625214, 20.576965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.259038, 0.312461, 0.913930,
		-0.134507, 0.948677, -0.286216,
		-0.956456, -0.048789, 0.287772,
		12.913472, 17.610577, 20.663298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.505320, 18.305323, 20.842041>,  <13.582991, 17.644730, 20.461857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.505320, 18.305323, 20.842041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187592, 18.088028, 20.950815>,  <12.996955, 17.957651, 21.016079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.187592, 18.088028, 20.950815>,  <13.505320, 18.305323, 20.842041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.187592, 18.088028, 20.950815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079356, 0.351007, 0.933004,
		-0.602293, 0.762684, -0.235703,
		-0.794321, -0.543237, 0.271933,
		12.949295, 17.925056, 21.032394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.065607, 18.785427, 21.170095>,  <13.505320, 18.305323, 20.842041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.065607, 18.785427, 21.170095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.975593, 18.422836, 21.313013>,  <12.921584, 18.205282, 21.398764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.975593, 18.422836, 21.313013>,  <13.065607, 18.785427, 21.170095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.975593, 18.422836, 21.313013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096977, 0.344039, 0.933934,
		-0.969512, 0.244819, 0.010486,
		-0.225037, -0.906477, 0.357292,
		12.908081, 18.150892, 21.420200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.506269, 18.839279, 21.696131>,  <13.065607, 18.785427, 21.170095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.506269, 18.839279, 21.696131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657068, 18.476807, 21.772766>,  <12.747547, 18.259323, 21.818747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657068, 18.476807, 21.772766>,  <12.506269, 18.839279, 21.696131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657068, 18.476807, 21.772766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201811, 0.282247, 0.937875,
		-0.903961, -0.314911, 0.289284,
		0.376996, -0.906183, 0.191588,
		12.770167, 18.204952, 21.830242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.258273, 18.754654, 22.399698>,  <12.506269, 18.839279, 21.696131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.258273, 18.754654, 22.399698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531107, 18.471622, 22.325838>,  <12.694807, 18.301804, 22.281523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.531107, 18.471622, 22.325838>,  <12.258273, 18.754654, 22.399698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.531107, 18.471622, 22.325838> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262328, 0.001058, 0.964978,
		-0.682601, -0.706635, 0.186339,
		0.682084, -0.707577, -0.184648,
		12.735732, 18.259350, 22.270443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.333110, 18.466513, 23.077782>,  <12.258273, 18.754654, 22.399698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.333110, 18.466513, 23.077782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.602006, 18.252066, 22.873556>,  <12.763344, 18.123398, 22.751020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.602006, 18.252066, 22.873556>,  <12.333110, 18.466513, 23.077782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.602006, 18.252066, 22.873556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243545, -0.491110, 0.836359,
		-0.699127, -0.686579, -0.199575,
		0.672240, -0.536116, -0.510561,
		12.803678, 18.091230, 22.720388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.231319, 17.698242, 23.354956>,  <12.333110, 18.466513, 23.077782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.231319, 17.698242, 23.354956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590707, 17.833952, 23.243496>,  <12.806339, 17.915379, 23.176620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.590707, 17.833952, 23.243496>,  <12.231319, 17.698242, 23.354956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.590707, 17.833952, 23.243496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396837, -0.356066, 0.846013,
		0.187812, -0.870695, -0.454551,
		0.898469, 0.339274, -0.278651,
		12.860248, 17.935734, 23.159901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.823454, 17.223085, 23.415812>,  <12.231319, 17.698242, 23.354956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.823454, 17.223085, 23.415812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.974974, 17.590431, 23.461624>,  <13.065886, 17.810839, 23.489111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.974974, 17.590431, 23.461624>,  <12.823454, 17.223085, 23.415812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974974, 17.590431, 23.461624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430619, -0.284439, 0.856541,
		0.819194, -0.275137, -0.503211,
		0.378799, 0.918365, 0.114532,
		13.088614, 17.865940, 23.495983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.429729, 17.108168, 23.832684>,  <12.823454, 17.223085, 23.415812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.429729, 17.108168, 23.832684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402169, 17.506819, 23.850515>,  <13.385633, 17.746010, 23.861214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.402169, 17.506819, 23.850515>,  <13.429729, 17.108168, 23.832684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.402169, 17.506819, 23.850515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472310, -0.006774, 0.881407,
		0.878736, 0.081785, -0.470250,
		-0.068901, 0.996627, 0.044580,
		13.381499, 17.805807, 23.863890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.141930, 17.320442, 23.898792>,  <13.429729, 17.108168, 23.832684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.141930, 17.320442, 23.898792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901338, 17.612843, 24.027702>,  <13.756983, 17.788282, 24.105049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.901338, 17.612843, 24.027702>,  <14.141930, 17.320442, 23.898792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.901338, 17.612843, 24.027702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557514, 0.095149, 0.824697,
		0.572188, 0.675712, -0.464773,
		-0.601480, 0.731000, 0.322275,
		13.720894, 17.832142, 24.124386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.622486, 17.808363, 24.078033>,  <14.141930, 17.320442, 23.898792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.622486, 17.808363, 24.078033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.282089, 17.929590, 24.249596>,  <14.077851, 18.002327, 24.352533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.282089, 17.929590, 24.249596>,  <14.622486, 17.808363, 24.078033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.282089, 17.929590, 24.249596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499820, 0.216668, 0.838592,
		0.161220, 0.928011, -0.335862,
		-0.850993, 0.303068, 0.428907,
		14.026792, 18.020512, 24.378267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711329, 18.520773, 24.287735>,  <14.622486, 17.808363, 24.078033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711329, 18.520773, 24.287735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407607, 18.393263, 24.514660>,  <14.225374, 18.316757, 24.650814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.407607, 18.393263, 24.514660>,  <14.711329, 18.520773, 24.287735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.407607, 18.393263, 24.514660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488959, 0.295776, 0.820632,
		-0.429393, 0.900500, -0.068716,
		-0.759303, -0.318774, 0.567311,
		14.179816, 18.297630, 24.684853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.664380, 19.046558, 24.727671>,  <14.711329, 18.520773, 24.287735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.664380, 19.046558, 24.727671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491638, 18.723598, 24.888470>,  <14.387993, 18.529821, 24.984949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.491638, 18.723598, 24.888470>,  <14.664380, 19.046558, 24.727671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.491638, 18.723598, 24.888470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325110, 0.276392, 0.904384,
		-0.841311, 0.521257, 0.143133,
		-0.431856, -0.807402, 0.401998,
		14.362082, 18.481379, 25.009069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.161900, 19.300520, 25.320652>,  <14.664380, 19.046558, 24.727671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.161900, 19.300520, 25.320652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287526, 18.925850, 25.382622>,  <14.362902, 18.701048, 25.419804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.287526, 18.925850, 25.382622>,  <14.161900, 19.300520, 25.320652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.287526, 18.925850, 25.382622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107680, 0.197274, 0.974417,
		-0.943275, -0.289348, 0.162818,
		0.314065, -0.936675, 0.154927,
		14.381745, 18.644848, 25.429100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.798209, 19.018770, 25.937679>,  <14.161900, 19.300520, 25.320652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.798209, 19.018770, 25.937679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.133656, 18.805454, 25.893265>,  <14.334923, 18.677465, 25.866615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.133656, 18.805454, 25.893265>,  <13.798209, 19.018770, 25.937679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.133656, 18.805454, 25.893265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159443, 0.045399, 0.986163,
		-0.520868, -0.844715, 0.123101,
		0.838615, -0.533288, -0.111037,
		14.385240, 18.645468, 25.859953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.895678, 18.749144, 26.502634>,  <13.798209, 19.018770, 25.937679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.895678, 18.749144, 26.502634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.251778, 18.619324, 26.374807>,  <14.465438, 18.541431, 26.298111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.251778, 18.619324, 26.374807>,  <13.895678, 18.749144, 26.502634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.251778, 18.619324, 26.374807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336765, -0.003374, 0.941583,
		-0.306668, -0.945863, 0.106293,
		0.890249, -0.324549, -0.319568,
		14.518852, 18.521959, 26.278936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.032257, 18.311573, 26.959482>,  <13.895678, 18.749144, 26.502634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.032257, 18.311573, 26.959482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390905, 18.331369, 26.783472>,  <14.606094, 18.343246, 26.677866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.390905, 18.331369, 26.783472>,  <14.032257, 18.311573, 26.959482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.390905, 18.331369, 26.783472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437886, -0.246731, 0.864511,
		-0.065782, -0.967819, -0.242896,
		0.896621, 0.049491, -0.440025,
		14.659892, 18.346216, 26.651464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.516438, 17.752720, 27.176201>,  <14.032257, 18.311573, 26.959482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.516438, 17.752720, 27.176201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764237, 18.029428, 27.027782>,  <14.912917, 18.195454, 26.938732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.764237, 18.029428, 27.027782>,  <14.516438, 17.752720, 27.176201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.764237, 18.029428, 27.027782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687730, -0.250387, 0.681421,
		0.378482, -0.677318, -0.630866,
		0.619499, 0.691770, -0.371045,
		14.950088, 18.236959, 26.916470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.219970, 17.445990, 26.962152>,  <14.516438, 17.752720, 27.176201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.219970, 17.445990, 26.962152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.269521, 17.833879, 27.046328>,  <15.299252, 18.066614, 27.096832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.269521, 17.833879, 27.046328>,  <15.219970, 17.445990, 26.962152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.269521, 17.833879, 27.046328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661363, -0.238788, 0.711042,
		0.739766, 0.051095, -0.670921,
		0.123877, 0.969727, 0.210440,
		15.306684, 18.124798, 27.109459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.946095, 17.540241, 26.998398>,  <15.219970, 17.445990, 26.962152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.946095, 17.540241, 26.998398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776851, 17.835400, 27.208727>,  <15.675304, 18.012495, 27.334925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.776851, 17.835400, 27.208727>,  <15.946095, 17.540241, 26.998398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.776851, 17.835400, 27.208727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725933, -0.071214, 0.684068,
		0.542216, 0.671149, -0.505530,
		-0.423111, 0.737894, 0.525823,
		15.649918, 18.056768, 27.366474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.428749, 17.558609, 27.467407>,  <15.946095, 17.540241, 26.998398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.428749, 17.558609, 27.467407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180805, 17.854513, 27.572117>,  <16.032038, 18.032057, 27.634943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.180805, 17.854513, 27.572117>,  <16.428749, 17.558609, 27.467407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.180805, 17.854513, 27.572117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500288, 0.115550, 0.858114,
		0.604552, 0.662874, -0.441719,
		-0.619862, 0.739761, 0.261772,
		15.994846, 18.076441, 27.650648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876909, 18.141876, 27.558558>,  <16.428749, 17.558609, 27.467407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876909, 18.141876, 27.558558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533211, 18.176830, 27.760176>,  <16.326992, 18.197803, 27.881147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533211, 18.176830, 27.760176>,  <16.876909, 18.141876, 27.558558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533211, 18.176830, 27.760176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509122, 0.049922, 0.859245,
		0.049922, 0.994923, -0.087385,
		-0.859245, 0.087385, 0.504045,
		16.275436, 18.203045, 27.911388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.006393, 18.622995, 28.108126>,  <16.876909, 18.141876, 27.558558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.006393, 18.622995, 28.108126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709545, 18.379272, 28.219841>,  <16.531437, 18.233038, 28.286871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.709545, 18.379272, 28.219841>,  <17.006393, 18.622995, 28.108126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.709545, 18.379272, 28.219841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491449, -0.211300, 0.844885,
		-0.455780, 0.764263, 0.456253,
		-0.742120, -0.609307, 0.279290,
		16.486910, 18.196480, 28.303629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.876862, 18.823492, 28.760426>,  <17.006393, 18.622995, 28.108126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.876862, 18.823492, 28.760426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748743, 18.445917, 28.728434>,  <16.671871, 18.219372, 28.709238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.748743, 18.445917, 28.728434>,  <16.876862, 18.823492, 28.760426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.748743, 18.445917, 28.728434> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.346107, -0.195197, 0.917665,
		-0.881828, 0.266242, 0.389223,
		-0.320296, -0.943935, -0.079982,
		16.652655, 18.162737, 28.704439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.236620, 18.602787, 29.166346>,  <16.876862, 18.823492, 28.760426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.236620, 18.602787, 29.166346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.466780, 18.279470, 29.116417>,  <16.604876, 18.085480, 29.086460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.466780, 18.279470, 29.116417>,  <16.236620, 18.602787, 29.166346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.466780, 18.279470, 29.116417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200020, -0.008912, 0.979751,
		-0.793036, -0.588716, 0.156546,
		0.575400, -0.808291, -0.124822,
		16.639400, 18.036983, 29.078970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.102310, 18.053514, 29.610098>,  <16.236620, 18.602787, 29.166346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.102310, 18.053514, 29.610098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.493597, 18.022528, 29.533058>,  <16.728369, 18.003937, 29.486834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.493597, 18.022528, 29.533058>,  <16.102310, 18.053514, 29.610098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.493597, 18.022528, 29.533058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176223, -0.180548, 0.967651,
		-0.109730, -0.980511, -0.162964,
		0.978215, -0.077462, -0.192600,
		16.787062, 17.999289, 29.475279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.424858, 17.572474, 30.061178>,  <16.102310, 18.053514, 29.610098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.424858, 17.572474, 30.061178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718676, 17.822548, 29.955662>,  <16.894966, 17.972593, 29.892351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.718676, 17.822548, 29.955662>,  <16.424858, 17.572474, 30.061178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.718676, 17.822548, 29.955662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314558, 0.030731, 0.948741,
		0.601248, -0.779870, -0.174084,
		0.734544, 0.625187, -0.263791,
		16.939039, 18.010103, 29.876524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.015337, 17.399343, 30.433516>,  <16.424858, 17.572474, 30.061178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.015337, 17.399343, 30.433516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103794, 17.776529, 30.333982>,  <17.156868, 18.002840, 30.274263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.103794, 17.776529, 30.333982>,  <17.015337, 17.399343, 30.433516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.103794, 17.776529, 30.333982> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362985, 0.157233, 0.918433,
		0.905173, -0.293427, -0.307510,
		0.221142, 0.942962, -0.248832,
		17.170137, 18.059418, 30.259333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.798231, 17.498974, 30.773180>,  <17.015337, 17.399343, 30.433516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.798231, 17.498974, 30.773180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.581371, 17.827272, 30.701128>,  <17.451256, 18.024252, 30.657896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.581371, 17.827272, 30.701128>,  <17.798231, 17.498974, 30.773180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.581371, 17.827272, 30.701128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265742, 0.370839, 0.889865,
		0.797153, 0.434573, -0.419158,
		-0.542151, 0.820746, -0.180132,
		17.418726, 18.073496, 30.647089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.723242, 16.722605, 31.013233>,  <17.798231, 17.498974, 30.773180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.723242, 16.722605, 31.013233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.903891, 16.370014, 30.958042>,  <18.012280, 16.158461, 30.924927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.903891, 16.370014, 30.958042>,  <17.723242, 16.722605, 31.013233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.903891, 16.370014, 30.958042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.844735, -0.372675, -0.384105,
		0.287159, 0.290024, -0.912922,
		0.451622, -0.881476, -0.137977,
		18.039377, 16.105572, 30.916649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.308472, 16.614399, 30.569056>,  <17.723242, 16.722605, 31.013233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.308472, 16.614399, 30.569056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.514088, 16.274166, 30.613373>,  <17.637457, 16.070026, 30.639963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.514088, 16.274166, 30.613373>,  <17.308472, 16.614399, 30.569056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.514088, 16.274166, 30.613373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635246, -0.464291, -0.617169,
		0.576393, 0.246868, -0.778992,
		0.514038, -0.850582, 0.110792,
		17.668299, 16.018991, 30.646610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.689232, 16.428062, 29.926580>,  <17.308472, 16.614399, 30.569056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.689232, 16.428062, 29.926580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569414, 16.114452, 30.144049>,  <17.497522, 15.926287, 30.274530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.569414, 16.114452, 30.144049>,  <17.689232, 16.428062, 29.926580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.569414, 16.114452, 30.144049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.597210, -0.290313, -0.747702,
		0.744051, -0.548658, -0.381265,
		-0.299546, -0.784024, 0.543671,
		17.479549, 15.879245, 30.307150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.427679, 15.834555, 29.465086>,  <17.689232, 16.428062, 29.926580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.427679, 15.834555, 29.465086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.226456, 15.840908, 29.810728>,  <17.105721, 15.844720, 30.018114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.226456, 15.840908, 29.810728>,  <17.427679, 15.834555, 29.465086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.226456, 15.840908, 29.810728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827609, -0.296898, -0.476356,
		0.248985, -0.954777, 0.162503,
		-0.503060, 0.015883, 0.864106,
		17.075537, 15.845674, 30.069960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.113733, 15.205937, 29.598246>,  <17.427679, 15.834555, 29.465086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.113733, 15.205937, 29.598246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903746, 15.492455, 29.782129>,  <16.777754, 15.664365, 29.892460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.903746, 15.492455, 29.782129>,  <17.113733, 15.205937, 29.598246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.903746, 15.492455, 29.782129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.789315, -0.207655, -0.577808,
		-0.318420, -0.666184, 0.674394,
		-0.524967, 0.716294, 0.459708,
		16.746256, 15.707343, 29.920042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.608541, 14.859921, 29.955696>,  <17.113733, 15.205937, 29.598246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.608541, 14.859921, 29.955696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533649, 15.234880, 29.838238>,  <16.488714, 15.459856, 29.767763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.533649, 15.234880, 29.838238>,  <16.608541, 14.859921, 29.955696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.533649, 15.234880, 29.838238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711000, -0.335587, -0.617948,
		-0.677808, 0.093086, 0.729322,
		-0.187229, 0.937399, -0.293648,
		16.477480, 15.516100, 29.750143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.892324, 15.007746, 29.984707>,  <16.608541, 14.859921, 29.955696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.892324, 15.007746, 29.984707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027994, 15.275322, 29.720139>,  <16.109396, 15.435867, 29.561398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.027994, 15.275322, 29.720139>,  <15.892324, 15.007746, 29.984707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.027994, 15.275322, 29.720139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697370, -0.293099, -0.654040,
		-0.631375, 0.683091, 0.367087,
		0.339175, 0.668940, -0.661423,
		16.129747, 15.476004, 29.521711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.321153, 15.248366, 29.677795>,  <15.892324, 15.007746, 29.984707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.321153, 15.248366, 29.677795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588468, 15.373298, 29.407732>,  <15.748857, 15.448256, 29.245693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.588468, 15.373298, 29.407732>,  <15.321153, 15.248366, 29.677795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.588468, 15.373298, 29.407732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685273, -0.094694, -0.722104,
		-0.289468, 0.945243, 0.150747,
		0.668288, 0.312329, -0.675160,
		15.788954, 15.466996, 29.205183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.902910, 15.780164, 29.387897>,  <15.321153, 15.248366, 29.677795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.902910, 15.780164, 29.387897> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196514, 15.670687, 29.139278>,  <15.372677, 15.605000, 28.990107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.196514, 15.670687, 29.139278>,  <14.902910, 15.780164, 29.387897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.196514, 15.670687, 29.139278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.667161, -0.119465, -0.735272,
		0.126984, 0.954370, -0.270285,
		0.734011, -0.273692, -0.621548,
		15.416718, 15.588579, 28.952814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.609445, 16.024544, 28.847240>,  <14.902910, 15.780164, 29.387897>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.609445, 16.024544, 28.847240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889412, 15.762722, 28.732925>,  <15.057392, 15.605629, 28.664335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.889412, 15.762722, 28.732925>,  <14.609445, 16.024544, 28.847240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.889412, 15.762722, 28.732925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430054, -0.066760, -0.900332,
		0.570235, 0.753063, -0.328219,
		0.699918, -0.654553, -0.285789,
		15.099387, 15.566357, 28.647188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.951054, 16.306267, 28.284771>,  <14.609445, 16.024544, 28.847240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.951054, 16.306267, 28.284771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973058, 15.907443, 28.263437>,  <14.986260, 15.668149, 28.250637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.973058, 15.907443, 28.263437>,  <14.951054, 16.306267, 28.284771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.973058, 15.907443, 28.263437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442476, 0.023542, -0.896471,
		0.895091, 0.072916, -0.439880,
		0.055011, -0.997060, -0.053335,
		14.989561, 15.608325, 28.247437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711474, 16.212002, 27.521832>,  <14.951054, 16.306267, 28.284771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711474, 16.212002, 27.521832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.741977, 15.833720, 27.648214>,  <14.760278, 15.606751, 27.724043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.741977, 15.833720, 27.648214>,  <14.711474, 16.212002, 27.521832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.741977, 15.833720, 27.648214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419106, -0.317926, -0.850455,
		0.904729, -0.067567, -0.420594,
		0.076256, -0.945705, 0.315955,
		14.764853, 15.550009, 27.743000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.086520, 15.917739, 26.993309>,  <14.711474, 16.212002, 27.521832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.086520, 15.917739, 26.993309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875801, 15.651815, 27.205164>,  <14.749370, 15.492261, 27.332277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.875801, 15.651815, 27.205164>,  <15.086520, 15.917739, 26.993309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.875801, 15.651815, 27.205164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467226, -0.294043, -0.833810,
		0.710060, -0.686707, -0.155715,
		-0.526796, -0.664809, 0.529636,
		14.717762, 15.452373, 27.364056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.063002, 15.293150, 26.606554>,  <15.086520, 15.917739, 26.993309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.063002, 15.293150, 26.606554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737384, 15.267644, 26.837471>,  <14.542013, 15.252340, 26.976021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.737384, 15.267644, 26.837471>,  <15.063002, 15.293150, 26.606554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.737384, 15.267644, 26.837471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566344, -0.133244, -0.813327,
		0.128783, -0.989030, 0.072353,
		-0.814045, -0.063767, 0.577291,
		14.493170, 15.248515, 27.010658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.692632, 14.835341, 26.264301>,  <15.063002, 15.293150, 26.606554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.692632, 14.835341, 26.264301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.419041, 15.019254, 26.490849>,  <14.254886, 15.129601, 26.626778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.419041, 15.019254, 26.490849>,  <14.692632, 14.835341, 26.264301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.419041, 15.019254, 26.490849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639476, -0.004270, -0.768799,
		-0.351061, -0.888022, 0.296940,
		-0.683978, 0.459781, 0.566369,
		14.213847, 15.157188, 26.660759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.063140, 14.506879, 26.011858>,  <14.692632, 14.835341, 26.264301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.063140, 14.506879, 26.011858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968728, 14.852473, 26.189764>,  <13.912081, 15.059830, 26.296509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.968728, 14.852473, 26.189764>,  <14.063140, 14.506879, 26.011858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.968728, 14.852473, 26.189764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588676, 0.237026, -0.772838,
		-0.773143, -0.444236, 0.452663,
		-0.236030, 0.863986, 0.444766,
		13.897919, 15.111670, 26.323195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.354013, 14.432963, 26.215590>,  <14.063140, 14.506879, 26.011858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.354013, 14.432963, 26.215590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446240, 14.818445, 26.161757>,  <13.501576, 15.049734, 26.129457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.446240, 14.818445, 26.161757>,  <13.354013, 14.432963, 26.215590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.446240, 14.818445, 26.161757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582851, 0.026029, -0.812162,
		-0.779181, 0.265701, 0.567697,
		0.230569, 0.963704, -0.134583,
		13.515411, 15.107556, 26.121382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.718838, 14.673387, 26.034208>,  <13.354013, 14.432963, 26.215590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.718838, 14.673387, 26.034208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.965134, 14.969478, 25.926188>,  <13.112911, 15.147133, 25.861376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.965134, 14.969478, 25.926188>,  <12.718838, 14.673387, 26.034208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.965134, 14.969478, 25.926188> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641361, 0.271737, -0.717506,
		-0.457736, 0.614997, 0.642073,
		0.615739, 0.740229, -0.270051,
		13.149856, 15.191546, 25.845173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.289632, 15.388658, 25.923607>,  <12.718838, 14.673387, 26.034208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.289632, 15.388658, 25.923607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622272, 15.416350, 25.703190>,  <12.821856, 15.432966, 25.570940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.622272, 15.416350, 25.703190>,  <12.289632, 15.388658, 25.923607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.622272, 15.416350, 25.703190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552908, 0.196658, -0.809703,
		0.052309, 0.978025, 0.201819,
		0.831599, 0.069233, -0.551045,
		12.871751, 15.437120, 25.537876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.233802, 15.900743, 25.267887>,  <12.289632, 15.388658, 25.923607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.233802, 15.900743, 25.267887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543387, 15.666072, 25.172565>,  <12.729139, 15.525270, 25.115372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.543387, 15.666072, 25.172565>,  <12.233802, 15.900743, 25.267887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.543387, 15.666072, 25.172565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.377046, -0.124619, -0.917773,
		0.508739, 0.800175, -0.317654,
		0.773965, -0.586677, -0.238304,
		12.775577, 15.490068, 25.101074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.570955, 16.170956, 24.663555>,  <12.233802, 15.900743, 25.267887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.570955, 16.170956, 24.663555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.701318, 15.793134, 24.679558>,  <12.779535, 15.566441, 24.689159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.701318, 15.793134, 24.679558>,  <12.570955, 16.170956, 24.663555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.701318, 15.793134, 24.679558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200339, -0.110356, -0.973492,
		0.923932, 0.309252, -0.225197,
		0.325906, -0.944556, 0.040006,
		12.799089, 15.509768, 24.691559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.729391, 16.200689, 24.092670>,  <12.570955, 16.170956, 24.663555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.729391, 16.200689, 24.092670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.750891, 15.812761, 24.187798>,  <12.763790, 15.580004, 24.244873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.750891, 15.812761, 24.187798>,  <12.729391, 16.200689, 24.092670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.750891, 15.812761, 24.187798> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105405, -0.242342, -0.964448,
		0.992976, 0.026770, -0.115250,
		0.053748, -0.969822, 0.237818,
		12.767015, 15.521815, 24.259144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.235751, 15.840603, 23.679390>,  <12.729391, 16.200689, 24.092670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.235751, 15.840603, 23.679390> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971012, 15.560860, 23.787357>,  <12.812169, 15.393014, 23.852137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.971012, 15.560860, 23.787357>,  <13.235751, 15.840603, 23.679390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.971012, 15.560860, 23.787357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164945, -0.215378, -0.962500,
		0.731267, -0.681549, 0.027192,
		-0.661847, -0.699359, 0.269917,
		12.772458, 15.351052, 23.868332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.207735, 15.355824, 23.171844>,  <13.235751, 15.840603, 23.679390>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.207735, 15.355824, 23.171844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.892053, 15.207088, 23.367350>,  <12.702643, 15.117847, 23.484653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.892053, 15.207088, 23.367350>,  <13.207735, 15.355824, 23.171844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.892053, 15.207088, 23.367350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266017, -0.510343, -0.817793,
		0.553524, -0.775426, 0.303850,
		-0.789205, -0.371839, 0.488764,
		12.655291, 15.095537, 23.513979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.126759, 14.558809, 23.090094>,  <13.207735, 15.355824, 23.171844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.126759, 14.558809, 23.090094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766673, 14.705911, 23.183365>,  <12.550622, 14.794171, 23.239328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.766673, 14.705911, 23.183365>,  <13.126759, 14.558809, 23.090094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.766673, 14.705911, 23.183365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397051, -0.473360, -0.786308,
		-0.178790, -0.800430, 0.572142,
		-0.900214, 0.367753, 0.233179,
		12.496609, 14.816236, 23.253319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.720192, 13.928576, 22.995939>,  <13.126759, 14.558809, 23.090094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.720192, 13.928576, 22.995939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.504996, 14.265300, 22.978378>,  <12.375879, 14.467334, 22.967842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.504996, 14.265300, 22.978378>,  <12.720192, 13.928576, 22.995939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.504996, 14.265300, 22.978378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404172, -0.303307, -0.862931,
		-0.739739, -0.446502, 0.503411,
		-0.537989, 0.841808, -0.043904,
		12.343599, 14.517842, 22.965206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.161730, 13.672030, 22.732000>,  <12.720192, 13.928576, 22.995939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.161730, 13.672030, 22.732000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144552, 14.068051, 22.678408>,  <12.134246, 14.305664, 22.646252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.144552, 14.068051, 22.678408>,  <12.161730, 13.672030, 22.732000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.144552, 14.068051, 22.678408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504218, -0.137253, -0.852600,
		-0.862508, 0.030942, 0.505096,
		-0.042944, 0.990052, -0.133983,
		12.131669, 14.365067, 22.638212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.501698, 13.787715, 22.640697>,  <12.161730, 13.672030, 22.732000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.501698, 13.787715, 22.640697> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671409, 14.103186, 22.462719>,  <11.773234, 14.292468, 22.355932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.671409, 14.103186, 22.462719>,  <11.501698, 13.787715, 22.640697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.671409, 14.103186, 22.462719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594630, -0.127928, -0.793757,
		-0.682939, 0.601350, 0.414695,
		0.424275, 0.788678, -0.444948,
		11.798691, 14.339788, 22.329235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.913160, 14.280381, 22.371536>,  <11.501698, 13.787715, 22.640697>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.913160, 14.280381, 22.371536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251187, 14.315524, 22.160580>,  <11.454003, 14.336610, 22.034006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.251187, 14.315524, 22.160580>,  <10.913160, 14.280381, 22.371536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.251187, 14.315524, 22.160580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528594, -0.010873, -0.848805,
		-0.080309, 0.996074, 0.037253,
		0.845067, 0.087858, -0.527392,
		11.504707, 14.341882, 22.002361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.603109, 14.642070, 21.817997>,  <10.913160, 14.280381, 22.371536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.603109, 14.642070, 21.817997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969733, 14.555594, 21.683426>,  <11.189708, 14.503710, 21.602684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.969733, 14.555594, 21.683426>,  <10.603109, 14.642070, 21.817997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.969733, 14.555594, 21.683426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345502, -0.004475, -0.938407,
		0.201366, 0.976341, -0.078795,
		0.916559, -0.216188, -0.336427,
		11.244700, 14.490738, 21.582499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.538921, 14.879095, 21.155233>,  <10.603109, 14.642070, 21.817997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.538921, 14.879095, 21.155233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.880206, 14.671232, 21.137407>,  <11.084977, 14.546515, 21.126713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.880206, 14.671232, 21.137407>,  <10.538921, 14.879095, 21.155233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.880206, 14.671232, 21.137407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069634, -0.028817, -0.997156,
		0.516896, 0.853888, -0.060772,
		0.853211, -0.519658, -0.044564,
		11.136169, 14.515335, 21.124039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.025405, 15.118029, 20.682659>,  <10.538921, 14.879095, 21.155233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.025405, 15.118029, 20.682659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.117803, 14.729626, 20.707277>,  <11.173242, 14.496584, 20.722048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.117803, 14.729626, 20.707277>,  <11.025405, 15.118029, 20.682659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.117803, 14.729626, 20.707277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228941, -0.115727, -0.966537,
		0.945636, 0.209174, -0.249035,
		0.230995, -0.971006, 0.061547,
		11.187101, 14.438324, 20.725742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.339720, 15.066833, 20.115078>,  <11.025405, 15.118029, 20.682659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.339720, 15.066833, 20.115078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261525, 14.691224, 20.228230>,  <11.214608, 14.465858, 20.296120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.261525, 14.691224, 20.228230>,  <11.339720, 15.066833, 20.115078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.261525, 14.691224, 20.228230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150631, -0.256272, -0.954796,
		0.969069, -0.229259, -0.091349,
		-0.195485, -0.939023, 0.282879,
		11.202880, 14.409517, 20.313093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.576471, 14.560063, 19.619457>,  <11.339720, 15.066833, 20.115078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.576471, 14.560063, 19.619457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295071, 14.366892, 19.828020>,  <11.126230, 14.250989, 19.953157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.295071, 14.366892, 19.828020>,  <11.576471, 14.560063, 19.619457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.295071, 14.366892, 19.828020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386604, -0.355568, -0.850946,
		0.596343, -0.800219, 0.063440,
		-0.703501, -0.482929, 0.521408,
		11.084021, 14.222013, 19.984442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.408252, 13.852800, 19.237484>,  <11.576471, 14.560063, 19.619457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.408252, 13.852800, 19.237484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099687, 13.884153, 19.490080>,  <10.914548, 13.902965, 19.641638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.099687, 13.884153, 19.490080>,  <11.408252, 13.852800, 19.237484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.099687, 13.884153, 19.490080> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635566, -0.143720, -0.758552,
		0.031302, -0.986510, 0.160683,
		-0.771412, 0.078380, 0.631491,
		10.868263, 13.907668, 19.679527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.061649, 13.196603, 19.157761>,  <11.408252, 13.852800, 19.237484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.061649, 13.196603, 19.157761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.803872, 13.477425, 19.278961>,  <10.649205, 13.645918, 19.351683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.803872, 13.477425, 19.278961>,  <11.061649, 13.196603, 19.157761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.803872, 13.477425, 19.278961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459386, -0.038694, -0.887394,
		-0.611275, -0.711070, 0.347451,
		-0.644444, 0.702056, 0.303003,
		10.610539, 13.688042, 19.369862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.447942, 12.885091, 18.903238>,  <11.061649, 13.196603, 19.157761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.447942, 12.885091, 18.903238> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.367975, 13.266272, 18.994377>,  <10.319995, 13.494980, 19.049061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.367975, 13.266272, 18.994377>,  <10.447942, 12.885091, 18.903238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.367975, 13.266272, 18.994377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706312, 0.021008, -0.707589,
		-0.679085, -0.302391, 0.668882,
		-0.199917, 0.952952, 0.227849,
		10.308000, 13.552157, 19.062733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.747891, 12.942855, 19.004810>,  <10.447942, 12.885091, 18.903238>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.747891, 12.942855, 19.004810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.885118, 13.301602, 18.893145>,  <9.967453, 13.516851, 18.826145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.885118, 13.301602, 18.893145>,  <9.747891, 12.942855, 19.004810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.885118, 13.301602, 18.893145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642881, 0.007506, -0.765930,
		-0.684843, 0.442232, 0.579155,
		0.343066, 0.896869, -0.279163,
		9.988037, 13.570663, 18.809397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.099260, 13.377145, 18.882206>,  <9.747891, 12.942855, 19.004810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.099260, 13.377145, 18.882206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.406397, 13.570348, 18.713861>,  <9.590679, 13.686270, 18.612856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.406397, 13.570348, 18.713861>,  <9.099260, 13.377145, 18.882206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.406397, 13.570348, 18.713861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521141, 0.088850, -0.848833,
		-0.372600, 0.871096, 0.319938,
		0.767842, 0.483008, -0.420859,
		9.636749, 13.715250, 18.587605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.831491, 13.922859, 18.513969>,  <9.099260, 13.377145, 18.882206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.831491, 13.922859, 18.513969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.195097, 13.866847, 18.356956>,  <9.413260, 13.833240, 18.262749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.195097, 13.866847, 18.356956>,  <8.831491, 13.922859, 18.513969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.195097, 13.866847, 18.356956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390402, 0.043531, -0.919614,
		0.145862, 0.989190, -0.015098,
		0.909016, -0.140031, -0.392532,
		9.467802, 13.824838, 18.239197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.751783, 14.347467, 17.881502>,  <8.831491, 13.922859, 18.513969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.751783, 14.347467, 17.881502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077491, 14.128796, 17.803421>,  <9.272916, 13.997592, 17.756573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.077491, 14.128796, 17.803421>,  <8.751783, 14.347467, 17.881502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.077491, 14.128796, 17.803421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184102, 0.075712, -0.979987,
		0.550519, 0.833911, -0.038995,
		0.814270, -0.546681, -0.195205,
		9.321772, 13.964791, 17.744860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.010129, 14.679549, 17.348278>,  <8.751783, 14.347467, 17.881502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.010129, 14.679549, 17.348278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222017, 14.341698, 17.317297>,  <9.349151, 14.138987, 17.298708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.222017, 14.341698, 17.317297>,  <9.010129, 14.679549, 17.348278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.222017, 14.341698, 17.317297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180733, -0.023185, -0.983259,
		0.828692, 0.534851, -0.164933,
		0.529721, -0.844628, -0.077452,
		9.380934, 14.088309, 17.294062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.446901, 14.835204, 16.779604>,  <9.010129, 14.679549, 17.348278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.446901, 14.835204, 16.779604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.418311, 14.436235, 16.777084>,  <9.401156, 14.196854, 16.775572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.418311, 14.436235, 16.777084>,  <9.446901, 14.835204, 16.779604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.418311, 14.436235, 16.777084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280908, 0.026191, -0.959377,
		0.957069, -0.066803, -0.282056,
		-0.071476, -0.997422, -0.006301,
		9.396868, 14.137009, 16.775194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.928249, 14.669854, 16.249960>,  <9.446901, 14.835204, 16.779604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.928249, 14.669854, 16.249960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.689361, 14.354053, 16.306545>,  <9.546027, 14.164573, 16.340496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.689361, 14.354053, 16.306545>,  <9.928249, 14.669854, 16.249960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.689361, 14.354053, 16.306545> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232928, 0.001950, -0.972492,
		0.767510, -0.613743, -0.185062,
		-0.597221, -0.789503, 0.141461,
		9.510194, 14.117203, 16.348984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.008495, 14.021131, 15.827078>,  <9.928249, 14.669854, 16.249960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.008495, 14.021131, 15.827078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.621676, 14.068264, 15.917353>,  <9.389585, 14.096544, 15.971518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.621676, 14.068264, 15.917353>,  <10.008495, 14.021131, 15.827078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.621676, 14.068264, 15.917353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211139, 0.124169, -0.969537,
		-0.142270, -0.985239, -0.095198,
		-0.967047, 0.117836, 0.225688,
		9.331562, 14.103614, 15.985059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.462937, 13.473044, 15.567280>,  <10.008495, 14.021131, 15.827078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.462937, 13.473044, 15.567280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.475256, 13.087516, 15.461375>,  <10.482647, 12.856198, 15.397833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.475256, 13.087516, 15.461375>,  <10.462937, 13.473044, 15.567280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.475256, 13.087516, 15.461375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754628, -0.151277, 0.638476,
		-0.655430, -0.219458, 0.722669,
		0.030796, -0.963822, -0.264761,
		10.484495, 12.798369, 15.381947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.288262, 13.090712, 16.102104>,  <10.462937, 13.473044, 15.567280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.288262, 13.090712, 16.102104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.540402, 12.901512, 15.855875>,  <10.691687, 12.787992, 15.708137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.540402, 12.901512, 15.855875>,  <10.288262, 13.090712, 16.102104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.540402, 12.901512, 15.855875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698165, -0.001321, 0.715936,
		-0.339450, -0.881062, 0.329398,
		0.630349, -0.472998, -0.615575,
		10.729507, 12.759613, 15.671203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.476274, 12.473641, 16.228067>,  <10.288262, 13.090712, 16.102104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.476274, 12.473641, 16.228067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815181, 12.608950, 16.064259>,  <11.018525, 12.690135, 15.965973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.815181, 12.608950, 16.064259>,  <10.476274, 12.473641, 16.228067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.815181, 12.608950, 16.064259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476761, -0.144418, 0.867088,
		0.234168, -0.929901, -0.283636,
		0.847268, 0.338271, -0.409523,
		11.069362, 12.710431, 15.941401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.010564, 12.047781, 16.518364>,  <10.476274, 12.473641, 16.228067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.010564, 12.047781, 16.518364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.199975, 12.357802, 16.351000>,  <11.313622, 12.543815, 16.250582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.199975, 12.357802, 16.351000>,  <11.010564, 12.047781, 16.518364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.199975, 12.357802, 16.351000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644114, 0.019284, 0.764686,
		0.600741, -0.631602, -0.490090,
		0.473527, 0.775052, -0.418409,
		11.342033, 12.590318, 16.225477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.789873, 11.960070, 16.533255>,  <11.010564, 12.047781, 16.518364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.789873, 11.960070, 16.533255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761235, 12.355094, 16.477257>,  <11.744052, 12.592109, 16.443659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.761235, 12.355094, 16.477257>,  <11.789873, 11.960070, 16.533255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.761235, 12.355094, 16.477257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.574420, 0.155567, 0.803642,
		0.815424, -0.022879, -0.578412,
		-0.071596, 0.987560, -0.139995,
		11.739757, 12.651362, 16.435259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.538071, 12.175373, 16.715200>,  <11.789873, 11.960070, 16.533255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.538071, 12.175373, 16.715200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.290727, 12.489560, 16.725555>,  <12.142321, 12.678073, 16.731768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.290727, 12.489560, 16.725555>,  <12.538071, 12.175373, 16.715200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.290727, 12.489560, 16.725555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562587, 0.419415, 0.712451,
		0.548750, 0.455115, -0.701244,
		-0.618360, 0.785468, 0.025888,
		12.105219, 12.725201, 16.733322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.039218, 12.650723, 16.956720>,  <12.538071, 12.175373, 16.715200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.039218, 12.650723, 16.956720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.685762, 12.832576, 17.001429>,  <12.473689, 12.941688, 17.028254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.685762, 12.832576, 17.001429>,  <13.039218, 12.650723, 16.956720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.685762, 12.832576, 17.001429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356136, 0.497780, 0.790811,
		0.303892, 0.738596, -0.601768,
		-0.883638, 0.454633, 0.111769,
		12.420671, 12.968966, 17.034960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.094396, 13.431783, 16.941936>,  <13.039218, 12.650723, 16.956720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.094396, 13.431783, 16.941936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772298, 13.324453, 17.153439>,  <12.579040, 13.260056, 17.280340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.772298, 13.324453, 17.153439>,  <13.094396, 13.431783, 16.941936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.772298, 13.324453, 17.153439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429001, 0.351941, 0.831923,
		-0.409316, 0.896738, -0.168288,
		-0.805244, -0.268324, 0.528757,
		12.530725, 13.243957, 17.312065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.093559, 13.912172, 17.436310>,  <13.094396, 13.431783, 16.941936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.093559, 13.912172, 17.436310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.858403, 13.636281, 17.605383>,  <12.717310, 13.470746, 17.706827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.858403, 13.636281, 17.605383>,  <13.093559, 13.912172, 17.436310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.858403, 13.636281, 17.605383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254849, 0.337992, 0.905987,
		-0.767748, 0.640341, -0.022926,
		-0.587890, -0.689728, 0.422684,
		12.682036, 13.429362, 17.732187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.733132, 14.234385, 17.971895>,  <13.093559, 13.912172, 17.436310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.733132, 14.234385, 17.971895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703452, 13.845777, 18.061909>,  <12.685644, 13.612612, 18.115917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.703452, 13.845777, 18.061909>,  <12.733132, 14.234385, 17.971895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.703452, 13.845777, 18.061909> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421302, 0.173990, 0.890074,
		-0.903880, 0.160852, 0.396393,
		-0.074202, -0.971522, 0.225034,
		12.681191, 13.554320, 18.129419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.425131, 14.203294, 18.742117>,  <12.733132, 14.234385, 17.971895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.425131, 14.203294, 18.742117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579342, 13.844153, 18.657045>,  <12.671868, 13.628669, 18.606003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579342, 13.844153, 18.657045>,  <12.425131, 14.203294, 18.742117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.579342, 13.844153, 18.657045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422006, -0.033399, 0.905978,
		-0.820536, -0.439030, 0.366022,
		0.385527, -0.897851, -0.212678,
		12.695000, 13.574798, 18.593243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.286244, 13.789165, 19.338459>,  <12.425131, 14.203294, 18.742117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.286244, 13.789165, 19.338459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579965, 13.602915, 19.140875>,  <12.756197, 13.491164, 19.022326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.579965, 13.602915, 19.140875>,  <12.286244, 13.789165, 19.338459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.579965, 13.602915, 19.140875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483404, -0.152186, 0.862067,
		-0.476575, -0.871798, 0.113335,
		0.734301, -0.465626, -0.493958,
		12.800255, 13.463227, 18.992687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.480672, 13.322801, 19.776804>,  <12.286244, 13.789165, 19.338459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.480672, 13.322801, 19.776804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785440, 13.272769, 19.522614>,  <12.968302, 13.242750, 19.370100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.785440, 13.272769, 19.522614>,  <12.480672, 13.322801, 19.776804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.785440, 13.272769, 19.522614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585185, -0.287520, 0.758215,
		-0.277554, -0.949571, -0.145870,
		0.761920, -0.125085, -0.635477,
		13.014017, 13.235246, 19.331970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.860794, 12.596687, 19.862118>,  <12.480672, 13.322801, 19.776804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.860794, 12.596687, 19.862118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111128, 12.869605, 19.710960>,  <13.261329, 13.033356, 19.620266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.111128, 12.869605, 19.710960>,  <12.860794, 12.596687, 19.862118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.111128, 12.869605, 19.710960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656249, -0.198800, 0.727885,
		0.421507, -0.703528, -0.572171,
		0.625835, 0.682295, -0.377894,
		13.298879, 13.074293, 19.597591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.489677, 12.285830, 19.943394>,  <12.860794, 12.596687, 19.862118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.489677, 12.285830, 19.943394> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526058, 12.683736, 19.924772>,  <13.547887, 12.922480, 19.913599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.526058, 12.683736, 19.924772>,  <13.489677, 12.285830, 19.943394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.526058, 12.683736, 19.924772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549707, -0.011170, 0.835283,
		0.830392, -0.101563, -0.547846,
		0.090953, 0.994766, -0.046554,
		13.553344, 12.982165, 19.910807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.158592, 12.388730, 20.228176>,  <13.489677, 12.285830, 19.943394>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.158592, 12.388730, 20.228176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947162, 12.728042, 20.241013>,  <13.820303, 12.931628, 20.248714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.947162, 12.728042, 20.241013>,  <14.158592, 12.388730, 20.228176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.947162, 12.728042, 20.241013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331133, 0.171230, 0.927918,
		0.781638, 0.501102, -0.371401,
		-0.528576, 0.848279, 0.032091,
		13.788589, 12.982526, 20.250641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.722443, 12.872074, 20.511623>,  <14.158592, 12.388730, 20.228176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.722443, 12.872074, 20.511623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375853, 13.068521, 20.547457>,  <14.167898, 13.186389, 20.568956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.375853, 13.068521, 20.547457>,  <14.722443, 12.872074, 20.511623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.375853, 13.068521, 20.547457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228668, 0.230937, 0.945716,
		0.443769, 0.839924, -0.312404,
		-0.866476, 0.491117, 0.089581,
		14.115910, 13.215856, 20.574331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.964561, 13.564079, 20.698044>,  <14.722443, 12.872074, 20.511623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.964561, 13.564079, 20.698044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.585681, 13.518398, 20.817892>,  <14.358354, 13.490990, 20.889801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.585681, 13.518398, 20.817892>,  <14.964561, 13.564079, 20.698044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.585681, 13.518398, 20.817892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232273, 0.399803, 0.886683,
		-0.221050, 0.909459, -0.352167,
		-0.947199, -0.114203, 0.299619,
		14.301521, 13.484138, 20.907778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.887486, 14.142376, 21.045218>,  <14.964561, 13.564079, 20.698044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.887486, 14.142376, 21.045218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.607034, 13.889805, 21.177711>,  <14.438763, 13.738262, 21.257208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.607034, 13.889805, 21.177711>,  <14.887486, 14.142376, 21.045218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.607034, 13.889805, 21.177711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170533, 0.302568, 0.937748,
		-0.692342, 0.713969, -0.104460,
		-0.701129, -0.631428, 0.331236,
		14.396695, 13.700377, 21.277082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.464921, 14.530823, 21.344721>,  <14.887486, 14.142376, 21.045218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.464921, 14.530823, 21.344721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424056, 14.176868, 21.526508>,  <14.399537, 13.964496, 21.635580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.424056, 14.176868, 21.526508>,  <14.464921, 14.530823, 21.344721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.424056, 14.176868, 21.526508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064840, 0.449964, 0.890690,
		-0.992652, 0.120463, 0.011406,
		-0.102162, -0.884885, 0.454468,
		14.393408, 13.911403, 21.662849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.245607, 14.652909, 21.952717>,  <14.464921, 14.530823, 21.344721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.245607, 14.652909, 21.952717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.294003, 14.270163, 22.058372>,  <14.323040, 14.040515, 22.121765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.294003, 14.270163, 22.058372>,  <14.245607, 14.652909, 21.952717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.294003, 14.270163, 22.058372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058099, 0.272464, 0.960410,
		-0.990952, -0.100852, 0.088558,
		0.120988, -0.956866, 0.264140,
		14.330299, 13.983103, 22.137615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.884853, 14.585852, 22.490675>,  <14.245607, 14.652909, 21.952717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.884853, 14.585852, 22.490675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163182, 14.298736, 22.500542>,  <14.330179, 14.126466, 22.506462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.163182, 14.298736, 22.500542>,  <13.884853, 14.585852, 22.490675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.163182, 14.298736, 22.500542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110951, 0.141360, 0.983721,
		-0.709592, -0.681758, 0.178001,
		0.695822, -0.717790, 0.024666,
		14.371929, 14.083399, 22.507942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.840074, 14.483052, 23.096800>,  <13.884853, 14.585852, 22.490675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.840074, 14.483052, 23.096800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.181538, 14.294633, 23.007915>,  <14.386416, 14.181581, 22.954584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.181538, 14.294633, 23.007915>,  <13.840074, 14.483052, 23.096800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.181538, 14.294633, 23.007915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384379, 0.281899, 0.879083,
		-0.351449, -0.835851, 0.421706,
		0.853661, -0.471047, -0.222210,
		14.437636, 14.153318, 22.941252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.029823, 13.817441, 23.517733>,  <13.840074, 14.483052, 23.096800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.029823, 13.817441, 23.517733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.364377, 13.989637, 23.382006>,  <14.565109, 14.092955, 23.300570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.364377, 13.989637, 23.382006>,  <14.029823, 13.817441, 23.517733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.364377, 13.989637, 23.382006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400739, -0.057868, 0.914363,
		0.373989, -0.900738, -0.220914,
		0.836385, 0.430490, -0.339319,
		14.615293, 14.118785, 23.280210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.605483, 13.429953, 23.770525>,  <14.029823, 13.817441, 23.517733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.605483, 13.429953, 23.770525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.712800, 13.805374, 23.683683>,  <14.777190, 14.030627, 23.631578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.712800, 13.805374, 23.683683>,  <14.605483, 13.429953, 23.770525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.712800, 13.805374, 23.683683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509287, 0.053108, 0.858956,
		0.817707, -0.341020, -0.463746,
		0.268292, 0.938555, -0.217104,
		14.793288, 14.086941, 23.618553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.274924, 13.560694, 24.195282>,  <14.605483, 13.429953, 23.770525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.274924, 13.560694, 24.195282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.222349, 13.924588, 24.037748>,  <15.190804, 14.142925, 23.943228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.222349, 13.924588, 24.037748>,  <15.274924, 13.560694, 24.195282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.222349, 13.924588, 24.037748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734298, 0.356242, 0.577839,
		0.665981, -0.213241, -0.714841,
		-0.131438, 0.909736, -0.393833,
		15.182918, 14.197509, 23.919598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.903085, 13.949637, 23.938828>,  <15.274924, 13.560694, 24.195282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.903085, 13.949637, 23.938828> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629151, 14.226418, 24.030222>,  <15.464791, 14.392487, 24.085058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.629151, 14.226418, 24.030222>,  <15.903085, 13.949637, 23.938828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.629151, 14.226418, 24.030222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661126, 0.458128, 0.594164,
		0.306456, 0.557962, -0.771209,
		-0.684833, 0.691952, 0.228487,
		15.423701, 14.434004, 24.098768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.244535, 14.513488, 23.804976>,  <15.903085, 13.949637, 23.938828>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.244535, 14.513488, 23.804976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953968, 14.623481, 24.056913>,  <15.779628, 14.689477, 24.208076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.953968, 14.623481, 24.056913>,  <16.244535, 14.513488, 23.804976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.953968, 14.623481, 24.056913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.682199, 0.399476, 0.612392,
		-0.083210, 0.874530, -0.477779,
		-0.726417, 0.274983, 0.629844,
		15.736043, 14.705976, 24.245867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.341101, 15.272873, 23.946756>,  <16.244535, 14.513488, 23.804976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.341101, 15.272873, 23.946756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123436, 15.116735, 24.243813>,  <15.992837, 15.023053, 24.422047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.123436, 15.116735, 24.243813>,  <16.341101, 15.272873, 23.946756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.123436, 15.116735, 24.243813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638881, 0.380945, 0.668365,
		-0.543798, 0.838160, 0.042087,
		-0.544164, -0.390344, 0.742642,
		15.960187, 14.999632, 24.466604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.261841, 15.783347, 24.440786>,  <16.341101, 15.272873, 23.946756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.261841, 15.783347, 24.440786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208170, 15.440901, 24.640411>,  <16.175966, 15.235434, 24.760187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.208170, 15.440901, 24.640411>,  <16.261841, 15.783347, 24.440786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.208170, 15.440901, 24.640411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476726, 0.385743, 0.789896,
		-0.868751, 0.343903, 0.356373,
		-0.134179, -0.856115, 0.499062,
		16.167915, 15.184066, 24.790131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.120087, 15.996347, 25.087679>,  <16.261841, 15.783347, 24.440786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.120087, 15.996347, 25.087679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.223064, 15.611696, 25.125614>,  <16.284851, 15.380905, 25.148375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.223064, 15.611696, 25.125614>,  <16.120087, 15.996347, 25.087679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.223064, 15.611696, 25.125614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504731, 0.217517, 0.835424,
		-0.823996, -0.167208, 0.541362,
		0.257445, -0.961628, 0.094838,
		16.300299, 15.323208, 25.154066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.953941, 15.852589, 25.775595>,  <16.120087, 15.996347, 25.087679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.953941, 15.852589, 25.775595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.219339, 15.566513, 25.687706>,  <16.378578, 15.394868, 25.634974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.219339, 15.566513, 25.687706>,  <15.953941, 15.852589, 25.775595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.219339, 15.566513, 25.687706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585127, 0.313004, 0.748101,
		-0.466261, -0.624926, 0.626154,
		0.663496, -0.715190, -0.219719,
		16.418388, 15.351956, 25.621790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.138542, 15.365746, 26.443174>,  <15.953941, 15.852589, 25.775595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.138542, 15.365746, 26.443174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.434793, 15.395300, 26.176039>,  <16.612545, 15.413033, 26.015759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.434793, 15.395300, 26.176039>,  <16.138542, 15.365746, 26.443174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.434793, 15.395300, 26.176039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649571, 0.175441, 0.739783,
		0.171817, -0.981715, 0.081950,
		0.740633, 0.073874, -0.667837,
		16.656982, 15.417465, 25.975687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.812586, 15.105815, 26.692823>,  <16.138542, 15.365746, 26.443174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.812586, 15.105815, 26.692823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896223, 15.386777, 26.420675>,  <16.946405, 15.555354, 26.257385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.896223, 15.386777, 26.420675>,  <16.812586, 15.105815, 26.692823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.896223, 15.386777, 26.420675> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845055, 0.220331, 0.487172,
		0.492099, -0.676817, -0.547500,
		0.209095, 0.702405, -0.680373,
		16.958952, 15.597498, 26.216564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.616858, 14.961989, 26.456995>,  <16.812586, 15.105815, 26.692823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.616858, 14.961989, 26.456995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.441959, 15.321671, 26.463331>,  <17.337021, 15.537479, 26.467133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.441959, 15.321671, 26.463331>,  <17.616858, 14.961989, 26.456995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.441959, 15.321671, 26.463331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723181, 0.341076, 0.600564,
		0.534626, 0.274049, -0.799420,
		-0.437247, 0.899202, 0.015839,
		17.310785, 15.591432, 26.468082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.102383, 15.672192, 26.424370>,  <17.616858, 14.961989, 26.456995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.102383, 15.672192, 26.424370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.775951, 15.783865, 26.626785>,  <17.580093, 15.850869, 26.748234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.775951, 15.783865, 26.626785>,  <18.102383, 15.672192, 26.424370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.775951, 15.783865, 26.626785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553234, 0.630646, 0.544258,
		-0.167183, 0.724114, -0.669111,
		-0.816077, 0.279185, 0.506038,
		17.531128, 15.867620, 26.778597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.352053, 16.121416, 26.884350>,  <18.102383, 15.672192, 26.424370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.352053, 16.121416, 26.884350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.970446, 16.173346, 26.992422>,  <17.741482, 16.204504, 27.057266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.970446, 16.173346, 26.992422>,  <18.352053, 16.121416, 26.884350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.970446, 16.173346, 26.992422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274690, 0.739443, 0.614629,
		-0.119990, 0.660582, -0.741103,
		-0.954017, 0.129824, 0.270181,
		17.684240, 16.212294, 27.073477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.649549, 16.719303, 26.823826>,  <18.352053, 16.121416, 26.884350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.649549, 16.719303, 26.823826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835924, 16.479290, 26.563715>,  <18.947748, 16.335281, 26.407648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.835924, 16.479290, 26.563715>,  <18.649549, 16.719303, 26.823826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.835924, 16.479290, 26.563715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116058, 0.687136, -0.717199,
		0.877174, 0.409640, 0.250523,
		0.465937, -0.600033, -0.650279,
		18.975706, 16.299280, 26.368631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.729645, 16.685587, 26.126696>,  <18.649549, 16.719303, 26.823826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.729645, 16.685587, 26.126696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.986629, 16.987734, 26.075064>,  <19.140821, 17.169022, 26.044085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.986629, 16.987734, 26.075064>,  <18.729645, 16.685587, 26.126696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.986629, 16.987734, 26.075064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361088, 0.149830, -0.920416,
		-0.675912, 0.637943, 0.369015,
		0.642463, 0.755367, -0.129082,
		19.179369, 17.214344, 26.036339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.382406, 17.218267, 25.913239>,  <18.729645, 16.685587, 26.126696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.382406, 17.218267, 25.913239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750402, 17.307222, 25.784142>,  <18.971199, 17.360596, 25.706682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.750402, 17.307222, 25.784142>,  <18.382406, 17.218267, 25.913239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.750402, 17.307222, 25.784142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359753, 0.152317, -0.920531,
		-0.155556, 0.962987, 0.220135,
		0.919989, 0.222388, -0.322744,
		19.026400, 17.373940, 25.687319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.298149, 17.768923, 25.497709>,  <18.382406, 17.218267, 25.913239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.298149, 17.768923, 25.497709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641830, 17.604092, 25.376408>,  <18.848040, 17.505194, 25.303627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.641830, 17.604092, 25.376408>,  <18.298149, 17.768923, 25.497709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.641830, 17.604092, 25.376408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327682, 0.011999, -0.944712,
		0.392932, 0.911070, -0.124721,
		0.859202, -0.412077, -0.303256,
		18.899591, 17.480469, 25.285431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.630205, 18.213501, 24.941326>,  <18.298149, 17.768923, 25.497709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.630205, 18.213501, 24.941326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774370, 17.845030, 24.882626>,  <18.860868, 17.623947, 24.847406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.774370, 17.845030, 24.882626>,  <18.630205, 18.213501, 24.941326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.774370, 17.845030, 24.882626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171361, 0.089260, -0.981156,
		0.916919, 0.378766, -0.125684,
		0.360411, -0.921178, -0.146750,
		18.882494, 17.568676, 24.838600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.012167, 18.301607, 24.310204>,  <18.630205, 18.213501, 24.941326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.012167, 18.301607, 24.310204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971655, 17.905928, 24.352589>,  <18.947348, 17.668520, 24.378019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971655, 17.905928, 24.352589>,  <19.012167, 18.301607, 24.310204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971655, 17.905928, 24.352589> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154225, -0.089611, -0.983964,
		0.982831, -0.116000, -0.143484,
		-0.101282, -0.989198, 0.105963,
		18.941271, 17.609169, 24.384377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.312637, 17.952738, 23.779366>,  <19.012167, 18.301607, 24.310204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.312637, 17.952738, 23.779366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.074903, 17.659698, 23.912069>,  <18.932264, 17.483875, 23.991692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.074903, 17.659698, 23.912069>,  <19.312637, 17.952738, 23.779366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.074903, 17.659698, 23.912069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248158, -0.225331, -0.942148,
		0.764974, -0.642279, -0.047880,
		-0.594333, -0.732601, 0.331759,
		18.896603, 17.439919, 24.011597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.280355, 17.450727, 23.216127>,  <19.312637, 17.952738, 23.779366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.280355, 17.450727, 23.216127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971836, 17.327995, 23.439180>,  <18.786724, 17.254356, 23.573013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.971836, 17.327995, 23.439180>,  <19.280355, 17.450727, 23.216127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.971836, 17.327995, 23.439180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479157, -0.296759, -0.826040,
		0.418938, -0.904317, 0.081868,
		-0.771297, -0.306832, 0.557634,
		18.740446, 17.235947, 23.606470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.150297, 16.865364, 22.895037>,  <19.280355, 17.450727, 23.216127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.150297, 16.865364, 22.895037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808159, 16.955196, 23.081776>,  <18.602875, 17.009096, 23.193819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.808159, 16.955196, 23.081776>,  <19.150297, 16.865364, 22.895037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.808159, 16.955196, 23.081776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516280, -0.294979, -0.804016,
		-0.042855, -0.928736, 0.368255,
		-0.855347, 0.224579, 0.466847,
		18.551556, 17.022570, 23.221830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.733679, 16.227142, 22.808949>,  <19.150297, 16.865364, 22.895037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.733679, 16.227142, 22.808949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488321, 16.524687, 22.915092>,  <18.341106, 16.703215, 22.978779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.488321, 16.524687, 22.915092>,  <18.733679, 16.227142, 22.808949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.488321, 16.524687, 22.915092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628926, -0.256840, -0.733815,
		-0.477703, -0.617009, 0.625379,
		-0.613394, 0.743863, 0.265360,
		18.304302, 16.747845, 22.994701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.055756, 15.967273, 22.686266>,  <18.733679, 16.227142, 22.808949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.055756, 15.967273, 22.686266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.992165, 16.361071, 22.715919>,  <17.954010, 16.597349, 22.733711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.992165, 16.361071, 22.715919>,  <18.055756, 15.967273, 22.686266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.992165, 16.361071, 22.715919> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673745, -0.053300, -0.737039,
		-0.721660, -0.167120, 0.671772,
		-0.158979, 0.984495, 0.074132,
		17.944471, 16.656420, 22.738159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.339886, 15.994581, 22.724255>,  <18.055756, 15.967273, 22.686266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.339886, 15.994581, 22.724255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505108, 16.334085, 22.592199>,  <17.604240, 16.537788, 22.512966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.505108, 16.334085, 22.592199>,  <17.339886, 15.994581, 22.724255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.505108, 16.334085, 22.592199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570581, -0.041351, -0.820200,
		-0.709805, 0.527157, 0.467207,
		0.413054, 0.848761, -0.330137,
		17.629025, 16.588715, 22.493158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.791553, 16.479670, 22.595032>,  <17.339886, 15.994581, 22.724255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.791553, 16.479670, 22.595032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098629, 16.566656, 22.353912>,  <17.282873, 16.618847, 22.209240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.098629, 16.566656, 22.353912>,  <16.791553, 16.479670, 22.595032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.098629, 16.566656, 22.353912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626706, 0.058406, -0.777064,
		-0.133777, 0.974319, 0.181123,
		0.767687, 0.217464, -0.602798,
		17.328936, 16.631895, 22.173073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.510777, 16.871969, 22.102057>,  <16.791553, 16.479670, 22.595032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.510777, 16.871969, 22.102057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856352, 16.768412, 21.929276>,  <17.063698, 16.706276, 21.825607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.856352, 16.768412, 21.929276>,  <16.510777, 16.871969, 22.102057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.856352, 16.768412, 21.929276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464615, -0.078863, -0.881994,
		0.194279, 0.962681, -0.188419,
		0.863938, -0.258895, -0.431954,
		17.115534, 16.690742, 21.799690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.508089, 17.145914, 21.431343>,  <16.510777, 16.871969, 22.102057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.508089, 17.145914, 21.431343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812216, 16.886887, 21.411039>,  <16.994692, 16.731470, 21.398857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.812216, 16.886887, 21.411039>,  <16.508089, 17.145914, 21.431343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.812216, 16.886887, 21.411039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265202, -0.238140, -0.934322,
		0.592950, 0.723840, -0.352797,
		0.760315, -0.647568, -0.050758,
		17.040310, 16.692616, 21.395811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.964361, 17.173998, 20.718325>,  <16.508089, 17.145914, 21.431343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.964361, 17.173998, 20.718325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.996204, 16.811987, 20.885460>,  <17.015310, 16.594780, 20.985741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.996204, 16.811987, 20.885460>,  <16.964361, 17.173998, 20.718325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.996204, 16.811987, 20.885460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369817, -0.416068, -0.830736,
		0.925688, -0.088390, -0.367817,
		0.079608, -0.905027, 0.417837,
		17.020086, 16.540478, 21.010811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.264656, 16.756451, 20.190941>,  <16.964361, 17.173998, 20.718325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.264656, 16.756451, 20.190941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084782, 16.488754, 20.427551>,  <16.976858, 16.328136, 20.569517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.084782, 16.488754, 20.427551>,  <17.264656, 16.756451, 20.190941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084782, 16.488754, 20.427551> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337977, -0.485524, -0.806249,
		0.826774, -0.562479, -0.007855,
		-0.449684, -0.669240, 0.591524,
		16.949877, 16.287983, 20.605009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.287630, 16.164742, 19.780424>,  <17.264656, 16.756451, 20.190941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.287630, 16.164742, 19.780424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030682, 16.040989, 20.060892>,  <16.876513, 15.966738, 20.229174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.030682, 16.040989, 20.060892>,  <17.287630, 16.164742, 19.780424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.030682, 16.040989, 20.060892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310055, -0.731774, -0.606938,
		0.700874, -0.607281, 0.374146,
		-0.642372, -0.309381, 0.701171,
		16.837971, 15.948174, 20.271244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.397409, 15.441921, 19.986647>,  <17.287630, 16.164742, 19.780424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.397409, 15.441921, 19.986647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017969, 15.513909, 20.090776>,  <16.790304, 15.557102, 20.153254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.017969, 15.513909, 20.090776>,  <17.397409, 15.441921, 19.986647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.017969, 15.513909, 20.090776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297208, -0.789222, -0.537397,
		0.108738, -0.587145, 0.802145,
		-0.948600, 0.179969, 0.260323,
		16.733389, 15.567900, 20.168873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.009138, 14.769293, 20.345510>,  <17.397409, 15.441921, 19.986647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.009138, 14.769293, 20.345510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736185, 15.018598, 20.192726>,  <16.572412, 15.168180, 20.101055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.736185, 15.018598, 20.192726>,  <17.009138, 14.769293, 20.345510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.736185, 15.018598, 20.192726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501734, -0.779349, -0.375337,
		-0.531615, -0.064480, 0.844528,
		-0.682384, 0.623263, -0.381962,
		16.531469, 15.205577, 20.078138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.412016, 14.353712, 20.275307>,  <17.009138, 14.769293, 20.345510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.412016, 14.353712, 20.275307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299557, 14.660632, 20.044758>,  <16.232080, 14.844784, 19.906427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.299557, 14.660632, 20.044758>,  <16.412016, 14.353712, 20.275307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.299557, 14.660632, 20.044758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565634, -0.617680, -0.546378,
		-0.775250, 0.172403, 0.607671,
		-0.281149, 0.767299, -0.576374,
		16.215212, 14.890821, 19.871845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.775749, 14.136424, 20.073002>,  <16.412016, 14.353712, 20.275307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.775749, 14.136424, 20.073002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.833068, 14.438756, 19.817444>,  <15.867459, 14.620155, 19.664108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.833068, 14.438756, 19.817444>,  <15.775749, 14.136424, 20.073002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.833068, 14.438756, 19.817444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628955, -0.428881, -0.648442,
		-0.764122, 0.494756, 0.413925,
		0.143296, 0.755829, -0.638897,
		15.876057, 14.665504, 19.625774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059261, 14.406182, 19.846888>,  <15.775749, 14.136424, 20.073002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059261, 14.406182, 19.846888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.343023, 14.505808, 19.583157>,  <15.513281, 14.565583, 19.424917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.343023, 14.505808, 19.583157>,  <15.059261, 14.406182, 19.846888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.343023, 14.505808, 19.583157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577888, -0.329979, -0.746431,
		-0.403473, 0.910539, -0.090158,
		0.709405, 0.249063, -0.659327,
		15.555845, 14.580526, 19.385359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.678027, 14.633554, 19.358746>,  <15.059261, 14.406182, 19.846888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.678027, 14.633554, 19.358746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018713, 14.511134, 19.188610>,  <15.223125, 14.437682, 19.086529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.018713, 14.511134, 19.188610>,  <14.678027, 14.633554, 19.358746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.018713, 14.511134, 19.188610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.518868, -0.379203, -0.766146,
		0.073189, 0.873234, -0.481773,
		0.851715, -0.306050, -0.425340,
		15.274227, 14.419319, 19.061008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.869588, 15.013126, 18.778517>,  <14.678027, 14.633554, 19.358746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.869588, 15.013126, 18.778517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.051975, 14.662241, 18.718399>,  <15.161407, 14.451710, 18.682329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.051975, 14.662241, 18.718399>,  <14.869588, 15.013126, 18.778517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.051975, 14.662241, 18.718399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.271459, 0.023745, -0.962157,
		0.847587, 0.479511, -0.227301,
		0.455968, -0.877215, -0.150293,
		15.188766, 14.399076, 18.673311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.882879, 15.053329, 17.994392>,  <14.869588, 15.013126, 18.778517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.882879, 15.053329, 17.994392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011236, 14.686290, 18.088234>,  <15.088250, 14.466066, 18.144539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.011236, 14.686290, 18.088234>,  <14.882879, 15.053329, 17.994392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.011236, 14.686290, 18.088234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293652, -0.331890, -0.896447,
		0.900442, 0.218771, -0.375956,
		0.320893, -0.917599, 0.234605,
		15.107504, 14.411010, 18.158615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.150752, 14.854240, 17.375673>,  <14.882879, 15.053329, 17.994392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.150752, 14.854240, 17.375673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116354, 14.525017, 17.600237>,  <15.095715, 14.327482, 17.734974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.116354, 14.525017, 17.600237>,  <15.150752, 14.854240, 17.375673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.116354, 14.525017, 17.600237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179919, -0.541401, -0.821288,
		0.979915, -0.171635, -0.101526,
		-0.085996, -0.823059, 0.561408,
		15.090555, 14.278099, 17.768660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.598218, 14.397259, 17.108793>,  <15.150752, 14.854240, 17.375673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.598218, 14.397259, 17.108793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329642, 14.169151, 17.298092>,  <15.168497, 14.032287, 17.411671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.329642, 14.169151, 17.298092>,  <15.598218, 14.397259, 17.108793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.329642, 14.169151, 17.298092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054573, -0.598824, -0.799019,
		0.739048, -0.562318, 0.370952,
		-0.671438, -0.570270, 0.473247,
		15.128211, 13.998071, 17.440065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.865992, 13.646335, 17.037949>,  <15.598218, 14.397259, 17.108793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.865992, 13.646335, 17.037949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468074, 13.637023, 17.077629>,  <15.229323, 13.631435, 17.101439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.468074, 13.637023, 17.077629>,  <15.865992, 13.646335, 17.037949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.468074, 13.637023, 17.077629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066016, -0.594372, -0.801476,
		0.077622, -0.803854, 0.589741,
		-0.994795, -0.023280, 0.099203,
		15.169636, 13.630039, 17.107389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.732441, 12.976492, 17.043732>,  <15.865992, 13.646335, 17.037949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.732441, 12.976492, 17.043732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408878, 13.186069, 16.937033>,  <15.214741, 13.311816, 16.873013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.408878, 13.186069, 16.937033>,  <15.732441, 12.976492, 17.043732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.408878, 13.186069, 16.937033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034109, -0.494757, -0.868362,
		-0.586948, -0.693324, 0.418083,
		-0.808906, 0.523944, -0.266748,
		15.166206, 13.343253, 16.857008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.328771, 12.545307, 16.593464>,  <15.732441, 12.976492, 17.043732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.328771, 12.545307, 16.593464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133849, 12.885767, 16.515408>,  <15.016896, 13.090043, 16.468575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.133849, 12.885767, 16.515408>,  <15.328771, 12.545307, 16.593464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.133849, 12.885767, 16.515408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141591, -0.297529, -0.944155,
		-0.861677, -0.432460, 0.265502,
		-0.487304, 0.851149, -0.195141,
		14.987658, 13.141111, 16.456865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.725853, 12.317177, 16.192133>,  <15.328771, 12.545307, 16.593464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.725853, 12.317177, 16.192133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774538, 12.706598, 16.114796>,  <14.803749, 12.940251, 16.068394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.774538, 12.706598, 16.114796>,  <14.725853, 12.317177, 16.192133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774538, 12.706598, 16.114796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039326, -0.189908, -0.981014,
		-0.991786, 0.127005, 0.015172,
		0.121712, 0.973553, -0.193343,
		14.811051, 12.998664, 16.056793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.226116, 12.474470, 15.660718>,  <14.725853, 12.317177, 16.192133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.226116, 12.474470, 15.660718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474746, 12.786305, 15.630025>,  <14.623923, 12.973407, 15.611609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.474746, 12.786305, 15.630025>,  <14.226116, 12.474470, 15.660718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.474746, 12.786305, 15.630025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099954, -0.176083, -0.979288,
		-0.776953, 0.601029, -0.187371,
		0.621573, 0.779589, -0.076733,
		14.661218, 13.020182, 15.607005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.031548, 13.053138, 15.160197>,  <14.226116, 12.474470, 15.660718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.031548, 13.053138, 15.160197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430215, 13.065271, 15.190478>,  <14.669415, 13.072552, 15.208647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.430215, 13.065271, 15.190478>,  <14.031548, 13.053138, 15.160197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.430215, 13.065271, 15.190478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077594, -0.066973, -0.994733,
		-0.025105, 0.997294, -0.069104,
		0.996669, 0.030334, 0.075702,
		14.729216, 13.074371, 15.213189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.249435, 13.562183, 14.668435>,  <14.031548, 13.053138, 15.160197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.249435, 13.562183, 14.668435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596951, 13.380030, 14.746233>,  <14.805461, 13.270738, 14.792912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.596951, 13.380030, 14.746233>,  <14.249435, 13.562183, 14.668435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.596951, 13.380030, 14.746233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.199250, -0.038085, -0.979208,
		0.453324, 0.889479, 0.057648,
		0.868790, -0.455385, 0.194494,
		14.857589, 13.243414, 14.804581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.837452, 13.974495, 14.280939>,  <14.249435, 13.562183, 14.668435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.837452, 13.974495, 14.280939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978268, 13.607711, 14.356042>,  <15.062757, 13.387641, 14.401104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<14.978268, 13.607711, 14.356042>,  <14.837452, 13.974495, 14.280939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.978268, 13.607711, 14.356042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398490, -0.034679, -0.916517,
		0.846920, 0.397470, 0.353191,
		0.352040, -0.916960, 0.187758,
		15.083879, 13.332623, 14.412370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.496347, 13.995130, 14.032612>,  <14.837452, 13.974495, 14.280939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.496347, 13.995130, 14.032612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.437126, 13.604839, 14.097158>,  <15.401593, 13.370665, 14.135886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.437126, 13.604839, 14.097158>,  <15.496347, 13.995130, 14.032612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.437126, 13.604839, 14.097158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539622, -0.216435, -0.813611,
		0.828787, -0.033381, 0.558567,
		-0.148052, -0.975726, 0.161366,
		15.392711, 13.312121, 14.145568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.124229, 13.731490, 14.115924>,  <15.496347, 13.995130, 14.032612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.124229, 13.731490, 14.115924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898277, 13.433945, 13.973053>,  <15.762706, 13.255417, 13.887330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<15.898277, 13.433945, 13.973053>,  <16.124229, 13.731490, 14.115924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.898277, 13.433945, 13.973053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643678, -0.126377, -0.754790,
		0.516323, -0.656273, 0.550197,
		-0.564880, -0.743865, -0.357177,
		15.728813, 13.210785, 13.865900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.593147, 13.183362, 14.112076>,  <16.124229, 13.731490, 14.115924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.593147, 13.183362, 14.112076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.295864, 13.100315, 13.857662>,  <16.117495, 13.050487, 13.705014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.295864, 13.100315, 13.857662>,  <16.593147, 13.183362, 14.112076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.295864, 13.100315, 13.857662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668978, -0.215494, -0.711358,
		0.010629, -0.954179, 0.299048,
		-0.743206, -0.207617, -0.636035,
		16.072903, 13.038030, 13.666852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.743153, 12.566733, 13.796284>,  <16.593147, 13.183362, 14.112076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.743153, 12.566733, 13.796284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481537, 12.730968, 13.542150>,  <16.324568, 12.829508, 13.389669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.481537, 12.730968, 13.542150>,  <16.743153, 12.566733, 13.796284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.481537, 12.730968, 13.542150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636749, -0.154610, -0.755412,
		-0.408391, -0.898618, -0.160319,
		-0.654040, 0.410586, -0.635335,
		16.285324, 12.854143, 13.351549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.703249, 12.028534, 13.312508>,  <16.743153, 12.566733, 13.796284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.703249, 12.028534, 13.312508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556795, 12.355453, 13.134532>,  <16.468924, 12.551605, 13.027747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.556795, 12.355453, 13.134532>,  <16.703249, 12.028534, 13.312508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.556795, 12.355453, 13.134532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732175, -0.042093, -0.679815,
		-0.574341, -0.574675, -0.582993,
		-0.366133, 0.817298, -0.444938,
		16.446955, 12.600643, 13.001050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.164276, 12.211240, 12.841488>,  <16.703249, 12.028534, 13.312508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.164276, 12.211240, 12.841488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.889797, 12.475447, 12.719603>,  <16.725109, 12.633971, 12.646471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.889797, 12.475447, 12.719603>,  <17.164276, 12.211240, 12.841488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.889797, 12.475447, 12.719603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564118, 0.218747, -0.796191,
		-0.459243, -0.718239, -0.522713,
		-0.686197, 0.660517, -0.304713,
		16.683937, 12.673602, 12.628188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.971481, 11.945225, 12.211452>,  <17.164276, 12.211240, 12.841488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.971481, 11.945225, 12.211452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951071, 12.341106, 12.264944>,  <16.938824, 12.578635, 12.297039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<16.951071, 12.341106, 12.264944>,  <16.971481, 11.945225, 12.211452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.951071, 12.341106, 12.264944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639222, 0.135247, -0.757036,
		-0.767328, 0.046853, -0.639541,
		-0.051027, 0.989703, 0.133728,
		16.935762, 12.638018, 12.305062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.799356, 12.213659, 11.543610>,  <16.971481, 11.945225, 12.211452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.799356, 12.213659, 11.543610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008776, 12.431548, 11.805655>,  <17.134426, 12.562282, 11.962883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.008776, 12.431548, 11.805655>,  <16.799356, 12.213659, 11.543610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.008776, 12.431548, 11.805655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676995, 0.200864, -0.708048,
		-0.517279, 0.814206, -0.263613,
		0.523546, 0.544723, 0.655115,
		17.165840, 12.594965, 12.002190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.947868, 12.859119, 11.201384>,  <16.799356, 12.213659, 11.543610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.947868, 12.859119, 11.201384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207680, 12.755678, 11.487387>,  <17.363567, 12.693613, 11.658988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.207680, 12.755678, 11.487387>,  <16.947868, 12.859119, 11.201384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.207680, 12.755678, 11.487387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760110, 0.197929, -0.618916,
		0.018533, 0.945488, 0.325128,
		0.649530, -0.258604, 0.715007,
		17.402538, 12.678097, 11.701889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.386990, 13.333039, 11.389908>,  <16.947868, 12.859119, 11.201384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.386990, 13.333039, 11.389908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576044, 12.990908, 11.474788>,  <17.689476, 12.785629, 11.525716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<17.576044, 12.990908, 11.474788>,  <17.386990, 13.333039, 11.389908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.576044, 12.990908, 11.474788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.730153, 0.245245, -0.637754,
		0.493448, 0.456365, 0.740432,
		0.472636, -0.855328, 0.212201,
		17.717834, 12.734309, 11.538448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.043945, 13.565957, 11.758537>,  <17.386990, 13.333039, 11.389908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.043945, 13.565957, 11.758537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.064278, 13.214569, 11.568502>,  <18.076477, 13.003736, 11.454481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.064278, 13.214569, 11.568502>,  <18.043945, 13.565957, 11.758537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.064278, 13.214569, 11.568502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766189, 0.339430, -0.545657,
		0.640602, -0.336271, 0.690326,
		0.050829, -0.878470, -0.475087,
		18.079527, 12.951028, 11.425977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.794874, 13.386433, 11.708229>,  <18.043945, 13.565957, 11.758537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.794874, 13.386433, 11.708229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.616425, 13.219040, 11.391788>,  <18.509354, 13.118605, 11.201922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<18.616425, 13.219040, 11.391788>,  <18.794874, 13.386433, 11.708229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.616425, 13.219040, 11.391788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642617, 0.465449, -0.608605,
		0.622909, -0.779891, 0.061276,
		-0.446125, -0.418483, -0.791104,
		18.482588, 13.093495, 11.154456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.193190, 12.890571, 11.294499>,  <18.794874, 13.386433, 11.708229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.193190, 12.890571, 11.294499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032879, 13.209126, 11.113328>,  <18.936693, 13.400260, 11.004625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<19.032879, 13.209126, 11.113328>,  <19.193190, 12.890571, 11.294499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<19.032879, 13.209126, 11.113328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876492, 0.189363, -0.442609,
		-0.266721, -0.574375, -0.773921,
		-0.400776, 0.796389, -0.452928,
		18.912645, 13.448043, 10.977449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.706928, 12.613221, 11.713733>,  <19.193190, 12.890571, 11.294499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.706928, 12.613221, 11.713733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099501, 12.537886, 11.728273>,  <20.335045, 12.492684, 11.736998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.099501, 12.537886, 11.728273>,  <19.706928, 12.613221, 11.713733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.099501, 12.537886, 11.728273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190372, 0.933176, -0.304861,
		0.023495, 0.306121, 0.951703,
		0.981431, -0.188340, 0.036351,
		20.393930, 12.481383, 11.739179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.023489, 13.205944, 11.969916>,  <19.706928, 12.613221, 11.713733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.023489, 13.205944, 11.969916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.332170, 13.019722, 11.796605>,  <20.517380, 12.907989, 11.692618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.332170, 13.019722, 11.796605>,  <20.023489, 13.205944, 11.969916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.332170, 13.019722, 11.796605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399554, 0.884945, -0.239226,
		0.494800, 0.011493, 0.868931,
		0.771705, -0.465554, -0.433279,
		20.563683, 12.880055, 11.666621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.548447, 13.600917, 12.153233>,  <20.023489, 13.205944, 11.969916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.548447, 13.600917, 12.153233> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655834, 13.413892, 11.816350>,  <20.720266, 13.301677, 11.614221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<20.655834, 13.413892, 11.816350>,  <20.548447, 13.600917, 12.153233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.655834, 13.413892, 11.816350> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460627, 0.830178, -0.314052,
		0.846019, -0.303630, 0.438247,
		0.268468, -0.467562, -0.842206,
		20.736374, 13.273623, 11.563688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.273436, 13.843092, 12.006590>,  <20.548447, 13.600917, 12.153233>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.273436, 13.843092, 12.006590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149101, 13.667700, 11.669279>,  <21.074501, 13.562465, 11.466892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.149101, 13.667700, 11.669279>,  <21.273436, 13.843092, 12.006590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.149101, 13.667700, 11.669279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458301, 0.708128, -0.537136,
		0.832672, -0.553435, -0.019154,
		-0.310834, -0.438480, -0.843278,
		21.055851, 13.536156, 11.416296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.811920, 13.774184, 11.507375>,  <21.273436, 13.843092, 12.006590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.811920, 13.774184, 11.507375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.491526, 13.758169, 11.268438>,  <21.299288, 13.748560, 11.125076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.491526, 13.758169, 11.268438>,  <21.811920, 13.774184, 11.507375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.491526, 13.758169, 11.268438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447068, 0.623608, -0.641282,
		0.398182, -0.780711, -0.481603,
		-0.800987, -0.040037, -0.597341,
		21.251230, 13.746158, 11.089236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.070513, 13.784894, 10.857262>,  <21.811920, 13.774184, 11.507375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.070513, 13.784894, 10.857262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686253, 13.841931, 10.761916>,  <21.455696, 13.876154, 10.704709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.686253, 13.841931, 10.761916>,  <22.070513, 13.784894, 10.857262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.686253, 13.841931, 10.761916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274942, 0.366259, -0.888966,
		-0.039458, -0.919522, -0.391052,
		-0.960651, 0.142593, -0.238364,
		21.398058, 13.884709, 10.690407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.874172, 13.497629, 10.083242>,  <22.070513, 13.784894, 10.857262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.874172, 13.497629, 10.083242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640471, 13.803517, 10.191943>,  <21.500250, 13.987050, 10.257164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.640471, 13.803517, 10.191943>,  <21.874172, 13.497629, 10.083242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.640471, 13.803517, 10.191943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146539, 0.428747, -0.891461,
		-0.798232, -0.481017, -0.362558,
		-0.584254, 0.764722, 0.271752,
		21.465195, 14.032934, 10.273469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.454926, 13.637283, 9.474515>,  <21.874172, 13.497629, 10.083242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.454926, 13.637283, 9.474515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403147, 13.972350, 9.686762>,  <21.372080, 14.173390, 9.814110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.403147, 13.972350, 9.686762>,  <21.454926, 13.637283, 9.474515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.403147, 13.972350, 9.686762> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026382, 0.532022, -0.846320,
		-0.991235, -0.123552, -0.046769,
		-0.129447, 0.837668, 0.530618,
		21.364313, 14.223651, 9.845947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.891300, 14.018051, 9.205568>,  <21.454926, 13.637283, 9.474515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.891300, 14.018051, 9.205568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118935, 14.292081, 9.387476>,  <21.255516, 14.456498, 9.496620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.118935, 14.292081, 9.387476>,  <20.891300, 14.018051, 9.205568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.118935, 14.292081, 9.387476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087906, 0.499204, -0.862014,
		-0.817566, 0.530537, 0.223868,
		0.569086, 0.685074, 0.454769,
		21.289661, 14.497603, 9.523907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.672644, 14.665912, 8.883466>,  <20.891300, 14.018051, 9.205568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.672644, 14.665912, 8.883466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005903, 14.791034, 9.065899>,  <21.205860, 14.866107, 9.175359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.005903, 14.791034, 9.065899>,  <20.672644, 14.665912, 8.883466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.005903, 14.791034, 9.065899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217636, 0.572695, -0.790351,
		-0.508423, 0.757742, 0.409064,
		0.833151, 0.312806, 0.456083,
		21.255848, 14.884875, 9.202724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.638176, 15.394804, 8.721684>,  <20.672644, 14.665912, 8.883466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.638176, 15.394804, 8.721684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011259, 15.297800, 8.828450>,  <21.235109, 15.239598, 8.892509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.011259, 15.297800, 8.828450>,  <20.638176, 15.394804, 8.721684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.011259, 15.297800, 8.828450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358124, 0.535742, -0.764675,
		0.042444, 0.808808, 0.586540,
		0.932709, -0.242509, 0.266914,
		21.291071, 15.225047, 8.908525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.022446, 15.954547, 8.504291>,  <20.638176, 15.394804, 8.721684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.022446, 15.954547, 8.504291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.289640, 15.662073, 8.559664>,  <21.449957, 15.486588, 8.592888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.289640, 15.662073, 8.559664>,  <21.022446, 15.954547, 8.504291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.289640, 15.662073, 8.559664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516423, 0.321520, -0.793683,
		0.535820, 0.601659, 0.592371,
		0.667986, -0.731185, 0.138434,
		21.490036, 15.442718, 8.601193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.703514, 16.296860, 8.476268>,  <21.022446, 15.954547, 8.504291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.703514, 16.296860, 8.476268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763685, 15.918857, 8.360107>,  <21.799788, 15.692055, 8.290411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.763685, 15.918857, 8.360107>,  <21.703514, 16.296860, 8.476268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.763685, 15.918857, 8.360107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523933, 0.325305, -0.787192,
		0.838371, -0.033734, 0.544055,
		0.150429, -0.945007, -0.290400,
		21.808813, 15.635354, 8.272987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.494003, 16.114548, 8.388163>,  <21.703514, 16.296860, 8.476268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.494003, 16.114548, 8.388163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284492, 15.837071, 8.190395>,  <22.158787, 15.670586, 8.071735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.284492, 15.837071, 8.190395>,  <22.494003, 16.114548, 8.388163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284492, 15.837071, 8.190395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587101, 0.126577, -0.799557,
		0.617228, -0.709063, 0.340969,
		-0.523777, -0.693692, -0.494418,
		22.127359, 15.628963, 8.042070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.026012, 15.659478, 7.956812>,  <22.494003, 16.114548, 8.388163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.026012, 15.659478, 7.956812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.660738, 15.615883, 7.799731>,  <22.441574, 15.589725, 7.705483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.660738, 15.615883, 7.799731>,  <23.026012, 15.659478, 7.956812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.660738, 15.615883, 7.799731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298194, 0.478133, -0.826117,
		0.277800, -0.871499, -0.404125,
		-0.913185, -0.108987, -0.392701,
		22.386782, 15.583186, 7.681921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.990705, 15.168219, 7.385547>,  <23.026012, 15.659478, 7.956812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.990705, 15.168219, 7.385547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.704264, 15.435114, 7.303586>,  <22.532398, 15.595251, 7.254410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.704264, 15.435114, 7.303586>,  <22.990705, 15.168219, 7.385547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.704264, 15.435114, 7.303586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530817, 0.329979, -0.780607,
		-0.453238, -0.667762, -0.590482,
		-0.716106, 0.667239, -0.204900,
		22.489431, 15.635285, 7.242116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.863018, 15.042263, 6.750055>,  <22.990705, 15.168219, 7.385547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.863018, 15.042263, 6.750055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.690924, 15.398802, 6.807179>,  <22.587667, 15.612725, 6.841454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.690924, 15.398802, 6.807179>,  <22.863018, 15.042263, 6.750055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.690924, 15.398802, 6.807179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343117, 0.307799, -0.887429,
		-0.834965, -0.332804, -0.438264,
		-0.430237, 0.891348, 0.142810,
		22.561852, 15.666206, 6.850022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.527048, 15.114027, 6.225114>,  <22.863018, 15.042263, 6.750055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.527048, 15.114027, 6.225114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.520088, 15.486252, 6.371401>,  <22.515913, 15.709587, 6.459174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.520088, 15.486252, 6.371401>,  <22.527048, 15.114027, 6.225114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.520088, 15.486252, 6.371401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258465, 0.357527, -0.897424,
		-0.965864, 0.078909, -0.246739,
		-0.017401, 0.930563, 0.365718,
		22.514868, 15.765421, 6.481117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.231895, 15.620490, 5.718435>,  <22.527048, 15.114027, 6.225114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.231895, 15.620490, 5.718435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.470835, 15.818196, 5.971062>,  <22.614199, 15.936820, 6.122639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.470835, 15.818196, 5.971062>,  <22.231895, 15.620490, 5.718435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.470835, 15.818196, 5.971062> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.487113, 0.401995, -0.775320,
		-0.637101, 0.770780, -0.000633,
		0.597347, 0.494266, 0.631568,
		22.650040, 15.966476, 6.160532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.209944, 16.306232, 5.547389>,  <22.231895, 15.620490, 5.718435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.209944, 16.306232, 5.547389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.556438, 16.269146, 5.743771>,  <22.764336, 16.246893, 5.861600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.556438, 16.269146, 5.743771>,  <22.209944, 16.306232, 5.547389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.556438, 16.269146, 5.743771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480226, 0.425712, -0.766911,
		-0.137900, 0.900096, 0.413292,
		0.866237, -0.092717, 0.490955,
		22.816309, 16.241331, 5.891057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.573645, 16.936848, 5.361200>,  <22.209944, 16.306232, 5.547389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.573645, 16.936848, 5.361200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.863194, 16.695940, 5.495829>,  <23.036922, 16.551395, 5.576607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.863194, 16.695940, 5.495829>,  <22.573645, 16.936848, 5.361200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.863194, 16.695940, 5.495829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644057, 0.414957, -0.642652,
		0.247385, 0.681971, 0.688271,
		0.723873, -0.602268, 0.336574,
		23.080355, 16.515259, 5.596801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.151905, 17.389055, 5.397679>,  <22.573645, 16.936848, 5.361200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.151905, 17.389055, 5.397679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270016, 17.009344, 5.354448>,  <23.340881, 16.781517, 5.328509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.270016, 17.009344, 5.354448>,  <23.151905, 17.389055, 5.397679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.270016, 17.009344, 5.354448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699329, 0.291818, -0.652519,
		0.650962, 0.117090, 0.750026,
		0.295275, -0.949280, -0.108078,
		23.358599, 16.724560, 5.322024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.775448, 17.976192, 5.265359>,  <23.151905, 17.389055, 5.397679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.775448, 17.976192, 5.265359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968369, 18.091429, 5.596270>,  <23.084122, 18.160570, 5.794816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.968369, 18.091429, 5.596270>,  <22.775448, 17.976192, 5.265359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.968369, 18.091429, 5.596270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491685, 0.692562, -0.527830,
		-0.725003, 0.661334, 0.192375,
		0.482303, 0.288091, 0.827277,
		23.113060, 18.177856, 5.844453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.723772, 18.781866, 5.565413>,  <22.775448, 17.976192, 5.265359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.723772, 18.781866, 5.565413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063555, 18.572479, 5.591962>,  <23.267424, 18.446848, 5.607891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.063555, 18.572479, 5.591962>,  <22.723772, 18.781866, 5.565413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.063555, 18.572479, 5.591962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433486, 0.620593, -0.653418,
		0.300853, 0.583821, 0.754082,
		0.849457, -0.523467, 0.066371,
		23.318392, 18.415440, 5.611873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.405540, 19.081692, 5.855055>,  <22.723772, 18.781866, 5.565413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.405540, 19.081692, 5.855055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508495, 18.798038, 5.592490>,  <23.570269, 18.627846, 5.434951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.508495, 18.798038, 5.592490>,  <23.405540, 19.081692, 5.855055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.508495, 18.798038, 5.592490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381487, 0.698693, -0.605224,
		0.887817, -0.094635, 0.450362,
		0.257389, -0.709135, -0.656413,
		23.585712, 18.585299, 5.395566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.974594, 18.866667, 6.519926>,  <23.405540, 19.081692, 5.855055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.974594, 18.866667, 6.519926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042063, 19.249413, 6.425301>,  <23.082544, 19.479059, 6.368526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.042063, 19.249413, 6.425301>,  <22.974594, 18.866667, 6.519926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.042063, 19.249413, 6.425301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369727, -0.161058, -0.915075,
		-0.913703, 0.241809, 0.326613,
		0.168670, 0.956864, -0.236562,
		23.092663, 19.536472, 6.354332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.393103, 19.188492, 6.282533>,  <22.974594, 18.866667, 6.519926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.393103, 19.188492, 6.282533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712141, 19.356148, 6.109020>,  <22.903564, 19.456741, 6.004912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.712141, 19.356148, 6.109020>,  <22.393103, 19.188492, 6.282533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.712141, 19.356148, 6.109020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438316, -0.091321, -0.894170,
		-0.414394, 0.903318, 0.110878,
		0.797594, 0.419138, -0.433782,
		22.951420, 19.481890, 5.978886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.745152, 19.351704, 6.611340>,  <22.393103, 19.188492, 6.282533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.745152, 19.351704, 6.611340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930294, 19.585741, 6.877703>,  <22.041380, 19.726164, 7.037520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.930294, 19.585741, 6.877703>,  <21.745152, 19.351704, 6.611340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.930294, 19.585741, 6.877703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.862076, 0.122223, 0.491820,
		0.206371, -0.801703, 0.560966,
		0.462856, 0.585092, 0.665906,
		22.069151, 19.761269, 7.077475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.665934, 19.105766, 7.315791>,  <21.745152, 19.351704, 6.611340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.665934, 19.105766, 7.315791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.687860, 19.504913, 7.301617>,  <21.701017, 19.744402, 7.293112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.687860, 19.504913, 7.301617>,  <21.665934, 19.105766, 7.315791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.687860, 19.504913, 7.301617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.930103, 0.063939, 0.361691,
		0.363186, 0.013132, 0.931624,
		0.054817, 0.997867, -0.035435,
		21.704306, 19.804274, 7.290986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.147154, 18.523417, 7.243963>,  <21.665934, 19.105766, 7.315791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.147154, 18.523417, 7.243963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.470959, 18.712019, 7.383887>,  <22.665241, 18.825180, 7.467842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.470959, 18.712019, 7.383887>,  <22.147154, 18.523417, 7.243963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.470959, 18.712019, 7.383887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000409, -0.595376, 0.803447,
		0.587100, -0.650545, -0.481772,
		0.809514, 0.471507, 0.349812,
		22.713814, 18.853472, 7.488831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.709034, 18.014078, 7.455351>,  <22.147154, 18.523417, 7.243963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.709034, 18.014078, 7.455351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703316, 18.354313, 7.665606>,  <22.699884, 18.558455, 7.791759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.703316, 18.354313, 7.665606>,  <22.709034, 18.014078, 7.455351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.703316, 18.354313, 7.665606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118994, -0.520509, 0.845524,
		0.992792, 0.074634, -0.093774,
		-0.014294, 0.850588, 0.525639,
		22.699028, 18.609489, 7.823298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.312469, 18.055862, 8.008093>,  <22.709034, 18.014078, 7.455351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.312469, 18.055862, 8.008093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.021126, 18.300726, 8.131224>,  <22.846319, 18.447643, 8.205102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.021126, 18.300726, 8.131224>,  <23.312469, 18.055862, 8.008093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.021126, 18.300726, 8.131224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082554, -0.367580, 0.926320,
		0.680206, 0.700105, 0.217194,
		-0.728358, 0.612158, 0.307827,
		22.802618, 18.484373, 8.223572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.563654, 18.276001, 8.651318>,  <23.312469, 18.055862, 8.008093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.563654, 18.276001, 8.651318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.176668, 18.376560, 8.662716>,  <22.944477, 18.436895, 8.669555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.176668, 18.376560, 8.662716>,  <23.563654, 18.276001, 8.651318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.176668, 18.376560, 8.662716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021017, -0.192099, 0.981150,
		0.252133, 0.948629, 0.191132,
		-0.967464, 0.251398, 0.028497,
		22.886429, 18.451979, 8.671265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.464209, 18.696796, 9.226440>,  <23.563654, 18.276001, 8.651318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.464209, 18.696796, 9.226440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.105585, 18.525087, 9.182797>,  <22.890411, 18.422062, 9.156611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.105585, 18.525087, 9.182797>,  <23.464209, 18.696796, 9.226440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.105585, 18.525087, 9.182797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076501, -0.092550, 0.992765,
		-0.436264, 0.898421, 0.050136,
		-0.896561, -0.429272, -0.109106,
		22.836617, 18.396305, 9.150065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.149174, 18.932312, 9.754045>,  <23.464209, 18.696796, 9.226440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.149174, 18.932312, 9.754045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898245, 18.639191, 9.648618>,  <22.747688, 18.463318, 9.585361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.898245, 18.639191, 9.648618>,  <23.149174, 18.932312, 9.754045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.898245, 18.639191, 9.648618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205653, -0.170547, 0.963650,
		-0.751115, 0.658723, -0.043715,
		-0.627323, -0.732801, -0.263568,
		22.710049, 18.419350, 9.569548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.689508, 18.970512, 10.350251>,  <23.149174, 18.932312, 9.754045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.689508, 18.970512, 10.350251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605619, 18.616196, 10.184654>,  <22.555286, 18.403606, 10.085297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.605619, 18.616196, 10.184654>,  <22.689508, 18.970512, 10.350251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.605619, 18.616196, 10.184654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314209, -0.339893, 0.886423,
		-0.925898, 0.315985, -0.207040,
		-0.209724, -0.885792, -0.413992,
		22.542702, 18.350458, 10.060457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.082075, 18.667187, 10.665168>,  <22.689508, 18.970512, 10.350251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.082075, 18.667187, 10.665168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287048, 18.355688, 10.520413>,  <22.410032, 18.168789, 10.433560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.287048, 18.355688, 10.520413>,  <22.082075, 18.667187, 10.665168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.287048, 18.355688, 10.520413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203361, -0.519486, 0.829927,
		-0.834299, -0.351690, -0.424570,
		0.512435, -0.778748, -0.361886,
		22.440779, 18.122065, 10.411847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.700602, 18.074152, 10.840302>,  <22.082075, 18.667187, 10.665168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.700602, 18.074152, 10.840302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051258, 17.897772, 10.763298>,  <22.261652, 17.791945, 10.717095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.051258, 17.897772, 10.763298>,  <21.700602, 18.074152, 10.840302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.051258, 17.897772, 10.763298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125432, -0.595725, 0.793334,
		-0.464503, -0.671324, -0.577547,
		0.876644, -0.440949, -0.192511,
		22.314251, 17.765488, 10.705544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.521875, 17.322351, 10.824856>,  <21.700602, 18.074152, 10.840302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.521875, 17.322351, 10.824856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908289, 17.370838, 10.916141>,  <22.140137, 17.399931, 10.970911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.908289, 17.370838, 10.916141>,  <21.521875, 17.322351, 10.824856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.908289, 17.370838, 10.916141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069230, -0.729460, 0.680511,
		0.248960, -0.673198, -0.696293,
		0.966036, 0.121216, 0.228212,
		22.198099, 17.407204, 10.984604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.646910, 16.720654, 11.081521>,  <21.521875, 17.322351, 10.824856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.646910, 16.720654, 11.081521> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.973204, 16.910389, 11.213933>,  <22.168980, 17.024231, 11.293381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<21.973204, 16.910389, 11.213933>,  <21.646910, 16.720654, 11.081521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.973204, 16.910389, 11.213933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168787, -0.742587, 0.648133,
		0.553253, -0.472831, -0.685815,
		0.815734, 0.474338, 0.331031,
		22.217924, 17.052691, 11.313242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.215107, 16.226299, 11.226912>,  <21.646910, 16.720654, 11.081521>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.215107, 16.226299, 11.226912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320803, 16.544044, 11.445695>,  <22.384220, 16.734692, 11.576964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.320803, 16.544044, 11.445695>,  <22.215107, 16.226299, 11.226912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.320803, 16.544044, 11.445695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366661, -0.607272, 0.704827,
		0.892041, 0.014303, -0.451729,
		0.264241, 0.794365, 0.546956,
		22.400074, 16.782354, 11.609781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.921028, 16.090672, 11.512987>,  <22.215107, 16.226299, 11.226912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.921028, 16.090672, 11.512987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.760626, 16.363741, 11.757333>,  <22.664385, 16.527582, 11.903940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.760626, 16.363741, 11.757333>,  <22.921028, 16.090672, 11.512987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.760626, 16.363741, 11.757333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261668, -0.553685, 0.790546,
		0.877910, 0.476856, 0.043397,
		-0.401005, 0.682672, 0.610863,
		22.640324, 16.568542, 11.940592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.425133, 16.171846, 12.025175>,  <22.921028, 16.090672, 11.512987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.425133, 16.171846, 12.025175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102211, 16.322203, 12.207149>,  <22.908457, 16.412416, 12.316333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.102211, 16.322203, 12.207149>,  <23.425133, 16.171846, 12.025175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.102211, 16.322203, 12.207149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276237, -0.440525, 0.854185,
		0.521489, 0.815257, 0.251803,
		-0.807306, 0.375891, 0.454933,
		22.860020, 16.434969, 12.343628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.664139, 16.093250, 12.683920>,  <23.425133, 16.171846, 12.025175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.664139, 16.093250, 12.683920> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.274446, 16.165237, 12.738298>,  <23.040630, 16.208429, 12.770926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.274446, 16.165237, 12.738298>,  <23.664139, 16.093250, 12.683920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.274446, 16.165237, 12.738298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001181, -0.606808, 0.794847,
		0.225542, 0.774206, 0.591385,
		-0.974233, 0.179970, 0.135946,
		22.982176, 16.219229, 12.779082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.622713, 16.326036, 13.338408>,  <23.664139, 16.093250, 12.683920>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.622713, 16.326036, 13.338408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.240400, 16.221655, 13.284167>,  <23.011013, 16.159027, 13.251623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.240400, 16.221655, 13.284167>,  <23.622713, 16.326036, 13.338408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.240400, 16.221655, 13.284167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002823, -0.452940, 0.891536,
		-0.294068, 0.852496, 0.432175,
		-0.955780, -0.260952, -0.135602,
		22.953667, 16.143370, 13.243486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.214830, 16.629278, 13.971865>,  <23.622713, 16.326036, 13.338408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.214830, 16.629278, 13.971865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056021, 16.301992, 13.805541>,  <22.960735, 16.105621, 13.705747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.056021, 16.301992, 13.805541>,  <23.214830, 16.629278, 13.971865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.056021, 16.301992, 13.805541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172979, -0.378218, 0.909411,
		-0.901360, 0.432985, 0.008628,
		-0.397025, -0.818214, -0.415808,
		22.936913, 16.056528, 13.680799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.515615, 16.593351, 14.250376>,  <23.214830, 16.629278, 13.971865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.515615, 16.593351, 14.250376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.620373, 16.231491, 14.115902>,  <22.683228, 16.014376, 14.035218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.620373, 16.231491, 14.115902>,  <22.515615, 16.593351, 14.250376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.620373, 16.231491, 14.115902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268133, -0.402833, 0.875117,
		-0.927101, -0.139046, -0.348067,
		0.261894, -0.904650, -0.336183,
		22.698940, 15.960096, 14.015047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.666700, 16.354483, 14.934016>,  <22.515615, 16.593351, 14.250376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.666700, 16.354483, 14.934016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875937, 16.162676, 15.215851>,  <23.001478, 16.047592, 15.384952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<22.875937, 16.162676, 15.215851>,  <22.666700, 16.354483, 14.934016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.875937, 16.162676, 15.215851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549535, -0.442144, -0.708887,
		0.651452, 0.758005, 0.032231,
		0.523089, -0.479517, 0.704586,
		23.032864, 16.018820, 15.427226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.074663, 15.769015, 14.667410>,  <22.666700, 16.354483, 14.934016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.074663, 15.769015, 14.667410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.365471, 16.042278, 14.639877>,  <23.539955, 16.206236, 14.623358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.365471, 16.042278, 14.639877>,  <23.074663, 15.769015, 14.667410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.365471, 16.042278, 14.639877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679335, -0.701127, 0.216620,
		0.099725, -0.204248, -0.973826,
		0.727020, 0.683157, -0.068832,
		23.583576, 16.247225, 14.619227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.623707, 15.602394, 14.105283>,  <23.074663, 15.769015, 14.667410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.623707, 15.602394, 14.105283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793030, 15.815012, 14.398751>,  <23.894623, 15.942582, 14.574832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<23.793030, 15.815012, 14.398751>,  <23.623707, 15.602394, 14.105283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.793030, 15.815012, 14.398751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705112, -0.701778, 0.101610,
		0.568884, 0.474308, -0.671865,
		0.423306, 0.531544, 0.733671,
		23.920021, 15.974475, 14.618853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.321320, 15.904636, 13.902728>,  <23.623707, 15.602394, 14.105283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.321320, 15.904636, 13.902728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279568, 15.846025, 14.296202>,  <24.254517, 15.810859, 14.532286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.279568, 15.846025, 14.296202>,  <24.321320, 15.904636, 13.902728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.279568, 15.846025, 14.296202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790926, -0.611869, -0.007218,
		0.602944, 0.777269, 0.179756,
		-0.104377, -0.146526, 0.983685,
		24.248255, 15.802068, 14.591307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.812901, 16.272125, 14.399770>,  <24.321320, 15.904636, 13.902728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.812901, 16.272125, 14.399770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738926, 15.901604, 14.531079>,  <24.694542, 15.679291, 14.609865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.738926, 15.901604, 14.531079>,  <24.812901, 16.272125, 14.399770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.738926, 15.901604, 14.531079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949155, -0.254946, -0.184682,
		0.254764, 0.277428, 0.926352,
		-0.184934, -0.926302, 0.328274,
		24.683445, 15.623713, 14.629561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.284115, 16.030800, 15.048871>,  <24.812901, 16.272125, 14.399770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.284115, 16.030800, 15.048871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189680, 15.744983, 14.785451>,  <25.133018, 15.573492, 14.627399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.189680, 15.744983, 14.785451>,  <25.284115, 16.030800, 15.048871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.189680, 15.744983, 14.785451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970635, -0.205599, -0.124890,
		-0.046157, -0.668696, 0.742102,
		-0.236089, -0.714545, -0.658549,
		25.118853, 15.530620, 14.587886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.726139, 15.301351, 15.182557>,  <25.284115, 16.030800, 15.048871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.726139, 15.301351, 15.182557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616776, 15.321657, 14.798334>,  <25.551157, 15.333841, 14.567801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.616776, 15.321657, 14.798334>,  <25.726139, 15.301351, 15.182557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.616776, 15.321657, 14.798334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895214, -0.351907, -0.273411,
		-0.351907, -0.934657, 0.050767,
		0.273411, -0.050767, 0.960557,
		25.534752, 15.336887, 14.510167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.433113, 15.184950, 14.732374>,  <25.726139, 15.301351, 15.182557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.433113, 15.184950, 14.732374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673573, 14.983700, 14.980724>,  <26.817848, 14.862949, 15.129734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.673573, 14.983700, 14.980724>,  <26.433113, 15.184950, 14.732374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.673573, 14.983700, 14.980724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743804, 0.636340, -0.204516,
		-0.292191, 0.584753, 0.756762,
		0.601149, -0.503125, 0.620874,
		26.853918, 14.832763, 15.166986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<15.964520, 19.875544, 21.127632> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.591548, 19.748341, 21.196264>,  <15.367764, 19.672018, 21.237444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.591548, 19.748341, 21.196264>,  <15.964520, 19.875544, 21.127632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.591548, 19.748341, 21.196264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006847, -0.459207, -0.888303,
		0.361280, -0.829457, 0.426002,
		-0.932432, -0.318010, 0.171581,
		15.311818, 19.652937, 21.247738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.957880, 19.227137, 20.914095>,  <15.964520, 19.875544, 21.127632>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.957880, 19.227137, 20.914095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.574057, 19.337147, 20.890066>,  <15.343762, 19.403152, 20.875648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.574057, 19.337147, 20.890066>,  <15.957880, 19.227137, 20.914095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.574057, 19.337147, 20.890066> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081358, -0.475218, -0.876099,
		-0.269494, -0.835781, 0.478375,
		-0.959559, 0.275024, -0.060071,
		15.286189, 19.419655, 20.872046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.485487, 18.649746, 20.754829>,  <15.957880, 19.227137, 20.914095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.485487, 18.649746, 20.754829> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.243917, 18.957338, 20.670984>,  <15.098974, 19.141893, 20.620678>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.243917, 18.957338, 20.670984>,  <15.485487, 18.649746, 20.754829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.243917, 18.957338, 20.670984> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313071, -0.470719, -0.824870,
		-0.732980, -0.432537, 0.525026,
		-0.603926, 0.768983, -0.209613,
		15.062738, 19.188034, 20.608101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.954207, 18.310736, 20.576685>,  <15.485487, 18.649746, 20.754829>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.954207, 18.310736, 20.576685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.923392, 18.675488, 20.415419>,  <14.904903, 18.894339, 20.318659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.923392, 18.675488, 20.415419>,  <14.954207, 18.310736, 20.576685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.923392, 18.675488, 20.415419> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476989, -0.388799, -0.788237,
		-0.875527, 0.131582, 0.464908,
		-0.077037, 0.911878, -0.403167,
		14.900281, 18.949051, 20.294468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.265957, 18.347609, 20.368382>,  <14.954207, 18.310736, 20.576685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.265957, 18.347609, 20.368382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.468603, 18.619896, 20.156734>,  <14.590191, 18.783268, 20.029747>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.468603, 18.619896, 20.156734>,  <14.265957, 18.347609, 20.368382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.468603, 18.619896, 20.156734> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409562, -0.350029, -0.842460,
		-0.758683, 0.643510, 0.101465,
		0.506616, 0.680716, -0.529118,
		14.620588, 18.824110, 19.997999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.755116, 18.590836, 19.927759>,  <14.265957, 18.347609, 20.368382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.755116, 18.590836, 19.927759> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.097770, 18.704632, 19.755598>,  <14.303362, 18.772909, 19.652302>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.097770, 18.704632, 19.755598>,  <13.755116, 18.590836, 19.927759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.097770, 18.704632, 19.755598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376005, -0.226977, -0.898389,
		-0.353273, 0.931422, -0.087467,
		0.856632, 0.284489, -0.430404,
		14.354759, 18.789978, 19.626476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.562679, 19.060438, 19.291050>,  <13.755116, 18.590836, 19.927759>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.562679, 19.060438, 19.291050> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.931766, 18.917860, 19.232340>,  <14.153217, 18.832314, 19.197113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.931766, 18.917860, 19.232340>,  <13.562679, 19.060438, 19.291050>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.931766, 18.917860, 19.232340> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248394, -0.258613, -0.933499,
		0.294781, 0.897813, -0.327164,
		0.922716, -0.356443, -0.146777,
		14.208580, 18.810926, 19.188307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.823626, 19.413181, 18.695143>,  <13.562679, 19.060438, 19.291050>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.823626, 19.413181, 18.695143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.041055, 19.079117, 18.728697>,  <14.171513, 18.878679, 18.748829>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.041055, 19.079117, 18.728697>,  <13.823626, 19.413181, 18.695143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.041055, 19.079117, 18.728697> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326350, -0.302364, -0.895585,
		0.773320, 0.459440, -0.436911,
		0.543573, -0.835159, 0.083886,
		14.204126, 18.828569, 18.753862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.731067, 19.094090, 18.049803>,  <13.823626, 19.413181, 18.695143>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.731067, 19.094090, 18.049803> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.923587, 18.763123, 18.165545>,  <14.039099, 18.564543, 18.234989>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.923587, 18.763123, 18.165545>,  <13.731067, 19.094090, 18.049803>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.923587, 18.763123, 18.165545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311057, -0.469844, -0.826130,
		0.819507, 0.307611, -0.483511,
		0.481301, -0.827419, 0.289356,
		14.067977, 18.514896, 18.252352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.145322, 18.766586, 17.501385>,  <13.731067, 19.094090, 18.049803>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.145322, 18.766586, 17.501385> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.039029, 18.476078, 17.754974>,  <13.975254, 18.301773, 17.907127>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.039029, 18.476078, 17.754974>,  <14.145322, 18.766586, 17.501385>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.039029, 18.476078, 17.754974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143369, -0.620531, -0.770964,
		0.953327, -0.295761, 0.060770,
		-0.265731, -0.726269, 0.633972,
		13.959310, 18.258198, 17.945166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.579720, 18.066057, 17.417313>,  <14.145322, 18.766586, 17.501385>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.579720, 18.066057, 17.417313> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.204543, 18.030470, 17.551388>,  <13.979438, 18.009117, 17.631834>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.204543, 18.030470, 17.551388>,  <14.579720, 18.066057, 17.417313>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.204543, 18.030470, 17.551388> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210914, -0.620891, -0.754990,
		0.275287, -0.778832, 0.563594,
		-0.937941, -0.088969, 0.335190,
		13.923161, 18.003778, 17.651945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.473211, 17.388681, 17.394669>,  <14.579720, 18.066057, 17.417313>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.473211, 17.388681, 17.394669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.104035, 17.542641, 17.397064>,  <13.882530, 17.635015, 17.398502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<14.104035, 17.542641, 17.397064>,  <14.473211, 17.388681, 17.394669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.104035, 17.542641, 17.397064> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245499, -0.576551, -0.779307,
		-0.296499, -0.720724, 0.626614,
		-0.922940, 0.384897, 0.005991,
		13.827153, 17.658110, 17.398861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.112883, 16.908941, 17.190491>,  <14.473211, 17.388681, 17.394669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.112883, 16.908941, 17.190491> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.858966, 17.206865, 17.108225>,  <13.706615, 17.385620, 17.058865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.858966, 17.206865, 17.108225>,  <14.112883, 16.908941, 17.190491>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.858966, 17.206865, 17.108225> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388819, -0.537924, -0.747969,
		-0.667726, -0.394839, 0.631065,
		-0.634792, 0.744809, -0.205665,
		13.668529, 17.430307, 17.046526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.539297, 16.684099, 17.060354>,  <14.112883, 16.908941, 17.190491>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.539297, 16.684099, 17.060354> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.445068, 17.025896, 16.875162>,  <13.388531, 17.230974, 16.764046>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.445068, 17.025896, 16.875162>,  <13.539297, 16.684099, 17.060354>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.445068, 17.025896, 16.875162> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300951, -0.517112, -0.801264,
		-0.924085, -0.049420, 0.378977,
		-0.235572, 0.854490, -0.462982,
		13.374396, 17.282244, 16.736267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.826016, 16.559568, 16.761972>,  <13.539297, 16.684099, 17.060354>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.826016, 16.559568, 16.761972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.026745, 16.854099, 16.580423>,  <13.147182, 17.030817, 16.471495>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.026745, 16.854099, 16.580423>,  <12.826016, 16.559568, 16.761972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.026745, 16.854099, 16.580423> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300130, -0.343899, -0.889750,
		-0.811233, 0.582715, 0.048418,
		0.501820, 0.736326, -0.453873,
		13.177291, 17.074997, 16.444262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.383878, 16.683449, 16.192104>,  <12.826016, 16.559568, 16.761972>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.383878, 16.683449, 16.192104> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.756830, 16.805281, 16.114237>,  <12.980601, 16.878380, 16.067516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.756830, 16.805281, 16.114237>,  <12.383878, 16.683449, 16.192104>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.756830, 16.805281, 16.114237> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047098, -0.431585, -0.900842,
		-0.358395, 0.849097, -0.388056,
		0.932381, 0.304581, -0.194669,
		13.036545, 16.896654, 16.055836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.271300, 17.020500, 15.489417>,  <12.383878, 16.683449, 16.192104>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.271300, 17.020500, 15.489417> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.664583, 16.960808, 15.531436>,  <12.900553, 16.924994, 15.556647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.664583, 16.960808, 15.531436>,  <12.271300, 17.020500, 15.489417>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.664583, 16.960808, 15.531436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039179, -0.389595, -0.920153,
		0.178240, 0.908816, -0.377206,
		0.983207, -0.149230, 0.105048,
		12.959545, 16.916039, 15.562950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.555719, 17.260490, 14.827906>,  <12.271300, 17.020500, 15.489417>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.555719, 17.260490, 14.827906> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.849462, 17.051960, 15.001775>,  <13.025707, 16.926842, 15.106096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<12.849462, 17.051960, 15.001775>,  <12.555719, 17.260490, 14.827906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.849462, 17.051960, 15.001775> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280902, -0.349557, -0.893814,
		0.617913, 0.778477, -0.110256,
		0.734355, -0.521328, 0.434672,
		13.069768, 16.895561, 15.132176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.008389, 17.337738, 14.346016>,  <12.555719, 17.260490, 14.827906>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.008389, 17.337738, 14.346016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.131870, 17.025856, 14.563921>,  <13.205958, 16.838728, 14.694664>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.131870, 17.025856, 14.563921>,  <13.008389, 17.337738, 14.346016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.131870, 17.025856, 14.563921> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218932, -0.499110, -0.838426,
		0.925620, 0.378089, 0.016626,
		0.308701, -0.779704, 0.544762,
		13.224481, 16.791945, 14.727349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.640615, 17.155373, 14.139735>,  <13.008389, 17.337738, 14.346016>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.640615, 17.155373, 14.139735> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.454818, 16.832754, 14.286011>,  <13.343339, 16.639183, 14.373775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.454818, 16.832754, 14.286011>,  <13.640615, 17.155373, 14.139735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.454818, 16.832754, 14.286011> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048854, -0.435647, -0.898791,
		0.884228, -0.399617, 0.241758,
		-0.464494, -0.806547, 0.365688,
		13.315470, 16.590790, 14.395718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.105194, 16.663830, 14.049591>,  <13.640615, 17.155373, 14.139735>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.105194, 16.663830, 14.049591> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.759311, 16.466328, 14.086439>,  <13.551781, 16.347826, 14.108548>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.759311, 16.466328, 14.086439>,  <14.105194, 16.663830, 14.049591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.759311, 16.466328, 14.086439> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213853, -0.527874, -0.821959,
		0.454475, -0.691054, 0.562047,
		-0.864708, -0.493755, 0.092121,
		13.499898, 16.318201, 14.114076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233312, 15.979920, 14.113134>,  <14.105194, 16.663830, 14.049591>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233312, 15.979920, 14.113134> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.871288, 16.021227, 13.948112>,  <13.654074, 16.046011, 13.849097>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<13.871288, 16.021227, 13.948112>,  <14.233312, 15.979920, 14.113134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.871288, 16.021227, 13.948112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242506, -0.671594, -0.700109,
		-0.349369, -0.733688, 0.582790,
		-0.905059, 0.103266, -0.412557,
		13.599771, 16.052206, 13.824345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.953122, 15.642940, 13.983026>,  <14.233312, 15.979920, 14.113134>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.953122, 15.642940, 13.983026> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.295015, 15.552963, 13.795908>,  <15.500152, 15.498978, 13.683638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.295015, 15.552963, 13.795908>,  <14.953122, 15.642940, 13.983026>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.295015, 15.552963, 13.795908> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515363, 0.475228, 0.713134,
		0.061896, -0.850623, 0.522119,
		0.854734, -0.224941, -0.467794,
		15.551435, 15.485481, 13.655570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.391987, 15.284086, 14.462711>,  <14.953122, 15.642940, 13.983026>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.391987, 15.284086, 14.462711> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.641495, 15.426505, 14.184390>,  <15.791200, 15.511956, 14.017398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<15.641495, 15.426505, 14.184390>,  <15.391987, 15.284086, 14.462711>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.641495, 15.426505, 14.184390> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506459, 0.493929, 0.706776,
		0.595322, -0.793262, 0.127776,
		0.623771, 0.356047, -0.695802,
		15.828626, 15.533319, 13.975649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068172, 15.251358, 14.721861>,  <15.391987, 15.284086, 14.462711>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068172, 15.251358, 14.721861> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.136217, 15.513706, 14.427679>,  <16.177044, 15.671116, 14.251170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.136217, 15.513706, 14.427679>,  <16.068172, 15.251358, 14.721861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.136217, 15.513706, 14.427679> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510125, 0.579937, 0.635173,
		0.843110, -0.483224, -0.235924,
		0.170110, 0.655872, -0.735456,
		16.187250, 15.710467, 14.207043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.798990, 15.312809, 14.748487>,  <16.068172, 15.251358, 14.721861>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.798990, 15.312809, 14.748487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.651844, 15.637746, 14.567479>,  <16.563557, 15.832708, 14.458875>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.651844, 15.637746, 14.567479>,  <16.798990, 15.312809, 14.748487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.651844, 15.637746, 14.567479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493730, 0.583014, 0.645233,
		0.787976, 0.013937, -0.615549,
		-0.367866, 0.812343, -0.452519,
		16.541485, 15.881449, 14.431724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.373966, 15.808249, 14.694744>,  <16.798990, 15.312809, 14.748487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.373966, 15.808249, 14.694744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.028158, 16.007912, 14.671245>,  <16.820673, 16.127708, 14.657145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.028158, 16.007912, 14.671245>,  <17.373966, 15.808249, 14.694744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.028158, 16.007912, 14.671245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420592, 0.782489, 0.459144,
		0.275154, 0.372229, -0.886417,
		-0.864519, 0.499155, -0.058749,
		16.768803, 16.157658, 14.653620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.615044, 16.483629, 14.532042>,  <17.373966, 15.808249, 14.694744>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.615044, 16.483629, 14.532042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.252617, 16.526939, 14.695661>,  <17.035160, 16.552925, 14.793832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.252617, 16.526939, 14.695661>,  <17.615044, 16.483629, 14.532042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.252617, 16.526939, 14.695661> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335358, 0.773254, 0.538156,
		-0.258028, 0.624783, -0.736932,
		-0.906067, 0.108277, 0.409047,
		16.980797, 16.559422, 14.818375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.383739, 17.188978, 14.394583>,  <17.615044, 16.483629, 14.532042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.383739, 17.188978, 14.394583> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.197418, 17.058435, 14.723585>,  <17.085625, 16.980110, 14.920987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.197418, 17.058435, 14.723585>,  <17.383739, 17.188978, 14.394583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.197418, 17.058435, 14.723585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437233, 0.723224, 0.534578,
		-0.769320, 0.608636, -0.194187,
		-0.465805, -0.326357, 0.822507,
		17.057676, 16.960527, 14.970337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.393126, 17.821590, 14.748216>,  <17.383739, 17.188978, 14.394583>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.393126, 17.821590, 14.748216> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262766, 17.543650, 15.004644>,  <17.184551, 17.376886, 15.158502>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.262766, 17.543650, 15.004644>,  <17.393126, 17.821590, 14.748216>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.262766, 17.543650, 15.004644> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275698, 0.578768, 0.767475,
		-0.904313, 0.426860, 0.002950,
		-0.325897, -0.694851, 0.641072,
		17.164997, 17.335194, 15.196966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.102743, 18.200138, 15.180446>,  <17.393126, 17.821590, 14.748216>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.102743, 18.200138, 15.180446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.145079, 17.864506, 15.393891>,  <17.170479, 17.663126, 15.521959>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.145079, 17.864506, 15.393891>,  <17.102743, 18.200138, 15.180446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.145079, 17.864506, 15.393891> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141567, 0.543877, 0.827137,
		-0.984255, -0.012000, 0.176348,
		0.105838, -0.839079, 0.533615,
		17.176830, 17.612782, 15.553976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.615166, 18.195871, 15.806804>,  <17.102743, 18.200138, 15.180446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.615166, 18.195871, 15.806804> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.920559, 17.952484, 15.893391>,  <17.103796, 17.806452, 15.945343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.920559, 17.952484, 15.893391>,  <16.615166, 18.195871, 15.806804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.920559, 17.952484, 15.893391> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116248, 0.459181, 0.880704,
		-0.635277, -0.647240, 0.421311,
		0.763485, -0.608467, 0.216467,
		17.149605, 17.769943, 15.958331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.485853, 17.964863, 16.437948>,  <16.615166, 18.195871, 15.806804>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.485853, 17.964863, 16.437948> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.880682, 17.915367, 16.397205>,  <17.117580, 17.885670, 16.372759>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.880682, 17.915367, 16.397205>,  <16.485853, 17.964863, 16.437948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.880682, 17.915367, 16.397205> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145508, 0.425494, 0.893187,
		-0.067182, -0.896462, 0.437999,
		0.987073, -0.123738, -0.101856,
		17.176804, 17.878246, 16.366648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.607975, 17.742430, 17.144657>,  <16.485853, 17.964863, 16.437948>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.607975, 17.742430, 17.144657> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949108, 17.854635, 16.968479>,  <17.153788, 17.921959, 16.862772>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<16.949108, 17.854635, 16.968479>,  <16.607975, 17.742430, 17.144657>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<16.949108, 17.854635, 16.968479> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203333, 0.598497, 0.774891,
		0.480973, -0.750408, 0.453379,
		0.852831, 0.280515, -0.440444,
		17.204958, 17.938789, 16.836346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.098587, 17.595320, 17.621893>,  <16.607975, 17.742430, 17.144657>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.098587, 17.595320, 17.621893> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.301041, 17.846249, 17.385149>,  <17.422512, 17.996805, 17.243103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.301041, 17.846249, 17.385149>,  <17.098587, 17.595320, 17.621893>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.301041, 17.846249, 17.385149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200174, 0.582065, 0.788118,
		0.838905, -0.517367, 0.169028,
		0.506132, 0.627321, -0.591861,
		17.452881, 18.034445, 17.207590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.840857, 17.641479, 17.919384>,  <17.098587, 17.595320, 17.621893>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.840857, 17.641479, 17.919384> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.771812, 17.961901, 17.690117>,  <17.730385, 18.154154, 17.552557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.771812, 17.961901, 17.690117>,  <17.840857, 17.641479, 17.919384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.771812, 17.961901, 17.690117> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368877, 0.592125, 0.716462,
		0.913310, -0.087758, -0.397698,
		-0.172612, 0.801053, -0.573166,
		17.720030, 18.202217, 17.518167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.375628, 18.020687, 18.019976>,  <17.840857, 17.641479, 17.919384>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.375628, 18.020687, 18.019976> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.117844, 18.285435, 17.866823>,  <17.963173, 18.444284, 17.774933>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.117844, 18.285435, 17.866823>,  <18.375628, 18.020687, 18.019976>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.117844, 18.285435, 17.866823> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233342, 0.647085, 0.725832,
		0.728163, 0.378428, -0.571464,
		-0.644461, 0.661871, -0.382880,
		17.924505, 18.483995, 17.751959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.709215, 18.744820, 18.149378>,  <18.375628, 18.020687, 18.019976>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.709215, 18.744820, 18.149378> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316490, 18.788548, 18.087294>,  <18.080854, 18.814783, 18.050043>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.316490, 18.788548, 18.087294>,  <18.709215, 18.744820, 18.149378>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.316490, 18.788548, 18.087294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030447, 0.716315, 0.697113,
		0.187387, 0.689161, -0.699960,
		-0.981814, 0.109319, -0.155211,
		18.021946, 18.821342, 18.040730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.528316, 19.475779, 18.160641>,  <18.709215, 18.744820, 18.149378>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.528316, 19.475779, 18.160641> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.189135, 19.294317, 18.270313>,  <17.985626, 19.185440, 18.336117>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<18.189135, 19.294317, 18.270313>,  <18.528316, 19.475779, 18.160641>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.189135, 19.294317, 18.270313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150943, 0.702488, 0.695504,
		-0.508126, 0.548369, -0.664153,
		-0.847953, -0.453653, 0.274180,
		17.934750, 19.158220, 18.352568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.046534, 20.108831, 18.394768>,  <18.528316, 19.475779, 18.160641>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.046534, 20.108831, 18.394768> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.878633, 19.781723, 18.552280>,  <17.777893, 19.585459, 18.646788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<17.878633, 19.781723, 18.552280>,  <18.046534, 20.108831, 18.394768>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.878633, 19.781723, 18.552280> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193309, 0.504443, 0.841528,
		-0.886816, 0.277109, -0.369821,
		-0.419748, -0.817770, 0.393781,
		17.752708, 19.536392, 18.670414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<17.502474, 20.344767, 18.937456> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.552502, 19.959452, 19.032482>,  <17.582518, 19.728264, 19.089499>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.552502, 19.959452, 19.032482>,  <17.502474, 20.344767, 18.937456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.552502, 19.959452, 19.032482> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135538, 0.220613, 0.965898,
		-0.982847, -0.153002, -0.102971,
		0.125067, -0.963286, 0.237567,
		17.590021, 19.670465, 19.103752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.910456, 20.180174, 19.418894>,  <17.502474, 20.344767, 18.937456>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.910456, 20.180174, 19.418894> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.202724, 19.913015, 19.475502>,  <17.378086, 19.752720, 19.509466>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.202724, 19.913015, 19.475502>,  <16.910456, 20.180174, 19.418894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.202724, 19.913015, 19.475502> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196679, -0.007424, 0.980440,
		-0.653783, -0.744216, -0.136786,
		0.730674, -0.667898, 0.141518,
		17.421926, 19.712646, 19.517958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.692484, 19.736492, 19.917734>,  <16.910456, 20.180174, 19.418894>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.692484, 19.736492, 19.917734> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.084192, 19.658356, 19.939173>,  <17.319218, 19.611473, 19.952036>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.084192, 19.658356, 19.939173>,  <16.692484, 19.736492, 19.917734>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.084192, 19.658356, 19.939173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065104, -0.052960, 0.996472,
		-0.191813, -0.979305, -0.064579,
		0.979270, -0.195340, 0.053598,
		17.377974, 19.599754, 19.955252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.702507, 19.167458, 20.368374>,  <16.692484, 19.736492, 19.917734>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.702507, 19.167458, 20.368374> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.057055, 19.352648, 20.368935>,  <17.269783, 19.463762, 20.369272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.057055, 19.352648, 20.368935>,  <16.702507, 19.167458, 20.368374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.057055, 19.352648, 20.368935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087875, -0.171211, 0.981308,
		0.454562, -0.869678, -0.192440,
		0.886369, 0.462976, 0.001403,
		17.322966, 19.491541, 20.369356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.983278, 18.774467, 21.029268>,  <16.702507, 19.167458, 20.368374>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.983278, 18.774467, 21.029268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.233898, 19.075644, 20.948751>,  <17.384270, 19.256350, 20.900442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.233898, 19.075644, 20.948751>,  <16.983278, 18.774467, 21.029268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.233898, 19.075644, 20.948751> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262743, 0.039097, 0.964073,
		0.733759, -0.656927, -0.173333,
		0.626549, 0.752940, -0.201291,
		17.421864, 19.301525, 20.888365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.520998, 18.581768, 21.370752>,  <16.983278, 18.774467, 21.029268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.520998, 18.581768, 21.370752> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.546232, 18.978443, 21.325893>,  <17.561373, 19.216448, 21.298979>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.546232, 18.978443, 21.325893>,  <17.520998, 18.581768, 21.370752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.546232, 18.978443, 21.325893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313332, 0.087008, 0.945649,
		0.947546, -0.094795, -0.305239,
		0.063085, 0.991687, -0.112147,
		17.565157, 19.275949, 21.292250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.194176, 18.806135, 21.690208>,  <17.520998, 18.581768, 21.370752>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.194176, 18.806135, 21.690208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.962446, 19.131628, 21.671343>,  <17.823408, 19.326923, 21.660023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.962446, 19.131628, 21.671343>,  <18.194176, 18.806135, 21.690208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.962446, 19.131628, 21.671343> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417241, 0.345759, 0.840453,
		0.700211, 0.467215, -0.539829,
		-0.579323, 0.813733, -0.047163,
		17.788649, 19.375748, 21.657194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.579567, 19.236530, 22.088274>,  <18.194176, 18.806135, 21.690208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.579567, 19.236530, 22.088274> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.247700, 19.456974, 22.052645>,  <18.048580, 19.589239, 22.031267>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.247700, 19.456974, 22.052645>,  <18.579567, 19.236530, 22.088274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.247700, 19.456974, 22.052645> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358939, 0.648813, 0.670973,
		0.427570, 0.524712, -0.736112,
		-0.829667, 0.551107, -0.089074,
		17.998800, 19.622307, 22.025923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.736744, 20.019451, 22.005217>,  <18.579567, 19.236530, 22.088274>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.736744, 20.019451, 22.005217> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.379421, 19.963549, 22.176083>,  <18.165028, 19.930008, 22.278603>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.379421, 19.963549, 22.176083>,  <18.736744, 20.019451, 22.005217>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.379421, 19.963549, 22.176083> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292737, 0.540258, 0.788940,
		-0.341037, 0.829813, -0.441705,
		-0.893308, -0.139754, 0.427165,
		18.111429, 19.921623, 22.304232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.660662, 20.651871, 22.425611>,  <18.736744, 20.019451, 22.005217>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.660662, 20.651871, 22.425611> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.409348, 20.389631, 22.593157>,  <18.258558, 20.232288, 22.693684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.409348, 20.389631, 22.593157>,  <18.660662, 20.651871, 22.425611>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.409348, 20.389631, 22.593157> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159960, 0.418033, 0.894238,
		-0.761360, 0.628839, -0.157775,
		-0.628286, -0.655599, 0.418863,
		18.220861, 20.192951, 22.718815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.463423, 21.011206, 22.950916>,  <18.660662, 20.651871, 22.425611>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.463423, 21.011206, 22.950916> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.331892, 20.650784, 23.064035>,  <18.252974, 20.434530, 23.131907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.331892, 20.650784, 23.064035>,  <18.463423, 21.011206, 22.950916>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.331892, 20.650784, 23.064035> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211067, 0.221756, 0.951985,
		-0.920501, 0.372729, 0.117263,
		-0.328829, -0.901053, 0.282797,
		18.233244, 20.380468, 23.148874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.124590, 21.090097, 23.610441>,  <18.463423, 21.011206, 22.950916>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.124590, 21.090097, 23.610441> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.239304, 20.708218, 23.578671>,  <18.308132, 20.479090, 23.559608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.239304, 20.708218, 23.578671>,  <18.124590, 21.090097, 23.610441>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.239304, 20.708218, 23.578671> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399298, 0.043757, 0.915776,
		-0.870814, -0.294343, 0.393758,
		0.286782, -0.954697, -0.079426,
		18.325338, 20.421808, 23.554842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.756044, 20.701553, 24.079731>,  <18.124590, 21.090097, 23.610441>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.756044, 20.701553, 24.079731> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.086206, 20.490347, 23.999828>,  <18.284304, 20.363623, 23.951887>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.086206, 20.490347, 23.999828>,  <17.756044, 20.701553, 24.079731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.086206, 20.490347, 23.999828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280513, 0.076534, 0.956794,
		-0.489915, -0.845779, 0.211287,
		0.825407, -0.528016, -0.199756,
		18.333828, 20.331942, 23.939901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.758556, 20.268610, 24.636545>,  <17.756044, 20.701553, 24.079731>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.758556, 20.268610, 24.636545> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.126631, 20.246355, 24.481541>,  <18.347475, 20.233002, 24.388538>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.126631, 20.246355, 24.481541>,  <17.758556, 20.268610, 24.636545>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.126631, 20.246355, 24.481541> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376465, -0.145793, 0.914887,
		-0.107392, -0.987750, -0.113214,
		0.920185, -0.055631, -0.387510,
		18.402687, 20.229664, 24.365288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.190067, 19.625971, 24.897343>,  <17.758556, 20.268610, 24.636545>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.190067, 19.625971, 24.897343> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.452486, 19.901728, 24.774483>,  <18.609938, 20.067183, 24.700766>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.452486, 19.901728, 24.774483>,  <18.190067, 19.625971, 24.897343>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.452486, 19.901728, 24.774483> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517076, -0.114117, 0.848298,
		0.549758, -0.715344, -0.431334,
		0.656047, 0.689391, -0.307151,
		18.649300, 20.108545, 24.682337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.909115, 19.225000, 24.842625>,  <18.190067, 19.625971, 24.897343>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.909115, 19.225000, 24.842625> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.945805, 19.619537, 24.897352>,  <18.967819, 19.856258, 24.930189>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.945805, 19.619537, 24.897352>,  <18.909115, 19.225000, 24.842625>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.945805, 19.619537, 24.897352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596260, -0.164446, 0.785768,
		0.797534, 0.009504, -0.603200,
		0.091725, 0.986340, 0.136818,
		18.973322, 19.915440, 24.938398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.575272, 19.280453, 25.117933>,  <18.909115, 19.225000, 24.842625>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.575272, 19.280453, 25.117933> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410818, 19.637831, 25.190290>,  <19.312145, 19.852259, 25.233706>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.410818, 19.637831, 25.190290>,  <19.575272, 19.280453, 25.117933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.410818, 19.637831, 25.190290> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369927, -0.017843, 0.928889,
		0.833140, 0.448816, -0.323174,
		-0.411134, 0.893446, 0.180895,
		19.287477, 19.905865, 25.244558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.090137, 19.642841, 25.422703>,  <19.575272, 19.280453, 25.117933>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.090137, 19.642841, 25.422703> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.767557, 19.858776, 25.519211>,  <19.574009, 19.988337, 25.577116>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.767557, 19.858776, 25.519211>,  <20.090137, 19.642841, 25.422703>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.767557, 19.858776, 25.519211> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304516, 0.029409, 0.952053,
		0.506857, 0.841256, -0.188106,
		-0.806453, 0.539836, 0.241270,
		19.525621, 20.020727, 25.591593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.345608, 20.175341, 25.939653>,  <20.090137, 19.642841, 25.422703>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.345608, 20.175341, 25.939653> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.949951, 20.155848, 25.995121>,  <19.712557, 20.144152, 26.028402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.949951, 20.155848, 25.995121>,  <20.345608, 20.175341, 25.939653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.949951, 20.155848, 25.995121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142788, -0.094815, 0.985201,
		-0.034864, 0.994301, 0.100744,
		-0.989139, -0.048733, 0.138669,
		19.653210, 20.141228, 26.036722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.316483, 20.610405, 26.386908>,  <20.345608, 20.175341, 25.939653>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.316483, 20.610405, 26.386908> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.987080, 20.390308, 26.442150>,  <19.789438, 20.258251, 26.475296>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.987080, 20.390308, 26.442150>,  <20.316483, 20.610405, 26.386908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.987080, 20.390308, 26.442150> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218418, -0.082843, 0.972333,
		-0.523575, 0.830887, 0.188404,
		-0.823507, -0.550240, 0.138107,
		19.740028, 20.225237, 26.483582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.017794, 20.886303, 27.015633>,  <20.316483, 20.610405, 26.386908>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.017794, 20.886303, 27.015633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.802858, 20.553255, 26.961952>,  <19.673897, 20.353426, 26.929745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.802858, 20.553255, 26.961952>,  <20.017794, 20.886303, 27.015633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802858, 20.553255, 26.961952> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121090, -0.081308, 0.989306,
		-0.834629, 0.547842, -0.057133,
		-0.537338, -0.832622, -0.134200,
		19.641657, 20.303469, 26.921692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.385756, 20.874886, 27.449541>,  <20.017794, 20.886303, 27.015633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.385756, 20.874886, 27.449541> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.459188, 20.489002, 27.374029>,  <19.503248, 20.257473, 27.328722>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.459188, 20.489002, 27.374029>,  <19.385756, 20.874886, 27.449541>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.459188, 20.489002, 27.374029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143639, -0.216306, 0.965702,
		-0.972454, -0.150168, -0.178279,
		0.183580, -0.964708, -0.188778,
		19.514263, 20.199591, 27.317396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.900499, 20.442244, 27.850540>,  <19.385756, 20.874886, 27.449541>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.900499, 20.442244, 27.850540> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.218494, 20.211098, 27.776711>,  <19.409290, 20.072411, 27.732412>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<19.218494, 20.211098, 27.776711>,  <18.900499, 20.442244, 27.850540>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<19.218494, 20.211098, 27.776711> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003529, -0.308665, 0.951164,
		-0.606618, -0.755511, -0.247423,
		0.794986, -0.577866, -0.184576,
		19.456989, 20.037739, 27.721338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.609865, 20.891806, 28.375940>,  <18.900499, 20.442244, 27.850540>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.609865, 20.891806, 28.375940> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.392511, 21.219490, 28.449291>,  <18.262098, 21.416101, 28.493301>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<18.392511, 21.219490, 28.449291>,  <18.609865, 20.891806, 28.375940>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.392511, 21.219490, 28.449291> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618746, 0.243204, 0.746997,
		0.567351, 0.519370, -0.639037,
		-0.543384, 0.819211, 0.183376,
		18.229496, 21.465254, 28.504305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.923330, 21.032217, 28.383789>,  <18.609865, 20.891806, 28.375940>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.923330, 21.032217, 28.383789> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.561480, 20.967134, 28.541357>,  <17.344368, 20.928085, 28.635899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.561480, 20.967134, 28.541357>,  <17.923330, 21.032217, 28.383789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.561480, 20.967134, 28.541357> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327665, -0.325545, -0.886936,
		0.272552, -0.931422, 0.241183,
		-0.904628, -0.162709, 0.393922,
		17.290091, 20.918322, 28.659534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.750139, 20.377949, 28.112761>,  <17.923330, 21.032217, 28.383789>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.750139, 20.377949, 28.112761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.402222, 20.528112, 28.240841>,  <17.193472, 20.618210, 28.317690>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.402222, 20.528112, 28.240841>,  <17.750139, 20.377949, 28.112761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.402222, 20.528112, 28.240841> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400913, -0.159409, -0.902141,
		-0.287631, -0.913047, 0.289159,
		-0.869792, 0.375411, 0.320201,
		17.141285, 20.640736, 28.336901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.296526, 19.879541, 27.872452>,  <17.750139, 20.377949, 28.112761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.296526, 19.879541, 27.872452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081270, 20.209906, 27.939714>,  <16.952116, 20.408125, 27.980072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<17.081270, 20.209906, 27.939714>,  <17.296526, 19.879541, 27.872452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.081270, 20.209906, 27.939714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337528, -0.028360, -0.940888,
		-0.772321, -0.563086, 0.294030,
		-0.538140, 0.825911, 0.168154,
		16.919828, 20.457680, 27.990160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.614481, 19.727673, 27.819950>,  <17.296526, 19.879541, 27.872452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.614481, 19.727673, 27.819950> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.622904, 20.123102, 27.760241>,  <16.627958, 20.360359, 27.724415>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.622904, 20.123102, 27.760241>,  <16.614481, 19.727673, 27.819950>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622904, 20.123102, 27.760241> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449819, -0.123973, -0.884474,
		-0.892872, 0.085770, 0.442068,
		0.021057, 0.988572, -0.149273,
		16.629221, 20.419674, 27.715458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965021, 19.918318, 27.663811>,  <16.614481, 19.727673, 27.819950>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965021, 19.918318, 27.663811> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.195738, 20.203075, 27.503551>,  <16.334167, 20.373930, 27.407396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.195738, 20.203075, 27.503551>,  <15.965021, 19.918318, 27.663811>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.195738, 20.203075, 27.503551> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476322, -0.105357, -0.872936,
		-0.663648, 0.694340, 0.278322,
		0.576791, 0.711893, -0.400649,
		16.368774, 20.416643, 27.383356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.582172, 20.265606, 27.298937>,  <15.965021, 19.918318, 27.663811>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.582172, 20.265606, 27.298937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.914562, 20.384079, 27.110573>,  <16.113997, 20.455162, 26.997555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.914562, 20.384079, 27.110573>,  <15.582172, 20.265606, 27.298937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.914562, 20.384079, 27.110573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474748, -0.063704, -0.877813,
		-0.289991, 0.953005, 0.087675,
		0.830975, 0.296181, -0.470911,
		16.163855, 20.472933, 26.969299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355803, 20.698215, 26.663151>,  <15.582172, 20.265606, 27.298937>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355803, 20.698215, 26.663151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.739856, 20.611362, 26.592726>,  <15.970287, 20.559252, 26.550470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.739856, 20.611362, 26.592726>,  <15.355803, 20.698215, 26.663151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.739856, 20.611362, 26.592726> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229042, -0.249960, -0.940776,
		0.160262, 0.943596, -0.289726,
		0.960133, -0.217131, -0.176064,
		16.027895, 20.546223, 26.539907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518138, 21.046204, 26.106546>,  <15.355803, 20.698215, 26.663151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518138, 21.046204, 26.106546> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.788923, 20.751892, 26.114061>,  <15.951394, 20.575306, 26.118570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.788923, 20.751892, 26.114061>,  <15.518138, 21.046204, 26.106546>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.788923, 20.751892, 26.114061> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112337, -0.128518, -0.985324,
		0.727393, 0.664918, -0.169657,
		0.676964, -0.735777, 0.018788,
		15.992012, 20.531158, 26.119698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.965057, 21.132116, 25.541576>,  <15.518138, 21.046204, 26.106546>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.965057, 21.132116, 25.541576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.052757, 20.756418, 25.647215>,  <16.105377, 20.531000, 25.710598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.052757, 20.756418, 25.647215>,  <15.965057, 21.132116, 25.541576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.052757, 20.756418, 25.647215> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216328, -0.310742, -0.925549,
		0.951384, 0.145796, -0.271315,
		0.219251, -0.939246, 0.264095,
		16.118532, 20.474644, 25.726444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.506033, 20.964781, 25.151669>,  <15.965057, 21.132116, 25.541576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.506033, 20.964781, 25.151669> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.330242, 20.626240, 25.272036>,  <16.224768, 20.423115, 25.344255>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.330242, 20.626240, 25.272036>,  <16.506033, 20.964781, 25.151669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.330242, 20.626240, 25.272036> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.049470, -0.311689, -0.948896,
		0.896891, -0.431902, 0.095110,
		-0.439475, -0.846351, 0.300917,
		16.198400, 20.372334, 25.362310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.826317, 20.539213, 24.746204>,  <16.506033, 20.964781, 25.151669>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.826317, 20.539213, 24.746204> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.515717, 20.320889, 24.872147>,  <16.329355, 20.189894, 24.947712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.515717, 20.320889, 24.872147>,  <16.826317, 20.539213, 24.746204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.515717, 20.320889, 24.872147> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143814, -0.332975, -0.931904,
		0.613482, -0.768906, 0.180061,
		-0.776503, -0.545812, 0.314853,
		16.282766, 20.157145, 24.966602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.841072, 19.796082, 24.541121>,  <16.826317, 20.539213, 24.746204>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.841072, 19.796082, 24.541121> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.451139, 19.871006, 24.589479>,  <16.217180, 19.915960, 24.618496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.451139, 19.871006, 24.589479>,  <16.841072, 19.796082, 24.541121>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.451139, 19.871006, 24.589479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187819, -0.397858, -0.898016,
		-0.120108, -0.898122, 0.423025,
		-0.974832, 0.187311, 0.120899,
		16.158689, 19.927200, 24.625750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.372190, 19.252926, 24.276428>,  <16.841072, 19.796082, 24.541121>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.372190, 19.252926, 24.276428> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.105062, 19.549385, 24.303894>,  <15.944785, 19.727261, 24.320374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<16.105062, 19.549385, 24.303894>,  <16.372190, 19.252926, 24.276428>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.105062, 19.549385, 24.303894> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371166, -0.251635, -0.893821,
		-0.645174, -0.622399, 0.443136,
		-0.667822, 0.741147, 0.068665,
		15.904716, 19.771729, 24.324493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.568769, 18.974321, 24.104151>,  <16.372190, 19.252926, 24.276428>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.568769, 18.974321, 24.104151> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.626892, 19.365965, 24.047255>,  <15.661765, 19.600950, 24.013117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.626892, 19.365965, 24.047255>,  <15.568769, 18.974321, 24.104151>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626892, 19.365965, 24.047255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546078, -0.040518, -0.836754,
		-0.825036, 0.199259, 0.528782,
		0.145306, 0.979109, -0.142240,
		15.670484, 19.659698, 24.004583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.930074, 19.232737, 23.959393>,  <15.568769, 18.974321, 24.104151>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.930074, 19.232737, 23.959393> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.175914, 19.511353, 23.811283>,  <15.323418, 19.678522, 23.722418>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.175914, 19.511353, 23.811283>,  <14.930074, 19.232737, 23.959393>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.175914, 19.511353, 23.811283> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530457, 0.017518, -0.847531,
		-0.583852, 0.717305, 0.380250,
		0.614599, 0.696539, -0.370272,
		15.360293, 19.720314, 23.700201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.501788, 19.546116, 23.459337>,  <14.930074, 19.232737, 23.959393>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.501788, 19.546116, 23.459337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.861337, 19.691145, 23.360893>,  <15.077066, 19.778162, 23.301826>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.861337, 19.691145, 23.360893>,  <14.501788, 19.546116, 23.459337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.861337, 19.691145, 23.360893> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303754, 0.110720, -0.946295,
		-0.315851, 0.925355, 0.209656,
		0.898872, 0.362572, -0.246110,
		15.130999, 19.799917, 23.287060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.413367, 20.165257, 23.074383>,  <14.501788, 19.546116, 23.459337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.413367, 20.165257, 23.074383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.774868, 20.026011, 22.974743>,  <14.991768, 19.942463, 22.914959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.774868, 20.026011, 22.974743>,  <14.413367, 20.165257, 23.074383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.774868, 20.026011, 22.974743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275407, -0.027378, -0.960938,
		0.327696, 0.937052, -0.120616,
		0.903751, -0.348114, -0.249099,
		15.045994, 19.921576, 22.900013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.679193, 20.573601, 22.463451>,  <14.413367, 20.165257, 23.074383>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.679193, 20.573601, 22.463451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.941299, 20.271479, 22.458809>,  <15.098564, 20.090204, 22.456024>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<14.941299, 20.271479, 22.458809>,  <14.679193, 20.573601, 22.463451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.941299, 20.271479, 22.458809> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063462, -0.039734, -0.997193,
		0.752726, 0.654165, -0.073970,
		0.655268, -0.755307, -0.011606,
		15.137880, 20.044886, 22.455328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.211987, 20.749254, 22.054575>,  <14.679193, 20.573601, 22.463451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.211987, 20.749254, 22.054575> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.189351, 20.350245, 22.071260>,  <15.175770, 20.110838, 22.081272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.189351, 20.350245, 22.071260>,  <15.211987, 20.749254, 22.054575>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.189351, 20.350245, 22.071260> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177629, -0.051171, -0.982766,
		0.982469, -0.048206, 0.180085,
		-0.056590, -0.997526, 0.041712,
		15.172374, 20.050987, 22.083775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.780169, 20.523733, 21.556583>,  <15.211987, 20.749254, 22.054575>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.780169, 20.523733, 21.556583> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.536530, 20.211510, 21.612768>,  <15.390347, 20.024176, 21.646479>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<15.536530, 20.211510, 21.612768>,  <15.780169, 20.523733, 21.556583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.536530, 20.211510, 21.612768> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143531, -0.282669, -0.948418,
		0.779999, -0.557518, 0.284207,
		-0.609097, -0.780559, 0.140460,
		15.353802, 19.977343, 21.654905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<22.418810, 14.322404, 3.001297> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.562658, 14.385837, 3.369107>,  <22.648968, 14.423897, 3.589793>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.562658, 14.385837, 3.369107>,  <22.418810, 14.322404, 3.001297>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.562658, 14.385837, 3.369107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417696, 0.908562, 0.006667,
		-0.834388, -0.386480, 0.392976,
		0.359620, 0.158582, 0.919524,
		22.670544, 14.433412, 3.644964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.860746, 14.465508, 3.560873>,  <22.418810, 14.322404, 3.001297>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.860746, 14.465508, 3.560873> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.227789, 14.617414, 3.607828>,  <22.448013, 14.708558, 3.636001>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.227789, 14.617414, 3.607828>,  <21.860746, 14.465508, 3.560873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.227789, 14.617414, 3.607828> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378863, 0.924940, -0.030791,
		-0.120270, -0.016220, 0.992608,
		0.917604, 0.379765, 0.117388,
		22.503071, 14.731344, 3.643044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.647285, 15.062866, 3.922109>,  <21.860746, 14.465508, 3.560873>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.647285, 15.062866, 3.922109> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.024368, 15.107816, 3.796461>,  <22.250618, 15.134786, 3.721072>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.024368, 15.107816, 3.796461>,  <21.647285, 15.062866, 3.922109>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.024368, 15.107816, 3.796461> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091675, 0.992574, 0.079958,
		0.320772, -0.046580, 0.946010,
		0.942709, 0.112374, -0.314120,
		22.307180, 15.141528, 3.702224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.088644, 15.343223, 4.381395>,  <21.647285, 15.062866, 3.922109>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.088644, 15.343223, 4.381395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.164492, 15.442104, 4.001303>,  <22.210001, 15.501433, 3.773248>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.164492, 15.442104, 4.001303>,  <22.088644, 15.343223, 4.381395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.164492, 15.442104, 4.001303> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426389, 0.892498, 0.147099,
		0.884441, 0.377275, 0.274640,
		0.189619, 0.247204, -0.950229,
		22.221376, 15.516266, 3.716234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.434145, 15.953299, 4.587820>,  <22.088644, 15.343223, 4.381395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.434145, 15.953299, 4.587820> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.561848, 16.033283, 4.958352>,  <22.638470, 16.081274, 5.180672>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.561848, 16.033283, 4.958352>,  <22.434145, 15.953299, 4.587820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.561848, 16.033283, 4.958352> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331687, -0.939236, 0.088431,
		0.887726, 0.279019, -0.366184,
		0.319259, 0.199961, 0.926331,
		22.657625, 16.093271, 5.236251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.217390, 15.920328, 4.710055>,  <22.434145, 15.953299, 4.587820>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.217390, 15.920328, 4.710055> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002396, 15.825241, 5.033685>,  <22.873400, 15.768188, 5.227862>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.002396, 15.825241, 5.033685>,  <23.217390, 15.920328, 4.710055>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.002396, 15.825241, 5.033685> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390752, -0.920432, -0.010851,
		0.747276, 0.310315, 0.587608,
		-0.537486, -0.237718, 0.809073,
		22.841150, 15.753926, 5.276407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.690729, 16.452309, 4.343992>,  <23.217390, 15.920328, 4.710055>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.690729, 16.452309, 4.343992> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.899900, 16.629921, 4.635026>,  <24.025404, 16.736488, 4.809647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.899900, 16.629921, 4.635026>,  <23.690729, 16.452309, 4.343992>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.899900, 16.629921, 4.635026> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372773, -0.648504, 0.663689,
		0.766541, -0.618287, -0.173600,
		0.522930, 0.444031, 0.727585,
		24.056780, 16.763130, 4.853302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.167286, 16.023664, 4.707231>,  <23.690729, 16.452309, 4.343992>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.167286, 16.023664, 4.707231> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.064131, 16.324337, 4.950036>,  <24.002237, 16.504742, 5.095719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<24.064131, 16.324337, 4.950036>,  <24.167286, 16.023664, 4.707231>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.064131, 16.324337, 4.950036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418975, -0.653125, 0.630784,
		0.870606, -0.091651, 0.483369,
		-0.257888, 0.751684, 0.607014,
		23.986765, 16.549843, 5.132140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.063272, 15.741183, 5.336979>,  <24.167286, 16.023664, 4.707231>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.063272, 15.741183, 5.336979> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.887367, 16.093279, 5.408298>,  <23.781824, 16.304537, 5.451089>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.887367, 16.093279, 5.408298>,  <24.063272, 15.741183, 5.336979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.887367, 16.093279, 5.408298> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568402, -0.426485, 0.703583,
		0.695361, 0.208066, 0.687882,
		-0.439763, 0.880238, 0.178296,
		23.755438, 16.357349, 5.461787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.043808, 15.839962, 6.012501>,  <24.063272, 15.741183, 5.336979>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.043808, 15.839962, 6.012501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.753925, 16.088865, 5.894113>,  <23.579996, 16.238207, 5.823081>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.753925, 16.088865, 5.894113>,  <24.043808, 15.839962, 6.012501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.753925, 16.088865, 5.894113> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497890, -0.175950, 0.849204,
		0.476347, 0.762783, 0.437328,
		-0.724706, 0.622257, -0.295969,
		23.536514, 16.275543, 5.805322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.892139, 16.454142, 6.532291>,  <24.043808, 15.839962, 6.012501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.892139, 16.454142, 6.532291> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.545721, 16.380810, 6.346237>,  <23.337870, 16.336811, 6.234604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.545721, 16.380810, 6.346237>,  <23.892139, 16.454142, 6.532291>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.545721, 16.380810, 6.346237> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427803, -0.209734, 0.879202,
		-0.258739, 0.960418, 0.103210,
		-0.866048, -0.183331, -0.465136,
		23.285906, 16.325811, 6.206696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.382143, 16.688595, 6.967114>,  <23.892139, 16.454142, 6.532291>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.382143, 16.688595, 6.967114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.157135, 16.465960, 6.722563>,  <23.022131, 16.332378, 6.575833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.157135, 16.465960, 6.722563>,  <23.382143, 16.688595, 6.967114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.157135, 16.465960, 6.722563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.570218, -0.274282, 0.774352,
		-0.598684, 0.784206, -0.163087,
		-0.562520, -0.556588, -0.611377,
		22.988379, 16.298983, 6.539150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.640593, 16.936760, 7.023372>,  <23.382143, 16.688595, 6.967114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.640593, 16.936760, 7.023372> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.607931, 16.573784, 6.858505>,  <22.588335, 16.355997, 6.759585>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.607931, 16.573784, 6.858505>,  <22.640593, 16.936760, 7.023372>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.607931, 16.573784, 6.858505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799876, -0.187048, 0.570274,
		-0.594586, 0.376247, -0.710567,
		-0.081654, -0.907442, -0.412167,
		22.583435, 16.301552, 6.734855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.970697, 16.792332, 6.884111>,  <22.640593, 16.936760, 7.023372>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.970697, 16.792332, 6.884111> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.164566, 16.443796, 6.914742>,  <22.280888, 16.234674, 6.933121>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.164566, 16.443796, 6.914742>,  <21.970697, 16.792332, 6.884111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.164566, 16.443796, 6.914742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636931, -0.291566, 0.713658,
		-0.599510, -0.394664, -0.696296,
		0.484672, -0.871338, 0.076577,
		22.309967, 16.182394, 6.937716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.376053, 16.267809, 7.136575>,  <21.970697, 16.792332, 6.884111>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.376053, 16.267809, 7.136575> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.732409, 16.090578, 7.176574>,  <21.946222, 15.984240, 7.200573>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.732409, 16.090578, 7.176574>,  <21.376053, 16.267809, 7.136575>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.732409, 16.090578, 7.176574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362535, -0.560984, 0.744222,
		-0.273651, -0.699271, -0.660405,
		0.890889, -0.443077, 0.099996,
		21.999676, 15.957655, 7.206573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.191751, 15.535522, 7.156166>,  <21.376053, 16.267809, 7.136575>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.191751, 15.535522, 7.156166> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.550568, 15.539265, 7.332905>,  <21.765858, 15.541510, 7.438948>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.550568, 15.539265, 7.332905>,  <21.191751, 15.535522, 7.156166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.550568, 15.539265, 7.332905> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322830, -0.668917, 0.669575,
		0.301823, -0.743278, -0.597026,
		0.897042, 0.009355, 0.441847,
		21.819679, 15.542071, 7.465459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.429346, 14.804369, 7.339972>,  <21.191751, 15.535522, 7.156166>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.429346, 14.804369, 7.339972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.634554, 15.063343, 7.565410>,  <21.757679, 15.218727, 7.700673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.634554, 15.063343, 7.565410>,  <21.429346, 14.804369, 7.339972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.634554, 15.063343, 7.565410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315814, -0.468163, 0.825279,
		0.798168, -0.601376, -0.035708,
		0.513020, 0.647435, 0.563595,
		21.788460, 15.257573, 7.734488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.865129, 14.412211, 7.815295>,  <21.429346, 14.804369, 7.339972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.865129, 14.412211, 7.815295> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816206, 14.777230, 7.971396>,  <21.786852, 14.996242, 8.065057>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.816206, 14.777230, 7.971396>,  <21.865129, 14.412211, 7.815295>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.816206, 14.777230, 7.971396> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134805, -0.404836, 0.904398,
		0.983294, 0.058009, 0.172531,
		-0.122310, 0.912548, 0.390253,
		21.779512, 15.050995, 8.088471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.228285, 14.357943, 8.500988>,  <21.865129, 14.412211, 7.815295>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.228285, 14.357943, 8.500988> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012018, 14.693116, 8.530770>,  <21.882257, 14.894220, 8.548639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.012018, 14.693116, 8.530770>,  <22.228285, 14.357943, 8.500988>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.012018, 14.693116, 8.530770> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193350, -0.209917, 0.958411,
		0.818715, 0.503785, 0.275510,
		-0.540667, 0.837935, 0.074455,
		21.849817, 14.944497, 8.553107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.465317, 14.724888, 9.080938>,  <22.228285, 14.357943, 8.500988>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.465317, 14.724888, 9.080938> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103804, 14.891222, 9.040421>,  <21.886896, 14.991022, 9.016111>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103804, 14.891222, 9.040421>,  <22.465317, 14.724888, 9.080938>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103804, 14.891222, 9.040421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186305, -0.169171, 0.967818,
		0.385317, 0.893568, 0.230365,
		-0.903782, 0.415835, -0.101292,
		21.832668, 15.015972, 9.010034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.346176, 15.278284, 9.718303>,  <22.465317, 14.724888, 9.080938>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.346176, 15.278284, 9.718303> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.002235, 15.135239, 9.572556>,  <21.795870, 15.049411, 9.485107>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.002235, 15.135239, 9.572556>,  <22.346176, 15.278284, 9.718303>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.002235, 15.135239, 9.572556> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236310, -0.353857, 0.904955,
		-0.452559, 0.864232, 0.219757,
		-0.859853, -0.357615, -0.364368,
		21.744280, 15.027954, 9.463245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.800781, 15.507232, 10.183422>,  <22.346176, 15.278284, 9.718303>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.800781, 15.507232, 10.183422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.667801, 15.187986, 9.982429>,  <21.588013, 14.996439, 9.861833>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.667801, 15.187986, 9.982429>,  <21.800781, 15.507232, 10.183422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.667801, 15.187986, 9.982429> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332930, -0.399174, 0.854294,
		-0.882402, 0.451304, -0.133009,
		-0.332452, -0.798114, -0.502484,
		21.568066, 14.948552, 9.831683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.156116, 15.329758, 10.479383>,  <21.800781, 15.507232, 10.183422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.156116, 15.329758, 10.479383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.243340, 14.992517, 10.282761>,  <21.295673, 14.790172, 10.164787>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.243340, 14.992517, 10.282761>,  <21.156116, 15.329758, 10.479383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.243340, 14.992517, 10.282761> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356848, -0.537679, 0.763911,
		-0.908356, 0.008835, -0.418104,
		0.218057, -0.843104, -0.491557,
		21.308756, 14.739586, 10.135294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.596651, 14.971677, 10.673249>,  <21.156116, 15.329758, 10.479383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.596651, 14.971677, 10.673249> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859808, 14.696915, 10.549740>,  <21.017702, 14.532058, 10.475635>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.859808, 14.696915, 10.549740>,  <20.596651, 14.971677, 10.673249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.859808, 14.696915, 10.549740> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334028, -0.633604, 0.697833,
		-0.674988, -0.355956, -0.646287,
		0.657888, -0.686907, -0.308776,
		21.057175, 14.490843, 10.457108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.238436, 14.319575, 10.352989>,  <20.596651, 14.971677, 10.673249>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.238436, 14.319575, 10.352989> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.600172, 14.185634, 10.458851>,  <20.817213, 14.105268, 10.522367>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.600172, 14.185634, 10.458851>,  <20.238436, 14.319575, 10.352989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.600172, 14.185634, 10.458851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426545, -0.687101, 0.588176,
		-0.015110, -0.644798, -0.764204,
		0.904340, -0.334854, 0.264654,
		20.871473, 14.085177, 10.538247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.210957, 13.592078, 10.291493>,  <20.238436, 14.319575, 10.352989>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.210957, 13.592078, 10.291493> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.523050, 13.655984, 10.533390>,  <20.710306, 13.694327, 10.678528>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.523050, 13.655984, 10.533390>,  <20.210957, 13.592078, 10.291493>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.523050, 13.655984, 10.533390> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230209, -0.825618, 0.515130,
		0.581584, -0.541138, -0.607395,
		0.780233, 0.159764, 0.604741,
		20.757120, 13.703913, 10.714812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.647776, 13.020292, 10.317750>,  <20.210957, 13.592078, 10.291493>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.647776, 13.020292, 10.317750> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.760578, 13.183529, 10.665068>,  <20.828259, 13.281471, 10.873458>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<20.760578, 13.183529, 10.665068>,  <20.647776, 13.020292, 10.317750>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<20.760578, 13.183529, 10.665068> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170629, -0.869265, 0.463965,
		0.944118, -0.278996, -0.175504,
		0.282004, 0.408092, 0.868294,
		20.845179, 13.305957, 10.925556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.138645, 12.553495, 10.571934>,  <20.647776, 13.020292, 10.317750>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.138645, 12.553495, 10.571934> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.046484, 12.797103, 10.875515>,  <20.991188, 12.943268, 11.057664>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.046484, 12.797103, 10.875515>,  <21.138645, 12.553495, 10.571934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.046484, 12.797103, 10.875515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104755, -0.790928, 0.602876,
		0.967441, 0.059399, 0.246028,
		-0.230401, 0.609019, 0.758953,
		20.977364, 12.979809, 11.103201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.570801, 12.401134, 11.065928>,  <21.138645, 12.553495, 10.571934>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.570801, 12.401134, 11.065928> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.247440, 12.543524, 11.253447>,  <21.053423, 12.628958, 11.365957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.247440, 12.543524, 11.253447>,  <21.570801, 12.401134, 11.065928>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.247440, 12.543524, 11.253447> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033645, -0.767171, 0.640560,
		0.587668, 0.533603, 0.608206,
		-0.808402, 0.355974, 0.468795,
		21.004919, 12.650316, 11.394085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.645390, 12.164630, 11.618434>,  <21.570801, 12.401134, 11.065928>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.645390, 12.164630, 11.618434> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.260820, 12.265777, 11.661751>,  <21.030079, 12.326465, 11.687741>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<21.260820, 12.265777, 11.661751>,  <21.645390, 12.164630, 11.618434>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<21.260820, 12.265777, 11.661751> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169770, -0.855199, 0.489706,
		0.216443, 0.452429, 0.865136,
		-0.961421, 0.252867, 0.108293,
		20.972395, 12.341637, 11.694239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.265541, 12.652316, 11.556971>,  <21.645390, 12.164630, 11.618434>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.265541, 12.652316, 11.556971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.311905, 13.049577, 11.562805>,  <22.339724, 13.287933, 11.566306>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.311905, 13.049577, 11.562805>,  <22.265541, 12.652316, 11.556971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.311905, 13.049577, 11.562805> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071002, -0.006364, 0.997456,
		0.990719, -0.116651, 0.069778,
		0.115910, 0.993152, 0.014587,
		22.346678, 13.347523, 11.567182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.657372, 12.831073, 12.143977>,  <22.265541, 12.652316, 11.556971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.657372, 12.831073, 12.143977> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.540802, 13.202236, 12.050974>,  <22.470860, 13.424934, 11.995172>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.540802, 13.202236, 12.050974>,  <22.657372, 12.831073, 12.143977>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.540802, 13.202236, 12.050974> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145674, 0.283272, 0.947912,
		0.945437, 0.242373, -0.217724,
		-0.291423, 0.927908, -0.232508,
		22.453375, 13.480609, 11.981221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.168915, 13.290467, 12.328304>,  <22.657372, 12.831073, 12.143977>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.168915, 13.290467, 12.328304> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.816944, 13.475709, 12.370760>,  <22.605762, 13.586854, 12.396234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.816944, 13.475709, 12.370760>,  <23.168915, 13.290467, 12.328304>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.816944, 13.475709, 12.370760> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278387, 0.321522, 0.905055,
		0.385010, 0.825928, -0.411838,
		-0.879925, 0.463105, 0.106139,
		22.552967, 13.614640, 12.402601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.213665, 14.077446, 12.536191>,  <23.168915, 13.290467, 12.328304>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.213665, 14.077446, 12.536191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922152, 13.844314, 12.679961>,  <22.747244, 13.704434, 12.766223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.922152, 13.844314, 12.679961>,  <23.213665, 14.077446, 12.536191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.922152, 13.844314, 12.679961> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247331, 0.265410, 0.931872,
		-0.638518, 0.768028, -0.049274,
		-0.728782, -0.582830, 0.359426,
		22.703518, 13.669465, 12.787789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.333279, 14.141752, 13.349522>,  <23.213665, 14.077446, 12.536191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.333279, 14.141752, 13.349522> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.035568, 13.885988, 13.272364>,  <22.856943, 13.732530, 13.226068>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.035568, 13.885988, 13.272364>,  <23.333279, 14.141752, 13.349522>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.035568, 13.885988, 13.272364> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048792, -0.340105, 0.939121,
		-0.666089, 0.689552, 0.284329,
		-0.744275, -0.639411, -0.192896,
		22.812286, 13.694165, 13.214495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.864361, 14.782803, 13.576263>,  <23.333279, 14.141752, 13.349522>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.864361, 14.782803, 13.576263> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.835329, 15.154624, 13.720852>,  <22.817909, 15.377717, 13.807605>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.835329, 15.154624, 13.720852>,  <22.864361, 14.782803, 13.576263>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.835329, 15.154624, 13.720852> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210588, 0.339973, -0.916554,
		-0.974877, -0.142644, 0.171078,
		-0.072579, 0.929554, 0.361471,
		22.813555, 15.433490, 13.829293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.421345, 14.983830, 13.130651>,  <22.864361, 14.782803, 13.576263>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.421345, 14.983830, 13.130651> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577581, 15.301915, 13.316158>,  <22.671324, 15.492765, 13.427463>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.577581, 15.301915, 13.316158>,  <22.421345, 14.983830, 13.130651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.577581, 15.301915, 13.316158> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151167, 0.552351, -0.819790,
		-0.908068, 0.250096, 0.335953,
		0.390590, 0.795211, 0.463766,
		22.694759, 15.540479, 13.455288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.824984, 15.496925, 13.024023>,  <22.421345, 14.983830, 13.130651>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.824984, 15.496925, 13.024023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157394, 15.708253, 13.093622>,  <22.356840, 15.835050, 13.135382>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.157394, 15.708253, 13.093622>,  <21.824984, 15.496925, 13.024023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.157394, 15.708253, 13.093622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202523, 0.578733, -0.789970,
		-0.518054, 0.621246, 0.587939,
		0.831026, 0.528319, 0.173998,
		22.406702, 15.866749, 13.145822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.669218, 16.273836, 12.900485>,  <21.824984, 15.496925, 13.024023>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.669218, 16.273836, 12.900485> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.068115, 16.257242, 12.875876>,  <22.307453, 16.247286, 12.861112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.068115, 16.257242, 12.875876>,  <21.669218, 16.273836, 12.900485>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.068115, 16.257242, 12.875876> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022380, 0.622325, -0.782439,
		0.070747, 0.781659, 0.619681,
		0.997243, -0.041487, -0.061521,
		22.367289, 16.244797, 12.857420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.789696, 16.885525, 12.857163>,  <21.669218, 16.273836, 12.900485>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.789696, 16.885525, 12.857163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.127275, 16.741957, 12.697701>,  <22.329823, 16.655817, 12.602022>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.127275, 16.741957, 12.697701>,  <21.789696, 16.885525, 12.857163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.127275, 16.741957, 12.697701> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.117737, 0.601115, -0.790442,
		0.523344, 0.714029, 0.465052,
		0.843949, -0.358919, -0.398658,
		22.380461, 16.634281, 12.578103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.131498, 17.489281, 12.716087>,  <21.789696, 16.885525, 12.857163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.131498, 17.489281, 12.716087> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.284304, 17.210608, 12.473206>,  <22.375988, 17.043404, 12.327477>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.284304, 17.210608, 12.473206>,  <22.131498, 17.489281, 12.716087>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.284304, 17.210608, 12.473206> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198501, 0.579845, -0.790175,
		0.902586, 0.422389, 0.083218,
		0.382015, -0.696683, -0.607205,
		22.398909, 17.001602, 12.291044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.592909, 17.855082, 12.249281>,  <22.131498, 17.489281, 12.716087>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.592909, 17.855082, 12.249281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.532911, 17.506176, 12.063095>,  <22.496912, 17.296833, 11.951384>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.532911, 17.506176, 12.063095>,  <22.592909, 17.855082, 12.249281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.532911, 17.506176, 12.063095> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110419, 0.482624, -0.868839,
		0.982501, -0.078925, -0.168706,
		-0.149995, -0.872264, -0.465464,
		22.487913, 17.244497, 11.923456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.257568, 17.768370, 11.790380>,  <22.592909, 17.855082, 12.249281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.257568, 17.768370, 11.790380> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.944054, 17.573223, 11.636671>,  <22.755945, 17.456135, 11.544446>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.944054, 17.573223, 11.636671>,  <23.257568, 17.768370, 11.790380>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.944054, 17.573223, 11.636671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176146, 0.418710, -0.890873,
		0.595526, -0.765941, -0.242244,
		-0.783786, -0.487868, -0.384270,
		22.708918, 17.426863, 11.521390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.492388, 17.596497, 11.098049>,  <23.257568, 17.768370, 11.790380>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.492388, 17.596497, 11.098049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.096453, 17.542404, 11.080439>,  <22.858892, 17.509949, 11.069873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.096453, 17.542404, 11.080439>,  <23.492388, 17.596497, 11.098049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.096453, 17.542404, 11.080439> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001278, 0.318018, -0.948084,
		0.142208, -0.938391, -0.314959,
		-0.989836, -0.135228, -0.044025,
		22.799501, 17.501835, 11.067231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<23.461252, 17.293762, 10.469773>,  <23.492388, 17.596497, 11.098049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<23.461252, 17.293762, 10.469773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.096649, 17.439888, 10.545346>,  <22.877888, 17.527563, 10.590690>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<23.096649, 17.439888, 10.545346>,  <23.461252, 17.293762, 10.469773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<23.096649, 17.439888, 10.545346> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042232, 0.373811, -0.926543,
		-0.409106, -0.852531, -0.325304,
		-0.911509, 0.365316, 0.188932,
		22.823196, 17.549482, 10.602026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.985645, 17.070635, 9.988465>,  <23.461252, 17.293762, 10.469773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.985645, 17.070635, 9.988465> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.832586, 17.415775, 10.120567>,  <22.740751, 17.622860, 10.199828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.832586, 17.415775, 10.120567>,  <22.985645, 17.070635, 9.988465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.832586, 17.415775, 10.120567> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241890, 0.251427, -0.937162,
		-0.891668, -0.438487, 0.112508,
		-0.382646, 0.862852, 0.330255,
		22.717793, 17.674631, 10.219644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.331308, 17.130892, 9.682179>,  <22.985645, 17.070635, 9.988465>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.331308, 17.130892, 9.682179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.446522, 17.500750, 9.781837>,  <22.515650, 17.722664, 9.841632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.446522, 17.500750, 9.781837>,  <22.331308, 17.130892, 9.682179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.446522, 17.500750, 9.781837> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229531, 0.319247, -0.919454,
		-0.929705, 0.207647, 0.304188,
		0.288033, 0.924643, 0.249145,
		22.532932, 17.778143, 9.856581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.836229, 17.508356, 9.304276>,  <22.331308, 17.130892, 9.682179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.836229, 17.508356, 9.304276> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103958, 17.795195, 9.382020>,  <22.264595, 17.967299, 9.428666>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.103958, 17.795195, 9.382020>,  <21.836229, 17.508356, 9.304276>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.103958, 17.795195, 9.382020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093788, 0.341055, -0.935353,
		-0.737028, 0.607825, 0.295531,
		0.669324, 0.717098, 0.194360,
		22.304756, 18.010324, 9.440328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.651306, 18.029499, 8.954864>,  <21.836229, 17.508356, 9.304276>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.651306, 18.029499, 8.954864> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.030529, 18.150082, 8.995484>,  <22.258062, 18.222431, 9.019856>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.030529, 18.150082, 8.995484>,  <21.651306, 18.029499, 8.954864>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.030529, 18.150082, 8.995484> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010798, 0.349556, -0.936853,
		-0.317919, 0.887093, 0.334654,
		0.948056, 0.301457, 0.101552,
		22.314945, 18.240519, 9.025949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.629971, 18.736929, 8.790778>,  <21.651306, 18.029499, 8.954864>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.629971, 18.736929, 8.790778> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016811, 18.640257, 8.759023>,  <22.248917, 18.582254, 8.739969>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.016811, 18.640257, 8.759023>,  <21.629971, 18.736929, 8.790778>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.016811, 18.640257, 8.759023> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013127, 0.359078, -0.933215,
		0.254047, 0.901473, 0.350438,
		0.967103, -0.241681, -0.079389,
		22.306942, 18.567753, 8.735206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<21.967182, 19.388052, 8.577695>,  <21.629971, 18.736929, 8.790778>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<21.967182, 19.388052, 8.577695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.224073, 19.097525, 8.479708>,  <22.378208, 18.923208, 8.420916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.224073, 19.097525, 8.479708>,  <21.967182, 19.388052, 8.577695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.224073, 19.097525, 8.479708> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188306, 0.459290, -0.868098,
		0.743025, 0.511386, 0.431738,
		0.642226, -0.726318, -0.244967,
		22.416740, 18.879629, 8.406218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<22.683868, 19.688526, 8.466487>,  <21.967182, 19.388052, 8.577695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<22.683868, 19.688526, 8.466487> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645056, 19.350674, 8.255894>,  <22.621769, 19.147963, 8.129538>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<22.645056, 19.350674, 8.255894>,  <22.683868, 19.688526, 8.466487>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<22.645056, 19.350674, 8.255894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239286, 0.493667, -0.836083,
		0.966089, -0.207106, 0.154207,
		-0.097031, -0.844630, -0.526484,
		22.615946, 19.097284, 8.097948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<18.361280, 18.277462, 16.219316> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033596, 18.158930, 16.415718>,  <17.836985, 18.087811, 16.533558>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.033596, 18.158930, 16.415718>,  <18.361280, 18.277462, 16.219316>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.033596, 18.158930, 16.415718> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201240, -0.653184, -0.729968,
		0.537026, -0.696806, 0.475462,
		-0.819210, -0.296330, 0.491002,
		17.787832, 18.070030, 16.563019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.433657, 17.632605, 16.293232>,  <18.361280, 18.277462, 16.219316>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.433657, 17.632605, 16.293232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041143, 17.705830, 16.317125>,  <17.805635, 17.749763, 16.331461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.041143, 17.705830, 16.317125>,  <18.433657, 17.632605, 16.293232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<18.041143, 17.705830, 16.317125> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163915, -0.631326, -0.757997,
		-0.101048, -0.753603, 0.649517,
		-0.981285, 0.183060, 0.059733,
		17.746758, 17.760748, 16.335045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.130264, 16.944408, 16.218153>,  <18.433657, 17.632605, 16.293232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.130264, 16.944408, 16.218153> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857172, 17.223667, 16.131922>,  <17.693317, 17.391222, 16.080183>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.857172, 17.223667, 16.131922>,  <18.130264, 16.944408, 16.218153>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.857172, 17.223667, 16.131922> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442850, -0.630048, -0.637906,
		-0.581173, -0.340050, 0.739326,
		-0.682731, 0.698144, -0.215576,
		17.652353, 17.433111, 16.067249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.496286, 16.720207, 16.386110>,  <18.130264, 16.944408, 16.218153>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.496286, 16.720207, 16.386110> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.431187, 16.970188, 16.080706>,  <17.392126, 17.120176, 15.897463>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.431187, 16.970188, 16.080706>,  <17.496286, 16.720207, 16.386110>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.431187, 16.970188, 16.080706> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565982, -0.692986, -0.446581,
		-0.808194, 0.359453, 0.466494,
		-0.162749, 0.624951, -0.763511,
		17.382362, 17.157673, 15.851652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.028143, 16.380552, 16.045820>,  <17.496286, 16.720207, 16.386110>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.028143, 16.380552, 16.045820> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032120, 16.696301, 15.800286>,  <17.034506, 16.885750, 15.652966>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.032120, 16.696301, 15.800286>,  <17.028143, 16.380552, 16.045820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.032120, 16.696301, 15.800286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700470, -0.432588, -0.567635,
		-0.713613, 0.435616, 0.548630,
		0.009940, 0.789371, -0.613836,
		17.035101, 16.933111, 15.616136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.281004, 16.481434, 15.861210>,  <17.028143, 16.380552, 16.045820>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.281004, 16.481434, 15.861210> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511091, 16.662220, 15.588490>,  <16.649143, 16.770693, 15.424859>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.511091, 16.662220, 15.588490>,  <16.281004, 16.481434, 15.861210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.511091, 16.662220, 15.588490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.531515, -0.427048, -0.731521,
		-0.621783, 0.783171, -0.005419,
		0.575220, 0.451967, -0.681798,
		16.683657, 16.797810, 15.383951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825848, 16.810047, 15.299818>,  <16.281004, 16.481434, 15.861210>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825848, 16.810047, 15.299818> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184975, 16.738384, 15.138908>,  <16.400452, 16.695387, 15.042362>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.184975, 16.738384, 15.138908>,  <15.825848, 16.810047, 15.299818>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.184975, 16.738384, 15.138908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436437, -0.483770, -0.758611,
		-0.058698, 0.856662, -0.512528,
		0.897818, -0.179157, -0.402275,
		16.454321, 16.684637, 15.018226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.752433, 16.948807, 14.583606>,  <15.825848, 16.810047, 15.299818>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.752433, 16.948807, 14.583606> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064922, 16.699608, 14.599412>,  <16.252417, 16.550089, 14.608896>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.064922, 16.699608, 14.599412>,  <15.752433, 16.948807, 14.583606>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.064922, 16.699608, 14.599412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319385, -0.453285, -0.832182,
		0.536360, 0.637500, -0.553093,
		0.781225, -0.622998, 0.039516,
		16.299290, 16.512709, 14.611267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.934535, 16.884504, 13.890203>,  <15.752433, 16.948807, 14.583606>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.934535, 16.884504, 13.890203> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135406, 16.577091, 14.048783>,  <16.255930, 16.392643, 14.143932>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.135406, 16.577091, 14.048783>,  <15.934535, 16.884504, 13.890203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.135406, 16.577091, 14.048783> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.210476, -0.553290, -0.805959,
		0.838759, 0.321291, -0.439608,
		0.502178, -0.768532, 0.396453,
		16.286060, 16.346531, 14.167719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.273571, 16.672461, 13.391825>,  <15.934535, 16.884504, 13.890203>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.273571, 16.672461, 13.391825> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275005, 16.352249, 13.631537>,  <16.275866, 16.160122, 13.775365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275005, 16.352249, 13.631537>,  <16.273571, 16.672461, 13.391825>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.275005, 16.352249, 13.631537> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305586, -0.571495, -0.761585,
		0.952158, -0.180403, -0.246678,
		0.003584, -0.800530, 0.599282,
		16.276081, 16.112089, 13.811322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.580593, 16.084982, 12.972453>,  <16.273571, 16.672461, 13.391825>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.580593, 16.084982, 12.972453> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378555, 15.923089, 13.277366>,  <16.257334, 15.825953, 13.460313>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.378555, 15.923089, 13.277366>,  <16.580593, 16.084982, 12.972453>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.378555, 15.923089, 13.277366> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363233, -0.701508, -0.613146,
		0.782907, -0.586581, 0.207314,
		-0.505093, -0.404733, 0.762281,
		16.227028, 15.801669, 13.506050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.621828, 15.351178, 12.970176>,  <16.580593, 16.084982, 12.972453>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.621828, 15.351178, 12.970176> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279411, 15.423629, 13.163830>,  <16.073961, 15.467099, 13.280023>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.279411, 15.423629, 13.163830>,  <16.621828, 15.351178, 12.970176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.279411, 15.423629, 13.163830> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468192, -0.668622, -0.577702,
		0.219067, -0.721205, 0.657170,
		-0.856041, 0.181127, 0.484136,
		16.022598, 15.477967, 13.309071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.212606, 14.722707, 12.759597>,  <16.621828, 15.351178, 12.970176>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.212606, 14.722707, 12.759597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939312, 14.952676, 12.939664>,  <15.775335, 15.090657, 13.047704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.939312, 14.952676, 12.939664>,  <16.212606, 14.722707, 12.759597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.939312, 14.952676, 12.939664> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729387, -0.566357, -0.383710,
		0.034352, -0.590512, 0.806297,
		-0.683238, 0.574922, 0.450168,
		15.734341, 15.125153, 13.074714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.558382, 14.410200, 12.731307>,  <16.212606, 14.722707, 12.759597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.558382, 14.410200, 12.731307> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442674, 14.740559, 12.924891>,  <15.373248, 14.938774, 13.041040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.442674, 14.740559, 12.924891>,  <15.558382, 14.410200, 12.731307>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.442674, 14.740559, 12.924891> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.949746, -0.184452, -0.252904,
		-0.119605, -0.532798, 0.837748,
		-0.289271, 0.825896, 0.483961,
		15.355892, 14.988328, 13.070078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.951369, 13.715678, 12.515618>,  <15.558382, 14.410200, 12.731307>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.951369, 13.715678, 12.515618> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117100, 13.374092, 12.641523>,  <16.216537, 13.169140, 12.717066>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.117100, 13.374092, 12.641523>,  <15.951369, 13.715678, 12.515618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.117100, 13.374092, 12.641523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723219, -0.098964, 0.683492,
		-0.552529, -0.510830, -0.658608,
		0.414327, -0.853966, 0.314761,
		16.241398, 13.117902, 12.735951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.338643, 13.164463, 12.525340>,  <15.951369, 13.715678, 12.515618>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.338643, 13.164463, 12.525340> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640094, 13.094073, 12.778663>,  <15.820965, 13.051840, 12.930656>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.640094, 13.094073, 12.778663>,  <15.338643, 13.164463, 12.525340>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.640094, 13.094073, 12.778663> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647288, -0.031153, 0.761608,
		-0.114295, -0.983901, -0.137385,
		0.753627, -0.175976, 0.633307,
		15.866182, 13.041281, 12.968655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.996774, 12.780659, 12.957580>,  <15.338643, 13.164463, 12.525340>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.996774, 12.780659, 12.957580> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331547, 12.852651, 13.164327>,  <15.532411, 12.895845, 13.288375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.331547, 12.852651, 13.164327>,  <14.996774, 12.780659, 12.957580>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.331547, 12.852651, 13.164327> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523868, -0.009969, 0.851741,
		0.158448, -0.983620, 0.085941,
		0.836933, 0.179979, 0.516867,
		15.582626, 12.906644, 13.319386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.029677, 12.226394, 13.420333>,  <14.996774, 12.780659, 12.957580>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.029677, 12.226394, 13.420333> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.266180, 12.514277, 13.565898>,  <15.408082, 12.687008, 13.653237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.266180, 12.514277, 13.565898>,  <15.029677, 12.226394, 13.420333>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.266180, 12.514277, 13.565898> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443554, -0.086666, 0.892048,
		0.673555, -0.688844, 0.267988,
		0.591256, 0.719711, 0.363913,
		15.443557, 12.730190, 13.675072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.129220, 12.032495, 14.092603>,  <15.029677, 12.226394, 13.420333>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.129220, 12.032495, 14.092603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234055, 12.416785, 14.129088>,  <15.296955, 12.647359, 14.150980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.234055, 12.416785, 14.129088>,  <15.129220, 12.032495, 14.092603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.234055, 12.416785, 14.129088> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257079, -0.021598, 0.966149,
		0.930173, -0.276662, 0.241321,
		0.262085, 0.960725, 0.091214,
		15.312680, 12.705003, 14.156452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.614121, 12.138503, 14.676253>,  <15.129220, 12.032495, 14.092603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.614121, 12.138503, 14.676253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440621, 12.492146, 14.606721>,  <15.336521, 12.704331, 14.565001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.440621, 12.492146, 14.606721>,  <15.614121, 12.138503, 14.676253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.440621, 12.492146, 14.606721> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330591, 0.023316, 0.943486,
		0.838195, 0.466704, 0.282164,
		-0.433750, 0.884106, -0.173832,
		15.310496, 12.757378, 14.554571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.909577, 12.606816, 15.132573>,  <15.614121, 12.138503, 14.676253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.909577, 12.606816, 15.132573> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.578535, 12.803061, 15.023490>,  <15.379910, 12.920807, 14.958040>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.578535, 12.803061, 15.023490>,  <15.909577, 12.606816, 15.132573>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.578535, 12.803061, 15.023490> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166486, 0.249429, 0.953975,
		0.536051, 0.834917, -0.124750,
		-0.827606, 0.490610, -0.272709,
		15.330254, 12.950244, 14.941677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.015593, 13.220817, 15.469978>,  <15.909577, 12.606816, 15.132573>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.015593, 13.220817, 15.469978> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626047, 13.191908, 15.383848>,  <15.392320, 13.174562, 15.332170>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.626047, 13.191908, 15.383848>,  <16.015593, 13.220817, 15.469978>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.626047, 13.191908, 15.383848> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226886, 0.265577, 0.937012,
		-0.010535, 0.961377, -0.275033,
		-0.973864, -0.072272, -0.215325,
		15.333888, 13.170226, 15.319251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.662825, 13.863759, 15.612048>,  <16.015593, 13.220817, 15.469978>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.662825, 13.863759, 15.612048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350125, 13.614782, 15.596897>,  <15.162505, 13.465396, 15.587807>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.350125, 13.614782, 15.596897>,  <15.662825, 13.863759, 15.612048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.350125, 13.614782, 15.596897> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337644, 0.371427, 0.864892,
		-0.524276, 0.688918, -0.500526,
		-0.781749, -0.622442, -0.037878,
		15.115601, 13.428050, 15.585533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.059466, 14.258792, 15.757994>,  <15.662825, 13.863759, 15.612048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.059466, 14.258792, 15.757994> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968011, 13.883360, 15.861369>,  <14.913137, 13.658100, 15.923394>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.968011, 13.883360, 15.861369>,  <15.059466, 14.258792, 15.757994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.968011, 13.883360, 15.861369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243716, 0.312202, 0.918222,
		-0.942511, 0.146956, -0.300129,
		-0.228639, -0.938581, 0.258438,
		14.899419, 13.601786, 15.938901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.434715, 14.264998, 16.162195>,  <15.059466, 14.258792, 15.757994>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.434715, 14.264998, 16.162195> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595022, 13.910479, 16.255024>,  <14.691206, 13.697766, 16.310722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.595022, 13.910479, 16.255024>,  <14.434715, 14.264998, 16.162195>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.595022, 13.910479, 16.255024> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028058, 0.241313, 0.970042,
		-0.915751, -0.395272, 0.071842,
		0.400767, -0.886300, 0.232073,
		14.715252, 13.644588, 16.324646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.006512, 14.001501, 16.590858>,  <14.434715, 14.264998, 16.162195>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.006512, 14.001501, 16.590858> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343422, 13.796312, 16.657110>,  <14.545568, 13.673199, 16.696861>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.343422, 13.796312, 16.657110>,  <14.006512, 14.001501, 16.590858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.343422, 13.796312, 16.657110> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140890, 0.087084, 0.986188,
		-0.520311, -0.853976, 0.001076,
		0.842275, -0.512972, 0.165627,
		14.596105, 13.642421, 16.706799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.898864, 13.742992, 17.279030>,  <14.006512, 14.001501, 16.590858>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.898864, 13.742992, 17.279030> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288586, 13.659288, 17.245712>,  <14.522419, 13.609066, 17.225721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.288586, 13.659288, 17.245712>,  <13.898864, 13.742992, 17.279030>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.288586, 13.659288, 17.245712> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135717, 0.250327, 0.958602,
		-0.179748, -0.945276, 0.272295,
		0.974306, -0.209261, -0.083294,
		14.580877, 13.596510, 17.220724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.171036, 13.340014, 17.973320>,  <13.898864, 13.742992, 17.279030>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.171036, 13.340014, 17.973320> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493975, 13.511533, 17.811172>,  <14.687738, 13.614444, 17.713884>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.493975, 13.511533, 17.811172>,  <14.171036, 13.340014, 17.973320>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.493975, 13.511533, 17.811172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291583, 0.307339, 0.905827,
		0.513001, -0.849515, 0.123100,
		0.807347, 0.428796, -0.405369,
		14.736179, 13.640172, 17.689562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842612, 12.952401, 18.389050>,  <14.171036, 13.340014, 17.973320>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842612, 12.952401, 18.389050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523995, 13.110728, 18.571850>,  <13.332826, 13.205725, 18.681530>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.523995, 13.110728, 18.571850>,  <13.842612, 12.952401, 18.389050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.523995, 13.110728, 18.571850> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558445, -0.192068, -0.807000,
		-0.231652, -0.898018, 0.374034,
		-0.796540, 0.395820, 0.457001,
		13.285033, 13.229473, 18.708950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.243928, 12.380006, 18.376160>,  <13.842612, 12.952401, 18.389050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.243928, 12.380006, 18.376160> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.066255, 12.731833, 18.444349>,  <12.959651, 12.942930, 18.485262>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.066255, 12.731833, 18.444349>,  <13.243928, 12.380006, 18.376160>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.066255, 12.731833, 18.444349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522543, -0.099772, -0.846755,
		-0.727771, -0.465192, 0.503930,
		-0.444182, 0.879569, 0.170472,
		12.933000, 12.995704, 18.495491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.478724, 12.343874, 18.548206>,  <13.243928, 12.380006, 18.376160>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.478724, 12.343874, 18.548206> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541109, 12.708912, 18.397026>,  <12.578541, 12.927935, 18.306318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.541109, 12.708912, 18.397026>,  <12.478724, 12.343874, 18.548206>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.541109, 12.708912, 18.397026> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453394, -0.273801, -0.848214,
		-0.877558, 0.303652, 0.371062,
		0.155965, 0.912594, -0.377950,
		12.587898, 12.982690, 18.283642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.870752, 12.541824, 18.182461>,  <12.478724, 12.343874, 18.548206>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.870752, 12.541824, 18.182461> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125029, 12.817174, 18.042725>,  <12.277595, 12.982384, 17.958883>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.125029, 12.817174, 18.042725>,  <11.870752, 12.541824, 18.182461>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<12.125029, 12.817174, 18.042725> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412138, -0.079998, -0.907602,
		-0.652717, 0.720931, 0.232851,
		0.635691, 0.688374, -0.349339,
		12.315736, 13.023686, 17.937923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.411766, 12.861297, 17.734230>,  <11.870752, 12.541824, 18.182461>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.411766, 12.861297, 17.734230> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755941, 13.022938, 17.610071>,  <11.962446, 13.119923, 17.535576>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.755941, 13.022938, 17.610071>,  <11.411766, 12.861297, 17.734230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.755941, 13.022938, 17.610071> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279480, -0.135090, -0.950600,
		-0.426072, 0.904683, -0.003298,
		0.860438, 0.404102, -0.310399,
		12.014072, 13.144169, 17.516951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.198418, 13.357024, 17.294020>,  <11.411766, 12.861297, 17.734230>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.198418, 13.357024, 17.294020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573653, 13.255901, 17.199295>,  <11.798795, 13.195228, 17.142460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.573653, 13.255901, 17.199295>,  <11.198418, 13.357024, 17.294020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.573653, 13.255901, 17.199295> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254016, -0.037241, -0.966483,
		0.235515, 0.966800, -0.099152,
		0.938088, -0.252807, -0.236812,
		11.855080, 13.180059, 17.128252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.450768, 13.834472, 16.852392>,  <11.198418, 13.357024, 17.294020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.450768, 13.834472, 16.852392> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620971, 13.474612, 16.813250>,  <11.723092, 13.258697, 16.789764>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.620971, 13.474612, 16.813250>,  <11.450768, 13.834472, 16.852392>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.620971, 13.474612, 16.813250> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380290, -0.079640, -0.921432,
		0.821172, 0.429290, -0.376015,
		0.425507, -0.899649, -0.097856,
		11.748623, 13.204718, 16.783894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.701632, 13.921007, 16.181421>,  <11.450768, 13.834472, 16.852392>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.701632, 13.921007, 16.181421> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721882, 13.531218, 16.268908>,  <11.734032, 13.297343, 16.321400>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.721882, 13.531218, 16.268908>,  <11.701632, 13.921007, 16.181421>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.721882, 13.531218, 16.268908> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313973, -0.223420, -0.922770,
		0.948082, -0.021957, -0.317269,
		0.050623, -0.974475, 0.218714,
		11.737069, 13.238875, 16.334522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.920483, 13.563029, 15.591581>,  <11.701632, 13.921007, 16.181421>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.920483, 13.563029, 15.591581> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.747738, 13.272556, 15.805554>,  <11.644092, 13.098272, 15.933938>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.747738, 13.272556, 15.805554>,  <11.920483, 13.563029, 15.591581>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.747738, 13.272556, 15.805554> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421407, -0.361919, -0.831523,
		0.797441, -0.584527, -0.149721,
		-0.431861, -0.726184, 0.534933,
		11.618179, 13.054701, 15.966034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.917036, 12.970890, 15.065619>,  <11.920483, 13.563029, 15.591581>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.917036, 12.970890, 15.065619> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634270, 12.894537, 15.338040>,  <11.464610, 12.848725, 15.501493>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.634270, 12.894537, 15.338040>,  <11.917036, 12.970890, 15.065619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.634270, 12.894537, 15.338040> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567957, -0.420675, -0.707431,
		0.421539, -0.886903, 0.188968,
		-0.706916, -0.190884, 0.681053,
		11.422194, 12.837272, 15.542356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.615674, 12.381515, 14.847013>,  <11.917036, 12.970890, 15.065619>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.615674, 12.381515, 14.847013> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338516, 12.469106, 15.121806>,  <11.172221, 12.521661, 15.286682>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.338516, 12.469106, 15.121806>,  <11.615674, 12.381515, 14.847013>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<11.338516, 12.469106, 15.121806> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714168, -0.339640, -0.612053,
		0.099301, -0.914710, 0.391721,
		-0.692895, 0.218977, 0.686983,
		11.130648, 12.534799, 15.327901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.150918, 11.776680, 14.887801>,  <11.615674, 12.381515, 14.847013>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.150918, 11.776680, 14.887801> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979869, 12.129556, 14.966676>,  <10.877239, 12.341281, 15.014001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.979869, 12.129556, 14.966676>,  <11.150918, 11.776680, 14.887801>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<10.979869, 12.129556, 14.966676> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646001, -0.145649, -0.749312,
		-0.632315, -0.447805, 0.632177,
		-0.427622, 0.882189, 0.197187,
		10.851583, 12.394213, 15.025832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<14.911728, 15.504990, 23.731218> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.965247, 15.111828, 23.781813>,  <14.997358, 14.875931, 23.812170>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.965247, 15.111828, 23.781813>,  <14.911728, 15.504990, 23.731218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.965247, 15.111828, 23.781813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218112, -0.153711, -0.963743,
		0.966709, 0.101359, -0.234949,
		0.133798, -0.982904, 0.126486,
		15.005386, 14.816957, 23.819759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.414539, 15.128244, 23.184473>,  <14.911728, 15.504990, 23.731218>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.414539, 15.128244, 23.184473> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.221779, 14.801413, 23.311062>,  <15.106123, 14.605313, 23.387014>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.221779, 14.801413, 23.311062>,  <15.414539, 15.128244, 23.184473>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.221779, 14.801413, 23.311062> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054307, -0.388333, -0.919918,
		0.874541, -0.426122, 0.231511,
		-0.481901, -0.817079, 0.316472,
		15.077209, 14.556289, 23.406004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.715293, 14.586846, 22.877562>,  <15.414539, 15.128244, 23.184473>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.715293, 14.586846, 22.877562> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.386580, 14.401973, 23.010866>,  <15.189353, 14.291049, 23.090849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.386580, 14.401973, 23.010866>,  <15.715293, 14.586846, 22.877562>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.386580, 14.401973, 23.010866> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116407, -0.436358, -0.892211,
		0.557787, -0.771995, 0.304789,
		-0.821780, -0.462184, 0.333261,
		15.140046, 14.263317, 23.110844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.644167, 13.890166, 22.598791>,  <15.715293, 14.586846, 22.877562>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.644167, 13.890166, 22.598791> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.266460, 13.950020, 22.716072>,  <15.039836, 13.985932, 22.786442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.266460, 13.950020, 22.716072>,  <15.644167, 13.890166, 22.598791>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.266460, 13.950020, 22.716072> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326918, -0.530520, -0.782096,
		0.038523, -0.834361, 0.549870,
		-0.944267, 0.149634, 0.293205,
		14.983180, 13.994910, 22.804033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.296918, 13.198736, 22.503206>,  <15.644167, 13.890166, 22.598791>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.296918, 13.198736, 22.503206> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.002110, 13.469086, 22.503553>,  <14.825226, 13.631295, 22.503761>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.002110, 13.469086, 22.503553>,  <15.296918, 13.198736, 22.503206>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.002110, 13.469086, 22.503553> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482481, -0.525229, -0.700961,
		-0.473301, -0.517043, 0.713199,
		-0.737020, 0.675871, 0.000872,
		14.781005, 13.671847, 22.503815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.741939, 12.831975, 22.362368>,  <15.296918, 13.198736, 22.503206>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.741939, 12.831975, 22.362368> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.614637, 13.203729, 22.287577>,  <14.538257, 13.426781, 22.242702>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.614637, 13.203729, 22.287577>,  <14.741939, 12.831975, 22.362368>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.614637, 13.203729, 22.287577> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523155, -0.336659, -0.782924,
		-0.790585, -0.151350, 0.593354,
		-0.318253, 0.929384, -0.186978,
		14.519161, 13.482544, 22.231483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.080300, 12.770228, 22.203672>,  <14.741939, 12.831975, 22.362368>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.080300, 12.770228, 22.203672> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.187706, 13.120348, 22.042799>,  <14.252150, 13.330420, 21.946274>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.187706, 13.120348, 22.042799>,  <14.080300, 12.770228, 22.203672>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.187706, 13.120348, 22.042799> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535140, -0.211615, -0.817829,
		-0.800953, 0.434825, 0.411585,
		0.268515, 0.875298, -0.402185,
		14.268260, 13.382937, 21.922144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.544189, 12.855666, 21.729574>,  <14.080300, 12.770228, 22.203672>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.544189, 12.855666, 21.729574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.812224, 13.113185, 21.581785>,  <13.973045, 13.267696, 21.493113>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.812224, 13.113185, 21.581785>,  <13.544189, 12.855666, 21.729574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.812224, 13.113185, 21.581785> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.346731, -0.168631, -0.922682,
		-0.656324, 0.746383, 0.110227,
		0.670087, 0.643798, -0.369471,
		14.013250, 13.306324, 21.470943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.120756, 13.306982, 21.409613>,  <13.544189, 12.855666, 21.729574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.120756, 13.306982, 21.409613> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.479057, 13.358162, 21.239315>,  <13.694037, 13.388870, 21.137136>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.479057, 13.358162, 21.239315>,  <13.120756, 13.306982, 21.409613>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.479057, 13.358162, 21.239315> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407873, -0.144392, -0.901549,
		-0.176828, 0.981213, -0.077152,
		0.895752, 0.127951, -0.425743,
		13.747783, 13.396547, 21.111591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.018413, 13.803066, 20.871141>,  <13.120756, 13.306982, 21.409613>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.018413, 13.803066, 20.871141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.345528, 13.597315, 20.767883>,  <13.541797, 13.473865, 20.705929>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.345528, 13.597315, 20.767883>,  <13.018413, 13.803066, 20.871141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.345528, 13.597315, 20.767883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220849, 0.133729, -0.966096,
		0.531460, 0.847073, -0.004238,
		0.817787, -0.514377, -0.258147,
		13.590864, 13.443002, 20.690439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.371295, 14.179207, 20.399935>,  <13.018413, 13.803066, 20.871141>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.371295, 14.179207, 20.399935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.471845, 13.796110, 20.344015>,  <13.532174, 13.566253, 20.310463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.471845, 13.796110, 20.344015>,  <13.371295, 14.179207, 20.399935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.471845, 13.796110, 20.344015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227319, 0.081977, -0.970364,
		0.940817, 0.275703, -0.197106,
		0.251375, -0.957741, -0.139798,
		13.547257, 13.508788, 20.302076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.699132, 14.266909, 19.853119>,  <13.371295, 14.179207, 20.399935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.699132, 14.266909, 19.853119> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.616648, 13.876058, 19.873898>,  <13.567157, 13.641547, 19.886364>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.616648, 13.876058, 19.873898>,  <13.699132, 14.266909, 19.853119>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.616648, 13.876058, 19.873898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278675, 0.007756, -0.960354,
		0.937986, -0.212511, -0.273900,
		-0.206210, -0.977128, 0.051946,
		13.554785, 13.582919, 19.889481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.024245, 14.009578, 19.184414>,  <13.699132, 14.266909, 19.853119>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.024245, 14.009578, 19.184414> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.784468, 13.713543, 19.306356>,  <13.640601, 13.535922, 19.379522>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.784468, 13.713543, 19.306356>,  <14.024245, 14.009578, 19.184414>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.784468, 13.713543, 19.306356> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406303, -0.046803, -0.912539,
		0.689627, -0.670880, -0.272644,
		-0.599444, -0.740088, 0.304857,
		13.604634, 13.491517, 19.397814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.132040, 13.545834, 18.681772>,  <14.024245, 14.009578, 19.184414>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.132040, 13.545834, 18.681772> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.800990, 13.424325, 18.870564>,  <13.602361, 13.351420, 18.983837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<13.800990, 13.424325, 18.870564>,  <14.132040, 13.545834, 18.681772>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<13.800990, 13.424325, 18.870564> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390326, -0.292779, -0.872884,
		0.403342, -0.906644, 0.123741,
		-0.827624, -0.303771, 0.471977,
		13.552703, 13.333194, 19.012156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.797106, 13.117784, 18.311335>,  <14.132040, 13.545834, 18.681772>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.797106, 13.117784, 18.311335> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.878392, 13.483144, 18.170250>,  <14.927164, 13.702360, 18.085600>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<14.878392, 13.483144, 18.170250>,  <14.797106, 13.117784, 18.311335>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<14.878392, 13.483144, 18.170250> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361081, 0.264927, 0.894111,
		0.910123, -0.309054, -0.275974,
		0.203215, 0.913400, -0.352709,
		14.939357, 13.757164, 18.064438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.518956, 13.194002, 18.368145>,  <14.797106, 13.117784, 18.311335>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.518956, 13.194002, 18.368145> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.364506, 13.561101, 18.330952>,  <15.271835, 13.781361, 18.308636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.364506, 13.561101, 18.330952>,  <15.518956, 13.194002, 18.368145>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.364506, 13.561101, 18.330952> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585092, 0.321596, 0.744475,
		0.713144, 0.233057, -0.661143,
		-0.386126, 0.917747, -0.092985,
		15.248668, 13.836425, 18.303057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.068840, 13.574124, 18.441843>,  <15.518956, 13.194002, 18.368145>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.068840, 13.574124, 18.441843> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.802424, 13.870281, 18.478090>,  <15.642575, 14.047976, 18.499838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.802424, 13.870281, 18.478090>,  <16.068840, 13.574124, 18.441843>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.802424, 13.870281, 18.478090> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518151, 0.371848, 0.770226,
		0.536574, 0.559954, -0.631300,
		-0.666039, 0.740392, 0.090616,
		15.602612, 14.092399, 18.505276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.429085, 14.212335, 18.447247>,  <16.068840, 13.574124, 18.441843>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.429085, 14.212335, 18.447247> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.075289, 14.261848, 18.627180>,  <15.863010, 14.291556, 18.735140>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.075289, 14.261848, 18.627180>,  <16.429085, 14.212335, 18.447247>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.075289, 14.261848, 18.627180> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446448, 0.504558, 0.738990,
		-0.135492, 0.854458, -0.501541,
		-0.884492, 0.123785, 0.449834,
		15.809941, 14.298984, 18.762131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.449640, 14.877756, 18.483694>,  <16.429085, 14.212335, 18.447247>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.449640, 14.877756, 18.483694> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.181650, 14.783156, 18.765177>,  <16.020857, 14.726397, 18.934067>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.181650, 14.783156, 18.765177>,  <16.449640, 14.877756, 18.483694>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181650, 14.783156, 18.765177> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498733, 0.558756, 0.662614,
		-0.549908, 0.794896, -0.256402,
		-0.669975, -0.236500, 0.703705,
		15.980658, 14.712207, 18.976288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.380407, 15.455312, 18.766893>,  <16.449640, 14.877756, 18.483694>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.380407, 15.455312, 18.766893> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.211777, 15.203795, 19.028242>,  <16.110598, 15.052886, 19.185051>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.211777, 15.203795, 19.028242>,  <16.380407, 15.455312, 18.766893>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.211777, 15.203795, 19.028242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142188, 0.665778, 0.732476,
		-0.895575, 0.401697, -0.191271,
		-0.421578, -0.628791, 0.653371,
		16.085304, 15.015158, 19.224253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.976384, 15.883455, 19.153240>,  <16.380407, 15.455312, 18.766893>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.976384, 15.883455, 19.153240> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.048250, 15.551872, 19.365108>,  <16.091370, 15.352922, 19.492229>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.048250, 15.551872, 19.365108>,  <15.976384, 15.883455, 19.153240>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.048250, 15.551872, 19.365108> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235226, 0.559013, 0.795093,
		-0.955191, -0.018258, 0.295428,
		0.179665, -0.828958, 0.529669,
		16.102150, 15.303185, 19.524010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.466619, 15.871154, 19.759304>,  <15.976384, 15.883455, 19.153240>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.466619, 15.871154, 19.759304> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.806177, 15.676885, 19.842728>,  <16.009912, 15.560323, 19.892782>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.806177, 15.676885, 19.842728>,  <15.466619, 15.871154, 19.759304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.806177, 15.676885, 19.842728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220914, 0.684475, 0.694759,
		-0.480180, -0.543704, 0.688341,
		0.848896, -0.485674, 0.208559,
		16.060846, 15.531182, 19.905296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.479801, 15.814763, 20.480867>,  <15.466619, 15.871154, 19.759304>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.479801, 15.814763, 20.480867> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.860320, 15.746560, 20.378138>,  <16.088631, 15.705638, 20.316500>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<15.860320, 15.746560, 20.378138>,  <15.479801, 15.814763, 20.480867>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<15.860320, 15.746560, 20.378138> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307586, 0.469421, 0.827668,
		-0.020566, -0.866355, 0.499006,
		0.951298, -0.170509, -0.256825,
		16.145710, 15.695408, 20.301090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.856702, 15.776250, 21.114412>,  <15.479801, 15.814763, 20.480867>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.856702, 15.776250, 21.114412> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.161749, 15.807120, 20.857521>,  <16.344778, 15.825643, 20.703386>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.161749, 15.807120, 20.857521>,  <15.856702, 15.776250, 21.114412>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.161749, 15.807120, 20.857521> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.603939, 0.270642, 0.749674,
		0.231666, -0.959582, 0.159792,
		0.762619, 0.077169, -0.642227,
		16.390533, 15.830274, 20.664852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.529003, 15.344961, 21.350256>,  <15.856702, 15.776250, 21.114412>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.529003, 15.344961, 21.350256> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.622208, 15.663763, 21.127369>,  <16.678131, 15.855044, 20.993637>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<16.622208, 15.663763, 21.127369>,  <16.529003, 15.344961, 21.350256>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<16.622208, 15.663763, 21.127369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.504798, 0.390617, 0.769804,
		0.831195, -0.460655, -0.311307,
		0.233012, 0.797004, -0.557217,
		16.692112, 15.902864, 20.960203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.276768, 15.358049, 21.444002>,  <16.529003, 15.344961, 21.350256>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.276768, 15.358049, 21.444002> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.192913, 15.720678, 21.297482>,  <17.142601, 15.938256, 21.209570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.192913, 15.720678, 21.297482>,  <17.276768, 15.358049, 21.444002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.192913, 15.720678, 21.297482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445048, 0.422041, 0.789819,
		0.870623, 0.002554, -0.491944,
		-0.209637, 0.906573, -0.366302,
		17.130022, 15.992650, 21.187592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.978756, 15.716982, 21.319918>,  <17.276768, 15.358049, 21.444002>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.978756, 15.716982, 21.319918> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.694521, 15.997809, 21.338533>,  <17.523979, 16.166306, 21.349703>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.694521, 15.997809, 21.338533>,  <17.978756, 15.716982, 21.319918>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.694521, 15.997809, 21.338533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541894, 0.503881, 0.672647,
		0.448794, 0.503194, -0.738498,
		-0.710587, 0.702068, 0.046540,
		17.481344, 16.208429, 21.352495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.308004, 16.275036, 21.352596>,  <17.978756, 15.716982, 21.319918>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.308004, 16.275036, 21.352596> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.950886, 16.396812, 21.485399>,  <17.736614, 16.469879, 21.565081>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<17.950886, 16.396812, 21.485399>,  <18.308004, 16.275036, 21.352596>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<17.950886, 16.396812, 21.485399> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450419, 0.613141, 0.648984,
		-0.005989, 0.728954, -0.684537,
		-0.892797, 0.304442, 0.332006,
		17.683046, 16.488146, 21.585001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<12.962795, 18.826149, 24.531456> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.166793, 18.498859, 24.425308>,  <13.289191, 18.302486, 24.361620>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.166793, 18.498859, 24.425308>,  <12.962795, 18.826149, 24.531456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.166793, 18.498859, 24.425308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248296, 0.155339, -0.956148,
		0.823563, 0.553519, -0.123940,
		0.509993, -0.818222, -0.265368,
		13.319791, 18.253393, 24.345697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.260500, 19.138420, 23.953825>,  <12.962795, 18.826149, 24.531456>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.260500, 19.138420, 23.953825> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.280103, 18.739643, 23.929466>,  <13.291864, 18.500378, 23.914850>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.280103, 18.739643, 23.929466>,  <13.260500, 19.138420, 23.953825>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.280103, 18.739643, 23.929466> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170784, 0.051709, -0.983951,
		0.984089, 0.058620, -0.167728,
		0.049007, -0.996940, -0.060897,
		13.294805, 18.440561, 23.911198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.794842, 18.897398, 23.468826>,  <13.260500, 19.138420, 23.953825>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.794842, 18.897398, 23.468826> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.524329, 18.603247, 23.486088>,  <13.362021, 18.426756, 23.496445>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.524329, 18.603247, 23.486088>,  <13.794842, 18.897398, 23.468826>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.524329, 18.603247, 23.486088> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000405, -0.058209, -0.998304,
		0.736643, -0.675153, 0.039068,
		-0.676282, -0.735378, 0.043152,
		13.321445, 18.382633, 23.499033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.974281, 18.538071, 22.840899>,  <13.794842, 18.897398, 23.468826>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.974281, 18.538071, 22.840899> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.633517, 18.351725, 22.936579>,  <13.429059, 18.239916, 22.993986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.633517, 18.351725, 22.936579>,  <13.974281, 18.538071, 22.840899>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.633517, 18.351725, 22.936579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142545, -0.233234, -0.961916,
		0.503915, -0.853563, 0.132288,
		-0.851910, -0.465867, 0.239201,
		13.377944, 18.211966, 23.008339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.042373, 17.953156, 22.384792>,  <13.974281, 18.538071, 22.840899>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.042373, 17.953156, 22.384792> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.651786, 17.965954, 22.470102>,  <13.417434, 17.973633, 22.521288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.651786, 17.965954, 22.470102>,  <14.042373, 17.953156, 22.384792>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.651786, 17.965954, 22.470102> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212909, -0.300519, -0.929709,
		0.034346, -0.953239, 0.300259,
		-0.976468, 0.031996, 0.213275,
		13.358846, 17.975554, 22.534084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.783108, 17.424309, 22.040649>,  <14.042373, 17.953156, 22.384792>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.783108, 17.424309, 22.040649> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.461347, 17.644024, 22.131174>,  <13.268290, 17.775854, 22.185488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.461347, 17.644024, 22.131174>,  <13.783108, 17.424309, 22.040649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.461347, 17.644024, 22.131174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449187, -0.313040, -0.836802,
		-0.388805, -0.774780, 0.498545,
		-0.804402, 0.549292, 0.226309,
		13.220026, 17.808811, 22.199068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.242033, 17.015076, 22.018917>,  <13.783108, 17.424309, 22.040649>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.242033, 17.015076, 22.018917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.081712, 17.374569, 21.947775>,  <12.985519, 17.590265, 21.905090>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.081712, 17.374569, 21.947775>,  <13.242033, 17.015076, 22.018917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.081712, 17.374569, 21.947775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325727, -0.321235, -0.889219,
		-0.856306, -0.298468, 0.421494,
		-0.400802, 0.898735, -0.177856,
		12.961472, 17.644190, 21.894419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.609172, 16.896221, 21.719067>,  <13.242033, 17.015076, 22.018917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.609172, 16.896221, 21.719067> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.695963, 17.276825, 21.631842>,  <12.748037, 17.505188, 21.579508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.695963, 17.276825, 21.631842>,  <12.609172, 16.896221, 21.719067>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.695963, 17.276825, 21.631842> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350233, -0.132631, -0.927225,
		-0.911185, 0.277560, 0.304472,
		0.216978, 0.951509, -0.218062,
		12.761056, 17.562277, 21.566423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.006170, 17.132217, 21.433300>,  <12.609172, 16.896221, 21.719067>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.006170, 17.132217, 21.433300> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.287198, 17.385725, 21.303850>,  <12.455814, 17.537830, 21.226181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.287198, 17.385725, 21.303850>,  <12.006170, 17.132217, 21.433300>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.287198, 17.385725, 21.303850> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364877, -0.069611, -0.928450,
		-0.610952, 0.770383, 0.182342,
		0.702569, 0.633771, -0.323623,
		12.497969, 17.575855, 21.206762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.729764, 17.265751, 20.801003>,  <12.006170, 17.132217, 21.433300>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.729764, 17.265751, 20.801003> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.098372, 17.420839, 20.792303>,  <12.319536, 17.513893, 20.787085>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.098372, 17.420839, 20.792303>,  <11.729764, 17.265751, 20.801003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.098372, 17.420839, 20.792303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051832, 0.067305, -0.996385,
		-0.384858, 0.919315, 0.082120,
		0.921519, 0.387723, -0.021747,
		12.374827, 17.537157, 20.785778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.616428, 17.982307, 20.501110>,  <11.729764, 17.265751, 20.801003>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.616428, 17.982307, 20.501110> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.961980, 17.787798, 20.448572>,  <12.169311, 17.671093, 20.417049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<11.961980, 17.787798, 20.448572>,  <11.616428, 17.982307, 20.501110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.961980, 17.787798, 20.448572> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215493, -0.121109, -0.968966,
		0.455275, 0.865374, -0.209412,
		0.863880, -0.486272, -0.131344,
		12.221144, 17.641916, 20.409168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.796778, 18.223061, 19.825489>,  <11.616428, 17.982307, 20.501110>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.796778, 18.223061, 19.825489> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.026065, 17.901775, 19.890322>,  <12.163637, 17.709005, 19.929220>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.026065, 17.901775, 19.890322>,  <11.796778, 18.223061, 19.825489>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.026065, 17.901775, 19.890322> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069584, -0.244804, -0.967072,
		0.816442, 0.543066, -0.196217,
		0.573219, -0.803212, 0.162080,
		12.198030, 17.660812, 19.938946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.245086, 18.139778, 19.266537>,  <11.796778, 18.223061, 19.825489>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.245086, 18.139778, 19.266537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.241805, 17.775427, 19.431574>,  <12.239837, 17.556816, 19.530596>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.241805, 17.775427, 19.431574>,  <12.245086, 18.139778, 19.266537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.241805, 17.775427, 19.431574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.023412, -0.412317, -0.910740,
		0.999692, -0.017130, -0.017943,
		-0.008202, -0.910879, 0.412591,
		12.239345, 17.502163, 19.555351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.743708, 17.739634, 18.928009>,  <12.245086, 18.139778, 19.266537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.743708, 17.739634, 18.928009> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.497297, 17.464350, 19.081308>,  <12.349451, 17.299179, 19.173288>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<12.497297, 17.464350, 19.081308>,  <12.743708, 17.739634, 18.928009>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.497297, 17.464350, 19.081308> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165295, -0.362761, -0.917105,
		0.770189, -0.628309, 0.109712,
		-0.616025, -0.688209, 0.383251,
		12.312490, 17.257887, 19.196283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.446142, 17.459278, 18.804468>,  <12.743708, 17.739634, 18.928009>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.446142, 17.459278, 18.804468> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.656968, 17.683643, 18.549099>,  <13.783463, 17.818262, 18.395878>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<13.656968, 17.683643, 18.549099>,  <13.446142, 17.459278, 18.804468>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.656968, 17.683643, 18.549099> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360001, 0.533135, 0.765615,
		0.769807, -0.633361, 0.079069,
		0.527065, 0.560911, -0.638422,
		13.815087, 17.851917, 18.357573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.199800, 17.489494, 18.845163>,  <13.446142, 17.459278, 18.804468>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.199800, 17.489494, 18.845163> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.116412, 17.859142, 18.717073>,  <14.066380, 18.080931, 18.640219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.116412, 17.859142, 18.717073>,  <14.199800, 17.489494, 18.845163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.116412, 17.859142, 18.717073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674987, 0.372886, 0.636670,
		0.707766, -0.083422, -0.701504,
		-0.208468, 0.924120, -0.320225,
		14.053872, 18.136377, 18.621006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.851006, 17.728319, 18.984159>,  <14.199800, 17.489494, 18.845163>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.851006, 17.728319, 18.984159> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.676121, 18.078241, 18.900675>,  <14.571190, 18.288195, 18.850584>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.676121, 18.078241, 18.900675>,  <14.851006, 17.728319, 18.984159>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.676121, 18.078241, 18.900675> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525195, 0.436733, 0.730366,
		0.730079, 0.209712, -0.650389,
		-0.437213, 0.874806, -0.208709,
		14.544957, 18.340683, 18.838062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.355309, 18.273203, 19.014006>,  <14.851006, 17.728319, 18.984159>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.355309, 18.273203, 19.014006> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.995657, 18.443609, 19.054157>,  <14.779866, 18.545853, 19.078249>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.995657, 18.443609, 19.054157>,  <15.355309, 18.273203, 19.014006>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.995657, 18.443609, 19.054157> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312651, 0.464660, 0.828457,
		0.306295, 0.776273, -0.550984,
		-0.899129, 0.426018, 0.100379,
		14.725918, 18.571415, 19.084270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.486395, 19.014194, 19.049868>,  <15.355309, 18.273203, 19.014006>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.486395, 19.014194, 19.049868> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.125566, 18.961830, 19.214369>,  <14.909069, 18.930410, 19.313068>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.125566, 18.961830, 19.214369>,  <15.486395, 19.014194, 19.049868>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.125566, 18.961830, 19.214369> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282708, 0.540755, 0.792250,
		-0.326102, 0.830931, -0.450790,
		-0.902072, -0.130912, 0.411251,
		14.854945, 18.922556, 19.337744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.153153, 19.709814, 19.223984>,  <15.486395, 19.014194, 19.049868>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.153153, 19.709814, 19.223984> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.979667, 19.443129, 19.466433>,  <14.875575, 19.283117, 19.611902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.979667, 19.443129, 19.466433>,  <15.153153, 19.709814, 19.223984>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.979667, 19.443129, 19.466433> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173395, 0.598357, 0.782243,
		-0.884209, 0.444369, -0.143912,
		-0.433716, -0.666712, 0.606124,
		14.849552, 19.243114, 19.648270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.661906, 20.084688, 19.746424>,  <15.153153, 19.709814, 19.223984>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.661906, 20.084688, 19.746424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.755713, 19.732853, 19.911989>,  <14.811996, 19.521751, 20.011330>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.755713, 19.732853, 19.911989>,  <14.661906, 20.084688, 19.746424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.755713, 19.732853, 19.911989> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082085, 0.442187, 0.893159,
		-0.968641, -0.175483, 0.175901,
		0.234515, -0.879589, 0.413916,
		14.826067, 19.468977, 20.036163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.261350, 20.168087, 20.415398>,  <14.661906, 20.084688, 19.746424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.261350, 20.168087, 20.415398> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.517391, 19.864561, 20.463516>,  <14.671016, 19.682446, 20.492388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.517391, 19.864561, 20.463516>,  <14.261350, 20.168087, 20.415398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.517391, 19.864561, 20.463516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118996, 0.252604, 0.960225,
		-0.759018, -0.600328, 0.251988,
		0.640103, -0.758813, 0.120295,
		14.709422, 19.636917, 20.499605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.977537, 19.890694, 21.057646>,  <14.261350, 20.168087, 20.415398>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.977537, 19.890694, 21.057646> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.347672, 19.751940, 20.996429>,  <14.569754, 19.668688, 20.959700>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.347672, 19.751940, 20.996429>,  <13.977537, 19.890694, 21.057646>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.347672, 19.751940, 20.996429> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200528, 0.105202, 0.974023,
		-0.321775, -0.931988, 0.166908,
		0.925337, -0.346886, -0.153039,
		14.625274, 19.647873, 20.950518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.154246, 19.337831, 21.531364>,  <13.977537, 19.890694, 21.057646>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.154246, 19.337831, 21.531364> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.521627, 19.463615, 21.435398>,  <14.742056, 19.539085, 21.377819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.521627, 19.463615, 21.435398>,  <14.154246, 19.337831, 21.531364>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.521627, 19.463615, 21.435398> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262893, -0.032144, 0.964290,
		0.295518, -0.948727, -0.112191,
		0.918454, 0.314459, -0.239914,
		14.797164, 19.557953, 21.363424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.540401, 18.986519, 21.907333>,  <14.154246, 19.337831, 21.531364>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.540401, 18.986519, 21.907333> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.800412, 19.279066, 21.824810>,  <14.956419, 19.454596, 21.775297>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<14.800412, 19.279066, 21.824810>,  <14.540401, 18.986519, 21.907333>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<14.800412, 19.279066, 21.824810> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236886, 0.062937, 0.969497,
		0.722046, -0.679070, -0.132340,
		0.650027, 0.731370, -0.206306,
		14.995420, 19.498478, 21.762918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.197629, 18.820681, 22.245321>,  <14.540401, 18.986519, 21.907333>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.197629, 18.820681, 22.245321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.219908, 19.214636, 22.179728>,  <15.233274, 19.451010, 22.140371>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.219908, 19.214636, 22.179728>,  <15.197629, 18.820681, 22.245321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.219908, 19.214636, 22.179728> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406912, 0.127591, 0.904513,
		0.911768, -0.117105, -0.393657,
		0.055696, 0.984889, -0.163985,
		15.236616, 19.510103, 22.130531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.863324, 19.015062, 22.493332>,  <15.197629, 18.820681, 22.245321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.863324, 19.015062, 22.493332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.648399, 19.352192, 22.481066>,  <15.519444, 19.554470, 22.473707>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.648399, 19.352192, 22.481066>,  <15.863324, 19.015062, 22.493332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.648399, 19.352192, 22.481066> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362439, 0.263583, 0.893959,
		0.761534, 0.469221, -0.447099,
		-0.537312, 0.842826, -0.030663,
		15.487206, 19.605040, 22.471867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.275219, 19.571590, 22.583233>,  <15.863324, 19.015062, 22.493332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.275219, 19.571590, 22.583233> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.915139, 19.714321, 22.683086>,  <15.699092, 19.799959, 22.742998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<15.915139, 19.714321, 22.683086>,  <16.275219, 19.571590, 22.583233>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<15.915139, 19.714321, 22.683086> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373844, 0.339207, 0.863238,
		0.223349, 0.870409, -0.438751,
		-0.900198, 0.356828, 0.249636,
		15.645080, 19.821369, 22.757977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.805864, 20.057785, 22.185324>,  <16.275219, 19.571590, 22.583233>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.805864, 20.057785, 22.185324> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.189232, 19.954550, 22.136623>,  <17.419252, 19.892609, 22.107403>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.189232, 19.954550, 22.136623>,  <16.805864, 20.057785, 22.185324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.189232, 19.954550, 22.136623> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103468, 0.083325, -0.991136,
		0.265946, 0.962521, 0.053156,
		0.958419, -0.258089, -0.121750,
		17.476757, 19.877123, 22.100098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.044613, 20.452446, 21.615978>,  <16.805864, 20.057785, 22.185324>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.044613, 20.452446, 21.615978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.307341, 20.151371, 21.634073>,  <17.464977, 19.970726, 21.644930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.307341, 20.151371, 21.634073>,  <17.044613, 20.452446, 21.615978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.307341, 20.151371, 21.634073> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092414, -0.139897, -0.985844,
		0.748362, 0.643343, -0.161446,
		0.656821, -0.752688, 0.045240,
		17.504387, 19.925564, 21.647646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647997, 20.554878, 21.106964>,  <17.044613, 20.452446, 21.615978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647997, 20.554878, 21.106964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.620424, 20.162416, 21.179174>,  <17.603880, 19.926939, 21.222500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.620424, 20.162416, 21.179174>,  <17.647997, 20.554878, 21.106964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.620424, 20.162416, 21.179174> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027090, -0.182729, -0.982790,
		0.997253, -0.062855, 0.039175,
		-0.068931, -0.981152, 0.180524,
		17.599745, 19.868071, 21.233332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.131893, 20.346144, 20.660925>,  <17.647997, 20.554878, 21.106964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.131893, 20.346144, 20.660925> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.897484, 20.026423, 20.714134>,  <17.756838, 19.834591, 20.746059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.897484, 20.026423, 20.714134>,  <18.131893, 20.346144, 20.660925>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.897484, 20.026423, 20.714134> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112660, -0.242946, -0.963475,
		0.802425, -0.549631, 0.232421,
		-0.586022, -0.799301, 0.133025,
		17.721678, 19.786633, 20.754042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.504124, 19.953539, 20.372458>,  <18.131893, 20.346144, 20.660925>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.504124, 19.953539, 20.372458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.143459, 19.782135, 20.395748>,  <17.927061, 19.679293, 20.409723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.143459, 19.782135, 20.395748>,  <18.504124, 19.953539, 20.372458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.143459, 19.782135, 20.395748> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052111, -0.241328, -0.969044,
		0.429295, -0.870713, 0.239926,
		-0.901660, -0.428508, 0.058228,
		17.872961, 19.653584, 20.413216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.653004, 19.356682, 20.043541>,  <18.504124, 19.953539, 20.372458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.653004, 19.356682, 20.043541> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.260347, 19.422939, 20.005714>,  <18.024754, 19.462694, 19.983019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.260347, 19.422939, 20.005714>,  <18.653004, 19.356682, 20.043541>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.260347, 19.422939, 20.005714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056826, -0.219300, -0.974001,
		-0.182071, -0.961494, 0.205861,
		-0.981642, 0.165639, -0.094566,
		17.965855, 19.472633, 19.977345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.390314, 18.840679, 19.590281>,  <18.653004, 19.356682, 20.043541>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.390314, 18.840679, 19.590281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.076536, 19.088484, 19.601944>,  <17.888269, 19.237167, 19.608942>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<18.076536, 19.088484, 19.601944>,  <18.390314, 18.840679, 19.590281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<18.076536, 19.088484, 19.601944> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256008, -0.280624, -0.925046,
		-0.564895, -0.733112, 0.378735,
		-0.784445, 0.619513, 0.029159,
		17.841202, 19.274338, 19.610691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.788206, 18.457914, 19.467667>,  <18.390314, 18.840679, 19.590281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.788206, 18.457914, 19.467667> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.715324, 18.833885, 19.352192>,  <17.671597, 19.059467, 19.282907>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.715324, 18.833885, 19.352192>,  <17.788206, 18.457914, 19.467667>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.715324, 18.833885, 19.352192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308393, -0.333413, -0.890915,
		-0.933647, -0.073298, 0.350616,
		-0.182202, 0.939927, -0.288685,
		17.660664, 19.115864, 19.265587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.128334, 18.513916, 19.138571>,  <17.788206, 18.457914, 19.467667>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.128334, 18.513916, 19.138571> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.344397, 18.814442, 18.986908>,  <17.474033, 18.994757, 18.895910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.344397, 18.814442, 18.986908>,  <17.128334, 18.513916, 19.138571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.344397, 18.814442, 18.986908> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193918, -0.327299, -0.924809,
		-0.818919, 0.573066, -0.031099,
		0.540155, 0.751313, -0.379159,
		17.506443, 19.039835, 18.873159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.738653, 18.782373, 18.579268>,  <17.128334, 18.513916, 19.138571>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.738653, 18.782373, 18.579268> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.113916, 18.902388, 18.510170>,  <17.339075, 18.974396, 18.468712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.113916, 18.902388, 18.510170>,  <16.738653, 18.782373, 18.579268>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.113916, 18.902388, 18.510170> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026575, -0.435075, -0.900002,
		-0.345188, 0.848934, -0.400196,
		0.938157, 0.300034, -0.172743,
		17.395363, 18.992397, 18.458347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.789309, 19.053257, 17.855772>,  <16.738653, 18.782373, 18.579268>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.789309, 19.053257, 17.855772> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.173948, 18.969385, 17.926609>,  <17.404732, 18.919062, 17.969110>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.173948, 18.969385, 17.926609>,  <16.789309, 19.053257, 17.855772>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.173948, 18.969385, 17.926609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068131, -0.442674, -0.894091,
		0.265867, 0.871822, -0.411389,
		0.961599, -0.209681, 0.177090,
		17.462427, 18.906481, 17.979736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.048656, 19.340052, 17.333895>,  <16.789309, 19.053257, 17.855772>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.048656, 19.340052, 17.333895> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.319586, 19.074364, 17.460417>,  <17.482143, 18.914951, 17.536329>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.319586, 19.074364, 17.460417>,  <17.048656, 19.340052, 17.333895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319586, 19.074364, 17.460417> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105849, -0.337486, -0.935361,
		0.728032, 0.667021, -0.158279,
		0.677322, -0.664219, 0.316304,
		17.522783, 18.875097, 17.555307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.647331, 19.316460, 16.838877>,  <17.048656, 19.340052, 17.333895>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.647331, 19.316460, 16.838877> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.617783, 18.959793, 17.017529>,  <17.600054, 18.745794, 17.124720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.617783, 18.959793, 17.017529>,  <17.647331, 19.316460, 16.838877>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.617783, 18.959793, 17.017529> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057253, -0.450906, -0.890733,
		0.995623, -0.040230, 0.084360,
		-0.073873, -0.891664, 0.446629,
		17.595621, 18.692293, 17.151518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.095028, 18.933533, 16.508284>,  <17.647331, 19.316460, 16.838877>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.095028, 18.933533, 16.508284> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.894094, 18.645943, 16.700424>,  <17.773535, 18.473389, 16.815708>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<17.894094, 18.645943, 16.700424>,  <18.095028, 18.933533, 16.508284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<17.894094, 18.645943, 16.700424> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018763, -0.546332, -0.837358,
		0.864472, -0.429644, 0.260950,
		-0.502331, -0.718976, 0.480350,
		17.743395, 18.430250, 16.844530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<7.260423, 20.453671, 4.701736> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216201, 20.699509, 5.014159>,  <7.189669, 20.847012, 5.201613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.216201, 20.699509, 5.014159>,  <7.260423, 20.453671, 4.701736>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.216201, 20.699509, 5.014159> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990774, 0.006166, 0.135385,
		0.078391, 0.788818, -0.609607,
		-0.110553, 0.614596, 0.781057,
		7.183035, 20.883888, 5.248477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.773136, 21.033115, 4.747919>,  <7.260423, 20.453671, 4.701736>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.773136, 21.033115, 4.747919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.654395, 20.907867, 5.108769>,  <7.583150, 20.832718, 5.325280>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.654395, 20.907867, 5.108769>,  <7.773136, 21.033115, 4.747919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.654395, 20.907867, 5.108769> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949009, -0.201716, 0.242267,
		0.106115, 0.928044, 0.357035,
		-0.296854, -0.313121, 0.902127,
		7.565339, 20.813931, 5.379407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.052126, 21.370234, 5.441125>,  <7.773136, 21.033115, 4.747919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.052126, 21.370234, 5.441125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.032470, 20.974823, 5.498262>,  <8.020676, 20.737577, 5.532544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.032470, 20.974823, 5.498262>,  <8.052126, 21.370234, 5.441125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.032470, 20.974823, 5.498262> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967434, -0.011555, 0.252858,
		-0.248306, 0.150616, 0.956901,
		-0.049142, -0.988525, 0.142842,
		8.017727, 20.678265, 5.541114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.285306, 21.239534, 6.071426>,  <8.052126, 21.370234, 5.441125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.285306, 21.239534, 6.071426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.341842, 20.923416, 5.832947>,  <8.375763, 20.733746, 5.689859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.341842, 20.923416, 5.832947>,  <8.285306, 21.239534, 6.071426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.341842, 20.923416, 5.832947> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.968456, -0.014464, 0.248764,
		-0.205221, -0.612553, 0.763324,
		0.141340, -0.790297, -0.596199,
		8.384244, 20.686327, 5.654087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.614803, 20.821718, 6.358704>,  <8.285306, 21.239534, 6.071426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.614803, 20.821718, 6.358704> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250703, 20.777153, 6.199190>,  <7.032243, 20.750414, 6.103481>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.250703, 20.777153, 6.199190>,  <7.614803, 20.821718, 6.358704>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.250703, 20.777153, 6.199190> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229634, 0.937266, 0.262298,
		0.344545, 0.330332, -0.878731,
		-0.910251, -0.111413, -0.398786,
		6.977628, 20.743729, 6.079554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.147889, 20.251268, 5.999155>,  <7.614803, 20.821718, 6.358704>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.147889, 20.251268, 5.999155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.822278, 20.337450, 6.214909>,  <6.626911, 20.389158, 6.344361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.822278, 20.337450, 6.214909>,  <7.147889, 20.251268, 5.999155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.822278, 20.337450, 6.214909> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178303, -0.976511, 0.120971,
		0.552780, 0.002300, 0.833324,
		-0.814029, 0.215454, 0.539385,
		6.578069, 20.402086, 6.376724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.340664, 20.199577, 6.739020>,  <7.147889, 20.251268, 5.999155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.340664, 20.199577, 6.739020> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.975793, 20.107058, 6.603708>,  <6.756870, 20.051546, 6.522521>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.975793, 20.107058, 6.603708>,  <7.340664, 20.199577, 6.739020>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.975793, 20.107058, 6.603708> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166209, -0.963358, 0.210511,
		-0.374575, 0.135799, 0.917198,
		-0.912178, -0.231299, -0.338279,
		6.702139, 20.037668, 6.502224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.142833, 19.511015, 6.924835>,  <7.340664, 20.199577, 6.739020>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.142833, 19.511015, 6.924835> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.847156, 19.565510, 6.661006>,  <6.669750, 19.598206, 6.502709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.847156, 19.565510, 6.661006>,  <7.142833, 19.511015, 6.924835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.847156, 19.565510, 6.661006> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174260, -0.984666, -0.008089,
		-0.650559, 0.108958, 0.751598,
		-0.739192, 0.136236, -0.659571,
		6.625398, 19.606380, 6.463135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.390064, 19.212769, 7.112628>,  <7.142833, 19.511015, 6.924835>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.390064, 19.212769, 7.112628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.467734, 19.229481, 6.720598>,  <6.514336, 19.239508, 6.485379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.467734, 19.229481, 6.720598>,  <6.390064, 19.212769, 7.112628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.467734, 19.229481, 6.720598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400697, -0.908564, -0.118121,
		-0.895398, 0.415650, -0.159679,
		0.194176, 0.041782, -0.980076,
		6.525987, 19.242016, 6.426575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.059561, 19.661156, 7.607750>,  <6.390064, 19.212769, 7.112628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.059561, 19.661156, 7.607750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.887456, 20.021069, 7.578730>,  <5.784193, 20.237017, 7.561318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.887456, 20.021069, 7.578730>,  <6.059561, 19.661156, 7.607750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.887456, 20.021069, 7.578730> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591477, -0.220294, 0.775646,
		0.681931, 0.376643, 0.626985,
		-0.430262, 0.899784, -0.072550,
		5.758378, 20.291004, 7.556965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.094170, 19.982847, 8.134094>,  <6.059561, 19.661156, 7.607750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.094170, 19.982847, 8.134094> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.743876, 20.109085, 7.987951>,  <5.533700, 20.184828, 7.900265>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.743876, 20.109085, 7.987951>,  <6.094170, 19.982847, 8.134094>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.743876, 20.109085, 7.987951> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470776, -0.390430, 0.791161,
		0.107040, 0.864849, 0.490488,
		-0.875735, 0.315596, -0.365358,
		5.481155, 20.203764, 7.878344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.806216, 20.068626, 8.732015>,  <6.094170, 19.982847, 8.134094>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.806216, 20.068626, 8.732015> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.510851, 20.079781, 8.462505>,  <5.333632, 20.086473, 8.300799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.510851, 20.079781, 8.462505>,  <5.806216, 20.068626, 8.732015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.510851, 20.079781, 8.462505> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648295, -0.304407, 0.697890,
		-0.185642, 0.952134, 0.242855,
		-0.738411, 0.027884, -0.673774,
		5.289328, 20.088146, 8.260373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.321115, 20.250404, 9.155054>,  <5.806216, 20.068626, 8.732015>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.321115, 20.250404, 9.155054> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129545, 20.129387, 8.825424>,  <5.014603, 20.056776, 8.627646>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.129545, 20.129387, 8.825424>,  <5.321115, 20.250404, 9.155054>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.129545, 20.129387, 8.825424> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631218, -0.533705, 0.562782,
		-0.610079, 0.789700, 0.064633,
		-0.478924, -0.302544, -0.824075,
		4.985868, 20.038624, 8.578201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.595445, 20.164011, 9.399166>,  <5.321115, 20.250404, 9.155054>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.595445, 20.164011, 9.399166> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.585625, 19.960869, 9.054729>,  <4.579733, 19.838984, 8.848067>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.585625, 19.960869, 9.054729>,  <4.595445, 20.164011, 9.399166>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.585625, 19.960869, 9.054729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606543, -0.677132, 0.416652,
		-0.794672, 0.532518, -0.291413,
		-0.024550, -0.507856, -0.861092,
		4.578260, 19.808512, 8.796402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.881349, 20.095028, 9.220072>,  <4.595445, 20.164011, 9.399166>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.881349, 20.095028, 9.220072> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.085793, 19.793579, 9.054750>,  <4.208459, 19.612709, 8.955558>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.085793, 19.793579, 9.054750>,  <3.881349, 20.095028, 9.220072>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.085793, 19.793579, 9.054750> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.554740, -0.656529, 0.511109,
		-0.656529, -0.031957, -0.753623,
		-0.511109, 0.753623, 0.413303,
		4.239126, 19.567492, 8.930759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.355899, 19.694334, 9.150248>,  <3.881349, 20.095028, 9.220072>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.355899, 19.694334, 9.150248> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.683815, 19.467941, 9.115357>,  <3.880565, 19.332106, 9.094423>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.683815, 19.467941, 9.115357>,  <3.355899, 19.694334, 9.150248>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.683815, 19.467941, 9.115357> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440040, -0.720063, 0.536539,
		-0.366478, -0.401467, -0.839355,
		0.819792, -0.565980, -0.087226,
		3.929753, 19.298147, 9.089190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.186871, 18.921761, 8.903377>,  <3.355899, 19.694334, 9.150248>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.186871, 18.921761, 8.903377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.533641, 18.918093, 9.102719>,  <3.741702, 18.915892, 9.222324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.533641, 18.918093, 9.102719>,  <3.186871, 18.921761, 8.903377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.533641, 18.918093, 9.102719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364584, -0.693446, 0.621459,
		0.339885, -0.720451, -0.604507,
		0.866924, -0.009169, 0.498356,
		3.793718, 18.915342, 9.252226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.435570, 18.226250, 8.871402>,  <3.186871, 18.921761, 8.903377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.435570, 18.226250, 8.871402> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.629059, 18.377176, 9.187286>,  <3.745153, 18.467731, 9.376818>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.629059, 18.377176, 9.187286>,  <3.435570, 18.226250, 8.871402>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.629059, 18.377176, 9.187286> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345558, -0.746660, 0.568409,
		0.804115, -0.547844, -0.230793,
		0.483723, 0.377315, 0.789712,
		3.774176, 18.490370, 9.424200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.929715, 17.688162, 9.096579>,  <3.435570, 18.226250, 8.871402>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.929715, 17.688162, 9.096579> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.848785, 17.932358, 9.402878>,  <3.800227, 18.078875, 9.586657>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.848785, 17.932358, 9.402878>,  <3.929715, 17.688162, 9.096579>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.848785, 17.932358, 9.402878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044215, -0.775427, 0.629888,
		0.978319, 0.161300, 0.129896,
		-0.202326, 0.610488, 0.765747,
		3.788087, 18.115505, 9.632602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.381505, 17.341393, 9.680267>,  <3.929715, 17.688162, 9.096579>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.381505, 17.341393, 9.680267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.154664, 17.614990, 9.863808>,  <4.018559, 17.779148, 9.973931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.154664, 17.614990, 9.863808>,  <4.381505, 17.341393, 9.680267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.154664, 17.614990, 9.863808> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093703, -0.499901, 0.860999,
		0.818298, 0.531272, 0.219404,
		-0.567105, 0.683995, 0.458850,
		3.984532, 17.820189, 10.001463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.643216, 17.366642, 10.313263>,  <4.381505, 17.341393, 9.680267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.643216, 17.366642, 10.313263> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.285323, 17.533772, 10.376349>,  <4.070587, 17.634048, 10.414202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.285323, 17.533772, 10.376349>,  <4.643216, 17.366642, 10.313263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.285323, 17.533772, 10.376349> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069482, -0.218615, 0.973334,
		0.441161, 0.881834, 0.166571,
		-0.894734, 0.417823, 0.157716,
		4.016902, 17.659119, 10.423664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.714798, 17.864391, 10.847274>,  <4.643216, 17.366642, 10.313263>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.714798, 17.864391, 10.847274> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.336077, 17.735704, 10.850412>,  <4.108844, 17.658493, 10.852296>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.336077, 17.735704, 10.850412>,  <4.714798, 17.864391, 10.847274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.336077, 17.735704, 10.850412> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.091394, -0.245432, 0.965096,
		-0.308560, 0.914474, 0.261779,
		-0.946804, -0.321715, 0.007846,
		4.052035, 17.639191, 10.852766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.292637, 18.239702, 11.413665>,  <4.714798, 17.864391, 10.847274>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.292637, 18.239702, 11.413665> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.082777, 17.912535, 11.319221>,  <3.956860, 17.716234, 11.262555>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.082777, 17.912535, 11.319221>,  <4.292637, 18.239702, 11.413665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.082777, 17.912535, 11.319221> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007869, -0.272674, 0.962074,
		-0.851281, 0.506611, 0.136623,
		-0.524651, -0.817921, -0.236109,
		3.925381, 17.667158, 11.248388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.076900, 18.091272, 12.073012>,  <4.292637, 18.239702, 11.413665>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.076900, 18.091272, 12.073012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.000113, 17.771578, 11.845199>,  <3.954040, 17.579762, 11.708510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.000113, 17.771578, 11.845199>,  <4.076900, 18.091272, 12.073012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.000113, 17.771578, 11.845199> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141873, -0.596833, 0.789723,
		-0.971092, 0.070800, 0.227963,
		-0.191968, -0.799236, -0.569535,
		3.942522, 17.531807, 11.674338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.417160, 17.779369, 12.315970>,  <4.076900, 18.091272, 12.073012>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.417160, 17.779369, 12.315970> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.587923, 17.475088, 12.120388>,  <3.690381, 17.292519, 12.003038>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.587923, 17.475088, 12.120388>,  <3.417160, 17.779369, 12.315970>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.587923, 17.475088, 12.120388> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146518, -0.475373, 0.867498,
		-0.892347, -0.441982, -0.091483,
		0.426907, -0.760705, -0.488956,
		3.715996, 17.246876, 11.973701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.072189, 17.176624, 12.526183>,  <3.417160, 17.779369, 12.315970>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.072189, 17.176624, 12.526183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.442767, 17.082760, 12.408451>,  <3.665114, 17.026442, 12.337811>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.442767, 17.082760, 12.408451>,  <3.072189, 17.176624, 12.526183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.442767, 17.082760, 12.408451> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105253, -0.589232, 0.801079,
		-0.361412, -0.773136, -0.521193,
		0.926447, -0.234662, -0.294330,
		3.720701, 17.012362, 12.320152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.067172, 16.566442, 12.701553>,  <3.072189, 17.176624, 12.526183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.067172, 16.566442, 12.701553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.460744, 16.613127, 12.647501>,  <3.696887, 16.641138, 12.615069>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.460744, 16.613127, 12.647501>,  <3.067172, 16.566442, 12.701553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.460744, 16.613127, 12.647501> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178498, -0.623945, 0.760810,
		0.004481, -0.772704, -0.634751,
		0.983930, 0.116711, -0.135131,
		3.755923, 16.648140, 12.606961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.348383, 15.909286, 12.726939>,  <3.067172, 16.566442, 12.701553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.348383, 15.909286, 12.726939> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.663229, 16.146421, 12.795049>,  <3.852137, 16.288702, 12.835915>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<3.663229, 16.146421, 12.795049>,  <3.348383, 15.909286, 12.726939>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<3.663229, 16.146421, 12.795049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305413, -0.614438, 0.727454,
		0.535884, -0.520586, -0.664694,
		0.787115, 0.592837, 0.170274,
		3.899364, 16.324272, 12.846131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.942679, 15.459551, 12.731466>,  <3.348383, 15.909286, 12.726939>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.942679, 15.459551, 12.731466> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.069060, 15.800596, 12.897948>,  <4.144888, 16.005224, 12.997837>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.069060, 15.800596, 12.897948>,  <3.942679, 15.459551, 12.731466>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.069060, 15.800596, 12.897948> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282098, -0.503257, 0.816795,
		0.905867, -0.140656, -0.399525,
		0.315951, 0.852613, 0.416205,
		4.163845, 16.056379, 13.022810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.531961, 15.228095, 13.098332>,  <3.942679, 15.459551, 12.731466>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.531961, 15.228095, 13.098332> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.406745, 15.570860, 13.262140>,  <4.331616, 15.776519, 13.360425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.406745, 15.570860, 13.262140>,  <4.531961, 15.228095, 13.098332>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.406745, 15.570860, 13.262140> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379512, -0.282406, 0.881032,
		0.870619, 0.431216, -0.236804,
		-0.313040, 0.856913, 0.409520,
		4.312833, 15.827933, 13.384996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.129823, 15.477933, 13.514268>,  <4.531961, 15.228095, 13.098332>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.129823, 15.477933, 13.514268> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.785052, 15.628997, 13.649594>,  <4.578190, 15.719635, 13.730790>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<4.785052, 15.628997, 13.649594>,  <5.129823, 15.477933, 13.514268>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<4.785052, 15.628997, 13.649594> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191634, -0.375109, 0.906956,
		0.469425, 0.846562, 0.250944,
		-0.861926, 0.377659, 0.338316,
		4.526474, 15.742294, 13.751089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.214891, 15.683475, 12.684359>,  <5.129823, 15.477933, 13.514268>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.214891, 15.683475, 12.684359> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.482947, 15.466147, 12.482084>,  <5.643780, 15.335751, 12.360720>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.482947, 15.466147, 12.482084>,  <5.214891, 15.683475, 12.684359>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.482947, 15.466147, 12.482084> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484441, 0.836345, -0.256601,
		0.562344, -0.073017, 0.823673,
		0.670139, -0.543319, -0.505686,
		5.683989, 15.303152, 12.330379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.771704, 15.947509, 12.930907>,  <5.214891, 15.683475, 12.684359>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.771704, 15.947509, 12.930907> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.896115, 15.772965, 12.593184>,  <5.970762, 15.668240, 12.390551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<5.896115, 15.772965, 12.593184>,  <5.771704, 15.947509, 12.930907>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<5.896115, 15.772965, 12.593184> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642558, 0.751114, -0.151487,
		0.700272, -0.495399, 0.514002,
		0.311028, -0.436358, -0.844306,
		5.989424, 15.642058, 12.339892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.491928, 16.001385, 12.945893>,  <5.771704, 15.947509, 12.930907>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.491928, 16.001385, 12.945893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.460242, 15.926529, 12.554239>,  <6.441231, 15.881616, 12.319247>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.460242, 15.926529, 12.554239>,  <6.491928, 16.001385, 12.945893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.460242, 15.926529, 12.554239> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592134, 0.781329, -0.197237,
		0.801937, -0.595402, 0.048919,
		-0.079214, -0.187138, -0.979135,
		6.436478, 15.870388, 12.260499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.109399, 16.233402, 12.667196>,  <6.491928, 16.001385, 12.945893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.109399, 16.233402, 12.667196> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886164, 16.218737, 12.335608>,  <6.752223, 16.209936, 12.136655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.886164, 16.218737, 12.335608>,  <7.109399, 16.233402, 12.667196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.886164, 16.218737, 12.335608> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554559, 0.726667, -0.405487,
		0.617252, -0.686011, -0.385212,
		-0.558089, -0.036664, -0.828970,
		6.718737, 16.207737, 12.086916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.531072, 16.506693, 12.232516>,  <7.109399, 16.233402, 12.667196>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.531072, 16.506693, 12.232516> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.178459, 16.525146, 12.044570>,  <6.966891, 16.536219, 11.931803>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.178459, 16.525146, 12.044570>,  <7.531072, 16.506693, 12.232516>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.178459, 16.525146, 12.044570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252751, 0.886704, -0.387134,
		0.398771, -0.460029, -0.793319,
		-0.881532, 0.046134, -0.469865,
		6.913999, 16.538986, 11.903610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.666477, 16.535433, 11.478162>,  <7.531072, 16.506693, 12.232516>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.666477, 16.535433, 11.478162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.303439, 16.686920, 11.550654>,  <7.085616, 16.777813, 11.594150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.303439, 16.686920, 11.550654>,  <7.666477, 16.535433, 11.478162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.303439, 16.686920, 11.550654> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320612, 0.903877, -0.283221,
		-0.271071, -0.198945, -0.941776,
		-0.907595, 0.378718, 0.181231,
		7.031160, 16.800535, 11.605023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.440585, 16.919266, 10.915562>,  <7.666477, 16.535433, 11.478162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.440585, 16.919266, 10.915562> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.214966, 17.083115, 11.202353>,  <7.079594, 17.181423, 11.374429>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.214966, 17.083115, 11.202353>,  <7.440585, 16.919266, 10.915562>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.214966, 17.083115, 11.202353> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319735, 0.908895, -0.267729,
		-0.761327, 0.078232, -0.643631,
		-0.564048, 0.409621, 0.716980,
		7.045752, 17.206001, 11.417448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.151925, 17.480782, 10.538426>,  <7.440585, 16.919266, 10.915562>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.151925, 17.480782, 10.538426> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.079813, 17.562614, 10.923268>,  <7.036545, 17.611713, 11.154173>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.079813, 17.562614, 10.923268>,  <7.151925, 17.480782, 10.538426>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.079813, 17.562614, 10.923268> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059799, 0.978601, -0.196886,
		-0.981796, 0.022038, -0.188657,
		-0.180281, 0.204583, 0.962104,
		7.025728, 17.623989, 11.211900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.609727, 17.877661, 10.540477>,  <7.151925, 17.480782, 10.538426>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.609727, 17.877661, 10.540477> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.788247, 17.960928, 10.888611>,  <6.895358, 18.010889, 11.097491>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.788247, 17.960928, 10.888611>,  <6.609727, 17.877661, 10.540477>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.788247, 17.960928, 10.888611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063330, 0.977476, -0.201322,
		-0.892640, 0.034731, 0.449429,
		0.446298, 0.208170, 0.870335,
		6.922136, 18.023378, 11.149712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.326440, 18.513515, 10.720202>,  <6.609727, 17.877661, 10.540477>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.326440, 18.513515, 10.720202> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.638518, 18.513912, 10.970416>,  <6.825765, 18.514151, 11.120544>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.638518, 18.513912, 10.970416>,  <6.326440, 18.513515, 10.720202>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.638518, 18.513912, 10.970416> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096941, 0.987726, -0.122473,
		-0.617978, 0.156193, 0.770524,
		0.780196, 0.000990, 0.625535,
		6.872577, 18.514210, 11.158076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.218456, 19.074638, 11.079844>,  <6.326440, 18.513515, 10.720202>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.218456, 19.074638, 11.079844> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.606074, 18.986732, 11.124842>,  <6.838645, 18.933989, 11.151841>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.606074, 18.986732, 11.124842>,  <6.218456, 19.074638, 11.079844>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.606074, 18.986732, 11.124842> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245927, 0.899355, -0.361498,
		-0.021730, 0.377974, 0.925561,
		0.969045, -0.219765, 0.112496,
		6.896788, 18.920803, 11.158590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.507747, 19.560562, 11.527552>,  <6.218456, 19.074638, 11.079844>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.507747, 19.560562, 11.527552> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.817153, 19.407127, 11.325747>,  <7.002798, 19.315067, 11.204665>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<6.817153, 19.407127, 11.325747>,  <6.507747, 19.560562, 11.527552>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<6.817153, 19.407127, 11.325747> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.323455, 0.923497, -0.206227,
		0.545021, -0.003667, 0.838415,
		0.773518, -0.383587, -0.504511,
		7.049209, 19.292051, 11.174394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.127258, 19.974266, 11.724269>,  <6.507747, 19.560562, 11.527552>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.127258, 19.974266, 11.724269> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.214044, 19.790281, 11.379860>,  <7.266115, 19.679890, 11.173214>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.214044, 19.790281, 11.379860>,  <7.127258, 19.974266, 11.724269>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.214044, 19.790281, 11.379860> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241257, 0.879937, -0.409274,
		0.945897, -0.118931, 0.301884,
		0.216964, -0.459963, -0.861023,
		7.279133, 19.652292, 11.121553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.682839, 20.359522, 11.532625>,  <7.127258, 19.974266, 11.724269>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.682839, 20.359522, 11.532625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.538322, 20.179909, 11.205740>,  <7.451612, 20.072142, 11.009609>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.538322, 20.179909, 11.205740>,  <7.682839, 20.359522, 11.532625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.538322, 20.179909, 11.205740> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044752, 0.867052, -0.496203,
		0.931378, -0.215847, -0.293165,
		-0.361293, -0.449033, -0.817213,
		7.429934, 20.045198, 10.960576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.258804, 20.461517, 11.055361>,  <7.682839, 20.359522, 11.532625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.258804, 20.461517, 11.055361> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.904005, 20.405867, 10.879235>,  <7.691125, 20.372477, 10.773560>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.904005, 20.405867, 10.879235>,  <8.258804, 20.461517, 11.055361>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.904005, 20.405867, 10.879235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150687, 0.814127, -0.560794,
		0.436492, -0.563774, -0.701166,
		-0.887000, -0.139126, -0.440314,
		7.637905, 20.364128, 10.747141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.411212, 20.634579, 10.360777>,  <8.258804, 20.461517, 11.055361>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.411212, 20.634579, 10.360777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.014935, 20.667898, 10.403833>,  <7.777168, 20.687889, 10.429667>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<8.014935, 20.667898, 10.403833>,  <8.411212, 20.634579, 10.360777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<8.014935, 20.667898, 10.403833> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006721, 0.819833, -0.572563,
		-0.135940, -0.566511, -0.812764,
		-0.990694, 0.083297, 0.107641,
		7.717726, 20.692886, 10.436126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.221119, 20.623802, 9.712625>,  <8.411212, 20.634579, 10.360777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.221119, 20.623802, 9.712625> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.918891, 20.778692, 9.923970>,  <7.737554, 20.871626, 10.050777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.918891, 20.778692, 9.923970>,  <8.221119, 20.623802, 9.712625>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.918891, 20.778692, 9.923970> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015515, 0.816931, -0.576526,
		-0.654883, -0.427409, -0.623257,
		-0.755571, 0.387227, 0.528363,
		7.692220, 20.894861, 10.082479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.861452, 20.902897, 9.198661>,  <8.221119, 20.623802, 9.712625>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.861452, 20.902897, 9.198661> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.737216, 21.092472, 9.528247>,  <7.662673, 21.206217, 9.725998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.737216, 21.092472, 9.528247>,  <7.861452, 20.902897, 9.198661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.737216, 21.092472, 9.528247> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149904, 0.880409, -0.449898,
		-0.938649, -0.016219, -0.344493,
		-0.310592, 0.473937, 0.823964,
		7.644038, 21.234653, 9.775436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.409851, 21.369841, 8.924060>,  <7.861452, 20.902897, 9.198661>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.409851, 21.369841, 8.924060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.535284, 21.500351, 9.280758>,  <7.610543, 21.578657, 9.494777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.535284, 21.500351, 9.280758>,  <7.409851, 21.369841, 8.924060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.535284, 21.500351, 9.280758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142094, 0.912416, -0.383805,
		-0.938869, 0.247066, 0.239756,
		0.313582, 0.326275, 0.891746,
		7.629358, 21.598234, 9.548282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<7.021176, 22.052931, 9.031212>,  <7.409851, 21.369841, 8.924060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<7.021176, 22.052931, 9.031212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.353753, 22.046896, 9.253375>,  <7.553298, 22.043276, 9.386673>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.353753, 22.046896, 9.253375>,  <7.021176, 22.052931, 9.031212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.353753, 22.046896, 9.253375> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116027, 0.982306, -0.147009,
		-0.543364, 0.186672, 0.818480,
		0.831441, -0.015087, 0.555409,
		7.603185, 22.042370, 9.419997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<6.981343, 22.599623, 9.629859>,  <7.021176, 22.052931, 9.031212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<6.981343, 22.599623, 9.629859> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.353283, 22.532169, 9.499051>,  <7.576447, 22.491697, 9.420567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<7.353283, 22.532169, 9.499051>,  <6.981343, 22.599623, 9.629859>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<7.353283, 22.532169, 9.499051> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174300, 0.984618, -0.012132,
		0.324035, -0.045718, 0.944940,
		0.929850, -0.168634, -0.327019,
		7.632238, 22.481579, 9.400946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<18.319407, 17.113308, 21.517813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.002413, 16.986538, 21.726246>,  <17.812218, 16.910475, 21.851307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.002413, 16.986538, 21.726246>,  <18.319407, 17.113308, 21.517813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.002413, 16.986538, 21.726246> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497387, 0.158606, 0.852907,
		-0.352956, 0.935094, 0.031943,
		-0.792482, -0.316927, 0.521085,
		17.764668, 16.891460, 21.882572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.273260, 17.607306, 22.110029>,  <18.319407, 17.113308, 21.517813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.273260, 17.607306, 22.110029> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.046928, 17.291456, 22.204969>,  <17.911129, 17.101946, 22.261932>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.046928, 17.291456, 22.204969>,  <18.273260, 17.607306, 22.110029>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.046928, 17.291456, 22.204969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.229371, 0.125756, 0.965181,
		-0.791978, 0.600566, 0.109961,
		-0.565827, -0.789623, 0.237349,
		17.877180, 17.054569, 22.276175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.851425, 17.916620, 22.700623>,  <18.273260, 17.607306, 22.110029>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.851425, 17.916620, 22.700623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.885450, 17.518126, 22.707247>,  <17.905867, 17.279028, 22.711222>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.885450, 17.518126, 22.707247>,  <17.851425, 17.916620, 22.700623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.885450, 17.518126, 22.707247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398983, 0.049290, 0.915633,
		-0.913004, -0.071280, 0.401675,
		0.085065, -0.996238, 0.016563,
		17.910971, 17.219254, 22.712215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.522448, 17.793482, 23.290882>,  <17.851425, 17.916620, 22.700623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.522448, 17.793482, 23.290882> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.736675, 17.469711, 23.194551>,  <17.865211, 17.275450, 23.136753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.736675, 17.469711, 23.194551>,  <17.522448, 17.793482, 23.290882>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.736675, 17.469711, 23.194551> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246509, -0.122913, 0.961315,
		-0.807713, -0.574216, 0.133702,
		0.535568, -0.809425, -0.240828,
		17.897346, 17.226883, 23.122303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.383606, 17.260080, 23.693579>,  <17.522448, 17.793482, 23.290882>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.383606, 17.260080, 23.693579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.757832, 17.182735, 23.575373>,  <17.982367, 17.136328, 23.504450>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.757832, 17.182735, 23.575373>,  <17.383606, 17.260080, 23.693579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.757832, 17.182735, 23.575373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269616, -0.149369, 0.951313,
		-0.228092, -0.969690, -0.087610,
		0.935565, -0.193366, -0.295514,
		18.038502, 17.124727, 23.486719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.592993, 16.848232, 24.200012>,  <17.383606, 17.260080, 23.693579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.592993, 16.848232, 24.200012> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.944042, 16.942278, 24.032919>,  <18.154673, 16.998705, 23.932663>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.944042, 16.942278, 24.032919>,  <17.592993, 16.848232, 24.200012>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.944042, 16.942278, 24.032919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461975, -0.182351, 0.867944,
		0.127891, -0.954709, -0.268652,
		0.877623, 0.235113, -0.417731,
		18.207329, 17.012812, 23.907600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.086153, 16.530928, 24.476971>,  <17.592993, 16.848232, 24.200012>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.086153, 16.530928, 24.476971> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.343838, 16.797344, 24.326567>,  <18.498447, 16.957193, 24.236324>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.343838, 16.797344, 24.326567>,  <18.086153, 16.530928, 24.476971>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.343838, 16.797344, 24.326567> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558047, -0.073115, 0.826582,
		0.523046, -0.742323, -0.418784,
		0.644210, 0.666041, -0.376008,
		18.537102, 16.997156, 24.213764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.840755, 16.349239, 24.512659>,  <18.086153, 16.530928, 24.476971>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.840755, 16.349239, 24.512659> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.844599, 16.749107, 24.503092>,  <18.846905, 16.989027, 24.497353>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.844599, 16.749107, 24.503092>,  <18.840755, 16.349239, 24.512659>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.844599, 16.749107, 24.503092> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524657, 0.015321, 0.851176,
		0.851260, -0.020727, -0.524335,
		0.009609, 0.999668, -0.023917,
		18.847481, 17.049007, 24.495916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.531898, 16.464975, 24.770395>,  <18.840755, 16.349239, 24.512659>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.531898, 16.464975, 24.770395> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.308826, 16.796806, 24.781651>,  <19.174984, 16.995905, 24.788404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.308826, 16.796806, 24.781651>,  <19.531898, 16.464975, 24.770395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.308826, 16.796806, 24.781651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464050, 0.283490, 0.839221,
		0.688223, 0.481074, -0.543063,
		-0.557680, 0.829579, 0.028138,
		19.141523, 17.045681, 24.790092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.028208, 16.985725, 24.947386>,  <19.531898, 16.464975, 24.770395>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.028208, 16.985725, 24.947386> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.675406, 17.146885, 25.045149>,  <19.463724, 17.243582, 25.103807>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.675406, 17.146885, 25.045149>,  <20.028208, 16.985725, 24.947386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.675406, 17.146885, 25.045149> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408836, 0.396318, 0.822061,
		0.234345, 0.824987, -0.514275,
		-0.882006, 0.402901, 0.244409,
		19.410803, 17.267756, 25.118471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.222971, 17.556200, 25.244543>,  <20.028208, 16.985725, 24.947386>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.222971, 17.556200, 25.244543> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.852161, 17.497921, 25.382759>,  <19.629675, 17.462954, 25.465689>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.852161, 17.497921, 25.382759>,  <20.222971, 17.556200, 25.244543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.852161, 17.497921, 25.382759> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269397, 0.382246, 0.883919,
		-0.260868, 0.912502, -0.315100,
		-0.927024, -0.145699, 0.345541,
		19.574055, 17.454212, 25.486422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<20.094166, 18.087030, 25.785801>,  <20.222971, 17.556200, 25.244543>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<20.094166, 18.087030, 25.785801> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.813854, 17.813936, 25.868538>,  <19.645668, 17.650080, 25.918180>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.813854, 17.813936, 25.868538>,  <20.094166, 18.087030, 25.785801>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.813854, 17.813936, 25.868538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257502, 0.028313, 0.965863,
		-0.665283, 0.730119, 0.155964,
		-0.700779, -0.682733, 0.206844,
		19.603621, 17.609116, 25.930592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.890842, 18.322565, 26.397007>,  <20.094166, 18.087030, 25.785801>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.890842, 18.322565, 26.397007> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.802097, 17.932852, 26.381245>,  <19.748850, 17.699024, 26.371788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.802097, 17.932852, 26.381245>,  <19.890842, 18.322565, 26.397007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.802097, 17.932852, 26.381245> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273773, -0.101027, 0.956474,
		-0.935856, 0.201418, 0.289146,
		-0.221863, -0.974281, -0.039404,
		19.735538, 17.640568, 26.369423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.629324, 18.286375, 27.027908>,  <19.890842, 18.322565, 26.397007>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.629324, 18.286375, 27.027908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.788370, 17.940529, 26.905046>,  <19.883797, 17.733021, 26.831329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.788370, 17.940529, 26.905046>,  <19.629324, 18.286375, 27.027908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.788370, 17.940529, 26.905046> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424709, -0.123309, 0.896893,
		-0.813342, -0.487069, 0.318180,
		0.397614, -0.864615, -0.307155,
		19.907654, 17.681145, 26.812901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.811289, 18.994520, 27.027622>,  <19.629324, 18.286375, 27.027908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.811289, 18.994520, 27.027622> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.726711, 19.373240, 27.124674>,  <19.675964, 19.600471, 27.182905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.726711, 19.373240, 27.124674>,  <19.811289, 18.994520, 27.027622>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.726711, 19.373240, 27.124674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193020, 0.202901, -0.959987,
		-0.958141, -0.249814, 0.139849,
		-0.211443, 0.946796, 0.242627,
		19.663279, 19.657278, 27.197462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.100039, 19.114418, 26.882706>,  <19.811289, 18.994520, 27.027622>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.100039, 19.114418, 26.882706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.259266, 19.481052, 26.867670>,  <19.354803, 19.701033, 26.858648>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.259266, 19.481052, 26.867670>,  <19.100039, 19.114418, 26.882706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.259266, 19.481052, 26.867670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310985, 0.096286, -0.945525,
		-0.863034, 0.388074, 0.323372,
		0.398070, 0.916584, -0.037587,
		19.378687, 19.756027, 26.856394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.662067, 19.491661, 26.516323>,  <19.100039, 19.114418, 26.882706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.662067, 19.491661, 26.516323> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.980762, 19.732376, 26.494192>,  <19.171980, 19.876806, 26.480913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.980762, 19.732376, 26.494192>,  <18.662067, 19.491661, 26.516323>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.980762, 19.732376, 26.494192> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323064, 0.346764, -0.880559,
		-0.510726, 0.719447, 0.470696,
		0.796736, 0.601790, -0.055326,
		19.219784, 19.912912, 26.477594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.368271, 20.104374, 26.255610>,  <18.662067, 19.491661, 26.516323>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.368271, 20.104374, 26.255610> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.763872, 20.112064, 26.196959>,  <19.001234, 20.116678, 26.161768>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.763872, 20.112064, 26.196959>,  <18.368271, 20.104374, 26.255610>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.763872, 20.112064, 26.196959> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144729, 0.329549, -0.932980,
		0.030384, 0.943943, 0.328708,
		0.989005, 0.019226, -0.146629,
		19.060574, 20.117832, 26.152969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.472746, 20.738039, 25.950291>,  <18.368271, 20.104374, 26.255610>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.472746, 20.738039, 25.950291> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.802246, 20.538216, 25.843050>,  <18.999947, 20.418322, 25.778706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.802246, 20.538216, 25.843050>,  <18.472746, 20.738039, 25.950291>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.802246, 20.538216, 25.843050> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132050, 0.290821, -0.947621,
		0.551364, 0.816004, 0.173597,
		0.823748, -0.499560, -0.268101,
		19.049370, 20.388348, 25.762619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.808800, 21.130438, 25.437420>,  <18.472746, 20.738039, 25.950291>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.808800, 21.130438, 25.437420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.957201, 20.760979, 25.398996>,  <19.046242, 20.539303, 25.375942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.957201, 20.760979, 25.398996>,  <18.808800, 21.130438, 25.437420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.957201, 20.760979, 25.398996> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111027, 0.146818, -0.982913,
		0.921970, 0.353999, 0.157020,
		0.371004, -0.923650, -0.096058,
		19.068502, 20.483883, 25.370178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.243616, 21.198023, 24.907585>,  <18.808800, 21.130438, 25.437420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.243616, 21.198023, 24.907585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.180161, 20.803669, 24.929007>,  <19.142088, 20.567057, 24.941860>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.180161, 20.803669, 24.929007>,  <19.243616, 21.198023, 24.907585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.180161, 20.803669, 24.929007> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145526, -0.030301, -0.988890,
		0.976553, -0.164668, -0.138665,
		-0.158637, -0.985884, 0.053554,
		19.132570, 20.507904, 24.945072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.553665, 20.957726, 24.260777>,  <19.243616, 21.198023, 24.907585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.553665, 20.957726, 24.260777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.271303, 20.704607, 24.388067>,  <19.101887, 20.552736, 24.464441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.271303, 20.704607, 24.388067>,  <19.553665, 20.957726, 24.260777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.271303, 20.704607, 24.388067> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284862, -0.157709, -0.945506,
		0.648500, -0.758087, -0.068932,
		-0.705905, -0.632797, 0.318224,
		19.059532, 20.514769, 24.483534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.637669, 20.277626, 23.951250>,  <19.553665, 20.957726, 24.260777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.637669, 20.277626, 23.951250> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.254147, 20.266520, 24.064329>,  <19.024033, 20.259855, 24.132177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.254147, 20.266520, 24.064329>,  <19.637669, 20.277626, 23.951250>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.254147, 20.266520, 24.064329> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248831, -0.397928, -0.883027,
		0.137010, -0.916996, 0.374628,
		-0.958807, -0.027764, 0.282697,
		18.966505, 20.258190, 24.149137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.346146, 19.604609, 23.725864>,  <19.637669, 20.277626, 23.951250>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.346146, 19.604609, 23.725864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.024199, 19.827116, 23.808569>,  <18.831030, 19.960621, 23.858192>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<19.024199, 19.827116, 23.808569>,  <19.346146, 19.604609, 23.725864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<19.024199, 19.827116, 23.808569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379297, -0.214234, -0.900132,
		-0.456421, -0.802912, 0.383422,
		-0.804869, 0.556269, 0.206761,
		18.782738, 19.993996, 23.870598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.661398, 19.204300, 23.587259>,  <19.346146, 19.604609, 23.725864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.661398, 19.204300, 23.587259> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.548635, 19.587914, 23.576082>,  <18.480978, 19.818083, 23.569376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.548635, 19.587914, 23.576082>,  <18.661398, 19.204300, 23.587259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.548635, 19.587914, 23.576082> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544024, -0.183770, -0.818699,
		-0.790296, -0.215593, 0.573543,
		-0.281906, 0.959035, -0.027945,
		18.464064, 19.875624, 23.567699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.973738, 19.115252, 23.602465>,  <18.661398, 19.204300, 23.587259>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.973738, 19.115252, 23.602465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.055964, 19.469343, 23.435558>,  <18.105299, 19.681799, 23.335415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<18.055964, 19.469343, 23.435558>,  <17.973738, 19.115252, 23.602465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<18.055964, 19.469343, 23.435558> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575835, -0.235341, -0.782961,
		-0.791301, 0.401226, 0.461369,
		0.205565, 0.885230, -0.417266,
		18.117634, 19.734913, 23.310379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.362007, 19.326735, 23.229412>,  <17.973738, 19.115252, 23.602465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.362007, 19.326735, 23.229412> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.637617, 19.574894, 23.079557>,  <17.802982, 19.723789, 22.989645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.637617, 19.574894, 23.079557>,  <17.362007, 19.326735, 23.229412>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.637617, 19.574894, 23.079557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391895, -0.115889, -0.912682,
		-0.609643, 0.775677, 0.163281,
		0.689024, 0.620399, -0.374635,
		17.844324, 19.761013, 22.967167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.952040, 19.746387, 22.813896>,  <17.362007, 19.326735, 23.229412>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.952040, 19.746387, 22.813896> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.319529, 19.797838, 22.664547>,  <17.540022, 19.828709, 22.574938>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<17.319529, 19.797838, 22.664547>,  <16.952040, 19.746387, 22.813896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<17.319529, 19.797838, 22.664547> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362904, -0.097855, -0.926674,
		-0.155733, 0.986853, -0.043222,
		0.918721, 0.128629, -0.373372,
		17.595144, 19.836428, 22.552536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.395615, 20.103004, 23.093290>,  <16.952040, 19.746387, 22.813896>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.395615, 20.103004, 23.093290> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004564, 20.034138, 23.141630>,  <15.769934, 19.992817, 23.170633>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<16.004564, 20.034138, 23.141630>,  <16.395615, 20.103004, 23.093290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<16.004564, 20.034138, 23.141630> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038385, 0.418855, 0.907241,
		-0.206816, 0.891582, -0.402875,
		-0.977626, -0.172168, 0.120850,
		15.711276, 19.982487, 23.177885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.104916, 20.738798, 23.428827>,  <16.395615, 20.103004, 23.093290>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.104916, 20.738798, 23.428827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.875422, 20.417744, 23.494064>,  <15.737724, 20.225111, 23.533207>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.875422, 20.417744, 23.494064>,  <16.104916, 20.738798, 23.428827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.875422, 20.417744, 23.494064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041838, 0.227586, 0.972859,
		-0.817970, 0.551342, -0.164156,
		-0.573738, -0.802637, 0.163091,
		15.703300, 20.176952, 23.542992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.545393, 20.911320, 23.962973>,  <16.104916, 20.738798, 23.428827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.545393, 20.911320, 23.962973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.609567, 20.516502, 23.961662>,  <15.648070, 20.279612, 23.960876>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.609567, 20.516502, 23.961662>,  <15.545393, 20.911320, 23.962973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.609567, 20.516502, 23.961662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102989, -0.020041, 0.994481,
		-0.981659, -0.159211, -0.104869,
		0.160434, -0.987041, -0.003276,
		15.657697, 20.220390, 23.960680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.989687, 20.693539, 24.392946>,  <15.545393, 20.911320, 23.962973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.989687, 20.693539, 24.392946> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.271460, 20.410265, 24.373974>,  <15.440523, 20.240301, 24.362591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.271460, 20.410265, 24.373974>,  <14.989687, 20.693539, 24.392946>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.271460, 20.410265, 24.373974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000435, -0.067257, 0.997736,
		-0.709773, -0.702815, -0.047686,
		0.704431, -0.708187, -0.047432,
		15.482789, 20.197809, 24.359745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.941735, 20.127764, 24.900656>,  <14.989687, 20.693539, 24.392946>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.941735, 20.127764, 24.900656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.319435, 20.041847, 24.800850>,  <15.546055, 19.990297, 24.740967>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.319435, 20.041847, 24.800850>,  <14.941735, 20.127764, 24.900656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.319435, 20.041847, 24.800850> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214457, -0.173755, 0.961154,
		-0.249805, -0.961079, -0.118004,
		0.944249, -0.214794, -0.249514,
		15.602710, 19.977409, 24.725996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.206381, 19.484947, 25.212507>,  <14.941735, 20.127764, 24.900656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.206381, 19.484947, 25.212507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.531000, 19.711065, 25.153404>,  <15.725772, 19.846735, 25.117943>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.531000, 19.711065, 25.153404>,  <15.206381, 19.484947, 25.212507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.531000, 19.711065, 25.153404> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171182, 0.011755, 0.985169,
		0.558647, -0.824806, -0.087228,
		0.811548, 0.565294, -0.147758,
		15.774465, 19.880653, 25.109077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.745030, 19.191624, 25.538286>,  <15.206381, 19.484947, 25.212507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.745030, 19.191624, 25.538286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.876095, 19.568871, 25.515783>,  <15.954734, 19.795219, 25.502281>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.876095, 19.568871, 25.515783>,  <15.745030, 19.191624, 25.538286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.876095, 19.568871, 25.515783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311150, -0.051494, 0.948965,
		0.892089, -0.328444, -0.310324,
		0.327662, 0.943119, -0.056258,
		15.974394, 19.851807, 25.498905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.790533, 18.643309, 26.049706>,  <15.745030, 19.191624, 25.538286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.790533, 18.643309, 26.049706> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.460913, 18.536173, 26.249386>,  <15.263141, 18.471891, 26.369194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.460913, 18.536173, 26.249386>,  <15.790533, 18.643309, 26.049706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.460913, 18.536173, 26.249386> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438782, -0.255625, -0.861467,
		0.358343, -0.928934, 0.093125,
		-0.824051, -0.267839, 0.499201,
		15.213697, 18.455822, 26.399147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.613245, 18.058140, 25.806465>,  <15.790533, 18.643309, 26.049706>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.613245, 18.058140, 25.806465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.268631, 18.181639, 25.967676>,  <15.061862, 18.255737, 26.064404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<15.268631, 18.181639, 25.967676>,  <15.613245, 18.058140, 25.806465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<15.268631, 18.181639, 25.967676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469184, -0.180895, -0.864375,
		-0.194001, -0.933772, 0.300723,
		-0.861528, 0.308784, 0.403017,
		15.010170, 18.274263, 26.088585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.136988, 17.662758, 25.566031>,  <15.613245, 18.058140, 25.806465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.136988, 17.662758, 25.566031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.907315, 17.975039, 25.664677>,  <14.769511, 18.162407, 25.723864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.907315, 17.975039, 25.664677>,  <15.136988, 17.662758, 25.566031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.907315, 17.975039, 25.664677> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575550, -0.170664, -0.799760,
		-0.582287, -0.601146, 0.547326,
		-0.574181, 0.780703, 0.246615,
		14.735061, 18.209249, 25.738661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.447256, 17.306614, 25.532032>,  <15.136988, 17.662758, 25.566031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.447256, 17.306614, 25.532032> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.455502, 17.706169, 25.515083>,  <14.460448, 17.945902, 25.504913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<14.455502, 17.706169, 25.515083>,  <14.447256, 17.306614, 25.532032>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<14.455502, 17.706169, 25.515083> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674633, -0.017383, -0.737948,
		-0.737865, 0.043798, 0.673526,
		0.020613, 0.998889, -0.042374,
		14.461685, 18.005836, 25.502371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.759226, 17.450691, 25.643328>,  <14.447256, 17.306614, 25.532032>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.759226, 17.450691, 25.643328> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.933709, 17.761272, 25.461409>,  <14.038400, 17.947622, 25.352257>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.933709, 17.761272, 25.461409>,  <13.759226, 17.450691, 25.643328>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.933709, 17.761272, 25.461409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.805126, 0.111059, -0.582613,
		-0.401863, 0.620310, 0.673589,
		0.436209, 0.776455, -0.454797,
		14.064571, 17.994209, 25.324970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.231829, 18.018787, 25.481579>,  <13.759226, 17.450691, 25.643328>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.231829, 18.018787, 25.481579> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.533860, 18.062914, 25.223064>,  <13.715079, 18.089390, 25.067955>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.533860, 18.062914, 25.223064>,  <13.231829, 18.018787, 25.481579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.533860, 18.062914, 25.223064> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652419, 0.223918, -0.724023,
		0.064842, 0.968344, 0.241050,
		0.755079, 0.110318, -0.646286,
		13.760384, 18.096010, 25.029179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.931095, 18.316105, 25.036425>,  <13.231829, 18.018787, 25.481579>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.931095, 18.316105, 25.036425> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.265031, 18.254442, 24.825037>,  <13.465393, 18.217445, 24.698204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<13.265031, 18.254442, 24.825037>,  <12.931095, 18.316105, 25.036425>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<13.265031, 18.254442, 24.825037> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508885, 0.150008, -0.847664,
		0.209947, 0.976593, 0.046785,
		0.834841, -0.154156, -0.528467,
		13.515483, 18.208195, 24.666496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<19.498352, 13.609367, 24.769791> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.810940, 13.601208, 25.019234>,  <19.998493, 13.596312, 25.168900>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.810940, 13.601208, 25.019234>,  <19.498352, 13.609367, 24.769791>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.810940, 13.601208, 25.019234> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585963, 0.367377, -0.722275,
		-0.214366, 0.929848, 0.299048,
		0.781470, -0.020400, 0.623610,
		20.045382, 13.595088, 25.206316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.407837, 14.356834, 25.071352>,  <19.498352, 13.609367, 24.769791>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.407837, 14.356834, 25.071352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.147938, 14.496599, 25.341387>,  <18.991999, 14.580458, 25.503408>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<19.147938, 14.496599, 25.341387>,  <19.407837, 14.356834, 25.071352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<19.147938, 14.496599, 25.341387> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179386, 0.792532, -0.582850,
		-0.738682, -0.499806, -0.452264,
		-0.649746, 0.349411, 0.675087,
		18.953014, 14.601422, 25.543913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<19.121063, 15.129495, 25.237785>,  <19.407837, 14.356834, 25.071352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<19.121063, 15.129495, 25.237785> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.741188, 15.133097, 25.363012>,  <18.513264, 15.135258, 25.438148>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.741188, 15.133097, 25.363012>,  <19.121063, 15.129495, 25.237785>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.741188, 15.133097, 25.363012> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302715, 0.230031, -0.924905,
		-0.080344, -0.973142, -0.215731,
		-0.949689, 0.009005, 0.313066,
		18.456282, 15.135798, 25.456932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<18.768581, 14.668177, 24.803734>,  <19.121063, 15.129495, 25.237785>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<18.768581, 14.668177, 24.803734> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.506470, 14.921793, 24.967979>,  <18.349203, 15.073962, 25.066526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<18.506470, 14.921793, 24.967979>,  <18.768581, 14.668177, 24.803734>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<18.506470, 14.921793, 24.967979> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510102, 0.029504, -0.859607,
		-0.557140, -0.772737, 0.304092,
		-0.655279, 0.634040, 0.410613,
		18.309887, 15.112005, 25.091164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.998358, 14.408319, 24.637974>,  <18.768581, 14.668177, 24.803734>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.998358, 14.408319, 24.637974> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.999939, 14.802862, 24.703798>,  <18.000887, 15.039588, 24.743292>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.999939, 14.802862, 24.703798>,  <17.998358, 14.408319, 24.637974>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.999939, 14.802862, 24.703798> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642557, 0.128598, -0.755369,
		-0.766227, -0.102753, 0.634301,
		0.003953, 0.986359, 0.164560,
		18.001125, 15.098770, 24.753166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.392368, 14.495759, 24.325100>,  <17.998358, 14.408319, 24.637974>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.392368, 14.495759, 24.325100> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.491629, 14.858705, 24.460814>,  <17.551184, 15.076472, 24.542242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<17.491629, 14.858705, 24.460814>,  <17.392368, 14.495759, 24.325100>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<17.491629, 14.858705, 24.460814> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592305, 0.419258, -0.688039,
		-0.766549, -0.030222, 0.641475,
		0.248149, 0.907364, 0.339282,
		17.566072, 15.130914, 24.562597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.286411, 14.559375, 25.132463>,  <17.392368, 14.495759, 24.325100>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.286411, 14.559375, 25.132463> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.999374, 14.768425, 25.316605>,  <16.827152, 14.893855, 25.427090>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.999374, 14.768425, 25.316605>,  <17.286411, 14.559375, 25.132463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.999374, 14.768425, 25.316605> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635557, -0.221060, -0.739729,
		-0.284838, -0.823402, 0.490791,
		-0.717589, 0.522629, 0.460353,
		16.784098, 14.925213, 25.454712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619299, 14.075731, 25.290806>,  <17.286411, 14.559375, 25.132463>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619299, 14.075731, 25.290806> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.504498, 14.458220, 25.267937>,  <16.435617, 14.687713, 25.254215>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.504498, 14.458220, 25.267937>,  <16.619299, 14.075731, 25.290806>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.504498, 14.458220, 25.267937> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.758395, -0.263279, -0.596256,
		-0.585206, -0.127767, 0.800755,
		-0.287004, 0.956221, -0.057174,
		16.418396, 14.745086, 25.250784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.825559, 14.063893, 25.322645>,  <16.619299, 14.075731, 25.290806>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.825559, 14.063893, 25.322645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.924784, 14.418449, 25.166298>,  <15.984319, 14.631184, 25.072491>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.924784, 14.418449, 25.166298>,  <15.825559, 14.063893, 25.322645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.924784, 14.418449, 25.166298> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818645, -0.023923, -0.573801,
		-0.517963, 0.462318, 0.719706,
		0.248062, 0.886391, -0.390866,
		15.999202, 14.684367, 25.049038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.157419, 14.397698, 25.289906>,  <15.825559, 14.063893, 25.322645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.157419, 14.397698, 25.289906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.415160, 14.585649, 25.048569>,  <15.569805, 14.698421, 24.903767>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.415160, 14.585649, 25.048569>,  <15.157419, 14.397698, 25.289906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.415160, 14.585649, 25.048569> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669640, -0.034331, -0.741891,
		-0.369312, 0.882063, 0.292528,
		0.644352, 0.469878, -0.603344,
		15.608466, 14.726613, 24.867565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.711485, 14.951903, 25.082983>,  <15.157419, 14.397698, 25.289906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.711485, 14.951903, 25.082983> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.013803, 14.886452, 24.829369>,  <15.195193, 14.847181, 24.677200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.013803, 14.886452, 24.829369>,  <14.711485, 14.951903, 25.082983>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.013803, 14.886452, 24.829369> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644736, -0.016766, -0.764221,
		0.114418, 0.986380, -0.118169,
		0.755794, -0.163628, -0.634036,
		15.240541, 14.837363, 24.639158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.740348, 15.488611, 24.455122>,  <14.711485, 14.951903, 25.082983>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.740348, 15.488611, 24.455122> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.918071, 15.149209, 24.340139>,  <15.024704, 14.945568, 24.271151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.918071, 15.149209, 24.340139>,  <14.740348, 15.488611, 24.455122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.918071, 15.149209, 24.340139> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639877, -0.075994, -0.764710,
		0.627016, 0.523702, -0.576703,
		0.444307, -0.848505, -0.287456,
		15.051363, 14.894657, 24.253902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.096970, 15.640509, 25.009773>,  <14.740348, 15.488611, 24.455122>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.096970, 15.640509, 25.009773> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.734722, 15.553555, 25.155430>,  <13.517373, 15.501384, 25.242825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.734722, 15.553555, 25.155430>,  <14.096970, 15.640509, 25.009773>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.734722, 15.553555, 25.155430> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309373, 0.248662, 0.917854,
		-0.290073, 0.943881, -0.157941,
		-0.905619, -0.217382, 0.364141,
		13.463037, 15.488340, 25.264673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.941918, 16.167208, 25.495682>,  <14.096970, 15.640509, 25.009773>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.941918, 16.167208, 25.495682> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.688309, 15.879465, 25.609200>,  <13.536143, 15.706820, 25.677311>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.688309, 15.879465, 25.609200>,  <13.941918, 16.167208, 25.495682>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.688309, 15.879465, 25.609200> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350124, 0.060184, 0.934768,
		-0.689512, 0.692029, 0.213706,
		-0.634025, -0.719357, 0.283794,
		13.498101, 15.663658, 25.694338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.746111, 16.350014, 26.076080>,  <13.941918, 16.167208, 25.495682>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.746111, 16.350014, 26.076080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.627172, 15.970223, 26.116245>,  <13.555809, 15.742350, 26.140345>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.627172, 15.970223, 26.116245>,  <13.746111, 16.350014, 26.076080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.627172, 15.970223, 26.116245> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394458, -0.026394, 0.918535,
		-0.869475, 0.312731, 0.382376,
		-0.297347, -0.949475, 0.100411,
		13.537969, 15.685381, 26.146368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.413602, 16.213583, 26.796886>,  <13.746111, 16.350014, 26.076080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.413602, 16.213583, 26.796886> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.567441, 15.870490, 26.660429>,  <13.659744, 15.664634, 26.578554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.567441, 15.870490, 26.660429>,  <13.413602, 16.213583, 26.796886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.567441, 15.870490, 26.660429> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456051, -0.144759, 0.878102,
		-0.802561, -0.493294, 0.335496,
		0.384596, -0.857733, -0.341145,
		13.682820, 15.613171, 26.558084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.377502, 15.751249, 27.409115>,  <13.413602, 16.213583, 26.796886>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.377502, 15.751249, 27.409115> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.649978, 15.592451, 27.163065>,  <13.813462, 15.497172, 27.015434>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.649978, 15.592451, 27.163065>,  <13.377502, 15.751249, 27.409115>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.649978, 15.592451, 27.163065> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.509914, -0.345622, 0.787739,
		-0.525330, -0.850259, -0.033000,
		0.681187, -0.396996, -0.615125,
		13.854334, 15.473352, 26.978527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.443368, 15.129792, 27.756861>,  <13.377502, 15.751249, 27.409115>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.443368, 15.129792, 27.756861> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.766519, 15.156837, 27.522676>,  <13.960409, 15.173063, 27.382166>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<13.766519, 15.156837, 27.522676>,  <13.443368, 15.129792, 27.756861>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<13.766519, 15.156837, 27.522676> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588855, -0.051888, 0.806571,
		0.024157, -0.996361, -0.081734,
		0.807877, 0.067614, -0.585459,
		14.008882, 15.177120, 27.347038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.854143, 14.577038, 27.906347>,  <13.443368, 15.129792, 27.756861>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.854143, 14.577038, 27.906347> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.120499, 14.832295, 27.751757>,  <14.280313, 14.985450, 27.659002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.120499, 14.832295, 27.751757>,  <13.854143, 14.577038, 27.906347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.120499, 14.832295, 27.751757> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555347, -0.078068, 0.827946,
		0.498177, -0.765949, -0.406376,
		0.665890, 0.638144, -0.386475,
		14.320266, 15.023739, 27.635815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.591941, 14.306715, 28.055527>,  <13.854143, 14.577038, 27.906347>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.591941, 14.306715, 28.055527> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.658823, 14.695544, 27.989660>,  <14.698953, 14.928842, 27.950140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<14.658823, 14.695544, 27.989660>,  <14.591941, 14.306715, 28.055527>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<14.658823, 14.695544, 27.989660> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739155, -0.013069, 0.673408,
		0.652451, -0.234310, -0.720699,
		0.167205, 0.972074, -0.164665,
		14.708984, 14.987166, 27.940260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.285380, 14.364913, 28.037645>,  <14.591941, 14.306715, 28.055527>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.285380, 14.364913, 28.037645> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.194510, 14.749722, 28.098183>,  <15.139987, 14.980607, 28.134506>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.194510, 14.749722, 28.098183>,  <15.285380, 14.364913, 28.037645>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.194510, 14.749722, 28.098183> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786884, 0.089770, 0.610537,
		0.573764, 0.257791, -0.777393,
		-0.227177, 0.962022, 0.151345,
		15.126356, 15.038328, 28.143587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.879233, 14.661777, 28.054733>,  <15.285380, 14.364913, 28.037645>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.879233, 14.661777, 28.054733> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.672824, 14.961263, 28.221176>,  <15.548978, 15.140954, 28.321041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.672824, 14.961263, 28.221176>,  <15.879233, 14.661777, 28.054733>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.672824, 14.961263, 28.221176> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741816, 0.147730, 0.654129,
		0.428284, 0.646221, -0.631641,
		-0.516025, 0.748715, 0.416107,
		15.518017, 15.185877, 28.346008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.365742, 15.142516, 28.092426>,  <15.879233, 14.661777, 28.054733>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.365742, 15.142516, 28.092426> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.094074, 15.261256, 28.360935>,  <15.931073, 15.332500, 28.522041>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.094074, 15.261256, 28.360935>,  <16.365742, 15.142516, 28.092426>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.094074, 15.261256, 28.360935> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732850, 0.223509, 0.642630,
		0.040730, 0.928398, -0.369348,
		-0.679170, 0.296851, 0.671274,
		15.890324, 15.350311, 28.562317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.718668, 15.686883, 28.317995>,  <16.365742, 15.142516, 28.092426>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.718668, 15.686883, 28.317995> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.427368, 15.622674, 28.584494>,  <16.252588, 15.584148, 28.744392>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.427368, 15.622674, 28.584494>,  <16.718668, 15.686883, 28.317995>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.427368, 15.622674, 28.584494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548261, 0.446817, 0.706940,
		-0.411170, 0.880106, -0.237387,
		-0.728251, -0.160523, 0.666246,
		16.208893, 15.574517, 28.784367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.619030, 16.295422, 28.601089>,  <16.718668, 15.686883, 28.317995>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.619030, 16.295422, 28.601089> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.463978, 16.055929, 28.881451>,  <16.370947, 15.912233, 29.049667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.463978, 16.055929, 28.881451>,  <16.619030, 16.295422, 28.601089>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.463978, 16.055929, 28.881451> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411710, 0.567850, 0.712770,
		-0.824764, 0.564861, 0.026386,
		-0.387632, -0.598731, 0.700901,
		16.347689, 15.876310, 29.091721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.401127, 16.790192, 29.216415>,  <16.619030, 16.295422, 28.601089>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.401127, 16.790192, 29.216415> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.420988, 16.413586, 29.349731>,  <16.432905, 16.187622, 29.429722>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.420988, 16.413586, 29.349731>,  <16.401127, 16.790192, 29.216415>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.420988, 16.413586, 29.349731> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348794, 0.329039, 0.877540,
		-0.935883, 0.072677, 0.344733,
		0.049653, -0.941515, 0.333292,
		16.435884, 16.131130, 29.449718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.945547, 16.994432, 28.586988>,  <16.401127, 16.790192, 29.216415>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.945547, 16.994432, 28.586988> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.106871, 17.353491, 28.658066>,  <16.203665, 17.568926, 28.700712>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.106871, 17.353491, 28.658066>,  <15.945547, 16.994432, 28.586988>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.106871, 17.353491, 28.658066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625465, 0.412167, -0.662504,
		-0.667933, 0.156052, 0.727676,
		0.403309, 0.897645, 0.177695,
		16.227863, 17.622784, 28.711374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.445506, 17.586107, 28.862137>,  <15.945547, 16.994432, 28.586988>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.445506, 17.586107, 28.862137> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.752512, 17.753334, 28.667761>,  <15.936716, 17.853670, 28.551134>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.752512, 17.753334, 28.667761>,  <15.445506, 17.586107, 28.862137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.752512, 17.753334, 28.667761> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627497, 0.335048, -0.702844,
		-0.131022, 0.844371, 0.519491,
		0.767516, 0.418067, -0.485941,
		15.982767, 17.878754, 28.521978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.226043, 18.267729, 28.761955>,  <15.445506, 17.586107, 28.862137>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.226043, 18.267729, 28.761955> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.529099, 18.198948, 28.510111>,  <15.710934, 18.157679, 28.359005>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.529099, 18.198948, 28.510111>,  <15.226043, 18.267729, 28.761955>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.529099, 18.198948, 28.510111> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582731, 0.256240, -0.771210,
		0.293943, 0.951196, 0.093936,
		0.757642, -0.171952, -0.629612,
		15.756392, 18.147362, 28.321228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.093561, 18.737431, 28.246180>,  <15.226043, 18.267729, 28.761955>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.093561, 18.737431, 28.246180> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.380688, 18.511362, 28.083540>,  <15.552963, 18.375721, 27.985956>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.380688, 18.511362, 28.083540>,  <15.093561, 18.737431, 28.246180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.380688, 18.511362, 28.083540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268352, 0.314285, -0.910611,
		0.642438, 0.762763, 0.073934,
		0.717817, -0.565171, -0.406597,
		15.596033, 18.341810, 27.961561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.232636, 19.202412, 27.840769>,  <15.093561, 18.737431, 28.246180>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.232636, 19.202412, 27.840769> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.372148, 18.854080, 27.702198>,  <15.455854, 18.645081, 27.619057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.372148, 18.854080, 27.702198>,  <15.232636, 19.202412, 27.840769>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.372148, 18.854080, 27.702198> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347395, 0.223180, -0.910773,
		0.870443, 0.438004, -0.224681,
		0.348778, -0.870829, -0.346426,
		15.476781, 18.592831, 27.598270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.683915, 19.307043, 27.288616>,  <15.232636, 19.202412, 27.840769>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.683915, 19.307043, 27.288616> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.551236, 18.935413, 27.223141>,  <15.471629, 18.712435, 27.183855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.551236, 18.935413, 27.223141>,  <15.683915, 19.307043, 27.288616>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.551236, 18.935413, 27.223141> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309134, 0.270975, -0.911597,
		0.891298, -0.251773, -0.377091,
		-0.331697, -0.929076, -0.163688,
		15.451727, 18.656691, 27.174034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<15.733426, 19.196102, 26.524183>,  <15.683915, 19.307043, 27.288616>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<15.733426, 19.196102, 26.524183> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.501505, 18.887964, 26.630314>,  <15.362352, 18.703081, 26.693993>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<15.501505, 18.887964, 26.630314>,  <15.733426, 19.196102, 26.524183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<15.501505, 18.887964, 26.630314> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336690, -0.070009, -0.939009,
		0.741935, -0.633774, -0.218776,
		-0.579804, -0.770344, 0.265328,
		15.327564, 18.656860, 26.709911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.218477, 19.270130, 26.067049>,  <15.733426, 19.196102, 26.524183>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.218477, 19.270130, 26.067049> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.181553, 19.651890, 25.953487>,  <16.159399, 19.880945, 25.885351>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.181553, 19.651890, 25.953487>,  <16.218477, 19.270130, 26.067049>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.181553, 19.651890, 25.953487> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239070, 0.298024, 0.924136,
		0.966604, 0.017436, -0.255679,
		-0.092312, 0.954399, -0.283903,
		16.153860, 19.938210, 25.868317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.722153, 19.515175, 26.485807>,  <16.218477, 19.270130, 26.067049>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.722153, 19.515175, 26.485807> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.507113, 19.814837, 26.331015>,  <16.378088, 19.994635, 26.238140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.507113, 19.814837, 26.331015>,  <16.722153, 19.515175, 26.485807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.507113, 19.814837, 26.331015> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357216, 0.618071, 0.700275,
		0.763796, 0.238231, -0.599884,
		-0.537598, 0.749156, -0.386980,
		16.345833, 20.039583, 26.214920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.236584, 20.063293, 26.240139>,  <16.722153, 19.515175, 26.485807>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.236584, 20.063293, 26.240139> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.873409, 20.205996, 26.328115>,  <16.655504, 20.291616, 26.380901>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.873409, 20.205996, 26.328115>,  <17.236584, 20.063293, 26.240139>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.873409, 20.205996, 26.328115> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401749, 0.591409, 0.699166,
		0.119358, 0.723160, -0.680289,
		-0.907938, 0.356757, 0.219939,
		16.601028, 20.313023, 26.394096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<17.266338, 20.919771, 26.507591>,  <17.236584, 20.063293, 26.240139>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<17.266338, 20.919771, 26.507591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.910141, 20.816204, 26.657248>,  <16.696423, 20.754065, 26.747042>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.910141, 20.816204, 26.657248>,  <17.266338, 20.919771, 26.507591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.910141, 20.816204, 26.657248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242594, 0.425486, 0.871843,
		-0.384926, 0.867136, -0.316081,
		-0.890494, -0.258916, 0.374143,
		16.642992, 20.738529, 26.769491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.967260, 21.419792, 26.854597>,  <17.266338, 20.919771, 26.507591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.967260, 21.419792, 26.854597> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.802979, 21.088045, 27.006109>,  <16.704411, 20.888996, 27.097015>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.802979, 21.088045, 27.006109>,  <16.967260, 21.419792, 26.854597>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.802979, 21.088045, 27.006109> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299232, 0.269816, 0.915237,
		-0.861269, 0.489233, 0.137359,
		-0.410702, -0.829367, 0.378779,
		16.679768, 20.839235, 27.119743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.850359, 21.700447, 27.542923>,  <16.967260, 21.419792, 26.854597>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.850359, 21.700447, 27.542923> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.789461, 21.305740, 27.565248>,  <16.752922, 21.068916, 27.578644>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.789461, 21.305740, 27.565248>,  <16.850359, 21.700447, 27.542923>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.789461, 21.305740, 27.565248> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006555, 0.055461, 0.998439,
		-0.988321, 0.152371, -0.001975,
		-0.152243, -0.986766, 0.055812,
		16.743788, 21.009710, 27.581991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.375374, 21.674101, 28.105526>,  <16.850359, 21.700447, 27.542923>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.375374, 21.674101, 28.105526> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.549700, 21.315708, 28.071392>,  <16.654295, 21.100672, 28.050911>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.549700, 21.315708, 28.071392>,  <16.375374, 21.674101, 28.105526>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.549700, 21.315708, 28.071392> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116228, -0.037992, 0.992496,
		-0.892501, -0.442461, 0.087580,
		0.435814, -0.895983, -0.085335,
		16.680445, 21.046913, 28.045792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.005781, 21.103111, 28.664270>,  <16.375374, 21.674101, 28.105526>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.005781, 21.103111, 28.664270> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.362831, 20.948460, 28.571541>,  <16.577061, 20.855669, 28.515903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.362831, 20.948460, 28.571541>,  <16.005781, 21.103111, 28.664270>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.362831, 20.948460, 28.571541> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298766, 0.122269, 0.946461,
		-0.337584, -0.914094, 0.224652,
		0.892623, -0.386629, -0.231824,
		16.630617, 20.832472, 28.501993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<16.207636, 20.668171, 29.239479>,  <16.005781, 21.103111, 28.664270>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<16.207636, 20.668171, 29.239479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.538954, 20.776783, 29.043440>,  <16.737745, 20.841949, 28.925816>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<16.538954, 20.776783, 29.043440>,  <16.207636, 20.668171, 29.239479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<16.538954, 20.776783, 29.043440> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479154, 0.110103, 0.870798,
		0.290407, -0.956112, -0.038905,
		0.828297, 0.271527, -0.490099,
		16.787443, 20.858242, 28.896410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<12.280519, 16.094938, 13.465989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657906, 16.067787, 13.595769>,  <12.884337, 16.051497, 13.673636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.657906, 16.067787, 13.595769>,  <12.280519, 16.094938, 13.465989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.657906, 16.067787, 13.595769> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296592, 0.264199, 0.917732,
		-0.148012, -0.962077, 0.229131,
		0.943465, -0.067877, 0.324449,
		12.940945, 16.047424, 13.693104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.367593, 15.713445, 14.241159>,  <12.280519, 16.094938, 13.465989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.367593, 15.713445, 14.241159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.720529, 15.898228, 14.205224>,  <12.932290, 16.009098, 14.183662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.720529, 15.898228, 14.205224>,  <12.367593, 15.713445, 14.241159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.720529, 15.898228, 14.205224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075543, 0.327453, 0.941843,
		0.464510, -0.824238, 0.323823,
		0.882339, 0.461958, -0.089840,
		12.985230, 16.036816, 14.178272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.811608, 15.517142, 14.833806>,  <12.367593, 15.713445, 14.241159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.811608, 15.517142, 14.833806> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953233, 15.863085, 14.691447>,  <13.038207, 16.070650, 14.606031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.953233, 15.863085, 14.691447>,  <12.811608, 15.517142, 14.833806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.953233, 15.863085, 14.691447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149046, 0.323504, 0.934415,
		0.923270, -0.383884, -0.014364,
		0.354060, 0.864858, -0.355898,
		13.059451, 16.122541, 14.584678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.348558, 15.642830, 15.364785>,  <12.811608, 15.517142, 14.833806>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.348558, 15.642830, 15.364785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.339066, 15.995762, 15.176772>,  <13.333369, 16.207521, 15.063965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.339066, 15.995762, 15.176772>,  <13.348558, 15.642830, 15.364785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.339066, 15.995762, 15.176772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031156, 0.470589, 0.881802,
		0.999233, 0.006283, -0.038658,
		-0.023733, 0.882330, -0.470032,
		13.331945, 16.260462, 15.035763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.862564, 16.003195, 15.679754>,  <13.348558, 15.642830, 15.364785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.862564, 16.003195, 15.679754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638397, 16.279945, 15.497659>,  <13.503897, 16.445995, 15.388401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.638397, 16.279945, 15.497659>,  <13.862564, 16.003195, 15.679754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.638397, 16.279945, 15.497659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089908, 0.597239, 0.797008,
		0.823316, 0.405728, -0.396908,
		-0.560417, 0.691874, -0.455239,
		13.470272, 16.487507, 15.361087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.233519, 16.644573, 15.605366>,  <13.862564, 16.003195, 15.679754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.233519, 16.644573, 15.605366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.847260, 16.748215, 15.613298>,  <13.615505, 16.810400, 15.618058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.847260, 16.748215, 15.613298>,  <14.233519, 16.644573, 15.605366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.847260, 16.748215, 15.613298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190909, 0.655566, 0.730607,
		0.176303, 0.709293, -0.682510,
		-0.965646, 0.259105, 0.019832,
		13.557567, 16.825947, 15.619248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<14.218615, 17.378420, 15.818819>,  <14.233519, 16.644573, 15.605366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<14.218615, 17.378420, 15.818819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834393, 17.281187, 15.872851>,  <13.603860, 17.222847, 15.905271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.834393, 17.281187, 15.872851>,  <14.218615, 17.378420, 15.818819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.834393, 17.281187, 15.872851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061966, 0.660617, 0.748161,
		-0.271101, 0.710279, -0.649622,
		-0.960554, -0.243082, 0.135081,
		13.546227, 17.208263, 15.913376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.791995, 17.996607, 15.790433>,  <14.218615, 17.378420, 15.818819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.791995, 17.996607, 15.790433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585992, 17.716768, 15.988557>,  <13.462390, 17.548864, 16.107431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.585992, 17.716768, 15.988557>,  <13.791995, 17.996607, 15.790433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.585992, 17.716768, 15.988557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069514, 0.610016, 0.789334,
		-0.854363, 0.372082, -0.362794,
		-0.515007, -0.699597, 0.495310,
		13.431490, 17.506889, 16.137150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.378423, 18.430641, 16.185347>,  <13.791995, 17.996607, 15.790433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.378423, 18.430641, 16.185347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353770, 18.066456, 16.348936>,  <13.338979, 17.847944, 16.447090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.353770, 18.066456, 16.348936>,  <13.378423, 18.430641, 16.185347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.353770, 18.066456, 16.348936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027994, 0.408013, 0.912547,
		-0.997706, 0.067691, 0.000341,
		-0.061632, -0.910463, 0.408972,
		13.335280, 17.793318, 16.471628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.989848, 18.505236, 16.839190>,  <13.378423, 18.430641, 16.185347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.989848, 18.505236, 16.839190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188632, 18.164625, 16.906044>,  <13.307902, 17.960258, 16.946157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.188632, 18.164625, 16.906044>,  <12.989848, 18.505236, 16.839190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.188632, 18.164625, 16.906044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073406, 0.233167, 0.969662,
		-0.864663, -0.469615, 0.178381,
		0.496961, -0.851525, 0.167138,
		13.337720, 17.909168, 16.956186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.605057, 18.188747, 17.317383>,  <12.989848, 18.505236, 16.839190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.605057, 18.188747, 17.317383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.974203, 18.035107, 17.328594>,  <13.195691, 17.942923, 17.335321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.974203, 18.035107, 17.328594>,  <12.605057, 18.188747, 17.317383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.974203, 18.035107, 17.328594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088588, 0.282541, 0.955156,
		-0.374796, -0.878997, 0.294774,
		0.922866, -0.384102, 0.028027,
		13.251062, 17.919876, 17.337002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.704342, 17.840813, 18.073561>,  <12.605057, 18.188747, 17.317383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.704342, 17.840813, 18.073561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078590, 17.884270, 17.939213>,  <13.303140, 17.910345, 17.858604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.078590, 17.884270, 17.939213>,  <12.704342, 17.840813, 18.073561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.078590, 17.884270, 17.939213> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264547, 0.414155, 0.870914,
		0.233720, -0.903699, 0.358752,
		0.935623, 0.108643, -0.335867,
		13.359277, 17.916862, 17.838453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.841006, 17.175352, 18.427547>,  <12.704342, 17.840813, 18.073561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.841006, 17.175352, 18.427547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492503, 17.124010, 18.617044>,  <12.283401, 17.093204, 18.730743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.492503, 17.124010, 18.617044>,  <12.841006, 17.175352, 18.427547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.492503, 17.124010, 18.617044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372208, -0.456405, -0.808181,
		0.319953, -0.880466, 0.349872,
		-0.871258, -0.128355, 0.473744,
		12.231126, 17.085505, 18.759167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.577263, 16.570719, 18.307341>,  <12.841006, 17.175352, 18.427547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.577263, 16.570719, 18.307341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239767, 16.764742, 18.399273>,  <12.037270, 16.881155, 18.454433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.239767, 16.764742, 18.399273>,  <12.577263, 16.570719, 18.307341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.239767, 16.764742, 18.399273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390469, -0.260875, -0.882881,
		-0.368293, -0.834662, 0.409511,
		-0.843738, 0.485060, 0.229831,
		11.986646, 16.910259, 18.468222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.101581, 16.160522, 17.848013>,  <12.577263, 16.570719, 18.307341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.101581, 16.160522, 17.848013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875447, 16.455355, 17.996126>,  <11.739767, 16.632254, 18.084995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.875447, 16.455355, 17.996126>,  <12.101581, 16.160522, 17.848013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.875447, 16.455355, 17.996126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727825, -0.234496, -0.644424,
		-0.388162, -0.633817, 0.669034,
		-0.565333, 0.737081, 0.370285,
		11.705848, 16.676479, 18.107212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.456146, 15.917169, 18.072371>,  <12.101581, 16.160522, 17.848013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.456146, 15.917169, 18.072371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.396420, 16.303957, 17.989740>,  <11.360583, 16.536030, 17.940163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.396420, 16.303957, 17.989740>,  <11.456146, 15.917169, 18.072371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.396420, 16.303957, 17.989740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729888, -0.248729, -0.636709,
		-0.667059, 0.055704, 0.742919,
		-0.149318, 0.966970, -0.206575,
		11.351624, 16.594048, 17.927769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.681352, 16.119982, 18.157675>,  <11.456146, 15.917169, 18.072371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.681352, 16.119982, 18.157675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845677, 16.374975, 17.896954>,  <10.944273, 16.527971, 17.740520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.845677, 16.374975, 17.896954>,  <10.681352, 16.119982, 18.157675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.845677, 16.374975, 17.896954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.770957, -0.138732, -0.621594,
		-0.486681, 0.757873, 0.434478,
		0.410813, 0.637482, -0.651805,
		10.968922, 16.566219, 17.701412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.151088, 16.542654, 18.096815>,  <10.681352, 16.119982, 18.157675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.151088, 16.542654, 18.096815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396203, 16.598793, 17.785742>,  <10.543272, 16.632477, 17.599098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.396203, 16.598793, 17.785742>,  <10.151088, 16.542654, 18.096815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.396203, 16.598793, 17.785742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784416, -0.011293, -0.620132,
		-0.095816, 0.990038, 0.103171,
		0.612789, 0.140348, -0.777684,
		10.580040, 16.640898, 17.552437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.831364, 17.066847, 17.797310>,  <10.151088, 16.542654, 18.096815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.831364, 17.066847, 17.797310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070122, 16.884359, 17.533316>,  <10.213377, 16.774866, 17.374920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.070122, 16.884359, 17.533316>,  <9.831364, 17.066847, 17.797310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.070122, 16.884359, 17.533316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787020, -0.173062, -0.592156,
		0.155936, 0.872876, -0.462354,
		0.596895, -0.456220, -0.659984,
		10.249190, 16.747494, 17.335320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.747022, 17.430952, 17.130392>,  <9.831364, 17.066847, 17.797310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.747022, 17.430952, 17.130392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.922003, 17.086327, 17.027363>,  <10.026991, 16.879551, 16.965546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.922003, 17.086327, 17.027363>,  <9.747022, 17.430952, 17.130392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.922003, 17.086327, 17.027363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736875, -0.179272, -0.651825,
		0.515413, 0.474943, -0.713287,
		0.437452, -0.861563, -0.257575,
		10.053239, 16.827858, 16.950090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.752110, 17.478954, 16.388729>,  <9.747022, 17.430952, 17.130392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.752110, 17.478954, 16.388729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.778273, 17.090456, 16.480299>,  <9.793970, 16.857357, 16.535240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.778273, 17.090456, 16.480299>,  <9.752110, 17.478954, 16.388729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.778273, 17.090456, 16.480299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769167, -0.195222, -0.608498,
		0.635692, -0.136280, -0.759818,
		0.065407, -0.971245, 0.228923,
		9.797894, 16.799082, 16.548975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.588606, 17.173489, 15.731186>,  <9.752110, 17.478954, 16.388729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.588606, 17.173489, 15.731186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577445, 16.862604, 15.982633>,  <9.570748, 16.676073, 16.133501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.577445, 16.862604, 15.982633>,  <9.588606, 17.173489, 15.731186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.577445, 16.862604, 15.982633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600476, -0.489723, -0.632139,
		0.799156, -0.395108, -0.453033,
		-0.027902, -0.777213, 0.628618,
		9.569075, 16.629440, 16.171219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.764750, 16.526222, 15.367968>,  <9.588606, 17.173489, 15.731186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.764750, 16.526222, 15.367968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.533710, 16.450613, 15.685621>,  <9.395085, 16.405247, 15.876213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.533710, 16.450613, 15.685621>,  <9.764750, 16.526222, 15.367968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.533710, 16.450613, 15.685621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512038, -0.673756, -0.532794,
		0.635764, -0.714368, 0.292374,
		-0.577600, -0.189025, 0.794133,
		9.360430, 16.393906, 15.923862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.663836, 15.773101, 15.212064>,  <9.764750, 16.526222, 15.367968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.663836, 15.773101, 15.212064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.382154, 15.922421, 15.453638>,  <9.213143, 16.012014, 15.598582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.382154, 15.922421, 15.453638>,  <9.663836, 15.773101, 15.212064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.382154, 15.922421, 15.453638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673221, -0.621285, -0.400972,
		0.225534, -0.688950, 0.688827,
		-0.704207, 0.373300, 0.603936,
		9.170891, 16.034412, 15.634819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.363358, 15.114808, 15.448734>,  <9.663836, 15.773101, 15.212064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.363358, 15.114808, 15.448734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.100011, 15.402516, 15.537459>,  <8.942002, 15.575141, 15.590694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.100011, 15.402516, 15.537459>,  <9.363358, 15.114808, 15.448734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.100011, 15.402516, 15.537459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751682, -0.612987, -0.243355,
		-0.039070, -0.326950, 0.944234,
		-0.658368, 0.719271, 0.221813,
		8.902500, 15.618298, 15.604003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.814030, 14.607184, 15.629300>,  <9.363358, 15.114808, 15.448734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.814030, 14.607184, 15.629300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692210, 14.976670, 15.536346>,  <8.619119, 15.198361, 15.480575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.692210, 14.976670, 15.536346>,  <8.814030, 14.607184, 15.629300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.692210, 14.976670, 15.536346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.835651, -0.376196, -0.400205,
		-0.457097, 0.072311, 0.886472,
		-0.304548, 0.923714, -0.232385,
		8.600845, 15.253784, 15.466631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.969390, 14.078708, 15.088950>,  <8.814030, 14.607184, 15.629300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.969390, 14.078708, 15.088950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.075933, 13.712969, 15.210948>,  <9.139859, 13.493526, 15.284147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.075933, 13.712969, 15.210948>,  <8.969390, 14.078708, 15.088950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.075933, 13.712969, 15.210948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115984, 0.283723, 0.951866,
		-0.956870, -0.288913, -0.030478,
		0.266359, -0.914347, 0.304995,
		9.155841, 13.438664, 15.302446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.554321, 13.896404, 15.676784>,  <8.969390, 14.078708, 15.088950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.554321, 13.896404, 15.676784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.890821, 13.680264, 15.683912>,  <9.092721, 13.550579, 15.688190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.890821, 13.680264, 15.683912>,  <8.554321, 13.896404, 15.676784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.890821, 13.680264, 15.683912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133840, 0.240080, 0.961482,
		-0.523818, -0.806461, 0.274288,
		0.841249, -0.540353, 0.017822,
		9.143196, 13.518158, 15.689259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.495728, 13.371105, 16.098110>,  <8.554321, 13.896404, 15.676784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.495728, 13.371105, 16.098110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.870903, 13.508492, 16.078918>,  <9.096008, 13.590925, 16.067404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<8.870903, 13.508492, 16.078918>,  <8.495728, 13.371105, 16.098110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<8.870903, 13.508492, 16.078918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022884, 0.076753, 0.996788,
		0.346048, -0.936023, 0.064129,
		0.937938, 0.343469, -0.047980,
		9.152285, 13.611533, 16.064524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<8.735781, 13.050549, 16.713997>,  <8.495728, 13.371105, 16.098110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<8.735781, 13.050549, 16.713997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.003098, 13.318662, 16.584934>,  <9.163487, 13.479529, 16.507498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.003098, 13.318662, 16.584934>,  <8.735781, 13.050549, 16.713997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.003098, 13.318662, 16.584934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281663, 0.173447, 0.943706,
		0.688515, -0.721551, -0.072881,
		0.668291, 0.670284, -0.322656,
		9.203585, 13.519747, 16.488138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.387599, 12.854650, 16.891863>,  <8.735781, 13.050549, 16.713997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.387599, 12.854650, 16.891863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383910, 13.253222, 16.858295>,  <9.381697, 13.492365, 16.838154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.383910, 13.253222, 16.858295>,  <9.387599, 12.854650, 16.891863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.383910, 13.253222, 16.858295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419617, 0.080033, 0.904166,
		0.907655, -0.026877, -0.418856,
		-0.009221, 0.996430, -0.083920,
		9.381144, 13.552151, 16.833118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.036572, 13.052381, 17.009340>,  <9.387599, 12.854650, 16.891863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.036572, 13.052381, 17.009340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.810208, 13.365016, 17.114309>,  <9.674390, 13.552597, 17.177290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<9.810208, 13.365016, 17.114309>,  <10.036572, 13.052381, 17.009340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<9.810208, 13.365016, 17.114309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322752, -0.082878, 0.942848,
		0.758669, 0.618263, -0.205358,
		-0.565909, 0.781589, 0.262423,
		9.640435, 13.599493, 17.193037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.364053, 13.190527, 17.535172>,  <10.036572, 13.052381, 17.009340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.364053, 13.190527, 17.535172> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.064418, 13.448928, 17.593891>,  <9.884637, 13.603969, 17.629124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.064418, 13.448928, 17.593891>,  <10.364053, 13.190527, 17.535172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.064418, 13.448928, 17.593891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159597, -0.039091, 0.986408,
		0.642960, 0.762334, -0.073817,
		-0.749087, 0.646002, 0.146800,
		9.839692, 13.642729, 17.637932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.552067, 13.839720, 17.600950>,  <10.364053, 13.190527, 17.535172>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.552067, 13.839720, 17.600950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.208970, 13.811982, 17.804703>,  <10.003112, 13.795340, 17.926954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.208970, 13.811982, 17.804703>,  <10.552067, 13.839720, 17.600950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.208970, 13.811982, 17.804703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483977, 0.225161, 0.845618,
		-0.173332, 0.971851, -0.159569,
		-0.857743, -0.069345, 0.509381,
		9.951647, 13.791179, 17.957518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.618104, 14.358821, 17.996849>,  <10.552067, 13.839720, 17.600950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.618104, 14.358821, 17.996849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323269, 14.156023, 18.175581>,  <10.146368, 14.034345, 18.282820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.323269, 14.156023, 18.175581>,  <10.618104, 14.358821, 17.996849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.323269, 14.156023, 18.175581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428122, 0.161276, 0.889214,
		-0.522890, 0.846727, 0.098181,
		-0.737087, -0.506995, 0.446832,
		10.102142, 14.003924, 18.309631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.347890, 14.811378, 18.529982>,  <10.618104, 14.358821, 17.996849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.347890, 14.811378, 18.529982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.255437, 14.438547, 18.641558>,  <10.199965, 14.214849, 18.708504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.255437, 14.438547, 18.641558>,  <10.347890, 14.811378, 18.529982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.255437, 14.438547, 18.641558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403238, 0.169146, 0.899327,
		-0.885425, 0.320343, 0.336755,
		-0.231132, -0.932078, 0.278940,
		10.186097, 14.158923, 18.725239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.202091, 14.832047, 19.292490>,  <10.347890, 14.811378, 18.529982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.202091, 14.832047, 19.292490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.220890, 14.440791, 19.211460>,  <10.232169, 14.206038, 19.162842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.220890, 14.440791, 19.211460>,  <10.202091, 14.832047, 19.292490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.220890, 14.440791, 19.211460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426988, -0.163665, 0.889323,
		-0.903035, -0.128293, 0.409961,
		0.046997, -0.978138, -0.202575,
		10.234989, 14.147349, 19.150688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.743076, 14.558125, 19.793919>,  <10.202091, 14.832047, 19.292490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.743076, 14.558125, 19.793919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.023431, 14.300243, 19.671860>,  <10.191644, 14.145514, 19.598625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.023431, 14.300243, 19.671860>,  <9.743076, 14.558125, 19.793919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.023431, 14.300243, 19.671860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271073, -0.154951, 0.950005,
		-0.659757, -0.748561, 0.066159,
		0.700885, -0.644706, -0.305145,
		10.233696, 14.106832, 19.580317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<9.804353, 14.214115, 20.408852>,  <9.743076, 14.558125, 19.793919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<9.804353, 14.214115, 20.408852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104450, 14.083803, 20.178720>,  <10.284509, 14.005616, 20.040642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.104450, 14.083803, 20.178720>,  <9.804353, 14.214115, 20.408852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.104450, 14.083803, 20.178720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627149, 0.075151, 0.775265,
		-0.209330, -0.942454, 0.260694,
		0.750243, -0.325780, -0.575328,
		10.329523, 13.986070, 20.006123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.138847, 13.617762, 20.680065>,  <9.804353, 14.214115, 20.408852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.138847, 13.617762, 20.680065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.426636, 13.801463, 20.471663>,  <10.599309, 13.911684, 20.346621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.426636, 13.801463, 20.471663>,  <10.138847, 13.617762, 20.680065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.426636, 13.801463, 20.471663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560327, 0.059412, 0.826138,
		0.410361, -0.886317, -0.214587,
		0.719471, 0.459254, -0.521008,
		10.642477, 13.939239, 20.315361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<10.765010, 13.196976, 20.662170>,  <10.138847, 13.617762, 20.680065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<10.765010, 13.196976, 20.662170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896589, 13.567416, 20.588276>,  <10.975537, 13.789680, 20.543940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<10.896589, 13.567416, 20.588276>,  <10.765010, 13.196976, 20.662170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<10.896589, 13.567416, 20.588276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479908, 0.004543, 0.877307,
		0.813315, -0.377246, -0.442949,
		0.328948, 0.926102, -0.184738,
		10.995274, 13.845246, 20.532854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.491455, 13.192243, 20.895027>,  <10.765010, 13.196976, 20.662170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.491455, 13.192243, 20.895027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.399651, 13.580327, 20.864004>,  <11.344568, 13.813178, 20.845390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.399651, 13.580327, 20.864004>,  <11.491455, 13.192243, 20.895027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.399651, 13.580327, 20.864004> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526134, 0.190709, 0.828742,
		0.818845, 0.149400, -0.554231,
		-0.229511, 0.970211, -0.077557,
		11.330797, 13.871390, 20.840736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.971128, 13.478683, 21.235060>,  <11.491455, 13.192243, 20.895027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.971128, 13.478683, 21.235060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.738652, 13.797238, 21.168142>,  <11.599167, 13.988372, 21.127993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.738652, 13.797238, 21.168142>,  <11.971128, 13.478683, 21.235060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.738652, 13.797238, 21.168142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439335, 0.480112, 0.759260,
		0.684985, 0.367775, -0.628917,
		-0.581188, 0.796388, -0.167293,
		11.564296, 14.036155, 21.117954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.411783, 14.158794, 21.161093>,  <11.971128, 13.478683, 21.235060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.411783, 14.158794, 21.161093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048986, 14.256985, 21.297976>,  <11.831308, 14.315899, 21.380106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.048986, 14.256985, 21.297976>,  <12.411783, 14.158794, 21.161093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.048986, 14.256985, 21.297976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418489, 0.434181, 0.797718,
		0.047239, 0.866735, -0.496527,
		-0.906992, 0.245475, 0.342209,
		11.776889, 14.330627, 21.400639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.498977, 14.804745, 21.402704>,  <12.411783, 14.158794, 21.161093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.498977, 14.804745, 21.402704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181550, 14.656566, 21.595793>,  <11.991094, 14.567658, 21.711645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.181550, 14.656566, 21.595793>,  <12.498977, 14.804745, 21.402704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.181550, 14.656566, 21.595793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408281, 0.264053, 0.873832,
		-0.451173, 0.890531, -0.058297,
		-0.793568, -0.370448, 0.482721,
		11.943480, 14.545431, 21.740608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.442398, 15.362886, 21.865427>,  <12.498977, 14.804745, 21.402704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.442398, 15.362886, 21.865427> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248771, 15.036914, 21.992903>,  <12.132594, 14.841331, 22.069389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.248771, 15.036914, 21.992903>,  <12.442398, 15.362886, 21.865427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.248771, 15.036914, 21.992903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278827, 0.201568, 0.938949,
		-0.829418, 0.543375, 0.129653,
		-0.484068, -0.814932, 0.318691,
		12.103550, 14.792435, 22.088511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.922341, 15.623590, 22.400898>,  <12.442398, 15.362886, 21.865427>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.922341, 15.623590, 22.400898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.010541, 15.238352, 22.462641>,  <12.063460, 15.007209, 22.499687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.010541, 15.238352, 22.462641>,  <11.922341, 15.623590, 22.400898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.010541, 15.238352, 22.462641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.236212, 0.206267, 0.949557,
		-0.946353, -0.172914, 0.272977,
		0.220498, -0.963096, 0.154357,
		12.076691, 14.949423, 22.508947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.604169, 15.547198, 23.007477>,  <11.922341, 15.623590, 22.400898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.604169, 15.547198, 23.007477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834451, 15.221265, 22.980314>,  <11.972620, 15.025704, 22.964018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.834451, 15.221265, 22.980314>,  <11.604169, 15.547198, 23.007477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.834451, 15.221265, 22.980314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167255, 0.036063, 0.985254,
		-0.800369, -0.578572, 0.157047,
		0.575704, -0.814834, -0.067905,
		12.007162, 14.976815, 22.959942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.311006, 15.165524, 23.549162>,  <11.604169, 15.547198, 23.007477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.311006, 15.165524, 23.549162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690395, 15.068063, 23.468140>,  <11.918030, 15.009586, 23.419525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.690395, 15.068063, 23.468140>,  <11.311006, 15.165524, 23.549162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.690395, 15.068063, 23.468140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239064, 0.130737, 0.962162,
		-0.207951, -0.961011, 0.182249,
		0.948475, -0.243652, -0.202556,
		11.974937, 14.994967, 23.407373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<11.570538, 14.756426, 24.061001>,  <11.311006, 15.165524, 23.549162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<11.570538, 14.756426, 24.061001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922362, 14.862594, 23.903053>,  <12.133457, 14.926294, 23.808285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<11.922362, 14.862594, 23.903053>,  <11.570538, 14.756426, 24.061001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<11.922362, 14.862594, 23.903053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398718, 0.041639, 0.916128,
		0.259602, -0.963233, -0.069204,
		0.879563, 0.265421, -0.394868,
		12.186232, 14.942220, 23.784594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.118309, 14.349345, 24.382687>,  <11.570538, 14.756426, 24.061001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.118309, 14.349345, 24.382687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.320415, 14.653804, 24.220028>,  <12.441678, 14.836479, 24.122433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.320415, 14.653804, 24.220028>,  <12.118309, 14.349345, 24.382687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.320415, 14.653804, 24.220028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531778, 0.096503, 0.841368,
		0.679648, -0.641360, -0.356002,
		0.505264, 0.761148, -0.406649,
		12.471993, 14.882148, 24.098034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<12.741129, 14.198012, 24.479883>,  <12.118309, 14.349345, 24.382687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<12.741129, 14.198012, 24.479883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728176, 14.595291, 24.435143>,  <12.720405, 14.833658, 24.408298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<12.728176, 14.595291, 24.435143>,  <12.741129, 14.198012, 24.479883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<12.728176, 14.595291, 24.435143> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630956, 0.107105, 0.768390,
		0.775143, -0.045691, -0.630132,
		-0.032382, 0.993197, -0.111851,
		12.718462, 14.893250, 24.401587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.247958, 14.361384, 24.936375>,  <12.741129, 14.198012, 24.479883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.247958, 14.361384, 24.936375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102582, 14.716890, 24.824656>,  <13.015356, 14.930194, 24.757624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.102582, 14.716890, 24.824656>,  <13.247958, 14.361384, 24.936375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.102582, 14.716890, 24.824656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480146, 0.435611, 0.761382,
		0.798355, 0.142614, -0.585056,
		-0.363440, 0.888766, -0.279297,
		12.993550, 14.983521, 24.740866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<13.842457, 14.778131, 24.951984>,  <13.247958, 14.361384, 24.936375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<13.842457, 14.778131, 24.951984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.509271, 14.998214, 24.975449>,  <13.309359, 15.130263, 24.989527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<13.509271, 14.998214, 24.975449>,  <13.842457, 14.778131, 24.951984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<13.509271, 14.998214, 24.975449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389775, 0.508207, 0.767985,
		0.392738, 0.662571, -0.637775,
		-0.832966, 0.550205, 0.058661,
		13.259380, 15.163276, 24.993048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
