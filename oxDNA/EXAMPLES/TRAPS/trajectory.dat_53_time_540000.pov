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
	<35.954529, 52.725327, 49.935963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050308, 52.413101, 49.705002>,  <36.107777, 52.225765, 49.566425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.050308, 52.413101, 49.705002>,  <35.954529, 52.725327, 49.935963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050308, 52.413101, 49.705002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818714, 0.481999, -0.312066,
		0.521892, -0.398001, 0.754470,
		0.239451, -0.780560, -0.577400,
		36.122143, 52.178932, 49.531780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.697033, 52.568348, 49.994118>,  <35.954529, 52.725327, 49.935963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.697033, 52.568348, 49.994118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594910, 52.404209, 49.643932>,  <36.533638, 52.305725, 49.433823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594910, 52.404209, 49.643932>,  <36.697033, 52.568348, 49.994118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594910, 52.404209, 49.643932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681984, 0.565411, -0.463907,
		0.685359, -0.715488, 0.135500,
		-0.255306, -0.410351, -0.875461,
		36.518318, 52.281105, 49.381294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261803, 52.200916, 49.598171>,  <36.697033, 52.568348, 49.994118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261803, 52.200916, 49.598171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981167, 52.330429, 49.344261>,  <36.812786, 52.408134, 49.191914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.981167, 52.330429, 49.344261>,  <37.261803, 52.200916, 49.598171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981167, 52.330429, 49.344261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642276, 0.673160, -0.366520,
		0.308636, -0.664849, -0.680235,
		-0.701587, 0.323778, -0.634778,
		36.770691, 52.427563, 49.153828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.609665, 52.085075, 48.975510>,  <37.261803, 52.200916, 49.598171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.609665, 52.085075, 48.975510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337910, 52.378513, 48.981960>,  <37.174854, 52.554577, 48.985832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.337910, 52.378513, 48.981960>,  <37.609665, 52.085075, 48.975510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.337910, 52.378513, 48.981960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711044, 0.663612, -0.232453,
		-0.181231, -0.146458, -0.972474,
		-0.679390, 0.733600, 0.016129,
		37.134094, 52.598595, 48.986797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.790779, 52.634602, 48.456898>,  <37.609665, 52.085075, 48.975510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.790779, 52.634602, 48.456898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560307, 52.771858, 48.753620>,  <37.422024, 52.854210, 48.931652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.560307, 52.771858, 48.753620>,  <37.790779, 52.634602, 48.456898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.560307, 52.771858, 48.753620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629227, 0.765469, 0.134652,
		-0.521624, 0.544347, -0.656959,
		-0.576179, 0.343139, 0.741804,
		37.387451, 52.874802, 48.976162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.432915, 53.362278, 48.315311>,  <37.790779, 52.634602, 48.456898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.432915, 53.362278, 48.315311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508408, 53.283119, 48.700066>,  <37.553703, 53.235622, 48.930916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.508408, 53.283119, 48.700066>,  <37.432915, 53.362278, 48.315311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.508408, 53.283119, 48.700066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507061, 0.858453, 0.077125,
		-0.840992, 0.473176, 0.262368,
		0.188736, -0.197898, 0.961881,
		37.565029, 53.223751, 48.988628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.888264, 53.882801, 48.465359>,  <37.432915, 53.362278, 48.315311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.888264, 53.882801, 48.465359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922997, 53.669941, 48.802231>,  <37.943836, 53.542225, 49.004356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.922997, 53.669941, 48.802231>,  <37.888264, 53.882801, 48.465359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922997, 53.669941, 48.802231> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732686, 0.606909, 0.307949,
		-0.675005, 0.590318, 0.442599,
		0.086830, -0.532153, 0.842184,
		37.949047, 53.510296, 49.054886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.894943, 54.394146, 49.104832>,  <37.888264, 53.882801, 48.465359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.894943, 54.394146, 49.104832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085106, 54.042641, 49.088013>,  <38.199203, 53.831738, 49.077923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085106, 54.042641, 49.088013>,  <37.894943, 54.394146, 49.104832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085106, 54.042641, 49.088013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860793, 0.454751, 0.228554,
		-0.181724, -0.144848, 0.972623,
		0.475407, -0.878761, -0.042045,
		38.227730, 53.779011, 49.075397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381924, 54.473911, 49.632675>,  <37.894943, 54.394146, 49.104832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381924, 54.473911, 49.632675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471539, 54.186672, 49.369118>,  <38.525307, 54.014328, 49.210983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.471539, 54.186672, 49.369118>,  <38.381924, 54.473911, 49.632675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471539, 54.186672, 49.369118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940695, 0.336065, -0.046403,
		0.254752, -0.609418, 0.750807,
		0.224041, -0.718102, -0.658890,
		38.538750, 53.971241, 49.171452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105644, 54.499989, 49.528927>,  <38.381924, 54.473911, 49.632675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105644, 54.499989, 49.528927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994267, 54.251575, 49.235863>,  <38.927441, 54.102528, 49.060024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.994267, 54.251575, 49.235863>,  <39.105644, 54.499989, 49.528927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994267, 54.251575, 49.235863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912838, 0.066094, -0.402938,
		0.298661, -0.780994, 0.548497,
		-0.278440, -0.621031, -0.732661,
		38.910736, 54.065266, 49.016064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.590385, 54.918755, 49.211533>,  <39.105644, 54.499989, 49.528927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.590385, 54.918755, 49.211533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520321, 54.930862, 49.605164>,  <39.478283, 54.938129, 49.841343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.520321, 54.930862, 49.605164>,  <39.590385, 54.918755, 49.211533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.520321, 54.930862, 49.605164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919656, -0.351819, 0.174520,
		0.351499, 0.935579, 0.033784,
		-0.175163, 0.030274, 0.984074,
		39.467773, 54.939945, 49.900387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.074005, 55.367352, 49.566719>,  <39.590385, 54.918755, 49.211533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.074005, 55.367352, 49.566719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925282, 55.049728, 49.759064>,  <39.836048, 54.859154, 49.874470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925282, 55.049728, 49.759064>,  <40.074005, 55.367352, 49.566719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925282, 55.049728, 49.759064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.885017, -0.459550, -0.074558,
		0.280184, 0.397853, 0.873619,
		-0.371808, -0.794057, 0.480865,
		39.813740, 54.811512, 49.903324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.585419, 54.903011, 49.221027>,  <40.074005, 55.367352, 49.566719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.585419, 54.903011, 49.221027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746597, 54.543888, 49.292099>,  <40.843304, 54.328415, 49.334743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.746597, 54.543888, 49.292099>,  <40.585419, 54.903011, 49.221027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.746597, 54.543888, 49.292099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.871179, 0.435756, 0.226195,
		-0.280506, 0.063649, 0.957740,
		0.402944, -0.897812, 0.177682,
		40.867481, 54.274544, 49.345402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.753304, 54.653515, 50.039593>,  <40.585419, 54.903011, 49.221027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.753304, 54.653515, 50.039593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982506, 54.564110, 49.724197>,  <41.120026, 54.510468, 49.534962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.982506, 54.564110, 49.724197>,  <40.753304, 54.653515, 50.039593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.982506, 54.564110, 49.724197> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715287, 0.606005, 0.348027,
		0.400038, -0.763414, 0.507118,
		0.573005, -0.223511, -0.788485,
		41.154408, 54.497055, 49.487652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386795, 54.839367, 49.733379>,  <40.753304, 54.653515, 50.039593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386795, 54.839367, 49.733379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547771, 54.814590, 50.098717>,  <41.644356, 54.799725, 50.317921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.547771, 54.814590, 50.098717>,  <41.386795, 54.839367, 49.733379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.547771, 54.814590, 50.098717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652592, 0.719101, -0.238781,
		-0.641999, 0.692139, 0.329818,
		0.402442, -0.061940, 0.913347,
		41.668503, 54.796009, 50.372723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.401237, 55.473183, 50.259815>,  <41.386795, 54.839367, 49.733379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.401237, 55.473183, 50.259815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713543, 55.226067, 50.297222>,  <41.900925, 55.077797, 50.319668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.713543, 55.226067, 50.297222>,  <41.401237, 55.473183, 50.259815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.713543, 55.226067, 50.297222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614807, 0.732888, -0.291352,
		0.111457, 0.284972, 0.952034,
		0.780762, -0.617791, 0.093517,
		41.947773, 55.040730, 50.325275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.026443, 55.836769, 50.525097>,  <41.401237, 55.473183, 50.259815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.026443, 55.836769, 50.525097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123814, 55.524979, 50.294220>,  <42.182236, 55.337902, 50.155693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.123814, 55.524979, 50.294220>,  <42.026443, 55.836769, 50.525097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.123814, 55.524979, 50.294220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489772, 0.612437, -0.620518,
		0.837177, -0.131643, 0.530852,
		0.243427, -0.779481, -0.577194,
		42.196842, 55.291134, 50.121063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428829, 56.078766, 51.062210>,  <42.026443, 55.836769, 50.525097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.428829, 56.078766, 51.062210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821484, 56.021542, 51.011726>,  <43.057076, 55.987206, 50.981438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.821484, 56.021542, 51.011726>,  <42.428829, 56.078766, 51.062210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.821484, 56.021542, 51.011726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165486, -0.309428, -0.936413,
		0.094913, 0.940100, -0.327420,
		0.981634, -0.143061, -0.126205,
		43.115974, 55.978622, 50.973866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.820957, 56.491589, 50.507805>,  <42.428829, 56.078766, 51.062210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.820957, 56.491589, 50.507805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987526, 56.132202, 50.563454>,  <43.087467, 55.916569, 50.596844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.987526, 56.132202, 50.563454>,  <42.820957, 56.491589, 50.507805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.987526, 56.132202, 50.563454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252082, -0.261121, -0.931810,
		0.873528, 0.352951, -0.335223,
		0.416417, -0.898466, 0.139123,
		43.112450, 55.862663, 50.605190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510616, 56.620560, 50.405087>,  <42.820957, 56.491589, 50.507805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510616, 56.620560, 50.405087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334042, 56.955074, 50.535172>,  <43.228096, 57.155781, 50.613224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.334042, 56.955074, 50.535172>,  <43.510616, 56.620560, 50.405087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.334042, 56.955074, 50.535172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531416, -0.048376, 0.845729,
		0.723001, 0.546159, -0.423060,
		-0.441437, 0.836283, 0.325213,
		43.201611, 57.205959, 50.632736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.954380, 56.954510, 50.816086>,  <43.510616, 56.620560, 50.405087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.954380, 56.954510, 50.816086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622078, 57.144505, 50.932175>,  <43.422695, 57.258503, 51.001827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.622078, 57.144505, 50.932175>,  <43.954380, 56.954510, 50.816086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.622078, 57.144505, 50.932175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423864, 0.201855, 0.882946,
		0.360807, 0.856528, -0.369023,
		-0.830757, 0.474989, 0.290220,
		43.372852, 57.287003, 51.019241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.024086, 57.707420, 50.926929>,  <43.954380, 56.954510, 50.816086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.024086, 57.707420, 50.926929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764927, 57.532150, 51.176163>,  <43.609432, 57.426987, 51.325703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.764927, 57.532150, 51.176163>,  <44.024086, 57.707420, 50.926929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.764927, 57.532150, 51.176163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627411, 0.156882, 0.762721,
		-0.431956, 0.885093, 0.173273,
		-0.647896, -0.438175, 0.623083,
		43.570557, 57.400696, 51.363087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.899647, 58.137352, 51.408215>,  <44.024086, 57.707420, 50.926929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.899647, 58.137352, 51.408215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898312, 57.764256, 51.552429>,  <43.897511, 57.540398, 51.638958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.898312, 57.764256, 51.552429>,  <43.899647, 58.137352, 51.408215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.898312, 57.764256, 51.552429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601980, 0.286019, 0.745529,
		-0.798504, 0.219522, 0.560536,
		-0.003336, -0.932739, 0.360535,
		43.897312, 57.484432, 51.660591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.853790, 58.148006, 52.153152>,  <43.899647, 58.137352, 51.408215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.853790, 58.148006, 52.153152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025787, 57.792915, 52.087379>,  <44.128986, 57.579861, 52.047916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.025787, 57.792915, 52.087379>,  <43.853790, 58.148006, 52.153152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.025787, 57.792915, 52.087379> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807303, 0.296529, 0.510228,
		-0.404187, -0.352139, 0.844175,
		0.429993, -0.887732, -0.164429,
		44.154785, 57.526596, 52.038052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.111137, 57.821198, 52.817554>,  <43.853790, 58.148006, 52.153152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.111137, 57.821198, 52.817554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339031, 57.696037, 52.513580>,  <44.475769, 57.620941, 52.331196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.339031, 57.696037, 52.513580>,  <44.111137, 57.821198, 52.817554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.339031, 57.696037, 52.513580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814685, 0.336701, 0.472146,
		0.108133, -0.888101, 0.446748,
		0.569734, -0.312904, -0.759931,
		44.509953, 57.602165, 52.285603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.337021, 57.826897, 53.574081>,  <44.111137, 57.821198, 52.817554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.337021, 57.826897, 53.574081> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096340, 57.583168, 53.367516>,  <43.951931, 57.436932, 53.243576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.096340, 57.583168, 53.367516>,  <44.337021, 57.826897, 53.574081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.096340, 57.583168, 53.367516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709218, 0.704968, -0.005444,
		0.367375, 0.362976, -0.856320,
		-0.601702, -0.609318, -0.516417,
		43.915829, 57.400372, 53.212589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106853, 57.895485, 53.590652>,  <44.337021, 57.826897, 53.574081>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106853, 57.895485, 53.590652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100269, 57.530441, 53.427254>,  <45.096321, 57.311413, 53.329216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.100269, 57.530441, 53.427254>,  <45.106853, 57.895485, 53.590652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.100269, 57.530441, 53.427254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.712734, 0.275822, -0.644928,
		0.701241, -0.301763, 0.645911,
		-0.016459, -0.912612, -0.408494,
		45.095333, 57.256657, 53.304707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610725, 58.343979, 53.431099>,  <45.106853, 57.895485, 53.590652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610725, 58.343979, 53.431099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280968, 58.564812, 53.381168>,  <45.083115, 58.697311, 53.351212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.280968, 58.564812, 53.381168>,  <45.610725, 58.343979, 53.431099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.280968, 58.564812, 53.381168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362154, -0.344999, 0.865922,
		0.434997, 0.759065, 0.484354,
		-0.824392, 0.552084, -0.124825,
		45.033649, 58.730438, 53.343719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.790543, 57.804947, 53.766151>,  <45.610725, 58.343979, 53.431099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.790543, 57.804947, 53.766151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732090, 57.854893, 54.158691>,  <45.697018, 57.884861, 54.394215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.732090, 57.854893, 54.158691>,  <45.790543, 57.804947, 53.766151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.732090, 57.854893, 54.158691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775335, -0.601655, 0.192007,
		0.614410, 0.788937, -0.008887,
		-0.146134, 0.124861, 0.981353,
		45.688251, 57.892349, 54.453098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.409138, 58.111454, 54.085865>,  <45.790543, 57.804947, 53.766151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.409138, 58.111454, 54.085865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211483, 57.893028, 54.356461>,  <46.092888, 57.761974, 54.518818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.211483, 57.893028, 54.356461>,  <46.409138, 58.111454, 54.085865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.211483, 57.893028, 54.356461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859369, -0.424556, 0.285021,
		0.131570, 0.722197, 0.679059,
		-0.494140, -0.546062, 0.676493,
		46.063240, 57.729210, 54.559410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.615833, 58.224987, 54.771175>,  <46.409138, 58.111454, 54.085865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.615833, 58.224987, 54.771175> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462116, 57.855724, 54.767323>,  <46.369884, 57.634167, 54.765011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.462116, 57.855724, 54.767323>,  <46.615833, 58.224987, 54.771175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.462116, 57.855724, 54.767323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870703, -0.365886, 0.328639,
		-0.306910, 0.117909, 0.944407,
		-0.384295, -0.923160, -0.009631,
		46.346828, 57.578777, 54.764435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.486786, 58.002209, 55.475151>,  <46.615833, 58.224987, 54.771175>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.486786, 58.002209, 55.475151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563751, 57.695015, 55.230797>,  <46.609932, 57.510700, 55.084187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.563751, 57.695015, 55.230797>,  <46.486786, 58.002209, 55.475151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.563751, 57.695015, 55.230797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804283, -0.233243, 0.546558,
		-0.562232, -0.596487, 0.572798,
		0.192413, -0.767985, -0.610882,
		46.621475, 57.464619, 55.047531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.567383, 57.262390, 55.856735>,  <46.486786, 58.002209, 55.475151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.567383, 57.262390, 55.856735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788025, 57.360096, 55.537720>,  <46.920410, 57.418720, 55.346310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.788025, 57.360096, 55.537720>,  <46.567383, 57.262390, 55.856735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.788025, 57.360096, 55.537720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832039, -0.093857, 0.546719,
		0.058691, -0.965155, -0.255011,
		0.551603, 0.244267, -0.797538,
		46.953506, 57.433376, 55.298458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.167175, 56.832901, 55.782215>,  <46.567383, 57.262390, 55.856735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.167175, 56.832901, 55.782215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243706, 57.169670, 55.580399>,  <47.289623, 57.371731, 55.459309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.243706, 57.169670, 55.580399>,  <47.167175, 56.832901, 55.782215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.243706, 57.169670, 55.580399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861826, 0.101909, 0.496860,
		0.469734, -0.529892, -0.706091,
		0.191325, 0.841920, -0.504545,
		47.301102, 57.422245, 55.429035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.962997, 56.979591, 55.587921>,  <47.167175, 56.832901, 55.782215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.962997, 56.979591, 55.587921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785858, 57.338203, 55.592415>,  <47.679573, 57.553371, 55.595112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.785858, 57.338203, 55.592415>,  <47.962997, 56.979591, 55.587921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.785858, 57.338203, 55.592415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778082, 0.378058, 0.501657,
		0.445502, 0.230900, -0.864994,
		-0.442850, 0.896526, 0.011234,
		47.653004, 57.607162, 55.595783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.389473, 57.559914, 55.195126>,  <47.962997, 56.979591, 55.587921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.389473, 57.559914, 55.195126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.193970, 57.672623, 55.525391>,  <48.076668, 57.740250, 55.723549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.193970, 57.672623, 55.525391>,  <48.389473, 57.559914, 55.195126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.193970, 57.672623, 55.525391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857374, 0.330132, 0.394870,
		-0.161314, 0.900898, -0.402940,
		-0.488761, 0.281772, 0.825662,
		48.047340, 57.757153, 55.773090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.717041, 58.200577, 55.392788>,  <48.389473, 57.559914, 55.195126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.717041, 58.200577, 55.392788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.563828, 58.107300, 55.750313>,  <48.471897, 58.051334, 55.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.563828, 58.107300, 55.750313>,  <48.717041, 58.200577, 55.392788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.563828, 58.107300, 55.750313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882120, 0.194809, 0.428851,
		-0.274129, 0.952716, 0.131089,
		-0.383037, -0.233197, 0.893813,
		48.448917, 58.037342, 56.018456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.761932, 58.778404, 55.987087>,  <48.717041, 58.200577, 55.392788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.761932, 58.778404, 55.987087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.796494, 58.400650, 56.114006>,  <48.817230, 58.174000, 56.190159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.796494, 58.400650, 56.114006>,  <48.761932, 58.778404, 55.987087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.796494, 58.400650, 56.114006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942842, 0.180396, 0.280188,
		-0.321844, 0.274952, 0.905990,
		0.086399, -0.944383, 0.317295,
		48.822414, 58.117336, 56.209194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.654137, 59.220745, 56.641361>,  <48.761932, 58.778404, 55.987087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.654137, 59.220745, 56.641361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.053902, 59.208054, 56.636108>,  <49.293758, 59.200439, 56.632957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.053902, 59.208054, 56.636108>,  <48.654137, 59.220745, 56.641361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.053902, 59.208054, 56.636108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003930, -0.274133, 0.961684,
		-0.034111, -0.961168, -0.273847,
		0.999410, -0.031728, -0.013128,
		49.353725, 59.198536, 56.632172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.857243, 58.706764, 57.178673>,  <48.654137, 59.220745, 56.641361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.857243, 58.706764, 57.178673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.201744, 58.905571, 57.136314>,  <49.408443, 59.024857, 57.110897>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.201744, 58.905571, 57.136314>,  <48.857243, 58.706764, 57.178673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.201744, 58.905571, 57.136314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123764, -0.003031, 0.992307,
		0.492876, -0.867733, -0.064124,
		0.861252, 0.497020, -0.105901,
		49.460121, 59.054676, 57.104546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.482018, 58.353638, 57.578506>,  <48.857243, 58.706764, 57.178673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.482018, 58.353638, 57.578506> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.487103, 58.753315, 57.563240>,  <49.490154, 58.993122, 57.554081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.487103, 58.753315, 57.563240>,  <49.482018, 58.353638, 57.578506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.487103, 58.753315, 57.563240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179937, 0.035260, 0.983046,
		0.983596, -0.019367, -0.179343,
		0.012715, 0.999190, -0.038166,
		49.490917, 59.053074, 57.551788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.102837, 58.562416, 57.925358>,  <49.482018, 58.353638, 57.578506>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.102837, 58.562416, 57.925358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.831127, 58.854179, 57.957718>,  <49.668102, 59.029236, 57.977135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.831127, 58.854179, 57.957718>,  <50.102837, 58.562416, 57.925358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.831127, 58.854179, 57.957718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140858, 0.021397, 0.989799,
		0.720237, 0.683743, -0.117277,
		-0.679277, 0.729409, 0.080900,
		49.627342, 59.073002, 57.981987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.497898, 58.191856, 58.360413>,  <50.102837, 58.562416, 57.925358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.497898, 58.191856, 58.360413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.563576, 58.485729, 58.097115>,  <50.602982, 58.662052, 57.939137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.563576, 58.485729, 58.097115>,  <50.497898, 58.191856, 58.360413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.563576, 58.485729, 58.097115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.976298, -0.216419, 0.001981,
		-0.141001, -0.642966, -0.752804,
		0.164195, 0.734682, -0.658242,
		50.612835, 58.706135, 57.899643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.768818, 58.038158, 57.687786>,  <50.497898, 58.191856, 58.360413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.768818, 58.038158, 57.687786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.921543, 58.398895, 57.768692>,  <51.013176, 58.615337, 57.817234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.921543, 58.398895, 57.768692>,  <50.768818, 58.038158, 57.687786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.921543, 58.398895, 57.768692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923489, -0.381077, -0.044146,
		0.037265, 0.203641, -0.978336,
		0.381811, 0.901837, 0.202261,
		51.036087, 58.669445, 57.829369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.323399, 58.209278, 57.205498>,  <50.768818, 58.038158, 57.687786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.323399, 58.209278, 57.205498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411755, 58.392838, 57.549736>,  <51.464767, 58.502972, 57.756279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.411755, 58.392838, 57.549736>,  <51.323399, 58.209278, 57.205498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.411755, 58.392838, 57.549736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914744, -0.403557, -0.019600,
		0.338305, 0.791553, -0.508915,
		0.220890, 0.458896, 0.860594,
		51.478024, 58.530506, 57.807915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.982128, 58.684338, 57.287357>,  <51.323399, 58.209278, 57.205498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.982128, 58.684338, 57.287357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.902546, 58.522232, 57.644272>,  <51.854797, 58.424969, 57.858421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.902546, 58.522232, 57.644272>,  <51.982128, 58.684338, 57.287357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.902546, 58.522232, 57.644272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918583, -0.394393, 0.025694,
		0.341498, 0.824751, 0.450738,
		-0.198959, -0.405266, 0.892286,
		51.842857, 58.400654, 57.911957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.612541, 58.607815, 56.860550>,  <51.982128, 58.684338, 57.287357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.612541, 58.607815, 56.860550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.645084, 58.835201, 57.188019>,  <52.664612, 58.971634, 57.384502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.645084, 58.835201, 57.188019>,  <52.612541, 58.607815, 56.860550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.645084, 58.835201, 57.188019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996681, -0.044212, -0.068348,
		-0.002658, 0.821518, -0.570176,
		0.081358, 0.568465, 0.818675,
		52.669491, 59.005741, 57.433620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.088326, 59.290882, 56.841362>,  <52.612541, 58.607815, 56.860550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.088326, 59.290882, 56.841362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.089432, 59.100723, 57.193268>,  <53.090096, 58.986629, 57.404411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.089432, 59.100723, 57.193268>,  <53.088326, 59.290882, 56.841362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.089432, 59.100723, 57.193268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994429, 0.094009, 0.047674,
		-0.105370, 0.874735, 0.473006,
		0.002765, -0.475395, 0.879768,
		53.090260, 58.958103, 57.457199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.491234, 59.777809, 57.369080>,  <53.088326, 59.290882, 56.841362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.491234, 59.777809, 57.369080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.515175, 59.386436, 57.448158>,  <53.529541, 59.151611, 57.495605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.515175, 59.386436, 57.448158>,  <53.491234, 59.777809, 57.369080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.515175, 59.386436, 57.448158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984076, 0.091046, 0.152663,
		-0.167370, 0.185408, 0.968303,
		0.059855, -0.978435, 0.197694,
		53.533131, 59.092907, 57.507465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.250996, 59.471043, 57.325951>,  <53.491234, 59.777809, 57.369080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.250996, 59.471043, 57.325951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.133949, 59.120995, 57.480110>,  <54.063721, 58.910965, 57.572605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.133949, 59.120995, 57.480110>,  <54.250996, 59.471043, 57.325951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.133949, 59.120995, 57.480110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954823, -0.289251, 0.068164,
		0.051826, 0.387936, 0.920228,
		-0.292620, -0.875122, 0.385402,
		54.046162, 58.858459, 57.595730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.649544, 59.335106, 57.945450>,  <54.250996, 59.471043, 57.325951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.649544, 59.335106, 57.945450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.524803, 59.000877, 57.764534>,  <54.449959, 58.800339, 57.655983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.524803, 59.000877, 57.764534>,  <54.649544, 59.335106, 57.945450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.524803, 59.000877, 57.764534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932163, -0.361204, 0.024581,
		-0.183910, -0.413946, 0.891530,
		-0.311850, -0.835572, -0.452294,
		54.431248, 58.750206, 57.628845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.820938, 58.735649, 58.268478>,  <54.649544, 59.335106, 57.945450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.820938, 58.735649, 58.268478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.768745, 58.574226, 57.906235>,  <54.737431, 58.477375, 57.688889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.768745, 58.574226, 57.906235>,  <54.820938, 58.735649, 58.268478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.768745, 58.574226, 57.906235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819643, -0.557817, 0.130479,
		-0.557817, -0.725248, 0.403553,
		-0.130479, -0.403553, -0.905605,
		54.729603, 58.453159, 57.634552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.781792, 57.916969, 58.296040>,  <54.820938, 58.735649, 58.268478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.781792, 57.916969, 58.296040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.951073, 58.109528, 57.989014>,  <55.052643, 58.225063, 57.804798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.951073, 58.109528, 57.989014>,  <54.781792, 57.916969, 58.296040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.951073, 58.109528, 57.989014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.849907, -0.504471, 0.152209,
		-0.313940, -0.716772, -0.622639,
		0.423202, 0.481400, -0.767564,
		55.078033, 58.253948, 57.758743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.094608, 57.446617, 57.901794>,  <54.781792, 57.916969, 58.296040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.094608, 57.446617, 57.901794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.279663, 57.796574, 57.844467>,  <55.390697, 58.006546, 57.810070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.279663, 57.796574, 57.844467>,  <55.094608, 57.446617, 57.901794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.279663, 57.796574, 57.844467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883738, -0.442242, 0.153066,
		0.070535, -0.197468, -0.977768,
		0.462636, 0.874888, -0.143316,
		55.418453, 58.059040, 57.801472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.502773, 57.399921, 57.343578>,  <55.094608, 57.446617, 57.901794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.502773, 57.399921, 57.343578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.652794, 57.657307, 57.610497>,  <55.742805, 57.811737, 57.770649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.652794, 57.657307, 57.610497>,  <55.502773, 57.399921, 57.343578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.652794, 57.657307, 57.610497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864977, -0.501806, -0.002277,
		0.333390, 0.578053, -0.744785,
		0.375054, 0.643463, 0.667300,
		55.765308, 57.850346, 57.810688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.153400, 57.694485, 57.233524>,  <55.502773, 57.399921, 57.343578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.153400, 57.694485, 57.233524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.108498, 57.658913, 57.629402>,  <56.081558, 57.637569, 57.866928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.108498, 57.658913, 57.629402>,  <56.153400, 57.694485, 57.233524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.108498, 57.658913, 57.629402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817710, -0.574158, 0.041154,
		0.564579, 0.813900, 0.137174,
		-0.112255, -0.088934, 0.989692,
		56.074821, 57.632233, 57.926311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.870518, 57.850670, 57.546352>,  <56.153400, 57.694485, 57.233524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.870518, 57.850670, 57.546352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.665489, 57.625504, 57.805702>,  <56.542473, 57.490402, 57.961311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.665489, 57.625504, 57.805702>,  <56.870518, 57.850670, 57.546352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.665489, 57.625504, 57.805702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846893, -0.455932, 0.273677,
		0.141559, 0.689385, 0.710429,
		-0.512576, -0.562916, 0.648376,
		56.511715, 57.456631, 58.000214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.264133, 57.831474, 58.192490>,  <56.870518, 57.850670, 57.546352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.264133, 57.831474, 58.192490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.012886, 57.520290, 58.198746>,  <56.862137, 57.333580, 58.202499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.012886, 57.520290, 58.198746>,  <57.264133, 57.831474, 58.192490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.012886, 57.520290, 58.198746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723881, -0.576850, 0.378470,
		-0.285411, 0.249047, 0.925481,
		-0.628121, -0.777958, 0.015641,
		56.824451, 57.286903, 58.203438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.153580, 57.496132, 58.897900>,  <57.264133, 57.831474, 58.192490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.153580, 57.496132, 58.897900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.143143, 57.259171, 58.575813>,  <57.136879, 57.116993, 58.382561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.143143, 57.259171, 58.575813>,  <57.153580, 57.496132, 58.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.143143, 57.259171, 58.575813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782157, -0.513714, 0.352600,
		-0.622534, -0.620606, 0.476759,
		-0.026092, -0.592406, -0.805217,
		57.135315, 57.081448, 58.334248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.930515, 56.794773, 59.135395>,  <57.153580, 57.496132, 58.897900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.930515, 56.794773, 59.135395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.165268, 56.810165, 58.811890>,  <57.306118, 56.819401, 58.617786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.165268, 56.810165, 58.811890>,  <56.930515, 56.794773, 59.135395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.165268, 56.810165, 58.811890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613914, -0.672408, 0.413494,
		-0.527905, -0.739180, -0.418246,
		0.586879, 0.038481, -0.808760,
		57.341331, 56.821709, 58.569263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.212849, 56.094177, 59.060879>,  <56.930515, 56.794773, 59.135395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.212849, 56.094177, 59.060879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.433998, 56.359695, 58.859398>,  <57.566689, 56.519005, 58.738510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.433998, 56.359695, 58.859398>,  <57.212849, 56.094177, 59.060879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.433998, 56.359695, 58.859398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822806, -0.530379, 0.204174,
		-0.131623, -0.527329, -0.839404,
		0.552870, 0.663793, -0.503700,
		57.599857, 56.558834, 58.708286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.609951, 55.639309, 58.668964>,  <57.212849, 56.094177, 59.060879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.609951, 55.639309, 58.668964> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.806229, 55.987816, 58.673050>,  <57.923996, 56.196922, 58.675499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.806229, 55.987816, 58.673050>,  <57.609951, 55.639309, 58.668964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.806229, 55.987816, 58.673050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866274, -0.489076, 0.101855,
		0.093737, -0.041134, -0.994747,
		0.490696, 0.871271, 0.010211,
		57.953438, 56.249199, 58.676113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.217636, 55.416180, 58.398609>,  <57.609951, 55.639309, 58.668964>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.217636, 55.416180, 58.398609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.311081, 55.772842, 58.553719>,  <58.367149, 55.986839, 58.646782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.311081, 55.772842, 58.553719>,  <58.217636, 55.416180, 58.398609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.311081, 55.772842, 58.553719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922857, -0.328924, 0.200361,
		0.306201, 0.311050, -0.899716,
		0.233616, 0.891660, 0.387772,
		58.381165, 56.040340, 58.670052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.859936, 55.666836, 58.274822>,  <58.217636, 55.416180, 58.398609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.859936, 55.666836, 58.274822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.812782, 55.886959, 58.605461>,  <58.784489, 56.019035, 58.803844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.812782, 55.886959, 58.605461>,  <58.859936, 55.666836, 58.274822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.812782, 55.886959, 58.605461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956236, -0.161571, 0.243944,
		0.267798, 0.819178, -0.507180,
		-0.117888, 0.550311, 0.826595,
		58.777416, 56.052052, 58.853439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.359707, 56.352837, 58.350552>,  <58.859936, 55.666836, 58.274822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.359707, 56.352837, 58.350552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.243134, 56.126614, 58.659149>,  <59.173191, 55.990879, 58.844307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.243134, 56.126614, 58.659149>,  <59.359707, 56.352837, 58.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.243134, 56.126614, 58.659149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.920321, -0.385748, 0.064873,
		0.260915, 0.728932, 0.632916,
		-0.291434, -0.565559, 0.771498,
		59.155704, 55.956947, 58.890598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.937599, 56.430481, 58.867607>,  <59.359707, 56.352837, 58.350552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.937599, 56.430481, 58.867607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.743645, 56.088749, 58.942444>,  <59.627274, 55.883709, 58.987347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.743645, 56.088749, 58.942444>,  <59.937599, 56.430481, 58.867607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.743645, 56.088749, 58.942444> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.873030, -0.485542, 0.045463,
		0.052000, 0.185379, 0.981290,
		-0.484886, -0.854332, 0.187090,
		59.598179, 55.832451, 58.998569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.064220, 56.132229, 59.522091>,  <59.937599, 56.430481, 58.867607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.064220, 56.132229, 59.522091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.954491, 55.827934, 59.286797>,  <59.888653, 55.645359, 59.145618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.954491, 55.827934, 59.286797>,  <60.064220, 56.132229, 59.522091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.954491, 55.827934, 59.286797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902045, -0.415555, 0.116744,
		-0.333256, -0.498590, 0.800218,
		-0.274327, -0.760738, -0.588237,
		59.872192, 55.599712, 59.110325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.171204, 55.510303, 59.895603>,  <60.064220, 56.132229, 59.522091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.171204, 55.510303, 59.895603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.191559, 55.485558, 59.496887>,  <60.203770, 55.470711, 59.257660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.191559, 55.485558, 59.496887>,  <60.171204, 55.510303, 59.895603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.191559, 55.485558, 59.496887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985655, -0.157707, 0.060105,
		-0.160919, -0.985546, 0.052955,
		0.050885, -0.061867, -0.996786,
		60.206825, 55.466999, 59.197853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.607590, 54.925579, 59.587193>,  <60.171204, 55.510303, 59.895603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.607590, 54.925579, 59.587193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.615685, 55.259529, 59.367165>,  <60.620541, 55.459900, 59.235149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.615685, 55.259529, 59.367165>,  <60.607590, 54.925579, 59.587193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.615685, 55.259529, 59.367165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.996868, 0.025220, 0.074955,
		0.076450, -0.549863, -0.831749,
		0.020238, 0.834874, -0.550069,
		60.621758, 55.509991, 59.202145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.159966, 54.841507, 59.104954>,  <60.607590, 54.925579, 59.587193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.159966, 54.841507, 59.104954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.093941, 55.227684, 59.185623>,  <61.054325, 55.459393, 59.234024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.093941, 55.227684, 59.185623>,  <61.159966, 54.841507, 59.104954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.093941, 55.227684, 59.185623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.938922, 0.091214, 0.331820,
		0.301959, 0.244124, -0.921534,
		-0.165062, 0.965445, 0.201670,
		61.044422, 55.517319, 59.246124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.597347, 55.283615, 58.747089>,  <61.159966, 54.841507, 59.104954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.597347, 55.283615, 58.747089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487122, 55.457542, 59.090019>,  <61.420986, 55.561897, 59.295776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.487122, 55.457542, 59.090019>,  <61.597347, 55.283615, 58.747089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.487122, 55.457542, 59.090019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949465, -0.016310, 0.313448,
		0.150274, 0.900372, -0.408347,
		-0.275559, 0.434815, 0.857323,
		61.404453, 55.587986, 59.347218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.006981, 55.926891, 58.878525>,  <61.597347, 55.283615, 58.747089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.006981, 55.926891, 58.878525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.877602, 55.770554, 59.223228>,  <61.799976, 55.676750, 59.430050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.877602, 55.770554, 59.223228>,  <62.006981, 55.926891, 58.878525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.877602, 55.770554, 59.223228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930702, 0.032994, 0.364288,
		-0.170811, 0.919867, 0.353085,
		-0.323446, -0.390841, 0.861757,
		61.780567, 55.653301, 59.481754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.249779, 56.326382, 59.494595>,  <62.006981, 55.926891, 58.878525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.249779, 56.326382, 59.494595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.211700, 55.939003, 59.586723>,  <62.188854, 55.706577, 59.642002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.211700, 55.939003, 59.586723>,  <62.249779, 56.326382, 59.494595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.211700, 55.939003, 59.586723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971547, -0.039983, 0.233449,
		-0.216874, 0.245992, 0.944698,
		-0.095198, -0.968447, 0.230322,
		62.183140, 55.648468, 59.655819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.601089, 56.310925, 60.101627>,  <62.249779, 56.326382, 59.494595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.601089, 56.310925, 60.101627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.622940, 55.949043, 59.932617>,  <62.636051, 55.731915, 59.831211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.622940, 55.949043, 59.932617>,  <62.601089, 56.310925, 60.101627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.622940, 55.949043, 59.932617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975830, -0.041298, 0.214591,
		-0.211590, -0.424037, 0.880581,
		0.054628, -0.904703, -0.422527,
		62.639328, 55.677631, 59.805859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.272213, 56.482662, 59.900833>,  <62.601089, 56.310925, 60.101627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.272213, 56.482662, 59.900833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.144814, 56.176048, 60.123894>,  <63.068375, 55.992081, 60.257732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.144814, 56.176048, 60.123894>,  <63.272213, 56.482662, 59.900833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.144814, 56.176048, 60.123894> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842767, 0.040328, 0.536765,
		-0.433941, 0.640930, 0.633170,
		-0.318494, -0.766539, 0.557655,
		63.049267, 55.946087, 60.291191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.231556, 56.571064, 60.654331>,  <63.272213, 56.482662, 59.900833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.231556, 56.571064, 60.654331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.321404, 56.198231, 60.540649>,  <63.375313, 55.974533, 60.472439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.321404, 56.198231, 60.540649>,  <63.231556, 56.571064, 60.654331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.321404, 56.198231, 60.540649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783717, -0.000528, 0.621117,
		-0.579081, -0.362250, 0.730369,
		0.224614, -0.932081, -0.284207,
		63.388786, 55.918606, 60.455387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.418900, 56.268734, 61.272335>,  <63.231556, 56.571064, 60.654331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.418900, 56.268734, 61.272335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.587074, 56.158596, 60.926521>,  <63.687981, 56.092514, 60.719032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.587074, 56.158596, 60.926521>,  <63.418900, 56.268734, 61.272335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.587074, 56.158596, 60.926521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825866, 0.510722, 0.238975,
		0.375736, -0.814462, 0.442125,
		0.420439, -0.275344, -0.864533,
		63.713207, 56.075993, 60.667160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.123978, 56.089813, 61.323856>,  <63.418900, 56.268734, 61.272335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.123978, 56.089813, 61.323856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.014786, 56.236015, 60.967903>,  <63.949268, 56.323738, 60.754333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.014786, 56.236015, 60.967903>,  <64.123978, 56.089813, 61.323856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.014786, 56.236015, 60.967903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793391, 0.608677, 0.006621,
		0.544069, -0.704215, -0.456146,
		-0.272983, 0.365504, -0.889880,
		63.932892, 56.345665, 60.700939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.627441, 55.971458, 60.812904>,  <64.123978, 56.089813, 61.323856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.627441, 55.971458, 60.812904> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.429108, 56.308922, 60.730560>,  <64.310104, 56.511402, 60.681156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.429108, 56.308922, 60.730560>,  <64.627441, 55.971458, 60.812904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.429108, 56.308922, 60.730560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857919, 0.512628, 0.034450,
		0.134592, -0.159527, -0.977976,
		-0.495842, 0.843661, -0.205857,
		64.280357, 56.562019, 60.668804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.989594, 56.322273, 60.241318>,  <64.627441, 55.971458, 60.812904>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.989594, 56.322273, 60.241318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.823616, 56.608467, 60.466141>,  <64.724030, 56.780182, 60.601032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.823616, 56.608467, 60.466141>,  <64.989594, 56.322273, 60.241318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.823616, 56.608467, 60.466141> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877962, 0.476972, 0.040998,
		-0.238751, 0.510473, -0.826084,
		-0.414948, 0.715482, 0.562053,
		64.699135, 56.823112, 60.634758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.034935, 57.008060, 59.958424>,  <64.989594, 56.322273, 60.241318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.034935, 57.008060, 59.958424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.036720, 57.034863, 60.357521>,  <65.037796, 57.050945, 60.596981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.036720, 57.034863, 60.357521>,  <65.034935, 57.008060, 59.958424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.036720, 57.034863, 60.357521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907270, 0.419312, -0.032225,
		-0.420524, 0.905366, -0.058921,
		0.004469, 0.067008, 0.997742,
		65.038063, 57.054966, 60.656845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.144958, 57.721363, 60.156105>,  <65.034935, 57.008060, 59.958424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.144958, 57.721363, 60.156105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.272041, 57.482368, 60.450607>,  <65.348289, 57.338974, 60.627308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.272041, 57.482368, 60.450607>,  <65.144958, 57.721363, 60.156105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.272041, 57.482368, 60.450607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895476, 0.444361, -0.025814,
		-0.311740, 0.667501, 0.676210,
		0.317713, -0.597483, 0.736256,
		65.367355, 57.303123, 60.671486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.489311, 58.155994, 60.665302>,  <65.144958, 57.721363, 60.156105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.489311, 58.155994, 60.665302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.618439, 57.777412, 60.663574>,  <65.695915, 57.550262, 60.662537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.618439, 57.777412, 60.663574>,  <65.489311, 58.155994, 60.665302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.618439, 57.777412, 60.663574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943466, 0.321434, 0.080946,
		-0.075223, -0.030204, 0.996709,
		0.322821, -0.946450, -0.004317,
		65.715286, 57.493477, 60.662277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.993668, 58.025066, 61.238968>,  <65.489311, 58.155994, 60.665302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.993668, 58.025066, 61.238968> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.044182, 57.749329, 60.953629>,  <66.074493, 57.583885, 60.782425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.044182, 57.749329, 60.953629>,  <65.993668, 58.025066, 61.238968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.044182, 57.749329, 60.953629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.979465, 0.200577, -0.020435,
		0.157167, -0.696114, 0.700517,
		0.126283, -0.689343, -0.713344,
		66.082069, 57.542526, 60.739624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.406174, 57.456604, 61.530262>,  <65.993668, 58.025066, 61.238968>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.406174, 57.456604, 61.530262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.421516, 57.530533, 61.137451>,  <66.430725, 57.574890, 60.901764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.421516, 57.530533, 61.137451>,  <66.406174, 57.456604, 61.530262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.421516, 57.530533, 61.137451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.984012, 0.164060, 0.069319,
		0.173922, -0.968982, -0.175569,
		0.038365, 0.184818, -0.982024,
		66.433029, 57.585979, 60.842846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.812813, 56.891441, 60.976830>,  <66.406174, 57.456604, 61.530262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.812813, 56.891441, 60.976830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.807091, 57.283096, 60.895752>,  <66.803658, 57.518089, 60.847103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.807091, 57.283096, 60.895752>,  <66.812813, 56.891441, 60.976830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.807091, 57.283096, 60.895752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.997344, -0.000502, -0.072836,
		-0.071418, -0.203200, -0.976529,
		-0.014310, 0.979137, -0.202697,
		66.802795, 57.576836, 60.834942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.037369, 57.105244, 60.292885>,  <66.812813, 56.891441, 60.976830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.037369, 57.105244, 60.292885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.125961, 57.352768, 60.594353>,  <67.179115, 57.501282, 60.775234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.125961, 57.352768, 60.594353>,  <67.037369, 57.105244, 60.292885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.125961, 57.352768, 60.594353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.972552, -0.083644, -0.217134,
		-0.071324, 0.781077, -0.620348,
		0.221486, 0.618807, 0.753672,
		67.192406, 57.538410, 60.820454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.503067, 57.719849, 59.990005>,  <67.037369, 57.105244, 60.292885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.503067, 57.719849, 59.990005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.578705, 57.591190, 60.361122>,  <67.624084, 57.513996, 60.583790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.578705, 57.591190, 60.361122>,  <67.503067, 57.719849, 59.990005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.578705, 57.591190, 60.361122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980377, 0.008236, -0.196959,
		0.055709, 0.946826, 0.316887,
		0.189096, -0.321641, 0.927788,
		67.635437, 57.494698, 60.639458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.915863, 58.256264, 60.303963>,  <67.503067, 57.719849, 59.990005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.915863, 58.256264, 60.303963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.991928, 57.893768, 60.455002>,  <68.037567, 57.676273, 60.545628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.991928, 57.893768, 60.455002>,  <67.915863, 58.256264, 60.303963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.991928, 57.893768, 60.455002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.916683, 0.026196, -0.398756,
		0.351474, 0.421964, 0.835711,
		0.190153, -0.906234, 0.377600,
		68.048973, 57.621899, 60.568283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.408836, 58.306763, 60.876244>,  <67.915863, 58.256264, 60.303963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.408836, 58.306763, 60.876244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.442383, 57.934158, 60.734673>,  <68.462509, 57.710598, 60.649731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.442383, 57.934158, 60.734673>,  <68.408836, 58.306763, 60.876244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.442383, 57.934158, 60.734673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965972, 0.163200, -0.200657,
		0.244674, -0.325056, 0.913495,
		0.083858, -0.931506, -0.353926,
		68.467537, 57.654705, 60.628494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.059906, 58.153511, 61.074459>,  <68.408836, 58.306763, 60.876244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.059906, 58.153511, 61.074459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.004692, 57.896538, 60.772934>,  <68.971565, 57.742355, 60.592018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.004692, 57.896538, 60.772934>,  <69.059906, 58.153511, 61.074459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.004692, 57.896538, 60.772934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.983985, -0.002292, -0.178235,
		0.112776, -0.766340, 0.632459,
		-0.138038, -0.642431, -0.753809,
		68.963280, 57.703808, 60.546791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.459900, 57.428780, 61.023392>,  <69.059906, 58.153511, 61.074459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.459900, 57.428780, 61.023392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.372574, 57.584061, 60.665253>,  <69.320183, 57.677227, 60.450371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.372574, 57.584061, 60.665253>,  <69.459900, 57.428780, 61.023392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.372574, 57.584061, 60.665253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974746, 0.130953, -0.180892,
		0.047025, -0.912223, -0.406986,
		-0.218310, 0.388201, -0.895344,
		69.307083, 57.700520, 60.396648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.891342, 57.043400, 60.531174>,  <69.459900, 57.428780, 61.023392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.891342, 57.043400, 60.531174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.782249, 57.415543, 60.433151>,  <69.716789, 57.638828, 60.374336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.782249, 57.415543, 60.433151>,  <69.891342, 57.043400, 60.531174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.782249, 57.415543, 60.433151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.959159, 0.282799, 0.006135,
		0.075009, -0.233374, -0.969490,
		-0.272739, 0.930355, -0.245055,
		69.700424, 57.694649, 60.359634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.179718, 57.244522, 59.873768>,  <69.891342, 57.043400, 60.531174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.179718, 57.244522, 59.873768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.150681, 57.564850, 60.111565>,  <70.133255, 57.757046, 60.254242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.150681, 57.564850, 60.111565>,  <70.179718, 57.244522, 59.873768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.150681, 57.564850, 60.111565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.990804, 0.126144, -0.048939,
		-0.114183, 0.585474, -0.802610,
		-0.072592, 0.800817, 0.594493,
		70.128906, 57.805096, 60.289913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.345337, 57.901196, 59.474094>,  <70.179718, 57.244522, 59.873768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.345337, 57.901196, 59.474094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.423065, 57.903622, 59.866463>,  <70.469704, 57.905075, 60.101883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.423065, 57.903622, 59.866463>,  <70.345337, 57.901196, 59.474094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.423065, 57.903622, 59.866463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961953, 0.194614, -0.191757,
		-0.192063, 0.980861, 0.031985,
		0.194312, 0.006061, 0.980921,
		70.481361, 57.905441, 60.160740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.602295, 58.561272, 59.687916>,  <70.345337, 57.901196, 59.474094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.602295, 58.561272, 59.687916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.745094, 58.303162, 59.958076>,  <70.830772, 58.148296, 60.120171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.745094, 58.303162, 59.958076>,  <70.602295, 58.561272, 59.687916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.745094, 58.303162, 59.958076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.923089, 0.133003, -0.360856,
		0.143022, 0.752281, 0.643131,
		0.357003, -0.645278, 0.675400,
		70.852196, 58.109577, 60.160698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.320969, 58.576534, 59.481808>,  <70.602295, 58.561272, 59.687916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.320969, 58.576534, 59.481808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.390587, 58.302895, 59.765137>,  <71.432358, 58.138710, 59.935135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.390587, 58.302895, 59.765137>,  <71.320969, 58.576534, 59.481808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.390587, 58.302895, 59.765137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964628, -0.026195, -0.262312,
		0.198001, 0.728922, 0.655338,
		0.174038, -0.684095, 0.708325,
		71.442795, 58.097668, 59.977634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.885925, 58.799423, 59.790009>,  <71.320969, 58.576534, 59.481808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.885925, 58.799423, 59.790009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.902321, 58.399811, 59.783615>,  <71.912163, 58.160042, 59.779781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.902321, 58.399811, 59.783615>,  <71.885925, 58.799423, 59.790009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.902321, 58.399811, 59.783615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980495, 0.043303, -0.191714,
		0.192221, -0.007808, 0.981321,
		0.040997, -0.999031, -0.015979,
		71.914619, 58.100101, 59.778820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.602844, 58.749035, 59.661385>,  <71.885925, 58.799423, 59.790009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.602844, 58.749035, 59.661385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.484154, 58.367710, 59.638908>,  <72.412941, 58.138916, 59.625423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.484154, 58.367710, 59.638908>,  <72.602844, 58.749035, 59.661385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.484154, 58.367710, 59.638908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913167, -0.266025, -0.308800,
		0.279434, -0.142937, 0.949466,
		-0.296720, -0.953310, -0.056189,
		72.395134, 58.081718, 59.622051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.045006, 58.345173, 60.146881>,  <72.602844, 58.749035, 59.661385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.045006, 58.345173, 60.146881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.904900, 58.124802, 59.843887>,  <72.820831, 57.992580, 59.662090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.904900, 58.124802, 59.843887>,  <73.045006, 58.345173, 60.146881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.904900, 58.124802, 59.843887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911630, -0.386192, -0.140667,
		-0.215039, -0.739821, 0.637514,
		-0.350271, -0.550928, -0.757489,
		72.799820, 57.959522, 59.616642>
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
