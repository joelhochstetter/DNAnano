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
	<-0.829575, 3.604351, -0.501673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.909058, 3.962582, -0.342445>,  <-0.956748, 4.177520, -0.246909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.909058, 3.962582, -0.342445>,  <-0.829575, 3.604351, -0.501673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.909058, 3.962582, -0.342445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.969715, 0.238518, -0.052558,
		-0.142016, 0.375570, -0.915849,
		-0.198707, 0.895576, 0.398069,
		-0.968670, 4.231255, -0.223025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.342031, 4.159954, -0.861970>,  <-0.829575, 3.604351, -0.501673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.342031, 4.159954, -0.861970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.463076, 4.199348, -0.482765>,  <-0.535704, 4.222985, -0.255242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.463076, 4.199348, -0.482765>,  <-0.342031, 4.159954, -0.861970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.463076, 4.199348, -0.482765> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952688, 0.060975, 0.297772,
		-0.028478, 0.993268, -0.112279,
		-0.302613, 0.098487, 0.948011,
		-0.553860, 4.228895, -0.198362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.083291, 4.704494, -0.612625>,  <-0.342031, 4.159954, -0.861970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.083291, 4.704494, -0.612625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.005701, 4.445171, -0.321365>,  <-0.059096, 4.289577, -0.146610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.005701, 4.445171, -0.321365>,  <0.083291, 4.704494, -0.612625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.005701, 4.445171, -0.321365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956618, -0.001058, 0.291344,
		-0.188110, 0.761378, 0.620418,
		-0.222479, -0.648307, 0.728149,
		-0.072445, 4.250679, -0.102921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.607811, 4.860592, -0.094868>,  <0.083291, 4.704494, -0.612625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.607811, 4.860592, -0.094868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.513220, 4.495277, 0.037788>,  <0.456466, 4.276089, 0.117382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.513220, 4.495277, 0.037788>,  <0.607811, 4.860592, -0.094868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.513220, 4.495277, 0.037788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918494, -0.098785, 0.382897,
		-0.316933, 0.395156, 0.862209,
		-0.236477, -0.913287, 0.331640,
		0.442277, 4.221291, 0.137280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.037989, 4.802760, 0.543988>,  <0.607811, 4.860592, -0.094868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.037989, 4.802760, 0.543988> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.907591, 4.428326, 0.491119>,  <0.829352, 4.203665, 0.459398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.907591, 4.428326, 0.491119>,  <1.037989, 4.802760, 0.543988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.907591, 4.428326, 0.491119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736721, -0.339162, 0.584988,
		-0.592427, 0.093330, 0.800200,
		-0.325995, -0.936087, -0.132171,
		0.809792, 4.147500, 0.451468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.955544, 4.501044, 1.263884>,  <1.037989, 4.802760, 0.543988>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.955544, 4.501044, 1.263884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.992929, 4.186825, 1.019203>,  <1.015360, 3.998293, 0.872395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.992929, 4.186825, 1.019203>,  <0.955544, 4.501044, 1.263884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.992929, 4.186825, 1.019203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707749, -0.379701, 0.595750,
		-0.700254, -0.488612, 0.520483,
		0.093463, -0.785548, -0.611702,
		1.020968, 3.951160, 0.835693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.986829, 3.850682, 1.677999>,  <0.955544, 4.501044, 1.263884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.986829, 3.850682, 1.677999> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.160649, 3.766693, 1.327667>,  <1.264941, 3.716300, 1.117468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.160649, 3.766693, 1.327667>,  <0.986829, 3.850682, 1.677999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.160649, 3.766693, 1.327667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696228, -0.538574, 0.474558,
		-0.571342, -0.815997, -0.087850,
		0.434551, -0.209971, -0.875829,
		1.291014, 3.703701, 1.064918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.897991, 3.136207, 1.448100>,  <0.986829, 3.850682, 1.677999>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.897991, 3.136207, 1.448100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.238500, 3.336502, 1.385368>,  <1.442806, 3.456679, 1.347729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.238500, 3.336502, 1.385368>,  <0.897991, 3.136207, 1.448100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.238500, 3.336502, 1.385368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446301, -0.533771, 0.718265,
		0.275953, -0.681432, -0.677865,
		0.851273, 0.500739, -0.156829,
		1.493882, 3.486724, 1.338320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.808732, 2.032464, 1.440323> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132998, 2.135925, 1.230209>,  <2.327557, 2.198002, 1.104141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.132998, 2.135925, 1.230209>,  <1.808732, 2.032464, 1.440323>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.132998, 2.135925, 1.230209> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495636, 0.780768, -0.380455,
		0.311719, 0.568771, 0.761138,
		0.810664, 0.258653, -0.525283,
		2.376197, 2.213521, 1.072624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.088170, 2.676270, 1.705832>,  <1.808732, 2.032464, 1.440323>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.088170, 2.676270, 1.705832> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.119041, 2.599968, 1.314392>,  <2.137565, 2.554187, 1.079528>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.119041, 2.599968, 1.314392>,  <2.088170, 2.676270, 1.705832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.119041, 2.599968, 1.314392> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523795, 0.827403, -0.202594,
		0.848341, 0.528221, -0.036058,
		0.077180, -0.190756, -0.978599,
		2.142195, 2.542741, 1.020813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.383197, 3.265258, 1.335784>,  <2.088170, 2.676270, 1.705832>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.383197, 3.265258, 1.335784> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.116684, 3.060852, 1.118553>,  <1.956776, 2.938209, 0.988214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.116684, 3.060852, 1.118553>,  <2.383197, 3.265258, 1.335784>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.116684, 3.060852, 1.118553> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484251, 0.850328, -0.206015,
		0.567071, 0.125722, -0.814017,
		-0.666281, -0.511014, -0.543078,
		1.916800, 2.907548, 0.955630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.412462, 3.456760, 0.591452>,  <2.383197, 3.265258, 1.335784>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.412462, 3.456760, 0.591452> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053858, 3.349609, 0.732597>,  <1.838696, 3.285319, 0.817285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.053858, 3.349609, 0.732597>,  <2.412462, 3.456760, 0.591452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.053858, 3.349609, 0.732597> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.409015, 0.806504, -0.426916,
		-0.170226, -0.527061, -0.832604,
		-0.896510, -0.267876, 0.352864,
		1.784905, 3.269247, 0.838457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.889960, 3.246451, 0.059212>,  <2.412462, 3.456760, 0.591452>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.889960, 3.246451, 0.059212> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.652618, 3.349167, 0.364365>,  <1.510213, 3.410796, 0.547457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.652618, 3.349167, 0.364365>,  <1.889960, 3.246451, 0.059212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.652618, 3.349167, 0.364365> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649613, 0.406892, -0.642217,
		-0.475325, -0.876640, -0.074617,
		-0.593354, 0.256789, 0.762882,
		1.474612, 3.426204, 0.593229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.275022, 3.057127, -0.083403>,  <1.889960, 3.246451, 0.059212>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.275022, 3.057127, -0.083403> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.181459, 3.329750, 0.193947>,  <1.125322, 3.493324, 0.360357>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.181459, 3.329750, 0.193947>,  <1.275022, 3.057127, -0.083403>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.181459, 3.329750, 0.193947> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866867, 0.176741, -0.466160,
		-0.440262, -0.710101, 0.549478,
		-0.233905, 0.681556, 0.693375,
		1.111288, 3.534217, 0.401959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.597393, 2.937266, 0.207899>,  <1.275022, 3.057127, -0.083403>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.597393, 2.937266, 0.207899> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.631172, 3.327217, 0.290344>,  <0.651440, 3.561188, 0.339811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.631172, 3.327217, 0.290344>,  <0.597393, 2.937266, 0.207899>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.631172, 3.327217, 0.290344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.926070, 0.153136, -0.344882,
		-0.367781, -0.161750, 0.915737,
		0.084447, 0.974878, 0.206113,
		0.656506, 3.619680, 0.352178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.048176, 3.119214, 0.635839>,  <0.597393, 2.937266, 0.207899>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.048176, 3.119214, 0.635839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.183720, 3.456047, 0.467995>,  <0.265046, 3.658147, 0.367288>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.183720, 3.456047, 0.467995>,  <0.048176, 3.119214, 0.635839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.183720, 3.456047, 0.467995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.940807, 0.306854, -0.143956,
		0.007536, 0.443553, 0.896217,
		0.338860, 0.842082, -0.419610,
		0.285378, 3.708672, 0.342112>
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
