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
	<2.211439, 0.005343, 5.607839> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.894360, -0.206482, 5.487045>,  <1.704112, -0.333577, 5.414569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.894360, -0.206482, 5.487045>,  <2.211439, 0.005343, 5.607839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.894360, -0.206482, 5.487045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099777, 0.601393, -0.792699,
		0.601393, -0.598240, -0.529561,
		0.792699, 0.529561, 0.301983,
		1.656550, -0.365350, 5.396451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.380487, -0.265712, 4.860448>,  <2.211439, 0.005343, 5.607839>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.380487, -0.265712, 4.860448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.987022, -0.250534, 4.930840>,  <1.750943, -0.241428, 4.973074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.987022, -0.250534, 4.930840>,  <2.380487, -0.265712, 4.860448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.987022, -0.250534, 4.930840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137174, 0.475070, -0.869191,
		-0.116582, -0.879130, -0.462103,
		-0.983663, 0.037944, 0.175978,
		1.691924, -0.239151, 4.983633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.939127, -0.648500, 4.418466>,  <2.380487, -0.265712, 4.860448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.939127, -0.648500, 4.418466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.792641, -0.299904, 4.548935>,  <1.704749, -0.090746, 4.627216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.792641, -0.299904, 4.548935>,  <1.939127, -0.648500, 4.418466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.792641, -0.299904, 4.548935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090864, 0.315358, -0.944613,
		-0.926083, -0.375569, -0.036301,
		-0.366215, 0.871491, 0.326173,
		1.682776, -0.038456, 4.646787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.159741, -0.512411, 4.213960>,  <1.939127, -0.648500, 4.418466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.159741, -0.512411, 4.213960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.358582, -0.166428, 4.241493>,  <1.477886, 0.041162, 4.258013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.358582, -0.166428, 4.241493>,  <1.159741, -0.512411, 4.213960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.358582, -0.166428, 4.241493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.309091, 0.250646, -0.917409,
		-0.810772, 0.434770, 0.391947,
		0.497103, 0.864957, 0.068834,
		1.507712, 0.093060, 4.262143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.743332, -0.016415, 3.987774>,  <1.159741, -0.512411, 4.213960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.743332, -0.016415, 3.987774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.101437, 0.154274, 3.936523>,  <1.316299, 0.256687, 3.905773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.101437, 0.154274, 3.936523>,  <0.743332, -0.016415, 3.987774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.101437, 0.154274, 3.936523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253548, 0.251487, -0.934060,
		-0.366361, 0.868713, 0.333341,
		0.895261, 0.426721, -0.128126,
		1.370015, 0.282290, 3.898086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.592085, 0.642575, 3.710205>,  <0.743332, -0.016415, 3.987774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.592085, 0.642575, 3.710205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.970490, 0.562599, 3.608154>,  <1.197532, 0.514614, 3.546924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.970490, 0.562599, 3.608154>,  <0.592085, 0.642575, 3.710205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.970490, 0.562599, 3.608154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172243, 0.356684, -0.918209,
		0.274585, 0.912579, 0.302989,
		0.946010, -0.199939, -0.255126,
		1.254293, 0.502618, 3.531617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.079853, 1.320892, 3.443643>,  <0.592085, 0.642575, 3.710205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.079853, 1.320892, 3.443643> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225941, 0.980698, 3.292229>,  <1.313593, 0.776581, 3.201380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.225941, 0.980698, 3.292229>,  <1.079853, 1.320892, 3.443643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.225941, 0.980698, 3.292229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102600, 0.440922, -0.891662,
		0.925250, 0.286814, 0.248293,
		0.365219, -0.850485, -0.378536,
		1.335506, 0.725552, 3.178668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.718201, 1.490640, 3.028236>,  <1.079853, 1.320892, 3.443643>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.718201, 1.490640, 3.028236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.563904, 1.143929, 2.901810>,  <1.471325, 0.935902, 2.825954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.563904, 1.143929, 2.901810>,  <1.718201, 1.490640, 3.028236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.563904, 1.143929, 2.901810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119257, 0.292860, -0.948689,
		0.914866, -0.403643, -0.009600,
		-0.385743, -0.866778, -0.316065,
		1.448181, 0.883895, 2.806990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<0.954615, 1.316033, 1.759013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.211589, 1.062378, 1.586899>,  <1.365773, 0.910185, 1.483630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.211589, 1.062378, 1.586899>,  <0.954615, 1.316033, 1.759013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.211589, 1.062378, 1.586899> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049848, -0.525713, 0.849200,
		-0.764719, -0.567004, -0.306125,
		0.642433, -0.634139, -0.430287,
		1.404319, 0.872136, 1.457813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.683766, 0.543149, 1.830371>,  <0.954615, 1.316033, 1.759013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.683766, 0.543149, 1.830371> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.080968, 0.589783, 1.837837>,  <1.319289, 0.617763, 1.842317>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.080968, 0.589783, 1.837837>,  <0.683766, 0.543149, 1.830371>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.080968, 0.589783, 1.837837> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043590, -0.508923, 0.859708,
		0.109728, -0.852881, -0.510445,
		0.993005, 0.116585, 0.018666,
		1.378870, 0.624758, 1.843437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.807738, -0.067233, 2.015681>,  <0.683766, 0.543149, 1.830371>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.807738, -0.067233, 2.015681> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077997, 0.205399, 2.128075>,  <1.240153, 0.368977, 2.195511>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.077997, 0.205399, 2.128075>,  <0.807738, -0.067233, 2.015681>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.077997, 0.205399, 2.128075> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027032, -0.403785, 0.914455,
		0.736729, -0.610254, -0.291241,
		0.675648, 0.681578, 0.280983,
		1.280692, 0.409872, 2.212370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.282634, -0.376037, 2.491211>,  <0.807738, -0.067233, 2.015681>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.282634, -0.376037, 2.491211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.365832, 0.009399, 2.558418>,  <1.415751, 0.240661, 2.598743>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.365832, 0.009399, 2.558418>,  <1.282634, -0.376037, 2.491211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.365832, 0.009399, 2.558418> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293869, -0.225401, 0.928889,
		0.932941, -0.143830, -0.330052,
		0.207997, 0.963591, 0.168019,
		1.428231, 0.298477, 2.608824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.922408, -0.366645, 2.746271>,  <1.282634, -0.376037, 2.491211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.922408, -0.366645, 2.746271> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.767035, -0.017624, 2.864777>,  <1.673812, 0.191789, 2.935880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.767035, -0.017624, 2.864777>,  <1.922408, -0.366645, 2.746271>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.767035, -0.017624, 2.864777> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360862, -0.151794, 0.920183,
		0.847879, 0.464339, -0.255909,
		-0.388432, 0.872552, 0.296265,
		1.650506, 0.244142, 2.953656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.483029, 0.127460, 3.071367>,  <1.922408, -0.366645, 2.746271>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.483029, 0.127460, 3.071367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.122785, 0.230057, 3.211716>,  <1.906638, 0.291615, 3.295925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.122785, 0.230057, 3.211716>,  <2.483029, 0.127460, 3.071367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.122785, 0.230057, 3.211716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331079, -0.118152, 0.936177,
		0.281579, 0.959297, 0.021489,
		-0.900611, 0.256493, 0.350872,
		1.852601, 0.307005, 3.316977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.597623, 0.503223, 3.679314>,  <2.483029, 0.127460, 3.071367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.597623, 0.503223, 3.679314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.209011, 0.439697, 3.749634>,  <1.975844, 0.401582, 3.791826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.209011, 0.439697, 3.749634>,  <2.597623, 0.503223, 3.679314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.209011, 0.439697, 3.749634> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134835, 0.239489, 0.961491,
		-0.194801, 0.957822, -0.211257,
		-0.971531, -0.158815, 0.175800,
		1.917552, 0.392053, 3.802374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.401000, 1.042761, 4.017281>,  <2.597623, 0.503223, 3.679314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.401000, 1.042761, 4.017281> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.144631, 0.748657, 4.105476>,  <1.990810, 0.572195, 4.158394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.144631, 0.748657, 4.105476>,  <2.401000, 1.042761, 4.017281>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.144631, 0.748657, 4.105476> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015516, 0.274774, 0.961384,
		-0.767450, 0.619592, -0.164700,
		-0.640921, -0.735259, 0.220489,
		1.952355, 0.528080, 4.171623>
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
