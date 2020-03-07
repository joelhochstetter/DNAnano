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
	<4.031775, 3.008545, 3.041804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.271835, 2.736755, 3.210629>,  <4.415871, 2.573682, 3.311924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.271835, 2.736755, 3.210629>,  <4.031775, 3.008545, 3.041804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.271835, 2.736755, 3.210629> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284455, -0.674456, -0.681318,
		0.747600, 0.288835, -0.598054,
		0.600150, -0.679473, 0.422063,
		4.451880, 2.532913, 3.337247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.665129, 2.649113, 2.523845>,  <4.031775, 3.008545, 3.041804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.665129, 2.649113, 2.523845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.459431, 2.423981, 2.782696>,  <4.336012, 2.288902, 2.938006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.459431, 2.423981, 2.782696>,  <4.665129, 2.649113, 2.523845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.459431, 2.423981, 2.782696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.587706, -0.318276, -0.743842,
		0.624622, -0.762839, -0.167106,
		-0.514246, -0.562830, 0.647128,
		4.305157, 2.255132, 2.976834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.439117, 2.089509, 2.024122>,  <4.665129, 2.649113, 2.523845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.439117, 2.089509, 2.024122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.229561, 2.093353, 2.364815>,  <4.103827, 2.095659, 2.569230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.229561, 2.093353, 2.364815>,  <4.439117, 2.089509, 2.024122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.229561, 2.093353, 2.364815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.760598, -0.455414, -0.462698,
		0.383444, -0.890228, 0.245896,
		-0.523891, 0.009609, 0.851731,
		4.072393, 2.096236, 2.620334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.179396, 1.395991, 2.223190>,  <4.439117, 2.089509, 2.024122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.179396, 1.395991, 2.223190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.891094, 1.641144, 2.352737>,  <3.718113, 1.788235, 2.430466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.891094, 1.641144, 2.352737>,  <4.179396, 1.395991, 2.223190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.891094, 1.641144, 2.352737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670527, -0.497919, -0.549973,
		-0.175808, -0.613558, 0.769830,
		-0.720753, 0.612881, 0.323869,
		3.674868, 1.825008, 2.449898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.704022, 0.981317, 2.675458>,  <4.179396, 1.395991, 2.223190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.704022, 0.981317, 2.675458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.590504, 1.289673, 2.447357>,  <3.522393, 1.474687, 2.310497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.590504, 1.289673, 2.447357>,  <3.704022, 0.981317, 2.675458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.590504, 1.289673, 2.447357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734804, -0.556917, -0.387177,
		-0.616055, 0.309146, 0.724503,
		-0.283794, 0.770890, -0.570253,
		3.505365, 1.520940, 2.276281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.958852, 1.165642, 2.762272>,  <3.704022, 0.981317, 2.675458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.958852, 1.165642, 2.762272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.032856, 1.326981, 2.403812>,  <3.077259, 1.423784, 2.188737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.032856, 1.326981, 2.403812>,  <2.958852, 1.165642, 2.762272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.032856, 1.326981, 2.403812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.816789, -0.443960, -0.368449,
		-0.546467, 0.800131, 0.247312,
		0.185011, 0.403347, -0.896148,
		3.088359, 1.447985, 2.134968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.297049, 1.321952, 2.438345>,  <2.958852, 1.165642, 2.762272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.297049, 1.321952, 2.438345> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.566238, 1.297699, 2.143475>,  <2.727752, 1.283147, 1.966552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.566238, 1.297699, 2.143475>,  <2.297049, 1.321952, 2.438345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.566238, 1.297699, 2.143475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621655, -0.586424, -0.519280,
		-0.400813, 0.807732, -0.432341,
		0.672974, -0.060633, -0.737177,
		2.768131, 1.279509, 1.922322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.931293, 1.486208, 1.867625>,  <2.297049, 1.321952, 2.438345>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.931293, 1.486208, 1.867625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.247410, 1.266525, 1.758953>,  <2.437080, 1.134715, 1.693750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.247410, 1.266525, 1.758953>,  <1.931293, 1.486208, 1.867625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.247410, 1.266525, 1.758953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.582030, -0.534281, -0.613012,
		0.191518, 0.642584, -0.741894,
		0.790292, -0.549208, -0.271679,
		2.484497, 1.101763, 1.677449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.524090, 0.034909, 0.672566> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.839432, -0.205231, 0.618790>,  <2.028638, -0.349315, 0.586524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.839432, -0.205231, 0.618790>,  <1.524090, 0.034909, 0.672566>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.839432, -0.205231, 0.618790> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520606, 0.534552, 0.665750,
		-0.327817, -0.594839, 0.733963,
		0.788356, -0.600350, -0.134442,
		2.075939, -0.385336, 0.578457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.725751, -0.111822, 1.338797>,  <1.524090, 0.034909, 0.672566>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.725751, -0.111822, 1.338797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.019359, -0.111359, 1.067146>,  <2.195523, -0.111081, 0.904156>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.019359, -0.111359, 1.067146>,  <1.725751, -0.111822, 1.338797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.019359, -0.111359, 1.067146> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477705, 0.709903, 0.517528,
		0.482714, -0.704298, 0.520530,
		0.734020, 0.001159, -0.679127,
		2.239564, -0.111011, 0.863408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.258044, 0.216895, 1.725333>,  <1.725751, -0.111822, 1.338797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.258044, 0.216895, 1.725333> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.397487, 0.223663, 1.350487>,  <2.481153, 0.227724, 1.125579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.397487, 0.223663, 1.350487>,  <2.258044, 0.216895, 1.725333>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.397487, 0.223663, 1.350487> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681558, 0.681765, 0.265849,
		0.643391, -0.731376, 0.226136,
		0.348607, 0.016920, -0.937116,
		2.502069, 0.228739, 1.069352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.060661, 0.149952, 1.737839>,  <2.258044, 0.216895, 1.725333>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.060661, 0.149952, 1.737839> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.878379, 0.373108, 1.460396>,  <2.769010, 0.507002, 1.293930>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.878379, 0.373108, 1.460396>,  <3.060661, 0.149952, 1.737839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.878379, 0.373108, 1.460396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579403, 0.777453, 0.244658,
		0.675740, -0.290387, -0.677532,
		-0.455704, 0.557890, -0.693608,
		2.741668, 0.540475, 1.252313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.555080, 0.424417, 1.272379>,  <3.060661, 0.149952, 1.737839>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.555080, 0.424417, 1.272379> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.233860, 0.648102, 1.354736>,  <3.041127, 0.782313, 1.404151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.233860, 0.648102, 1.354736>,  <3.555080, 0.424417, 1.272379>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.233860, 0.648102, 1.354736> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570516, 0.621691, 0.536668,
		0.172109, 0.548437, -0.818288,
		-0.803051, 0.559211, 0.205894,
		2.992944, 0.815865, 1.416504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.703650, 1.103296, 1.014826>,  <3.555080, 0.424417, 1.272379>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.703650, 1.103296, 1.014826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420880, 1.168182, 1.290199>,  <3.251217, 1.207114, 1.455423>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.420880, 1.168182, 1.290199>,  <3.703650, 1.103296, 1.014826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.420880, 1.168182, 1.290199> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545487, 0.744621, 0.384687,
		-0.450220, 0.647477, -0.614879,
		-0.706927, 0.162215, 0.688433,
		3.208802, 1.216847, 1.496729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.551864, 1.848549, 1.007412>,  <3.703650, 1.103296, 1.014826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.551864, 1.848549, 1.007412> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429580, 1.691071, 1.354179>,  <3.356210, 1.596584, 1.562240>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.429580, 1.691071, 1.354179>,  <3.551864, 1.848549, 1.007412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.429580, 1.691071, 1.354179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548904, 0.671096, 0.498332,
		-0.777976, 0.628199, 0.010940,
		-0.305709, -0.393695, 0.866917,
		3.337867, 1.572962, 1.614255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.288907, 2.432439, 1.438679>,  <3.551864, 1.848549, 1.007412>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.288907, 2.432439, 1.438679> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.431498, 2.119431, 1.642868>,  <3.517052, 1.931625, 1.765382>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.431498, 2.119431, 1.642868>,  <3.288907, 2.432439, 1.438679>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.431498, 2.119431, 1.642868> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403518, 0.621731, 0.671285,
		-0.842673, -0.033312, 0.537395,
		0.356477, -0.782522, 0.510474,
		3.538441, 1.884674, 1.796010>
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
