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
	<-0.706714, 2.713095, -0.655860> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.395942, 2.605434, -0.883522>,  <-0.209479, 2.540838, -1.020119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.395942, 2.605434, -0.883522>,  <-0.706714, 2.713095, -0.655860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.395942, 2.605434, -0.883522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517580, -0.241650, 0.820802,
		-0.358457, -0.932289, -0.048436,
		0.776929, -0.269153, -0.569155,
		-0.162863, 2.524689, -1.054269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.349184, 2.020394, -0.589347>,  <-0.706714, 2.713095, -0.655860>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.349184, 2.020394, -0.589347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.111477, 2.319363, -0.708145>,  <0.031147, 2.498744, -0.779424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<-0.111477, 2.319363, -0.708145>,  <-0.349184, 2.020394, -0.589347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.111477, 2.319363, -0.708145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617920, -0.187938, 0.763449,
		0.514802, -0.637212, -0.573533,
		0.594267, 0.747422, -0.296995,
		0.066803, 2.543589, -0.797244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.446290, 1.847033, -0.841859>,  <-0.349184, 2.020394, -0.589347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.446290, 1.847033, -0.841859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.357306, 2.178169, -0.635872>,  <0.303915, 2.376851, -0.512280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.357306, 2.178169, -0.635872>,  <0.446290, 1.847033, -0.841859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.357306, 2.178169, -0.635872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516249, -0.348050, 0.782526,
		0.827042, 0.439932, -0.349945,
		-0.222460, 0.827841, 0.514967,
		0.290567, 2.426522, -0.481382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.047032, 2.124284, -0.548709>,  <0.446290, 1.847033, -0.841859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.047032, 2.124284, -0.548709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.752301, 2.240688, -0.304611>,  <0.575463, 2.310531, -0.158152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.752301, 2.240688, -0.304611>,  <1.047032, 2.124284, -0.548709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.752301, 2.240688, -0.304611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481814, -0.407175, 0.775927,
		0.474280, 0.865749, 0.159805,
		-0.736827, 0.291010, 0.610245,
		0.531253, 2.327991, -0.121538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.398235, 2.455838, 0.076252>,  <1.047032, 2.124284, -0.548709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.398235, 2.455838, 0.076252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.025901, 2.370766, 0.195122>,  <0.802500, 2.319722, 0.266444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.025901, 2.370766, 0.195122>,  <1.398235, 2.455838, 0.076252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.025901, 2.370766, 0.195122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.344990, -0.243207, 0.906550,
		-0.120530, 0.946371, 0.299758,
		-0.930835, -0.212680, 0.297175,
		0.746650, 2.306962, 0.284274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.355032, 2.675956, 0.798197>,  <1.398235, 2.455838, 0.076252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.355032, 2.675956, 0.798197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037422, 2.434242, 0.771767>,  <0.846856, 2.289214, 0.755908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.037422, 2.434242, 0.771767>,  <1.355032, 2.675956, 0.798197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.037422, 2.434242, 0.771767> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246023, -0.418851, 0.874092,
		-0.555876, 0.677794, 0.481245,
		-0.794024, -0.604284, -0.066076,
		0.799215, 2.252957, 0.751944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.992013, 2.816511, 1.411029>,  <1.355032, 2.675956, 0.798197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.992013, 2.816511, 1.411029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.883992, 2.451359, 1.288574>,  <0.819180, 2.232267, 1.215101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.883992, 2.451359, 1.288574>,  <0.992013, 2.816511, 1.411029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.883992, 2.451359, 1.288574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366492, -0.391474, 0.844057,
		-0.890368, 0.115742, 0.440281,
		-0.270051, -0.912881, -0.306138,
		0.802977, 2.177495, 1.196733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.373910, 2.423357, 1.865784>,  <0.992013, 2.816511, 1.411029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.373910, 2.423357, 1.865784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649541, 2.195328, 1.686813>,  <0.814919, 2.058511, 1.579431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<0.649541, 2.195328, 1.686813>,  <0.373910, 2.423357, 1.865784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.649541, 2.195328, 1.686813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318242, -0.316647, 0.893564,
		-0.651073, -0.758124, -0.036773,
		0.689077, -0.570072, -0.447427,
		0.856264, 2.024306, 1.552585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.347429, 2.470482, 2.277234> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.219233, 2.115044, 2.408493>,  <1.142315, 1.901780, 2.487249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.219233, 2.115044, 2.408493>,  <1.347429, 2.470482, 2.277234>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.219233, 2.115044, 2.408493> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074224, -0.321799, -0.943894,
		0.944339, -0.326866, 0.037179,
		-0.320491, -0.888597, 0.328148,
		1.123085, 1.848465, 2.506938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.700554, 1.869946, 1.866448>,  <1.347429, 2.470482, 2.277234>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.700554, 1.869946, 1.866448> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340927, 1.773773, 2.012802>,  <1.125151, 1.716070, 2.100615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.340927, 1.773773, 2.012802>,  <1.700554, 1.869946, 1.866448>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.340927, 1.773773, 2.012802> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284354, -0.314774, -0.905572,
		0.332900, -0.918210, 0.214635,
		-0.899067, -0.240432, 0.365885,
		1.071207, 1.701644, 2.122568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.500053, 1.278473, 1.630314>,  <1.700554, 1.869946, 1.866448>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.500053, 1.278473, 1.630314> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.155634, 1.470787, 1.696579>,  <0.948983, 1.586175, 1.736338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.155634, 1.470787, 1.696579>,  <1.500053, 1.278473, 1.630314>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.155634, 1.470787, 1.696579> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254808, -0.125988, -0.958749,
		-0.440081, -0.867740, 0.230989,
		-0.861047, 0.480785, 0.165663,
		0.897320, 1.615022, 1.746278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.112409, 0.876260, 1.219968>,  <1.500053, 1.278473, 1.630314>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.112409, 0.876260, 1.219968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.937750, 1.219933, 1.326660>,  <0.832954, 1.426136, 1.390675>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.937750, 1.219933, 1.326660>,  <1.112409, 0.876260, 1.219968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.937750, 1.219933, 1.326660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245640, 0.171357, -0.954095,
		-0.865448, -0.482123, 0.136227,
		-0.436647, 0.859182, 0.266730,
		0.806756, 1.477687, 1.406679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.562068, 0.978334, 0.732885>,  <1.112409, 0.876260, 1.219968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.562068, 0.978334, 0.732885> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.599825, 1.343445, 0.891846>,  <0.622479, 1.562511, 0.987222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.599825, 1.343445, 0.891846>,  <0.562068, 0.978334, 0.732885>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.599825, 1.343445, 0.891846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451780, 0.394988, -0.799925,
		-0.887122, -0.104031, 0.449658,
		0.094392, 0.912777, 0.397401,
		0.628143, 1.617278, 1.011066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.109336, 1.257627, 0.600953>,  <0.562068, 0.978334, 0.732885>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.109336, 1.257627, 0.600953> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.138969, 1.564293, 0.666534>,  <0.287952, 1.748292, 0.705883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.138969, 1.564293, 0.666534>,  <-0.109336, 1.257627, 0.600953>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.138969, 1.564293, 0.666534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499404, 0.547887, -0.671130,
		-0.604358, 0.334733, 0.722983,
		0.620763, 0.766664, 0.163953,
		0.325198, 1.794292, 0.715720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.471871, 1.976943, 0.813977>,  <-0.109336, 1.257627, 0.600953>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.471871, 1.976943, 0.813977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.118088, 2.036339, 0.637032>,  <0.094182, 2.071976, 0.530864>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.118088, 2.036339, 0.637032>,  <-0.471871, 1.976943, 0.813977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.118088, 2.036339, 0.637032> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450453, 0.519083, -0.726392,
		0.121761, 0.841727, 0.525995,
		0.884458, 0.148490, -0.442363,
		0.147250, 2.080886, 0.504323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.458666, 2.627669, 0.675537>,  <-0.471871, 1.976943, 0.813977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.458666, 2.627669, 0.675537> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.168077, 2.502266, 0.430931>,  <0.006276, 2.427024, 0.284167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.168077, 2.502266, 0.430931>,  <-0.458666, 2.627669, 0.675537>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.168077, 2.502266, 0.430931> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390593, 0.543773, -0.742798,
		0.565398, 0.778475, 0.272582,
		0.726472, -0.313508, -0.611515,
		0.049864, 2.408214, 0.247477>
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
