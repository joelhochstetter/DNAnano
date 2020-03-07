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
	right 1.6 * <0.99995, 0, 0.00999983>
	location <54.4867, 55, 106.329>
	look_at <55, 55, 55.0001>
	direction <0.513302, 0, -51.3289>
	angle 67.0682
}


# declare cpy_camera_pos = <54.4867, 55, 106.329>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 88
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-0.98995, -1, 1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <0.98995, 1, -1.00995>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<36.415298, 52.965775, 49.906303> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491226, 53.274086, 50.149574>,  <36.536781, 53.459072, 50.295536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.491226, 53.274086, 50.149574>,  <36.415298, 52.965775, 49.906303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.491226, 53.274086, 50.149574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579491, -0.587985, 0.564326,
		0.792565, 0.245314, -0.558266,
		0.189816, 0.770775, 0.608174,
		36.548172, 53.505318, 50.332027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.153320, 52.990261, 50.127079>,  <36.415298, 52.965775, 49.906303>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.153320, 52.990261, 50.127079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980865, 53.165752, 50.442451>,  <36.877392, 53.271049, 50.631676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.980865, 53.165752, 50.442451>,  <37.153320, 52.990261, 50.127079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.980865, 53.165752, 50.442451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388160, -0.698643, 0.601025,
		0.814524, 0.565166, 0.130915,
		-0.431141, 0.438733, 0.788436,
		36.851524, 53.297371, 50.678982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.764172, 53.298382, 50.564659>,  <37.153320, 52.990261, 50.127079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.764172, 53.298382, 50.564659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419949, 53.154541, 50.708954>,  <37.213417, 53.068237, 50.795532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.419949, 53.154541, 50.708954>,  <37.764172, 53.298382, 50.564659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.419949, 53.154541, 50.708954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498830, -0.738238, 0.454064,
		0.103031, 0.570695, 0.814673,
		-0.860554, -0.359601, 0.360741,
		37.161781, 53.046661, 50.817177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419582, 53.125534, 50.728329>,  <37.764172, 53.298382, 50.564659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419582, 53.125534, 50.728329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612259, 53.163670, 51.076786>,  <38.727863, 53.186550, 51.285858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612259, 53.163670, 51.076786>,  <38.419582, 53.125534, 50.728329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612259, 53.163670, 51.076786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115178, -0.978554, 0.170779,
		0.868741, -0.182599, -0.460377,
		0.481688, 0.095337, 0.871141,
		38.756767, 53.192272, 51.338127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089909, 52.628132, 50.829201>,  <38.419582, 53.125534, 50.728329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089909, 52.628132, 50.829201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886002, 52.703033, 51.165077>,  <38.763657, 52.747974, 51.366604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886002, 52.703033, 51.165077>,  <39.089909, 52.628132, 50.829201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886002, 52.703033, 51.165077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131979, -0.981493, 0.138758,
		0.850130, -0.040087, 0.525045,
		-0.509765, 0.187257, 0.839687,
		38.733070, 52.759209, 51.416985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.512913, 52.265015, 50.352146>,  <39.089909, 52.628132, 50.829201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.512913, 52.265015, 50.352146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522629, 52.372036, 50.737442>,  <39.528458, 52.436249, 50.968620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.522629, 52.372036, 50.737442>,  <39.512913, 52.265015, 50.352146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.522629, 52.372036, 50.737442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997446, 0.058240, -0.041335,
		-0.067158, 0.961783, -0.265451,
		0.024295, 0.267549, 0.963238,
		39.529919, 52.452301, 51.026413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.016094, 52.845078, 50.570286>,  <39.512913, 52.265015, 50.352146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.016094, 52.845078, 50.570286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956333, 52.591183, 50.873543>,  <39.920479, 52.438847, 51.055496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.956333, 52.591183, 50.873543>,  <40.016094, 52.845078, 50.570286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.956333, 52.591183, 50.873543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985798, -0.036146, 0.163998,
		-0.076692, 0.771880, 0.631126,
		-0.149399, -0.634740, 0.758146,
		39.911514, 52.400761, 51.100986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.166901, 53.427658, 50.023254>,  <40.016094, 52.845078, 50.570286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.166901, 53.427658, 50.023254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825932, 53.222710, 50.064926>,  <39.621349, 53.099743, 50.089928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.825932, 53.222710, 50.064926>,  <40.166901, 53.427658, 50.023254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.825932, 53.222710, 50.064926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522834, 0.833565, -0.178364,
		0.004548, -0.206510, -0.978434,
		-0.852423, -0.512369, 0.104179,
		39.570206, 53.069000, 50.096180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.654861, 53.917393, 49.689342>,  <40.166901, 53.427658, 50.023254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.654861, 53.917393, 49.689342> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722191, 53.835880, 50.075119>,  <40.762589, 53.786972, 50.306583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.722191, 53.835880, 50.075119>,  <40.654861, 53.917393, 49.689342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.722191, 53.835880, 50.075119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927842, 0.363109, -0.085215,
		-0.332831, 0.909189, 0.250198,
		0.168326, -0.203782, 0.964437,
		40.772690, 53.774746, 50.364449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.828926, 54.491405, 50.092175>,  <40.654861, 53.917393, 49.689342>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.828926, 54.491405, 50.092175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005524, 54.178406, 50.267799>,  <41.111481, 53.990604, 50.373177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.005524, 54.178406, 50.267799>,  <40.828926, 54.491405, 50.092175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.005524, 54.178406, 50.267799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897260, 0.386468, -0.213466,
		-0.002648, 0.488200, 0.872728,
		0.441495, -0.782498, 0.439065,
		41.137974, 53.943657, 50.399517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.278141, 54.567360, 50.703403>,  <40.828926, 54.491405, 50.092175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.278141, 54.567360, 50.703403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428009, 54.268406, 50.483932>,  <41.517929, 54.089035, 50.352249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.428009, 54.268406, 50.483932>,  <41.278141, 54.567360, 50.703403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.428009, 54.268406, 50.483932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.741057, 0.597037, -0.307216,
		0.557187, -0.291495, 0.777543,
		0.374670, -0.747381, -0.548675,
		41.540409, 54.044193, 50.319328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.956051, 54.271015, 51.118969>,  <41.278141, 54.567360, 50.703403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.956051, 54.271015, 51.118969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881729, 54.273663, 50.725945>,  <41.837135, 54.275249, 50.490128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.881729, 54.273663, 50.725945>,  <41.956051, 54.271015, 51.118969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.881729, 54.273663, 50.725945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641520, 0.758254, -0.116202,
		0.744265, -0.651925, -0.145132,
		-0.185802, 0.006620, -0.982565,
		41.825989, 54.275650, 50.431175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.415245, 54.092285, 50.663010>,  <41.956051, 54.271015, 51.118969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.415245, 54.092285, 50.663010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167824, 54.371231, 50.518196>,  <42.019371, 54.538601, 50.431309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.167824, 54.371231, 50.518196>,  <42.415245, 54.092285, 50.663010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.167824, 54.371231, 50.518196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702796, 0.697079, 0.141981,
		0.351379, -0.166613, -0.921289,
		-0.618555, 0.697367, -0.362033,
		41.982258, 54.580441, 50.409588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.765366, 54.527092, 50.190636>,  <42.415245, 54.092285, 50.663010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.765366, 54.527092, 50.190636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461750, 54.707253, 50.378677>,  <42.279579, 54.815350, 50.491501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.461750, 54.707253, 50.378677>,  <42.765366, 54.527092, 50.190636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.461750, 54.707253, 50.378677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616405, 0.729571, 0.296264,
		-0.209535, 0.514649, -0.831403,
		-0.759039, 0.450403, 0.470103,
		42.234039, 54.842373, 50.519707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587330, 55.224846, 49.890419>,  <42.765366, 54.527092, 50.190636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587330, 55.224846, 49.890419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526840, 55.208191, 50.285469>,  <42.490547, 55.198196, 50.522499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.526840, 55.208191, 50.285469>,  <42.587330, 55.224846, 49.890419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.526840, 55.208191, 50.285469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678820, 0.721904, 0.134380,
		-0.718564, 0.690739, -0.080905,
		-0.151227, -0.041640, 0.987622,
		42.481472, 55.195698, 50.581757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.498974, 55.833881, 50.107281>,  <42.587330, 55.224846, 49.890419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.498974, 55.833881, 50.107281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620907, 55.671215, 50.451767>,  <42.694069, 55.573616, 50.658459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.620907, 55.671215, 50.451767>,  <42.498974, 55.833881, 50.107281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620907, 55.671215, 50.451767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699879, 0.708939, 0.087035,
		-0.645945, 0.576216, 0.500730,
		0.304836, -0.406670, 0.861217,
		42.712357, 55.549213, 50.710133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.638573, 56.385723, 50.447300>,  <42.498974, 55.833881, 50.107281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.638573, 56.385723, 50.447300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838211, 56.103733, 50.648857>,  <42.957996, 55.934540, 50.769791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.838211, 56.103733, 50.648857>,  <42.638573, 56.385723, 50.447300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.838211, 56.103733, 50.648857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716496, 0.662786, 0.217594,
		-0.487374, 0.252439, 0.835908,
		0.499099, -0.704975, 0.503896,
		42.987942, 55.892242, 50.800026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.792908, 56.617603, 51.132980>,  <42.638573, 56.385723, 50.447300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.792908, 56.617603, 51.132980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070160, 56.355194, 51.013512>,  <43.236511, 56.197750, 50.941830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.070160, 56.355194, 51.013512>,  <42.792908, 56.617603, 51.132980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.070160, 56.355194, 51.013512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720542, 0.641933, 0.262185,
		0.019729, -0.396935, 0.917635,
		0.693130, -0.656022, -0.298674,
		43.278099, 56.158386, 50.923908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.349743, 56.394791, 51.611813>,  <42.792908, 56.617603, 51.132980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.349743, 56.394791, 51.611813> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532581, 56.334091, 51.261261>,  <43.642284, 56.297672, 51.050930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.532581, 56.334091, 51.261261>,  <43.349743, 56.394791, 51.611813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.532581, 56.334091, 51.261261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651680, 0.727712, 0.213890,
		0.605290, -0.668885, 0.431528,
		0.457096, -0.151753, -0.876376,
		43.669708, 56.288567, 50.998348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.020523, 56.351776, 51.769157>,  <43.349743, 56.394791, 51.611813>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.020523, 56.351776, 51.769157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987694, 56.489098, 51.394905>,  <43.967995, 56.571491, 51.170353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.987694, 56.489098, 51.394905>,  <44.020523, 56.351776, 51.769157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.987694, 56.489098, 51.394905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679506, 0.706037, 0.199458,
		0.729065, -0.619396, -0.291226,
		-0.082072, 0.343308, -0.935630,
		43.963074, 56.592091, 51.114216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623074, 56.652390, 51.618858>,  <44.020523, 56.351776, 51.769157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623074, 56.652390, 51.618858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389874, 56.827133, 51.344849>,  <44.249954, 56.931980, 51.180443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.389874, 56.827133, 51.344849>,  <44.623074, 56.652390, 51.618858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.389874, 56.827133, 51.344849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352731, 0.895631, 0.270972,
		0.731908, -0.083653, -0.676249,
		-0.583003, 0.436860, -0.685026,
		44.214973, 56.958191, 51.139339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041683, 57.012405, 51.179829>,  <44.623074, 56.652390, 51.618858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041683, 57.012405, 51.179829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673779, 57.168285, 51.198502>,  <44.453037, 57.261814, 51.209705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.673779, 57.168285, 51.198502>,  <45.041683, 57.012405, 51.179829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673779, 57.168285, 51.198502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383683, 0.867720, 0.315988,
		0.082635, 0.308543, -0.947614,
		-0.919760, 0.389695, 0.046679,
		44.397850, 57.285194, 51.212505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.715645, 57.022758, 50.554459>,  <45.041683, 57.012405, 51.179829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.715645, 57.022758, 50.554459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016388, 56.883217, 50.330673>,  <45.196835, 56.799492, 50.196400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.016388, 56.883217, 50.330673>,  <44.715645, 57.022758, 50.554459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.016388, 56.883217, 50.330673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187366, -0.700510, 0.688607,
		-0.632134, -0.622563, -0.461325,
		0.751865, -0.348855, -0.559463,
		45.241947, 56.778561, 50.162834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.607811, 56.292099, 50.476780>,  <44.715645, 57.022758, 50.554459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.607811, 56.292099, 50.476780> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990871, 56.398911, 50.433704>,  <45.220707, 56.462997, 50.407860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.990871, 56.398911, 50.433704>,  <44.607811, 56.292099, 50.476780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.990871, 56.398911, 50.433704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274955, -0.737161, 0.617247,
		0.085437, -0.620719, -0.779364,
		0.957654, 0.267026, -0.107689,
		45.278168, 56.479019, 50.401398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.028660, 55.793858, 50.052422>,  <44.607811, 56.292099, 50.476780>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.028660, 55.793858, 50.052422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216896, 55.984776, 50.349266>,  <45.329838, 56.099327, 50.527374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.216896, 55.984776, 50.349266>,  <45.028660, 55.793858, 50.052422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.216896, 55.984776, 50.349266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158036, -0.873057, 0.461299,
		0.868083, -0.099803, -0.486283,
		0.470592, 0.477296, 0.742113,
		45.358074, 56.127964, 50.571899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.725937, 55.579681, 50.232082>,  <45.028660, 55.793858, 50.052422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.725937, 55.579681, 50.232082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541443, 55.745007, 50.546135>,  <45.430744, 55.844200, 50.734566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.541443, 55.745007, 50.546135>,  <45.725937, 55.579681, 50.232082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.541443, 55.745007, 50.546135> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066093, -0.898426, 0.434124,
		0.884811, 0.148343, 0.441706,
		-0.461239, 0.413311, 0.785132,
		45.403072, 55.868999, 50.781673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.067287, 55.468582, 50.907051>,  <45.725937, 55.579681, 50.232082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.067287, 55.468582, 50.907051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669872, 55.506985, 50.882809>,  <45.431423, 55.530025, 50.868263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.669872, 55.506985, 50.882809>,  <46.067287, 55.468582, 50.907051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.669872, 55.506985, 50.882809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111064, -0.932613, 0.343363,
		-0.023562, 0.347874, 0.937245,
		-0.993534, 0.096004, -0.060610,
		45.371811, 55.535786, 50.864624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.882637, 55.573765, 51.580364>,  <46.067287, 55.468582, 50.907051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.882637, 55.573765, 51.580364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631115, 55.399319, 51.322868>,  <45.480202, 55.294651, 51.168369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.631115, 55.399319, 51.322868>,  <45.882637, 55.573765, 51.580364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631115, 55.399319, 51.322868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038321, -0.809510, 0.585853,
		-0.776615, 0.393059, 0.492315,
		-0.628809, -0.436116, -0.643740,
		45.442471, 55.268482, 51.129745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.996124, 54.916611, 51.561687>,  <45.882637, 55.573765, 51.580364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.996124, 54.916611, 51.561687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304478, 55.167633, 51.605347>,  <46.489491, 55.318249, 51.631542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.304478, 55.167633, 51.605347>,  <45.996124, 54.916611, 51.561687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.304478, 55.167633, 51.605347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604366, -0.666463, -0.436541,
		-0.201210, 0.402488, -0.893039,
		0.770880, 0.627559, 0.109151,
		46.535740, 55.355900, 51.638092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.534515, 54.668095, 51.097656>,  <45.996124, 54.916611, 51.561687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.534515, 54.668095, 51.097656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784973, 54.937424, 51.254921>,  <46.935249, 55.099022, 51.349281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.784973, 54.937424, 51.254921>,  <46.534515, 54.668095, 51.097656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.784973, 54.937424, 51.254921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779384, -0.554934, -0.290875,
		0.022327, 0.488555, -0.872247,
		0.626148, 0.673321, 0.393162,
		46.972816, 55.139420, 51.372871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.032150, 54.774567, 50.605202>,  <46.534515, 54.668095, 51.097656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.032150, 54.774567, 50.605202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167641, 54.849426, 50.974037>,  <47.248936, 54.894344, 51.195339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.167641, 54.849426, 50.974037>,  <47.032150, 54.774567, 50.605202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.167641, 54.849426, 50.974037> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848961, -0.483287, -0.213771,
		0.405625, 0.855224, -0.322584,
		0.338723, 0.187151, 0.922085,
		47.269257, 54.905571, 51.250664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.745964, 54.759491, 50.506809>,  <47.032150, 54.774567, 50.605202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.745964, 54.759491, 50.506809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707031, 54.706432, 50.901360>,  <47.683674, 54.674599, 51.138088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.707031, 54.706432, 50.901360>,  <47.745964, 54.759491, 50.506809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.707031, 54.706432, 50.901360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.844206, -0.535901, 0.011233,
		0.527109, 0.833795, 0.164139,
		-0.097329, -0.132646, 0.986373,
		47.677834, 54.666637, 51.197273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.126305, 54.213524, 50.590260>,  <47.745964, 54.759491, 50.506809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.126305, 54.213524, 50.590260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.162468, 54.442101, 50.916519>,  <48.184166, 54.579247, 51.112274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.162468, 54.442101, 50.916519>,  <48.126305, 54.213524, 50.590260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.162468, 54.442101, 50.916519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982947, 0.080486, -0.165338,
		-0.160130, 0.816684, -0.554424,
		0.090406, 0.571446, 0.815645,
		48.189590, 54.613533, 51.161213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.425243, 54.940861, 50.353619>,  <48.126305, 54.213524, 50.590260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.425243, 54.940861, 50.353619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.491199, 54.850418, 50.737637>,  <48.530773, 54.796154, 50.968048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.491199, 54.850418, 50.737637>,  <48.425243, 54.940861, 50.353619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.491199, 54.850418, 50.737637> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984155, 0.102049, -0.145000,
		-0.065187, 0.968743, 0.239349,
		0.164893, -0.226104, 0.960045,
		48.540668, 54.782585, 51.025650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.738125, 55.587318, 50.678516>,  <48.425243, 54.940861, 50.353619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.738125, 55.587318, 50.678516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.863205, 55.228321, 50.802921>,  <48.938251, 55.012924, 50.877563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.863205, 55.228321, 50.802921>,  <48.738125, 55.587318, 50.678516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.863205, 55.228321, 50.802921> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948510, 0.277645, -0.152451,
		0.050472, 0.342671, 0.938099,
		0.312699, -0.897491, 0.311014,
		48.957016, 54.959072, 50.896225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.163044, 55.570236, 51.388256>,  <48.738125, 55.587318, 50.678516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.163044, 55.570236, 51.388256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.272171, 55.274197, 51.142387>,  <49.337646, 55.096573, 50.994865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.272171, 55.274197, 51.142387>,  <49.163044, 55.570236, 51.388256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.272171, 55.274197, 51.142387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927362, 0.372356, -0.036742,
		0.256070, -0.560001, 0.787926,
		0.272813, -0.740101, -0.614673,
		49.354015, 55.052166, 50.957985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.640289, 55.081787, 51.657898>,  <49.163044, 55.570236, 51.388256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.640289, 55.081787, 51.657898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.723728, 55.129547, 51.269623>,  <49.773792, 55.158203, 51.036659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.723728, 55.129547, 51.269623>,  <49.640289, 55.081787, 51.657898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.723728, 55.129547, 51.269623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964590, 0.138693, 0.224345,
		0.161414, -0.983111, -0.086242,
		0.208595, 0.119400, -0.970686,
		49.786308, 55.165367, 50.978416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.451591, 54.354774, 51.947319>,  <49.640289, 55.081787, 51.657898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.451591, 54.354774, 51.947319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.448166, 54.646656, 52.220802>,  <49.446110, 54.821785, 52.384892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.448166, 54.646656, 52.220802>,  <49.451591, 54.354774, 51.947319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.448166, 54.646656, 52.220802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577893, -0.554380, 0.598917,
		0.816067, 0.400237, -0.416947,
		-0.008561, 0.729708, 0.683706,
		49.445599, 54.865570, 52.425915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.183239, 54.460205, 52.066341>,  <49.451591, 54.354774, 51.947319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.183239, 54.460205, 52.066341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.940407, 54.540901, 52.373783>,  <49.794708, 54.589317, 52.558250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.940407, 54.540901, 52.373783>,  <50.183239, 54.460205, 52.066341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.940407, 54.540901, 52.373783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587459, -0.537405, 0.605052,
		0.535116, 0.818839, 0.207734,
		-0.607078, 0.201738, 0.768608,
		49.758282, 54.601421, 52.604366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.874260, 54.847713, 51.728432>,  <50.183239, 54.460205, 52.066341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.874260, 54.847713, 51.728432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.186798, 54.746769, 51.956749>,  <51.374321, 54.686203, 52.093739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.186798, 54.746769, 51.956749>,  <50.874260, 54.847713, 51.728432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.186798, 54.746769, 51.956749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222252, -0.967153, -0.123369,
		0.583178, -0.030466, -0.811773,
		0.781350, -0.252364, 0.570793,
		51.421204, 54.671059, 52.127987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.279079, 54.431698, 51.326847>,  <50.874260, 54.847713, 51.728432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.279079, 54.431698, 51.326847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.327862, 54.340805, 51.713318>,  <51.357132, 54.286270, 51.945198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.327862, 54.340805, 51.713318>,  <51.279079, 54.431698, 51.326847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.327862, 54.340805, 51.713318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115378, -0.970088, -0.213584,
		0.985806, -0.085427, -0.144526,
		0.121957, -0.227228, 0.966175,
		51.364449, 54.272636, 52.003170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.759457, 53.841770, 51.481598>,  <51.279079, 54.431698, 51.326847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.759457, 53.841770, 51.481598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.496536, 53.872131, 51.781517>,  <51.338783, 53.890347, 51.961468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.496536, 53.872131, 51.781517>,  <51.759457, 53.841770, 51.481598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.496536, 53.872131, 51.781517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222971, -0.969959, -0.097277,
		0.719892, -0.231124, 0.654476,
		-0.657298, 0.075900, 0.749799,
		51.299347, 53.894901, 52.006458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.828304, 53.277229, 52.055458>,  <51.759457, 53.841770, 51.481598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.828304, 53.277229, 52.055458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.448456, 53.398415, 52.023365>,  <51.220547, 53.471127, 52.004108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.448456, 53.398415, 52.023365>,  <51.828304, 53.277229, 52.055458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.448456, 53.398415, 52.023365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285415, -0.941739, -0.177949,
		-0.129467, -0.146085, 0.980764,
		-0.949619, 0.302964, -0.080229,
		51.163570, 53.489304, 51.999294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.355934, 52.758587, 51.981094>,  <51.828304, 53.277229, 52.055458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.355934, 52.758587, 51.981094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.441216, 53.108143, 52.155849>,  <52.492386, 53.317875, 52.260700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.441216, 53.108143, 52.155849>,  <52.355934, 52.758587, 51.981094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.441216, 53.108143, 52.155849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.884444, -0.362619, 0.293712,
		0.415093, 0.323777, -0.850215,
		0.213207, 0.873885, 0.436884,
		52.505177, 53.370308, 52.286915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.947113, 53.225586, 51.706123>,  <52.355934, 52.758587, 51.981094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.947113, 53.225586, 51.706123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.895622, 53.269421, 52.100365>,  <52.864727, 53.295723, 52.336910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.895622, 53.269421, 52.100365>,  <52.947113, 53.225586, 51.706123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.895622, 53.269421, 52.100365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886179, -0.433376, 0.163929,
		0.445103, 0.894525, -0.041328,
		-0.128728, 0.109589, 0.985606,
		52.857002, 53.302296, 52.396046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.364269, 53.744141, 51.998947>,  <52.947113, 53.225586, 51.706123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.364269, 53.744141, 51.998947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.282681, 53.447224, 52.254257>,  <53.233727, 53.269073, 52.407444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.282681, 53.447224, 52.254257>,  <53.364269, 53.744141, 51.998947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.282681, 53.447224, 52.254257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974440, -0.216633, 0.059464,
		0.094132, 0.634091, 0.767507,
		-0.203973, -0.742293, 0.638276,
		53.221489, 53.224537, 52.445740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.928513, 53.665779, 52.321903>,  <53.364269, 53.744141, 51.998947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.928513, 53.665779, 52.321903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.766945, 53.332283, 52.472488>,  <53.670006, 53.132183, 52.562840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.766945, 53.332283, 52.472488>,  <53.928513, 53.665779, 52.321903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.766945, 53.332283, 52.472488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914403, -0.355904, 0.192873,
		-0.026821, 0.422145, 0.906131,
		-0.403916, -0.833742, 0.376465,
		53.645771, 53.082161, 52.585426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.511509, 53.927345, 52.684364>,  <53.928513, 53.665779, 52.321903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.511509, 53.927345, 52.684364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.882744, 53.785606, 52.638615>,  <55.105484, 53.700562, 52.611164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.882744, 53.785606, 52.638615>,  <54.511509, 53.927345, 52.684364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.882744, 53.785606, 52.638615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371162, 0.855869, 0.360177,
		-0.029737, -0.376730, 0.925846,
		0.928092, -0.354349, -0.114377,
		55.161171, 53.679302, 52.604301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.951122, 53.872044, 53.342396>,  <54.511509, 53.927345, 52.684364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.951122, 53.872044, 53.342396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.184502, 53.911476, 53.019936>,  <55.324528, 53.935135, 52.826462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.184502, 53.911476, 53.019936>,  <54.951122, 53.872044, 53.342396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.184502, 53.911476, 53.019936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370317, 0.851122, 0.372097,
		0.722812, -0.515628, 0.460076,
		0.583445, 0.098583, -0.806147,
		55.359535, 53.941051, 52.778091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.676193, 53.972198, 53.424858>,  <54.951122, 53.872044, 53.342396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.676193, 53.972198, 53.424858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.585220, 54.146957, 53.076744>,  <55.530636, 54.251812, 52.867874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.585220, 54.146957, 53.076744>,  <55.676193, 53.972198, 53.424858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.585220, 54.146957, 53.076744> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459102, 0.836256, 0.299835,
		0.858778, -0.331357, -0.390772,
		-0.227433, 0.436896, -0.870285,
		55.516991, 54.278027, 52.815659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.241348, 54.443996, 53.372540>,  <55.676193, 53.972198, 53.424858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.241348, 54.443996, 53.372540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.938118, 54.557411, 53.137619>,  <55.756180, 54.625462, 52.996666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.938118, 54.557411, 53.137619>,  <56.241348, 54.443996, 53.372540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.938118, 54.557411, 53.137619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293985, 0.952427, 0.080346,
		0.582141, -0.111748, -0.805372,
		-0.758080, 0.283540, -0.587299,
		55.710693, 54.642471, 52.961430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.653252, 53.956860, 53.781681>,  <56.241348, 54.443996, 53.372540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.653252, 53.956860, 53.781681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.976471, 53.723099, 53.811432>,  <57.170403, 53.582844, 53.829281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.976471, 53.723099, 53.811432>,  <56.653252, 53.956860, 53.781681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.976471, 53.723099, 53.811432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583916, 0.811244, 0.030416,
		-0.078110, 0.018850, 0.996766,
		0.808048, -0.584403, 0.074373,
		57.218884, 53.547779, 53.833744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.963997, 53.996155, 54.414120>,  <56.653252, 53.956860, 53.781681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.963997, 53.996155, 54.414120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.232040, 53.891769, 54.136169>,  <57.392868, 53.829136, 53.969398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.232040, 53.891769, 54.136169>,  <56.963997, 53.996155, 54.414120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.232040, 53.891769, 54.136169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465313, 0.877064, 0.119342,
		0.578303, -0.403305, 0.709162,
		0.670112, -0.260966, -0.694872,
		57.433075, 53.813480, 53.927708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.564613, 54.353142, 54.613075>,  <56.963997, 53.996155, 54.414120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.564613, 54.353142, 54.613075> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.650635, 54.281982, 54.228970>,  <57.702248, 54.239285, 53.998508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.650635, 54.281982, 54.228970>,  <57.564613, 54.353142, 54.613075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.650635, 54.281982, 54.228970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441825, 0.894611, -0.066793,
		0.870944, -0.409905, 0.270988,
		0.215050, -0.177903, -0.960262,
		57.715149, 54.228611, 53.940891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.225121, 54.707958, 54.536575>,  <57.564613, 54.353142, 54.613075>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.225121, 54.707958, 54.536575> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.007332, 54.708771, 54.201065>,  <57.876659, 54.709259, 53.999760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.007332, 54.708771, 54.201065>,  <58.225121, 54.707958, 54.536575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.007332, 54.708771, 54.201065> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400654, 0.879170, -0.257945,
		0.736901, -0.476503, -0.479502,
		-0.544475, 0.002034, -0.838774,
		57.843990, 54.709381, 53.949432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.599636, 54.636013, 53.833042>,  <58.225121, 54.707958, 54.536575>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.599636, 54.636013, 53.833042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.265045, 54.854919, 53.821659>,  <58.064289, 54.986263, 53.814827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.265045, 54.854919, 53.821659>,  <58.599636, 54.636013, 53.833042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.265045, 54.854919, 53.821659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510365, 0.759060, -0.404173,
		-0.199586, -0.352606, -0.914240,
		-0.836476, 0.547263, -0.028461,
		58.014103, 55.019100, 53.813122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.490711, 55.075619, 53.226295>,  <58.599636, 54.636013, 53.833042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.490711, 55.075619, 53.226295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.315872, 55.272774, 53.527229>,  <58.210968, 55.391068, 53.707790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.315872, 55.272774, 53.527229>,  <58.490711, 55.075619, 53.226295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.315872, 55.272774, 53.527229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441617, 0.846311, -0.297880,
		-0.783529, 0.202040, -0.587590,
		-0.437100, 0.492887, 0.752333,
		58.184742, 55.420639, 53.752930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.437927, 55.159843, 52.479542>,  <58.490711, 55.075619, 53.226295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.437927, 55.159843, 52.479542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.458916, 55.506290, 52.280708>,  <58.471508, 55.714157, 52.161407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.458916, 55.506290, 52.280708>,  <58.437927, 55.159843, 52.479542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.458916, 55.506290, 52.280708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.990014, -0.020099, -0.139526,
		-0.130837, 0.499442, 0.856411,
		0.052472, 0.866114, -0.497084,
		58.474659, 55.766125, 52.131584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.939461, 55.625015, 52.715412>,  <58.437927, 55.159843, 52.479542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.939461, 55.625015, 52.715412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.039810, 55.701912, 52.335915>,  <58.100018, 55.748051, 52.108215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.039810, 55.701912, 52.335915>,  <57.939461, 55.625015, 52.715412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.039810, 55.701912, 52.335915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.932767, -0.214084, -0.290025,
		-0.258864, 0.957712, 0.125609,
		0.250870, 0.192240, -0.948740,
		58.115070, 55.759583, 52.051292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.387276, 56.138264, 52.847633>,  <57.939461, 55.625015, 52.715412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.387276, 56.138264, 52.847633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.708786, 55.944530, 52.985832>,  <58.901691, 55.828293, 53.068752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.708786, 55.944530, 52.985832>,  <58.387276, 56.138264, 52.847633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.708786, 55.944530, 52.985832> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239526, -0.795038, -0.557263,
		0.544585, 0.365158, -0.755041,
		0.803775, -0.484329, 0.345501,
		58.949917, 55.799232, 53.089481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.929214, 55.961109, 52.353802>,  <58.387276, 56.138264, 52.847633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.929214, 55.961109, 52.353802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.951035, 55.683594, 52.641045>,  <58.964127, 55.517086, 52.813393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.951035, 55.683594, 52.641045>,  <58.929214, 55.961109, 52.353802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.951035, 55.683594, 52.641045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297057, -0.697896, -0.651689,
		0.953300, -0.177768, -0.244168,
		0.054554, -0.693787, 0.718112,
		58.967400, 55.475456, 52.856480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.389889, 56.050743, 52.787617>,  <58.929214, 55.961109, 52.353802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.389889, 56.050743, 52.787617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.411530, 56.353477, 53.048164>,  <59.424515, 56.535118, 53.204491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.411530, 56.353477, 53.048164>,  <59.389889, 56.050743, 52.787617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.411530, 56.353477, 53.048164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743063, 0.405241, -0.532576,
		-0.667031, 0.512819, -0.540449,
		0.054103, 0.756833, 0.651365,
		59.427761, 56.580528, 53.243572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.453861, 56.732555, 52.494835>,  <59.389889, 56.050743, 52.787617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.453861, 56.732555, 52.494835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.653542, 56.743099, 52.841267>,  <59.773350, 56.749424, 53.049126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.653542, 56.743099, 52.841267>,  <59.453861, 56.732555, 52.494835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.653542, 56.743099, 52.841267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698799, 0.578747, -0.420395,
		-0.512325, 0.815081, 0.270492,
		0.499203, 0.026359, 0.866084,
		59.803303, 56.751007, 53.101093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.622055, 57.417866, 52.438942>,  <59.453861, 56.732555, 52.494835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.622055, 57.417866, 52.438942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.866028, 57.187496, 52.656673>,  <60.012409, 57.049274, 52.787312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.866028, 57.187496, 52.656673>,  <59.622055, 57.417866, 52.438942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.866028, 57.187496, 52.656673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748132, 0.191981, -0.635170,
		0.261311, 0.794639, 0.547965,
		0.609930, -0.575928, 0.544328,
		60.049007, 57.014717, 52.819973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.983871, 56.917747, 51.998009>,  <59.622055, 57.417866, 52.438942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.983871, 56.917747, 51.998009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.324608, 57.120037, 51.943451>,  <60.529049, 57.241409, 51.910717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.324608, 57.120037, 51.943451>,  <59.983871, 56.917747, 51.998009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.324608, 57.120037, 51.943451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.466395, -0.613799, 0.636967,
		0.238409, -0.606212, -0.758728,
		0.851843, 0.505725, -0.136399,
		60.580162, 57.271755, 51.902531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.526253, 56.568554, 52.036442>,  <59.983871, 56.917747, 51.998009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.526253, 56.568554, 52.036442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.752380, 56.891392, 52.104580>,  <60.888058, 57.085094, 52.145462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.752380, 56.891392, 52.104580>,  <60.526253, 56.568554, 52.036442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.752380, 56.891392, 52.104580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312611, -0.400733, 0.861213,
		0.763343, -0.433605, -0.478847,
		0.565316, 0.807094, 0.170347,
		60.921974, 57.133518, 52.155685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.285160, 56.435760, 52.108330>,  <60.526253, 56.568554, 52.036442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.285160, 56.435760, 52.108330> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.198212, 56.761929, 52.322929>,  <61.146042, 56.957630, 52.451691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.198212, 56.761929, 52.322929>,  <61.285160, 56.435760, 52.108330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.198212, 56.761929, 52.322929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148778, -0.515544, 0.843848,
		0.964684, 0.263247, -0.009254,
		-0.217370, 0.815424, 0.536502,
		61.132999, 57.006557, 52.483879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.598301, 56.258331, 52.802246>,  <61.285160, 56.435760, 52.108330>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.598301, 56.258331, 52.802246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.376686, 56.587593, 52.851974>,  <61.243717, 56.785152, 52.881813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.376686, 56.587593, 52.851974>,  <61.598301, 56.258331, 52.802246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.376686, 56.587593, 52.851974> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016942, -0.138159, 0.990265,
		0.832321, 0.550748, 0.062599,
		-0.554035, 0.823158, 0.124323,
		61.210476, 56.834541, 52.889271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.920322, 56.840412, 53.294647>,  <61.598301, 56.258331, 52.802246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.920322, 56.840412, 53.294647> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.520370, 56.846088, 53.292068>,  <61.280399, 56.849495, 53.290520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.520370, 56.846088, 53.292068>,  <61.920322, 56.840412, 53.294647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.520370, 56.846088, 53.292068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006690, -0.017302, 0.999828,
		0.014073, 0.999750, 0.017394,
		-0.999879, 0.014187, -0.006445,
		61.220406, 56.850346, 53.290134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.647343, 56.692196, 52.831692>,  <61.920322, 56.840412, 53.294647>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.647343, 56.692196, 52.831692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.817589, 57.004688, 53.014351>,  <62.919735, 57.192184, 53.123947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.817589, 57.004688, 53.014351>,  <62.647343, 56.692196, 52.831692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.817589, 57.004688, 53.014351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.524464, -0.624205, 0.579057,
		0.737420, -0.006959, -0.675399,
		0.425617, 0.781230, 0.456651,
		62.945274, 57.239056, 53.151348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.367550, 56.487148, 52.850636>,  <62.647343, 56.692196, 52.831692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.367550, 56.487148, 52.850636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.216103, 56.738247, 53.122688>,  <63.125233, 56.888905, 53.285919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.216103, 56.738247, 53.122688>,  <63.367550, 56.487148, 52.850636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.216103, 56.738247, 53.122688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149034, -0.683905, 0.714187,
		0.913475, 0.371768, 0.165384,
		-0.378619, 0.627744, 0.680136,
		63.102516, 56.926571, 53.326729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.892830, 56.631359, 53.310375>,  <63.367550, 56.487148, 52.850636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.892830, 56.631359, 53.310375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.516563, 56.625572, 53.445984>,  <63.290802, 56.622101, 53.527348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.516563, 56.625572, 53.445984>,  <63.892830, 56.631359, 53.310375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.516563, 56.625572, 53.445984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200985, -0.828737, 0.522303,
		0.273405, 0.559452, 0.782473,
		-0.940667, -0.014465, 0.339022,
		63.234364, 56.621231, 53.547691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.893753, 56.517975, 54.077911>,  <63.892830, 56.631359, 53.310375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.893753, 56.517975, 54.077911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.576851, 56.364220, 53.888359>,  <63.386707, 56.271965, 53.774628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.576851, 56.364220, 53.888359>,  <63.893753, 56.517975, 54.077911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.576851, 56.364220, 53.888359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262167, -0.915726, 0.304489,
		-0.550992, 0.116997, 0.826268,
		-0.792260, -0.384391, -0.473885,
		63.339172, 56.248901, 53.746193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.891644, 55.871380, 53.980938>,  <63.893753, 56.517975, 54.077911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.891644, 55.871380, 53.980938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.151299, 56.161495, 53.889214>,  <64.307091, 56.335564, 53.834179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.151299, 56.161495, 53.889214>,  <63.891644, 55.871380, 53.980938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.151299, 56.161495, 53.889214> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619871, -0.329650, 0.712103,
		0.440885, -0.604396, -0.663571,
		0.649138, 0.725284, -0.229310,
		64.346039, 56.379082, 53.820419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.587181, 55.729538, 53.654526>,  <63.891644, 55.871380, 53.980938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.587181, 55.729538, 53.654526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.597832, 56.045105, 53.900093>,  <64.604225, 56.234444, 54.047436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.597832, 56.045105, 53.900093>,  <64.587181, 55.729538, 53.654526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.597832, 56.045105, 53.900093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571866, -0.515741, 0.637950,
		0.819915, 0.334094, -0.464889,
		0.026627, 0.788919, 0.613921,
		64.605820, 56.281780, 54.084270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.279083, 55.984779, 53.656670>,  <64.587181, 55.729538, 53.654526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.279083, 55.984779, 53.656670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.019424, 55.996964, 53.960690>,  <64.863625, 56.004276, 54.143101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.019424, 55.996964, 53.960690>,  <65.279083, 55.984779, 53.656670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.019424, 55.996964, 53.960690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486032, -0.752009, 0.445259,
		0.585126, 0.658448, 0.473364,
		-0.649154, 0.030463, 0.760047,
		64.824677, 56.006104, 54.188705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.576630, 56.174381, 54.410934>,  <65.279083, 55.984779, 53.656670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.576630, 56.174381, 54.410934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.264008, 55.925293, 54.425819>,  <65.076431, 55.775841, 54.434750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.264008, 55.925293, 54.425819>,  <65.576630, 56.174381, 54.410934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.264008, 55.925293, 54.425819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568321, -0.686149, 0.454104,
		-0.257247, 0.376057, 0.890171,
		-0.781560, -0.622720, 0.037212,
		65.029541, 55.738476, 54.436981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.921707, 56.356327, 54.912537>,  <65.576630, 56.174381, 54.410934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.921707, 56.356327, 54.912537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.021576, 56.132431, 54.596474>,  <66.081497, 55.998093, 54.406837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.021576, 56.132431, 54.596474>,  <65.921707, 56.356327, 54.912537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.021576, 56.132431, 54.596474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803848, -0.335158, 0.491424,
		-0.539899, -0.757864, 0.366268,
		0.249675, -0.559743, -0.790158,
		66.096481, 55.964508, 54.359425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.332932, 56.374882, 55.575306>,  <65.921707, 56.356327, 54.912537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.332932, 56.374882, 55.575306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.449699, 56.382072, 55.192795>,  <66.519760, 56.386387, 54.963287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.449699, 56.382072, 55.192795>,  <66.332932, 56.374882, 55.575306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.449699, 56.382072, 55.192795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950355, 0.107184, 0.292124,
		0.107738, -0.994078, 0.014241,
		0.291920, 0.017939, -0.956274,
		66.537277, 56.387463, 54.905910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.747025, 55.858761, 55.301590>,  <66.332932, 56.374882, 55.575306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.747025, 55.858761, 55.301590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.816933, 56.215340, 55.134361>,  <66.858879, 56.429287, 55.034023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.816933, 56.215340, 55.134361>,  <66.747025, 55.858761, 55.301590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.816933, 56.215340, 55.134361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849990, 0.077718, 0.521034,
		0.496966, -0.446412, -0.744138,
		0.174763, 0.891446, -0.418069,
		66.869362, 56.482773, 55.008942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.402534, 55.861103, 55.274471>,  <66.747025, 55.858761, 55.301590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.402534, 55.861103, 55.274471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.307625, 56.249676, 55.276649>,  <67.250679, 56.482819, 55.277954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.307625, 56.249676, 55.276649>,  <67.402534, 55.861103, 55.274471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.307625, 56.249676, 55.276649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689825, 0.164536, 0.705031,
		0.683993, 0.171033, -0.709155,
		-0.237265, 0.971430, 0.005442,
		67.236443, 56.541103, 55.278282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.043564, 56.216675, 55.169125>,  <67.402534, 55.861103, 55.274471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.043564, 56.216675, 55.169125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.778191, 56.460785, 55.342293>,  <67.618965, 56.607250, 55.446194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.778191, 56.460785, 55.342293>,  <68.043564, 56.216675, 55.169125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.778191, 56.460785, 55.342293> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709547, 0.329502, 0.622874,
		0.237478, 0.720411, -0.651622,
		-0.663436, 0.610275, 0.432916,
		67.579163, 56.643867, 55.472168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.315544, 56.873363, 55.058357>,  <68.043564, 56.216675, 55.169125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.315544, 56.873363, 55.058357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.075188, 56.846527, 55.376961>,  <67.930977, 56.830425, 55.568123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.075188, 56.846527, 55.376961>,  <68.315544, 56.873363, 55.058357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.075188, 56.846527, 55.376961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712960, 0.405561, 0.572021,
		-0.361411, 0.911602, -0.195865,
		-0.600891, -0.067091, 0.796510,
		67.894920, 56.826401, 55.615913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.067726, 57.496132, 55.334919>,  <68.315544, 56.873363, 55.058357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.067726, 57.496132, 55.334919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123085, 57.224709, 55.623474>,  <68.156303, 57.061855, 55.796608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.123085, 57.224709, 55.623474>,  <68.067726, 57.496132, 55.334919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.123085, 57.224709, 55.623474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704442, 0.579440, 0.409891,
		-0.696137, 0.451446, 0.558202,
		0.138401, -0.678561, 0.721387,
		68.164604, 57.021141, 55.839890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.006287, 57.696487, 56.104183>,  <68.067726, 57.496132, 55.334919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.006287, 57.696487, 56.104183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.259377, 57.398773, 56.018677>,  <68.411232, 57.220142, 55.967373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.259377, 57.398773, 56.018677>,  <68.006287, 57.696487, 56.104183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.259377, 57.398773, 56.018677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.748950, 0.518006, 0.413212,
		-0.196815, -0.421551, 0.885189,
		0.632723, -0.744288, -0.213769,
		68.449196, 57.175488, 55.954548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.464851, 57.667904, 56.524639>,  <68.006287, 57.696487, 56.104183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.464851, 57.667904, 56.524639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.648163, 57.477116, 56.224648>,  <68.758148, 57.362644, 56.044651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.648163, 57.477116, 56.224648>,  <68.464851, 57.667904, 56.524639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.648163, 57.477116, 56.224648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796237, 0.595273, 0.107967,
		0.394948, -0.646644, 0.652585,
		0.458283, -0.476971, -0.749984,
		68.785645, 57.334023, 55.999653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.061638, 57.278446, 56.720501>,  <68.464851, 57.667904, 56.524639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.061638, 57.278446, 56.720501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.092377, 57.449753, 56.360352>,  <69.110825, 57.552536, 56.144260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.092377, 57.449753, 56.360352>,  <69.061638, 57.278446, 56.720501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.092377, 57.449753, 56.360352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.867280, 0.416771, 0.272266,
		0.491854, -0.801802, -0.339402,
		0.076851, 0.428271, -0.900377,
		69.115433, 57.578236, 56.090240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.266129, 57.656513, 57.405136>,  <69.061638, 57.278446, 56.720501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.266129, 57.656513, 57.405136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.545258, 57.590374, 57.683907>,  <69.712738, 57.550690, 57.851170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.545258, 57.590374, 57.683907>,  <69.266129, 57.656513, 57.405136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.545258, 57.590374, 57.683907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485157, -0.606696, -0.629716,
		0.526942, 0.777549, -0.343148,
		0.697821, -0.165343, 0.696927,
		69.754601, 57.540771, 57.892986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.004890, 57.713291, 57.117817>,  <69.266129, 57.656513, 57.405136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.004890, 57.713291, 57.117817> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.031059, 57.485077, 57.445282>,  <70.046761, 57.348148, 57.641762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.031059, 57.485077, 57.445282>,  <70.004890, 57.713291, 57.117817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.031059, 57.485077, 57.445282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493081, -0.694777, -0.523598,
		0.867520, 0.437925, 0.235862,
		0.065425, -0.570531, 0.818666,
		70.050690, 57.313919, 57.690880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.687851, 57.584423, 57.318798>,  <70.004890, 57.713291, 57.117817>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.687851, 57.584423, 57.318798> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.459869, 57.273529, 57.425430>,  <70.323082, 57.086994, 57.489410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.459869, 57.273529, 57.425430>,  <70.687851, 57.584423, 57.318798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.459869, 57.273529, 57.425430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592499, -0.613535, -0.522034,
		0.569296, -0.139589, 0.810196,
		-0.569954, -0.777232, 0.266577,
		70.288879, 57.040359, 57.505402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.307648, 57.038605, 57.352253>,  <70.687851, 57.584423, 57.318798>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.307648, 57.038605, 57.352253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.996864, 56.915127, 57.132782>,  <70.810394, 56.841038, 57.001099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.996864, 56.915127, 57.132782>,  <71.307648, 57.038605, 57.352253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.996864, 56.915127, 57.132782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330167, 0.941859, -0.062379,
		0.536033, 0.132689, -0.833704,
		-0.776955, -0.308699, -0.548677,
		70.763779, 56.822517, 56.968178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.907646, 57.310524, 57.203426>,  <71.307648, 57.038605, 57.352253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.907646, 57.310524, 57.203426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.955627, 57.704147, 57.255936>,  <71.984413, 57.940323, 57.287441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.955627, 57.704147, 57.255936>,  <71.907646, 57.310524, 57.203426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.955627, 57.704147, 57.255936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122790, -0.145921, 0.981647,
		0.985158, -0.101624, -0.138335,
		0.119945, 0.984063, 0.131277,
		71.991608, 57.999367, 57.295319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.563446, 57.511497, 57.473820>,  <71.907646, 57.310524, 57.203426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.563446, 57.511497, 57.473820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.298325, 57.788834, 57.586937>,  <72.139252, 57.955235, 57.654808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.298325, 57.788834, 57.586937>,  <72.563446, 57.511497, 57.473820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.298325, 57.788834, 57.586937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330680, -0.067811, 0.941304,
		0.671822, 0.717411, -0.184329,
		-0.662802, 0.693342, 0.282790,
		72.099487, 57.996838, 57.671776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.968178, 57.988510, 57.808926>,  <72.563446, 57.511497, 57.473820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.968178, 57.988510, 57.808926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.591370, 57.934082, 57.931610>,  <72.365280, 57.901424, 58.005222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.591370, 57.934082, 57.931610>,  <72.968178, 57.988510, 57.808926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.591370, 57.934082, 57.931610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329113, -0.196636, 0.923590,
		-0.065358, 0.970989, 0.230017,
		-0.942026, -0.136065, 0.306713,
		72.308762, 57.893261, 58.023624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.914604, 58.484051, 58.347839>,  <72.968178, 57.988510, 57.808926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.914604, 58.484051, 58.347839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.660553, 58.178352, 58.392624>,  <72.508118, 57.994934, 58.419495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.660553, 58.178352, 58.392624>,  <72.914604, 58.484051, 58.347839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.660553, 58.178352, 58.392624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391173, -0.193268, 0.899795,
		-0.666025, 0.615286, 0.421703,
		-0.635133, -0.764245, 0.111962,
		72.470016, 57.949078, 58.426212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.427452, 58.481735, 58.960426>,  <72.914604, 58.484051, 58.347839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.427452, 58.481735, 58.960426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.493141, 58.096638, 58.874489>,  <72.532555, 57.865578, 58.822926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.493141, 58.096638, 58.874489>,  <72.427452, 58.481735, 58.960426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.493141, 58.096638, 58.874489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264265, -0.166896, 0.949900,
		-0.950366, -0.212769, 0.227012,
		0.164222, -0.962743, -0.214840,
		72.542404, 57.807816, 58.810036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.965279, 58.095531, 59.370602>,  <72.427452, 58.481735, 58.960426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.965279, 58.095531, 59.370602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.319199, 57.940514, 59.267105>,  <72.531548, 57.847504, 59.205009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.319199, 57.940514, 59.267105>,  <71.965279, 58.095531, 59.370602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.319199, 57.940514, 59.267105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243754, -0.088298, 0.965809,
		-0.397137, -0.917614, 0.016339,
		0.884797, -0.387541, -0.258739,
		72.584641, 57.824253, 59.189484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.162331, 57.281147, 59.522026>,  <71.965279, 58.095531, 59.370602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.162331, 57.281147, 59.522026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.439819, 57.568817, 59.537636>,  <72.606316, 57.741421, 59.547001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.439819, 57.568817, 59.537636>,  <72.162331, 57.281147, 59.522026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.439819, 57.568817, 59.537636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042575, -0.095035, 0.994563,
		0.718978, -0.688295, -0.096547,
		0.693728, 0.719179, 0.039024,
		72.647934, 57.784573, 59.549343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.695328, 57.178581, 59.905758>,  <72.162331, 57.281147, 59.522026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.695328, 57.178581, 59.905758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675629, 57.578011, 59.913963>,  <72.663811, 57.817669, 59.918884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.675629, 57.578011, 59.913963>,  <72.695328, 57.178581, 59.905758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.675629, 57.578011, 59.913963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075706, -0.016744, 0.996990,
		0.995913, 0.050657, -0.074773,
		-0.049253, 0.998576, 0.020510,
		72.660851, 57.877583, 59.920116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.038994, 57.446335, 60.559082>,  <72.695328, 57.178581, 59.905758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.038994, 57.446335, 60.559082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.801224, 57.739525, 60.426781>,  <72.658562, 57.915440, 60.347401>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.801224, 57.739525, 60.426781>,  <73.038994, 57.446335, 60.559082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.801224, 57.739525, 60.426781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267461, 0.207685, 0.940920,
		0.758362, 0.647780, 0.072586,
		-0.594434, 0.732972, -0.330757,
		72.622894, 57.959415, 60.327553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 110.000000>,  <110.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 110.000000, 0.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<110.000000, 0.000000, 110.000000>,  <110.000000, 0.000000, 0.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 110.000000, 0.000000>,  <0.000000, 110.000000, 110.000000>, 0.550000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
