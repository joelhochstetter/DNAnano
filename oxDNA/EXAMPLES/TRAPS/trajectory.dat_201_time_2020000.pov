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
	<36.080528, 52.209965, 50.138721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425850, 52.253952, 49.941696>,  <36.633041, 52.280346, 49.823483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425850, 52.253952, 49.941696>,  <36.080528, 52.209965, 50.138721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425850, 52.253952, 49.941696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372629, -0.797119, 0.475130,
		-0.340380, -0.593723, -0.729132,
		0.863301, 0.109972, -0.492562,
		36.684841, 52.286945, 49.793926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303432, 51.624088, 49.750435>,  <36.080528, 52.209965, 50.138721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303432, 51.624088, 49.750435> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589321, 51.837959, 49.930786>,  <36.760853, 51.966282, 50.038998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.589321, 51.837959, 49.930786>,  <36.303432, 51.624088, 49.750435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.589321, 51.837959, 49.930786> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334796, -0.827545, 0.450645,
		0.614071, -0.171135, -0.770474,
		0.714723, 0.534680, 0.450876,
		36.803738, 51.998363, 50.066048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.093914, 51.290226, 49.679050>,  <36.303432, 51.624088, 49.750435>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.093914, 51.290226, 49.679050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011372, 51.494133, 50.013130>,  <36.961845, 51.616478, 50.213577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011372, 51.494133, 50.013130>,  <37.093914, 51.290226, 49.679050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011372, 51.494133, 50.013130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260681, -0.794078, 0.549077,
		0.943114, 0.331024, 0.030974,
		-0.206354, 0.509768, 0.835198,
		36.949467, 51.647064, 50.263691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.566769, 51.086288, 50.059612>,  <37.093914, 51.290226, 49.679050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.566769, 51.086288, 50.059612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289406, 51.216438, 50.316772>,  <37.122990, 51.294529, 50.471069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.289406, 51.216438, 50.316772>,  <37.566769, 51.086288, 50.059612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.289406, 51.216438, 50.316772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297073, -0.683787, 0.666471,
		0.656459, 0.653123, 0.377481,
		-0.693404, 0.325371, 0.642903,
		37.081383, 51.314049, 50.509644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.838680, 50.568134, 50.577171>,  <37.566769, 51.086288, 50.059612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.838680, 50.568134, 50.577171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992081, 50.459068, 50.224224>,  <38.084122, 50.393627, 50.012455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.992081, 50.459068, 50.224224>,  <37.838680, 50.568134, 50.577171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.992081, 50.459068, 50.224224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919781, 0.198890, 0.338299,
		0.083252, -0.941326, 0.327068,
		0.383501, -0.272667, -0.882372,
		38.107132, 50.377270, 49.959511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.449867, 50.040825, 50.665413>,  <37.838680, 50.568134, 50.577171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.449867, 50.040825, 50.665413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489452, 50.262421, 50.334763>,  <38.513203, 50.395378, 50.136372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.489452, 50.262421, 50.334763>,  <38.449867, 50.040825, 50.665413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.489452, 50.262421, 50.334763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970396, 0.130187, 0.203426,
		0.220311, -0.822283, -0.524703,
		0.098964, 0.553987, -0.826623,
		38.519142, 50.428616, 50.086777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.036491, 49.795483, 50.306816>,  <38.449867, 50.040825, 50.665413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.036491, 49.795483, 50.306816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008579, 50.189995, 50.246975>,  <38.991833, 50.426701, 50.211071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.008579, 50.189995, 50.246975>,  <39.036491, 49.795483, 50.306816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008579, 50.189995, 50.246975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960088, 0.107120, 0.258371,
		0.270851, -0.125604, -0.954392,
		-0.069782, 0.986280, -0.149604,
		38.987644, 50.485878, 50.202095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441673, 50.146412, 49.841946>,  <39.036491, 49.795483, 50.306816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.441673, 50.146412, 49.841946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379433, 50.385967, 50.156174>,  <39.342087, 50.529701, 50.344711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.379433, 50.385967, 50.156174>,  <39.441673, 50.146412, 49.841946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.379433, 50.385967, 50.156174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980122, -0.005481, 0.198319,
		0.123076, 0.800814, -0.586130,
		-0.155604, 0.598888, 0.785570,
		39.332752, 50.565632, 50.391846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.900166, 50.729572, 49.851753>,  <39.441673, 50.146412, 49.841946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.900166, 50.729572, 49.851753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801170, 50.654285, 50.231926>,  <39.741776, 50.609116, 50.460030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.801170, 50.654285, 50.231926>,  <39.900166, 50.729572, 49.851753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.801170, 50.654285, 50.231926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960721, 0.079453, 0.265899,
		-0.125561, 0.978909, 0.161158,
		-0.247486, -0.188215, 0.950435,
		39.726925, 50.597820, 50.517056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.156612, 51.357597, 50.173470>,  <39.900166, 50.729572, 49.851753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.156612, 51.357597, 50.173470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139915, 51.019089, 50.385914>,  <40.129898, 50.815983, 50.513382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.139915, 51.019089, 50.385914>,  <40.156612, 51.357597, 50.173470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.139915, 51.019089, 50.385914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964522, 0.104563, 0.242411,
		-0.260681, 0.522387, 0.811885,
		-0.041739, -0.846273, 0.531112,
		40.127396, 50.765205, 50.545246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852406, 51.418674, 49.803967>,  <40.156612, 51.357597, 50.173470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852406, 51.418674, 49.803967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822922, 51.069443, 49.611176>,  <40.805233, 50.859905, 49.495502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.822922, 51.069443, 49.611176>,  <40.852406, 51.418674, 49.803967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.822922, 51.069443, 49.611176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399720, -0.416911, 0.816339,
		-0.913669, 0.252828, -0.318256,
		-0.073709, -0.873077, -0.481979,
		40.800808, 50.807518, 49.466583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.440422, 51.778252, 49.597340>,  <40.852406, 51.418674, 49.803967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.440422, 51.778252, 49.597340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585464, 51.890377, 49.241825>,  <41.672489, 51.957653, 49.028515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.585464, 51.890377, 49.241825>,  <41.440422, 51.778252, 49.597340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.585464, 51.890377, 49.241825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559219, 0.697468, 0.448121,
		0.745516, -0.659517, 0.096147,
		0.362602, 0.280314, -0.888787,
		41.694244, 51.974472, 48.975189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.147575, 51.644917, 49.713322>,  <41.440422, 51.778252, 49.597340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.147575, 51.644917, 49.713322> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047485, 51.937737, 49.459869>,  <41.987431, 52.113430, 49.307796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.047485, 51.937737, 49.459869>,  <42.147575, 51.644917, 49.713322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.047485, 51.937737, 49.459869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569046, 0.640681, 0.515475,
		0.783309, -0.231577, -0.576887,
		-0.250229, 0.732052, -0.633629,
		41.972416, 52.157352, 49.269779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.691875, 52.058277, 49.509834>,  <42.147575, 51.644917, 49.713322>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.691875, 52.058277, 49.509834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391205, 52.308533, 49.426346>,  <42.210804, 52.458687, 49.376251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.391205, 52.308533, 49.426346>,  <42.691875, 52.058277, 49.509834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.391205, 52.308533, 49.426346> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489658, 0.741392, 0.458882,
		0.441836, 0.242729, -0.863634,
		-0.751675, 0.625636, -0.208720,
		42.165703, 52.496223, 49.363731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996498, 52.728916, 49.251102>,  <42.691875, 52.058277, 49.509834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996498, 52.728916, 49.251102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648277, 52.770210, 49.443550>,  <42.439342, 52.794987, 49.559017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.648277, 52.770210, 49.443550>,  <42.996498, 52.728916, 49.251102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.648277, 52.770210, 49.443550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.377762, 0.766762, 0.519011,
		-0.315321, 0.633576, -0.706508,
		-0.870557, 0.103236, 0.481117,
		42.387112, 52.801182, 49.587887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.063725, 53.408474, 49.424377>,  <42.996498, 52.728916, 49.251102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.063725, 53.408474, 49.424377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770367, 53.255753, 49.649357>,  <42.594353, 53.164120, 49.784344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.770367, 53.255753, 49.649357>,  <43.063725, 53.408474, 49.424377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.770367, 53.255753, 49.649357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196879, 0.672629, 0.713308,
		-0.650665, 0.633875, -0.418137,
		-0.733399, -0.381802, 0.562453,
		42.550346, 53.141212, 49.818092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.584797, 53.972828, 49.462757>,  <43.063725, 53.408474, 49.424377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.584797, 53.972828, 49.462757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616138, 53.728363, 49.777805>,  <42.634945, 53.581684, 49.966835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.616138, 53.728363, 49.777805>,  <42.584797, 53.972828, 49.462757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.616138, 53.728363, 49.777805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371553, 0.751030, 0.545805,
		-0.925100, 0.249877, 0.285923,
		0.078353, -0.611159, 0.787620,
		42.639645, 53.545013, 50.014091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.447365, 54.328869, 50.075562>,  <42.584797, 53.972828, 49.462757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.447365, 54.328869, 50.075562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658504, 54.019283, 50.215477>,  <42.785191, 53.833530, 50.299427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658504, 54.019283, 50.215477>,  <42.447365, 54.328869, 50.075562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658504, 54.019283, 50.215477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374488, 0.581726, 0.722048,
		-0.762319, -0.250145, 0.596907,
		0.527853, -0.773965, 0.349785,
		42.816860, 53.787094, 50.320412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408302, 54.253208, 50.839516>,  <42.447365, 54.328869, 50.075562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408302, 54.253208, 50.839516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760826, 54.099274, 50.729828>,  <42.972340, 54.006912, 50.664017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.760826, 54.099274, 50.729828>,  <42.408302, 54.253208, 50.839516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.760826, 54.099274, 50.729828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463775, 0.593188, 0.658058,
		-0.090580, -0.707129, 0.701259,
		0.881311, -0.384833, -0.274217,
		43.025219, 53.983822, 50.647564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.871899, 54.336655, 51.464577>,  <42.408302, 54.253208, 50.839516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.871899, 54.336655, 51.464577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110550, 54.230484, 51.161636>,  <43.253742, 54.166782, 50.979874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.110550, 54.230484, 51.161636>,  <42.871899, 54.336655, 51.464577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.110550, 54.230484, 51.161636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679393, 0.669367, 0.300621,
		0.427152, -0.693898, 0.579695,
		0.596629, -0.265430, -0.757351,
		43.289539, 54.150856, 50.934429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.576344, 54.377995, 51.711060>,  <42.871899, 54.336655, 51.464577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.576344, 54.377995, 51.711060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579243, 54.422974, 51.313606>,  <43.580982, 54.449959, 51.075134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.579243, 54.422974, 51.313606>,  <43.576344, 54.377995, 51.711060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.579243, 54.422974, 51.313606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758151, 0.647302, 0.078785,
		0.652039, -0.753894, -0.080558,
		0.007250, 0.112446, -0.993631,
		43.581417, 54.456707, 51.015518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.932198, 54.110554, 52.281387>,  <43.576344, 54.377995, 51.711060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.932198, 54.110554, 52.281387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276447, 54.053238, 52.476849>,  <44.482998, 54.018848, 52.594128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.276447, 54.053238, 52.476849>,  <43.932198, 54.110554, 52.281387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.276447, 54.053238, 52.476849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482335, -0.078372, -0.872474,
		0.163314, 0.986573, 0.001665,
		0.860628, -0.143290, 0.488658,
		44.534637, 54.010250, 52.623447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.433846, 54.437958, 51.900627>,  <43.932198, 54.110554, 52.281387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.433846, 54.437958, 51.900627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644382, 54.191933, 52.135460>,  <44.770706, 54.044319, 52.276360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.644382, 54.191933, 52.135460>,  <44.433846, 54.437958, 51.900627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.644382, 54.191933, 52.135460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619750, -0.195200, -0.760136,
		0.582127, 0.763936, 0.278441,
		0.526344, -0.615059, 0.587081,
		44.802284, 54.007416, 52.311584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.096973, 54.722027, 52.057976>,  <44.433846, 54.437958, 51.900627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.096973, 54.722027, 52.057976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113991, 54.322449, 52.050995>,  <45.124203, 54.082703, 52.046806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.113991, 54.322449, 52.050995>,  <45.096973, 54.722027, 52.057976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.113991, 54.322449, 52.050995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599631, 0.039501, -0.799301,
		0.799145, 0.023543, 0.600677,
		0.042545, -0.998942, -0.017450,
		45.126755, 54.022766, 52.045761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.767269, 54.326843, 52.039989>,  <45.096973, 54.722027, 52.057976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.767269, 54.326843, 52.039989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502037, 54.125179, 51.818668>,  <45.342896, 54.004181, 51.685875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.502037, 54.125179, 51.818668>,  <45.767269, 54.326843, 52.039989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.502037, 54.125179, 51.818668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539069, 0.191233, -0.820265,
		0.519353, -0.842173, 0.144972,
		-0.663081, -0.504157, -0.553307,
		45.303112, 53.973934, 51.652676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.986908, 53.690929, 51.724335>,  <45.767269, 54.326843, 52.039989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.986908, 53.690929, 51.724335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754150, 53.905739, 51.480042>,  <45.614494, 54.034626, 51.333466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.754150, 53.905739, 51.480042>,  <45.986908, 53.690929, 51.724335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.754150, 53.905739, 51.480042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769586, 0.120819, -0.627009,
		-0.262930, -0.834870, -0.483591,
		-0.581898, 0.537024, -0.610737,
		45.579582, 54.066845, 51.296822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.043987, 53.402824, 51.018120>,  <45.986908, 53.690929, 51.724335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.043987, 53.402824, 51.018120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961494, 53.789856, 51.076450>,  <45.911999, 54.022076, 51.111450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.961494, 53.789856, 51.076450>,  <46.043987, 53.402824, 51.018120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.961494, 53.789856, 51.076450> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828983, 0.251948, -0.499309,
		-0.519860, 0.017916, -0.854063,
		-0.206234, 0.967575, 0.145830,
		45.899624, 54.080128, 51.120201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.998405, 53.840939, 50.381184>,  <46.043987, 53.402824, 51.018120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.998405, 53.840939, 50.381184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139408, 54.063202, 50.682373>,  <46.224010, 54.196560, 50.863087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.139408, 54.063202, 50.682373>,  <45.998405, 53.840939, 50.381184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.139408, 54.063202, 50.682373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778075, 0.273022, -0.565737,
		-0.519939, 0.785301, -0.336104,
		0.352510, 0.555662, 0.752978,
		46.245159, 54.229900, 50.908268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.376751, 54.441525, 50.039001>,  <45.998405, 53.840939, 50.381184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.376751, 54.441525, 50.039001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525612, 54.441841, 50.410271>,  <46.614929, 54.442032, 50.633034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.525612, 54.441841, 50.410271>,  <46.376751, 54.441525, 50.039001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.525612, 54.441841, 50.410271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805474, 0.496628, -0.323377,
		-0.461211, 0.867963, 0.184184,
		0.372150, 0.000790, 0.928172,
		46.637257, 54.442078, 50.688721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.644917, 55.197914, 50.225159>,  <46.376751, 54.441525, 50.039001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.644917, 55.197914, 50.225159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812710, 54.885899, 50.410873>,  <46.913387, 54.698689, 50.522305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.812710, 54.885899, 50.410873>,  <46.644917, 55.197914, 50.225159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.812710, 54.885899, 50.410873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895346, 0.271227, -0.353260,
		0.149630, 0.563887, 0.812184,
		0.419485, -0.780043, 0.464290,
		46.938557, 54.651886, 50.550159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.349949, 55.417332, 50.529545>,  <46.644917, 55.197914, 50.225159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.349949, 55.417332, 50.529545> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326225, 55.021984, 50.473541>,  <47.311989, 54.784775, 50.439938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.326225, 55.021984, 50.473541>,  <47.349949, 55.417332, 50.529545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.326225, 55.021984, 50.473541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962020, -0.019158, -0.272306,
		0.266458, -0.150842, 0.951970,
		-0.059313, -0.988372, -0.140008,
		47.308430, 54.725471, 50.431538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.936741, 55.005562, 50.919941>,  <47.349949, 55.417332, 50.529545>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.936741, 55.005562, 50.919941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791523, 54.843151, 50.584480>,  <47.704391, 54.745705, 50.383202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.791523, 54.843151, 50.584480>,  <47.936741, 55.005562, 50.919941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.791523, 54.843151, 50.584480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913465, 0.022454, -0.406298,
		0.183798, -0.913586, 0.362739,
		-0.363043, -0.406026, -0.838655,
		47.682610, 54.721344, 50.332882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.586449, 54.814182, 50.682590>,  <47.936741, 55.005562, 50.919941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.586449, 54.814182, 50.682590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.315155, 54.752769, 50.395138>,  <48.152378, 54.715919, 50.222668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.315155, 54.752769, 50.395138>,  <48.586449, 54.814182, 50.682590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.315155, 54.752769, 50.395138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724949, 0.020190, -0.688506,
		0.120221, -0.987937, 0.097614,
		-0.678229, -0.153538, -0.718631,
		48.111687, 54.706707, 50.179550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.635361, 54.154339, 50.296074>,  <48.586449, 54.814182, 50.682590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.635361, 54.154339, 50.296074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.474541, 54.423470, 50.047668>,  <48.378048, 54.584946, 49.898624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.474541, 54.423470, 50.047668>,  <48.635361, 54.154339, 50.296074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.474541, 54.423470, 50.047668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616865, -0.302177, -0.726750,
		-0.676633, -0.675275, -0.293551,
		-0.402052, 0.672825, -0.621017,
		48.353924, 54.625317, 49.861362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.345043, 53.872475, 49.589382>,  <48.635361, 54.154339, 50.296074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.345043, 53.872475, 49.589382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482567, 54.247772, 49.573936>,  <48.565083, 54.472950, 49.564671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.482567, 54.247772, 49.573936>,  <48.345043, 53.872475, 49.589382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.482567, 54.247772, 49.573936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636427, -0.263054, -0.725096,
		-0.690473, 0.224725, -0.687565,
		0.343814, 0.938244, -0.038611,
		48.585712, 54.529243, 49.562351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.327286, 53.511848, 50.168457>,  <48.345043, 53.872475, 49.589382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.327286, 53.511848, 50.168457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.599960, 53.604454, 49.890839>,  <48.763565, 53.660019, 49.724266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.599960, 53.604454, 49.890839>,  <48.327286, 53.511848, 50.168457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.599960, 53.604454, 49.890839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.731392, -0.190778, 0.654729,
		0.019173, -0.953941, -0.299381,
		0.681688, 0.231518, -0.694047,
		48.804466, 53.673908, 49.682625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.778275, 52.945309, 49.976662>,  <48.327286, 53.511848, 50.168457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.778275, 52.945309, 49.976662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.028614, 53.255783, 49.946083>,  <49.178818, 53.442070, 49.927734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.028614, 53.255783, 49.946083>,  <48.778275, 52.945309, 49.976662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.028614, 53.255783, 49.946083> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651522, -0.466401, 0.598322,
		0.428757, -0.424264, -0.797601,
		0.625848, 0.776190, -0.076445,
		49.216370, 53.488640, 49.923149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.394882, 52.706200, 49.817108>,  <48.778275, 52.945309, 49.976662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.394882, 52.706200, 49.817108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.462456, 53.068012, 49.973717>,  <49.502998, 53.285099, 50.067684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.462456, 53.068012, 49.973717>,  <49.394882, 52.706200, 49.817108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.462456, 53.068012, 49.973717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907350, -0.297858, 0.296643,
		0.384941, 0.305138, -0.871041,
		0.168930, 0.904528, 0.391524,
		49.513134, 53.339371, 50.091175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.180313, 53.046413, 49.729774>,  <49.394882, 52.706200, 49.817108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.180313, 53.046413, 49.729774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.991283, 53.192036, 50.050808>,  <49.877865, 53.279411, 50.243427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.991283, 53.192036, 50.050808>,  <50.180313, 53.046413, 49.729774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.991283, 53.192036, 50.050808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827038, -0.131392, 0.546575,
		0.304438, 0.922062, -0.238998,
		-0.472573, 0.364059, 0.802581,
		49.849510, 53.301254, 50.291584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.630676, 53.569752, 49.960709>,  <50.180313, 53.046413, 49.729774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.630676, 53.569752, 49.960709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.391685, 53.421860, 50.245335>,  <50.248291, 53.333122, 50.416111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.391685, 53.421860, 50.245335>,  <50.630676, 53.569752, 49.960709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.391685, 53.421860, 50.245335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775747, -0.041787, 0.629659,
		-0.203072, 0.928198, 0.311786,
		-0.597477, -0.369733, 0.711561,
		50.212444, 53.310940, 50.458801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.682037, 53.969948, 50.430176>,  <50.630676, 53.569752, 49.960709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.682037, 53.969948, 50.430176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.617603, 53.600838, 50.570202>,  <50.578945, 53.379372, 50.654217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.617603, 53.600838, 50.570202>,  <50.682037, 53.969948, 50.430176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.617603, 53.600838, 50.570202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925943, -0.018536, 0.377208,
		-0.341588, 0.384902, 0.857419,
		-0.161082, -0.922771, 0.350066,
		50.569279, 53.324005, 50.675220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.990040, 54.659981, 50.510815>,  <50.682037, 53.969948, 50.430176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.990040, 54.659981, 50.510815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.920559, 54.723068, 50.121979>,  <50.878868, 54.760921, 49.888680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.920559, 54.723068, 50.121979>,  <50.990040, 54.659981, 50.510815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.920559, 54.723068, 50.121979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.883534, 0.460937, -0.083095,
		0.434964, -0.873305, -0.219420,
		-0.173706, 0.157721, -0.972085,
		50.868446, 54.770386, 49.830353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.426247, 54.260963, 49.934055>,  <50.990040, 54.659981, 50.510815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.426247, 54.260963, 49.934055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.296982, 54.626045, 49.834026>,  <51.219425, 54.845097, 49.774010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.296982, 54.626045, 49.834026>,  <51.426247, 54.260963, 49.934055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.296982, 54.626045, 49.834026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939155, 0.341815, 0.033920,
		0.116436, -0.223891, -0.967634,
		-0.323158, 0.912708, -0.250068,
		51.200035, 54.899857, 49.759007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.764679, 54.385494, 49.305664>,  <51.426247, 54.260963, 49.934055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.764679, 54.385494, 49.305664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.721291, 54.717129, 49.525063>,  <51.695255, 54.916111, 49.656700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.721291, 54.717129, 49.525063>,  <51.764679, 54.385494, 49.305664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.721291, 54.717129, 49.525063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961031, 0.228587, -0.155461,
		-0.254269, 0.510259, -0.821573,
		-0.108475, 0.829086, 0.548498,
		51.688747, 54.965855, 49.689613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.986717, 55.051472, 49.104149>,  <51.764679, 54.385494, 49.305664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.986717, 55.051472, 49.104149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.012508, 54.970364, 49.494987>,  <52.027981, 54.921700, 49.729492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.012508, 54.970364, 49.494987>,  <51.986717, 55.051472, 49.104149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.012508, 54.970364, 49.494987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953205, 0.302323, -0.000156,
		-0.295369, 0.931388, 0.212777,
		0.064473, -0.202774, 0.977101,
		52.031849, 54.909531, 49.788116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.271744, 55.704102, 49.408077>,  <51.986717, 55.051472, 49.104149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.271744, 55.704102, 49.408077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.324291, 55.384373, 49.642624>,  <52.355820, 55.192535, 49.783352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.324291, 55.384373, 49.642624>,  <52.271744, 55.704102, 49.408077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.324291, 55.384373, 49.642624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.948146, 0.273991, 0.161086,
		-0.289418, 0.534797, 0.793870,
		0.131364, -0.799326, 0.586363,
		52.363701, 55.144573, 49.818531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.529476, 55.940331, 50.143425>,  <52.271744, 55.704102, 49.408077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.529476, 55.940331, 50.143425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628311, 55.574135, 50.016415>,  <52.687611, 55.354416, 49.940208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.628311, 55.574135, 50.016415>,  <52.529476, 55.940331, 50.143425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.628311, 55.574135, 50.016415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966253, 0.257413, 0.009718,
		0.072839, -0.309215, 0.948199,
		0.247084, -0.915491, -0.317530,
		52.702435, 55.299488, 49.921154>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.063511, 55.523235, 50.685368>,  <52.529476, 55.940331, 50.143425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.063511, 55.523235, 50.685368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.117092, 55.444462, 50.296879>,  <53.149242, 55.397198, 50.063786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.117092, 55.444462, 50.296879>,  <53.063511, 55.523235, 50.685368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.117092, 55.444462, 50.296879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980163, 0.170791, 0.100558,
		0.146073, -0.965426, 0.215906,
		0.133956, -0.196934, -0.971222,
		53.157280, 55.385384, 50.005512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.480736, 55.011425, 50.594040>,  <53.063511, 55.523235, 50.685368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.480736, 55.011425, 50.594040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.533943, 55.220379, 50.257130>,  <53.565868, 55.345749, 50.054985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.533943, 55.220379, 50.257130>,  <53.480736, 55.011425, 50.594040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.533943, 55.220379, 50.257130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985610, 0.019718, 0.167882,
		0.104306, -0.852484, -0.512241,
		0.133016, 0.522381, -0.842273,
		53.573849, 55.377094, 50.004448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.984989, 54.668060, 50.192314>,  <53.480736, 55.011425, 50.594040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.984989, 54.668060, 50.192314> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.988899, 55.053055, 50.083847>,  <53.991245, 55.284050, 50.018764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.988899, 55.053055, 50.083847>,  <53.984989, 54.668060, 50.192314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.988899, 55.053055, 50.083847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982669, 0.040955, 0.180790,
		0.185113, -0.268238, -0.945400,
		0.009776, 0.962482, -0.271170,
		53.991833, 55.341801, 50.002495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.519958, 54.876923, 49.642643>,  <53.984989, 54.668060, 50.192314>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.519958, 54.876923, 49.642643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.455666, 55.125671, 49.949223>,  <54.417091, 55.274921, 50.133171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.455666, 55.125671, 49.949223>,  <54.519958, 54.876923, 49.642643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.455666, 55.125671, 49.949223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955822, 0.291704, -0.036237,
		-0.246111, 0.726766, -0.641280,
		-0.160728, 0.621868, 0.766451,
		54.407448, 55.312233, 50.179157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.725807, 55.594666, 49.479923>,  <54.519958, 54.876923, 49.642643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.725807, 55.594666, 49.479923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.757240, 55.482994, 49.862732>,  <54.776100, 55.415993, 50.092415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.757240, 55.482994, 49.862732>,  <54.725807, 55.594666, 49.479923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.757240, 55.482994, 49.862732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975358, 0.220055, -0.015893,
		-0.206160, 0.934685, 0.289588,
		0.078580, -0.279175, 0.957020,
		54.780815, 55.399242, 50.149837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.265141, 55.999088, 49.749840>,  <54.725807, 55.594666, 49.479923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.265141, 55.999088, 49.749840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.241051, 55.687584, 49.999611>,  <55.226597, 55.500683, 50.149475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.241051, 55.687584, 49.999611>,  <55.265141, 55.999088, 49.749840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.241051, 55.687584, 49.999611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989694, -0.128006, -0.064194,
		0.129922, 0.614127, 0.778440,
		-0.060222, -0.778757, 0.624428,
		55.222984, 55.453957, 50.186939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.641239, 56.195206, 50.263027>,  <55.265141, 55.999088, 49.749840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.641239, 56.195206, 50.263027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.597916, 55.802391, 50.201221>,  <55.571922, 55.566704, 50.164139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.597916, 55.802391, 50.201221>,  <55.641239, 56.195206, 50.263027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.597916, 55.802391, 50.201221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.975434, -0.074988, -0.207136,
		0.191828, -0.173156, 0.966033,
		-0.108308, -0.982036, -0.154517,
		55.565422, 55.507782, 50.154865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.861919, 55.823895, 50.800621>,  <55.641239, 56.195206, 50.263027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.861919, 55.823895, 50.800621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.904579, 55.601837, 50.470665>,  <55.930176, 55.468601, 50.272694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.904579, 55.601837, 50.470665>,  <55.861919, 55.823895, 50.800621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.904579, 55.601837, 50.470665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957525, 0.280876, -0.065226,
		0.267901, -0.782893, 0.561522,
		0.106654, -0.555146, -0.824887,
		55.936577, 55.435295, 50.223198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.866219, 55.067524, 50.585125>,  <55.861919, 55.823895, 50.800621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.866219, 55.067524, 50.585125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.971611, 54.779945, 50.842400>,  <56.034847, 54.607399, 50.996765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.971611, 54.779945, 50.842400>,  <55.866219, 55.067524, 50.585125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.971611, 54.779945, 50.842400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950295, 0.308093, -0.044913,
		-0.165873, 0.623056, 0.764387,
		0.263486, -0.718944, 0.643191,
		56.050655, 54.564262, 51.035358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.600525, 55.174110, 50.874847>,  <55.866219, 55.067524, 50.585125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.600525, 55.174110, 50.874847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.633705, 54.804852, 51.025009>,  <56.653614, 54.583298, 51.115105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.633705, 54.804852, 51.025009>,  <56.600525, 55.174110, 50.874847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.633705, 54.804852, 51.025009> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995894, 0.090493, 0.002476,
		-0.036257, 0.373654, 0.926859,
		0.082949, -0.923143, 0.375401,
		56.658588, 54.527908, 51.137630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.968300, 55.253670, 51.405243>,  <56.600525, 55.174110, 50.874847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.968300, 55.253670, 51.405243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.024620, 54.887817, 51.253651>,  <57.058414, 54.668304, 51.162697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.024620, 54.887817, 51.253651>,  <56.968300, 55.253670, 51.405243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.024620, 54.887817, 51.253651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.977924, 0.188185, -0.090832,
		0.154396, -0.357823, 0.920937,
		0.140805, -0.914631, -0.378978,
		57.066860, 54.613430, 51.139957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.134670, 55.311333, 52.037510>,  <56.968300, 55.253670, 51.405243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.134670, 55.311333, 52.037510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.482422, 55.507820, 52.016022>,  <57.691071, 55.625713, 52.003128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.482422, 55.507820, 52.016022>,  <57.134670, 55.311333, 52.037510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.482422, 55.507820, 52.016022> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488808, -0.838939, 0.239266,
		0.072465, -0.234271, -0.969467,
		0.869377, 0.491221, -0.053720,
		57.743237, 55.655186, 51.999905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.615120, 54.954433, 51.559982>,  <57.134670, 55.311333, 52.037510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.615120, 54.954433, 51.559982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.844795, 55.173012, 51.803852>,  <57.982601, 55.304157, 51.950172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.844795, 55.173012, 51.803852>,  <57.615120, 54.954433, 51.559982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.844795, 55.173012, 51.803852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548637, -0.809546, 0.208884,
		0.607703, 0.214551, -0.764634,
		0.574190, 0.546446, 0.609674,
		58.017052, 55.336945, 51.986755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.320553, 54.725960, 51.470684>,  <57.615120, 54.954433, 51.559982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.320553, 54.725960, 51.470684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291481, 54.876854, 51.839989>,  <58.274040, 54.967392, 52.061573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.291481, 54.876854, 51.839989>,  <58.320553, 54.725960, 51.470684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.291481, 54.876854, 51.839989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522603, -0.774045, 0.357407,
		0.849473, 0.508474, -0.140891,
		-0.072676, 0.377237, 0.923261,
		58.269680, 54.990025, 52.116966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.993408, 54.628193, 51.790051>,  <58.320553, 54.725960, 51.470684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.993408, 54.628193, 51.790051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.743820, 54.683060, 52.097778>,  <58.594067, 54.715981, 52.282413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.743820, 54.683060, 52.097778>,  <58.993408, 54.628193, 51.790051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.743820, 54.683060, 52.097778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458593, -0.732854, 0.502611,
		0.632738, 0.666417, 0.394375,
		-0.623967, 0.137163, 0.769319,
		58.556629, 54.724209, 52.328575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.373169, 54.033012, 52.229988>,  <58.993408, 54.628193, 51.790051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.373169, 54.033012, 52.229988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.650391, 53.745953, 52.202690>,  <59.816723, 53.573719, 52.186314>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.650391, 53.745953, 52.202690>,  <59.373169, 54.033012, 52.229988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.650391, 53.745953, 52.202690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583053, 0.613700, -0.532374,
		0.423937, 0.329176, 0.843754,
		0.693056, -0.717646, -0.068243,
		59.858307, 53.530659, 52.182217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.152832, 54.035324, 52.594257>,  <59.373169, 54.033012, 52.229988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.152832, 54.035324, 52.594257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.102669, 53.875088, 52.231205>,  <60.072571, 53.778946, 52.013374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.102669, 53.875088, 52.231205>,  <60.152832, 54.035324, 52.594257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.102669, 53.875088, 52.231205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646322, 0.661094, -0.381080,
		0.752690, -0.634412, 0.176009,
		-0.125404, -0.400593, -0.907633,
		60.065048, 53.754910, 51.958916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.585506, 54.111328, 53.261776>,  <60.152832, 54.035324, 52.594257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.585506, 54.111328, 53.261776> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.347267, 54.118370, 53.583012>,  <60.204323, 54.122593, 53.775753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.347267, 54.118370, 53.583012>,  <60.585506, 54.111328, 53.261776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.347267, 54.118370, 53.583012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462486, 0.824947, 0.324913,
		-0.656788, 0.564935, -0.499478,
		-0.595598, 0.017602, 0.803090,
		60.168587, 54.123650, 53.823940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.206047, 54.781174, 53.216831>,  <60.585506, 54.111328, 53.261776>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.206047, 54.781174, 53.216831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.249542, 54.636627, 53.587257>,  <60.275639, 54.549900, 53.809513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.249542, 54.636627, 53.587257>,  <60.206047, 54.781174, 53.216831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.249542, 54.636627, 53.587257> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415075, 0.862995, 0.288016,
		-0.903265, 0.353066, 0.243837,
		0.108741, -0.361365, 0.926062,
		60.282166, 54.528217, 53.865074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.857212, 55.125916, 53.757504>,  <60.206047, 54.781174, 53.216831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.857212, 55.125916, 53.757504> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.191177, 54.969727, 53.912659>,  <60.391556, 54.876015, 54.005753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.191177, 54.969727, 53.912659>,  <59.857212, 55.125916, 53.757504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.191177, 54.969727, 53.912659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351788, 0.920602, 0.169519,
		-0.423278, -0.005081, 0.905986,
		0.834914, -0.390468, 0.387883,
		60.441650, 54.852585, 54.029022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.092537, 55.498680, 54.439934>,  <59.857212, 55.125916, 53.757504>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.092537, 55.498680, 54.439934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.412918, 55.325085, 54.274944>,  <60.605145, 55.220928, 54.175949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.412918, 55.325085, 54.274944>,  <60.092537, 55.498680, 54.439934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.412918, 55.325085, 54.274944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546893, 0.810700, 0.208981,
		0.243700, -0.392963, 0.886674,
		0.800948, -0.433987, -0.412476,
		60.653202, 55.194889, 54.151203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.711014, 55.610409, 54.789619>,  <60.092537, 55.498680, 54.439934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.711014, 55.610409, 54.789619> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.793655, 55.584347, 54.399117>,  <60.843239, 55.568710, 54.164814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.793655, 55.584347, 54.399117>,  <60.711014, 55.610409, 54.789619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.793655, 55.584347, 54.399117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636460, 0.766775, 0.083514,
		0.743125, -0.638600, 0.199887,
		0.206601, -0.065159, -0.976253,
		60.855637, 55.564800, 54.106239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.503593, 55.462189, 54.641121>,  <60.711014, 55.610409, 54.789619>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.503593, 55.462189, 54.641121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.330070, 55.696339, 54.367142>,  <61.225956, 55.836830, 54.202755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.330070, 55.696339, 54.367142>,  <61.503593, 55.462189, 54.641121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.330070, 55.696339, 54.367142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745671, 0.659966, 0.091762,
		0.505755, -0.470937, -0.722793,
		-0.433805, 0.585375, -0.684945,
		61.199928, 55.871952, 54.161659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.105690, 55.608139, 54.301533>,  <61.503593, 55.462189, 54.641121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.105690, 55.608139, 54.301533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.822426, 55.885124, 54.246391>,  <61.652466, 56.051315, 54.213306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.822426, 55.885124, 54.246391>,  <62.105690, 55.608139, 54.301533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.822426, 55.885124, 54.246391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689809, 0.720193, 0.074061,
		0.150568, -0.042648, -0.987680,
		-0.708162, 0.692462, -0.137857,
		61.609978, 56.092861, 54.205036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.760639, 56.002789, 54.350044>,  <62.105690, 55.608139, 54.301533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.760639, 56.002789, 54.350044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.097961, 56.180435, 54.471107>,  <63.300354, 56.287025, 54.543743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.097961, 56.180435, 54.471107>,  <62.760639, 56.002789, 54.350044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.097961, 56.180435, 54.471107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405428, 0.156027, 0.900713,
		0.352802, -0.882278, 0.311636,
		0.843302, 0.444119, 0.302653,
		63.350952, 56.313671, 54.561905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.081944, 55.805431, 54.992668>,  <62.760639, 56.002789, 54.350044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.081944, 55.805431, 54.992668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.226158, 56.177559, 54.965759>,  <63.312687, 56.400833, 54.949612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.226158, 56.177559, 54.965759>,  <63.081944, 55.805431, 54.992668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.226158, 56.177559, 54.965759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555399, 0.272065, 0.785820,
		0.749364, -0.245952, 0.614785,
		0.360535, 0.930316, -0.067274,
		63.334320, 56.456654, 54.945576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.437531, 55.927761, 55.615124>,  <63.081944, 55.805431, 54.992668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.437531, 55.927761, 55.615124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.351006, 56.299408, 55.495155>,  <63.299091, 56.522396, 55.423176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.351006, 56.299408, 55.495155>,  <63.437531, 55.927761, 55.615124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.351006, 56.299408, 55.495155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488075, 0.163146, 0.857418,
		0.845573, 0.331851, 0.418189,
		-0.216309, 0.929117, -0.299920,
		63.286114, 56.578144, 55.405178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.626347, 56.497326, 56.078876>,  <63.437531, 55.927761, 55.615124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.626347, 56.497326, 56.078876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.304291, 56.597881, 55.864006>,  <63.111057, 56.658215, 55.735085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.304291, 56.597881, 55.864006>,  <63.626347, 56.497326, 56.078876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.304291, 56.597881, 55.864006> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509553, 0.170267, 0.843424,
		0.303488, 0.952793, -0.008994,
		-0.805140, 0.251386, -0.537172,
		63.062748, 56.673298, 55.702854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.315514, 56.300072, 56.405388>,  <63.626347, 56.497326, 56.078876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.315514, 56.300072, 56.405388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.608414, 56.405415, 56.154167>,  <64.784157, 56.468620, 56.003433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.608414, 56.405415, 56.154167>,  <64.315514, 56.300072, 56.405388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.608414, 56.405415, 56.154167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678574, -0.360418, 0.640028,
		-0.057808, -0.894843, -0.442623,
		0.732254, 0.263354, -0.628052,
		64.828087, 56.484421, 55.965752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.730675, 55.812592, 55.992134>,  <64.315514, 56.300072, 56.405388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.730675, 55.812592, 55.992134> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.978966, 56.118198, 56.062523>,  <65.127945, 56.301563, 56.104755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.978966, 56.118198, 56.062523>,  <64.730675, 55.812592, 55.992134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.978966, 56.118198, 56.062523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474710, -0.544881, 0.691198,
		0.623968, -0.345519, -0.700914,
		0.620737, 0.764016, 0.175968,
		65.165184, 56.347404, 56.115314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.451355, 55.758587, 56.238384>,  <64.730675, 55.812592, 55.992134>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.451355, 55.758587, 56.238384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.713394, 55.816681, 56.534966>,  <65.870621, 55.851536, 56.712914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.713394, 55.816681, 56.534966>,  <65.451355, 55.758587, 56.238384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.713394, 55.816681, 56.534966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750371, -0.010480, -0.660934,
		-0.088221, 0.989342, -0.115846,
		0.655104, 0.145236, 0.741449,
		65.909927, 55.860252, 56.757401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.855179, 56.398273, 56.041286>,  <65.451355, 55.758587, 56.238384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.855179, 56.398273, 56.041286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.060333, 56.129837, 56.255417>,  <66.183426, 55.968777, 56.383896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.060333, 56.129837, 56.255417>,  <65.855179, 56.398273, 56.041286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.060333, 56.129837, 56.255417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720780, -0.002065, -0.693160,
		0.466280, 0.741371, 0.482651,
		0.512892, -0.671093, 0.535328,
		66.214203, 55.928509, 56.416016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.578529, 56.456749, 55.653069>,  <65.855179, 56.398273, 56.041286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.578529, 56.456749, 55.653069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.950226, 56.597427, 55.698364>,  <67.173241, 56.681835, 55.725544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.950226, 56.597427, 55.698364>,  <66.578529, 56.456749, 55.653069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.950226, 56.597427, 55.698364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303474, -0.551675, -0.776890,
		-0.210759, 0.756282, -0.619369,
		0.929239, 0.351699, 0.113241,
		67.228996, 56.702938, 55.732338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.010338, 56.856800, 55.099430>,  <66.578529, 56.456749, 55.653069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.010338, 56.856800, 55.099430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.275177, 56.642841, 55.309387>,  <67.434082, 56.514465, 55.435360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.275177, 56.642841, 55.309387>,  <67.010338, 56.856800, 55.099430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.275177, 56.642841, 55.309387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292844, -0.460047, -0.838212,
		0.689833, 0.708689, -0.147954,
		0.662097, -0.534899, 0.524891,
		67.473808, 56.482372, 55.466854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.713463, 56.683048, 54.606564>,  <67.010338, 56.856800, 55.099430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.713463, 56.683048, 54.606564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.690308, 56.432346, 54.917389>,  <67.676414, 56.281925, 55.103886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.690308, 56.432346, 54.917389>,  <67.713463, 56.683048, 54.606564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.690308, 56.432346, 54.917389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419163, -0.721692, -0.550874,
		0.906064, 0.293831, 0.304485,
		-0.057880, -0.626756, 0.777063,
		67.672943, 56.244320, 55.150509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.442253, 56.479645, 54.912830>,  <67.713463, 56.683048, 54.606564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.442253, 56.479645, 54.912830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.167015, 56.194824, 54.968719>,  <68.001877, 56.023933, 55.002251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.167015, 56.194824, 54.968719>,  <68.442253, 56.479645, 54.912830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.167015, 56.194824, 54.968719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494865, -0.601310, -0.627324,
		0.530700, -0.362512, 0.766122,
		-0.688089, -0.712048, 0.139721,
		67.960587, 55.981209, 55.010635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.705620, 55.850372, 55.253567>,  <68.442253, 56.479645, 54.912830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.705620, 55.850372, 55.253567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.403992, 55.795132, 54.996727>,  <68.223015, 55.761986, 54.842621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.403992, 55.795132, 54.996727>,  <68.705620, 55.850372, 55.253567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.403992, 55.795132, 54.996727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647645, -0.318887, -0.692002,
		-0.109192, -0.937678, 0.329906,
		-0.754078, -0.138101, -0.642102,
		68.177765, 55.753700, 54.804096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.888451, 55.280704, 54.910007>,  <68.705620, 55.850372, 55.253567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.888451, 55.280704, 54.910007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.644440, 55.484547, 54.667297>,  <68.498032, 55.606853, 54.521671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.644440, 55.484547, 54.667297>,  <68.888451, 55.280704, 54.910007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.644440, 55.484547, 54.667297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540779, -0.291953, -0.788874,
		-0.579167, -0.809359, -0.097488,
		-0.610020, 0.509609, -0.606773,
		68.461433, 55.637428, 54.485264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.438301, 55.891850, 55.088505>,  <68.888451, 55.280704, 54.910007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.438301, 55.891850, 55.088505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.684120, 56.171204, 54.941757>,  <69.831612, 56.338814, 54.853710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.684120, 56.171204, 54.941757>,  <69.438301, 55.891850, 55.088505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.684120, 56.171204, 54.941757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.600363, -0.112364, 0.791794,
		0.511751, -0.706851, -0.488336,
		0.614552, 0.698381, -0.366865,
		69.868484, 56.380718, 54.831699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.083717, 55.673851, 55.201469>,  <69.438301, 55.891850, 55.088505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.083717, 55.673851, 55.201469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.101692, 56.072891, 55.180405>,  <70.112473, 56.312317, 55.167767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.101692, 56.072891, 55.180405>,  <70.083717, 55.673851, 55.201469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.101692, 56.072891, 55.180405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589897, 0.016047, 0.807319,
		0.806227, -0.067338, -0.587761,
		0.044932, 0.997601, -0.052660,
		70.115173, 56.372173, 55.164608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.705200, 56.016369, 54.966675>,  <70.083717, 55.673851, 55.201469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.705200, 56.016369, 54.966675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.526283, 56.284966, 55.202988>,  <70.418930, 56.446125, 55.344776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.526283, 56.284966, 55.202988>,  <70.705200, 56.016369, 54.966675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.526283, 56.284966, 55.202988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651483, -0.207942, 0.729609,
		0.612777, 0.711234, -0.344456,
		-0.447296, 0.671495, 0.590779,
		70.392097, 56.486416, 55.380222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.125160, 56.667080, 55.162663>,  <70.705200, 56.016369, 54.966675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.125160, 56.667080, 55.162663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.880882, 56.517426, 55.441826>,  <70.734314, 56.427631, 55.609325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.880882, 56.517426, 55.441826>,  <71.125160, 56.667080, 55.162663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.880882, 56.517426, 55.441826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.790354, -0.233469, 0.566421,
		-0.048978, 0.897504, 0.438278,
		-0.610690, -0.374137, 0.697911,
		70.697678, 56.405186, 55.651199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.247795, 57.060184, 55.666229>,  <71.125160, 56.667080, 55.162663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.247795, 57.060184, 55.666229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.140305, 56.692566, 55.781570>,  <71.075813, 56.471996, 55.850773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.140305, 56.692566, 55.781570>,  <71.247795, 57.060184, 55.666229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.140305, 56.692566, 55.781570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901108, -0.134116, 0.412331,
		-0.340278, 0.370639, 0.864198,
		-0.268728, -0.919043, 0.288349,
		71.059685, 56.416855, 55.868076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.342453, 56.941460, 56.400875>,  <71.247795, 57.060184, 55.666229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.342453, 56.941460, 56.400875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.382011, 56.580765, 56.232544>,  <71.405746, 56.364349, 56.131546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.382011, 56.580765, 56.232544>,  <71.342453, 56.941460, 56.400875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.382011, 56.580765, 56.232544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915833, -0.082931, 0.392902,
		-0.389193, -0.424265, 0.817636,
		0.098888, -0.901733, -0.420832,
		71.411674, 56.310246, 56.106293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.947510, 56.526943, 56.942986>,  <71.342453, 56.941460, 56.400875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.947510, 56.526943, 56.942986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.613701, 56.379307, 56.779358>,  <70.413414, 56.290726, 56.681183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.613701, 56.379307, 56.779358>,  <70.947510, 56.526943, 56.942986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.613701, 56.379307, 56.779358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388164, -0.133054, 0.911935,
		-0.391015, 0.919820, -0.032230,
		-0.834527, -0.369091, -0.409068,
		70.363342, 56.268581, 56.656639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.480347, 56.077095, 57.006336>,  <70.947510, 56.526943, 56.942986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.480347, 56.077095, 57.006336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.591316, 56.440697, 57.130745>,  <71.657898, 56.658859, 57.205391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.591316, 56.440697, 57.130745>,  <71.480347, 56.077095, 57.006336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.591316, 56.440697, 57.130745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101901, -0.349748, 0.931286,
		0.955328, -0.226670, -0.189658,
		0.277427, 0.909009, 0.311026,
		71.674545, 56.713398, 57.224052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.064323, 55.889736, 57.248203>,  <71.480347, 56.077095, 57.006336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.064323, 55.889736, 57.248203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.963173, 56.246071, 57.399178>,  <71.902481, 56.459873, 57.489761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<71.963173, 56.246071, 57.399178>,  <72.064323, 55.889736, 57.248203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<71.963173, 56.246071, 57.399178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421475, -0.249719, 0.871779,
		0.870870, 0.379529, -0.312320,
		-0.252874, 0.890841, 0.377435,
		71.887314, 56.513325, 57.512409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.538872, 56.415024, 57.533405>,  <72.064323, 55.889736, 57.248203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.538872, 56.415024, 57.533405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.203255, 56.484268, 57.739723>,  <72.001884, 56.525814, 57.863514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.203255, 56.484268, 57.739723>,  <72.538872, 56.415024, 57.533405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.203255, 56.484268, 57.739723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484402, -0.193973, 0.853071,
		0.247729, 0.965612, 0.078895,
		-0.839038, 0.173113, 0.515797,
		71.951546, 56.536201, 57.894463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.730316, 56.679474, 58.143528>,  <72.538872, 56.415024, 57.533405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.730316, 56.679474, 58.143528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.350304, 56.576324, 58.213882>,  <72.122292, 56.514435, 58.256096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.350304, 56.576324, 58.213882>,  <72.730316, 56.679474, 58.143528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.350304, 56.576324, 58.213882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252928, -0.305767, 0.917897,
		-0.182923, 0.916519, 0.355713,
		-0.950035, -0.257874, 0.175881,
		72.065292, 56.498962, 58.266647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.558708, 57.027973, 58.704491>,  <72.730316, 56.679474, 58.143528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.558708, 57.027973, 58.704491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.318604, 56.708935, 58.680717>,  <72.174538, 56.517513, 58.666454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.318604, 56.708935, 58.680717>,  <72.558708, 57.027973, 58.704491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.318604, 56.708935, 58.680717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189017, -0.213666, 0.958446,
		-0.777148, 0.564084, 0.279014,
		-0.600260, -0.797594, -0.059428,
		72.138527, 56.469658, 58.662888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.880768, 56.939713, 59.372055>,  <72.558708, 57.027973, 58.704491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.880768, 56.939713, 59.372055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.203041, 56.802109, 59.564941>,  <73.396408, 56.719547, 59.680672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.203041, 56.802109, 59.564941>,  <72.880768, 56.939713, 59.372055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.203041, 56.802109, 59.564941> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222744, 0.578375, 0.784772,
		-0.548866, -0.739691, 0.389363,
		0.805686, -0.344007, 0.482212,
		73.444748, 56.698906, 59.709606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.763878, 56.801071, 60.180191>,  <72.880768, 56.939713, 59.372055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.763878, 56.801071, 60.180191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.127487, 56.916504, 60.059937>,  <73.345657, 56.985764, 59.987782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.127487, 56.916504, 60.059937>,  <72.763878, 56.801071, 60.180191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.127487, 56.916504, 60.059937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031154, 0.766472, 0.641522,
		0.415562, -0.573797, 0.705737,
		0.909031, 0.288579, -0.300641,
		73.400200, 57.003078, 59.969746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.311142, 56.627327, 60.635998>,  <72.763878, 56.801071, 60.180191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.311142, 56.627327, 60.635998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.371704, 56.966808, 60.433304>,  <73.408043, 57.170498, 60.311687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.371704, 56.966808, 60.433304>,  <73.311142, 56.627327, 60.635998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.371704, 56.966808, 60.433304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188162, 0.528014, 0.828128,
		0.970398, -0.030031, 0.239635,
		0.151401, 0.848704, -0.506734,
		73.417122, 57.221420, 60.281284>
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
