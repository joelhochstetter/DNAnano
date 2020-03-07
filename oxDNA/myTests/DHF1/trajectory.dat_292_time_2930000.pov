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
	<2.259916, 0.301982, 3.399786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.656960, 0.349670, 3.408848>,  <2.895186, 0.378283, 3.414285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.656960, 0.349670, 3.408848>,  <2.259916, 0.301982, 3.399786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.656960, 0.349670, 3.408848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121350, 0.976625, 0.177421,
		-0.000973, -0.178859, 0.983874,
		0.992609, 0.119220, 0.022655,
		2.954742, 0.385437, 3.415644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.148355, 0.966239, 3.862921>,  <2.259916, 0.301982, 3.399786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.148355, 0.966239, 3.862921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.774467, 1.097122, 3.918400>,  <1.550135, 1.175652, 3.951687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.774467, 1.097122, 3.918400>,  <2.148355, 0.966239, 3.862921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.774467, 1.097122, 3.918400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350760, 0.786601, 0.508160,
		0.057175, 0.523636, -0.850022,
		-0.934718, 0.327207, 0.138696,
		1.494052, 1.195284, 3.960009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.173339, 1.643404, 3.628035>,  <2.148355, 0.966239, 3.862921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.173339, 1.643404, 3.628035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.904579, 1.604156, 3.921680>,  <1.743323, 1.580608, 4.097868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.904579, 1.604156, 3.921680>,  <2.173339, 1.643404, 3.628035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.904579, 1.604156, 3.921680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546747, 0.602921, 0.580994,
		-0.499620, 0.791745, -0.351455,
		-0.671899, -0.098119, 0.734115,
		1.703009, 1.574721, 4.141915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.908355, 2.293355, 3.753252>,  <2.173339, 1.643404, 3.628035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.908355, 2.293355, 3.753252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.851536, 2.064728, 4.076519>,  <1.817445, 1.927552, 4.270479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.851536, 2.064728, 4.076519>,  <1.908355, 2.293355, 3.753252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.851536, 2.064728, 4.076519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437188, 0.696272, 0.569273,
		-0.888082, 0.434184, 0.150979,
		-0.142047, -0.571567, 0.808167,
		1.808922, 1.893257, 4.318969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.561228, 2.690289, 4.291272>,  <1.908355, 2.293355, 3.753252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.561228, 2.690289, 4.291272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.794384, 2.397156, 4.431667>,  <1.934278, 2.221275, 4.515904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.794384, 2.397156, 4.431667>,  <1.561228, 2.690289, 4.291272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.794384, 2.397156, 4.431667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441780, 0.648358, 0.620050,
		-0.681960, -0.206362, 0.701674,
		0.582890, -0.732835, 0.350987,
		1.969251, 2.177305, 4.536963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.478143, 2.873886, 4.903956>,  <1.561228, 2.690289, 4.291272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.478143, 2.873886, 4.903956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.795940, 2.631439, 4.888973>,  <1.986619, 2.485971, 4.879983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.795940, 2.631439, 4.888973>,  <1.478143, 2.873886, 4.903956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.795940, 2.631439, 4.888973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.551568, 0.694433, 0.462099,
		-0.254074, -0.387795, 0.886037,
		0.794493, -0.606117, -0.037458,
		2.034288, 2.449604, 4.877736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.806807, 2.924835, 5.569077>,  <1.478143, 2.873886, 4.903956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.806807, 2.924835, 5.569077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.078373, 2.800629, 5.302948>,  <2.241313, 2.726105, 5.143270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.078373, 2.800629, 5.302948>,  <1.806807, 2.924835, 5.569077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.078373, 2.800629, 5.302948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647050, 0.681289, 0.342302,
		0.346987, -0.662891, 0.663457,
		0.678916, -0.310515, -0.665323,
		2.282048, 2.707474, 5.103351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.444326, 2.828362, 5.977341>,  <1.806807, 2.924835, 5.569077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.444326, 2.828362, 5.977341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.571945, 2.869873, 5.600525>,  <2.648517, 2.894779, 5.374435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.571945, 2.869873, 5.600525>,  <2.444326, 2.828362, 5.977341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.571945, 2.869873, 5.600525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642377, 0.707146, 0.295459,
		0.696823, -0.699410, 0.158947,
		0.319045, 0.103779, -0.942040,
		2.667660, 2.901006, 5.317913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.793330, 4.132664, 5.930106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.904076, 4.114792, 5.546158>,  <3.970523, 4.104069, 5.315789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.904076, 4.114792, 5.546158>,  <3.793330, 4.132664, 5.930106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.904076, 4.114792, 5.546158> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725233, -0.665035, -0.178228,
		-0.630384, 0.745474, -0.216528,
		0.276863, -0.044680, -0.959870,
		3.987134, 4.101388, 5.258197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.225181, 4.234030, 5.497911>,  <3.793330, 4.132664, 5.930106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.225181, 4.234030, 5.497911> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.491272, 4.022583, 5.286995>,  <3.650927, 3.895715, 5.160445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.491272, 4.022583, 5.286995>,  <3.225181, 4.234030, 5.497911>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.491272, 4.022583, 5.286995> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.678203, -0.723171, -0.130629,
		-0.312268, 0.444508, -0.839584,
		0.665228, -0.528617, -0.527290,
		3.690840, 3.863998, 5.128808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.876973, 4.089720, 4.803847>,  <3.225181, 4.234030, 5.497911>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.876973, 4.089720, 4.803847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.160040, 3.830536, 4.916527>,  <3.329880, 3.675025, 4.984135>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.160040, 3.830536, 4.916527>,  <2.876973, 4.089720, 4.803847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.160040, 3.830536, 4.916527> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523442, -0.748597, -0.406952,
		0.474569, 0.140533, -0.868927,
		0.707667, -0.647960, 0.281700,
		3.372340, 3.636148, 5.001037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.053032, 3.618349, 4.304222>,  <2.876973, 4.089720, 4.803847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.053032, 3.618349, 4.304222> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.104265, 3.439850, 4.658501>,  <3.135005, 3.332751, 4.871068>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.104265, 3.439850, 4.658501>,  <3.053032, 3.618349, 4.304222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.104265, 3.439850, 4.658501> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635135, -0.722802, -0.272326,
		0.761708, -0.527657, -0.376005,
		0.128083, -0.446247, 0.885697,
		3.142690, 3.305976, 4.924210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.195164, 2.940262, 4.134608>,  <3.053032, 3.618349, 4.304222>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.195164, 2.940262, 4.134608> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.048054, 2.927719, 4.506363>,  <2.959788, 2.920194, 4.729415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.048054, 2.927719, 4.506363>,  <3.195164, 2.940262, 4.134608>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.048054, 2.927719, 4.506363> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537879, -0.808104, -0.240113,
		0.758570, -0.588205, 0.280334,
		-0.367775, -0.031356, 0.929386,
		2.937721, 2.918312, 4.785179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.313840, 2.244938, 4.451817>,  <3.195164, 2.940262, 4.134608>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.313840, 2.244938, 4.451817> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982304, 2.399643, 4.613525>,  <2.783381, 2.492466, 4.710551>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.982304, 2.399643, 4.613525>,  <3.313840, 2.244938, 4.451817>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.982304, 2.399643, 4.613525> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442245, -0.895501, -0.049978,
		0.342696, -0.220211, 0.913273,
		-0.828842, 0.386762, 0.404272,
		2.733651, 2.515672, 4.734807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.060767, 1.677659, 4.903685>,  <3.313840, 2.244938, 4.451817>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.060767, 1.677659, 4.903685> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.738802, 1.914078, 4.882607>,  <2.545623, 2.055929, 4.869960>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.738802, 1.914078, 4.882607>,  <3.060767, 1.677659, 4.903685>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.738802, 1.914078, 4.882607> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577276, -0.800515, -0.161024,
		-0.137356, -0.099191, 0.985543,
		-0.804914, 0.591048, -0.052695,
		2.497328, 2.091392, 4.866798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.641347, 1.182829, 5.180230>,  <3.060767, 1.677659, 4.903685>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.641347, 1.182829, 5.180230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463530, 1.461899, 4.955505>,  <2.356839, 1.629340, 4.820671>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.463530, 1.461899, 4.955505>,  <2.641347, 1.182829, 5.180230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.463530, 1.461899, 4.955505> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583156, -0.701487, -0.409691,
		-0.679931, 0.145494, 0.718697,
		-0.444549, 0.697674, -0.561808,
		2.330166, 1.671201, 4.786962>
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
