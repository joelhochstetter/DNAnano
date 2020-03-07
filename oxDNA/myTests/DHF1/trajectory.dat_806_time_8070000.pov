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
	<3.623890, 0.987875, 1.928644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656452, 0.597923, 1.845715>,  <3.675990, 0.363952, 1.795957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656452, 0.597923, 1.845715>,  <3.623890, 0.987875, 1.928644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656452, 0.597923, 1.845715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235748, 0.183278, -0.954375,
		0.968399, 0.126568, -0.214905,
		0.081406, -0.974879, -0.207324,
		3.680874, 0.305459, 1.783517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.956905, 0.793659, 1.252911>,  <3.623890, 0.987875, 1.928644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.956905, 0.793659, 1.252911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760757, 0.446083, 1.279686>,  <3.643069, 0.237537, 1.295751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.760757, 0.446083, 1.279686>,  <3.956905, 0.793659, 1.252911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.760757, 0.446083, 1.279686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193180, 0.033479, -0.980592,
		0.849835, -0.493783, -0.184279,
		-0.490370, -0.868940, 0.066937,
		3.613647, 0.185401, 1.299767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.182797, 0.303473, 0.698505>,  <3.956905, 0.793659, 1.252911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.182797, 0.303473, 0.698505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801201, 0.238701, 0.799446>,  <3.572243, 0.199838, 0.860011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.801201, 0.238701, 0.799446>,  <4.182797, 0.303473, 0.698505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.801201, 0.238701, 0.799446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249964, -0.035299, -0.967611,
		0.165595, -0.986170, -0.006803,
		-0.953990, -0.161932, 0.252353,
		3.515004, 0.190122, 0.875152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.842639, -0.367902, 0.425872>,  <4.182797, 0.303473, 0.698505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.842639, -0.367902, 0.425872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.574623, -0.072960, 0.460173>,  <3.413814, 0.104006, 0.480753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.574623, -0.072960, 0.460173>,  <3.842639, -0.367902, 0.425872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.574623, -0.072960, 0.460173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.312878, -0.175763, -0.933389,
		-0.673168, -0.652237, 0.348471,
		-0.670039, 0.737357, 0.085753,
		3.373611, 0.148247, 0.485898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.228234, -0.644182, 0.150148>,  <3.842639, -0.367902, 0.425872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.228234, -0.644182, 0.150148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196571, -0.245689, 0.135956>,  <3.177574, -0.006594, 0.127441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.196571, -0.245689, 0.135956>,  <3.228234, -0.644182, 0.150148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.196571, -0.245689, 0.135956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421626, -0.065709, -0.904386,
		-0.903308, -0.056629, 0.425238,
		-0.079157, 0.996231, -0.035479,
		3.172824, 0.053180, 0.125312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.760446, -0.506483, -0.451962>,  <3.228234, -0.644182, 0.150148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.760446, -0.506483, -0.451962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.869736, -0.125359, -0.399048>,  <2.935309, 0.103316, -0.367299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.869736, -0.125359, -0.399048>,  <2.760446, -0.506483, -0.451962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.869736, -0.125359, -0.399048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308509, 0.217047, -0.926128,
		-0.911137, 0.212229, 0.353253,
		0.273224, 0.952811, 0.132285,
		2.951703, 0.160485, -0.359362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.210763, -0.122284, -0.619015>,  <2.760446, -0.506483, -0.451962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.210763, -0.122284, -0.619015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.526230, 0.120872, -0.655834>,  <2.715510, 0.266766, -0.677926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.526230, 0.120872, -0.655834>,  <2.210763, -0.122284, -0.619015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.526230, 0.120872, -0.655834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314147, 0.269738, -0.910249,
		-0.528503, 0.746800, 0.403701,
		0.788668, 0.607890, -0.092048,
		2.762830, 0.303240, -0.683448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.938865, 0.595398, -0.795432>,  <2.210763, -0.122284, -0.619015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.938865, 0.595398, -0.795432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.315952, 0.564552, -0.925255>,  <2.542205, 0.546045, -1.003148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.315952, 0.564552, -0.925255>,  <1.938865, 0.595398, -0.795432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.315952, 0.564552, -0.925255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302254, 0.214242, -0.928840,
		0.141160, 0.973732, 0.178662,
		0.942718, -0.077113, -0.324556,
		2.598768, 0.541418, -1.022622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<2.351361, 0.165987, 2.487338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.589935, 0.482643, 2.540358>,  <2.733080, 0.672637, 2.572170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.589935, 0.482643, 2.540358>,  <2.351361, 0.165987, 2.487338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.589935, 0.482643, 2.540358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187393, -0.297910, 0.936020,
		0.780480, -0.533437, -0.326032,
		0.596435, 0.791641, 0.132550,
		2.768866, 0.720135, 2.580122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.891535, -0.032005, 3.068262>,  <2.351361, 0.165987, 2.487338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.891535, -0.032005, 3.068262> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.919327, 0.364563, 3.023974>,  <2.936002, 0.602504, 2.997402>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.919327, 0.364563, 3.023974>,  <2.891535, -0.032005, 3.068262>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.919327, 0.364563, 3.023974> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209544, 0.094008, 0.973270,
		0.975328, -0.090822, -0.201215,
		0.069479, 0.991420, -0.110719,
		2.940170, 0.661989, 2.990759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.624707, 0.296126, 3.105197>,  <2.891535, -0.032005, 3.068262>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.624707, 0.296126, 3.105197> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.289230, 0.459457, 3.249345>,  <3.087945, 0.557456, 3.335833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.289230, 0.459457, 3.249345>,  <3.624707, 0.296126, 3.105197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.289230, 0.459457, 3.249345> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327486, -0.150577, 0.932780,
		0.435145, 0.900330, -0.007435,
		-0.838690, 0.408329, 0.360369,
		3.037623, 0.581956, 3.357455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.804322, 0.860435, 3.590125>,  <3.624707, 0.296126, 3.105197>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.804322, 0.860435, 3.590125> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.444115, 0.731880, 3.707277>,  <3.227991, 0.654747, 3.777569>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.444115, 0.731880, 3.707277>,  <3.804322, 0.860435, 3.590125>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.444115, 0.731880, 3.707277> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332645, -0.075405, 0.940033,
		-0.280030, 0.943941, 0.174812,
		-0.900517, -0.321387, 0.292881,
		3.173960, 0.635464, 3.795142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.741981, 1.096543, 4.251382>,  <3.804322, 0.860435, 3.590125>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.741981, 1.096543, 4.251382> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.410561, 0.873505, 4.271740>,  <3.211709, 0.739681, 4.283955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.410561, 0.873505, 4.271740>,  <3.741981, 1.096543, 4.251382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.410561, 0.873505, 4.271740> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071128, -0.014656, 0.997360,
		-0.555378, 0.829983, 0.051804,
		-0.828550, -0.557597, 0.050895,
		3.161995, 0.706226, 4.287009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.246847, 1.403007, 4.746686>,  <3.741981, 1.096543, 4.251382>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.246847, 1.403007, 4.746686> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158104, 1.013428, 4.727912>,  <3.104858, 0.779680, 4.716647>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.158104, 1.013428, 4.727912>,  <3.246847, 1.403007, 4.746686>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.158104, 1.013428, 4.727912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097602, -0.070075, 0.992756,
		-0.970182, 0.215670, 0.110606,
		-0.221858, -0.973949, -0.046936,
		3.091547, 0.721243, 4.713831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.827070, 1.282881, 5.272291>,  <3.246847, 1.403007, 4.746686>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.827070, 1.282881, 5.272291> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.940773, 0.904716, 5.208548>,  <3.008995, 0.677818, 5.170301>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.940773, 0.904716, 5.208548>,  <2.827070, 1.282881, 5.272291>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.940773, 0.904716, 5.208548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063121, -0.147401, 0.987061,
		-0.956668, -0.290638, 0.017775,
		0.284257, -0.945411, -0.159359,
		3.026050, 0.621093, 5.160740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.330114, 0.875087, 5.603597>,  <2.827070, 1.282881, 5.272291>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.330114, 0.875087, 5.603597> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690475, 0.702011, 5.590017>,  <2.906692, 0.598166, 5.581870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.690475, 0.702011, 5.590017>,  <2.330114, 0.875087, 5.603597>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.690475, 0.702011, 5.590017> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011512, -0.102013, 0.994716,
		-0.433867, -0.895753, -0.096885,
		0.900903, -0.432690, -0.033948,
		2.960747, 0.572204, 5.579833>
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
