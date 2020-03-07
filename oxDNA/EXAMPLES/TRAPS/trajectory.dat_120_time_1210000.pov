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
	<36.839500, 53.043549, 50.166019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564857, 53.053680, 49.875385>,  <36.400070, 53.059761, 49.701004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.564857, 53.053680, 49.875385>,  <36.839500, 53.043549, 50.166019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564857, 53.053680, 49.875385> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507660, -0.698694, -0.504091,
		-0.520430, -0.714972, 0.466870,
		-0.686610, 0.025333, -0.726584,
		36.358875, 53.061279, 49.657410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.514584, 53.239601, 50.374454>,  <36.839500, 53.043549, 50.166019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.514584, 53.239601, 50.374454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678482, 52.910740, 50.532528>,  <37.776821, 52.713425, 50.627373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.678482, 52.910740, 50.532528>,  <37.514584, 53.239601, 50.374454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.678482, 52.910740, 50.532528> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499748, 0.564743, 0.656747,
		-0.763127, -0.071603, 0.642269,
		0.409742, -0.822155, 0.395187,
		37.801403, 52.664093, 50.651085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.388874, 53.152912, 51.125622>,  <37.514584, 53.239601, 50.374454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.388874, 53.152912, 51.125622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740681, 52.984215, 51.037453>,  <37.951763, 52.882996, 50.984550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.740681, 52.984215, 51.037453>,  <37.388874, 53.152912, 51.125622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.740681, 52.984215, 51.037453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.435477, 0.526548, 0.730142,
		-0.191867, -0.738161, 0.646765,
		0.879515, -0.421741, -0.220425,
		38.004536, 52.857693, 50.971325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.607666, 52.769772, 51.717983>,  <37.388874, 53.152912, 51.125622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.607666, 52.769772, 51.717983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912281, 52.903225, 51.495724>,  <38.095051, 52.983299, 51.362370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.912281, 52.903225, 51.495724>,  <37.607666, 52.769772, 51.717983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.912281, 52.903225, 51.495724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347038, 0.514154, 0.784353,
		0.547378, -0.790147, 0.275764,
		0.761539, 0.333637, -0.555647,
		38.140743, 53.003315, 51.329029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.669571, 52.048859, 51.445282>,  <37.607666, 52.769772, 51.717983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.669571, 52.048859, 51.445282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958145, 52.055344, 51.722198>,  <38.131290, 52.059235, 51.888348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.958145, 52.055344, 51.722198>,  <37.669571, 52.048859, 51.445282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.958145, 52.055344, 51.722198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202553, -0.951061, 0.233357,
		0.662194, -0.308578, -0.682846,
		0.721437, 0.016214, 0.692290,
		38.174576, 52.060207, 51.929886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090546, 51.934883, 50.966362>,  <37.669571, 52.048859, 51.445282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090546, 51.934883, 50.966362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029457, 51.542316, 50.919880>,  <36.992805, 51.306778, 50.891991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.029457, 51.542316, 50.919880>,  <37.090546, 51.934883, 50.966362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.029457, 51.542316, 50.919880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462185, -0.174860, 0.869373,
		-0.873534, 0.079061, 0.480299,
		-0.152718, -0.981414, -0.116205,
		36.983643, 51.247890, 50.885017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.041321, 51.718422, 51.643738>,  <37.090546, 51.934883, 50.966362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.041321, 51.718422, 51.643738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084908, 51.379051, 51.436546>,  <37.111061, 51.175430, 51.312233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084908, 51.379051, 51.436546>,  <37.041321, 51.718422, 51.643738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084908, 51.379051, 51.436546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631261, -0.343461, 0.695374,
		-0.767878, -0.402749, 0.498153,
		0.108965, -0.848427, -0.517975,
		37.117596, 51.124523, 51.281155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086475, 51.288372, 52.119263>,  <37.041321, 51.718422, 51.643738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086475, 51.288372, 52.119263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277252, 51.155636, 51.793709>,  <37.391720, 51.075993, 51.598377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.277252, 51.155636, 51.793709>,  <37.086475, 51.288372, 52.119263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.277252, 51.155636, 51.793709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.757404, -0.314641, 0.572136,
		-0.445940, -0.889316, 0.101271,
		0.476946, -0.331842, -0.813882,
		37.420338, 51.056084, 51.549545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.086102, 50.508919, 52.102318>,  <37.086475, 51.288372, 52.119263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.086102, 50.508919, 52.102318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403786, 50.697193, 51.948601>,  <37.594398, 50.810158, 51.856373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403786, 50.697193, 51.948601>,  <37.086102, 50.508919, 52.102318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403786, 50.697193, 51.948601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564004, -0.335705, 0.754455,
		0.226104, -0.815939, -0.532091,
		0.794215, 0.470687, -0.384289,
		37.642052, 50.838398, 51.833313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.695595, 50.067726, 52.063133>,  <37.086102, 50.508919, 52.102318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.695595, 50.067726, 52.063133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810284, 50.448940, 52.102127>,  <37.879097, 50.677670, 52.125523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.810284, 50.448940, 52.102127>,  <37.695595, 50.067726, 52.063133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.810284, 50.448940, 52.102127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488271, -0.232928, 0.841032,
		0.824245, -0.193543, -0.532128,
		0.286724, 0.953040, 0.097489,
		37.896301, 50.734852, 52.131374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.215988, 49.957043, 52.621693>,  <37.695595, 50.067726, 52.063133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.215988, 49.957043, 52.621693> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036755, 49.924332, 52.977791>,  <37.929214, 49.904705, 53.191448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036755, 49.924332, 52.977791>,  <38.215988, 49.957043, 52.621693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036755, 49.924332, 52.977791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611317, 0.754632, -0.238375,
		-0.652312, -0.651032, -0.388132,
		-0.448086, -0.081777, 0.890242,
		37.902328, 49.899799, 53.244865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866817, 49.762897, 53.000725>,  <38.215988, 49.957043, 52.621693>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866817, 49.762897, 53.000725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928864, 50.071259, 53.247837>,  <38.966091, 50.256275, 53.396103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928864, 50.071259, 53.247837>,  <38.866817, 49.762897, 53.000725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928864, 50.071259, 53.247837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980998, -0.046424, -0.188384,
		-0.116545, 0.635264, -0.763451,
		0.155116, 0.770899, 0.617782,
		38.975399, 50.302528, 53.433170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.149258, 50.345528, 52.619583>,  <38.866817, 49.762897, 53.000725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.149258, 50.345528, 52.619583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251114, 50.334476, 53.006241>,  <39.312229, 50.327847, 53.238235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251114, 50.334476, 53.006241>,  <39.149258, 50.345528, 52.619583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251114, 50.334476, 53.006241> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967011, 0.014327, -0.254333,
		-0.006821, 0.999515, 0.030369,
		0.254645, -0.027632, 0.966640,
		39.327507, 50.326187, 53.296234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.611839, 50.818192, 52.732170>,  <39.149258, 50.345528, 52.619583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.611839, 50.818192, 52.732170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661934, 50.564659, 53.037476>,  <39.691990, 50.412540, 53.220657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.661934, 50.564659, 53.037476>,  <39.611839, 50.818192, 52.732170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.661934, 50.564659, 53.037476> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991290, 0.111535, -0.070026,
		-0.040746, 0.765385, 0.642281,
		0.125234, -0.633834, 0.763264,
		39.699505, 50.374508, 53.266453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.787888, 50.280865, 51.992725>,  <39.611839, 50.818192, 52.732170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.787888, 50.280865, 51.992725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059582, 50.512409, 52.173195>,  <40.222599, 50.651337, 52.281475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.059582, 50.512409, 52.173195>,  <39.787888, 50.280865, 51.992725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.059582, 50.512409, 52.173195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726870, -0.615585, -0.304490,
		0.101478, 0.534766, -0.838885,
		0.679236, 0.578861, 0.451174,
		40.263351, 50.686066, 52.308548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343647, 50.113224, 51.610615>,  <39.787888, 50.280865, 51.992725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343647, 50.113224, 51.610615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528767, 50.327003, 51.893509>,  <40.639839, 50.455273, 52.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.528767, 50.327003, 51.893509>,  <40.343647, 50.113224, 51.610615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.528767, 50.327003, 51.893509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.864941, -0.446984, -0.228217,
		0.194152, 0.717334, -0.669132,
		0.462799, 0.534450, 0.707234,
		40.667606, 50.487339, 52.105679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.982933, 50.560886, 51.370712>,  <40.343647, 50.113224, 51.610615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.982933, 50.560886, 51.370712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064209, 50.475563, 51.752960>,  <41.112976, 50.424370, 51.982311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.064209, 50.475563, 51.752960>,  <40.982933, 50.560886, 51.370712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.064209, 50.475563, 51.752960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913517, -0.309987, -0.263430,
		0.352423, 0.926502, 0.131877,
		0.203189, -0.213311, 0.955622,
		41.125164, 50.411572, 52.039646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.708687, 50.529293, 51.335346>,  <40.982933, 50.560886, 51.370712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.708687, 50.529293, 51.335346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606392, 50.901451, 51.440395>,  <41.545013, 51.124744, 51.503426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.606392, 50.901451, 51.440395>,  <41.708687, 50.529293, 51.335346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.606392, 50.901451, 51.440395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.966521, 0.251931, 0.048660,
		-0.020890, 0.266275, -0.963671,
		-0.255736, 0.930391, 0.262623,
		41.529671, 51.180569, 51.519180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.418674, 50.634457, 51.295349>,  <41.708687, 50.529293, 51.335346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.418674, 50.634457, 51.295349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598831, 50.405785, 51.569672>,  <42.706924, 50.268581, 51.734264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.598831, 50.405785, 51.569672>,  <42.418674, 50.634457, 51.295349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.598831, 50.405785, 51.569672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.785772, -0.110899, -0.608494,
		0.423918, 0.812948, 0.399261,
		0.450396, -0.571679, 0.685804,
		42.733952, 50.234280, 51.775414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083290, 50.926292, 51.509205>,  <42.418674, 50.634457, 51.295349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083290, 50.926292, 51.509205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060310, 50.527000, 51.515480>,  <43.046524, 50.287426, 51.519245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.060310, 50.527000, 51.515480>,  <43.083290, 50.926292, 51.509205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.060310, 50.527000, 51.515480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.832367, -0.056566, -0.551331,
		0.551240, -0.018613, 0.834139,
		-0.057446, -0.998225, 0.015689,
		43.043076, 50.227531, 51.520187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.629128, 50.583317, 51.858730>,  <43.083290, 50.926292, 51.509205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.629128, 50.583317, 51.858730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478737, 50.383507, 51.546547>,  <43.388504, 50.263622, 51.359238>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.478737, 50.383507, 51.546547>,  <43.629128, 50.583317, 51.858730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.478737, 50.383507, 51.546547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.792850, 0.262526, -0.549972,
		0.479615, -0.825563, 0.297345,
		-0.375976, -0.499525, -0.780459,
		43.365944, 50.233650, 51.312408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742443, 50.637104, 52.580814>,  <43.629128, 50.583317, 51.858730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742443, 50.637104, 52.580814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961506, 50.380558, 52.365883>,  <44.092945, 50.226631, 52.236923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.961506, 50.380558, 52.365883>,  <43.742443, 50.637104, 52.580814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961506, 50.380558, 52.365883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833001, 0.357619, 0.422159,
		-0.078601, -0.678792, 0.730111,
		0.547660, -0.641365, -0.537325,
		44.125805, 50.188148, 52.204685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074604, 50.352558, 53.030457>,  <43.742443, 50.637104, 52.580814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074604, 50.352558, 53.030457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288139, 50.311459, 52.694729>,  <44.416260, 50.286797, 52.493294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.288139, 50.311459, 52.694729>,  <44.074604, 50.352558, 53.030457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.288139, 50.311459, 52.694729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758679, 0.496507, 0.421767,
		0.373389, -0.861930, 0.343013,
		0.533842, -0.102753, -0.839318,
		44.448292, 50.280632, 52.442932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751770, 50.256420, 52.891922>,  <44.074604, 50.352558, 53.030457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751770, 50.256420, 52.891922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686638, 50.002110, 52.590118>,  <44.647560, 49.849525, 52.409039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.686638, 50.002110, 52.590118>,  <44.751770, 50.256420, 52.891922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.686638, 50.002110, 52.590118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939388, 0.133958, -0.315604,
		0.301725, -0.760162, 0.575426,
		-0.162828, -0.635774, -0.754506,
		44.637791, 49.811378, 52.363766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.232552, 49.715424, 52.831585>,  <44.751770, 50.256420, 52.891922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.232552, 49.715424, 52.831585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092144, 49.771690, 52.461288>,  <45.007900, 49.805450, 52.239109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.092144, 49.771690, 52.461288>,  <45.232552, 49.715424, 52.831585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.092144, 49.771690, 52.461288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934397, 0.116731, -0.336565,
		0.060718, -0.983151, -0.172418,
		-0.351021, 0.140671, -0.925741,
		44.986839, 49.813892, 52.183567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.452728, 49.242893, 52.298431>,  <45.232552, 49.715424, 52.831585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.452728, 49.242893, 52.298431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392670, 49.604923, 52.139286>,  <45.356636, 49.822140, 52.043797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.392670, 49.604923, 52.139286>,  <45.452728, 49.242893, 52.298431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.392670, 49.604923, 52.139286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.965997, 0.048622, -0.253941,
		-0.210490, -0.422466, -0.881599,
		-0.150147, 0.905074, -0.397866,
		45.347626, 49.876446, 52.019928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.842186, 49.403763, 51.703362>,  <45.452728, 49.242893, 52.298431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.842186, 49.403763, 51.703362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775532, 49.740433, 51.908813>,  <45.735538, 49.942432, 52.032085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.775532, 49.740433, 51.908813>,  <45.842186, 49.403763, 51.703362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.775532, 49.740433, 51.908813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949780, 0.276940, -0.145679,
		-0.264860, 0.463563, -0.845552,
		-0.166636, 0.841673, 0.513633,
		45.725540, 49.992935, 52.062904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.120651, 49.890034, 51.306328>,  <45.842186, 49.403763, 51.703362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.120651, 49.890034, 51.306328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133366, 50.035629, 51.678673>,  <46.140995, 50.122986, 51.902081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133366, 50.035629, 51.678673>,  <46.120651, 49.890034, 51.306328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133366, 50.035629, 51.678673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.906424, 0.381950, -0.180302,
		-0.421170, 0.849487, -0.317785,
		0.031786, 0.363986, 0.930862,
		46.142902, 50.144825, 51.957932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.406792, 50.464024, 51.351593>,  <46.120651, 49.890034, 51.306328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.406792, 50.464024, 51.351593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498135, 50.314373, 51.711121>,  <46.552940, 50.224583, 51.926838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.498135, 50.314373, 51.711121>,  <46.406792, 50.464024, 51.351593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.498135, 50.314373, 51.711121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.957132, 0.255242, -0.136930,
		-0.178188, 0.891562, 0.416373,
		0.228357, -0.374125, 0.898823,
		46.566643, 50.202137, 51.980766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.784126, 50.936146, 51.876431>,  <46.406792, 50.464024, 51.351593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.784126, 50.936146, 51.876431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893093, 50.555611, 51.934040>,  <46.958473, 50.327290, 51.968605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.893093, 50.555611, 51.934040>,  <46.784126, 50.936146, 51.876431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.893093, 50.555611, 51.934040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.942239, 0.233455, -0.240176,
		0.194864, 0.201138, 0.959985,
		0.272422, -0.951337, 0.144028,
		46.974819, 50.270210, 51.977249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.965515, 51.164440, 52.533665>,  <46.784126, 50.936146, 51.876431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.965515, 51.164440, 52.533665> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254078, 50.928017, 52.389320>,  <47.427216, 50.786163, 52.302715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.254078, 50.928017, 52.389320>,  <46.965515, 51.164440, 52.533665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.254078, 50.928017, 52.389320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556055, 0.804986, -0.206880,
		0.412767, -0.051414, 0.909384,
		0.721406, -0.591061, -0.360861,
		47.470501, 50.750698, 52.281063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.556934, 51.340076, 52.901840>,  <46.965515, 51.164440, 52.533665>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.556934, 51.340076, 52.901840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609486, 51.183060, 52.537720>,  <47.641018, 51.088848, 52.319248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.609486, 51.183060, 52.537720>,  <47.556934, 51.340076, 52.901840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.609486, 51.183060, 52.537720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462965, 0.836267, -0.293803,
		0.876586, -0.382839, 0.291602,
		0.131378, -0.392545, -0.910301,
		47.648899, 51.065296, 52.264629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.216099, 51.371250, 52.681232>,  <47.556934, 51.340076, 52.901840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.216099, 51.371250, 52.681232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.038845, 51.372074, 52.322651>,  <47.932495, 51.372570, 52.107502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<48.038845, 51.372074, 52.322651>,  <48.216099, 51.371250, 52.681232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<48.038845, 51.372074, 52.322651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431158, 0.877231, -0.211111,
		0.785962, -0.480063, -0.389619,
		-0.443132, 0.002062, -0.896454,
		47.905907, 51.372692, 52.053715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.878426, 51.200603, 52.366539>,  <48.216099, 51.371250, 52.681232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.878426, 51.200603, 52.366539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.261463, 51.207634, 52.481567>,  <49.491287, 51.211853, 52.550583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.261463, 51.207634, 52.481567>,  <48.878426, 51.200603, 52.366539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.261463, 51.207634, 52.481567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255844, 0.510848, 0.820718,
		-0.132479, -0.859491, 0.493684,
		0.957597, 0.017578, 0.287572,
		49.548744, 51.212906, 52.567841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.758217, 51.309681, 53.187725>,  <48.878426, 51.200603, 52.366539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.758217, 51.309681, 53.187725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.111534, 51.439453, 53.052345>,  <49.323524, 51.517315, 52.971119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.111534, 51.439453, 53.052345>,  <48.758217, 51.309681, 53.187725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.111534, 51.439453, 53.052345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056338, 0.790119, 0.610359,
		0.465431, -0.520056, 0.716182,
		0.883290, 0.324428, -0.338446,
		49.376522, 51.536781, 52.950809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.995739, 51.586277, 53.858257>,  <48.758217, 51.309681, 53.187725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.995739, 51.586277, 53.858257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.162277, 51.738358, 53.527901>,  <49.262199, 51.829605, 53.329685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.162277, 51.738358, 53.527901>,  <48.995739, 51.586277, 53.858257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.162277, 51.738358, 53.527901> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036090, 0.900741, 0.432855,
		0.908493, -0.210021, 0.361291,
		0.416338, 0.380207, -0.825896,
		49.287182, 51.852421, 53.280132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<49.704540, 51.840626, 54.070248>,  <48.995739, 51.586277, 53.858257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<49.704540, 51.840626, 54.070248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.554550, 52.040382, 53.757839>,  <49.464558, 52.160236, 53.570393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.554550, 52.040382, 53.757839>,  <49.704540, 51.840626, 54.070248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.554550, 52.040382, 53.757839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100778, 0.859463, 0.501165,
		0.921541, 0.109214, -0.372605,
		-0.374975, 0.499394, -0.781024,
		49.442059, 52.190201, 53.523533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.151562, 52.340519, 53.860008>,  <49.704540, 51.840626, 54.070248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.151562, 52.340519, 53.860008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.811932, 52.477867, 53.699425>,  <49.608154, 52.560276, 53.603073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<49.811932, 52.477867, 53.699425>,  <50.151562, 52.340519, 53.860008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<49.811932, 52.477867, 53.699425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103751, 0.853537, 0.510598,
		0.517981, 0.391885, -0.760343,
		-0.849077, 0.343367, -0.401457,
		49.557209, 52.580875, 53.578987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<50.583172, 52.554859, 54.364971>,  <50.151562, 52.340519, 53.860008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<50.583172, 52.554859, 54.364971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.497711, 52.864014, 54.603966>,  <50.446434, 53.049507, 54.747364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.497711, 52.864014, 54.603966>,  <50.583172, 52.554859, 54.364971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.497711, 52.864014, 54.603966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904426, -0.074702, 0.420040,
		0.369277, 0.630130, -0.683060,
		-0.213654, 0.772888, 0.597491,
		50.433617, 53.095879, 54.783215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.126781, 52.668060, 54.860035>,  <50.583172, 52.554859, 54.364971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.126781, 52.668060, 54.860035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.984074, 53.025093, 54.970314>,  <50.898449, 53.239311, 55.036484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<50.984074, 53.025093, 54.970314>,  <51.126781, 52.668060, 54.860035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<50.984074, 53.025093, 54.970314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798243, 0.137959, 0.586324,
		0.485308, 0.429259, -0.761717,
		-0.356771, 0.892583, 0.275700,
		50.877041, 53.292870, 55.053024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<51.506008, 53.293556, 54.545433>,  <51.126781, 52.668060, 54.860035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<51.506008, 53.293556, 54.545433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.378777, 53.242851, 54.921253>,  <51.302437, 53.212429, 55.146744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<51.378777, 53.242851, 54.921253>,  <51.506008, 53.293556, 54.545433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<51.378777, 53.242851, 54.921253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.947500, -0.008362, 0.319647,
		-0.032664, 0.991897, 0.122771,
		-0.318083, -0.126767, 0.939549,
		51.283352, 53.204823, 55.203117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.094967, 52.958679, 54.090786>,  <51.506008, 53.293556, 54.545433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.094967, 52.958679, 54.090786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.026775, 52.716675, 54.401886>,  <51.985859, 52.571472, 54.588547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.026775, 52.716675, 54.401886>,  <52.094967, 52.958679, 54.090786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.026775, 52.716675, 54.401886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.985233, -0.117386, 0.124644,
		0.015886, 0.787517, 0.616088,
		-0.170479, -0.605011, 0.777753,
		51.975632, 52.535172, 54.635212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.478661, 53.275009, 54.660618>,  <52.094967, 52.958679, 54.090786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.478661, 53.275009, 54.660618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.395367, 52.891220, 54.736565>,  <52.345390, 52.660946, 54.782131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.395367, 52.891220, 54.736565>,  <52.478661, 53.275009, 54.660618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.395367, 52.891220, 54.736565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954619, -0.157112, 0.253020,
		-0.212936, 0.233938, 0.948647,
		-0.208234, -0.959473, 0.189866,
		52.332897, 52.603378, 54.793526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<52.484734, 53.054558, 55.351734>,  <52.478661, 53.275009, 54.660618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<52.484734, 53.054558, 55.351734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.609791, 52.805504, 55.064796>,  <52.684826, 52.656071, 54.892635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<52.609791, 52.805504, 55.064796>,  <52.484734, 53.054558, 55.351734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<52.609791, 52.805504, 55.064796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.949662, 0.189033, 0.249818,
		-0.019944, -0.759338, 0.650391,
		0.312641, -0.622634, -0.717344,
		52.703583, 52.618713, 54.849594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.239788, 53.119812, 55.325699>,  <52.484734, 53.054558, 55.351734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.239788, 53.119812, 55.325699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.188969, 52.835823, 55.048630>,  <53.158478, 52.665432, 54.882385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.188969, 52.835823, 55.048630>,  <53.239788, 53.119812, 55.325699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.188969, 52.835823, 55.048630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.981332, 0.011682, -0.191964,
		0.144381, -0.704135, 0.695232,
		-0.127047, -0.709970, -0.692677,
		53.150856, 52.622833, 54.840828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<53.742676, 52.505123, 55.505074>,  <53.239788, 53.119812, 55.325699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<53.742676, 52.505123, 55.505074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.633987, 52.528622, 55.120842>,  <53.568775, 52.542721, 54.890305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<53.633987, 52.528622, 55.120842>,  <53.742676, 52.505123, 55.505074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<53.633987, 52.528622, 55.120842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945013, -0.172451, -0.277868,
		-0.181978, -0.983265, -0.008659,
		-0.271724, 0.058749, -0.960580,
		53.552471, 52.546246, 54.832668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.077690, 51.965473, 55.195652>,  <53.742676, 52.505123, 55.505074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.077690, 51.965473, 55.195652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.018738, 52.276688, 54.951378>,  <53.983364, 52.463417, 54.804813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.018738, 52.276688, 54.951378>,  <54.077690, 51.965473, 55.195652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.018738, 52.276688, 54.951378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954504, -0.049940, -0.293987,
		-0.259230, -0.626230, -0.735279,
		-0.147384, 0.778037, -0.610685,
		53.974522, 52.510098, 54.768173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.564533, 51.802555, 54.818844>,  <54.077690, 51.965473, 55.195652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.564533, 51.802555, 54.818844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.481163, 52.191696, 54.778610>,  <54.431141, 52.425182, 54.754471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.481163, 52.191696, 54.778610>,  <54.564533, 51.802555, 54.818844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.481163, 52.191696, 54.778610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974271, 0.197507, -0.108568,
		-0.085756, -0.120620, -0.988988,
		-0.208427, 0.972852, -0.100579,
		54.418636, 52.483551, 54.748436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<54.786758, 52.100018, 54.089539>,  <54.564533, 51.802555, 54.818844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<54.786758, 52.100018, 54.089539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.793961, 52.333630, 54.414150>,  <54.798283, 52.473797, 54.608917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<54.793961, 52.333630, 54.414150>,  <54.786758, 52.100018, 54.089539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<54.793961, 52.333630, 54.414150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980821, 0.147232, -0.127723,
		-0.194077, 0.798268, -0.570177,
		0.018009, 0.584030, 0.811532,
		54.799362, 52.508839, 54.657612>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.319965, 52.554462, 54.041515>,  <54.786758, 52.100018, 54.089539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.319965, 52.554462, 54.041515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.262482, 52.503826, 54.434113>,  <55.227993, 52.473442, 54.669670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.262482, 52.503826, 54.434113>,  <55.319965, 52.554462, 54.041515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.262482, 52.503826, 54.434113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.989577, -0.009181, 0.143708,
		-0.009181, 0.991912, 0.126595,
		-0.143708, -0.126595, 0.981489,
		55.219368, 52.465847, 54.728558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<55.887424, 53.114265, 54.439972>,  <55.319965, 52.554462, 54.041515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<55.887424, 53.114265, 54.439972> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.755661, 52.821877, 54.679028>,  <55.676601, 52.646442, 54.822460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<55.755661, 52.821877, 54.679028>,  <55.887424, 53.114265, 54.439972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<55.755661, 52.821877, 54.679028> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.907332, -0.069948, 0.414555,
		-0.261224, 0.678814, 0.686275,
		-0.329409, -0.730971, 0.597638,
		55.656837, 52.602585, 54.858318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.025112, 53.507408, 54.970425>,  <55.887424, 53.114265, 54.439972>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.025112, 53.507408, 54.970425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.001976, 53.109604, 55.005280>,  <55.988094, 52.870922, 55.026192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.001976, 53.109604, 55.005280>,  <56.025112, 53.507408, 54.970425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.001976, 53.109604, 55.005280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.915233, -0.017963, 0.402524,
		-0.398751, 0.103038, 0.911252,
		-0.057844, -0.994515, 0.087141,
		55.984623, 52.811249, 55.031422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.318977, 53.271500, 55.615566>,  <56.025112, 53.507408, 54.970425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.318977, 53.271500, 55.615566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.371399, 52.989349, 55.336922>,  <56.402851, 52.820057, 55.169735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.371399, 52.989349, 55.336922>,  <56.318977, 53.271500, 55.615566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.371399, 52.989349, 55.336922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.991346, 0.087882, 0.097513,
		-0.007564, -0.703361, 0.710793,
		0.131053, -0.705379, -0.696610,
		56.410713, 52.777737, 55.127937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<56.681271, 52.656975, 55.854446>,  <56.318977, 53.271500, 55.615566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<56.681271, 52.656975, 55.854446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.768677, 52.754910, 55.476601>,  <56.821121, 52.813671, 55.249893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<56.768677, 52.754910, 55.476601>,  <56.681271, 52.656975, 55.854446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<56.768677, 52.754910, 55.476601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.914689, 0.285873, 0.285691,
		0.339990, -0.926460, -0.161486,
		0.218517, 0.244842, -0.944618,
		56.834232, 52.828362, 55.193214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.180477, 52.114296, 56.178165>,  <56.681271, 52.656975, 55.854446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.180477, 52.114296, 56.178165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.256592, 51.732010, 56.088371>,  <57.302261, 51.502636, 56.034492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<57.256592, 51.732010, 56.088371>,  <57.180477, 52.114296, 56.178165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<57.256592, 51.732010, 56.088371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.658405, -0.045379, 0.751294,
		-0.728212, -0.290767, 0.620615,
		0.190289, -0.955717, -0.224487,
		57.313679, 51.445293, 56.021027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<57.877087, 51.843212, 55.997124>,  <57.180477, 52.114296, 56.178165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<57.877087, 51.843212, 55.997124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.059891, 52.152237, 55.820808>,  <58.169571, 52.337650, 55.715019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.059891, 52.152237, 55.820808>,  <57.877087, 51.843212, 55.997124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.059891, 52.152237, 55.820808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765306, -0.088996, 0.637485,
		0.453268, -0.628673, -0.631917,
		0.457007, 0.772561, -0.440788,
		58.196995, 52.384007, 55.688572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<58.539394, 51.668564, 55.618950>,  <57.877087, 51.843212, 55.997124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<58.539394, 51.668564, 55.618950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.521317, 52.031784, 55.785515>,  <58.510468, 52.249718, 55.885452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<58.521317, 52.031784, 55.785515>,  <58.539394, 51.668564, 55.618950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<58.521317, 52.031784, 55.785515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801885, -0.215610, 0.557218,
		0.595766, 0.359098, -0.718409,
		-0.045199, 0.908053, 0.416409,
		58.507755, 52.304199, 55.910439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.263123, 52.032600, 55.525459>,  <58.539394, 51.668564, 55.618950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.263123, 52.032600, 55.525459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.023003, 52.133778, 55.828949>,  <58.878929, 52.194485, 56.011044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.023003, 52.133778, 55.828949>,  <59.263123, 52.032600, 55.525459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.023003, 52.133778, 55.828949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607243, -0.473221, 0.638214,
		0.520473, 0.843850, 0.130479,
		-0.600303, 0.252941, 0.758721,
		58.842911, 52.209660, 56.056564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.603802, 52.437607, 56.135723>,  <59.263123, 52.032600, 55.525459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.603802, 52.437607, 56.135723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.298180, 52.217567, 56.270546>,  <59.114807, 52.085545, 56.351440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.298180, 52.217567, 56.270546>,  <59.603802, 52.437607, 56.135723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.298180, 52.217567, 56.270546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568304, -0.326608, 0.755221,
		-0.305363, 0.768581, 0.562171,
		-0.764058, -0.550101, 0.337054,
		59.068962, 52.052536, 56.371662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.453571, 52.644840, 56.790257>,  <59.603802, 52.437607, 56.135723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.453571, 52.644840, 56.790257> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.388878, 52.259682, 56.703850>,  <59.350060, 52.028587, 56.652004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<59.388878, 52.259682, 56.703850>,  <59.453571, 52.644840, 56.790257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<59.388878, 52.259682, 56.703850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548510, -0.269688, 0.791458,
		-0.820352, 0.009521, 0.571779,
		-0.161738, -0.962901, -0.216017,
		59.340355, 51.970810, 56.639046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<59.989296, 52.605965, 57.347572>,  <59.453571, 52.644840, 56.790257>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<59.989296, 52.605965, 57.347572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.269524, 52.468433, 57.097458>,  <60.437660, 52.385914, 56.947388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.269524, 52.468433, 57.097458>,  <59.989296, 52.605965, 57.347572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.269524, 52.468433, 57.097458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646088, 0.677630, 0.351266,
		0.302942, -0.650079, 0.696867,
		0.700569, -0.343824, -0.625291,
		60.479694, 52.365288, 56.909870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<60.489899, 53.064457, 57.688980>,  <59.989296, 52.605965, 57.347572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<60.489899, 53.064457, 57.688980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.656395, 52.910267, 57.359581>,  <60.756294, 52.817753, 57.161942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<60.656395, 52.910267, 57.359581>,  <60.489899, 53.064457, 57.688980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<60.656395, 52.910267, 57.359581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719509, 0.693381, 0.039110,
		0.555922, -0.608793, 0.565970,
		0.416243, -0.385479, -0.823497,
		60.781269, 52.794624, 57.112534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.140797, 52.731129, 57.880623>,  <60.489899, 53.064457, 57.688980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.140797, 52.731129, 57.880623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.068199, 52.912796, 57.531731>,  <61.024639, 53.021797, 57.322395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.068199, 52.912796, 57.531731>,  <61.140797, 52.731129, 57.880623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.068199, 52.912796, 57.531731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621223, 0.740525, 0.256328,
		0.762326, -0.495328, -0.416543,
		-0.181494, 0.454172, -0.872232,
		61.013752, 53.049049, 57.270061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.704361, 53.009087, 57.574894>,  <61.140797, 52.731129, 57.880623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.704361, 53.009087, 57.574894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.415413, 53.239212, 57.421432>,  <61.242043, 53.377289, 57.329357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<61.415413, 53.239212, 57.421432>,  <61.704361, 53.009087, 57.574894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<61.415413, 53.239212, 57.421432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595619, 0.799523, 0.077468,
		0.351308, -0.172550, -0.920222,
		-0.722372, 0.575317, -0.383653,
		61.198700, 53.411808, 57.306335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<61.937790, 53.348900, 56.848675>,  <61.704361, 53.009087, 57.574894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<61.937790, 53.348900, 56.848675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.244141, 53.166550, 57.030052>,  <62.427952, 53.057140, 57.138878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.244141, 53.166550, 57.030052>,  <61.937790, 53.348900, 56.848675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.244141, 53.166550, 57.030052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642975, 0.547040, -0.536032,
		-0.003689, 0.702088, 0.712081,
		0.765878, -0.455873, 0.453443,
		62.473904, 53.029789, 57.166084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<62.449055, 53.791595, 57.040493>,  <61.937790, 53.348900, 56.848675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<62.449055, 53.791595, 57.040493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.636246, 53.439468, 57.009422>,  <62.748558, 53.228191, 56.990780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<62.636246, 53.439468, 57.009422>,  <62.449055, 53.791595, 57.040493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<62.636246, 53.439468, 57.009422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808734, 0.462036, -0.363968,
		0.356300, 0.107505, 0.928166,
		0.467974, -0.880321, -0.077681,
		62.776638, 53.175373, 56.986118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.092499, 53.801689, 57.363117>,  <62.449055, 53.791595, 57.040493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.092499, 53.801689, 57.363117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.120399, 53.554680, 57.049736>,  <63.137138, 53.406475, 56.861706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.120399, 53.554680, 57.049736>,  <63.092499, 53.801689, 57.363117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.120399, 53.554680, 57.049736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.880587, 0.407135, -0.242505,
		0.468724, -0.672987, 0.572176,
		0.069750, -0.617519, -0.783457,
		63.141323, 53.369423, 56.814697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<63.709404, 53.513016, 57.475555>,  <63.092499, 53.801689, 57.363117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<63.709404, 53.513016, 57.475555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.609230, 53.466278, 57.091133>,  <63.549126, 53.438236, 56.860481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<63.609230, 53.466278, 57.091133>,  <63.709404, 53.513016, 57.475555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<63.609230, 53.466278, 57.091133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877648, 0.391641, -0.276317,
		0.408674, -0.912670, 0.004464,
		-0.250438, -0.116841, -0.961056,
		63.534100, 53.431225, 56.802814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.423218, 53.295315, 57.764839>,  <63.709404, 53.513016, 57.475555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.423218, 53.295315, 57.764839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.799164, 53.419430, 57.821915>,  <65.024734, 53.493900, 57.856159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.799164, 53.419430, 57.821915>,  <64.423218, 53.295315, 57.764839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.799164, 53.419430, 57.821915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134548, 0.720420, -0.680361,
		-0.313906, 0.620254, 0.718852,
		0.939872, 0.310289, 0.142691,
		65.081123, 53.512516, 57.864723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.411194, 53.996201, 57.708714>,  <64.423218, 53.295315, 57.764839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.411194, 53.996201, 57.708714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.804893, 53.926144, 57.699211>,  <65.041115, 53.884109, 57.693508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<64.804893, 53.926144, 57.699211>,  <64.411194, 53.996201, 57.708714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<64.804893, 53.926144, 57.699211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136796, 0.839999, -0.525060,
		0.111915, 0.513544, 0.850733,
		0.984257, -0.175139, -0.023757,
		65.100174, 53.873600, 57.692085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<64.891403, 54.515118, 58.055008>,  <64.411194, 53.996201, 57.708714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<64.891403, 54.515118, 58.055008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.100494, 54.346775, 57.758461>,  <65.225952, 54.245770, 57.580532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.100494, 54.346775, 57.758461>,  <64.891403, 54.515118, 58.055008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.100494, 54.346775, 57.758461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009417, 0.866743, -0.498667,
		0.852444, 0.267652, 0.449113,
		0.522734, -0.420856, -0.741370,
		65.257317, 54.220520, 57.536049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.497849, 54.908966, 57.851524>,  <64.891403, 54.515118, 58.055008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.497849, 54.908966, 57.851524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.380135, 54.691181, 57.537338>,  <65.309509, 54.560509, 57.348827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.380135, 54.691181, 57.537338>,  <65.497849, 54.908966, 57.851524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.380135, 54.691181, 57.537338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127302, 0.836869, -0.532395,
		0.947202, -0.056683, -0.315586,
		-0.294282, -0.544461, -0.785468,
		65.291847, 54.527843, 57.301697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.933449, 54.959759, 57.172977>,  <65.497849, 54.908966, 57.851524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.933449, 54.959759, 57.172977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.548294, 54.895298, 57.086372>,  <65.317200, 54.856621, 57.034409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.548294, 54.895298, 57.086372>,  <65.933449, 54.959759, 57.172977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.548294, 54.895298, 57.086372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103700, 0.961500, -0.254489,
		0.249192, -0.222591, -0.942527,
		-0.962886, -0.161156, -0.216515,
		65.259430, 54.846951, 57.021420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.869797, 55.158150, 56.411400>,  <65.933449, 54.959759, 57.172977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.869797, 55.158150, 56.411400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.565979, 55.210949, 56.666168>,  <65.383690, 55.242626, 56.819031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.565979, 55.210949, 56.666168>,  <65.869797, 55.158150, 56.411400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.565979, 55.210949, 56.666168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071224, 0.956429, -0.283143,
		-0.646544, -0.260424, -0.717050,
		-0.759545, 0.131994, 0.636922,
		65.338112, 55.250546, 56.857246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.343460, 55.371952, 55.997688>,  <65.869797, 55.158150, 56.411400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.343460, 55.371952, 55.997688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.294098, 55.493874, 56.375443>,  <65.264481, 55.567028, 56.602097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.294098, 55.493874, 56.375443>,  <65.343460, 55.371952, 55.997688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.294098, 55.493874, 56.375443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058687, 0.952236, -0.299671,
		-0.990618, 0.018440, -0.135408,
		-0.123414, 0.304807, 0.944384,
		65.257072, 55.585316, 56.658756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.919151, 55.796001, 55.776718>,  <65.343460, 55.371952, 55.997688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.919151, 55.796001, 55.776718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.130920, 55.469624, 55.683815>,  <66.257980, 55.273796, 55.628071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.130920, 55.469624, 55.683815>,  <65.919151, 55.796001, 55.776718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.130920, 55.469624, 55.683815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068566, 0.314032, -0.946933,
		0.845586, 0.485397, 0.222200,
		0.529417, -0.815949, -0.232259,
		66.289749, 55.224838, 55.614136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.779076, 56.398678, 56.261398>,  <65.919151, 55.796001, 55.776718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.779076, 56.398678, 56.261398> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.659264, 56.698406, 56.497635>,  <65.587379, 56.878242, 56.639378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.659264, 56.698406, 56.497635>,  <65.779076, 56.398678, 56.261398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.659264, 56.698406, 56.497635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095566, -0.639467, 0.762856,
		0.949289, 0.172058, 0.263149,
		-0.299530, 0.749318, 0.590596,
		65.569405, 56.923203, 56.674812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.980591, 56.327938, 56.933651>,  <65.779076, 56.398678, 56.261398>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.980591, 56.327938, 56.933651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.656181, 56.556973, 56.981606>,  <65.461533, 56.694393, 57.010380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.656181, 56.556973, 56.981606>,  <65.980591, 56.327938, 56.933651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.656181, 56.556973, 56.981606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153332, -0.405832, 0.900994,
		0.564555, 0.712349, 0.416938,
		-0.811029, 0.572590, 0.119889,
		65.412872, 56.728748, 57.017570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.117722, 56.559689, 57.644451>,  <65.980591, 56.327938, 56.933651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.117722, 56.559689, 57.644451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.737358, 56.569130, 57.521019>,  <65.509140, 56.574795, 57.446960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.737358, 56.569130, 57.521019>,  <66.117722, 56.559689, 57.644451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.737358, 56.569130, 57.521019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293781, -0.382398, 0.876050,
		-0.097327, 0.923696, 0.370558,
		-0.950905, 0.023600, -0.308582,
		65.452087, 56.576210, 57.428444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.767471, 56.863518, 58.200603>,  <66.117722, 56.559689, 57.644451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.767471, 56.863518, 58.200603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.508484, 56.648548, 57.984474>,  <65.353088, 56.519566, 57.854797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.508484, 56.648548, 57.984474>,  <65.767471, 56.863518, 58.200603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.508484, 56.648548, 57.984474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197438, -0.566505, 0.800056,
		-0.736064, 0.624699, 0.260692,
		-0.647478, -0.537422, -0.540323,
		65.314240, 56.487320, 57.822376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.030342, 56.565742, 58.350304>,  <65.767471, 56.863518, 58.200603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.030342, 56.565742, 58.350304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108948, 56.463562, 58.728958>,  <65.156113, 56.402252, 58.956150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.108948, 56.463562, 58.728958>,  <65.030342, 56.565742, 58.350304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.108948, 56.463562, 58.728958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541562, 0.833113, 0.112396,
		-0.817370, 0.490578, 0.302059,
		0.196510, -0.255453, 0.946640,
		65.167900, 56.386925, 59.012951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.144669, 57.309456, 58.236702>,  <65.030342, 56.565742, 58.350304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.144669, 57.309456, 58.236702> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.215469, 57.215321, 58.618965>,  <65.257950, 57.158840, 58.848324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.215469, 57.215321, 58.618965>,  <65.144669, 57.309456, 58.236702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.215469, 57.215321, 58.618965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.983042, 0.005049, 0.183309,
		-0.047967, -0.971898, -0.230466,
		0.176994, -0.235351, 0.955659,
		65.268570, 57.144722, 58.905663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.558762, 57.931900, 58.327404>,  <65.144669, 57.309456, 58.236702>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.558762, 57.931900, 58.327404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.573120, 57.664425, 58.624474>,  <65.581734, 57.503941, 58.802715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.573120, 57.664425, 58.624474>,  <65.558762, 57.931900, 58.327404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.573120, 57.664425, 58.624474> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.982874, 0.158033, 0.094790,
		-0.180752, 0.726555, 0.662908,
		0.035891, -0.668688, 0.742676,
		65.583885, 57.463818, 58.847275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<65.776215, 58.268627, 59.008018>,  <65.558762, 57.931900, 58.327404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<65.776215, 58.268627, 59.008018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.886612, 57.886425, 58.966400>,  <65.952850, 57.657104, 58.941429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<65.886612, 57.886425, 58.966400>,  <65.776215, 58.268627, 59.008018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<65.886612, 57.886425, 58.966400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.933478, 0.240688, 0.265874,
		-0.229003, -0.170502, 0.958377,
		0.276001, -0.955510, -0.104042,
		65.969414, 57.599773, 58.935188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.158813, 58.137680, 59.614662>,  <65.776215, 58.268627, 59.008018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.158813, 58.137680, 59.614662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.285545, 57.935486, 59.293640>,  <66.361588, 57.814167, 59.101025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.285545, 57.935486, 59.293640>,  <66.158813, 58.137680, 59.614662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.285545, 57.935486, 59.293640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.857801, 0.513762, 0.015050,
		0.404716, -0.693203, 0.596385,
		0.316833, -0.505489, -0.802557,
		66.380592, 57.783840, 59.052872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<66.734550, 57.774216, 59.882271>,  <66.158813, 58.137680, 59.614662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<66.734550, 57.774216, 59.882271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.700912, 57.878120, 59.497467>,  <66.680733, 57.940464, 59.266586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<66.700912, 57.878120, 59.497467>,  <66.734550, 57.774216, 59.882271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<66.700912, 57.878120, 59.497467> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.900333, 0.433509, 0.038348,
		0.426999, -0.862900, -0.270326,
		-0.084098, 0.259758, -0.962005,
		66.675682, 57.956047, 59.208866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.009789, 57.344540, 60.418789>,  <66.734550, 57.774216, 59.882271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.009789, 57.344540, 60.418789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253212, 57.027870, 60.397186>,  <67.399261, 56.837868, 60.384224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.253212, 57.027870, 60.397186>,  <67.009789, 57.344540, 60.418789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.253212, 57.027870, 60.397186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765953, -0.603832, 0.220689,
		-0.207323, -0.092936, -0.973848,
		0.608550, -0.791675, -0.054004,
		67.435776, 56.790367, 60.380985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<67.728622, 57.052505, 60.054153>,  <67.009789, 57.344540, 60.418789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<67.728622, 57.052505, 60.054153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.959793, 57.264645, 60.302254>,  <68.098495, 57.391930, 60.451115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<67.959793, 57.264645, 60.302254>,  <67.728622, 57.052505, 60.054153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<67.959793, 57.264645, 60.302254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725850, -0.681448, -0.093651,
		0.373003, 0.504337, -0.778789,
		0.577936, 0.530352, 0.620255,
		68.133171, 57.423752, 60.488331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<68.428154, 57.116684, 59.740162>,  <67.728622, 57.052505, 60.054153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<68.428154, 57.116684, 59.740162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.444397, 57.135330, 60.139397>,  <68.454140, 57.146519, 60.378937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<68.444397, 57.135330, 60.139397>,  <68.428154, 57.116684, 59.740162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<68.444397, 57.135330, 60.139397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634419, -0.772921, 0.010289,
		0.771922, 0.632787, -0.060962,
		0.040608, 0.046618, 0.998087,
		68.456581, 57.149315, 60.438824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.093552, 57.265781, 60.126637>,  <68.428154, 57.116684, 59.740162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.093552, 57.265781, 60.126637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.062424, 56.871250, 60.068535>,  <69.043747, 56.634529, 60.033672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.062424, 56.871250, 60.068535>,  <69.093552, 57.265781, 60.126637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.062424, 56.871250, 60.068535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.993139, -0.063927, -0.097924,
		0.087299, -0.151877, 0.984537,
		-0.077811, -0.986330, -0.145255,
		69.039078, 56.575352, 60.024960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.491539, 56.833118, 60.656223>,  <69.093552, 57.265781, 60.126637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.491539, 56.833118, 60.656223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.468475, 56.603905, 60.329224>,  <69.454636, 56.466377, 60.133022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.468475, 56.603905, 60.329224>,  <69.491539, 56.833118, 60.656223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.468475, 56.603905, 60.329224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.995428, -0.095462, -0.003293,
		-0.076153, -0.813953, 0.575917,
		-0.057658, -0.573033, -0.817501,
		69.451180, 56.431995, 60.083973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<69.798279, 56.056339, 60.700558>,  <69.491539, 56.833118, 60.656223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<69.798279, 56.056339, 60.700558> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.814499, 56.269794, 60.362663>,  <69.824234, 56.397869, 60.159927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<69.814499, 56.269794, 60.362663>,  <69.798279, 56.056339, 60.700558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<69.814499, 56.269794, 60.362663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971424, 0.176822, 0.158334,
		0.233862, -0.827021, -0.511219,
		0.040551, 0.533639, -0.844740,
		69.826668, 56.429886, 60.109241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.368340, 55.857876, 60.224945>,  <69.798279, 56.056339, 60.700558>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.368340, 55.857876, 60.224945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.257782, 56.233162, 60.141655>,  <70.191452, 56.458332, 60.091682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.257782, 56.233162, 60.141655>,  <70.368340, 55.857876, 60.224945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.257782, 56.233162, 60.141655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.944055, 0.305615, 0.123930,
		0.179911, -0.162324, -0.970197,
		-0.276390, 0.938216, -0.208226,
		70.174866, 56.514626, 60.079185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<70.917511, 56.247356, 59.737823>,  <70.368340, 55.857876, 60.224945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<70.917511, 56.247356, 59.737823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.698502, 56.507439, 59.948517>,  <70.567093, 56.663486, 60.074932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<70.698502, 56.507439, 59.948517>,  <70.917511, 56.247356, 59.737823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<70.698502, 56.507439, 59.948517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.836615, 0.412512, 0.360429,
		0.017070, 0.638016, -0.769834,
		-0.547525, 0.650207, 0.526733,
		70.534241, 56.702499, 60.106537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.655930, 56.336620, 59.755722>,  <70.917511, 56.247356, 59.737823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.655930, 56.336620, 59.755722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.028297, 56.190552, 59.753609>,  <72.251717, 56.102909, 59.752342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.028297, 56.190552, 59.753609>,  <71.655930, 56.336620, 59.755722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.028297, 56.190552, 59.753609> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317188, 0.801260, 0.507321,
		-0.181028, -0.473953, 0.861741,
		0.930925, -0.365173, -0.005282,
		72.307571, 56.081001, 59.752026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<71.854378, 56.268784, 60.494644>,  <71.655930, 56.336620, 59.755722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<71.854378, 56.268784, 60.494644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.148338, 56.293297, 60.224487>,  <72.324715, 56.308006, 60.062393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.148338, 56.293297, 60.224487>,  <71.854378, 56.268784, 60.494644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.148338, 56.293297, 60.224487> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441113, 0.713248, 0.544699,
		0.515108, -0.698227, 0.497134,
		0.734903, 0.061286, -0.675397,
		72.368813, 56.311684, 60.021870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<72.467949, 56.339848, 60.832302>,  <71.854378, 56.268784, 60.494644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<72.467949, 56.339848, 60.832302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.552940, 56.466251, 60.462440>,  <72.603935, 56.542091, 60.240524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<72.552940, 56.466251, 60.462440>,  <72.467949, 56.339848, 60.832302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<72.552940, 56.466251, 60.462440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484548, 0.787659, 0.380534,
		0.848565, -0.528899, 0.014246,
		0.212485, 0.316005, -0.924657,
		72.616684, 56.561054, 60.185043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.191238, 56.397644, 60.838039>,  <72.467949, 56.339848, 60.832302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.191238, 56.397644, 60.838039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.016190, 56.638348, 60.570793>,  <72.911163, 56.782768, 60.410446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.016190, 56.638348, 60.570793>,  <73.191238, 56.397644, 60.838039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.016190, 56.638348, 60.570793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426696, 0.793031, 0.434778,
		0.791468, -0.094817, -0.603811,
		-0.437616, 0.601757, -0.668117,
		72.884903, 56.818874, 60.370358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.663597, 56.831417, 60.484245>,  <73.191238, 56.397644, 60.838039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.663597, 56.831417, 60.484245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.301651, 57.001400, 60.494171>,  <73.084480, 57.103390, 60.500126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.301651, 57.001400, 60.494171>,  <73.663597, 56.831417, 60.484245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.301651, 57.001400, 60.494171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419173, 0.879374, 0.225820,
		0.074141, 0.214741, -0.973853,
		-0.904874, 0.424955, 0.024816,
		73.030190, 57.128887, 60.501617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<73.534821, 57.352596, 60.026711>,  <73.663597, 56.831417, 60.484245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<73.534821, 57.352596, 60.026711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.314377, 57.443226, 60.347946>,  <73.182114, 57.497604, 60.540688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<73.314377, 57.443226, 60.347946>,  <73.534821, 57.352596, 60.026711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<73.314377, 57.443226, 60.347946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646473, 0.724455, 0.239242,
		-0.527594, 0.651021, -0.545725,
		-0.551105, 0.226574, 0.803086,
		73.149048, 57.511200, 60.588871>
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
