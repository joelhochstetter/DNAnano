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
	<1.174445, 4.106861, 4.421774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.220078, 3.711472, 4.461586>,  <1.247457, 3.474238, 4.485473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.220078, 3.711472, 4.461586>,  <1.174445, 4.106861, 4.421774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.220078, 3.711472, 4.461586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204028, -0.074737, -0.976108,
		0.972295, 0.131663, 0.193150,
		0.114082, -0.988473, 0.099529,
		1.254302, 3.414930, 4.491445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.757762, 3.835560, 4.134773>,  <1.174445, 4.106861, 4.421774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.757762, 3.835560, 4.134773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.483078, 3.545349, 4.116707>,  <1.318268, 3.371222, 4.105867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.483078, 3.545349, 4.116707>,  <1.757762, 3.835560, 4.134773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.483078, 3.545349, 4.116707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077383, -0.011180, -0.996939,
		0.722802, -0.688102, 0.063821,
		-0.686709, -0.725528, -0.045166,
		1.277065, 3.327691, 4.103157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.990019, 3.413106, 3.641182>,  <1.757762, 3.835560, 4.134773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.990019, 3.413106, 3.641182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.601009, 3.328636, 3.680374>,  <1.367603, 3.277954, 3.703889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.601009, 3.328636, 3.680374>,  <1.990019, 3.413106, 3.641182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.601009, 3.328636, 3.680374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077122, -0.104860, -0.991492,
		0.219653, -0.971807, 0.085693,
		-0.972525, -0.211175, 0.097980,
		1.309252, 3.265284, 3.709768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.773520, 2.716586, 3.385443>,  <1.990019, 3.413106, 3.641182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.773520, 2.716586, 3.385443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.481884, 2.989388, 3.362480>,  <1.306902, 3.153069, 3.348702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.481884, 2.989388, 3.362480>,  <1.773520, 2.716586, 3.385443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.481884, 2.989388, 3.362480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209799, -0.302547, -0.929758,
		-0.651468, -0.665834, 0.363668,
		-0.729091, 0.682005, -0.057408,
		1.263157, 3.193989, 3.345258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.164375, 2.368227, 3.206557>,  <1.773520, 2.716586, 3.385443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.164375, 2.368227, 3.206557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.095604, 2.749031, 3.105270>,  <1.054341, 2.977513, 3.044498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.095604, 2.749031, 3.105270>,  <1.164375, 2.368227, 3.206557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.095604, 2.749031, 3.105270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290114, -0.294575, -0.910527,
		-0.941422, -0.083083, 0.326836,
		-0.171927, 0.952010, -0.253216,
		1.044026, 3.034634, 3.029305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.425109, 2.377625, 2.918328>,  <1.164375, 2.368227, 3.206557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.425109, 2.377625, 2.918328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.622902, 2.700760, 2.790024>,  <0.741578, 2.894641, 2.713042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.622902, 2.700760, 2.790024>,  <0.425109, 2.377625, 2.918328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.622902, 2.700760, 2.790024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281099, -0.200572, -0.938485,
		-0.822478, 0.554230, 0.127903,
		0.494483, 0.807837, -0.320759,
		0.771247, 2.943111, 2.693796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.060841, 2.698272, 2.528791>,  <0.425109, 2.377625, 2.918328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.060841, 2.698272, 2.528791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.287910, 2.845108, 2.399132>,  <0.497161, 2.933209, 2.321336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.287910, 2.845108, 2.399132>,  <-0.060841, 2.698272, 2.528791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.287910, 2.845108, 2.399132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218180, -0.301417, -0.928195,
		-0.438434, 0.879996, -0.182707,
		0.871879, 0.367089, -0.324149,
		0.549474, 2.955235, 2.301887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.276397, 3.026749, 1.941769>,  <-0.060841, 2.698272, 2.528791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.276397, 3.026749, 1.941769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.116627, 2.970100, 1.893570>,  <0.352441, 2.936111, 1.864650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.116627, 2.970100, 1.893570>,  <-0.276397, 3.026749, 1.941769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.116627, 2.970100, 1.893570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137533, -0.117365, -0.983519,
		0.125145, 0.982939, -0.134796,
		0.982560, -0.141622, -0.120498,
		0.411395, 2.927614, 1.857420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.165780, 1.134566, 1.623233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.225655, 1.300690, 1.264320>,  <0.261579, 1.400364, 1.048973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.225655, 1.300690, 1.264320>,  <0.165780, 1.134566, 1.623233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.225655, 1.300690, 1.264320> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327892, 0.877000, 0.351224,
		0.932781, 0.241638, 0.267450,
		0.149685, 0.415310, -0.897280,
		0.270560, 1.425283, 0.995136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.638313, 1.715899, 1.722249>,  <0.165780, 1.134566, 1.623233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.638313, 1.715899, 1.722249> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.407958, 1.758102, 1.397972>,  <0.269745, 1.783425, 1.203406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.407958, 1.758102, 1.397972>,  <0.638313, 1.715899, 1.722249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.407958, 1.758102, 1.397972> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159212, 0.958176, 0.237802,
		0.801877, 0.266019, -0.535003,
		-0.575887, 0.105509, -0.810693,
		0.235192, 1.789755, 1.154764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.291971, 2.060318, 1.511233>,  <0.638313, 1.715899, 1.722249>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.291971, 2.060318, 1.511233> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045533, 2.370010, 1.453278>,  <0.897671, 2.555826, 1.418504>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.045533, 2.370010, 1.453278>,  <1.291971, 2.060318, 1.511233>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.045533, 2.370010, 1.453278> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116264, 0.271318, 0.955442,
		0.779045, 0.571797, -0.257172,
		-0.616094, 0.774232, -0.144890,
		0.860705, 2.602280, 1.409811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.656152, 2.737335, 1.664177>,  <1.291971, 2.060318, 1.511233>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.656152, 2.737335, 1.664177> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.267710, 2.815826, 1.718506>,  <1.034644, 2.862921, 1.751103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.267710, 2.815826, 1.718506>,  <1.656152, 2.737335, 1.664177>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.267710, 2.815826, 1.718506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211956, 0.447631, 0.868735,
		0.109673, 0.872422, -0.476289,
		-0.971106, 0.196229, 0.135822,
		0.976378, 2.874695, 1.759252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.727409, 3.388443, 1.986439>,  <1.656152, 2.737335, 1.664177>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.727409, 3.388443, 1.986439> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.360085, 3.256821, 2.074463>,  <1.139690, 3.177848, 2.127277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.360085, 3.256821, 2.074463>,  <1.727409, 3.388443, 1.986439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.360085, 3.256821, 2.074463> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061305, 0.430984, 0.900275,
		-0.391082, 0.840224, -0.375605,
		-0.918312, -0.329055, 0.220059,
		1.084591, 3.158104, 2.140481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.437398, 3.972037, 2.238892>,  <1.727409, 3.388443, 1.986439>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.437398, 3.972037, 2.238892> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.209470, 3.674973, 2.379608>,  <1.072713, 3.496734, 2.464038>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.209470, 3.674973, 2.379608>,  <1.437398, 3.972037, 2.238892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.209470, 3.674973, 2.379608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099845, 0.487488, 0.867402,
		-0.815680, 0.459140, -0.351932,
		-0.569822, -0.742661, 0.351791,
		1.038523, 3.452174, 2.485146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.952320, 4.313114, 2.624531>,  <1.437398, 3.972037, 2.238892>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.952320, 4.313114, 2.624531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977749, 3.931717, 2.742386>,  <0.993006, 3.702879, 2.813099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.977749, 3.931717, 2.742386>,  <0.952320, 4.313114, 2.624531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.977749, 3.931717, 2.742386> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247916, 0.270891, 0.930138,
		-0.966694, -0.132175, -0.219165,
		0.063571, -0.953493, 0.294636,
		0.996820, 3.645669, 2.830777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.465961, 4.126976, 3.023228>,  <0.952320, 4.313114, 2.624531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.465961, 4.126976, 3.023228> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.747352, 3.871414, 3.147758>,  <0.916186, 3.718077, 3.222477>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.747352, 3.871414, 3.147758>,  <0.465961, 4.126976, 3.023228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.747352, 3.871414, 3.147758> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100270, 0.344443, 0.933437,
		-0.703610, -0.687867, 0.178244,
		0.703476, -0.638903, 0.311326,
		0.958395, 3.679743, 3.241156>
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
