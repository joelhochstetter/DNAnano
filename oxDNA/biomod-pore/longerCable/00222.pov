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
	sky <0, 0.179814, -0.983701>
	up <0, 0.179814, -0.983701>
	right 1.6 * <1, 0, 0>
	location <35, 94.9851, 44.8844>
	look_at <35, 29.7336, 32.9568>
	direction <0, -65.2515, -11.9276>
	angle 67.0682
}


# declare cpy_camera_pos = <35, 94.9851, 44.8844>;
# if (DRAW_FOG = 1)
fog {
	fog_type 2
	up vnormalize(cpy_camera_pos)
	color rgbt<1,1,1,0.3>
	distance 1e-5
	fog_alt 3e-3
	fog_offset 56
}
# end


// LIGHTS

# declare lum = 6;
global_settings {
	ambient_light rgb lum * <0.05, 0.05, 0.05>
	max_trace_level 15
}# declare cpy_direct_light_amount = 0.25;
light_source
{	1000 * <-1, -1.16352, -0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

light_source
{	1000 * <1, 1.16352, 0.803886>,
	rgb lum * cpy_direct_light_amount
	parallel
}

// strand 0

// nucleotide -1

// particle -1
sphere {
	<24.949286, 34.941933, 34.753056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605406, 34.932209, 34.957142>,  <24.399078, 34.926373, 35.079594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.605406, 34.932209, 34.957142>,  <24.949286, 34.941933, 34.753056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.605406, 34.932209, 34.957142> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107243, -0.985194, 0.133757,
		0.499413, 0.169708, 0.849580,
		-0.859701, -0.024312, 0.510219,
		24.347496, 34.924915, 35.110207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.933428, 34.308517, 34.906223>,  <24.949286, 34.941933, 34.753056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.933428, 34.308517, 34.906223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588566, 34.410172, 35.081539>,  <24.381649, 34.471165, 35.186729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.588566, 34.410172, 35.081539>,  <24.933428, 34.308517, 34.906223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.588566, 34.410172, 35.081539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314496, -0.946695, -0.069718,
		0.397211, -0.197949, 0.896124,
		-0.862157, 0.254135, 0.438293,
		24.329918, 34.486412, 35.213028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.849422, 33.909176, 35.538429>,  <24.933428, 34.308517, 34.906223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.849422, 33.909176, 35.538429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519587, 34.027660, 35.345634>,  <24.321686, 34.098751, 35.229958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.519587, 34.027660, 35.345634>,  <24.849422, 33.909176, 35.538429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.519587, 34.027660, 35.345634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230752, -0.953980, -0.191510,
		-0.516531, -0.046698, 0.854994,
		-0.824590, 0.296212, -0.481985,
		24.272209, 34.116524, 35.201038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.595093, 33.669373, 35.420101>,  <24.849422, 33.909176, 35.538429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.595093, 33.669373, 35.420101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892998, 33.926929, 35.349976>,  <26.071741, 34.081463, 35.307899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.892998, 33.926929, 35.349976>,  <25.595093, 33.669373, 35.420101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.892998, 33.926929, 35.349976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297285, -0.084919, 0.951005,
		0.597456, -0.760390, -0.254664,
		0.744760, 0.643891, -0.175317,
		26.116426, 34.120098, 35.297379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.219040, 33.246067, 35.556072>,  <25.595093, 33.669373, 35.420101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.219040, 33.246067, 35.556072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243435, 33.644051, 35.587933>,  <26.258072, 33.882839, 35.607048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.243435, 33.644051, 35.587933>,  <26.219040, 33.246067, 35.556072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.243435, 33.644051, 35.587933> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194103, -0.090095, 0.976835,
		0.979083, -0.044115, -0.198619,
		0.060988, 0.994955, 0.079647,
		26.261732, 33.942535, 35.611828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.853237, 33.405304, 35.905258>,  <26.219040, 33.246067, 35.556072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.853237, 33.405304, 35.905258> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597099, 33.709351, 35.949406>,  <26.443417, 33.891777, 35.975895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.597099, 33.709351, 35.949406>,  <26.853237, 33.405304, 35.905258>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.597099, 33.709351, 35.949406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108197, -0.052989, 0.992716,
		0.760428, 0.647622, -0.048311,
		-0.640345, 0.760117, 0.110365,
		26.404995, 33.937386, 35.982513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.151041, 33.922138, 36.350197>,  <26.853237, 33.405304, 35.905258>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.151041, 33.922138, 36.350197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752668, 33.947258, 36.376038>,  <26.513645, 33.962330, 36.391541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.752668, 33.947258, 36.376038>,  <27.151041, 33.922138, 36.350197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.752668, 33.947258, 36.376038> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068303, 0.058747, 0.995933,
		0.058747, 0.996296, -0.062797,
		-0.995933, 0.062797, 0.064599,
		26.453888, 33.966099, 36.395416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.118912, 34.472630, 36.773384>,  <27.151041, 33.922138, 36.350197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.118912, 34.472630, 36.773384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792412, 34.252090, 36.842384>,  <26.596512, 34.119766, 36.883785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.792412, 34.252090, 36.842384>,  <27.118912, 34.472630, 36.773384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.792412, 34.252090, 36.842384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114000, 0.139007, 0.983708,
		-0.566341, 0.822616, -0.050610,
		-0.816249, -0.551344, 0.172504,
		26.547537, 34.086685, 36.894135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.828384, 34.767303, 37.337421>,  <27.118912, 34.472630, 36.773384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.828384, 34.767303, 37.337421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710119, 34.385914, 37.360973>,  <26.639160, 34.157078, 37.375103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.710119, 34.385914, 37.360973>,  <26.828384, 34.767303, 37.337421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.710119, 34.385914, 37.360973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334328, -0.045543, 0.941356,
		-0.894879, 0.298009, 0.332239,
		-0.295664, -0.953476, 0.058877,
		26.621420, 34.099873, 37.378635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.571949, 34.713371, 37.909443>,  <26.828384, 34.767303, 37.337421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.571949, 34.713371, 37.909443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588654, 34.318043, 37.850819>,  <26.598677, 34.080845, 37.815643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.588654, 34.318043, 37.850819>,  <26.571949, 34.713371, 37.909443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.588654, 34.318043, 37.850819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150315, -0.138803, 0.978846,
		-0.987756, -0.062907, 0.142762,
		0.041761, -0.988320, -0.146559,
		26.601181, 34.021545, 37.806850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.109411, 34.431297, 38.407089>,  <26.571949, 34.713371, 37.909443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.109411, 34.431297, 38.407089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377213, 34.152153, 38.305298>,  <26.537893, 33.984665, 38.244225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.377213, 34.152153, 38.305298>,  <26.109411, 34.431297, 38.407089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.377213, 34.152153, 38.305298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187253, -0.172962, 0.966965,
		-0.718821, -0.695036, 0.014878,
		0.669502, -0.697860, -0.254476,
		26.578064, 33.942795, 38.228954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.124968, 33.738396, 38.822083>,  <26.109411, 34.431297, 38.407089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.124968, 33.738396, 38.822083> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479939, 33.835907, 38.665600>,  <26.692921, 33.894413, 38.571709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.479939, 33.835907, 38.665600>,  <26.124968, 33.738396, 38.822083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.479939, 33.835907, 38.665600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381182, 0.089081, 0.920198,
		0.259175, -0.965731, -0.013872,
		0.887428, 0.243780, -0.391207,
		26.746166, 33.909042, 38.548237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.434027, 34.309689, 39.069275>,  <26.124968, 33.738396, 38.822083>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.434027, 34.309689, 39.069275> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633076, 34.650764, 39.005657>,  <26.752506, 34.855408, 38.967487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.633076, 34.650764, 39.005657>,  <26.434027, 34.309689, 39.069275>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.633076, 34.650764, 39.005657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.865573, -0.476293, 0.154685,
		0.056149, -0.214635, -0.975079,
		0.497624, 0.852688, -0.159040,
		26.782364, 34.906570, 38.957947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.064882, 33.774059, 39.355770>,  <26.434027, 34.309689, 39.069275>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.064882, 33.774059, 39.355770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203344, 33.426453, 39.214359>,  <27.286423, 33.217888, 39.129513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.203344, 33.426453, 39.214359>,  <27.064882, 33.774059, 39.355770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.203344, 33.426453, 39.214359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250052, 0.277729, -0.927545,
		0.904240, 0.409475, -0.121162,
		0.346157, -0.869020, -0.353524,
		27.307192, 33.165745, 39.108303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.696285, 33.866020, 38.805309>,  <27.064882, 33.774059, 39.355770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.696285, 33.866020, 38.805309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430290, 33.567535, 38.817692>,  <27.270693, 33.388443, 38.825119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.430290, 33.567535, 38.817692>,  <27.696285, 33.866020, 38.805309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.430290, 33.567535, 38.817692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415611, 0.335303, -0.845482,
		0.620530, -0.575100, -0.533107,
		-0.664989, -0.746212, 0.030952,
		27.230793, 33.343674, 38.826977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.642971, 33.429047, 38.227795>,  <27.696285, 33.866020, 38.805309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.642971, 33.429047, 38.227795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268040, 33.428234, 38.367172>,  <27.043081, 33.427746, 38.450798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.268040, 33.428234, 38.367172>,  <27.642971, 33.429047, 38.227795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.268040, 33.428234, 38.367172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348437, 0.013143, -0.937240,
		-0.002686, -0.999912, -0.013024,
		-0.937328, -0.002020, 0.348441,
		26.986841, 33.427624, 38.471706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.406675, 32.948753, 37.898472>,  <27.642971, 33.429047, 38.227795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.406675, 32.948753, 37.898472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141155, 33.224621, 38.014217>,  <26.981844, 33.390141, 38.083664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.141155, 33.224621, 38.014217>,  <27.406675, 32.948753, 37.898472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.141155, 33.224621, 38.014217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357867, 0.046846, -0.932596,
		-0.656736, -0.722610, 0.215713,
		-0.663798, 0.689667, 0.289364,
		26.942017, 33.431522, 38.101028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.876219, 32.764599, 37.588032>,  <27.406675, 32.948753, 37.898472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.876219, 32.764599, 37.588032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806765, 33.153519, 37.650616>,  <26.765093, 33.386871, 37.688168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.806765, 33.153519, 37.650616>,  <26.876219, 32.764599, 37.588032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.806765, 33.153519, 37.650616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423316, 0.069759, -0.903292,
		-0.889188, -0.223075, 0.399479,
		-0.173635, 0.972302, 0.156460,
		26.754675, 33.445210, 37.697552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.232138, 32.851475, 37.366447>,  <26.876219, 32.764599, 37.588032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.232138, 32.851475, 37.366447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357330, 33.231342, 37.361233>,  <26.432446, 33.459263, 37.358105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.357330, 33.231342, 37.361233>,  <26.232138, 32.851475, 37.366447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.357330, 33.231342, 37.361233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620651, 0.194122, -0.759677,
		-0.718912, 0.245855, 0.650171,
		0.312983, 0.949670, -0.013033,
		26.451225, 33.516243, 37.357323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.652390, 33.235062, 37.184284>,  <26.232138, 32.851475, 37.366447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.652390, 33.235062, 37.184284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944189, 33.492149, 37.090698>,  <26.119268, 33.646404, 37.034546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.944189, 33.492149, 37.090698>,  <25.652390, 33.235062, 37.184284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.944189, 33.492149, 37.090698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541768, 0.334167, -0.771245,
		-0.417515, 0.689375, 0.591982,
		0.729498, 0.642724, -0.233962,
		26.163038, 33.684967, 37.020512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.456791, 33.942764, 37.095787>,  <25.652390, 33.235062, 37.184284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.456791, 33.942764, 37.095787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787920, 33.913158, 36.873352>,  <25.986597, 33.895393, 36.739891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.787920, 33.913158, 36.873352>,  <25.456791, 33.942764, 37.095787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.787920, 33.913158, 36.873352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470140, 0.449288, -0.759677,
		0.306069, 0.890316, 0.337134,
		0.827822, -0.074014, -0.556086,
		26.036266, 33.890953, 36.706528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.266211, 34.355225, 36.555019>,  <25.456791, 33.942764, 37.095787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.266211, 34.355225, 36.555019> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650019, 34.262741, 36.490692>,  <25.880302, 34.207249, 36.452095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.650019, 34.262741, 36.490692>,  <25.266211, 34.355225, 36.555019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.650019, 34.262741, 36.490692> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048153, 0.427930, -0.902528,
		0.277496, 0.873737, 0.399473,
		0.959519, -0.231212, -0.160822,
		25.937874, 34.193378, 36.442444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.537340, 34.874260, 36.195835>,  <25.266211, 34.355225, 36.555019>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.537340, 34.874260, 36.195835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816116, 34.595440, 36.128429>,  <25.983381, 34.428146, 36.087986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.816116, 34.595440, 36.128429>,  <25.537340, 34.874260, 36.195835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.816116, 34.595440, 36.128429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106277, 0.332782, -0.936996,
		0.709210, 0.635122, 0.306009,
		0.696941, -0.697049, -0.168514,
		26.025198, 34.386326, 36.077877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.166021, 35.182114, 36.127617>,  <25.537340, 34.874260, 36.195835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.166021, 35.182114, 36.127617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189930, 34.823986, 35.951057>,  <26.204275, 34.609108, 35.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.189930, 34.823986, 35.951057>,  <26.166021, 35.182114, 36.127617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.189930, 34.823986, 35.951057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205469, 0.443750, -0.872278,
		0.976837, -0.038557, 0.210483,
		0.059770, -0.895321, -0.441394,
		26.207861, 34.555389, 35.818638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.819183, 35.043472, 35.895485>,  <26.166021, 35.182114, 36.127617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.819183, 35.043472, 35.895485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568291, 34.858822, 35.644573>,  <26.417755, 34.748032, 35.494026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.568291, 34.858822, 35.644573>,  <26.819183, 35.043472, 35.895485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.568291, 34.858822, 35.644573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168754, 0.705719, -0.688101,
		0.760331, -0.537454, -0.364747,
		-0.627231, -0.461632, -0.627277,
		26.380121, 34.720333, 35.456390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.021338, 34.850594, 35.145538>,  <26.819183, 35.043472, 35.895485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.021338, 34.850594, 35.145538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637556, 34.963200, 35.139889>,  <26.407288, 35.030766, 35.136501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.637556, 34.963200, 35.139889>,  <27.021338, 34.850594, 35.145538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.637556, 34.963200, 35.139889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210021, 0.680565, -0.701943,
		-0.188001, -0.676445, -0.712094,
		-0.959452, 0.281520, -0.014121,
		26.349720, 35.047657, 35.135651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.727438, 34.847279, 34.417309>,  <27.021338, 34.850594, 35.145538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.727438, 34.847279, 34.417309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508108, 35.095158, 34.641922>,  <26.376511, 35.243885, 34.776688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.508108, 35.095158, 34.641922>,  <26.727438, 34.847279, 34.417309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.508108, 35.095158, 34.641922> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161720, 0.737377, -0.655837,
		-0.820478, -0.268802, -0.504540,
		-0.548326, 0.619694, 0.561531,
		26.343611, 35.281067, 34.810383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.414400, 35.144154, 34.590916>,  <26.727438, 34.847279, 34.417309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.414400, 35.144154, 34.590916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617752, 35.486454, 34.552471>,  <27.739763, 35.691833, 34.529404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.617752, 35.486454, 34.552471>,  <27.414400, 35.144154, 34.590916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.617752, 35.486454, 34.552471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523063, 0.395533, 0.754957,
		0.684072, -0.333531, 0.648693,
		0.508381, 0.855751, -0.096115,
		27.770266, 35.743179, 34.523636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703360, 35.427902, 35.294582>,  <27.414400, 35.144154, 34.590916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703360, 35.427902, 35.294582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655563, 35.721783, 35.027470>,  <27.626884, 35.898109, 34.867203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.655563, 35.721783, 35.027470>,  <27.703360, 35.427902, 35.294582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.655563, 35.721783, 35.027470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548581, 0.511750, 0.661189,
		0.827515, 0.445341, 0.341892,
		-0.119491, 0.734699, -0.667786,
		27.619717, 35.942192, 34.827133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.324802, 35.824528, 35.031593>,  <27.703360, 35.427902, 35.294582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.324802, 35.824528, 35.031593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429167, 35.818680, 34.645493>,  <28.491785, 35.815170, 34.413834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.429167, 35.818680, 34.645493>,  <28.324802, 35.824528, 35.031593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.429167, 35.818680, 34.645493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.958996, 0.118577, 0.257424,
		0.110694, -0.992837, 0.044956,
		0.260911, -0.014617, -0.965252,
		28.507441, 35.814293, 34.355915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.961733, 35.284492, 34.805027>,  <28.324802, 35.824528, 35.031593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.961733, 35.284492, 34.805027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922791, 35.620777, 34.591965>,  <28.899426, 35.822548, 34.464127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.922791, 35.620777, 34.591965>,  <28.961733, 35.284492, 34.805027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.922791, 35.620777, 34.591965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.973080, 0.192741, 0.126361,
		0.208899, -0.506016, -0.836845,
		-0.097353, 0.840713, -0.532657,
		28.893585, 35.872990, 34.432167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.550230, 35.302944, 34.441475>,  <28.961733, 35.284492, 34.805027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.550230, 35.302944, 34.441475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479879, 35.695679, 34.469940>,  <29.437670, 35.931320, 34.487019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.479879, 35.695679, 34.469940>,  <29.550230, 35.302944, 34.441475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.479879, 35.695679, 34.469940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.980780, 0.180973, -0.072938,
		-0.084491, 0.056964, -0.994795,
		-0.175876, 0.981837, 0.071160,
		29.427116, 35.990231, 34.491287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.185535, 35.687904, 34.614063>,  <29.550230, 35.302944, 34.441475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.185535, 35.687904, 34.614063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953640, 35.995464, 34.506218>,  <29.814503, 36.180000, 34.441509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.953640, 35.995464, 34.506218>,  <30.185535, 35.687904, 34.614063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.953640, 35.995464, 34.506218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.769843, 0.625290, 0.127880,
		0.266914, -0.133423, -0.954440,
		-0.579740, 0.768902, -0.269614,
		29.779718, 36.226135, 34.425335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.447508, 36.133785, 33.978592>,  <30.185535, 35.687904, 34.614063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.447508, 36.133785, 33.978592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219179, 36.333897, 34.239017>,  <30.082182, 36.453964, 34.395271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219179, 36.333897, 34.239017>,  <30.447508, 36.133785, 33.978592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219179, 36.333897, 34.239017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759433, 0.623125, 0.187020,
		-0.312130, 0.601193, -0.735624,
		-0.570821, 0.500283, 0.651061,
		30.047934, 36.483982, 34.434338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.228714, 36.745853, 33.657013>,  <30.447508, 36.133785, 33.978592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.228714, 36.745853, 33.657013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279646, 36.771374, 34.052937>,  <30.310205, 36.786686, 34.290489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.279646, 36.771374, 34.052937>,  <30.228714, 36.745853, 33.657013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279646, 36.771374, 34.052937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663538, 0.736259, -0.132813,
		-0.737227, 0.673686, 0.051414,
		0.127328, 0.063798, 0.989807,
		30.317844, 36.790512, 34.349880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909969, 37.492851, 33.957279>,  <30.228714, 36.745853, 33.657013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909969, 37.492851, 33.957279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206333, 37.327335, 34.168877>,  <30.384151, 37.228027, 34.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.206333, 37.327335, 34.168877>,  <29.909969, 37.492851, 33.957279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.206333, 37.327335, 34.168877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548757, 0.827087, -0.121625,
		-0.387196, 0.380402, 0.839865,
		0.740908, -0.413789, 0.528993,
		30.428606, 37.203197, 34.327576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.091238, 38.013889, 34.341164>,  <29.909969, 37.492851, 33.957279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.091238, 38.013889, 34.341164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417837, 37.783161, 34.331276>,  <30.613796, 37.644726, 34.325344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.417837, 37.783161, 34.331276>,  <30.091238, 38.013889, 34.341164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.417837, 37.783161, 34.331276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554767, 0.795703, -0.243087,
		0.159884, 0.184768, 0.969690,
		0.816499, -0.576817, -0.024717,
		30.662786, 37.610115, 34.323860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.628302, 38.231083, 34.819519>,  <30.091238, 38.013889, 34.341164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.628302, 38.231083, 34.819519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824619, 38.032776, 34.532928>,  <30.942410, 37.913792, 34.360973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.824619, 38.032776, 34.532928>,  <30.628302, 38.231083, 34.819519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.824619, 38.032776, 34.532928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666913, 0.742934, -0.057235,
		0.560667, -0.449734, 0.695264,
		0.490794, -0.495770, -0.716472,
		30.971857, 37.884045, 34.317986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.237497, 38.453163, 34.910816>,  <30.628302, 38.231083, 34.819519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.237497, 38.453163, 34.910816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260477, 38.277813, 34.552032>,  <31.274265, 38.172604, 34.336761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.260477, 38.277813, 34.552032>,  <31.237497, 38.453163, 34.910816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.260477, 38.277813, 34.552032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592820, 0.737875, -0.322653,
		0.803283, -0.513197, 0.302267,
		0.057451, -0.438372, -0.896956,
		31.277712, 38.146301, 34.282948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.806271, 38.928482, 34.778381>,  <31.237497, 38.453163, 34.910816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.806271, 38.928482, 34.778381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942480, 39.058567, 34.425499>,  <32.024208, 39.136620, 34.213772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.942480, 39.058567, 34.425499>,  <31.806271, 38.928482, 34.778381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.942480, 39.058567, 34.425499> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381759, -0.809634, -0.445818,
		-0.859245, 0.488600, -0.151549,
		0.340526, 0.325212, -0.882201,
		32.044640, 39.156132, 34.160839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355095, 39.095581, 34.248371>,  <31.806271, 38.928482, 34.778381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355095, 39.095581, 34.248371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662130, 39.039032, 33.998310>,  <31.846352, 39.005104, 33.848274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.662130, 39.039032, 33.998310>,  <31.355095, 39.095581, 34.248371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.662130, 39.039032, 33.998310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505854, -0.732586, -0.455444,
		-0.393596, 0.665832, -0.633837,
		0.767589, -0.141368, -0.625157,
		31.892406, 38.996620, 33.810764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.180445, 39.022449, 33.596237>,  <31.355095, 39.095581, 34.248371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.180445, 39.022449, 33.596237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505091, 38.808872, 33.691055>,  <31.699879, 38.680725, 33.747944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.505091, 38.808872, 33.691055>,  <31.180445, 39.022449, 33.596237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.505091, 38.808872, 33.691055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.541784, -0.839726, -0.036474,
		0.218525, -0.098822, -0.970815,
		0.811614, -0.533942, 0.237041,
		31.748575, 38.648689, 33.762169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.192688, 38.417976, 33.153442>,  <31.180445, 39.022449, 33.596237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.192688, 38.417976, 33.153442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416288, 38.323009, 33.471222>,  <31.550449, 38.266029, 33.661888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.416288, 38.323009, 33.471222>,  <31.192688, 38.417976, 33.153442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.416288, 38.323009, 33.471222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576780, -0.799676, 0.166864,
		0.595685, -0.551500, -0.583958,
		0.559003, -0.237417, 0.794449,
		31.583990, 38.251785, 33.709557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.329634, 37.696167, 33.084488>,  <31.192688, 38.417976, 33.153442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.329634, 37.696167, 33.084488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368311, 37.807583, 33.466705>,  <31.391518, 37.874432, 33.696037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.368311, 37.807583, 33.466705>,  <31.329634, 37.696167, 33.084488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.368311, 37.807583, 33.466705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620599, -0.733696, 0.276672,
		0.778143, -0.619763, 0.101918,
		0.096694, 0.278541, 0.955545,
		31.397320, 37.891144, 33.753368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.664831, 37.159023, 33.460148>,  <31.329634, 37.696167, 33.084488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.664831, 37.159023, 33.460148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454887, 37.386032, 33.713902>,  <31.328922, 37.522240, 33.866154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.454887, 37.386032, 33.713902>,  <31.664831, 37.159023, 33.460148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.454887, 37.386032, 33.713902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348194, -0.823229, 0.448391,
		0.776715, 0.014453, 0.629686,
		-0.524857, 0.567525, 0.634382,
		31.297430, 37.556290, 33.904217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.749685, 36.933758, 34.055820>,  <31.664831, 37.159023, 33.460148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.749685, 36.933758, 34.055820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399992, 37.117409, 34.118961>,  <31.190176, 37.227600, 34.156845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.399992, 37.117409, 34.118961>,  <31.749685, 36.933758, 34.055820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.399992, 37.117409, 34.118961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357385, -0.828634, 0.430862,
		0.328620, 0.320261, 0.888505,
		-0.874234, 0.459128, 0.157850,
		31.137722, 37.255146, 34.166317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366585, 36.636700, 34.439781>,  <31.749685, 36.933758, 34.055820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366585, 36.636700, 34.439781> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372982, 36.453163, 34.795132>,  <32.376820, 36.343040, 35.008343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.372982, 36.453163, 34.795132>,  <32.366585, 36.636700, 34.439781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.372982, 36.453163, 34.795132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462880, 0.790943, 0.400188,
		-0.886277, 0.404808, 0.225043,
		0.015997, -0.458845, 0.888372,
		32.377781, 36.315510, 35.061642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.900675, 36.882687, 34.933945>,  <32.366585, 36.636700, 34.439781>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.900675, 36.882687, 34.933945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200237, 36.730488, 35.150967>,  <32.379974, 36.639168, 35.281178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200237, 36.730488, 35.150967>,  <31.900675, 36.882687, 34.933945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200237, 36.730488, 35.150967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058156, 0.853306, 0.518157,
		-0.660121, -0.356498, 0.661173,
		0.748905, -0.380497, 0.542553,
		32.424908, 36.616337, 35.313732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.755222, 36.943333, 35.654434>,  <31.900675, 36.882687, 34.933945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.755222, 36.943333, 35.654434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153271, 36.926495, 35.618748>,  <32.392101, 36.916393, 35.597336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.153271, 36.926495, 35.618748>,  <31.755222, 36.943333, 35.654434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.153271, 36.926495, 35.618748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079791, 0.875272, 0.477003,
		0.058008, -0.481795, 0.874362,
		0.995122, -0.042097, -0.089215,
		32.451809, 36.913864, 35.591984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.958511, 37.381012, 36.062508>,  <31.755222, 36.943333, 35.654434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.958511, 37.381012, 36.062508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326027, 37.314541, 35.919281>,  <32.546535, 37.274658, 35.833344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.326027, 37.314541, 35.919281>,  <31.958511, 37.381012, 36.062508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.326027, 37.314541, 35.919281> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336144, 0.804932, 0.488970,
		0.206962, -0.569622, 0.795423,
		0.918790, -0.166178, -0.358065,
		32.601665, 37.264687, 35.811863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.177971, 37.481812, 36.754505>,  <31.958511, 37.381012, 36.062508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.177971, 37.481812, 36.754505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338852, 37.536369, 37.116638>,  <32.435379, 37.569103, 37.333920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.338852, 37.536369, 37.116638>,  <32.177971, 37.481812, 36.754505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.338852, 37.536369, 37.116638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899863, 0.123383, -0.418358,
		-0.168764, 0.982941, -0.073109,
		0.402201, 0.136392, 0.905335,
		32.459511, 37.577286, 37.388237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.558208, 38.078213, 36.704430>,  <32.177971, 37.481812, 36.754505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.558208, 38.078213, 36.704430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697239, 37.846230, 36.999138>,  <32.780659, 37.707039, 37.175964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.697239, 37.846230, 36.999138>,  <32.558208, 38.078213, 36.704430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.697239, 37.846230, 36.999138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.918167, 0.051164, -0.392875,
		0.190157, 0.813035, 0.550285,
		0.347576, -0.579962, 0.736774,
		32.801510, 37.672241, 37.220169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.044250, 38.446266, 37.022411>,  <32.558208, 38.078213, 36.704430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.044250, 38.446266, 37.022411> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088970, 38.048836, 37.015423>,  <33.115803, 37.810379, 37.011230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.088970, 38.048836, 37.015423>,  <33.044250, 38.446266, 37.022411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.088970, 38.048836, 37.015423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848008, 0.104553, -0.519568,
		0.518058, 0.043273, 0.854250,
		0.111798, -0.993577, -0.017469,
		33.122509, 37.750763, 37.010181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669266, 38.304703, 37.310772>,  <33.044250, 38.446266, 37.022411>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669266, 38.304703, 37.310772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551868, 38.035172, 37.039532>,  <33.481430, 37.873451, 36.876789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.551868, 38.035172, 37.039532>,  <33.669266, 38.304703, 37.310772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551868, 38.035172, 37.039532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861491, 0.121037, -0.493136,
		0.414364, -0.728907, 0.544974,
		-0.293488, -0.673828, -0.678100,
		33.463821, 37.833023, 36.836102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.203518, 37.680866, 37.473534>,  <33.669266, 38.304703, 37.310772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.203518, 37.680866, 37.473534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591476, 37.631660, 37.389465>,  <34.824249, 37.602139, 37.339024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.591476, 37.631660, 37.389465>,  <34.203518, 37.680866, 37.473534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.591476, 37.631660, 37.389465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230324, 0.183058, 0.955741,
		-0.079092, -0.975376, 0.205879,
		0.969895, -0.123011, -0.210174,
		34.882446, 37.594757, 37.326412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.514809, 37.081886, 37.875336>,  <34.203518, 37.680866, 37.473534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.514809, 37.081886, 37.875336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793427, 37.351719, 37.777542>,  <34.960598, 37.513618, 37.718864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.793427, 37.351719, 37.777542>,  <34.514809, 37.081886, 37.875336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793427, 37.351719, 37.777542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054146, 0.290348, 0.955388,
		0.715469, -0.678707, 0.165714,
		0.696543, 0.674578, -0.244484,
		35.002388, 37.554092, 37.704197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010174, 36.987961, 38.352230>,  <34.514809, 37.081886, 37.875336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010174, 36.987961, 38.352230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115135, 37.353466, 38.228184>,  <35.178112, 37.572769, 38.153755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.115135, 37.353466, 38.228184>,  <35.010174, 36.987961, 38.352230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115135, 37.353466, 38.228184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001110, 0.321667, 0.946852,
		0.964958, -0.248113, 0.085421,
		0.262404, 0.913767, -0.310120,
		35.193855, 37.627598, 38.135147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357925, 37.288834, 38.939224>,  <35.010174, 36.987961, 38.352230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357925, 37.288834, 38.939224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277317, 37.596874, 38.697121>,  <35.228954, 37.781696, 38.551857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.277317, 37.596874, 38.697121>,  <35.357925, 37.288834, 38.939224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.277317, 37.596874, 38.697121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085763, 0.601690, 0.794112,
		0.975723, 0.211936, -0.055205,
		-0.201517, 0.770099, -0.605259,
		35.216862, 37.827904, 38.515541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653942, 37.904205, 39.252045>,  <35.357925, 37.288834, 38.939224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653942, 37.904205, 39.252045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356106, 38.006432, 39.005383>,  <35.177402, 38.067768, 38.857384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.356106, 38.006432, 39.005383>,  <35.653942, 37.904205, 39.252045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.356106, 38.006432, 39.005383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381755, 0.594788, 0.707453,
		0.547580, 0.762178, -0.345313,
		-0.744593, 0.255562, -0.616659,
		35.132729, 38.083099, 38.820385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016357, 38.225044, 39.672554>,  <35.653942, 37.904205, 39.252045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016357, 38.225044, 39.672554> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167549, 38.546825, 39.489258>,  <35.258263, 38.739895, 39.379280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.167549, 38.546825, 39.489258>,  <35.016357, 38.225044, 39.672554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.167549, 38.546825, 39.489258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285285, -0.369668, -0.884284,
		-0.880763, 0.464970, 0.089772,
		0.377980, 0.804455, -0.458239,
		35.280945, 38.788162, 39.351788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.608341, 38.400352, 39.150913>,  <35.016357, 38.225044, 39.672554>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.608341, 38.400352, 39.150913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973892, 38.533810, 39.058376>,  <35.193222, 38.613884, 39.002853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973892, 38.533810, 39.058376>,  <34.608341, 38.400352, 39.150913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973892, 38.533810, 39.058376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134367, -0.289143, -0.947809,
		-0.383120, 0.897262, -0.219410,
		0.913873, 0.333643, -0.231339,
		35.248055, 38.633904, 38.988976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.604980, 38.829868, 38.623890>,  <34.608341, 38.400352, 39.150913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.604980, 38.829868, 38.623890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956772, 38.639587, 38.630024>,  <35.167847, 38.525421, 38.633705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.956772, 38.639587, 38.630024>,  <34.604980, 38.829868, 38.623890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.956772, 38.639587, 38.630024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168064, -0.340529, -0.925091,
		0.445286, 0.811018, -0.379435,
		0.879474, -0.475699, 0.015331,
		35.220615, 38.496876, 38.634624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.764591, 38.800762, 37.959141>,  <34.604980, 38.829868, 38.623890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.764591, 38.800762, 37.959141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021526, 38.541389, 38.122574>,  <35.175686, 38.385765, 38.220634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.021526, 38.541389, 38.122574>,  <34.764591, 38.800762, 37.959141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.021526, 38.541389, 38.122574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103270, -0.455014, -0.884476,
		0.759436, 0.610323, -0.225307,
		0.642334, -0.648435, 0.408582,
		35.214226, 38.346859, 38.245148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406864, 38.754826, 37.633072>,  <34.764591, 38.800762, 37.959141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406864, 38.754826, 37.633072> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390480, 38.389210, 37.794495>,  <35.380650, 38.169842, 37.891346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.390480, 38.389210, 37.794495>,  <35.406864, 38.754826, 37.633072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.390480, 38.389210, 37.794495> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142783, -0.405102, -0.903053,
		0.988906, 0.020631, 0.147103,
		-0.040961, -0.914039, 0.403554,
		35.378193, 38.114998, 37.915562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.010582, 38.349316, 37.345207>,  <35.406864, 38.754826, 37.633072>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.010582, 38.349316, 37.345207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712334, 38.102848, 37.446712>,  <35.533386, 37.954967, 37.507614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.712334, 38.102848, 37.446712>,  <36.010582, 38.349316, 37.345207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.712334, 38.102848, 37.446712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062918, -0.444205, -0.893713,
		0.663398, -0.650401, 0.369975,
		-0.745616, -0.616166, 0.253763,
		35.488647, 37.917999, 37.522842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108101, 37.755733, 36.944187>,  <36.010582, 38.349316, 37.345207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108101, 37.755733, 36.944187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736671, 37.672558, 37.067154>,  <35.513813, 37.622650, 37.140934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.736671, 37.672558, 37.067154>,  <36.108101, 37.755733, 36.944187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.736671, 37.672558, 37.067154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189081, -0.447702, -0.873963,
		0.319366, -0.869668, 0.376408,
		-0.928576, -0.207942, 0.307419,
		35.458099, 37.610176, 37.159378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921127, 36.991386, 36.783115>,  <36.108101, 37.755733, 36.944187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921127, 36.991386, 36.783115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577049, 37.193211, 36.812740>,  <35.370602, 37.314304, 36.830517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.577049, 37.193211, 36.812740>,  <35.921127, 36.991386, 36.783115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.577049, 37.193211, 36.812740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330205, -0.440394, -0.834876,
		-0.388621, -0.742615, 0.545432,
		-0.860197, 0.504554, 0.074069,
		35.318993, 37.344578, 36.834961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213070, 36.589279, 36.744354>,  <35.921127, 36.991386, 36.783115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213070, 36.589279, 36.744354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166801, 36.948048, 36.573639>,  <35.139038, 37.163307, 36.471210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.166801, 36.948048, 36.573639>,  <35.213070, 36.589279, 36.744354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.166801, 36.948048, 36.573639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.414218, -0.434089, -0.799994,
		-0.902797, 0.084246, 0.421734,
		-0.115674, 0.896922, -0.426791,
		35.132099, 37.217125, 36.445602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462852, 36.792561, 36.477036>,  <35.213070, 36.589279, 36.744354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462852, 36.792561, 36.477036> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746483, 36.984856, 36.270699>,  <34.916660, 37.100235, 36.146896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.746483, 36.984856, 36.270699>,  <34.462852, 36.792561, 36.477036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.746483, 36.984856, 36.270699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360814, -0.381156, -0.851195,
		-0.605820, 0.789689, -0.096812,
		0.709080, 0.480740, -0.515843,
		34.959206, 37.129078, 36.115944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.104977, 37.249691, 36.077393>,  <34.462852, 36.792561, 36.477036>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.104977, 37.249691, 36.077393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458057, 37.156612, 35.914078>,  <34.669907, 37.100765, 35.816090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.458057, 37.156612, 35.914078>,  <34.104977, 37.249691, 36.077393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458057, 37.156612, 35.914078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463680, -0.289939, -0.837220,
		0.076441, 0.928325, -0.363825,
		0.882699, -0.232696, -0.408283,
		34.722866, 37.086803, 35.791592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060226, 37.515095, 35.416763>,  <34.104977, 37.249691, 36.077393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060226, 37.515095, 35.416763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348705, 37.238045, 35.411892>,  <34.521793, 37.071815, 35.408970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.348705, 37.238045, 35.411892>,  <34.060226, 37.515095, 35.416763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.348705, 37.238045, 35.411892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323331, -0.321015, -0.890172,
		0.612644, 0.645927, -0.455461,
		0.721196, -0.692624, -0.012180,
		34.565063, 37.030258, 35.408237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.355301, 37.743183, 34.842503>,  <34.060226, 37.515095, 35.416763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.355301, 37.743183, 34.842503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471508, 37.368481, 34.920567>,  <34.541233, 37.143658, 34.967407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.471508, 37.368481, 34.920567>,  <34.355301, 37.743183, 34.842503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.471508, 37.368481, 34.920567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405451, -0.305258, -0.861642,
		0.866723, 0.171194, -0.468491,
		0.290519, -0.936755, 0.195164,
		34.558662, 37.087456, 34.979115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.599220, 37.539566, 34.256908>,  <34.355301, 37.743183, 34.842503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.599220, 37.539566, 34.256908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619240, 37.166504, 34.399818>,  <34.631252, 36.942665, 34.485565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.619240, 37.166504, 34.399818>,  <34.599220, 37.539566, 34.256908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619240, 37.166504, 34.399818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199155, -0.359855, -0.911505,
		0.978689, -0.025532, -0.203754,
		0.050050, -0.932659, 0.357271,
		34.634254, 36.886707, 34.507000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.073215, 37.137905, 33.896599>,  <34.599220, 37.539566, 34.256908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.073215, 37.137905, 33.896599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776867, 36.927601, 34.063782>,  <34.599056, 36.801418, 34.164089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.776867, 36.927601, 34.063782>,  <35.073215, 37.137905, 33.896599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.776867, 36.927601, 34.063782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328327, -0.259360, -0.908259,
		0.585926, -0.810129, 0.019531,
		-0.740873, -0.525760, 0.417953,
		34.554604, 36.769875, 34.189167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973652, 36.851379, 33.360165>,  <35.073215, 37.137905, 33.896599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973652, 36.851379, 33.360165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672043, 36.726177, 33.591152>,  <34.491077, 36.651054, 33.729744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.672043, 36.726177, 33.591152>,  <34.973652, 36.851379, 33.360165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.672043, 36.726177, 33.591152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447379, -0.398981, -0.800416,
		0.480938, -0.861882, 0.160808,
		-0.754023, -0.313008, 0.577473,
		34.445835, 36.632275, 33.764393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.830647, 36.180283, 33.236465>,  <34.973652, 36.851379, 33.360165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.830647, 36.180283, 33.236465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485752, 36.348999, 33.348640>,  <34.278816, 36.450230, 33.415943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.485752, 36.348999, 33.348640>,  <34.830647, 36.180283, 33.236465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.485752, 36.348999, 33.348640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428279, -0.311529, -0.848249,
		-0.270413, -0.851498, 0.449253,
		-0.862238, 0.421784, 0.280437,
		34.227081, 36.475536, 33.432770>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449974, 35.641922, 33.141682>,  <34.830647, 36.180283, 33.236465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449974, 35.641922, 33.141682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227097, 35.972294, 33.176044>,  <34.093372, 36.170517, 33.196663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.227097, 35.972294, 33.176044>,  <34.449974, 35.641922, 33.141682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.227097, 35.972294, 33.176044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365102, -0.150749, -0.918681,
		-0.745816, -0.543245, 0.385544,
		-0.557189, 0.825930, 0.085909,
		34.059940, 36.220074, 33.201817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.856125, 35.468952, 32.813038>,  <34.449974, 35.641922, 33.141682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.856125, 35.468952, 32.813038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796074, 35.862324, 32.853695>,  <33.760044, 36.098347, 32.878090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.796074, 35.862324, 32.853695>,  <33.856125, 35.468952, 32.813038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.796074, 35.862324, 32.853695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478152, 0.017763, -0.878097,
		-0.865351, -0.180429, 0.467561,
		-0.150129, 0.983428, 0.101644,
		33.751034, 36.157352, 32.884190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.106895, 35.588413, 32.641499>,  <33.856125, 35.468952, 32.813038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.106895, 35.588413, 32.641499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308086, 35.931843, 32.601768>,  <33.428802, 36.137901, 32.577930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.308086, 35.931843, 32.601768>,  <33.106895, 35.588413, 32.641499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.308086, 35.931843, 32.601768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341152, 0.091630, -0.935532,
		-0.794122, 0.504436, 0.338991,
		0.502978, 0.858573, -0.099324,
		33.458981, 36.189415, 32.571972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.608097, 36.098999, 32.473057>,  <33.106895, 35.588413, 32.641499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.608097, 36.098999, 32.473057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960220, 36.197277, 32.310734>,  <33.171494, 36.256245, 32.213341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.960220, 36.197277, 32.310734>,  <32.608097, 36.098999, 32.473057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.960220, 36.197277, 32.310734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441168, 0.109492, -0.890720,
		-0.174414, 0.963143, 0.204781,
		0.880313, 0.245697, -0.405811,
		33.224316, 36.270985, 32.188992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514175, 36.701813, 31.934198>,  <32.608097, 36.098999, 32.473057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514175, 36.701813, 31.934198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881855, 36.567562, 31.851810>,  <33.102463, 36.487011, 31.802378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.881855, 36.567562, 31.851810>,  <32.514175, 36.701813, 31.934198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.881855, 36.567562, 31.851810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232388, -0.040078, -0.971797,
		0.317910, 0.941141, -0.114836,
		0.919200, -0.335631, -0.205969,
		33.157616, 36.466873, 31.790020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768127, 37.081863, 31.406687>,  <32.514175, 36.701813, 31.934198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768127, 37.081863, 31.406687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985912, 36.746883, 31.387783>,  <33.116585, 36.545895, 31.376440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.985912, 36.746883, 31.387783>,  <32.768127, 37.081863, 31.406687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.985912, 36.746883, 31.387783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160979, -0.049032, -0.985739,
		0.823190, 0.544310, -0.161508,
		0.544466, -0.837450, -0.047260,
		33.149254, 36.495647, 31.373606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.320621, 37.163265, 30.949451>,  <32.768127, 37.081863, 31.406687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.320621, 37.163265, 30.949451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255451, 36.768711, 30.940485>,  <33.216351, 36.531979, 30.935106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.255451, 36.768711, 30.940485>,  <33.320621, 37.163265, 30.949451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.255451, 36.768711, 30.940485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207509, 0.056467, -0.976602,
		0.964570, -0.154463, -0.213883,
		-0.162927, -0.986384, -0.022414,
		33.206573, 36.472797, 30.933762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.586391, 37.030540, 30.282209>,  <33.320621, 37.163265, 30.949451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.586391, 37.030540, 30.282209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365940, 36.713428, 30.386326>,  <33.233669, 36.523159, 30.448795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.365940, 36.713428, 30.386326>,  <33.586391, 37.030540, 30.282209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.365940, 36.713428, 30.386326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313563, -0.092305, -0.945070,
		0.773262, -0.602473, -0.197716,
		-0.551129, -0.792784, 0.260290,
		33.200600, 36.475594, 30.464413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.816311, 36.507793, 29.809555>,  <33.586391, 37.030540, 30.282209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.816311, 36.507793, 29.809555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460175, 36.391239, 29.949492>,  <33.246494, 36.321304, 30.033453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.460175, 36.391239, 29.949492>,  <33.816311, 36.507793, 29.809555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.460175, 36.391239, 29.949492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291848, -0.224511, -0.929742,
		0.349462, -0.929885, 0.114848,
		-0.890337, -0.291391, 0.349843,
		33.193073, 36.303822, 30.054445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.714924, 35.870163, 29.551662>,  <33.816311, 36.507793, 29.809555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.714924, 35.870163, 29.551662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350815, 36.011162, 29.638527>,  <33.132351, 36.095760, 29.690645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.350815, 36.011162, 29.638527>,  <33.714924, 35.870163, 29.551662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.350815, 36.011162, 29.638527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319246, -0.263617, -0.910268,
		-0.263617, -0.897916, 0.352494,
		0.910268, -0.352494, -0.217163,
		33.077736, 36.116909, 29.703676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.205891, 35.317200, 29.389687>,  <33.714924, 35.870163, 29.551662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.205891, 35.317200, 29.389687> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989216, 35.653347, 29.382170>,  <32.859211, 35.855034, 29.377661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.989216, 35.653347, 29.382170>,  <33.205891, 35.317200, 29.389687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.989216, 35.653347, 29.382170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434089, -0.298811, -0.849870,
		-0.719818, -0.452210, 0.526658,
		-0.541691, 0.840368, -0.018790,
		32.826710, 35.905457, 29.376534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.583870, 35.189003, 29.212790>,  <33.205891, 35.317200, 29.389687>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.583870, 35.189003, 29.212790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600063, 35.579231, 29.126411>,  <32.609779, 35.813366, 29.074585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.600063, 35.579231, 29.126411>,  <32.583870, 35.189003, 29.212790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.600063, 35.579231, 29.126411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443353, -0.176144, -0.878869,
		-0.895432, 0.131318, 0.425390,
		0.040482, 0.975566, -0.215945,
		32.612209, 35.871902, 29.061628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.828581, 35.333244, 28.969515>,  <32.583870, 35.189003, 29.212790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.828581, 35.333244, 28.969515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090130, 35.617119, 28.864597>,  <32.247059, 35.787445, 28.801647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.090130, 35.617119, 28.864597>,  <31.828581, 35.333244, 28.969515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.090130, 35.617119, 28.864597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439064, 0.073584, -0.895438,
		-0.616179, 0.700665, 0.359712,
		0.653870, 0.709686, -0.262296,
		32.286289, 35.830025, 28.785908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.354671, 35.666317, 28.455080>,  <31.828581, 35.333244, 28.969515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.354671, 35.666317, 28.455080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724262, 35.803116, 28.386608>,  <31.946016, 35.885197, 28.345526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.724262, 35.803116, 28.386608>,  <31.354671, 35.666317, 28.455080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.724262, 35.803116, 28.386608> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201598, 0.055192, -0.977912,
		-0.324995, 0.938079, 0.119942,
		0.923979, 0.341996, -0.171178,
		32.001457, 35.905716, 28.335255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.296238, 36.244125, 27.827700>,  <31.354671, 35.666317, 28.455080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.296238, 36.244125, 27.827700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674656, 36.116241, 27.848827>,  <31.901707, 36.039513, 27.861504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.674656, 36.116241, 27.848827>,  <31.296238, 36.244125, 27.827700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.674656, 36.116241, 27.848827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082980, 0.081448, -0.993217,
		0.313237, 0.944009, 0.103582,
		0.946043, -0.319708, 0.052821,
		31.958469, 36.020329, 27.864674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.742727, 36.741180, 27.519981>,  <31.296238, 36.244125, 27.827700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.742727, 36.741180, 27.519981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954086, 36.402271, 27.498362>,  <32.080902, 36.198925, 27.485390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954086, 36.402271, 27.498362>,  <31.742727, 36.741180, 27.519981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954086, 36.402271, 27.498362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134480, 0.146385, -0.980044,
		0.838279, 0.510583, 0.191291,
		0.528396, -0.847276, -0.054048,
		32.112606, 36.148090, 27.482147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.295979, 36.947815, 27.112244>,  <31.742727, 36.741180, 27.519981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.295979, 36.947815, 27.112244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287411, 36.547905, 27.112291>,  <32.282269, 36.307961, 27.112320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.287411, 36.547905, 27.112291>,  <32.295979, 36.947815, 27.112244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.287411, 36.547905, 27.112291> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267227, -0.005840, -0.963616,
		0.963395, -0.020612, 0.267291,
		-0.021423, -0.999770, 0.000118,
		32.280983, 36.247974, 27.112328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.928696, 36.667454, 26.777784>,  <32.295979, 36.947815, 27.112244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.928696, 36.667454, 26.777784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668705, 36.365341, 26.744123>,  <32.512711, 36.184074, 26.723927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.668705, 36.365341, 26.744123>,  <32.928696, 36.667454, 26.777784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.668705, 36.365341, 26.744123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292871, -0.146766, -0.944821,
		0.701257, -0.638754, 0.316594,
		-0.649973, -0.755284, -0.084152,
		32.473713, 36.138756, 26.718878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.252007, 36.128563, 26.332232>,  <32.928696, 36.667454, 26.777784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.252007, 36.128563, 26.332232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863174, 36.034706, 26.333302>,  <32.629875, 35.978390, 26.333944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.863174, 36.034706, 26.333302>,  <33.252007, 36.128563, 26.332232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.863174, 36.034706, 26.333302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021376, -0.099901, -0.994768,
		0.233687, -0.966934, 0.102127,
		-0.972077, -0.234647, 0.002677,
		32.571552, 35.964314, 26.334105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229538, 35.469143, 26.043673>,  <33.252007, 36.128563, 26.332232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229538, 35.469143, 26.043673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865429, 35.626369, 25.991663>,  <32.646965, 35.720707, 25.960457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.865429, 35.626369, 25.991663>,  <33.229538, 35.469143, 26.043673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.865429, 35.626369, 25.991663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093543, -0.501194, -0.860264,
		-0.403312, -0.770909, 0.492990,
		-0.910269, 0.393071, -0.130024,
		32.592350, 35.744289, 25.952656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.846630, 35.011597, 25.656500>,  <33.229538, 35.469143, 26.043673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.846630, 35.011597, 25.656500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603317, 35.320641, 25.583773>,  <32.457329, 35.506069, 25.540136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.603317, 35.320641, 25.583773>,  <32.846630, 35.011597, 25.656500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.603317, 35.320641, 25.583773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121883, -0.135433, -0.983261,
		-0.784306, -0.620262, -0.011787,
		-0.608284, 0.772614, -0.181820,
		32.420834, 35.552425, 25.529226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438740, 34.801510, 25.161882>,  <32.846630, 35.011597, 25.656500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438740, 34.801510, 25.161882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396324, 35.197693, 25.126678>,  <32.370876, 35.435402, 25.105556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.396324, 35.197693, 25.126678>,  <32.438740, 34.801510, 25.161882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396324, 35.197693, 25.126678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019892, -0.086378, -0.996064,
		-0.994163, -0.107372, -0.010542,
		-0.106039, 0.990460, -0.088010,
		32.364513, 35.494831, 25.100275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972319, 34.846634, 24.568859>,  <32.438740, 34.801510, 25.161882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972319, 34.846634, 24.568859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150181, 35.202305, 24.612017>,  <32.256897, 35.415707, 24.637911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.150181, 35.202305, 24.612017>,  <31.972319, 34.846634, 24.568859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.150181, 35.202305, 24.612017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194991, 0.213665, -0.957249,
		-0.874220, 0.404607, 0.268389,
		0.444655, 0.889179, 0.107895,
		32.283577, 35.469059, 24.644384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.523296, 35.477741, 24.320503>,  <31.972319, 34.846634, 24.568859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.523296, 35.477741, 24.320503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902187, 35.604977, 24.336411>,  <32.129520, 35.681316, 24.345955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.902187, 35.604977, 24.336411>,  <31.523296, 35.477741, 24.320503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.902187, 35.604977, 24.336411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158090, 0.571458, -0.805260,
		-0.278869, 0.756477, 0.591587,
		0.947227, 0.318086, 0.039771,
		32.186356, 35.700401, 24.348341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.396152, 36.103107, 23.989405>,  <31.523296, 35.477741, 24.320503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.396152, 36.103107, 23.989405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781876, 35.998146, 23.975235>,  <32.013309, 35.935169, 23.966734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.781876, 35.998146, 23.975235>,  <31.396152, 36.103107, 23.989405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.781876, 35.998146, 23.975235> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074632, 0.397718, -0.914467,
		0.254046, 0.879185, 0.403106,
		0.964308, -0.262402, -0.035424,
		32.071167, 35.919426, 23.964607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.777861, 36.630527, 23.697380>,  <31.396152, 36.103107, 23.989405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.777861, 36.630527, 23.697380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014473, 36.311741, 23.648483>,  <32.156441, 36.120468, 23.619146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.014473, 36.311741, 23.648483>,  <31.777861, 36.630527, 23.697380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.014473, 36.311741, 23.648483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230842, 0.312664, -0.921387,
		0.772531, 0.516810, 0.368923,
		0.591530, -0.796962, -0.122241,
		32.191933, 36.072651, 23.611811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.382587, 36.900452, 23.427799>,  <31.777861, 36.630527, 23.697380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.382587, 36.900452, 23.427799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385082, 36.506199, 23.360277>,  <32.386581, 36.269650, 23.319765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.385082, 36.506199, 23.360277>,  <32.382587, 36.900452, 23.427799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.385082, 36.506199, 23.360277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000417, 0.168805, -0.985650,
		0.999981, 0.006221, 0.000643,
		0.006240, -0.985630, -0.168804,
		32.386955, 36.210510, 23.309635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.941078, 36.783749, 22.948351>,  <32.382587, 36.900452, 23.427799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.941078, 36.783749, 22.948351> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746212, 36.436405, 22.911215>,  <32.629292, 36.227997, 22.888933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.746212, 36.436405, 22.911215>,  <32.941078, 36.783749, 22.948351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.746212, 36.436405, 22.911215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001730, 0.105347, -0.994434,
		0.873308, -0.484615, -0.049819,
		-0.487166, -0.868361, -0.092838,
		32.600063, 36.175896, 22.883364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318474, 36.455944, 22.380760>,  <32.941078, 36.783749, 22.948351>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318474, 36.455944, 22.380760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955067, 36.294849, 22.425299>,  <32.737022, 36.198193, 22.452021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.955067, 36.294849, 22.425299>,  <33.318474, 36.455944, 22.380760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.955067, 36.294849, 22.425299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125827, 0.009589, -0.992006,
		0.398446, -0.915267, -0.059387,
		-0.908520, -0.402733, 0.111345,
		32.682510, 36.174030, 22.458702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369156, 35.765968, 22.060055>,  <33.318474, 36.455944, 22.380760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369156, 35.765968, 22.060055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978073, 35.849957, 22.060883>,  <32.743423, 35.900349, 22.061378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978073, 35.849957, 22.060883>,  <33.369156, 35.765968, 22.060055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978073, 35.849957, 22.060883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073433, -0.332663, -0.940182,
		-0.196723, -0.919373, 0.340665,
		-0.977705, 0.209972, 0.002070,
		32.684761, 35.912949, 22.061502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.035877, 35.192986, 21.733086>,  <33.369156, 35.765968, 22.060055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.035877, 35.192986, 21.733086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759007, 35.481590, 21.726053>,  <32.592884, 35.654755, 21.721834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.759007, 35.481590, 21.726053>,  <33.035877, 35.192986, 21.733086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.759007, 35.481590, 21.726053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190385, -0.206036, -0.959845,
		-0.696162, -0.661037, 0.279978,
		-0.692179, 0.721511, -0.017583,
		32.551353, 35.698044, 21.720778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.309387, 34.877357, 21.492775>,  <33.035877, 35.192986, 21.733086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.309387, 34.877357, 21.492775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303726, 35.274342, 21.444069>,  <32.300331, 35.512531, 21.414845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.303726, 35.274342, 21.444069>,  <32.309387, 34.877357, 21.492775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.303726, 35.274342, 21.444069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199287, -0.122136, -0.972300,
		-0.979839, 0.010505, 0.199513,
		-0.014153, 0.992458, -0.121767,
		32.299480, 35.572079, 21.407539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.609932, 35.162392, 21.192106>,  <32.309387, 34.877357, 21.492775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.609932, 35.162392, 21.192106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908453, 35.415550, 21.109673>,  <32.087566, 35.567444, 21.060213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.908453, 35.415550, 21.109673>,  <31.609932, 35.162392, 21.192106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.908453, 35.415550, 21.109673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209511, -0.070508, -0.975261,
		-0.631771, 0.771018, 0.079979,
		0.746305, 0.632898, -0.206082,
		32.132343, 35.605419, 21.047848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.468039, 35.745399, 20.679062>,  <31.609932, 35.162392, 21.192106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.468039, 35.745399, 20.679062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844662, 35.614174, 20.648485>,  <32.070637, 35.535439, 20.630138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.844662, 35.614174, 20.648485>,  <31.468039, 35.745399, 20.679062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.844662, 35.614174, 20.648485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125020, -0.129613, -0.983652,
		0.312798, 0.935720, -0.163053,
		0.941556, -0.328069, -0.076441,
		32.127129, 35.515755, 20.625553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.825674, 36.139091, 20.230717>,  <31.468039, 35.745399, 20.679062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.825674, 36.139091, 20.230717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954704, 35.760910, 20.212509>,  <32.032124, 35.534000, 20.201584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.954704, 35.760910, 20.212509>,  <31.825674, 36.139091, 20.230717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.954704, 35.760910, 20.212509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173120, -0.011649, -0.984832,
		0.930578, 0.325562, -0.167434,
		0.322575, -0.945449, -0.045521,
		32.051476, 35.477276, 20.198853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.267620, 36.097805, 19.589842>,  <31.825674, 36.139091, 20.230717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.267620, 36.097805, 19.589842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078201, 35.760807, 19.692572>,  <31.964550, 35.558609, 19.754210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078201, 35.760807, 19.692572>,  <32.267620, 36.097805, 19.589842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078201, 35.760807, 19.692572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335181, -0.097273, -0.937119,
		0.814497, -0.529854, -0.236324,
		-0.473548, -0.842492, 0.256826,
		31.936136, 35.508060, 19.769619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.698349, 36.688759, 19.406034>,  <32.267620, 36.097805, 19.589842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.698349, 36.688759, 19.406034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016487, 36.878448, 19.255014>,  <33.207371, 36.992260, 19.164402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.016487, 36.878448, 19.255014>,  <32.698349, 36.688759, 19.406034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.016487, 36.878448, 19.255014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447016, 0.038186, -0.893710,
		-0.409399, 0.879577, 0.242355,
		0.795342, 0.474221, -0.377552,
		33.255089, 37.020714, 19.141748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446732, 37.226837, 19.024630>,  <32.698349, 36.688759, 19.406034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446732, 37.226837, 19.024630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802883, 37.142311, 18.863348>,  <33.016575, 37.091595, 18.766579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.802883, 37.142311, 18.863348>,  <32.446732, 37.226837, 19.024630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.802883, 37.142311, 18.863348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438115, -0.157230, -0.885062,
		0.123634, 0.964688, -0.232575,
		0.890376, -0.211318, -0.403205,
		33.069996, 37.078915, 18.742386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.567497, 37.694786, 18.482992>,  <32.446732, 37.226837, 19.024630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.567497, 37.694786, 18.482992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727921, 37.329418, 18.455208>,  <32.824173, 37.110199, 18.438538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.727921, 37.329418, 18.455208>,  <32.567497, 37.694786, 18.482992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.727921, 37.329418, 18.455208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443739, -0.127377, -0.887057,
		0.801405, 0.386580, -0.456404,
		0.401054, -0.913417, -0.069460,
		32.848236, 37.055393, 18.434370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.083164, 37.557537, 18.002535>,  <32.567497, 37.694786, 18.482992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.083164, 37.557537, 18.002535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890388, 37.207066, 17.999702>,  <32.774723, 36.996784, 17.998003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.890388, 37.207066, 17.999702>,  <33.083164, 37.557537, 18.002535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.890388, 37.207066, 17.999702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521496, 0.293320, -0.801252,
		0.704116, -0.382459, -0.598285,
		-0.481935, -0.876178, -0.007081,
		32.745808, 36.944214, 17.997578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.480877, 36.921417, 17.870049>,  <33.083164, 37.557537, 18.002535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.480877, 36.921417, 17.870049> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816299, 37.131130, 17.929300>,  <34.017555, 37.256958, 17.964851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.816299, 37.131130, 17.929300>,  <33.480877, 36.921417, 17.870049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.816299, 37.131130, 17.929300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093392, -0.406197, 0.909001,
		0.536744, -0.748418, -0.389584,
		0.838560, 0.524284, 0.148128,
		34.067867, 37.288414, 17.973738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.943367, 36.552914, 18.458799>,  <33.480877, 36.921417, 17.870049>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.943367, 36.552914, 18.458799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058617, 36.935776, 18.470320>,  <34.127766, 37.165493, 18.477232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.058617, 36.935776, 18.470320>,  <33.943367, 36.552914, 18.458799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.058617, 36.935776, 18.470320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126144, -0.067753, 0.989695,
		0.949247, -0.281524, -0.140261,
		0.288127, 0.957159, 0.028802,
		34.145054, 37.222923, 18.478960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.537220, 36.680344, 18.982157>,  <33.943367, 36.552914, 18.458799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.537220, 36.680344, 18.982157> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361324, 37.038055, 18.948956>,  <34.255787, 37.252682, 18.929035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.361324, 37.038055, 18.948956>,  <34.537220, 36.680344, 18.982157>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.361324, 37.038055, 18.948956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070099, 0.126311, 0.989511,
		0.895388, 0.429304, -0.118231,
		-0.439735, 0.894284, -0.083004,
		34.229404, 37.306339, 18.924055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.078175, 37.201141, 19.166309>,  <34.537220, 36.680344, 18.982157>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.078175, 37.201141, 19.166309> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695152, 37.250656, 19.270430>,  <34.465340, 37.280365, 19.332903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.695152, 37.250656, 19.270430>,  <35.078175, 37.201141, 19.166309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.695152, 37.250656, 19.270430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268895, 0.058402, 0.961397,
		0.103810, 0.990588, -0.089210,
		-0.957559, 0.123791, 0.260301,
		34.407883, 37.287792, 19.348520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.903290, 37.852371, 19.552591>,  <35.078175, 37.201141, 19.166309>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.903290, 37.852371, 19.552591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 37.575623, 19.653658>,  <34.470409, 37.409573, 19.714298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.632740, 37.575623, 19.653658>,  <34.903290, 37.852371, 19.552591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.632740, 37.575623, 19.653658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209130, 0.148531, 0.966542,
		-0.706248, 0.706582, 0.044228,
		-0.676372, -0.691867, 0.252667,
		34.429829, 37.368061, 19.729458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.344517, 38.175797, 19.967478>,  <34.903290, 37.852371, 19.552591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.344517, 38.175797, 19.967478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351818, 37.783108, 20.043253>,  <34.356197, 37.547493, 20.088718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.351818, 37.783108, 20.043253>,  <34.344517, 38.175797, 19.967478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351818, 37.783108, 20.043253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089914, 0.190312, 0.977598,
		-0.995782, -0.000811, 0.091744,
		0.018252, -0.981723, 0.189437,
		34.357292, 37.488590, 20.100084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.929020, 38.100986, 20.625195>,  <34.344517, 38.175797, 19.967478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.929020, 38.100986, 20.625195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172848, 37.786041, 20.588339>,  <34.319145, 37.597076, 20.566225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.172848, 37.786041, 20.588339>,  <33.929020, 38.100986, 20.625195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.172848, 37.786041, 20.588339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100094, -0.038857, 0.994219,
		-0.786389, -0.615268, 0.055124,
		0.609569, -0.787360, -0.092142,
		34.355717, 37.549831, 20.560696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.677708, 37.528496, 21.060734>,  <33.929020, 38.100986, 20.625195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.677708, 37.528496, 21.060734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068291, 37.459682, 21.008678>,  <34.302639, 37.418396, 20.977446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.068291, 37.459682, 21.008678>,  <33.677708, 37.528496, 21.060734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.068291, 37.459682, 21.008678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116010, -0.089821, 0.989178,
		-0.181861, -0.980988, -0.067748,
		0.976457, -0.172034, -0.130139,
		34.361229, 37.408073, 20.969637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.867115, 36.907070, 21.580305>,  <33.677708, 37.528496, 21.060734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.867115, 36.907070, 21.580305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206966, 37.091034, 21.477072>,  <34.410877, 37.201412, 21.415133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.206966, 37.091034, 21.477072>,  <33.867115, 36.907070, 21.580305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.206966, 37.091034, 21.477072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371605, -0.174848, 0.911777,
		0.374211, -0.870580, -0.319462,
		0.849633, 0.459911, -0.258082,
		34.461857, 37.229008, 21.399647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386089, 36.474644, 21.827568>,  <33.867115, 36.907070, 21.580305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386089, 36.474644, 21.827568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565254, 36.831223, 21.800140>,  <34.672752, 37.045170, 21.783684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.565254, 36.831223, 21.800140>,  <34.386089, 36.474644, 21.827568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565254, 36.831223, 21.800140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382389, -0.121681, 0.915954,
		0.808180, -0.436484, -0.395381,
		0.447910, 0.891446, -0.068567,
		34.699627, 37.098656, 21.779570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111629, 36.323277, 22.160185>,  <34.386089, 36.474644, 21.827568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111629, 36.323277, 22.160185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030144, 36.714855, 22.155201>,  <34.981251, 36.949802, 22.152210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.030144, 36.714855, 22.155201>,  <35.111629, 36.323277, 22.160185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.030144, 36.714855, 22.155201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204787, 0.055052, 0.977258,
		0.957373, 0.196531, -0.211691,
		-0.203716, 0.978951, -0.012459,
		34.969028, 37.008541, 22.151463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783501, 36.680004, 22.350834>,  <35.111629, 36.323277, 22.160185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783501, 36.680004, 22.350834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500011, 36.950352, 22.431738>,  <35.329918, 37.112560, 22.480280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.500011, 36.950352, 22.431738>,  <35.783501, 36.680004, 22.350834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500011, 36.950352, 22.431738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315194, 0.046856, 0.947870,
		0.631162, 0.735528, -0.246239,
		-0.708722, 0.675872, 0.202260,
		35.287395, 37.153114, 22.492416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.077232, 37.140846, 22.813705>,  <35.783501, 36.680004, 22.350834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.077232, 37.140846, 22.813705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689175, 37.223000, 22.865311>,  <35.456341, 37.272293, 22.896273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.689175, 37.223000, 22.865311>,  <36.077232, 37.140846, 22.813705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.689175, 37.223000, 22.865311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178802, 0.246222, 0.952578,
		0.163878, 0.947202, -0.275593,
		-0.970141, 0.205383, 0.129011,
		35.398132, 37.284615, 22.904015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.005474, 37.772198, 23.291176>,  <36.077232, 37.140846, 22.813705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.005474, 37.772198, 23.291176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663830, 37.567562, 23.328650>,  <35.458843, 37.444782, 23.351133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663830, 37.567562, 23.328650>,  <36.005474, 37.772198, 23.291176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663830, 37.567562, 23.328650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093350, 0.026416, 0.995283,
		-0.511652, 0.858823, 0.025195,
		-0.854106, -0.511590, 0.093687,
		35.407597, 37.414085, 23.356756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.562767, 38.221008, 23.647415>,  <36.005474, 37.772198, 23.291176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.562767, 38.221008, 23.647415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374325, 37.872303, 23.701206>,  <35.261261, 37.663078, 23.733480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.374325, 37.872303, 23.701206>,  <35.562767, 38.221008, 23.647415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.374325, 37.872303, 23.701206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037357, 0.172035, 0.984382,
		-0.881286, 0.458723, -0.113613,
		-0.471104, -0.871767, 0.134476,
		35.232994, 37.610771, 23.741549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.917744, 38.324993, 23.967295>,  <35.562767, 38.221008, 23.647415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.917744, 38.324993, 23.967295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026093, 37.948410, 24.047575>,  <35.091103, 37.722458, 24.095743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.026093, 37.948410, 24.047575>,  <34.917744, 38.324993, 23.967295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.026093, 37.948410, 24.047575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.078596, 0.186171, 0.979369,
		-0.959401, -0.281059, -0.023566,
		0.270873, -0.941460, 0.200703,
		35.107353, 37.665974, 24.107786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.556770, 38.120075, 24.544500>,  <34.917744, 38.324993, 23.967295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.556770, 38.120075, 24.544500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797886, 37.800976, 24.538338>,  <34.942554, 37.609516, 24.534639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.797886, 37.800976, 24.538338>,  <34.556770, 38.120075, 24.544500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797886, 37.800976, 24.538338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064820, 0.029716, 0.997454,
		-0.795262, -0.602255, 0.069622,
		0.602791, -0.797750, -0.015406,
		34.978722, 37.561649, 24.533716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.304798, 37.631706, 25.078436>,  <34.556770, 38.120075, 24.544500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.304798, 37.631706, 25.078436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683529, 37.545277, 24.983072>,  <34.910767, 37.493420, 24.925854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.683529, 37.545277, 24.983072>,  <34.304798, 37.631706, 25.078436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.683529, 37.545277, 24.983072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239087, -0.023391, 0.970716,
		-0.215326, -0.976096, 0.029514,
		0.946822, -0.216077, -0.238409,
		34.967575, 37.480453, 24.911551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.628922, 36.941612, 25.382154>,  <34.304798, 37.631706, 25.078436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.628922, 36.941612, 25.382154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920223, 37.208443, 25.319361>,  <35.095005, 37.368542, 25.281685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.920223, 37.208443, 25.319361>,  <34.628922, 36.941612, 25.382154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.920223, 37.208443, 25.319361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230997, -0.023281, 0.972676,
		0.645199, -0.744622, -0.171048,
		0.728258, 0.667081, -0.156984,
		35.138702, 37.408566, 25.272266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257828, 36.763695, 25.743235>,  <34.628922, 36.941612, 25.382154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257828, 36.763695, 25.743235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268383, 37.161919, 25.707077>,  <35.274715, 37.400852, 25.685383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.268383, 37.161919, 25.707077>,  <35.257828, 36.763695, 25.743235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.268383, 37.161919, 25.707077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128920, 0.086281, 0.987894,
		0.991304, -0.037726, -0.126070,
		0.026392, 0.995556, -0.090394,
		35.276302, 37.460587, 25.679958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.569477, 36.966770, 26.389511>,  <35.257828, 36.763695, 25.743235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.569477, 36.966770, 26.389511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480305, 37.328327, 26.243483>,  <35.426804, 37.545261, 26.155865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.480305, 37.328327, 26.243483>,  <35.569477, 36.966770, 26.389511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.480305, 37.328327, 26.243483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186855, 0.407173, 0.894033,
		0.956760, 0.131089, -0.259667,
		-0.222927, 0.903895, -0.365072,
		35.413425, 37.599495, 26.133961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091141, 37.311008, 26.681221>,  <35.569477, 36.966770, 26.389511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.091141, 37.311008, 26.681221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842136, 37.602962, 26.568254>,  <35.692734, 37.778133, 26.500475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.842136, 37.602962, 26.568254>,  <36.091141, 37.311008, 26.681221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.842136, 37.602962, 26.568254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021993, 0.377033, 0.925939,
		0.782304, 0.570193, -0.250758,
		-0.622508, 0.729881, -0.282414,
		35.655384, 37.821926, 26.483530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.504456, 37.922180, 26.750900>,  <36.091141, 37.311008, 26.681221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.504456, 37.922180, 26.750900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118912, 38.028687, 26.754160>,  <35.887585, 38.092590, 26.756115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.118912, 38.028687, 26.754160>,  <36.504456, 37.922180, 26.750900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.118912, 38.028687, 26.754160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066368, 0.210397, 0.975361,
		0.257995, 0.940656, -0.220466,
		-0.963864, 0.266270, 0.008148,
		35.829754, 38.108566, 26.756605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537300, 38.516819, 27.101431>,  <36.504456, 37.922180, 26.750900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537300, 38.516819, 27.101431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160011, 38.386272, 27.126125>,  <35.933640, 38.307945, 27.140942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160011, 38.386272, 27.126125>,  <36.537300, 38.516819, 27.101431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160011, 38.386272, 27.126125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.012867, 0.149827, 0.988629,
		-0.331910, 0.933292, -0.137121,
		-0.943223, -0.326371, 0.061738,
		35.877045, 38.288361, 27.144646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104382, 39.094566, 27.337431>,  <36.537300, 38.516819, 27.101431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104382, 39.094566, 27.337431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874901, 38.783745, 27.441002>,  <35.737213, 38.597252, 27.503145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.874901, 38.783745, 27.441002>,  <36.104382, 39.094566, 27.337431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.874901, 38.783745, 27.441002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219347, 0.450340, 0.865495,
		-0.789145, 0.439744, -0.428808,
		-0.573705, -0.777058, 0.258927,
		35.702789, 38.550629, 27.518681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506420, 39.295959, 27.535542>,  <36.104382, 39.094566, 27.337431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506420, 39.295959, 27.535542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512558, 38.936153, 27.710190>,  <35.516239, 38.720268, 27.814980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.512558, 38.936153, 27.710190>,  <35.506420, 39.295959, 27.535542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512558, 38.936153, 27.710190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176141, 0.427411, 0.886732,
		-0.984245, -0.090511, -0.151885,
		0.015342, -0.899515, 0.436620,
		35.517162, 38.666298, 27.841175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033108, 39.387455, 28.029430>,  <35.506420, 39.295959, 27.535542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033108, 39.387455, 28.029430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228458, 39.057697, 28.143875>,  <35.345669, 38.859844, 28.212542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.228458, 39.057697, 28.143875>,  <35.033108, 39.387455, 28.029430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.228458, 39.057697, 28.143875> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084895, 0.281432, 0.955818,
		-0.868493, -0.491090, 0.067459,
		0.488378, -0.824395, 0.286113,
		35.374973, 38.810379, 28.229710>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.677074, 39.089066, 28.631565>,  <35.033108, 39.387455, 28.029430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.677074, 39.089066, 28.631565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043503, 38.931179, 28.659910>,  <35.263359, 38.836449, 28.676918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.043503, 38.931179, 28.659910>,  <34.677074, 39.089066, 28.631565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.043503, 38.931179, 28.659910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.001227, 0.173950, 0.984754,
		-0.401021, -0.902188, 0.158866,
		0.916068, -0.394712, 0.070864,
		35.318325, 38.812767, 28.681170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713348, 38.611542, 29.206568>,  <34.677074, 39.089066, 28.631565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713348, 38.611542, 29.206568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095036, 38.724106, 29.166031>,  <35.324047, 38.791645, 29.141708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.095036, 38.724106, 29.166031>,  <34.713348, 38.611542, 29.206568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.095036, 38.724106, 29.166031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068761, 0.123358, 0.989977,
		0.291088, -0.951626, 0.098362,
		0.954222, 0.281407, -0.101343,
		35.381302, 38.808529, 29.135628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.097469, 38.241245, 29.712744>,  <34.713348, 38.611542, 29.206568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.097469, 38.241245, 29.712744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346500, 38.539787, 29.618628>,  <35.495918, 38.718910, 29.562159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.346500, 38.539787, 29.618628>,  <35.097469, 38.241245, 29.712744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.346500, 38.539787, 29.618628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269352, 0.077926, 0.959884,
		0.734745, -0.660975, -0.152517,
		0.622574, 0.746351, -0.235291,
		35.533272, 38.763691, 29.548040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.517410, 38.220356, 30.151182>,  <35.097469, 38.241245, 29.712744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.517410, 38.220356, 30.151182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589016, 38.586994, 30.008184>,  <35.631981, 38.806976, 29.922386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.589016, 38.586994, 30.008184>,  <35.517410, 38.220356, 30.151182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589016, 38.586994, 30.008184> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180298, 0.326645, 0.927791,
		0.967184, -0.230545, -0.106786,
		0.179017, 0.916598, -0.357493,
		35.642719, 38.861973, 29.900936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067329, 38.358757, 30.505577>,  <35.517410, 38.220356, 30.151182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067329, 38.358757, 30.505577> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945496, 38.724407, 30.398535>,  <35.872395, 38.943798, 30.334311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.945496, 38.724407, 30.398535>,  <36.067329, 38.358757, 30.505577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945496, 38.724407, 30.398535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007679, 0.283300, 0.959001,
		0.952456, 0.290038, -0.093307,
		-0.304580, 0.914122, -0.267604,
		35.854122, 38.998642, 30.318254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.506477, 38.805073, 30.831495>,  <36.067329, 38.358757, 30.505577>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.506477, 38.805073, 30.831495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181332, 39.027557, 30.762360>,  <35.986244, 39.161049, 30.720879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181332, 39.027557, 30.762360>,  <36.506477, 38.805073, 30.831495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181332, 39.027557, 30.762360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060413, 0.214628, 0.974826,
		0.579308, 0.802845, -0.140861,
		-0.812867, 0.556215, -0.172838,
		35.937473, 39.194420, 30.710508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.707256, 39.394192, 31.158546>,  <36.506477, 38.805073, 30.831495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.707256, 39.394192, 31.158546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308891, 39.422993, 31.136745>,  <36.069870, 39.440273, 31.123665>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308891, 39.422993, 31.136745>,  <36.707256, 39.394192, 31.158546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308891, 39.422993, 31.136745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034684, 0.252256, 0.967039,
		0.083375, 0.964978, -0.248728,
		-0.995914, 0.072000, -0.054501,
		36.010117, 39.444592, 31.120396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.521717, 40.007652, 31.619150>,  <36.707256, 39.394192, 31.158546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.521717, 40.007652, 31.619150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193874, 39.782669, 31.575546>,  <35.997169, 39.647678, 31.549383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193874, 39.782669, 31.575546>,  <36.521717, 40.007652, 31.619150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193874, 39.782669, 31.575546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184750, 0.079362, 0.979576,
		-0.542315, 0.823011, -0.168959,
		-0.819611, -0.562454, -0.109012,
		35.947990, 39.613934, 31.542843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942657, 40.305969, 32.026821>,  <36.521717, 40.007652, 31.619150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942657, 40.305969, 32.026821> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832024, 39.924084, 31.982962>,  <35.765644, 39.694954, 31.956646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.832024, 39.924084, 31.982962>,  <35.942657, 40.305969, 32.026821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.832024, 39.924084, 31.982962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131653, -0.075377, 0.988426,
		-0.951930, 0.287816, -0.104843,
		-0.276582, -0.954715, -0.109645,
		35.749050, 39.637669, 31.950068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.300415, 40.136757, 32.398220>,  <35.942657, 40.305969, 32.026821>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.300415, 40.136757, 32.398220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459919, 39.772377, 32.355949>,  <35.555622, 39.553749, 32.330589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.459919, 39.772377, 32.355949>,  <35.300415, 40.136757, 32.398220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.459919, 39.772377, 32.355949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162921, -0.183770, 0.969374,
		-0.902467, -0.369331, -0.221693,
		0.398760, -0.910946, -0.105674,
		35.579548, 39.499092, 32.324245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.861370, 39.744446, 32.691074>,  <35.300415, 40.136757, 32.398220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.861370, 39.744446, 32.691074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176033, 39.497787, 32.678978>,  <35.364830, 39.349792, 32.671722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.176033, 39.497787, 32.678978>,  <34.861370, 39.744446, 32.691074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.176033, 39.497787, 32.678978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089368, -0.162193, 0.982704,
		-0.610889, -0.770348, -0.182699,
		0.786656, -0.616650, -0.030238,
		35.412029, 39.312794, 32.669907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.693909, 39.020473, 32.998482>,  <34.861370, 39.744446, 32.691074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.693909, 39.020473, 32.998482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087917, 39.085548, 33.021317>,  <35.324322, 39.124596, 33.035019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.087917, 39.085548, 33.021317>,  <34.693909, 39.020473, 32.998482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087917, 39.085548, 33.021317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020710, -0.217060, 0.975939,
		0.171167, -0.962506, -0.210440,
		0.985024, 0.162690, 0.057087,
		35.383423, 39.134354, 33.038445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.899815, 38.565365, 33.392612>,  <34.693909, 39.020473, 32.998482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.899815, 38.565365, 33.392612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213589, 38.812820, 33.410248>,  <35.401852, 38.961296, 33.420830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.213589, 38.812820, 33.410248>,  <34.899815, 38.565365, 33.392612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.213589, 38.812820, 33.410248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084886, -0.177506, 0.980452,
		0.614374, -0.765359, -0.191756,
		0.784436, 0.618641, 0.044086,
		35.448921, 38.998413, 33.423473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490402, 38.176952, 33.783951>,  <34.899815, 38.565365, 33.392612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490402, 38.176952, 33.783951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570881, 38.568512, 33.798233>,  <35.619167, 38.803448, 33.806801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570881, 38.568512, 33.798233>,  <35.490402, 38.176952, 33.783951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570881, 38.568512, 33.798233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280224, -0.092448, 0.955472,
		0.938612, -0.182236, -0.292912,
		0.201200, 0.978899, 0.035706,
		35.631241, 38.862183, 33.808945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.152344, 38.333248, 34.050613>,  <35.490402, 38.176952, 33.783951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.152344, 38.333248, 34.050613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947178, 38.668873, 34.123161>,  <35.824078, 38.870247, 34.166691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.947178, 38.668873, 34.123161>,  <36.152344, 38.333248, 34.050613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.947178, 38.668873, 34.123161> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264744, -0.046367, 0.963203,
		0.816594, 0.542062, -0.198353,
		-0.512919, 0.839059, 0.181370,
		35.793301, 38.920589, 34.177574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540501, 38.624454, 34.524670>,  <36.152344, 38.333248, 34.050613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540501, 38.624454, 34.524670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181370, 38.797672, 34.556614>,  <35.965889, 38.901604, 34.575783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.181370, 38.797672, 34.556614>,  <36.540501, 38.624454, 34.524670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.181370, 38.797672, 34.556614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088096, -0.001061, 0.996111,
		0.431442, 0.901374, -0.037197,
		-0.897829, 0.433041, 0.079865,
		35.912022, 38.927586, 34.580574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.310825, 38.360516, 34.633686>,  <36.540501, 38.624454, 34.524670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.310825, 38.360516, 34.633686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608078, 38.101341, 34.700535>,  <37.786430, 37.945835, 34.740643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.608078, 38.101341, 34.700535>,  <37.310825, 38.360516, 34.633686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.608078, 38.101341, 34.700535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057117, -0.310262, -0.948934,
		0.666703, 0.695637, -0.267574,
		0.743131, -0.647941, 0.167120,
		37.831017, 37.906960, 34.750671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.778824, 38.445343, 34.109676>,  <37.310825, 38.360516, 34.633686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.778824, 38.445343, 34.109676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827396, 38.078506, 34.261574>,  <37.856541, 37.858406, 34.352711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.827396, 38.078506, 34.261574>,  <37.778824, 38.445343, 34.109676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.827396, 38.078506, 34.261574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293958, -0.332187, -0.896237,
		0.948074, 0.220459, 0.229248,
		0.121430, -0.917088, 0.379743,
		37.863827, 37.803379, 34.375496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.450081, 38.252399, 33.961563>,  <37.778824, 38.445343, 34.109676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.450081, 38.252399, 33.961563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260986, 37.907639, 34.034927>,  <38.147530, 37.700783, 34.078945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260986, 37.907639, 34.034927>,  <38.450081, 38.252399, 33.961563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260986, 37.907639, 34.034927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463007, -0.420034, -0.780510,
		0.749764, -0.284057, 0.597634,
		-0.472736, -0.861907, 0.183406,
		38.119167, 37.649067, 34.089951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900791, 37.634174, 33.846794>,  <38.450081, 38.252399, 33.961563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900791, 37.634174, 33.846794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531456, 37.481548, 33.829529>,  <38.309856, 37.389973, 33.819172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.531456, 37.481548, 33.829529>,  <38.900791, 37.634174, 33.846794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.531456, 37.481548, 33.829529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221116, -0.436418, -0.872151,
		0.313948, -0.814829, 0.487330,
		-0.923333, -0.381567, -0.043159,
		38.254456, 37.367077, 33.816582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890305, 36.882481, 33.807487>,  <38.900791, 37.634174, 33.846794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890305, 36.882481, 33.807487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569641, 37.024963, 33.615463>,  <38.377243, 37.110455, 33.500248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569641, 37.024963, 33.615463>,  <38.890305, 36.882481, 33.807487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569641, 37.024963, 33.615463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335246, -0.397001, -0.854401,
		-0.494930, -0.845876, 0.198841,
		-0.801657, 0.356208, -0.480065,
		38.329144, 37.131824, 33.471443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678490, 36.356792, 33.392445>,  <38.890305, 36.882481, 33.807487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.678490, 36.356792, 33.392445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474545, 36.653667, 33.218460>,  <38.352177, 36.831795, 33.114071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474545, 36.653667, 33.218460>,  <38.678490, 36.356792, 33.392445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474545, 36.653667, 33.218460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010078, -0.500430, -0.865718,
		-0.860196, -0.445782, 0.247672,
		-0.509864, 0.742191, -0.434961,
		38.321587, 36.876324, 33.087971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.140987, 36.080471, 32.914906>,  <38.678490, 36.356792, 33.392445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.140987, 36.080471, 32.914906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220795, 36.456310, 32.803654>,  <38.268681, 36.681812, 32.736904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.220795, 36.456310, 32.803654>,  <38.140987, 36.080471, 32.914906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.220795, 36.456310, 32.803654> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071329, -0.269153, -0.960452,
		-0.977294, 0.211470, 0.013319,
		0.199522, 0.939594, -0.278125,
		38.280651, 36.738190, 32.720215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949318, 36.041233, 32.187572>,  <38.140987, 36.080471, 32.914906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949318, 36.041233, 32.187572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102840, 36.409161, 32.220108>,  <38.194954, 36.629917, 32.239632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102840, 36.409161, 32.220108>,  <37.949318, 36.041233, 32.187572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102840, 36.409161, 32.220108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142268, 0.028133, -0.989428,
		-0.912387, 0.391324, -0.120063,
		0.383809, 0.919823, 0.081341,
		38.217983, 36.685108, 32.244511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.711208, 36.460197, 31.576492>,  <37.949318, 36.041233, 32.187572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.711208, 36.460197, 31.576492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036701, 36.646915, 31.715021>,  <38.231998, 36.758945, 31.798140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.036701, 36.646915, 31.715021>,  <37.711208, 36.460197, 31.576492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.036701, 36.646915, 31.715021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366058, 0.051250, -0.929180,
		-0.451483, 0.882881, -0.129169,
		0.813735, 0.466792, 0.346324,
		38.280823, 36.786953, 31.818918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.697819, 37.060867, 31.236292>,  <37.711208, 36.460197, 31.576492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.697819, 37.060867, 31.236292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069649, 36.959652, 31.343527>,  <38.292747, 36.898922, 31.407867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.069649, 36.959652, 31.343527>,  <37.697819, 37.060867, 31.236292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069649, 36.959652, 31.343527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294583, 0.072652, -0.952860,
		0.221629, 0.964725, 0.142075,
		0.929571, -0.253035, 0.268090,
		38.348518, 36.883743, 31.423954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.066517, 37.487251, 30.789730>,  <37.697819, 37.060867, 31.236292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.066517, 37.487251, 30.789730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332573, 37.211182, 30.903749>,  <38.492207, 37.045540, 30.972160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.332573, 37.211182, 30.903749>,  <38.066517, 37.487251, 30.789730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.332573, 37.211182, 30.903749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372265, -0.024432, -0.927805,
		0.647312, 0.723230, 0.240677,
		0.665136, -0.690175, 0.285048,
		38.532112, 37.004128, 30.989264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788322, 37.757484, 30.588812>,  <38.066517, 37.487251, 30.789730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788322, 37.757484, 30.588812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812153, 37.359055, 30.615017>,  <38.826450, 37.119999, 30.630739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.812153, 37.359055, 30.615017>,  <38.788322, 37.757484, 30.588812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812153, 37.359055, 30.615017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408222, -0.035576, -0.912189,
		0.910936, 0.081091, 0.404499,
		0.059580, -0.996072, 0.065510,
		38.830029, 37.060234, 30.634670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.327850, 37.538639, 30.323017>,  <38.788322, 37.757484, 30.588812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.327850, 37.538639, 30.323017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131172, 37.191387, 30.295908>,  <39.013165, 36.983036, 30.279642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131172, 37.191387, 30.295908>,  <39.327850, 37.538639, 30.323017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131172, 37.191387, 30.295908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406217, -0.159842, -0.899688,
		0.770209, -0.469903, 0.431241,
		-0.491697, -0.868125, -0.067771,
		38.983662, 36.930950, 30.275578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.674450, 37.135719, 29.787928>,  <39.327850, 37.538639, 30.323017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.674450, 37.135719, 29.787928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328430, 36.936695, 29.813618>,  <39.120819, 36.817280, 29.829031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.328430, 36.936695, 29.813618>,  <39.674450, 37.135719, 29.787928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.328430, 36.936695, 29.813618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024518, -0.169790, -0.985175,
		0.501092, -0.850648, 0.159076,
		-0.865047, -0.497563, 0.064224,
		39.068916, 36.787426, 29.832884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.805912, 36.570526, 29.456358>,  <39.674450, 37.135719, 29.787928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.805912, 36.570526, 29.456358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406075, 36.566071, 29.466871>,  <39.166172, 36.563396, 29.473179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.406075, 36.566071, 29.466871>,  <39.805912, 36.570526, 29.456358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.406075, 36.566071, 29.466871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024303, -0.151049, -0.988228,
		0.014981, -0.988464, 0.150716,
		-0.999593, -0.011141, 0.026286,
		39.106197, 36.562729, 29.474756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530315, 36.020004, 28.988991>,  <39.805912, 36.570526, 29.456358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530315, 36.020004, 28.988991> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208500, 36.256351, 29.012957>,  <39.015411, 36.398159, 29.027336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.208500, 36.256351, 29.012957>,  <39.530315, 36.020004, 28.988991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.208500, 36.256351, 29.012957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177013, -0.142275, -0.973871,
		-0.566908, -0.794122, 0.219057,
		-0.804539, 0.590871, 0.059913,
		38.967136, 36.433613, 29.030930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.976608, 35.699326, 28.700863>,  <39.530315, 36.020004, 28.988991>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.976608, 35.699326, 28.700863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870491, 36.084522, 28.681847>,  <38.806820, 36.315639, 28.670437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.870491, 36.084522, 28.681847>,  <38.976608, 35.699326, 28.700863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870491, 36.084522, 28.681847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234563, -0.112287, -0.965594,
		-0.935200, -0.245013, 0.255672,
		-0.265292, 0.962995, -0.047539,
		38.790905, 36.373421, 28.667585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.335735, 35.736286, 28.284466>,  <38.976608, 35.699326, 28.700863>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.335735, 35.736286, 28.284466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479107, 36.109436, 28.270151>,  <38.565128, 36.333324, 28.261562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.479107, 36.109436, 28.270151>,  <38.335735, 35.736286, 28.284466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.479107, 36.109436, 28.270151> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321034, 0.087171, -0.943048,
		-0.876622, 0.349504, 0.330728,
		0.358429, 0.932871, -0.035787,
		38.586636, 36.389297, 28.259415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.895428, 35.931705, 27.769857>,  <38.335735, 35.736286, 28.284466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.895428, 35.931705, 27.769857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142628, 36.243931, 27.807388>,  <38.290947, 36.431267, 27.829906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.142628, 36.243931, 27.807388>,  <37.895428, 35.931705, 27.769857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.142628, 36.243931, 27.807388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179364, 0.256186, -0.949841,
		-0.765448, 0.570168, 0.298326,
		0.617995, 0.780563, 0.093829,
		38.328026, 36.478100, 27.835537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.496925, 36.527290, 27.593004>,  <37.895428, 35.931705, 27.769857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.496925, 36.527290, 27.593004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879520, 36.616394, 27.517626>,  <38.109077, 36.669857, 27.472399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.879520, 36.616394, 27.517626>,  <37.496925, 36.527290, 27.593004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.879520, 36.616394, 27.517626> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229889, 0.177611, -0.956873,
		-0.179683, 0.958557, 0.221092,
		0.956486, 0.222761, -0.188448,
		38.166466, 36.683224, 27.461092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.540440, 37.231106, 27.316111>,  <37.496925, 36.527290, 27.593004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.540440, 37.231106, 27.316111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871273, 37.032829, 27.210112>,  <38.069775, 36.913864, 27.146511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871273, 37.032829, 27.210112>,  <37.540440, 37.231106, 27.316111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871273, 37.032829, 27.210112> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235834, 0.121920, -0.964115,
		0.510210, 0.859900, -0.016063,
		0.827084, -0.495689, -0.264999,
		38.119400, 36.884121, 27.130611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.798740, 37.608990, 26.668472>,  <37.540440, 37.231106, 27.316111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.798740, 37.608990, 26.668472> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893059, 37.221607, 26.700699>,  <37.949650, 36.989178, 26.720034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.893059, 37.221607, 26.700699>,  <37.798740, 37.608990, 26.668472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.893059, 37.221607, 26.700699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247910, -0.140105, -0.958598,
		0.939650, 0.206058, -0.273126,
		0.235794, -0.968458, 0.080565,
		37.963799, 36.931068, 26.724869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206497, 37.445499, 26.047701>,  <37.798740, 37.608990, 26.668472>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206497, 37.445499, 26.047701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059242, 37.097652, 26.179300>,  <37.970890, 36.888943, 26.258261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.059242, 37.097652, 26.179300>,  <38.206497, 37.445499, 26.047701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059242, 37.097652, 26.179300> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127717, -0.303198, -0.944330,
		0.920959, -0.389660, 0.000552,
		-0.368135, -0.869618, 0.328999,
		37.948803, 36.836765, 26.278000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387344, 37.041306, 25.506790>,  <38.206497, 37.445499, 26.047701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387344, 37.041306, 25.506790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118088, 36.833599, 25.717407>,  <37.956535, 36.708977, 25.843777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118088, 36.833599, 25.717407>,  <38.387344, 37.041306, 25.506790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118088, 36.833599, 25.717407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379921, -0.368041, -0.848650,
		0.634463, -0.771304, 0.050463,
		-0.673139, -0.519265, 0.526543,
		37.916145, 36.677818, 25.875370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.455833, 36.360233, 25.262003>,  <38.387344, 37.041306, 25.506790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.455833, 36.360233, 25.262003> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089996, 36.383995, 25.422003>,  <37.870495, 36.398251, 25.518003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089996, 36.383995, 25.422003>,  <38.455833, 36.360233, 25.262003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089996, 36.383995, 25.422003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375918, -0.489463, -0.786837,
		0.149045, -0.869999, 0.469987,
		-0.914588, 0.059403, 0.400000,
		37.815620, 36.401817, 25.542004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.144947, 35.642975, 25.177475>,  <38.455833, 36.360233, 25.262003>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.144947, 35.642975, 25.177475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843430, 35.899754, 25.233612>,  <37.662518, 36.053822, 25.267294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.843430, 35.899754, 25.233612>,  <38.144947, 35.642975, 25.177475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.843430, 35.899754, 25.233612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539177, -0.482154, -0.690519,
		-0.375613, -0.596177, 0.709569,
		-0.753793, 0.641950, 0.140342,
		37.617290, 36.092339, 25.275715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634609, 35.232754, 25.305498>,  <38.144947, 35.642975, 25.177475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634609, 35.232754, 25.305498> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454395, 35.569221, 25.185863>,  <37.346268, 35.771103, 25.114082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.454395, 35.569221, 25.185863>,  <37.634609, 35.232754, 25.305498>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454395, 35.569221, 25.185863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.578892, -0.530295, -0.619413,
		-0.679634, -0.105929, 0.725862,
		-0.450535, 0.841170, -0.299085,
		37.319237, 35.821571, 25.096138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.995872, 35.041706, 25.167837>,  <37.634609, 35.232754, 25.305498>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.995872, 35.041706, 25.167837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974987, 35.399014, 24.989244>,  <36.962456, 35.613400, 24.882090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.974987, 35.399014, 24.989244>,  <36.995872, 35.041706, 25.167837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.974987, 35.399014, 24.989244> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664553, -0.364805, -0.652140,
		-0.745414, 0.262657, 0.612674,
		-0.052217, 0.893268, -0.446481,
		36.959320, 35.666992, 24.855301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226288, 35.274551, 25.053204>,  <36.995872, 35.041706, 25.167837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226288, 35.274551, 25.053204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471210, 35.455101, 24.793562>,  <36.618164, 35.563431, 24.637777>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.471210, 35.455101, 24.793562>,  <36.226288, 35.274551, 25.053204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.471210, 35.455101, 24.793562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633153, -0.211744, -0.744501,
		-0.473495, 0.866846, 0.156140,
		0.612306, 0.451378, -0.649106,
		36.654903, 35.590515, 24.598829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.741455, 35.414917, 24.608854>,  <36.226288, 35.274551, 25.053204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.741455, 35.414917, 24.608854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079063, 35.482929, 24.405394>,  <36.281628, 35.523735, 24.283318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.079063, 35.482929, 24.405394>,  <35.741455, 35.414917, 24.608854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079063, 35.482929, 24.405394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434996, -0.337731, -0.834695,
		-0.313707, 0.925758, -0.211091,
		0.844018, 0.170026, -0.508650,
		36.332268, 35.533936, 24.252798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.553055, 35.820442, 24.003040>,  <35.741455, 35.414917, 24.608854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.553055, 35.820442, 24.003040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908352, 35.653339, 23.926607>,  <36.121529, 35.553078, 23.880747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.908352, 35.653339, 23.926607>,  <35.553055, 35.820442, 24.003040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.908352, 35.653339, 23.926607> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337262, -0.310602, -0.888696,
		0.311905, 0.853820, -0.416781,
		0.888240, -0.417753, -0.191083,
		36.174824, 35.528015, 23.869282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.812550, 35.956684, 23.257717>,  <35.553055, 35.820442, 24.003040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.812550, 35.956684, 23.257717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991554, 35.619236, 23.376406>,  <36.098957, 35.416767, 23.447618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.991554, 35.619236, 23.376406>,  <35.812550, 35.956684, 23.257717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991554, 35.619236, 23.376406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264659, -0.441874, -0.857148,
		0.854217, 0.305056, -0.421015,
		0.447514, -0.843616, 0.296721,
		36.125809, 35.366150, 23.465422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.186779, 35.776878, 22.739796>,  <35.812550, 35.956684, 23.257717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.186779, 35.776878, 22.739796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160309, 35.435410, 22.946432>,  <36.144428, 35.230530, 23.070414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.160309, 35.435410, 22.946432>,  <36.186779, 35.776878, 22.739796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.160309, 35.435410, 22.946432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213568, -0.493611, -0.843052,
		0.974684, -0.166116, -0.149653,
		-0.066174, -0.853671, 0.516592,
		36.140457, 35.179310, 23.101410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549122, 35.280640, 22.416300>,  <36.186779, 35.776878, 22.739796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549122, 35.280640, 22.416300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305267, 35.044167, 22.627523>,  <36.158955, 34.902283, 22.754257>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.305267, 35.044167, 22.627523>,  <36.549122, 35.280640, 22.416300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.305267, 35.044167, 22.627523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050411, -0.693736, -0.718463,
		0.791076, -0.411381, 0.452729,
		-0.609637, -0.591182, 0.528060,
		36.122375, 34.866814, 22.785942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.720345, 34.545227, 22.375311>,  <36.549122, 35.280640, 22.416300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.720345, 34.545227, 22.375311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340000, 34.548519, 22.499117>,  <36.111794, 34.550495, 22.573400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.340000, 34.548519, 22.499117>,  <36.720345, 34.545227, 22.375311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.340000, 34.548519, 22.499117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180638, -0.826630, -0.532967,
		0.251469, -0.562686, 0.787494,
		-0.950859, 0.008227, 0.309514,
		36.054741, 34.550987, 22.591970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624783, 33.924019, 22.513855>,  <36.720345, 34.545227, 22.375311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624783, 33.924019, 22.513855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243801, 34.044033, 22.492622>,  <36.015213, 34.116043, 22.479883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.243801, 34.044033, 22.492622>,  <36.624783, 33.924019, 22.513855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.243801, 34.044033, 22.492622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183683, -0.704392, -0.685632,
		-0.243102, -0.643281, 0.726010,
		-0.952451, 0.300034, -0.053079,
		35.958065, 34.134045, 22.476698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.241375, 33.374844, 22.696459>,  <36.624783, 33.924019, 22.513855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.241375, 33.374844, 22.696459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978508, 33.586021, 22.481270>,  <35.820789, 33.712727, 22.352158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.978508, 33.586021, 22.481270>,  <36.241375, 33.374844, 22.696459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978508, 33.586021, 22.481270> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206606, -0.812562, -0.545030,
		-0.724877, -0.247027, 0.643064,
		-0.657166, 0.527941, -0.537970,
		35.781357, 33.744404, 22.319878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.603504, 32.967304, 22.548040>,  <36.241375, 33.374844, 22.696459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.603504, 32.967304, 22.548040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574566, 33.243664, 22.260313>,  <35.557201, 33.409481, 22.087677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.574566, 33.243664, 22.260313>,  <35.603504, 32.967304, 22.548040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.574566, 33.243664, 22.260313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303562, -0.702247, -0.643972,
		-0.950061, 0.171770, 0.260535,
		-0.072344, 0.690901, -0.719321,
		35.552864, 33.450935, 22.044518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.968212, 32.706898, 21.979380>,  <35.603504, 32.967304, 22.548040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.968212, 32.706898, 21.979380> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147308, 32.364498, 21.875996>,  <36.254765, 32.159058, 21.813965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.147308, 32.364498, 21.875996>,  <35.968212, 32.706898, 21.979380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.147308, 32.364498, 21.875996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584701, 0.061594, 0.808907,
		-0.676501, -0.513301, 0.528079,
		0.447740, -0.855995, -0.258459,
		36.281631, 32.107700, 21.798458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891785, 32.297050, 22.611282>,  <35.968212, 32.706898, 21.979380>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891785, 32.297050, 22.611282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204479, 32.170181, 22.396513>,  <36.392097, 32.094059, 22.267651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.204479, 32.170181, 22.396513>,  <35.891785, 32.297050, 22.611282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.204479, 32.170181, 22.396513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611856, 0.223742, 0.758664,
		-0.120496, -0.921596, 0.368972,
		0.781737, -0.317174, -0.536924,
		36.438999, 32.075031, 22.235435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234619, 31.825806, 23.118074>,  <35.891785, 32.297050, 22.611282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234619, 31.825806, 23.118074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489502, 31.889780, 22.816507>,  <36.642429, 31.928165, 22.635567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.489502, 31.889780, 22.816507>,  <36.234619, 31.825806, 23.118074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.489502, 31.889780, 22.816507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724584, 0.208971, 0.656741,
		0.262586, -0.964754, 0.017267,
		0.637202, 0.159939, -0.753919,
		36.680664, 31.937761, 22.590332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.823135, 31.481152, 23.220348>,  <36.234619, 31.825806, 23.118074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.823135, 31.481152, 23.220348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944477, 31.778629, 22.982056>,  <37.017284, 31.957115, 22.839081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.944477, 31.778629, 22.982056>,  <36.823135, 31.481152, 23.220348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.944477, 31.778629, 22.982056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722304, 0.228294, 0.652808,
		0.621490, -0.628334, -0.467918,
		0.303359, 0.743693, -0.595730,
		37.035484, 32.001736, 22.803337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.623600, 31.428562, 23.205137>,  <36.823135, 31.481152, 23.220348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.623600, 31.428562, 23.205137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534721, 31.800406, 23.087523>,  <37.481396, 32.023510, 23.016954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.534721, 31.800406, 23.087523>,  <37.623600, 31.428562, 23.205137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534721, 31.800406, 23.087523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667058, 0.364885, 0.649532,
		0.711100, -0.051818, -0.701178,
		-0.222192, 0.929609, -0.294036,
		37.468063, 32.079288, 22.999311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261364, 31.820522, 23.128174>,  <37.623600, 31.428562, 23.205137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261364, 31.820522, 23.128174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986172, 32.106079, 23.180397>,  <37.821056, 32.277412, 23.211731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.986172, 32.106079, 23.180397>,  <38.261364, 31.820522, 23.128174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986172, 32.106079, 23.180397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563949, 0.412659, 0.715314,
		0.456782, 0.565747, -0.686499,
		-0.687977, 0.713893, 0.130557,
		37.779778, 32.320248, 23.219564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.702991, 32.293251, 23.393047>,  <38.261364, 31.820522, 23.128174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.702991, 32.293251, 23.393047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333435, 32.432163, 23.457319>,  <38.111702, 32.515511, 23.495882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.333435, 32.432163, 23.457319>,  <38.702991, 32.293251, 23.393047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.333435, 32.432163, 23.457319> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318555, 0.465383, 0.825798,
		0.212009, 0.814133, -0.540592,
		-0.923891, 0.347285, 0.160680,
		38.056267, 32.536350, 23.505524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712261, 33.117256, 23.485353>,  <38.702991, 32.293251, 23.393047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712261, 33.117256, 23.485353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379978, 32.964439, 23.647327>,  <38.180611, 32.872749, 23.744513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.379978, 32.964439, 23.647327>,  <38.712261, 33.117256, 23.485353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.379978, 32.964439, 23.647327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227310, 0.431209, 0.873149,
		-0.508191, 0.817375, -0.271365,
		-0.830705, -0.382042, 0.404935,
		38.130768, 32.849827, 23.768808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.503193, 33.635784, 23.906223>,  <38.712261, 33.117256, 23.485353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.503193, 33.635784, 23.906223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348953, 33.290188, 24.035736>,  <38.256409, 33.082829, 24.113443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.348953, 33.290188, 24.035736>,  <38.503193, 33.635784, 23.906223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.348953, 33.290188, 24.035736> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.255451, 0.237235, 0.937264,
		-0.886599, 0.444119, 0.129229,
		-0.385600, -0.863989, 0.323783,
		38.233273, 33.030991, 24.132872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.137459, 33.810070, 24.455023>,  <38.503193, 33.635784, 23.906223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.137459, 33.810070, 24.455023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175968, 33.416782, 24.516993>,  <38.199074, 33.180809, 24.554174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.175968, 33.416782, 24.516993>,  <38.137459, 33.810070, 24.455023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175968, 33.416782, 24.516993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103732, 0.164713, 0.980872,
		-0.989934, -0.078365, 0.117850,
		0.096278, -0.983223, 0.154926,
		38.204853, 33.121815, 24.563471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.730129, 33.678448, 25.153492>,  <38.137459, 33.810070, 24.455023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.730129, 33.678448, 25.153492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991386, 33.381172, 25.095425>,  <38.148140, 33.202805, 25.060583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.991386, 33.381172, 25.095425>,  <37.730129, 33.678448, 25.153492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.991386, 33.381172, 25.095425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097492, -0.107585, 0.989404,
		-0.750937, -0.660370, 0.002187,
		0.653138, -0.743193, -0.145170,
		38.187328, 33.158215, 25.051874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.511265, 33.103561, 25.702799>,  <37.730129, 33.678448, 25.153492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.511265, 33.103561, 25.702799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887363, 33.049099, 25.577967>,  <38.113022, 33.016422, 25.503067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.887363, 33.049099, 25.577967>,  <37.511265, 33.103561, 25.702799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.887363, 33.049099, 25.577967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306646, -0.059762, 0.949946,
		-0.147996, -0.988883, -0.014438,
		0.940247, -0.136161, -0.312081,
		38.169437, 33.008251, 25.484343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.728096, 32.520290, 26.041456>,  <37.511265, 33.103561, 25.702799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.728096, 32.520290, 26.041456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071941, 32.686092, 25.921953>,  <38.278248, 32.785572, 25.850250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.071941, 32.686092, 25.921953>,  <37.728096, 32.520290, 26.041456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.071941, 32.686092, 25.921953> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326078, 0.005129, 0.945329,
		0.393374, -0.910034, -0.130751,
		0.859611, 0.414503, -0.298759,
		38.329826, 32.810444, 25.832325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.347267, 32.107117, 26.381296>,  <37.728096, 32.520290, 26.041456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.347267, 32.107117, 26.381296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474911, 32.479668, 26.311207>,  <38.551495, 32.703197, 26.269154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.474911, 32.479668, 26.311207>,  <38.347267, 32.107117, 26.381296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.474911, 32.479668, 26.311207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192390, 0.117376, 0.974274,
		0.927986, -0.344608, -0.141733,
		0.319106, 0.931380, -0.175222,
		38.570644, 32.759083, 26.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988464, 32.040474, 26.652195>,  <38.347267, 32.107117, 26.381296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988464, 32.040474, 26.652195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886681, 32.427052, 26.638134>,  <38.825611, 32.658997, 26.629698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.886681, 32.427052, 26.638134>,  <38.988464, 32.040474, 26.652195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.886681, 32.427052, 26.638134> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329132, 0.120722, 0.936535,
		0.909353, 0.226741, -0.348807,
		-0.254460, 0.966444, -0.035151,
		38.810341, 32.716984, 26.627588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.580368, 32.404549, 26.904755>,  <38.988464, 32.040474, 26.652195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.580368, 32.404549, 26.904755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273525, 32.658714, 26.940048>,  <39.089420, 32.811214, 26.961224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.273525, 32.658714, 26.940048>,  <39.580368, 32.404549, 26.904755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.273525, 32.658714, 26.940048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420842, 0.394645, 0.816791,
		0.484183, 0.663701, -0.570147,
		-0.767110, 0.635419, 0.088233,
		39.043392, 32.849339, 26.966518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.929058, 32.953846, 27.149481>,  <39.580368, 32.404549, 26.904755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.929058, 32.953846, 27.149481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551025, 33.031319, 27.254789>,  <39.324207, 33.077805, 27.317974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.551025, 33.031319, 27.254789>,  <39.929058, 32.953846, 27.149481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551025, 33.031319, 27.254789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314903, 0.323873, 0.892156,
		0.087531, 0.926063, -0.367078,
		-0.945079, 0.193685, 0.263271,
		39.267502, 33.089424, 27.333771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986515, 33.635033, 27.423546>,  <39.929058, 32.953846, 27.149481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986515, 33.635033, 27.423546> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644714, 33.486553, 27.568892>,  <39.439632, 33.397465, 27.656099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644714, 33.486553, 27.568892>,  <39.986515, 33.635033, 27.423546>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644714, 33.486553, 27.568892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260864, 0.298260, 0.918146,
		-0.449193, 0.879348, -0.158031,
		-0.854503, -0.371199, 0.363366,
		39.388363, 33.375195, 27.677902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.506489, 34.206493, 27.738918>,  <39.986515, 33.635033, 27.423546>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.506489, 34.206493, 27.738918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402229, 33.853790, 27.896175>,  <39.339672, 33.642170, 27.990530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.402229, 33.853790, 27.896175>,  <39.506489, 34.206493, 27.738918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402229, 33.853790, 27.896175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191780, 0.351816, 0.916213,
		-0.946194, 0.314207, 0.077403,
		-0.260649, -0.881759, 0.393145,
		39.324036, 33.589264, 28.014118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.130318, 34.441616, 28.286861>,  <39.506489, 34.206493, 27.738918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.130318, 34.441616, 28.286861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191566, 34.052158, 28.354465>,  <39.228313, 33.818481, 28.395029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.191566, 34.052158, 28.354465>,  <39.130318, 34.441616, 28.286861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191566, 34.052158, 28.354465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196307, 0.197589, 0.960428,
		-0.968513, -0.113881, 0.221389,
		0.153118, -0.973648, 0.169012,
		39.237503, 33.760063, 28.405169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651955, 34.334724, 28.822159>,  <39.130318, 34.441616, 28.286861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651955, 34.334724, 28.822159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964790, 34.086910, 28.848989>,  <39.152493, 33.938221, 28.865088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.964790, 34.086910, 28.848989>,  <38.651955, 34.334724, 28.822159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.964790, 34.086910, 28.848989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080387, 0.207040, 0.975024,
		-0.617954, -0.757168, 0.211728,
		0.782094, -0.619540, 0.067075,
		39.199417, 33.901047, 28.869112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.521225, 33.934174, 29.477062>,  <38.651955, 34.334724, 28.822159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.521225, 33.934174, 29.477062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905506, 33.895489, 29.372992>,  <39.136074, 33.872276, 29.310549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.905506, 33.895489, 29.372992>,  <38.521225, 33.934174, 29.477062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905506, 33.895489, 29.372992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277424, 0.304124, 0.911342,
		-0.009013, -0.947711, 0.319004,
		0.960705, -0.096714, -0.260177,
		39.193718, 33.866474, 29.294939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.854462, 33.701588, 30.088196>,  <38.521225, 33.934174, 29.477062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.854462, 33.701588, 30.088196> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135967, 33.854305, 29.848543>,  <39.304871, 33.945934, 29.704752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.135967, 33.854305, 29.848543>,  <38.854462, 33.701588, 30.088196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.135967, 33.854305, 29.848543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442516, 0.424173, 0.790099,
		0.555790, -0.821164, 0.129566,
		0.703759, 0.381795, -0.599130,
		39.347095, 33.968842, 29.668804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440868, 33.488022, 30.367365>,  <38.854462, 33.701588, 30.088196>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440868, 33.488022, 30.367365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557281, 33.787216, 30.128763>,  <39.627129, 33.966732, 29.985601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.557281, 33.787216, 30.128763>,  <39.440868, 33.488022, 30.367365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557281, 33.787216, 30.128763> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539387, 0.386671, 0.748029,
		0.790165, -0.539451, -0.290917,
		0.291036, 0.747983, -0.596506,
		39.644592, 34.011612, 29.949812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.153778, 33.587593, 30.468786>,  <39.440868, 33.488022, 30.367365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.153778, 33.587593, 30.468786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015453, 33.932373, 30.320490>,  <39.932457, 34.139240, 30.231512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.015453, 33.932373, 30.320490>,  <40.153778, 33.587593, 30.468786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.015453, 33.932373, 30.320490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567798, 0.506798, 0.648661,
		0.747007, 0.013808, -0.664673,
		-0.345811, 0.861954, -0.370742,
		39.911709, 34.190960, 30.209267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.723026, 33.957237, 30.278198>,  <40.153778, 33.587593, 30.468786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.723026, 33.957237, 30.278198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431969, 34.226185, 30.332539>,  <40.257336, 34.387554, 30.365143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.431969, 34.226185, 30.332539>,  <40.723026, 33.957237, 30.278198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.431969, 34.226185, 30.332539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514692, 0.404237, 0.756099,
		0.453460, 0.620093, -0.640203,
		-0.727645, 0.672367, 0.135852,
		40.213676, 34.427895, 30.373295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.048176, 34.453861, 30.512526>,  <40.723026, 33.957237, 30.278198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.048176, 34.453861, 30.512526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673271, 34.568825, 30.591454>,  <40.448330, 34.637802, 30.638809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.673271, 34.568825, 30.591454>,  <41.048176, 34.453861, 30.512526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.673271, 34.568825, 30.591454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301976, 0.386466, 0.871467,
		0.174211, 0.876379, -0.449011,
		-0.937262, 0.287410, 0.197319,
		40.392094, 34.655048, 30.650650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.074940, 35.140656, 30.663685>,  <41.048176, 34.453861, 30.512526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.074940, 35.140656, 30.663685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730808, 35.021332, 30.829016>,  <40.524330, 34.949738, 30.928215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730808, 35.021332, 30.829016>,  <41.074940, 35.140656, 30.663685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730808, 35.021332, 30.829016> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325782, 0.301854, 0.895963,
		-0.392039, 0.905481, -0.162511,
		-0.860332, -0.298309, 0.413328,
		40.472710, 34.931839, 30.953014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.839478, 35.760559, 31.080097>,  <41.074940, 35.140656, 30.663685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.839478, 35.760559, 31.080097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647602, 35.437180, 31.216511>,  <40.532478, 35.243153, 31.298359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.647602, 35.437180, 31.216511>,  <40.839478, 35.760559, 31.080097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.647602, 35.437180, 31.216511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045205, 0.410924, 0.910548,
		-0.876274, 0.421363, -0.233662,
		-0.479689, -0.808452, 0.341034,
		40.503696, 35.194645, 31.318821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.281727, 35.957714, 31.508017>,  <40.839478, 35.760559, 31.080097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.281727, 35.957714, 31.508017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387463, 35.583996, 31.603704>,  <40.450905, 35.359764, 31.661118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.387463, 35.583996, 31.603704>,  <40.281727, 35.957714, 31.508017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387463, 35.583996, 31.603704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066805, 0.265187, 0.961880,
		-0.962114, -0.238277, 0.132514,
		0.264335, -0.934291, 0.239222,
		40.466763, 35.303707, 31.675470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.906536, 35.869331, 32.134815>,  <40.281727, 35.957714, 31.508017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.906536, 35.869331, 32.134815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159630, 35.559883, 32.148430>,  <40.311485, 35.374214, 32.156597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.159630, 35.559883, 32.148430>,  <39.906536, 35.869331, 32.134815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.159630, 35.559883, 32.148430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151661, 0.166903, 0.974239,
		-0.759372, -0.611273, 0.222933,
		0.632734, -0.773621, 0.034035,
		40.349449, 35.327797, 32.158642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.720901, 35.492874, 32.786728>,  <39.906536, 35.869331, 32.134815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.720901, 35.492874, 32.786728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092804, 35.377468, 32.695248>,  <40.315945, 35.308224, 32.640358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.092804, 35.377468, 32.695248>,  <39.720901, 35.492874, 32.786728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.092804, 35.377468, 32.695248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242992, 0.014221, 0.969924,
		-0.276587, -0.957369, 0.083329,
		0.929760, -0.288517, -0.228700,
		40.371731, 35.290913, 32.626637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.837395, 34.911346, 33.061569>,  <39.720901, 35.492874, 32.786728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.837395, 34.911346, 33.061569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213333, 35.037788, 33.009781>,  <40.438896, 35.113651, 32.978706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.213333, 35.037788, 33.009781>,  <39.837395, 34.911346, 33.061569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.213333, 35.037788, 33.009781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194065, -0.182187, 0.963923,
		0.281110, -0.931068, -0.232573,
		0.939849, 0.316102, -0.129473,
		40.495289, 35.132618, 32.970940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.269890, 34.414589, 33.247746>,  <39.837395, 34.911346, 33.061569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.269890, 34.414589, 33.247746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498135, 34.742531, 33.266674>,  <40.635082, 34.939297, 33.278030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.498135, 34.742531, 33.266674>,  <40.269890, 34.414589, 33.247746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.498135, 34.742531, 33.266674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160223, -0.167662, 0.972738,
		0.805440, -0.547471, -0.227029,
		0.570609, 0.819857, 0.047324,
		40.669319, 34.988487, 33.280872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.803822, 34.246754, 33.607533>,  <40.269890, 34.414589, 33.247746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.803822, 34.246754, 33.607533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845440, 34.642216, 33.650879>,  <40.870411, 34.879494, 33.676888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.845440, 34.642216, 33.650879>,  <40.803822, 34.246754, 33.607533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.845440, 34.642216, 33.650879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367351, -0.139457, 0.919568,
		0.924245, -0.055866, -0.377691,
		0.104044, 0.988651, 0.108370,
		40.876652, 34.938812, 33.683392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.332336, 34.304752, 34.055882>,  <40.803822, 34.246754, 33.607533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.332336, 34.304752, 34.055882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164295, 34.664982, 34.100563>,  <41.063469, 34.881119, 34.127373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.164295, 34.664982, 34.100563>,  <41.332336, 34.304752, 34.055882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.164295, 34.664982, 34.100563> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006957, -0.119894, 0.992762,
		0.907448, 0.417843, 0.044103,
		-0.420106, 0.900573, 0.111705,
		41.038265, 34.935154, 34.134075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608570, 34.578987, 34.741199>,  <41.332336, 34.304752, 34.055882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608570, 34.578987, 34.741199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288578, 34.805592, 34.662113>,  <41.096584, 34.941555, 34.614662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.288578, 34.805592, 34.662113>,  <41.608570, 34.578987, 34.741199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.288578, 34.805592, 34.662113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157871, 0.119177, 0.980242,
		0.578884, 0.815388, -0.005902,
		-0.799981, 0.566515, -0.197716,
		41.048584, 34.975548, 34.602798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.757755, 35.072063, 35.152485>,  <41.608570, 34.578987, 34.741199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.757755, 35.072063, 35.152485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367302, 35.117096, 35.078190>,  <41.133030, 35.144115, 35.033615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.367302, 35.117096, 35.078190>,  <41.757755, 35.072063, 35.152485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.367302, 35.117096, 35.078190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180500, 0.055132, 0.982029,
		0.120795, 0.992112, -0.033496,
		-0.976129, 0.112578, -0.185736,
		41.074463, 35.150871, 35.022469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.503891, 35.677868, 35.570610>,  <41.757755, 35.072063, 35.152485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.503891, 35.677868, 35.570610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215736, 35.411911, 35.491653>,  <41.042843, 35.252338, 35.444279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.215736, 35.411911, 35.491653>,  <41.503891, 35.677868, 35.570610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.215736, 35.411911, 35.491653> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108487, -0.173083, 0.978914,
		-0.685037, 0.726610, 0.052554,
		-0.720385, -0.664891, -0.197395,
		40.999622, 35.212444, 35.432434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.015156, 35.704552, 36.072430>,  <41.503891, 35.677868, 35.570610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.015156, 35.704552, 36.072430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920647, 35.341129, 35.934620>,  <40.863941, 35.123077, 35.851933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.920647, 35.341129, 35.934620>,  <41.015156, 35.704552, 36.072430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.920647, 35.341129, 35.934620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332488, -0.257564, 0.907256,
		-0.913031, 0.328914, -0.241228,
		-0.236277, -0.908558, -0.344524,
		40.849762, 35.068562, 35.831264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458019, 36.232109, 36.463371>,  <41.015156, 35.704552, 36.072430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458019, 36.232109, 36.463371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166836, 36.480152, 36.346382>,  <40.992126, 36.628979, 36.276188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.166836, 36.480152, 36.346382>,  <41.458019, 36.232109, 36.463371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.166836, 36.480152, 36.346382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.640614, -0.463161, 0.612450,
		0.244323, 0.633202, 0.734413,
		-0.727956, 0.620111, -0.292477,
		40.948448, 36.666187, 36.258640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.122181, 36.330681, 37.010384>,  <41.458019, 36.232109, 36.463371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.122181, 36.330681, 37.010384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846291, 36.408585, 36.731430>,  <40.680756, 36.455326, 36.564056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.846291, 36.408585, 36.731430>,  <41.122181, 36.330681, 37.010384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.846291, 36.408585, 36.731430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691113, -0.464355, 0.553839,
		-0.215968, 0.863969, 0.454879,
		-0.689725, 0.194761, -0.697386,
		40.639374, 36.467014, 36.522213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.505878, 36.597885, 37.351460>,  <41.122181, 36.330681, 37.010384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.505878, 36.597885, 37.351460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378620, 36.429169, 37.011845>,  <40.302265, 36.327938, 36.808075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378620, 36.429169, 37.011845>,  <40.505878, 36.597885, 37.351460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378620, 36.429169, 37.011845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704516, -0.494084, 0.509448,
		-0.634381, 0.760243, -0.139970,
		-0.318147, -0.421796, -0.849041,
		40.283176, 36.302631, 36.757133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.798008, 36.541126, 37.458042>,  <40.505878, 36.597885, 37.351460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.798008, 36.541126, 37.458042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854908, 36.277138, 37.162964>,  <39.889046, 36.118744, 36.985916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.854908, 36.277138, 37.162964>,  <39.798008, 36.541126, 37.458042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.854908, 36.277138, 37.162964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.828945, -0.486720, 0.275598,
		-0.540940, 0.572309, -0.616317,
		0.142246, -0.659975, -0.737698,
		39.897583, 36.079144, 36.941654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163330, 36.503777, 37.052441>,  <39.798008, 36.541126, 37.458042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163330, 36.503777, 37.052441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370407, 36.164452, 37.007961>,  <39.494652, 35.960857, 36.981274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.370407, 36.164452, 37.007961>,  <39.163330, 36.503777, 37.052441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.370407, 36.164452, 37.007961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793845, -0.524737, 0.307347,
		-0.319077, -0.070834, -0.945078,
		0.517688, -0.848313, -0.111200,
		39.525715, 35.909958, 36.974602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696384, 36.125652, 36.790569>,  <39.163330, 36.503777, 37.052441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696384, 36.125652, 36.790569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977726, 35.867554, 36.909870>,  <39.146530, 35.712696, 36.981449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.977726, 35.867554, 36.909870>,  <38.696384, 36.125652, 36.790569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.977726, 35.867554, 36.909870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709685, -0.661296, 0.242969,
		0.040457, -0.382556, -0.923046,
		0.703356, -0.645242, 0.298249,
		39.188732, 35.673981, 36.999344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.572906, 35.561588, 36.299931>,  <38.696384, 36.125652, 36.790569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.572906, 35.561588, 36.299931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763206, 35.361706, 36.589470>,  <38.877384, 35.241776, 36.763195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.763206, 35.361706, 36.589470>,  <38.572906, 35.561588, 36.299931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.763206, 35.361706, 36.589470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783276, -0.615099, 0.090176,
		0.400179, -0.609876, -0.684038,
		0.475747, -0.499704, 0.723851,
		38.905930, 35.211796, 36.806625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515606, 34.767170, 36.155197>,  <38.572906, 35.561588, 36.299931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515606, 34.767170, 36.155197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560173, 34.872562, 36.538483>,  <38.586914, 34.935799, 36.768452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.560173, 34.872562, 36.538483>,  <38.515606, 34.767170, 36.155197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560173, 34.872562, 36.538483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829387, -0.506515, 0.235712,
		0.547452, -0.820988, 0.162094,
		0.111414, 0.263479, 0.958210,
		38.593597, 34.951607, 36.825947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.554176, 34.163513, 36.630924>,  <38.515606, 34.767170, 36.155197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.554176, 34.163513, 36.630924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420399, 34.468960, 36.851845>,  <38.340130, 34.652229, 36.984398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.420399, 34.468960, 36.851845>,  <38.554176, 34.163513, 36.630924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.420399, 34.468960, 36.851845> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.787471, -0.548388, 0.281354,
		0.517720, -0.340820, 0.784734,
		-0.334448, 0.763618, 0.552297,
		38.320065, 34.698044, 37.017532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364063, 34.002964, 37.349121>,  <38.554176, 34.163513, 36.630924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364063, 34.002964, 37.349121> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120567, 34.297729, 37.231556>,  <37.974468, 34.474590, 37.161015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.120567, 34.297729, 37.231556>,  <38.364063, 34.002964, 37.349121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.120567, 34.297729, 37.231556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793071, -0.555061, 0.250892,
		0.021746, 0.385824, 0.922316,
		-0.608741, 0.736918, -0.293915,
		37.937946, 34.518806, 37.143383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751766, 33.714226, 37.549553>,  <38.364063, 34.002964, 37.349121>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751766, 33.714226, 37.549553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642441, 34.063171, 37.387424>,  <37.576847, 34.272537, 37.290146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.642441, 34.063171, 37.387424>,  <37.751766, 33.714226, 37.549553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.642441, 34.063171, 37.387424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961865, -0.243127, 0.125319,
		0.010779, 0.424116, 0.905544,
		-0.273311, 0.872362, -0.405322,
		37.560448, 34.324879, 37.265827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.339382, 34.038742, 37.998501>,  <37.751766, 33.714226, 37.549553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.339382, 34.038742, 37.998501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231171, 34.217987, 37.657677>,  <37.166245, 34.325535, 37.453182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.231171, 34.217987, 37.657677>,  <37.339382, 34.038742, 37.998501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.231171, 34.217987, 37.657677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.961596, -0.168393, 0.216741,
		-0.046357, 0.877974, 0.476459,
		-0.270525, 0.448114, -0.852062,
		37.150013, 34.352421, 37.402058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.890961, 34.486794, 38.215961>,  <37.339382, 34.038742, 37.998501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.890961, 34.486794, 38.215961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822483, 34.414589, 37.828537>,  <36.781399, 34.371265, 37.596081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822483, 34.414589, 37.828537>,  <36.890961, 34.486794, 38.215961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822483, 34.414589, 37.828537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.985204, 0.023221, 0.169806,
		-0.008161, 0.983299, -0.181812,
		-0.171192, -0.180508, -0.968561,
		36.771126, 34.360435, 37.537968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533283, 35.096127, 37.900009>,  <36.890961, 34.486794, 38.215961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533283, 35.096127, 37.900009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434948, 34.758190, 37.709930>,  <36.375946, 34.555428, 37.595882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434948, 34.758190, 37.709930>,  <36.533283, 35.096127, 37.900009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434948, 34.758190, 37.709930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.966559, 0.176750, 0.185803,
		-0.072983, 0.504979, -0.860041,
		-0.245839, -0.844840, -0.475192,
		36.361195, 34.504738, 37.567371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993881, 35.292343, 37.345421>,  <36.533283, 35.096127, 37.900009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993881, 35.292343, 37.345421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932056, 34.901642, 37.404827>,  <35.894962, 34.667221, 37.440472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.932056, 34.901642, 37.404827>,  <35.993881, 35.292343, 37.345421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.932056, 34.901642, 37.404827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.975615, 0.174602, 0.133004,
		-0.155843, -0.124333, -0.979926,
		-0.154560, -0.976757, 0.148512,
		35.885689, 34.608616, 37.449379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.400684, 35.076859, 36.939774>,  <35.993881, 35.292343, 37.345421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.400684, 35.076859, 36.939774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455215, 34.822605, 37.243717>,  <35.487934, 34.670052, 37.426083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.455215, 34.822605, 37.243717>,  <35.400684, 35.076859, 36.939774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.455215, 34.822605, 37.243717> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.951569, 0.129327, 0.278911,
		-0.275555, -0.761081, -0.587218,
		0.136331, -0.635634, 0.759858,
		35.496113, 34.631916, 37.471676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.731697, 34.765499, 36.922867>,  <35.400684, 35.076859, 36.939774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.731697, 34.765499, 36.922867> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891525, 34.658443, 37.273571>,  <34.987423, 34.594212, 37.483994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.891525, 34.658443, 37.273571>,  <34.731697, 34.765499, 36.922867>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.891525, 34.658443, 37.273571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915197, -0.061701, 0.398257,
		-0.052486, -0.961546, -0.269584,
		0.399576, -0.267625, 0.876764,
		35.011398, 34.578152, 37.536598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200977, 34.400764, 37.285862>,  <34.731697, 34.765499, 36.922867>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200977, 34.400764, 37.285862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444622, 34.487995, 37.590866>,  <34.590809, 34.540333, 37.773869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.444622, 34.487995, 37.590866>,  <34.200977, 34.400764, 37.285862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.444622, 34.487995, 37.590866> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.792258, 0.123484, 0.597561,
		0.036156, -0.968088, 0.247989,
		0.609114, 0.218077, 0.762511,
		34.627357, 34.553417, 37.819618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.968220, 34.043705, 37.799412>,  <34.200977, 34.400764, 37.285862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.968220, 34.043705, 37.799412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159100, 34.343552, 37.982868>,  <34.273628, 34.523460, 38.092941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.159100, 34.343552, 37.982868>,  <33.968220, 34.043705, 37.799412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.159100, 34.343552, 37.982868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824275, 0.200828, 0.529376,
		0.304724, -0.630662, 0.713729,
		0.477194, 0.749622, 0.458642,
		34.302258, 34.568439, 38.120461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.987446, 33.868839, 38.523842>,  <33.968220, 34.043705, 37.799412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.987446, 33.868839, 38.523842> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990265, 34.258499, 38.433525>,  <33.991955, 34.492294, 38.379333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.990265, 34.258499, 38.433525>,  <33.987446, 33.868839, 38.523842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.990265, 34.258499, 38.433525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807266, 0.138800, 0.573634,
		0.590146, 0.178232, 0.787376,
		0.007047, 0.974150, -0.225793,
		33.992378, 34.550743, 38.365788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045204, 34.288635, 39.218193>,  <33.987446, 33.868839, 38.523842>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045204, 34.288635, 39.218193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883259, 34.488991, 38.912201>,  <33.786091, 34.609203, 38.728607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.883259, 34.488991, 38.912201>,  <34.045204, 34.288635, 39.218193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.883259, 34.488991, 38.912201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833297, 0.142303, 0.534196,
		0.376431, 0.853734, 0.359774,
		-0.404864, 0.500887, -0.764982,
		33.761799, 34.639256, 38.682705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875080, 34.951565, 39.502205>,  <34.045204, 34.288635, 39.218193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875080, 34.951565, 39.502205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655540, 34.864491, 39.179371>,  <33.523819, 34.812244, 38.985672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.655540, 34.864491, 39.179371>,  <33.875080, 34.951565, 39.502205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.655540, 34.864491, 39.179371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.833542, 0.215345, 0.508758,
		0.063049, 0.951965, -0.299644,
		-0.548847, -0.217689, -0.807081,
		33.490887, 34.799183, 38.937248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378422, 35.475151, 39.523182>,  <33.875080, 34.951565, 39.502205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378422, 35.475151, 39.523182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222382, 35.178501, 39.304893>,  <33.128757, 35.000511, 39.173920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.222382, 35.178501, 39.304893>,  <33.378422, 35.475151, 39.523182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.222382, 35.178501, 39.304893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.865754, 0.093628, 0.491634,
		-0.313515, 0.664245, -0.678591,
		-0.390101, -0.741628, -0.545719,
		33.105350, 34.956013, 39.141178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068741, 35.588543, 39.772369>,  <33.378422, 35.475151, 39.523182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068741, 35.588543, 39.772369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347900, 35.420506, 39.540348>,  <34.515396, 35.319683, 39.401134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.347900, 35.420506, 39.540348>,  <34.068741, 35.588543, 39.772369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.347900, 35.420506, 39.540348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472548, 0.338494, -0.813708,
		0.538173, 0.841990, 0.037724,
		0.697903, -0.420089, -0.580049,
		34.557270, 35.294479, 39.366333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.485088, 36.068924, 39.363014>,  <34.068741, 35.588543, 39.772369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.485088, 36.068924, 39.363014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352394, 35.724052, 39.209862>,  <34.272778, 35.517128, 39.117970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.352394, 35.724052, 39.209862>,  <34.485088, 36.068924, 39.363014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.352394, 35.724052, 39.209862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610805, 0.505604, -0.609329,
		0.718937, 0.031730, -0.694351,
		-0.331732, -0.862182, -0.382878,
		34.252872, 35.465397, 39.094997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.590630, 36.076721, 38.707565>,  <34.485088, 36.068924, 39.363014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.590630, 36.076721, 38.707565> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293068, 35.815693, 38.765209>,  <34.114532, 35.659077, 38.799797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.293068, 35.815693, 38.765209>,  <34.590630, 36.076721, 38.707565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.293068, 35.815693, 38.765209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558437, 0.488544, -0.670427,
		0.367094, -0.579208, -0.727846,
		-0.743902, -0.652566, 0.144110,
		34.069897, 35.619923, 38.808441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.997589, 35.439182, 38.687298>,  <34.590630, 36.076721, 38.707565>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.997589, 35.439182, 38.687298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781231, 35.136089, 38.541264>,  <34.651417, 34.954235, 38.453644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.781231, 35.136089, 38.541264>,  <34.997589, 35.439182, 38.687298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.781231, 35.136089, 38.541264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.808291, -0.348242, -0.474756,
		0.232599, -0.551884, 0.800826,
		-0.540891, -0.757728, -0.365082,
		34.618965, 34.908772, 38.431740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.310268, 34.813194, 38.883659>,  <34.997589, 35.439182, 38.687298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.310268, 34.813194, 38.883659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107983, 34.715153, 38.552799>,  <34.986610, 34.656326, 38.354282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.107983, 34.715153, 38.552799>,  <35.310268, 34.813194, 38.883659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.107983, 34.715153, 38.552799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.817930, -0.441087, -0.369368,
		-0.274312, -0.863345, 0.423542,
		-0.505711, -0.245106, -0.827151,
		34.956268, 34.641621, 38.304653>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518017, 34.157631, 38.671696>,  <35.310268, 34.813194, 38.883659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518017, 34.157631, 38.671696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375996, 34.325684, 38.337646>,  <35.290783, 34.426514, 38.137218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.375996, 34.325684, 38.337646>,  <35.518017, 34.157631, 38.671696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.375996, 34.325684, 38.337646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778560, -0.361609, -0.512916,
		-0.517480, -0.832304, -0.198707,
		-0.355048, 0.420129, -0.835124,
		35.269482, 34.451721, 38.087109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471886, 33.561577, 38.186352>,  <35.518017, 34.157631, 38.671696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471886, 33.561577, 38.186352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479496, 33.913132, 37.995689>,  <35.484062, 34.124065, 37.881294>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.479496, 33.913132, 37.995689>,  <35.471886, 33.561577, 38.186352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.479496, 33.913132, 37.995689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.756545, -0.324338, -0.567842,
		-0.653665, -0.349808, -0.671086,
		0.019023, 0.878885, -0.476654,
		35.485203, 34.176796, 37.852692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838406, 33.316826, 37.626144>,  <35.471886, 33.561577, 38.186352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838406, 33.316826, 37.626144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860695, 33.714916, 37.594078>,  <35.874069, 33.953770, 37.574837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.860695, 33.714916, 37.594078>,  <35.838406, 33.316826, 37.626144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.860695, 33.714916, 37.594078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901039, -0.084714, -0.425385,
		-0.430144, -0.048528, -0.901455,
		0.055723, 0.995223, -0.080165,
		35.877411, 34.013485, 37.570030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939831, 33.512119, 36.821571>,  <35.838406, 33.316826, 37.626144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939831, 33.512119, 36.821571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078915, 33.816311, 37.040939>,  <36.162365, 33.998825, 37.172562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.078915, 33.816311, 37.040939>,  <35.939831, 33.512119, 36.821571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.078915, 33.816311, 37.040939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.894997, -0.094886, -0.435863,
		-0.279428, 0.642391, -0.713620,
		0.347707, 0.760481, 0.548424,
		36.183228, 34.044456, 37.205467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282795, 34.039276, 36.402508>,  <35.939831, 33.512119, 36.821571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282795, 34.039276, 36.402508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457546, 34.082653, 36.759693>,  <36.562397, 34.108681, 36.974003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.457546, 34.082653, 36.759693>,  <36.282795, 34.039276, 36.402508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457546, 34.082653, 36.759693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.897877, 0.007412, -0.440183,
		-0.054355, 0.994075, -0.094134,
		0.436877, 0.108447, 0.892960,
		36.588608, 34.115189, 37.027580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.847591, 34.408825, 36.278248>,  <36.282795, 34.039276, 36.402508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.847591, 34.408825, 36.278248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965553, 34.209541, 36.604393>,  <37.036331, 34.089970, 36.800079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.965553, 34.209541, 36.604393>,  <36.847591, 34.408825, 36.278248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965553, 34.209541, 36.604393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927178, -0.057110, -0.370243,
		0.231025, 0.865172, 0.445089,
		0.294905, -0.498212, 0.815362,
		37.054024, 34.060078, 36.849003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885971, 34.697392, 36.883720>,  <36.847591, 34.408825, 36.278248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.885971, 34.697392, 36.883720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963463, 34.691490, 37.276096>,  <37.009956, 34.687950, 37.511524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.963463, 34.691490, 37.276096>,  <36.885971, 34.697392, 36.883720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.963463, 34.691490, 37.276096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.931569, 0.316319, -0.179222,
		-0.307648, 0.948538, 0.075022,
		0.193730, -0.014750, 0.980944,
		37.021584, 34.687065, 37.570381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.261524, 35.337326, 37.019985>,  <36.885971, 34.697392, 36.883720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.261524, 35.337326, 37.019985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343605, 35.085320, 37.319580>,  <37.392853, 34.934116, 37.499336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.343605, 35.085320, 37.319580>,  <37.261524, 35.337326, 37.019985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343605, 35.085320, 37.319580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.967419, 0.246524, -0.057680,
		-0.148304, 0.736418, 0.660072,
		0.205200, -0.630012, 0.748985,
		37.405167, 34.896317, 37.544277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.579323, 35.578465, 37.671204>,  <37.261524, 35.337326, 37.019985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.579323, 35.578465, 37.671204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711754, 35.208824, 37.594852>,  <37.791210, 34.987041, 37.549042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.711754, 35.208824, 37.594852>,  <37.579323, 35.578465, 37.671204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.711754, 35.208824, 37.594852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.932052, 0.351818, -0.086617,
		0.147197, -0.149232, 0.977785,
		0.331076, -0.924096, -0.190879,
		37.811077, 34.931595, 37.537590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.222107, 35.482517, 38.001144>,  <37.579323, 35.578465, 37.671204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.222107, 35.482517, 38.001144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238544, 35.203102, 37.715389>,  <38.248409, 35.035454, 37.543938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.238544, 35.203102, 37.715389>,  <38.222107, 35.482517, 38.001144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.238544, 35.203102, 37.715389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.946373, 0.256528, -0.196397,
		0.320452, -0.668006, 0.671623,
		0.041096, -0.698542, -0.714388,
		38.250874, 34.993538, 37.501072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794643, 35.090340, 38.141010>,  <38.222107, 35.482517, 38.001144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794643, 35.090340, 38.141010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749447, 35.047592, 37.745876>,  <38.722328, 35.021946, 37.508797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749447, 35.047592, 37.745876>,  <38.794643, 35.090340, 38.141010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749447, 35.047592, 37.745876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962789, 0.233870, -0.135431,
		0.245497, -0.966377, 0.076462,
		-0.112995, -0.106865, -0.987832,
		38.715549, 35.015533, 37.449528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.474144, 34.762066, 37.819653>,  <38.794643, 35.090340, 38.141010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.474144, 34.762066, 37.819653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299522, 34.915817, 37.494282>,  <39.194748, 35.008068, 37.299057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.299522, 34.915817, 37.494282>,  <39.474144, 34.762066, 37.819653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.299522, 34.915817, 37.494282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.872561, 0.401198, -0.278706,
		0.219218, -0.831439, -0.510541,
		-0.436555, 0.384381, -0.813432,
		39.168556, 35.031132, 37.250252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.986507, 34.774418, 37.383152>,  <39.474144, 34.762066, 37.819653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.986507, 34.774418, 37.383152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719574, 35.021854, 37.217258>,  <39.559414, 35.170319, 37.117722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.719574, 35.021854, 37.217258>,  <39.986507, 34.774418, 37.383152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719574, 35.021854, 37.217258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743240, 0.517646, -0.423835,
		-0.047499, -0.591085, -0.805209,
		-0.667336, 0.618596, -0.414731,
		39.519375, 35.207432, 37.092838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.162941, 34.823524, 36.669239>,  <39.986507, 34.774418, 37.383152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.162941, 34.823524, 36.669239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976318, 35.160702, 36.776402>,  <39.864346, 35.363007, 36.840698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.976318, 35.160702, 36.776402>,  <40.162941, 34.823524, 36.669239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976318, 35.160702, 36.776402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.718603, 0.537846, -0.440830,
		-0.515685, -0.013157, -0.856678,
		-0.466561, 0.842941, 0.267904,
		39.836349, 35.413586, 36.856773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.224758, 35.206146, 36.084167>,  <40.162941, 34.823524, 36.669239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.224758, 35.206146, 36.084167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133007, 35.493122, 36.347279>,  <40.077957, 35.665306, 36.505146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133007, 35.493122, 36.347279>,  <40.224758, 35.206146, 36.084167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133007, 35.493122, 36.347279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499681, 0.666741, -0.552969,
		-0.835286, 0.201837, -0.511428,
		-0.229380, 0.717439, 0.657774,
		40.064194, 35.708355, 36.544609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.867496, 35.687366, 35.732182>,  <40.224758, 35.206146, 36.084167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.867496, 35.687366, 35.732182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997433, 35.891144, 36.050915>,  <40.075394, 36.013412, 36.242153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.997433, 35.891144, 36.050915>,  <39.867496, 35.687366, 35.732182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997433, 35.891144, 36.050915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508499, 0.616310, -0.601325,
		-0.797440, 0.600521, -0.058853,
		0.324836, 0.509447, 0.796834,
		40.094883, 36.043980, 36.289967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.710217, 36.445770, 35.679615>,  <39.867496, 35.687366, 35.732182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.710217, 36.445770, 35.679615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018013, 36.435020, 35.934853>,  <40.202690, 36.428570, 36.087994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.018013, 36.435020, 35.934853>,  <39.710217, 36.445770, 35.679615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018013, 36.435020, 35.934853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538840, 0.563652, -0.626057,
		-0.342835, 0.825575, 0.448208,
		0.769490, -0.026878, 0.638093,
		40.248859, 36.426956, 36.126282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.846088, 37.127678, 35.755981>,  <39.710217, 36.445770, 35.679615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.846088, 37.127678, 35.755981> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170120, 36.905464, 35.830975>,  <40.364540, 36.772133, 35.875969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.170120, 36.905464, 35.830975>,  <39.846088, 37.127678, 35.755981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.170120, 36.905464, 35.830975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549832, 0.608740, -0.571945,
		0.203611, 0.566403, 0.798580,
		0.810079, -0.555539, 0.187480,
		40.413143, 36.738804, 35.887218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432365, 37.495335, 36.093895>,  <39.846088, 37.127678, 35.755981>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432365, 37.495335, 36.093895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581734, 37.180691, 35.897202>,  <40.671356, 36.991905, 35.779186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.581734, 37.180691, 35.897202>,  <40.432365, 37.495335, 36.093895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.581734, 37.180691, 35.897202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420083, 0.616005, -0.666385,
		0.827095, 0.042273, 0.560470,
		0.373422, -0.786607, -0.491736,
		40.693760, 36.944710, 35.749680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.254185, 37.459255, 36.000801>,  <40.432365, 37.495335, 36.093895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.254185, 37.459255, 36.000801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052345, 37.271305, 35.711082>,  <40.931244, 37.158535, 35.537251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.052345, 37.271305, 35.711082>,  <41.254185, 37.459255, 36.000801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.052345, 37.271305, 35.711082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477739, 0.546823, -0.687568,
		0.719130, -0.692969, -0.051449,
		-0.504597, -0.469872, -0.724295,
		40.900967, 37.130344, 35.493793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.717049, 37.148529, 35.421017>,  <41.254185, 37.459255, 36.000801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.717049, 37.148529, 35.421017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349266, 37.275753, 35.328548>,  <41.128597, 37.352085, 35.273067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.349266, 37.275753, 35.328548>,  <41.717049, 37.148529, 35.421017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.349266, 37.275753, 35.328548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391418, 0.684648, -0.614857,
		-0.037290, -0.655818, -0.753997,
		-0.919457, 0.318056, -0.231168,
		41.073429, 37.371170, 35.259197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.640697, 37.199062, 34.691360>,  <41.717049, 37.148529, 35.421017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.640697, 37.199062, 34.691360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378662, 37.439617, 34.874313>,  <41.221439, 37.583950, 34.984085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.378662, 37.439617, 34.874313>,  <41.640697, 37.199062, 34.691360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.378662, 37.439617, 34.874313> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333139, 0.773243, -0.539550,
		-0.678141, -0.201084, -0.706888,
		-0.655091, 0.601383, 0.457378,
		41.182137, 37.620033, 35.011528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.054680, 36.906258, 34.132046>,  <41.640697, 37.199062, 34.691360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.054680, 36.906258, 34.132046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225143, 37.217773, 33.947926>,  <42.327423, 37.404682, 33.837452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.225143, 37.217773, 33.947926>,  <42.054680, 36.906258, 34.132046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.225143, 37.217773, 33.947926> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.774369, -0.577093, -0.259454,
		-0.467696, -0.245873, -0.849003,
		0.426161, 0.778788, -0.460301,
		42.352993, 37.451408, 33.809834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.281166, 36.713692, 33.497791>,  <42.054680, 36.906258, 34.132046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.281166, 36.713692, 33.497791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485077, 36.960690, 33.737404>,  <42.607422, 37.108887, 33.881172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.485077, 36.960690, 33.737404>,  <42.281166, 36.713692, 33.497791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.485077, 36.960690, 33.737404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778711, -0.627174, -0.016179,
		0.365704, 0.474717, -0.800566,
		0.509774, 0.617493, 0.599027,
		42.638008, 37.145939, 33.917110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.978844, 37.049583, 33.331146>,  <42.281166, 36.713692, 33.497791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.978844, 37.049583, 33.331146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001457, 37.013142, 33.728840>,  <43.015026, 36.991276, 33.967457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001457, 37.013142, 33.728840>,  <42.978844, 37.049583, 33.331146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001457, 37.013142, 33.728840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.805956, -0.583587, -0.099303,
		0.589270, 0.806924, 0.040439,
		0.056530, -0.091108, 0.994235,
		43.018417, 36.985809, 34.027111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.543423, 36.661377, 33.278770>,  <42.978844, 37.049583, 33.331146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.543423, 36.661377, 33.278770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444889, 36.655609, 33.666401>,  <43.385769, 36.652149, 33.898979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.444889, 36.655609, 33.666401>,  <43.543423, 36.661377, 33.278770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.444889, 36.655609, 33.666401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810484, -0.551349, 0.197812,
		0.531447, 0.834150, 0.147503,
		-0.246331, -0.014422, 0.969079,
		43.370991, 36.651283, 33.957123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.190525, 36.822117, 33.728195>,  <43.543423, 36.661377, 33.278770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.190525, 36.822117, 33.728195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896240, 36.595127, 33.876091>,  <43.719669, 36.458935, 33.964828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.896240, 36.595127, 33.876091>,  <44.190525, 36.822117, 33.728195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.896240, 36.595127, 33.876091> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650532, -0.743999, 0.152557,
		0.188510, 0.352763, 0.916527,
		-0.735712, -0.567472, 0.369735,
		43.675526, 36.424885, 33.987011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.416359, 36.388618, 34.293961>,  <44.190525, 36.822117, 33.728195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.416359, 36.388618, 34.293961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090096, 36.212276, 34.144108>,  <43.894337, 36.106472, 34.054195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.090096, 36.212276, 34.144108>,  <44.416359, 36.388618, 34.293961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.090096, 36.212276, 34.144108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463256, -0.885590, 0.033535,
		-0.346557, -0.146200, 0.926565,
		-0.815654, -0.440858, -0.374636,
		43.845398, 36.080017, 34.031715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.372070, 35.690926, 34.553814>,  <44.416359, 36.388618, 34.293961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.372070, 35.690926, 34.553814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135616, 35.657909, 34.232880>,  <43.993744, 35.638100, 34.040318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.135616, 35.657909, 34.232880>,  <44.372070, 35.690926, 34.553814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.135616, 35.657909, 34.232880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250012, -0.964506, -0.084981,
		-0.766847, -0.250829, 0.590789,
		-0.591135, -0.082537, -0.802339,
		43.958275, 35.633148, 33.992180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.300026, 35.101318, 34.279701>,  <44.372070, 35.690926, 34.553814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.300026, 35.101318, 34.279701> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486893, 34.802322, 34.090805>,  <44.599014, 34.622925, 33.977467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.486893, 34.802322, 34.090805>,  <44.300026, 35.101318, 34.279701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.486893, 34.802322, 34.090805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824885, 0.560752, -0.071568,
		0.318305, -0.356109, 0.878560,
		0.467169, -0.747491, -0.472239,
		44.627045, 34.578075, 33.949135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.963501, 34.817535, 34.577198>,  <44.300026, 35.101318, 34.279701>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.963501, 34.817535, 34.577198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973789, 34.792747, 34.178101>,  <44.979961, 34.777874, 33.938641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.973789, 34.792747, 34.178101>,  <44.963501, 34.817535, 34.577198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.973789, 34.792747, 34.178101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821457, 0.570093, -0.014233,
		0.569690, -0.819240, 0.065567,
		0.025719, -0.061969, -0.997747,
		44.981506, 34.774158, 33.878777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.580959, 34.529907, 34.260410>,  <44.963501, 34.817535, 34.577198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.580959, 34.529907, 34.260410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416489, 34.769737, 33.985764>,  <45.317806, 34.913635, 33.820976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.416489, 34.769737, 33.985764>,  <45.580959, 34.529907, 34.260410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.416489, 34.769737, 33.985764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.895695, 0.405645, -0.182160,
		0.169306, -0.689902, -0.703826,
		-0.411176, 0.599573, -0.686620,
		45.293137, 34.949608, 33.779778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966774, 34.454456, 33.494366>,  <45.580959, 34.529907, 34.260410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966774, 34.454456, 33.494366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789371, 34.802856, 33.578899>,  <45.682930, 35.011898, 33.629620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.789371, 34.802856, 33.578899>,  <45.966774, 34.454456, 33.494366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.789371, 34.802856, 33.578899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.818989, 0.489619, -0.299215,
		-0.364090, 0.040379, -0.930488,
		-0.443503, 0.871001, 0.211336,
		45.656322, 35.064156, 33.642300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.095501, 35.007809, 33.034561>,  <45.966774, 34.454456, 33.494366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.095501, 35.007809, 33.034561> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979641, 35.206783, 33.361649>,  <45.910126, 35.326168, 33.557899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.979641, 35.206783, 33.361649>,  <46.095501, 35.007809, 33.034561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.979641, 35.206783, 33.361649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827510, 0.559463, -0.047218,
		-0.480971, 0.662994, -0.573678,
		-0.289646, 0.497434, 0.817719,
		45.892746, 35.356014, 33.606964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.643032, 34.591782, 33.312618>,  <46.095501, 35.007809, 33.034561>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.643032, 34.591782, 33.312618> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004860, 34.679161, 33.459064>,  <47.221954, 34.731586, 33.546932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.004860, 34.679161, 33.459064>,  <46.643032, 34.591782, 33.312618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.004860, 34.679161, 33.459064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418543, 0.291636, 0.860099,
		0.081111, -0.931252, 0.355233,
		0.904568, 0.218444, 0.366114,
		47.276230, 34.744694, 33.568897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697716, 34.240536, 33.956779>,  <46.643032, 34.591782, 33.312618>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697716, 34.240536, 33.956779> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920551, 34.572411, 33.942509>,  <47.054253, 34.771534, 33.933949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.920551, 34.572411, 33.942509>,  <46.697716, 34.240536, 33.956779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.920551, 34.572411, 33.942509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441936, 0.332559, 0.833125,
		0.703094, -0.448361, 0.551933,
		0.557091, 0.829685, -0.035674,
		47.087677, 34.821316, 33.931808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.265610, 34.122578, 34.580719>,  <46.697716, 34.240536, 33.956779>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.265610, 34.122578, 34.580719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128445, 34.390526, 34.844139>,  <46.046146, 34.551296, 35.002190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.128445, 34.390526, 34.844139>,  <46.265610, 34.122578, 34.580719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.128445, 34.390526, 34.844139> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516244, -0.451308, 0.727883,
		0.784796, 0.589569, -0.191060,
		-0.342910, 0.669873, 0.658546,
		46.025570, 34.591488, 35.041702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.740940, 34.670910, 34.872105>,  <46.265610, 34.122578, 34.580719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.740940, 34.670910, 34.872105> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466545, 34.563339, 35.142540>,  <46.301907, 34.498798, 35.304802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.466545, 34.563339, 35.142540>,  <46.740940, 34.670910, 34.872105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.466545, 34.563339, 35.142540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.721521, -0.371371, 0.584373,
		0.093928, 0.888687, 0.448791,
		-0.685992, -0.268924, 0.676088,
		46.260746, 34.482662, 35.345367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.510502, 34.838322, 34.748058>,  <46.740940, 34.670910, 34.872105>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.510502, 34.838322, 34.748058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778107, 34.930202, 35.030807>,  <47.938667, 34.985332, 35.200455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.778107, 34.930202, 35.030807>,  <47.510502, 34.838322, 34.748058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.778107, 34.930202, 35.030807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112488, 0.908799, -0.401785,
		-0.734693, 0.348312, 0.582155,
		0.669008, 0.229703, 0.706869,
		47.978809, 34.999115, 35.242867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<34.920479, 32.825279, 27.932432> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593864, 33.056110, 27.938873>,  <34.397896, 33.194607, 27.942738>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.593864, 33.056110, 27.938873>,  <34.920479, 32.825279, 27.932432>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.593864, 33.056110, 27.938873> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315282, 0.422391, 0.849814,
		0.483604, 0.698978, -0.526837,
		-0.816532, 0.577075, 0.016105,
		34.348904, 33.229233, 27.943705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.099785, 33.430866, 28.209307>,  <34.920479, 32.825279, 27.932432>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.099785, 33.430866, 28.209307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702202, 33.449421, 28.249090>,  <34.463650, 33.460556, 28.272961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.702202, 33.449421, 28.249090>,  <35.099785, 33.430866, 28.209307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.702202, 33.449421, 28.249090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109532, 0.362944, 0.925351,
		0.006831, 0.930655, -0.365833,
		-0.993960, 0.046391, 0.099458,
		34.404015, 33.463337, 28.278927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.993683, 34.068092, 28.454866>,  <35.099785, 33.430866, 28.209307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.993683, 34.068092, 28.454866> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666847, 33.858917, 28.551949>,  <34.470745, 33.733414, 28.610197>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.666847, 33.858917, 28.551949>,  <34.993683, 34.068092, 28.454866>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666847, 33.858917, 28.551949> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.055801, 0.490747, 0.869514,
		-0.573805, 0.696927, -0.430164,
		-0.817088, -0.522935, 0.242704,
		34.421722, 33.702038, 28.624760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.602978, 34.563648, 28.812576>,  <34.993683, 34.068092, 28.454866>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.602978, 34.563648, 28.812576> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436111, 34.213230, 28.909336>,  <34.335991, 34.002979, 28.967392>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.436111, 34.213230, 28.909336>,  <34.602978, 34.563648, 28.812576>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.436111, 34.213230, 28.909336> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291667, 0.381134, 0.877307,
		-0.860758, 0.295428, -0.414510,
		-0.417164, -0.876048, 0.241897,
		34.310963, 33.950417, 28.981905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.933567, 34.680302, 29.111935>,  <34.602978, 34.563648, 28.812576>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.933567, 34.680302, 29.111935> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.070374, 34.335087, 29.260630>,  <34.152458, 34.127956, 29.349848>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.070374, 34.335087, 29.260630>,  <33.933567, 34.680302, 29.111935>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.070374, 34.335087, 29.260630> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.315782, 0.267033, 0.910481,
		-0.885047, -0.428785, -0.181204,
		0.342013, -0.863039, 0.371739,
		34.172977, 34.076176, 29.372152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.493225, 34.505371, 29.725971>,  <33.933567, 34.680302, 29.111935>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.493225, 34.505371, 29.725971> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.803207, 34.256512, 29.770472>,  <33.989197, 34.107197, 29.797171>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.803207, 34.256512, 29.770472>,  <33.493225, 34.505371, 29.725971>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803207, 34.256512, 29.770472> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.115974, 0.033052, 0.992702,
		-0.621284, -0.782202, -0.046540,
		0.774956, -0.622147, 0.111250,
		34.035694, 34.069866, 29.803846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444126, 34.137753, 30.401466>,  <33.493225, 34.505371, 29.725971>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444126, 34.137753, 30.401466> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831295, 34.092125, 30.311920>,  <34.063595, 34.064751, 30.258192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.831295, 34.092125, 30.311920>,  <33.444126, 34.137753, 30.401466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.831295, 34.092125, 30.311920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235006, 0.095840, 0.967257,
		-0.088878, -0.988839, 0.119573,
		0.967921, -0.114068, -0.223865,
		34.121670, 34.057903, 30.244761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.649837, 33.586807, 30.796669>,  <33.444126, 34.137753, 30.401466>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.649837, 33.586807, 30.796669> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967651, 33.806320, 30.692705>,  <34.158340, 33.938030, 30.630327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.967651, 33.806320, 30.692705>,  <33.649837, 33.586807, 30.796669>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967651, 33.806320, 30.692705> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352880, -0.068963, 0.933124,
		0.494161, -0.833113, -0.248449,
		0.794532, 0.548786, -0.259910,
		34.206013, 33.970955, 30.614733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.153336, 33.365795, 31.243069>,  <33.649837, 33.586807, 30.796669>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.153336, 33.365795, 31.243069> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.337543, 33.685879, 31.089401>,  <34.448067, 33.877930, 30.997202>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.337543, 33.685879, 31.089401>,  <34.153336, 33.365795, 31.243069>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.337543, 33.685879, 31.089401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618879, 0.020801, 0.785211,
		0.636325, -0.599358, -0.485654,
		0.460521, 0.800211, -0.384167,
		34.475700, 33.925941, 30.974152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886848, 33.246288, 31.367737>,  <34.153336, 33.365795, 31.243069>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886848, 33.246288, 31.367737> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841640, 33.638130, 31.301283>,  <34.814514, 33.873234, 31.261410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.841640, 33.638130, 31.301283>,  <34.886848, 33.246288, 31.367737>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.841640, 33.638130, 31.301283> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656939, 0.199119, 0.727174,
		0.745424, -0.026955, -0.666045,
		-0.113021, 0.979604, -0.166136,
		34.807735, 33.932011, 31.251442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531960, 33.627682, 31.190922>,  <34.886848, 33.246288, 31.367737>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531960, 33.627682, 31.190922> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307510, 33.920300, 31.345831>,  <35.172840, 34.095871, 31.438776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.307510, 33.920300, 31.345831>,  <35.531960, 33.627682, 31.190922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.307510, 33.920300, 31.345831> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775667, 0.301406, 0.554522,
		0.288934, 0.611548, -0.736564,
		-0.561122, 0.731549, 0.387271,
		35.139175, 34.139763, 31.462011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.026066, 34.205715, 31.236214>,  <35.531960, 33.627682, 31.190922>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.026066, 34.205715, 31.236214> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.720089, 34.299114, 31.476330>,  <35.536503, 34.355152, 31.620399>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.720089, 34.299114, 31.476330>,  <36.026066, 34.205715, 31.236214>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720089, 34.299114, 31.476330> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.640647, 0.179408, 0.746581,
		0.066627, 0.955663, -0.286824,
		-0.764939, 0.233496, 0.600290,
		35.490608, 34.369164, 31.656416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.406136, 34.471405, 31.667582>,  <36.026066, 34.205715, 31.236214>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.406136, 34.471405, 31.667582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050533, 34.501190, 31.848299>,  <35.837170, 34.519062, 31.956730>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.050533, 34.501190, 31.848299>,  <36.406136, 34.471405, 31.667582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.050533, 34.501190, 31.848299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455760, 0.238890, 0.857446,
		-0.044084, 0.968188, -0.246312,
		-0.889010, 0.074459, 0.451793,
		35.783829, 34.523529, 31.983837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.362473, 35.105061, 31.881872>,  <36.406136, 34.471405, 31.667582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.362473, 35.105061, 31.881872> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.127392, 34.889027, 32.122841>,  <35.986343, 34.759407, 32.267422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.127392, 34.889027, 32.122841>,  <36.362473, 35.105061, 31.881872>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.127392, 34.889027, 32.122841> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568604, 0.253993, 0.782418,
		-0.575584, 0.802368, 0.157823,
		-0.587701, -0.540086, 0.602424,
		35.951080, 34.727001, 32.303570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.247559, 35.514725, 32.550266>,  <36.362473, 35.105061, 31.881872>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.247559, 35.514725, 32.550266> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158253, 35.138142, 32.651314>,  <36.104671, 34.912193, 32.711945>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.158253, 35.138142, 32.651314>,  <36.247559, 35.514725, 32.550266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.158253, 35.138142, 32.651314> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246465, 0.196219, 0.949080,
		-0.943085, 0.274157, 0.188227,
		-0.223263, -0.941454, 0.252621,
		36.091274, 34.855705, 32.727100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806423, 35.528847, 33.145088>,  <36.247559, 35.514725, 32.550266>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806423, 35.528847, 33.145088> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945389, 35.153839, 33.137474>,  <36.028767, 34.928833, 33.132904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.945389, 35.153839, 33.137474>,  <35.806423, 35.528847, 33.145088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.945389, 35.153839, 33.137474> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019323, -0.013138, 0.999727,
		-0.937513, -0.347687, 0.013552,
		0.347414, -0.937519, -0.019036,
		36.049614, 34.872585, 33.131763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.424137, 35.134392, 33.663490>,  <35.806423, 35.528847, 33.145088>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.424137, 35.134392, 33.663490> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756256, 34.917389, 33.612427>,  <35.955528, 34.787189, 33.581791>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.756256, 34.917389, 33.612427>,  <35.424137, 35.134392, 33.663490>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.756256, 34.917389, 33.612427> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069215, -0.126902, 0.989497,
		-0.553007, -0.830412, -0.067817,
		0.830296, -0.542505, -0.127655,
		36.005344, 34.754639, 33.574131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.408234, 34.594959, 34.174236>,  <35.424137, 35.134392, 33.663490>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.408234, 34.594959, 34.174236> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793392, 34.641670, 34.076912>,  <36.024487, 34.669697, 34.018517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.793392, 34.641670, 34.076912>,  <35.408234, 34.594959, 34.174236>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.793392, 34.641670, 34.076912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245933, -0.008357, 0.969251,
		0.111152, -0.993123, -0.036766,
		0.962892, 0.116777, -0.243313,
		36.082260, 34.676704, 34.003918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702045, 34.188438, 34.637974>,  <35.408234, 34.594959, 34.174236>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702045, 34.188438, 34.637974> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010544, 34.397572, 34.492737>,  <36.195641, 34.523052, 34.405594>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.010544, 34.397572, 34.492737>,  <35.702045, 34.188438, 34.637974>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.010544, 34.397572, 34.492737> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359221, 0.113411, 0.926336,
		0.525495, -0.844859, -0.100344,
		0.771243, 0.522830, -0.363088,
		36.241917, 34.554420, 34.383812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.312691, 33.931980, 35.097782>,  <35.702045, 34.188438, 34.637974>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.312691, 33.931980, 35.097782> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459801, 34.269447, 34.941338>,  <36.548065, 34.471928, 34.847469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.459801, 34.269447, 34.941338>,  <36.312691, 33.931980, 35.097782>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.459801, 34.269447, 34.941338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350744, 0.263676, 0.898584,
		0.861232, -0.467656, -0.198938,
		0.367774, 0.843666, -0.391114,
		36.570133, 34.522549, 34.824005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.097416, 34.113220, 35.124039>,  <36.312691, 33.931980, 35.097782>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.097416, 34.113220, 35.124039> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922729, 34.472263, 35.147930>,  <36.817917, 34.687691, 35.162266>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.922729, 34.472263, 35.147930>,  <37.097416, 34.113220, 35.124039>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922729, 34.472263, 35.147930> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569219, 0.224311, 0.790996,
		0.696609, 0.379443, -0.608899,
		-0.436721, 0.897612, 0.059730,
		36.791714, 34.741547, 35.165848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.886478, 34.224884, 35.298416>,  <37.097416, 34.113220, 35.124039>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.886478, 34.224884, 35.298416> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267200, 34.141357, 35.388264>,  <38.495636, 34.091240, 35.442173>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.267200, 34.141357, 35.388264>,  <37.886478, 34.224884, 35.298416>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.267200, 34.141357, 35.388264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136648, -0.366940, -0.920154,
		0.274566, 0.906504, -0.320722,
		0.951809, -0.208817, 0.224621,
		38.552742, 34.078712, 35.455650>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.168747, 34.357201, 34.663410>,  <37.886478, 34.224884, 35.298416>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.168747, 34.357201, 34.663410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445213, 34.145172, 34.859909>,  <38.611092, 34.017956, 34.977810>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.445213, 34.145172, 34.859909>,  <38.168747, 34.357201, 34.663410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.445213, 34.145172, 34.859909> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073667, -0.624526, -0.777522,
		0.718936, 0.573582, -0.392600,
		0.691162, -0.530067, 0.491249,
		38.652561, 33.986153, 35.007282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.709999, 34.299755, 34.192390>,  <38.168747, 34.357201, 34.663410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.709999, 34.299755, 34.192390> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693230, 33.993118, 34.448692>,  <38.683167, 33.809135, 34.602474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.693230, 33.993118, 34.448692>,  <38.709999, 34.299755, 34.192390>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693230, 33.993118, 34.448692> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040610, -0.639485, -0.767730,
		0.998295, -0.058210, -0.004319,
		-0.041928, -0.766597, 0.640759,
		38.680653, 33.763138, 34.640919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361664, 33.906891, 34.029106>,  <38.709999, 34.299755, 34.192390>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361664, 33.906891, 34.029106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057320, 33.708454, 34.196430>,  <38.874714, 33.589394, 34.296825>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.057320, 33.708454, 34.196430>,  <39.361664, 33.906891, 34.029106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.057320, 33.708454, 34.196430> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125584, -0.519878, -0.844959,
		0.636649, -0.695428, 0.333253,
		-0.760859, -0.496091, 0.418315,
		38.829063, 33.559628, 34.321926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392265, 33.278584, 33.717754>,  <39.361664, 33.906891, 34.029106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392265, 33.278584, 33.717754> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031040, 33.229637, 33.882435>,  <38.814304, 33.200268, 33.981243>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.031040, 33.229637, 33.882435>,  <39.392265, 33.278584, 33.717754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.031040, 33.229637, 33.882435> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245777, -0.638866, -0.729003,
		0.352230, -0.759524, 0.546862,
		-0.903066, -0.122370, 0.411701,
		38.760120, 33.192924, 34.005943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.172974, 32.496662, 33.756859>,  <39.392265, 33.278584, 33.717754>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.172974, 32.496662, 33.756859> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842419, 32.721561, 33.769207>,  <38.644085, 32.856503, 33.776615>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842419, 32.721561, 33.769207>,  <39.172974, 32.496662, 33.756859>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842419, 32.721561, 33.769207> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447273, -0.622117, -0.642586,
		-0.342091, -0.544833, 0.765592,
		-0.826390, 0.562252, 0.030869,
		38.594501, 32.890236, 33.778469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486351, 31.996126, 33.897713>,  <39.172974, 32.496662, 33.756859>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486351, 31.996126, 33.897713> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409367, 32.348564, 33.724907>,  <38.363178, 32.560028, 33.621223>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.409367, 32.348564, 33.724907>,  <38.486351, 31.996126, 33.897713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.409367, 32.348564, 33.724907> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458024, -0.470002, -0.754528,
		-0.867856, 0.052656, 0.494018,
		-0.192459, 0.881094, -0.432012,
		38.351627, 32.612892, 33.595303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.855762, 31.829834, 33.583984>,  <38.486351, 31.996126, 33.897713>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.855762, 31.829834, 33.583984> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985073, 32.170223, 33.418415>,  <38.062660, 32.374458, 33.319073>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.985073, 32.170223, 33.418415>,  <37.855762, 31.829834, 33.583984>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.985073, 32.170223, 33.418415> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306931, -0.319476, -0.896509,
		-0.895145, 0.416870, 0.157909,
		0.323280, 0.850973, -0.413927,
		38.082058, 32.425514, 33.294235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.335026, 32.268776, 33.180244>,  <37.855762, 31.829834, 33.583984>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.335026, 32.268776, 33.180244> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690273, 32.372566, 33.028496>,  <37.903419, 32.434841, 32.937447>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.690273, 32.372566, 33.028496>,  <37.335026, 32.268776, 33.180244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690273, 32.372566, 33.028496> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270887, -0.371311, -0.888115,
		-0.371311, 0.891515, -0.259478,
		0.888115, 0.259478, -0.379372,
		37.956707, 32.450409, 32.914684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.068356, 32.680920, 32.521133>,  <37.335026, 32.268776, 33.180244>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.068356, 32.680920, 32.521133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451092, 32.576225, 32.470619>,  <37.680733, 32.513409, 32.440311>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.451092, 32.576225, 32.470619>,  <37.068356, 32.680920, 32.521133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.451092, 32.576225, 32.470619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191995, -0.243140, -0.950800,
		0.218154, 0.934012, -0.282898,
		0.956842, -0.261735, -0.126284,
		37.738144, 32.497704, 32.432735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.124588, 32.710201, 31.825926>,  <37.068356, 32.680920, 32.521133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.124588, 32.710201, 31.825926> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488804, 32.553532, 31.878855>,  <37.707333, 32.459530, 31.910612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.488804, 32.553532, 31.878855>,  <37.124588, 32.710201, 31.825926>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.488804, 32.553532, 31.878855> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009554, -0.300041, -0.953879,
		0.413316, 0.869806, -0.269456,
		0.910538, -0.391679, 0.132322,
		37.761967, 32.436028, 31.918550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693382, 33.019764, 31.364845>,  <37.124588, 32.710201, 31.825926>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693382, 33.019764, 31.364845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823269, 32.656918, 31.471951>,  <37.901199, 32.439209, 31.536215>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.823269, 32.656918, 31.471951>,  <37.693382, 33.019764, 31.364845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.823269, 32.656918, 31.471951> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142555, -0.232932, -0.961988,
		0.935007, 0.350542, 0.053677,
		0.324714, -0.907118, 0.267765,
		37.920685, 32.384781, 31.552280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.201252, 32.862793, 30.917065>,  <37.693382, 33.019764, 31.364845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.201252, 32.862793, 30.917065> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053673, 32.520130, 31.061300>,  <37.965126, 32.314533, 31.147842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.053673, 32.520130, 31.061300>,  <38.201252, 32.862793, 30.917065>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053673, 32.520130, 31.061300> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182242, -0.313755, -0.931851,
		0.911410, -0.409515, -0.040360,
		-0.368944, -0.856653, 0.360591,
		37.942989, 32.263134, 31.169477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.511959, 32.338066, 30.556955>,  <38.201252, 32.862793, 30.917065>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.511959, 32.338066, 30.556955> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178638, 32.168465, 30.698847>,  <37.978645, 32.066704, 30.783981>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.178638, 32.168465, 30.698847>,  <38.511959, 32.338066, 30.556955>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.178638, 32.168465, 30.698847> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284889, -0.220543, -0.932845,
		0.473767, -0.878395, 0.062982,
		-0.833297, -0.424008, 0.354730,
		37.928650, 32.041264, 30.805265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.491367, 31.706581, 30.233334>,  <38.511959, 32.338066, 30.556955>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.491367, 31.706581, 30.233334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115444, 31.721754, 30.369171>,  <37.889889, 31.730858, 30.450674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.115444, 31.721754, 30.369171>,  <38.491367, 31.706581, 30.233334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.115444, 31.721754, 30.369171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333988, -0.312020, -0.889435,
		0.072220, -0.949318, 0.305908,
		-0.939806, 0.037934, 0.339595,
		37.833504, 31.733135, 30.471050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.194748, 31.080809, 29.981913>,  <38.491367, 31.706581, 30.233334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.194748, 31.080809, 29.981913> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901943, 31.337667, 30.072956>,  <37.726261, 31.491783, 30.127583>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.901943, 31.337667, 30.072956>,  <38.194748, 31.080809, 29.981913>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.901943, 31.337667, 30.072956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509234, -0.293774, -0.808936,
		-0.452589, -0.708058, 0.542049,
		-0.732013, 0.642145, 0.227609,
		37.682339, 31.530312, 30.141239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562927, 30.601063, 30.076052>,  <38.194748, 31.080809, 29.981913>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562927, 30.601063, 30.076052> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 30.974686, 29.996044>,  <37.373577, 31.198858, 29.948040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.444584, 30.974686, 29.996044>,  <37.562927, 30.601063, 30.076052>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.444584, 30.974686, 29.996044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623568, -0.347477, -0.700302,
		-0.723622, -0.082466, 0.685252,
		-0.295861, 0.934055, -0.200019,
		37.355827, 31.254902, 29.936039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.788269, 30.506907, 29.931471>,  <37.562927, 30.601063, 30.076052>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.788269, 30.506907, 29.931471> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917240, 30.851564, 29.774696>,  <36.994621, 31.058359, 29.680632>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.917240, 30.851564, 29.774696>,  <36.788269, 30.506907, 29.931471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.917240, 30.851564, 29.774696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467972, -0.214819, -0.857237,
		-0.822828, 0.459809, 0.333961,
		0.322424, 0.861643, -0.391937,
		37.013966, 31.110058, 29.657116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.130486, 30.814129, 29.725897>,  <36.788269, 30.506907, 29.931471>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.130486, 30.814129, 29.725897> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420986, 31.006527, 29.529449>,  <36.595287, 31.121965, 29.411581>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420986, 31.006527, 29.529449>,  <36.130486, 30.814129, 29.725897>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420986, 31.006527, 29.529449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568029, 0.017525, -0.822822,
		-0.387166, 0.876549, 0.285946,
		0.726255, 0.480994, -0.491120,
		36.638863, 31.150826, 29.382114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<35.671635, 31.389366, 29.410072> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030834, 31.353315, 29.237801>,  <36.246353, 31.331684, 29.134438>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.030834, 31.353315, 29.237801>,  <35.671635, 31.389366, 29.410072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.030834, 31.353315, 29.237801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374268, 0.358215, -0.855339,
		0.231365, 0.929279, 0.287943,
		0.897994, -0.090128, -0.430678,
		36.300232, 31.326277, 29.108597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.716583, 31.978132, 28.982304>,  <35.671635, 31.389366, 29.410072>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.716583, 31.978132, 28.982304> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983124, 31.731863, 28.814056>,  <36.143047, 31.584103, 28.713108>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.983124, 31.731863, 28.814056>,  <35.716583, 31.978132, 28.982304>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.983124, 31.731863, 28.814056> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466234, 0.096188, -0.879416,
		0.581890, 0.782110, -0.222952,
		0.666355, -0.615671, -0.420618,
		36.183029, 31.547161, 28.687872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.790699, 32.252678, 28.316387>,  <35.716583, 31.978132, 28.982304>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.790699, 32.252678, 28.316387> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957161, 31.890656, 28.281307>,  <36.057037, 31.673443, 28.260260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.957161, 31.890656, 28.281307>,  <35.790699, 32.252678, 28.316387>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957161, 31.890656, 28.281307> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201442, 0.002289, -0.979498,
		0.886699, 0.425291, -0.181363,
		0.416156, -0.905054, -0.087701,
		36.082008, 31.619139, 28.254997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.321907, 32.297596, 27.833504>,  <35.790699, 32.252678, 28.316387>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.321907, 32.297596, 27.833504> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163723, 31.930204, 27.834913>,  <36.068813, 31.709770, 27.835758>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.163723, 31.930204, 27.834913>,  <36.321907, 32.297596, 27.833504>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.163723, 31.930204, 27.834913> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137753, 0.055517, -0.988909,
		0.908096, -0.391555, -0.148478,
		-0.395456, -0.918478, 0.003523,
		36.045086, 31.654661, 27.835970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.549431, 31.995174, 27.180017>,  <36.321907, 32.297596, 27.833504>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.549431, 31.995174, 27.180017> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264153, 31.751783, 27.319216>,  <36.092983, 31.605749, 27.402735>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.264153, 31.751783, 27.319216>,  <36.549431, 31.995174, 27.180017>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.264153, 31.751783, 27.319216> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426129, -0.017821, -0.904487,
		0.556562, -0.793370, -0.246581,
		-0.713198, -0.608478, 0.347997,
		36.050194, 31.569241, 27.423615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.573631, 31.388504, 26.807833>,  <36.549431, 31.995174, 27.180017>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.573631, 31.388504, 26.807833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.192757, 31.403328, 26.929132>,  <35.964230, 31.412222, 27.001913>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.192757, 31.403328, 26.929132>,  <36.573631, 31.388504, 26.807833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192757, 31.403328, 26.929132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304503, -0.034718, -0.951878,
		-0.024728, -0.998710, 0.044337,
		-0.952190, 0.037039, 0.303252,
		35.907101, 31.414446, 27.020107>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301907, 30.896069, 26.473709>,  <36.573631, 31.388504, 26.807833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301907, 30.896069, 26.473709> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986198, 31.117718, 26.579535>,  <35.796772, 31.250708, 26.643030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.986198, 31.117718, 26.579535>,  <36.301907, 30.896069, 26.473709>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.986198, 31.117718, 26.579535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436621, -0.203511, -0.876325,
		-0.431753, -0.807173, 0.402569,
		-0.789273, 0.554126, 0.264562,
		35.749416, 31.283955, 26.658903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.646606, 30.584499, 26.430159>,  <36.301907, 30.896069, 26.473709>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.646606, 30.584499, 26.430159> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540684, 30.967731, 26.386423>,  <35.477131, 31.197672, 26.360182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.540684, 30.967731, 26.386423>,  <35.646606, 30.584499, 26.430159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.540684, 30.967731, 26.386423> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577516, -0.248373, -0.777680,
		-0.772238, -0.142789, 0.619079,
		-0.264807, 0.958083, -0.109340,
		35.461243, 31.255156, 26.353621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.909065, 30.608841, 26.230391>,  <35.646606, 30.584499, 26.430159>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.909065, 30.608841, 26.230391> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041573, 30.968342, 26.115496>,  <35.121078, 31.184042, 26.046558>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.041573, 30.968342, 26.115496>,  <34.909065, 30.608841, 26.230391>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.041573, 30.968342, 26.115496> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540560, -0.068733, -0.838493,
		-0.773340, 0.433035, 0.463061,
		0.331269, 0.898753, -0.287235,
		35.140953, 31.237968, 26.029325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436783, 30.779636, 25.695827>,  <34.909065, 30.608841, 26.230391>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436783, 30.779636, 25.695827> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711437, 31.067383, 25.653801>,  <34.876232, 31.240030, 25.628586>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.711437, 31.067383, 25.653801>,  <34.436783, 30.779636, 25.695827>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711437, 31.067383, 25.653801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400354, 0.253529, -0.880590,
		-0.606829, 0.646712, 0.462084,
		0.686640, 0.719365, -0.105066,
		34.917431, 31.283192, 25.622282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.079826, 31.324463, 25.453899>,  <34.436783, 30.779636, 25.695827>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.079826, 31.324463, 25.453899> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455345, 31.354136, 25.319342>,  <34.680656, 31.371939, 25.238607>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.455345, 31.354136, 25.319342>,  <34.079826, 31.324463, 25.453899>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455345, 31.354136, 25.319342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338360, 0.015360, -0.940891,
		-0.064631, 0.997126, 0.039520,
		0.938794, 0.074183, -0.336395,
		34.736984, 31.376390, 25.218424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.006290, 31.817499, 24.954145>,  <34.079826, 31.324463, 25.453899>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.006290, 31.817499, 24.954145> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360596, 31.666136, 24.846640>,  <34.573177, 31.575317, 24.782135>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.360596, 31.666136, 24.846640>,  <34.006290, 31.817499, 24.954145>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360596, 31.666136, 24.846640> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.291826, -0.003760, -0.956464,
		0.360926, 0.925630, -0.113761,
		0.885760, -0.378411, -0.268766,
		34.626324, 31.552612, 24.766010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.204014, 32.267792, 24.362265>,  <34.006290, 31.817499, 24.954145>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.204014, 32.267792, 24.362265> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430908, 31.938400, 24.357828>,  <34.567043, 31.740765, 24.355167>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.430908, 31.938400, 24.357828>,  <34.204014, 32.267792, 24.362265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.430908, 31.938400, 24.357828> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.181062, -0.111561, -0.977124,
		0.803407, 0.556266, -0.212383,
		0.567234, -0.823482, -0.011090,
		34.601078, 31.691355, 24.354502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.620464, 32.356426, 23.720295>,  <34.204014, 32.267792, 24.362265>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.620464, 32.356426, 23.720295> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619469, 31.966816, 23.810863>,  <34.618874, 31.733049, 23.865204>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.619469, 31.966816, 23.810863>,  <34.620464, 32.356426, 23.720295>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.619469, 31.966816, 23.810863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133695, -0.224065, -0.965360,
		0.991019, -0.032672, -0.129665,
		-0.002487, -0.974026, 0.226421,
		34.618721, 31.674608, 23.878790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.066311, 32.034466, 23.257311>,  <34.620464, 32.356426, 23.720295>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.066311, 32.034466, 23.257311> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828434, 31.736580, 23.378466>,  <34.685707, 31.557848, 23.451159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.828434, 31.736580, 23.378466>,  <35.066311, 32.034466, 23.257311>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828434, 31.736580, 23.378466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013628, -0.386031, -0.922385,
		0.803841, -0.544404, 0.239717,
		-0.594688, -0.744718, 0.302888,
		34.650028, 31.513165, 23.469332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.244560, 31.475506, 22.886705>,  <35.066311, 32.034466, 23.257311>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.244560, 31.475506, 22.886705> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884422, 31.373032, 23.027418>,  <34.668339, 31.311546, 23.111847>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.884422, 31.373032, 23.027418>,  <35.244560, 31.475506, 22.886705>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884422, 31.373032, 23.027418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305745, -0.202864, -0.930251,
		0.309683, -0.945100, 0.104319,
		-0.900343, -0.256187, 0.351783,
		34.614319, 31.296175, 23.132954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.170559, 30.898674, 22.589308>,  <35.244560, 31.475506, 22.886705>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.170559, 30.898674, 22.589308> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796658, 31.009644, 22.678089>,  <34.572315, 31.076225, 22.731358>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.796658, 31.009644, 22.678089>,  <35.170559, 30.898674, 22.589308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.796658, 31.009644, 22.678089> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270748, -0.151715, -0.950620,
		-0.230053, -0.948692, 0.216930,
		-0.934757, 0.277426, 0.221954,
		34.516232, 31.092871, 22.744675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.767021, 30.440748, 22.267632>,  <35.170559, 30.898674, 22.589308>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.767021, 30.440748, 22.267632> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506336, 30.734358, 22.344030>,  <34.349926, 30.910522, 22.389870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.506336, 30.734358, 22.344030>,  <34.767021, 30.440748, 22.267632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.506336, 30.734358, 22.344030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372830, -0.090733, -0.923453,
		-0.660505, -0.673037, 0.332798,
		-0.651714, 0.734023, 0.190999,
		34.310822, 30.954565, 22.401329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122704, 30.313061, 21.950821>,  <34.767021, 30.440748, 22.267632>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122704, 30.313061, 21.950821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056023, 30.705971, 21.985119>,  <34.016014, 30.941717, 22.005697>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.056023, 30.705971, 21.985119>,  <34.122704, 30.313061, 21.950821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.056023, 30.705971, 21.985119> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551239, -0.020740, -0.834090,
		-0.817526, -0.186306, 0.544924,
		-0.166698, 0.982273, 0.085743,
		34.006012, 31.000652, 22.010841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.391808, 30.460066, 21.653439>,  <34.122704, 30.313061, 21.950821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.391808, 30.460066, 21.653439> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570801, 30.816216, 21.686872>,  <33.678196, 31.029905, 21.706932>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.570801, 30.816216, 21.686872>,  <33.391808, 30.460066, 21.653439>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.570801, 30.816216, 21.686872> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369069, 0.268999, -0.889622,
		-0.814582, 0.367247, 0.448984,
		0.447487, 0.890376, 0.083583,
		33.705048, 31.083328, 21.711946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.877148, 30.846979, 21.506853>,  <33.391808, 30.460066, 21.653439>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.877148, 30.846979, 21.506853> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223618, 31.028072, 21.422218>,  <33.431499, 31.136728, 21.371437>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.223618, 31.028072, 21.422218>,  <32.877148, 30.846979, 21.506853>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.223618, 31.028072, 21.422218> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273062, 0.074174, -0.959133,
		-0.418538, 0.888555, 0.187872,
		0.866177, 0.452734, -0.211586,
		33.483471, 31.163893, 21.358742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802799, 31.481354, 21.167038>,  <32.877148, 30.846979, 21.506853>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802799, 31.481354, 21.167038> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137619, 31.315014, 21.024813>,  <33.338509, 31.215210, 20.939478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.137619, 31.315014, 21.024813>,  <32.802799, 31.481354, 21.167038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.137619, 31.315014, 21.024813> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380035, 0.025622, -0.924617,
		0.393611, 0.909073, -0.136591,
		0.837045, -0.415849, -0.355564,
		33.388733, 31.190260, 20.918144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.790600, 31.551437, 20.452480>,  <32.802799, 31.481354, 21.167038>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.790600, 31.551437, 20.452480> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085114, 31.282505, 20.483110>,  <33.261822, 31.121145, 20.501490>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.085114, 31.282505, 20.483110>,  <32.790600, 31.551437, 20.452480>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.085114, 31.282505, 20.483110> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.203460, -0.327889, -0.922547,
		0.645365, 0.663672, -0.378210,
		0.736280, -0.672330, 0.076577,
		33.305996, 31.080807, 20.506084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.908970, 32.197643, 19.963007>,  <32.790600, 31.551437, 20.452480>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.908970, 32.197643, 19.963007> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.301426, 32.192780, 20.040182>,  <33.536900, 32.189861, 20.086487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.301426, 32.192780, 20.040182>,  <32.908970, 32.197643, 19.963007>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301426, 32.192780, 20.040182> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119883, 0.821229, -0.557864,
		-0.151660, 0.570470, 0.807195,
		0.981136, -0.012164, 0.192937,
		33.595768, 32.189129, 20.098063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.446152, 32.364513, 20.399969>,  <32.908970, 32.197643, 19.963007>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.446152, 32.364513, 20.399969> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.102604, 32.568630, 20.417597>,  <31.896475, 32.691101, 20.428173>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.102604, 32.568630, 20.417597>,  <32.446152, 32.364513, 20.399969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.102604, 32.568630, 20.417597> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352429, 0.526346, 0.773792,
		0.371667, 0.680117, -0.631905,
		-0.858870, 0.510295, 0.044068,
		31.844942, 32.721718, 20.430817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.554337, 33.132633, 20.374065>,  <32.446152, 32.364513, 20.399969>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.554337, 33.132633, 20.374065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206631, 33.076687, 20.563728>,  <31.998009, 33.043118, 20.677526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206631, 33.076687, 20.563728>,  <32.554337, 33.132633, 20.374065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206631, 33.076687, 20.563728> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335174, 0.538276, 0.773251,
		-0.363379, 0.831082, -0.421022,
		-0.869261, -0.139867, 0.474155,
		31.945852, 33.034725, 20.705975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.394989, 33.762344, 20.601080>,  <32.554337, 33.132633, 20.374065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.394989, 33.762344, 20.601080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206131, 33.488804, 20.823587>,  <32.092815, 33.324680, 20.957092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.206131, 33.488804, 20.823587>,  <32.394989, 33.762344, 20.601080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.206131, 33.488804, 20.823587> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303326, 0.466469, 0.830903,
		-0.827693, 0.561035, -0.012810,
		-0.472142, -0.683847, 0.556269,
		32.064487, 33.283649, 20.990469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.110691, 34.164139, 21.185644>,  <32.394989, 33.762344, 20.601080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.110691, 34.164139, 21.185644> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087463, 33.785595, 21.312786>,  <32.073528, 33.558468, 21.389072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.087463, 33.785595, 21.312786>,  <32.110691, 34.164139, 21.185644>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.087463, 33.785595, 21.312786> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271978, 0.291354, 0.917137,
		-0.960550, 0.139704, 0.240471,
		-0.058066, -0.946359, 0.317856,
		32.070045, 33.501686, 21.408142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.070065, 34.226044, 21.942062>,  <32.110691, 34.164139, 21.185644>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.070065, 34.226044, 21.942062> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140915, 33.833061, 21.918739>,  <32.183426, 33.597271, 21.904745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.140915, 33.833061, 21.918739>,  <32.070065, 34.226044, 21.942062>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140915, 33.833061, 21.918739> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277744, -0.006936, 0.960630,
		-0.944184, -0.186351, 0.271644,
		0.177130, -0.982459, -0.058307,
		32.194054, 33.538322, 21.901247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.684889, 33.901482, 22.446619>,  <32.070065, 34.226044, 21.942062>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.684889, 33.901482, 22.446619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996902, 33.663639, 22.368652>,  <32.184109, 33.520935, 22.321873>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.996902, 33.663639, 22.368652>,  <31.684889, 33.901482, 22.446619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.996902, 33.663639, 22.368652> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159523, -0.112240, 0.980793,
		-0.605062, -0.796144, 0.007303,
		0.780033, -0.594606, -0.194915,
		32.230911, 33.485256, 22.310177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.674574, 33.452579, 22.963070>,  <31.684889, 33.901482, 22.446619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.674574, 33.452579, 22.963070> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041744, 33.409481, 22.810333>,  <32.262047, 33.383621, 22.718691>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.041744, 33.409481, 22.810333>,  <31.674574, 33.452579, 22.963070>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041744, 33.409481, 22.810333> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390921, 0.081210, 0.916835,
		-0.067773, -0.990856, 0.116664,
		0.917926, -0.107743, -0.381843,
		32.317123, 33.377159, 22.695780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022205, 32.844296, 23.223183>,  <31.674574, 33.452579, 22.963070>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022205, 32.844296, 23.223183> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305878, 33.105450, 23.116749>,  <32.476082, 33.262142, 23.052889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.305878, 33.105450, 23.116749>,  <32.022205, 32.844296, 23.223183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.305878, 33.105450, 23.116749> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410869, -0.076027, 0.908519,
		0.572928, -0.753633, -0.322167,
		0.709183, 0.652884, -0.266087,
		32.518631, 33.301315, 23.036922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587685, 32.497475, 23.398802>,  <32.022205, 32.844296, 23.223183>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.587685, 32.497475, 23.398802> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721161, 32.874092, 23.380301>,  <32.801247, 33.100063, 23.369200>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.721161, 32.874092, 23.380301>,  <32.587685, 32.497475, 23.398802>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.721161, 32.874092, 23.380301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432801, -0.109427, 0.894824,
		0.837457, -0.318612, -0.444017,
		0.333689, 0.941548, -0.046255,
		32.821266, 33.156555, 23.366425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.297253, 32.563187, 23.556227>,  <32.587685, 32.497475, 23.398802>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.297253, 32.563187, 23.556227> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173317, 32.938324, 23.618761>,  <33.098957, 33.163406, 23.656282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.173317, 32.938324, 23.618761>,  <33.297253, 32.563187, 23.556227>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.173317, 32.938324, 23.618761> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438556, -0.004922, 0.898691,
		0.843604, 0.347012, -0.409773,
		-0.309840, 0.937848, 0.156336,
		33.080364, 33.219677, 23.665663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.860680, 33.056488, 23.594032>,  <33.297253, 32.563187, 23.556227>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.860680, 33.056488, 23.594032> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565186, 33.235008, 23.796059>,  <33.387890, 33.342121, 23.917274>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.565186, 33.235008, 23.796059>,  <33.860680, 33.056488, 23.594032>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.565186, 33.235008, 23.796059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575640, 0.027992, 0.817224,
		0.350589, 0.894446, -0.277587,
		-0.738732, 0.446300, 0.505065,
		33.343567, 33.368896, 23.947578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.308849, 33.408680, 24.108316>,  <33.860680, 33.056488, 23.594032>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.308849, 33.408680, 24.108316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929642, 33.422192, 24.234882>,  <33.702118, 33.430298, 24.310822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.929642, 33.422192, 24.234882>,  <34.308849, 33.408680, 24.108316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929642, 33.422192, 24.234882> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317518, 0.034764, 0.947615,
		0.021009, 0.998825, -0.043683,
		-0.948019, 0.033778, 0.316415,
		33.645237, 33.432323, 24.329807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.316830, 33.813477, 24.801674>,  <34.308849, 33.408680, 24.108316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.316830, 33.813477, 24.801674> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961964, 33.629227, 24.790621>,  <33.749043, 33.518677, 24.783989>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.961964, 33.629227, 24.790621>,  <34.316830, 33.813477, 24.801674>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.961964, 33.629227, 24.790621> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018902, -0.023558, 0.999544,
		-0.461067, 0.887282, 0.012193,
		-0.887164, -0.460626, -0.027633,
		33.695816, 33.491039, 24.782331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.737297, 34.186314, 25.194363>,  <34.316830, 33.813477, 24.801674>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.737297, 34.186314, 25.194363> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610069, 33.807121, 25.199511>,  <33.533733, 33.579605, 25.202600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.610069, 33.807121, 25.199511>,  <33.737297, 34.186314, 25.194363>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.610069, 33.807121, 25.199511> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010547, 0.017114, 0.999798,
		-0.948010, 0.317867, -0.015441,
		-0.318067, -0.947981, 0.012871,
		33.514648, 33.522728, 25.203371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266994, 34.166786, 25.685284>,  <33.737297, 34.186314, 25.194363>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266994, 34.166786, 25.685284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381855, 33.784939, 25.653662>,  <33.450771, 33.555832, 25.634689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.381855, 33.784939, 25.653662>,  <33.266994, 34.166786, 25.685284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.381855, 33.784939, 25.653662> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.008378, -0.085029, 0.996343,
		-0.957849, -0.285439, -0.032414,
		0.287151, -0.954617, -0.079054,
		33.468002, 33.498554, 25.629946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802162, 33.727848, 26.086561>,  <33.266994, 34.166786, 25.685284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802162, 33.727848, 26.086561> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154114, 33.542412, 26.044802>,  <33.365284, 33.431152, 26.019745>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.154114, 33.542412, 26.044802>,  <32.802162, 33.727848, 26.086561>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.154114, 33.542412, 26.044802> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079252, -0.073464, 0.994144,
		-0.468541, -0.883001, -0.027899,
		0.879880, -0.463587, -0.104401,
		33.418079, 33.403336, 26.013481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.808666, 33.187832, 26.614744>,  <32.802162, 33.727848, 26.086561>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.808666, 33.187832, 26.614744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.190865, 33.204380, 26.497902>,  <33.420181, 33.214310, 26.427797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.190865, 33.204380, 26.497902>,  <32.808666, 33.187832, 26.614744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.190865, 33.204380, 26.497902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294786, -0.094595, 0.950870,
		0.011703, -0.994656, -0.102579,
		0.955492, 0.041367, -0.292104,
		33.477512, 33.216789, 26.410271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.058685, 32.682224, 26.933294>,  <32.808666, 33.187832, 26.614744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.058685, 32.682224, 26.933294> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377007, 32.900715, 26.828733>,  <33.568001, 33.031811, 26.765997>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.377007, 32.900715, 26.828733>,  <33.058685, 32.682224, 26.933294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.377007, 32.900715, 26.828733> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434634, -0.214645, 0.874655,
		0.421652, -0.809668, -0.408224,
		0.795803, 0.546228, -0.261404,
		33.615749, 33.064583, 26.750313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.727604, 32.277012, 27.119049>,  <33.058685, 32.682224, 26.933294>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.727604, 32.277012, 27.119049> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795650, 32.671177, 27.116852>,  <33.836479, 32.907677, 27.115534>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.795650, 32.671177, 27.116852>,  <33.727604, 32.277012, 27.119049>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795650, 32.671177, 27.116852> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381784, -0.060769, 0.922252,
		0.908460, -0.158991, -0.386551,
		0.170120, 0.985408, -0.005494,
		33.846687, 32.966801, 27.115204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.186691, 32.323624, 27.677046>,  <33.727604, 32.277012, 27.119049>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.186691, 32.323624, 27.677046> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099487, 32.710602, 27.625639>,  <34.047165, 32.942791, 27.594795>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.099487, 32.710602, 27.625639>,  <34.186691, 32.323624, 27.677046>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099487, 32.710602, 27.625639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320637, 0.195373, 0.926834,
		0.921773, 0.160850, -0.352792,
		-0.218007, 0.967448, -0.128515,
		34.034084, 33.000835, 27.587084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<37.675785, 31.090488, 31.627438> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774849, 31.451273, 31.485945>,  <37.834290, 31.667744, 31.401049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.774849, 31.451273, 31.485945>,  <37.675785, 31.090488, 31.627438>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.774849, 31.451273, 31.485945> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293166, 0.278221, 0.914684,
		0.923427, -0.330234, -0.195520,
		0.247663, 0.901964, -0.353730,
		37.849148, 31.721863, 31.379826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.359188, 31.228504, 31.836748>,  <37.675785, 31.090488, 31.627438>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.359188, 31.228504, 31.836748> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202751, 31.586456, 31.750744>,  <38.108887, 31.801228, 31.699141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.202751, 31.586456, 31.750744>,  <38.359188, 31.228504, 31.836748>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.202751, 31.586456, 31.750744> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278954, 0.337891, 0.898896,
		0.877056, 0.291577, -0.381779,
		-0.391097, 0.894881, -0.215013,
		38.085423, 31.854921, 31.686239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.822540, 31.695206, 32.182568>,  <38.359188, 31.228504, 31.836748>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.822540, 31.695206, 32.182568> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503948, 31.927818, 32.116310>,  <38.312794, 32.067387, 32.076553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.503948, 31.927818, 32.116310>,  <38.822540, 31.695206, 32.182568>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.503948, 31.927818, 32.116310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175453, 0.484433, 0.857054,
		0.578650, 0.653563, -0.487873,
		-0.796480, 0.581533, -0.165647,
		38.265003, 32.102280, 32.066616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.058937, 32.359375, 32.354702>,  <38.822540, 31.695206, 32.182568>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.058937, 32.359375, 32.354702> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660400, 32.392673, 32.362492>,  <38.421280, 32.412655, 32.367165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.660400, 32.392673, 32.362492>,  <39.058937, 32.359375, 32.354702>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.660400, 32.392673, 32.362492> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067872, 0.631598, 0.772320,
		0.051994, 0.770814, -0.634935,
		-0.996338, 0.083250, 0.019477,
		38.361500, 32.417648, 32.368336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936367, 33.084949, 32.471622>,  <39.058937, 32.359375, 32.354702>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936367, 33.084949, 32.471622> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.621212, 32.882832, 32.612427>,  <38.432117, 32.761562, 32.696907>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.621212, 32.882832, 32.612427>,  <38.936367, 33.084949, 32.471622>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621212, 32.882832, 32.612427> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099152, 0.460062, 0.882333,
		-0.607782, 0.730083, -0.312377,
		-0.787890, -0.505293, 0.352007,
		38.384846, 32.731243, 32.718029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.502220, 33.564236, 32.826771>,  <38.936367, 33.084949, 32.471622>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.502220, 33.564236, 32.826771> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390530, 33.216995, 32.990936>,  <38.323517, 33.008652, 33.089436>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.390530, 33.216995, 32.990936>,  <38.502220, 33.564236, 32.826771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.390530, 33.216995, 32.990936> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050495, 0.413552, 0.909079,
		-0.958898, 0.274560, -0.071639,
		-0.279223, -0.868096, 0.410418,
		38.306763, 32.956566, 33.114063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.969944, 33.766529, 33.179462>,  <38.502220, 33.564236, 32.826771>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.969944, 33.766529, 33.179462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119408, 33.419918, 33.311832>,  <38.209087, 33.211952, 33.391254>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.119408, 33.419918, 33.311832>,  <37.969944, 33.766529, 33.179462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.119408, 33.419918, 33.311832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113056, 0.396652, 0.910981,
		-0.920649, -0.302986, 0.246180,
		0.373662, -0.866526, 0.330923,
		38.231506, 33.159962, 33.411110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.526638, 33.615700, 33.766773>,  <37.969944, 33.766529, 33.179462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.526638, 33.615700, 33.766773> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862774, 33.399204, 33.778709>,  <38.064457, 33.269306, 33.785873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.862774, 33.399204, 33.778709>,  <37.526638, 33.615700, 33.766773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.862774, 33.399204, 33.778709> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160277, 0.300690, 0.940158,
		-0.517821, -0.785270, 0.339430,
		0.840341, -0.541236, 0.029843,
		38.114876, 33.236832, 33.787663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.557659, 33.210453, 34.462933>,  <37.526638, 33.615700, 33.766773>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.557659, 33.210453, 34.462933> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929634, 33.207802, 34.315872>,  <38.152821, 33.206211, 34.227634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.929634, 33.207802, 34.315872>,  <37.557659, 33.210453, 34.462933>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.929634, 33.207802, 34.315872> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350625, 0.317253, 0.881143,
		0.110796, -0.948318, 0.297351,
		0.929939, -0.006632, -0.367654,
		38.208614, 33.205814, 34.205574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.013798, 32.816711, 34.993832>,  <37.557659, 33.210453, 34.462933>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.013798, 32.816711, 34.993832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266457, 33.039776, 34.778416>,  <38.418053, 33.173615, 34.649166>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.266457, 33.039776, 34.778416>,  <38.013798, 32.816711, 34.993832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.266457, 33.039776, 34.778416> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432005, 0.323625, 0.841807,
		0.643732, -0.764380, -0.036497,
		0.631649, 0.557665, -0.538544,
		38.455952, 33.207073, 34.616852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.727394, 32.736820, 35.315853>,  <38.013798, 32.816711, 34.993832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.727394, 32.736820, 35.315853> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716087, 33.080074, 35.110798>,  <38.709305, 33.286026, 34.987766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.716087, 33.080074, 35.110798>,  <38.727394, 32.736820, 35.315853>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.716087, 33.080074, 35.110798> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556088, 0.439659, 0.705313,
		0.830642, -0.265134, -0.489629,
		-0.028267, 0.858140, -0.512637,
		38.707607, 33.337517, 34.957008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.393318, 33.098598, 35.648983>,  <38.727394, 32.736820, 35.315853>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.393318, 33.098598, 35.648983> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.169357, 33.364944, 35.451752>,  <39.034981, 33.524754, 35.333412>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.169357, 33.364944, 35.451752>,  <39.393318, 33.098598, 35.648983>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.169357, 33.364944, 35.451752> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138794, 0.662076, 0.736473,
		0.816850, 0.343917, -0.463117,
		-0.559904, 0.665866, -0.493083,
		39.001385, 33.564705, 35.303825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774994, 33.664875, 35.772419>,  <39.393318, 33.098598, 35.648983>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774994, 33.664875, 35.772419> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403992, 33.790237, 35.690933>,  <39.181389, 33.865456, 35.642040>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.403992, 33.790237, 35.690933>,  <39.774994, 33.664875, 35.772419>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403992, 33.790237, 35.690933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094612, 0.724083, 0.683193,
		0.361627, 0.614394, -0.701247,
		-0.927510, 0.313407, -0.203719,
		39.125740, 33.884258, 35.629818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810352, 34.464828, 35.667526>,  <39.774994, 33.664875, 35.772419>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810352, 34.464828, 35.667526> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452316, 34.346958, 35.801384>,  <39.237495, 34.276237, 35.881699>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.452316, 34.346958, 35.801384>,  <39.810352, 34.464828, 35.667526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452316, 34.346958, 35.801384> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035296, 0.701319, 0.711973,
		-0.444492, 0.649089, -0.617341,
		-0.895087, -0.294677, 0.334641,
		39.183788, 34.258556, 35.901775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.450085, 34.119396, 35.579468>,  <39.810352, 34.464828, 35.667526>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.450085, 34.119396, 35.579468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470188, 34.513470, 35.645065>,  <40.482250, 34.749912, 35.684422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470188, 34.513470, 35.645065>,  <40.450085, 34.119396, 35.579468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470188, 34.513470, 35.645065> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329544, 0.138645, -0.933905,
		-0.942802, 0.100979, -0.317692,
		0.050259, 0.985181, 0.163991,
		40.485264, 34.809025, 35.694263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.045490, 34.463318, 34.997314>,  <40.450085, 34.119396, 35.579468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.045490, 34.463318, 34.997314> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322994, 34.708694, 35.148254>,  <40.489494, 34.855919, 35.238819>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.322994, 34.708694, 35.148254>,  <40.045490, 34.463318, 34.997314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.322994, 34.708694, 35.148254> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246183, 0.290402, -0.924695,
		-0.676827, 0.734412, 0.050451,
		0.693758, 0.613438, 0.377351,
		40.531120, 34.892727, 35.261459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.786583, 35.126083, 34.858383>,  <40.045490, 34.463318, 34.997314>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.786583, 35.126083, 34.858383> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185013, 35.121548, 34.893490>,  <40.424072, 35.118828, 34.914555>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.185013, 35.121548, 34.893490>,  <39.786583, 35.126083, 34.858383>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.185013, 35.121548, 34.893490> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088480, 0.148741, -0.984910,
		-0.001890, 0.988811, 0.149160,
		0.996076, -0.011336, 0.087771,
		40.483837, 35.118145, 34.919823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.961884, 35.651806, 34.407169>,  <39.786583, 35.126083, 34.858383>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.961884, 35.651806, 34.407169> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307026, 35.460987, 34.473991>,  <40.514111, 35.346497, 34.514084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.307026, 35.460987, 34.473991>,  <39.961884, 35.651806, 34.407169>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.307026, 35.460987, 34.473991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281283, 0.178600, -0.942858,
		0.419953, 0.860539, 0.288291,
		0.862855, -0.477048, 0.167051,
		40.565884, 35.317871, 34.524105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.460079, 36.106133, 34.220619>,  <39.961884, 35.651806, 34.407169>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.460079, 36.106133, 34.220619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645073, 35.753456, 34.183247>,  <40.756069, 35.541851, 34.160824>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.645073, 35.753456, 34.183247>,  <40.460079, 36.106133, 34.220619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.645073, 35.753456, 34.183247> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370757, 0.288047, -0.882932,
		0.805385, 0.373702, 0.460110,
		0.462486, -0.881689, -0.093436,
		40.783817, 35.488949, 34.155216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.041348, 36.247078, 33.753632>,  <40.460079, 36.106133, 34.220619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.041348, 36.247078, 33.753632> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.978096, 35.852112, 33.754959>,  <40.940147, 35.615131, 33.755756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.978096, 35.852112, 33.754959>,  <41.041348, 36.247078, 33.753632>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.978096, 35.852112, 33.754959> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309132, -0.052693, -0.949558,
		0.937781, -0.149126, 0.313573,
		-0.158127, -0.987413, 0.003315,
		40.930656, 35.555889, 33.755955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.455723, 35.994041, 33.349613>,  <41.041348, 36.247078, 33.753632>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.455723, 35.994041, 33.349613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203922, 35.683685, 33.333012>,  <41.052841, 35.497471, 33.323051>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.203922, 35.683685, 33.333012>,  <41.455723, 35.994041, 33.349613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203922, 35.683685, 33.333012> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.167902, -0.083686, -0.982245,
		0.758644, -0.625290, 0.182954,
		-0.629498, -0.775893, -0.041500,
		41.015072, 35.450916, 33.320560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.723099, 35.382961, 32.903011>,  <41.455723, 35.994041, 33.349613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.723099, 35.382961, 32.903011> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330441, 35.306873, 32.908550>,  <41.094845, 35.261219, 32.911873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.330441, 35.306873, 32.908550>,  <41.723099, 35.382961, 32.903011>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.330441, 35.306873, 32.908550> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010022, -0.123952, -0.992238,
		0.190460, -0.973885, 0.123583,
		-0.981644, -0.190220, 0.013847,
		41.035946, 35.249809, 32.912704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608936, 35.013859, 32.332119>,  <41.723099, 35.382961, 32.903011>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608936, 35.013859, 32.332119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.225708, 35.087429, 32.420002>,  <40.995770, 35.131573, 32.472733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.225708, 35.087429, 32.420002>,  <41.608936, 35.013859, 32.332119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.225708, 35.087429, 32.420002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273088, -0.354003, -0.894486,
		-0.086739, -0.916981, 0.389387,
		-0.958070, 0.183924, 0.219711,
		40.938286, 35.142605, 32.485916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243587, 34.394501, 32.248692>,  <41.608936, 35.013859, 32.332119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243587, 34.394501, 32.248692> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992626, 34.703854, 32.212372>,  <40.842049, 34.889465, 32.190582>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.992626, 34.703854, 32.212372>,  <41.243587, 34.394501, 32.248692>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992626, 34.703854, 32.212372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232888, -0.297621, -0.925843,
		-0.743057, -0.559728, 0.366839,
		-0.627400, 0.773386, -0.090795,
		40.804405, 34.935871, 32.185135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.626747, 34.036278, 31.972157>,  <41.243587, 34.394501, 32.248692>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.626747, 34.036278, 31.972157> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576321, 34.423615, 31.885975>,  <40.546062, 34.656017, 31.834267>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.576321, 34.423615, 31.885975>,  <40.626747, 34.036278, 31.972157>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.576321, 34.423615, 31.885975> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151997, -0.233476, -0.960409,
		-0.980308, -0.088329, 0.176619,
		-0.126068, 0.968342, -0.215452,
		40.538502, 34.714119, 31.821339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.930775, 34.099434, 31.826471>,  <40.626747, 34.036278, 31.972157>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.930775, 34.099434, 31.826471> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107086, 34.420933, 31.666624>,  <40.212875, 34.613834, 31.570715>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.107086, 34.420933, 31.666624>,  <39.930775, 34.099434, 31.826471>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.107086, 34.420933, 31.666624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626231, -0.043595, -0.778418,
		-0.643075, 0.593368, 0.484117,
		0.440783, 0.803750, -0.399620,
		40.239323, 34.662056, 31.546738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397270, 34.622482, 31.529663>,  <39.930775, 34.099434, 31.826471>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397270, 34.622482, 31.529663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730606, 34.707813, 31.325687>,  <39.930607, 34.759010, 31.203302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.730606, 34.707813, 31.325687>,  <39.397270, 34.622482, 31.529663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.730606, 34.707813, 31.325687> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505088, -0.080936, -0.859265,
		-0.224577, 0.973622, 0.040302,
		0.833338, 0.213327, -0.509941,
		39.980606, 34.771812, 31.172705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.176014, 35.035439, 30.984348>,  <39.397270, 34.622482, 31.529663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.176014, 35.035439, 30.984348> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.538471, 34.908981, 30.871954>,  <39.755947, 34.833107, 30.804518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.538471, 34.908981, 30.871954>,  <39.176014, 35.035439, 30.984348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.538471, 34.908981, 30.871954> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332763, -0.122773, -0.934984,
		0.261089, 0.940735, -0.216451,
		0.906146, -0.316141, -0.280987,
		39.810314, 34.814140, 30.787659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049591, 35.760830, 30.911789>,  <39.176014, 35.035439, 30.984348>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049591, 35.760830, 30.911789> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.976597, 36.143864, 30.822586>,  <38.932800, 36.373684, 30.769064>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.976597, 36.143864, 30.822586>,  <39.049591, 35.760830, 30.911789>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.976597, 36.143864, 30.822586> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103306, 0.206886, 0.972896,
		0.977766, 0.200580, 0.061170,
		-0.182488, 0.957583, -0.223007,
		38.921852, 36.431137, 30.755684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.436531, 36.154499, 31.385132>,  <39.049591, 35.760830, 30.911789>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.436531, 36.154499, 31.385132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157375, 36.409603, 31.254768>,  <38.989883, 36.562664, 31.176550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.157375, 36.409603, 31.254768>,  <39.436531, 36.154499, 31.385132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.157375, 36.409603, 31.254768> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022530, 0.435276, 0.900015,
		0.715851, 0.635454, -0.289406,
		-0.697889, 0.637757, -0.325909,
		38.948009, 36.600929, 31.156996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.620529, 36.749996, 31.753143>,  <39.436531, 36.154499, 31.385132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.620529, 36.749996, 31.753143> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234867, 36.782940, 31.652252>,  <39.003471, 36.802708, 31.591717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.234867, 36.782940, 31.652252>,  <39.620529, 36.749996, 31.753143>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.234867, 36.782940, 31.652252> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207193, 0.360143, 0.909598,
		0.165755, 0.929254, -0.330169,
		-0.964156, 0.082361, -0.252230,
		38.945621, 36.807648, 31.576584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.447208, 37.274136, 32.247223>,  <39.620529, 36.749996, 31.753143>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.447208, 37.274136, 32.247223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.098660, 37.146252, 32.098366>,  <38.889530, 37.069523, 32.009052>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.098660, 37.146252, 32.098366>,  <39.447208, 37.274136, 32.247223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.098660, 37.146252, 32.098366> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459119, 0.263978, 0.848248,
		-0.172955, 0.910001, -0.376808,
		-0.871376, -0.319708, -0.372142,
		38.837246, 37.050339, 31.986723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878811, 37.794544, 32.293324>,  <39.447208, 37.274136, 32.247223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878811, 37.794544, 32.293324> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667336, 37.455273, 32.280155>,  <38.540451, 37.251709, 32.272255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.667336, 37.455273, 32.280155>,  <38.878811, 37.794544, 32.293324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.667336, 37.455273, 32.280155> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470678, 0.260671, 0.842919,
		-0.706361, 0.461141, -0.537032,
		-0.528693, -0.848174, -0.032921,
		38.508728, 37.200821, 32.270279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.223175, 37.984264, 32.266579>,  <38.878811, 37.794544, 32.293324>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.223175, 37.984264, 32.266579> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233856, 37.614174, 32.417973>,  <38.240265, 37.392120, 32.508808>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.233856, 37.614174, 32.417973>,  <38.223175, 37.984264, 32.266579>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.233856, 37.614174, 32.417973> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462688, 0.324179, 0.825123,
		-0.886119, -0.197149, -0.419435,
		0.026700, -0.925224, 0.378480,
		38.241867, 37.336605, 32.531517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.614025, 37.916336, 32.663883>,  <38.223175, 37.984264, 32.266579>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.614025, 37.916336, 32.663883> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829285, 37.599281, 32.778515>,  <37.958439, 37.409050, 32.847294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.829285, 37.599281, 32.778515>,  <37.614025, 37.916336, 32.663883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.829285, 37.599281, 32.778515> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160093, 0.237700, 0.958055,
		-0.827509, -0.561452, 0.001022,
		0.538145, -0.792635, 0.286583,
		37.990726, 37.361492, 32.864491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.178093, 37.543301, 33.063282>,  <37.614025, 37.916336, 32.663883>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.178093, 37.543301, 33.063282> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.534817, 37.405846, 33.180992>,  <37.748852, 37.323372, 33.251617>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.534817, 37.405846, 33.180992>,  <37.178093, 37.543301, 33.063282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.534817, 37.405846, 33.180992> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289061, 0.067591, 0.954922,
		-0.348034, -0.936668, -0.039053,
		0.891805, -0.343634, 0.294278,
		37.802357, 37.302757, 33.269276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.010548, 37.062172, 33.533302>,  <37.178093, 37.543301, 33.063282>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.010548, 37.062172, 33.533302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387085, 37.154099, 33.632141>,  <37.613007, 37.209255, 33.691444>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.387085, 37.154099, 33.632141>,  <37.010548, 37.062172, 33.533302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.387085, 37.154099, 33.632141> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268014, 0.064230, 0.961271,
		0.205048, -0.971111, 0.122058,
		0.941342, 0.229820, 0.247102,
		37.669487, 37.223045, 33.706272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.271156, 36.605358, 34.085369>,  <37.010548, 37.062172, 33.533302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.271156, 36.605358, 34.085369> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514187, 36.923058, 34.087059>,  <37.660007, 37.113678, 34.088074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.514187, 36.923058, 34.087059>,  <37.271156, 36.605358, 34.085369>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.514187, 36.923058, 34.087059> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192002, 0.141712, 0.971109,
		0.770703, -0.590836, 0.238599,
		0.607578, 0.794248, 0.004224,
		37.696461, 37.161331, 34.088326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.573860, 36.531944, 34.703365>,  <37.271156, 36.605358, 34.085369>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.573860, 36.531944, 34.703365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647675, 36.911171, 34.599743>,  <37.691963, 37.138706, 34.537571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.647675, 36.911171, 34.599743>,  <37.573860, 36.531944, 34.703365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.647675, 36.911171, 34.599743> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152360, 0.287990, 0.945435,
		0.970944, -0.135001, 0.197594,
		0.184540, 0.948070, -0.259053,
		37.703037, 37.195591, 34.522026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053375, 36.637836, 35.257366>,  <37.573860, 36.531944, 34.703365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053375, 36.637836, 35.257366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871098, 36.942635, 35.073318>,  <37.761730, 37.125511, 34.962891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.871098, 36.942635, 35.073318>,  <38.053375, 36.637836, 35.257366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871098, 36.942635, 35.073318> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260080, 0.380370, 0.887511,
		0.851291, 0.524105, 0.024845,
		-0.455699, 0.761993, -0.460115,
		37.734386, 37.171234, 34.935284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.218838, 36.290539, 26.877615> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880348, 36.496769, 26.931416>,  <38.677254, 36.620506, 26.963696>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880348, 36.496769, 26.931416>,  <39.218838, 36.290539, 26.877615>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880348, 36.496769, 26.931416> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208936, 0.088862, 0.973884,
		0.490161, 0.852222, -0.182920,
		-0.846220, 0.515578, 0.134503,
		38.626484, 36.651443, 26.971766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.385395, 36.952003, 27.214750>,  <39.218838, 36.290539, 26.877615>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.385395, 36.952003, 27.214750> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008419, 36.858082, 27.309975>,  <38.782234, 36.801727, 27.367109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008419, 36.858082, 27.309975>,  <39.385395, 36.952003, 27.214750>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008419, 36.858082, 27.309975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216470, 0.114181, 0.969589,
		-0.254846, 0.965313, -0.056781,
		-0.942440, -0.234805, 0.238060,
		38.725685, 36.787640, 27.381393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.271301, 37.344555, 27.733217>,  <39.385395, 36.952003, 27.214750>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.271301, 37.344555, 27.733217> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957695, 37.099964, 27.775944>,  <38.769531, 36.953209, 27.801579>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957695, 37.099964, 27.775944>,  <39.271301, 37.344555, 27.733217>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957695, 37.099964, 27.775944> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047891, 0.111978, 0.992556,
		-0.618890, 0.783296, -0.058508,
		-0.784017, -0.611480, 0.106815,
		38.722488, 36.916519, 27.807989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.840279, 37.617794, 28.226101>,  <39.271301, 37.344555, 27.733217>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.840279, 37.617794, 28.226101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738564, 37.232052, 28.255383>,  <38.677536, 37.000607, 28.272951>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.738564, 37.232052, 28.255383>,  <38.840279, 37.617794, 28.226101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.738564, 37.232052, 28.255383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.090954, 0.051510, 0.994522,
		-0.962843, 0.259549, 0.074614,
		-0.254284, -0.964355, 0.073203,
		38.662277, 36.942745, 28.277344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363461, 37.584007, 28.721098>,  <38.840279, 37.617794, 28.226101>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363461, 37.584007, 28.721098> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495907, 37.206970, 28.703789>,  <38.575375, 36.980747, 28.693403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495907, 37.206970, 28.703789>,  <38.363461, 37.584007, 28.721098>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.495907, 37.206970, 28.703789> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098043, -0.079979, 0.991963,
		-0.938482, -0.324214, -0.118898,
		0.331118, -0.942597, -0.043271,
		38.595242, 36.924191, 28.690807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.884361, 37.185345, 29.163538>,  <38.363461, 37.584007, 28.721098>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.884361, 37.185345, 29.163538> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200722, 36.942245, 29.134911>,  <38.390537, 36.796387, 29.117733>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.200722, 36.942245, 29.134911>,  <37.884361, 37.185345, 29.163538>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.200722, 36.942245, 29.134911> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030806, -0.156347, 0.987222,
		-0.611174, -0.778585, -0.142376,
		0.790897, -0.607751, -0.071570,
		38.437992, 36.759922, 29.113440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.712955, 36.558758, 29.520304>,  <37.884361, 37.185345, 29.163538>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.712955, 36.558758, 29.520304> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110252, 36.591530, 29.487408>,  <38.348629, 36.611195, 29.467670>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110252, 36.591530, 29.487408>,  <37.712955, 36.558758, 29.520304>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.110252, 36.591530, 29.487408> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089692, -0.091842, 0.991726,
		0.073703, -0.992397, -0.098570,
		0.993239, 0.081934, -0.082241,
		38.408222, 36.616112, 29.462736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.010468, 36.001667, 29.860460>,  <37.712955, 36.558758, 29.520304>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.010468, 36.001667, 29.860460> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314159, 36.261799, 29.850382>,  <38.496376, 36.417877, 29.844336>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314159, 36.261799, 29.850382>,  <38.010468, 36.001667, 29.860460>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.314159, 36.261799, 29.850382> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166962, -0.157214, 0.973349,
		0.629037, -0.743206, -0.227942,
		0.759234, 0.650330, -0.025194,
		38.541931, 36.456898, 29.842823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.522926, 35.745102, 30.389090>,  <38.010468, 36.001667, 29.860460>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.522926, 35.745102, 30.389090> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678699, 36.110439, 30.341520>,  <38.772163, 36.329643, 30.312979>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.678699, 36.110439, 30.341520>,  <38.522926, 35.745102, 30.389090>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678699, 36.110439, 30.341520> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178221, 0.051956, 0.982618,
		0.903649, -0.403855, -0.142544,
		0.389430, 0.913346, -0.118925,
		38.795528, 36.384441, 30.305843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.259838, 35.319496, 30.305380>,  <38.522926, 35.745102, 30.389090>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.259838, 35.319496, 30.305380> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551743, 35.047054, 30.329176>,  <39.726887, 34.883587, 30.343452>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.551743, 35.047054, 30.329176>,  <39.259838, 35.319496, 30.305380>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.551743, 35.047054, 30.329176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275210, -0.372284, -0.886377,
		0.625866, 0.630472, -0.459126,
		0.729761, -0.681109, 0.059488,
		39.770672, 34.842720, 30.347023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540123, 35.288544, 29.671900>,  <39.259838, 35.319496, 30.305380>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540123, 35.288544, 29.671900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624096, 34.941090, 29.851412>,  <39.674480, 34.732616, 29.959120>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624096, 34.941090, 29.851412>,  <39.540123, 35.288544, 29.671900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.624096, 34.941090, 29.851412> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298399, -0.494033, -0.816633,
		0.931067, 0.037523, -0.362914,
		0.209934, -0.868633, 0.448781,
		39.687077, 34.680500, 29.986046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.998936, 35.039677, 29.275301>,  <39.540123, 35.288544, 29.671900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.998936, 35.039677, 29.275301> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895206, 34.709846, 29.476431>,  <39.832970, 34.511948, 29.597109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.895206, 34.709846, 29.476431>,  <39.998936, 35.039677, 29.275301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895206, 34.709846, 29.476431> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314656, -0.420093, -0.851183,
		0.913095, -0.378948, -0.150517,
		-0.259323, -0.824573, 0.502823,
		39.817410, 34.462475, 29.627277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227867, 34.493843, 28.874853>,  <39.998936, 35.039677, 29.275301>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227867, 34.493843, 28.874853> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953609, 34.343193, 29.124023>,  <39.789055, 34.252804, 29.273525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953609, 34.343193, 29.124023>,  <40.227867, 34.493843, 28.874853>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.953609, 34.343193, 29.124023> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327497, -0.604649, -0.726047,
		0.650102, -0.701820, 0.291232,
		-0.685648, -0.376627, 0.622928,
		39.747913, 34.230206, 29.310902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.457790, 33.784401, 28.959885>,  <40.227867, 34.493843, 28.874853>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.457790, 33.784401, 28.959885> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072960, 33.802158, 29.067535>,  <39.842060, 33.812813, 29.132126>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.072960, 33.802158, 29.067535>,  <40.457790, 33.784401, 28.959885>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.072960, 33.802158, 29.067535> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211133, -0.745880, -0.631732,
		0.172695, -0.664599, 0.726969,
		-0.962080, 0.044390, 0.269129,
		39.784336, 33.815475, 29.148273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.158604, 33.021610, 28.887547>,  <40.457790, 33.784401, 28.959885>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.158604, 33.021610, 28.887547> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871834, 33.300465, 28.886234>,  <39.699772, 33.467777, 28.885447>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871834, 33.300465, 28.886234>,  <40.158604, 33.021610, 28.887547>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.871834, 33.300465, 28.886234> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484325, -0.501444, -0.716927,
		-0.501444, -0.512396, 0.697141,
		0.716927, -0.697141, 0.003280,
		39.656757, 33.509605, 28.885250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.533360, 32.578667, 28.733849>,  <40.158604, 33.021610, 28.887547>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.533360, 32.578667, 28.733849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437504, 32.952404, 28.628345>,  <39.379990, 33.176647, 28.565042>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437504, 32.952404, 28.628345>,  <39.533360, 32.578667, 28.733849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.437504, 32.952404, 28.628345> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436739, -0.346381, -0.830228,
		-0.867082, -0.083762, 0.491073,
		-0.239640, 0.934347, -0.263759,
		39.365612, 33.232708, 28.549217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889435, 32.523968, 28.585939>,  <39.533360, 32.578667, 28.733849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889435, 32.523968, 28.585939> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003197, 32.857731, 28.397102>,  <39.071453, 33.057987, 28.283800>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003197, 32.857731, 28.397102>,  <38.889435, 32.523968, 28.585939>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.003197, 32.857731, 28.397102> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515512, -0.282075, -0.809124,
		-0.808306, 0.473493, 0.349923,
		0.284409, 0.834409, -0.472094,
		39.088520, 33.108055, 28.255474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.342922, 32.821918, 28.110975>,  <38.889435, 32.523968, 28.585939>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.342922, 32.821918, 28.110975> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669415, 33.008198, 27.974213>,  <38.865311, 33.119965, 27.892155>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.669415, 33.008198, 27.974213>,  <38.342922, 32.821918, 28.110975>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.669415, 33.008198, 27.974213> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418050, 0.067622, -0.905904,
		-0.398754, 0.882358, 0.249878,
		0.816229, 0.465694, -0.341905,
		38.914284, 33.147907, 27.871641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056770, 33.316742, 27.695389>,  <38.342922, 32.821918, 28.110975>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056770, 33.316742, 27.695389> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425510, 33.235458, 27.563387>,  <38.646755, 33.186687, 27.484186>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425510, 33.235458, 27.563387>,  <38.056770, 33.316742, 27.695389>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.425510, 33.235458, 27.563387> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367292, -0.186391, -0.911238,
		0.123659, 0.961232, -0.246460,
		0.921849, -0.203205, -0.330004,
		38.702065, 33.174496, 27.464386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011665, 33.551029, 27.032557>,  <38.056770, 33.316742, 27.695389>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011665, 33.551029, 27.032557> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362041, 33.359386, 27.010000>,  <38.572269, 33.244400, 26.996468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.362041, 33.359386, 27.010000>,  <38.011665, 33.551029, 27.032557>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.362041, 33.359386, 27.010000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152406, -0.163932, -0.974627,
		0.457705, 0.862314, -0.216613,
		0.875944, -0.479105, -0.056389,
		38.624825, 33.215656, 26.993084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.364376, 33.974648, 26.472755>,  <38.011665, 33.551029, 27.032557>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.364376, 33.974648, 26.472755> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504917, 33.603752, 26.524563>,  <38.589241, 33.381214, 26.555647>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.504917, 33.603752, 26.524563>,  <38.364376, 33.974648, 26.472755>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.504917, 33.603752, 26.524563> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117557, -0.093549, -0.988650,
		0.928832, 0.362595, 0.076135,
		0.351357, -0.927240, 0.129517,
		38.610325, 33.325581, 26.563417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.954319, 33.965763, 26.011856>,  <38.364376, 33.974648, 26.472755>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.954319, 33.965763, 26.011856> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812374, 33.601215, 26.095264>,  <38.727207, 33.382488, 26.145309>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.812374, 33.601215, 26.095264>,  <38.954319, 33.965763, 26.011856>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.812374, 33.601215, 26.095264> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002136, -0.223826, -0.974627,
		0.934917, -0.345411, 0.081373,
		-0.354860, -0.911369, 0.208521,
		38.705917, 33.327805, 26.157820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354107, 33.641800, 25.579639>,  <38.954319, 33.965763, 26.011856>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354107, 33.641800, 25.579639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064701, 33.377342, 25.659048>,  <38.891056, 33.218666, 25.706694>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064701, 33.377342, 25.659048>,  <39.354107, 33.641800, 25.579639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.064701, 33.377342, 25.659048> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002511, -0.285060, -0.958506,
		0.690304, -0.693992, 0.204585,
		-0.723515, -0.661147, 0.198521,
		38.847645, 33.178997, 25.718605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<31.317541, 35.676399, 26.303188> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.708023, 35.762638, 26.312471>,  <31.942312, 35.814381, 26.318041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.708023, 35.762638, 26.312471>,  <31.317541, 35.676399, 26.303188>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.708023, 35.762638, 26.312471> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014048, -0.169671, 0.985400,
		0.216392, -0.961627, -0.168663,
		0.976206, 0.215602, 0.023206,
		32.000885, 35.827320, 26.319433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.694754, 35.104282, 26.648079>,  <31.317541, 35.676399, 26.303188>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.694754, 35.104282, 26.648079> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.919662, 35.434288, 26.670731>,  <32.054607, 35.632290, 26.684320>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.919662, 35.434288, 26.670731>,  <31.694754, 35.104282, 26.648079>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.919662, 35.434288, 26.670731> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177306, -0.187158, 0.966196,
		0.807720, -0.533226, -0.251513,
		0.562273, 0.825010, 0.056627,
		32.088345, 35.681789, 26.687719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.143208, 34.892319, 27.152534>,  <31.694754, 35.104282, 26.648079>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.143208, 34.892319, 27.152534> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.214268, 35.285320, 27.130135>,  <32.256905, 35.521122, 27.116695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.214268, 35.285320, 27.130135>,  <32.143208, 34.892319, 27.152534>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.214268, 35.285320, 27.130135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144014, 0.030337, 0.989111,
		0.973499, -0.183780, -0.136104,
		0.177650, 0.982499, -0.056000,
		32.267563, 35.580070, 27.113335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.795944, 35.050045, 27.492470>,  <32.143208, 34.892319, 27.152534>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.795944, 35.050045, 27.492470> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601627, 35.399567, 27.501173>,  <32.485035, 35.609280, 27.506395>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.601627, 35.399567, 27.501173>,  <32.795944, 35.050045, 27.492470>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601627, 35.399567, 27.501173> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085261, 0.022601, 0.996102,
		0.869903, 0.485758, -0.085481,
		-0.485797, 0.873801, 0.021756,
		32.455887, 35.661709, 27.507700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.188015, 35.559532, 27.868301>,  <32.795944, 35.050045, 27.492470>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.188015, 35.559532, 27.868301> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.825920, 35.729412, 27.873524>,  <32.608662, 35.831341, 27.876657>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.825920, 35.729412, 27.873524>,  <33.188015, 35.559532, 27.868301>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.825920, 35.729412, 27.873524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100189, 0.183487, 0.977903,
		0.412921, 0.886545, -0.208650,
		-0.905239, 0.424702, 0.013057,
		32.554348, 35.856823, 27.877441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.278088, 36.273796, 28.119926>,  <33.188015, 35.559532, 27.868301>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.278088, 36.273796, 28.119926> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.902088, 36.148273, 28.173485>,  <32.676487, 36.072960, 28.205620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.902088, 36.148273, 28.173485>,  <33.278088, 36.273796, 28.119926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902088, 36.148273, 28.173485> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053622, 0.251690, 0.966321,
		-0.336941, 0.915519, -0.219761,
		-0.939997, -0.313810, 0.133897,
		32.620090, 36.054131, 28.213654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050388, 36.814831, 28.524565>,  <33.278088, 36.273796, 28.119926>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050388, 36.814831, 28.524565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.829529, 36.488583, 28.593721>,  <32.697014, 36.292835, 28.635216>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.829529, 36.488583, 28.593721>,  <33.050388, 36.814831, 28.524565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.829529, 36.488583, 28.593721> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055390, 0.171025, 0.983708,
		-0.831902, 0.552732, -0.049255,
		-0.552151, -0.815621, 0.172892,
		32.663883, 36.243896, 28.645590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.628662, 37.122295, 28.983891>,  <33.050388, 36.814831, 28.524565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.628662, 37.122295, 28.983891> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.608276, 36.723278, 29.003122>,  <32.596046, 36.483868, 29.014662>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.608276, 36.723278, 29.003122>,  <32.628662, 37.122295, 28.983891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.608276, 36.723278, 29.003122> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014606, 0.047391, 0.998770,
		-0.998594, 0.051600, 0.012155,
		-0.050960, -0.997543, 0.048078,
		32.592987, 36.424015, 29.017546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.253895, 37.048031, 29.546337>,  <32.628662, 37.122295, 28.983891>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.253895, 37.048031, 29.546337> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.425888, 36.693264, 29.478813>,  <32.529083, 36.480404, 29.438299>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.425888, 36.693264, 29.478813>,  <32.253895, 37.048031, 29.546337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.425888, 36.693264, 29.478813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152375, -0.113004, 0.981841,
		-0.889887, -0.447895, 0.086554,
		0.429980, -0.886916, -0.168809,
		32.554882, 36.427189, 29.428171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.884146, 36.497963, 29.974878>,  <32.253895, 37.048031, 29.546337>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.884146, 36.497963, 29.974878> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.262169, 36.388630, 29.903154>,  <32.488983, 36.323029, 29.860121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.262169, 36.388630, 29.903154>,  <31.884146, 36.497963, 29.974878>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.262169, 36.388630, 29.903154> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160827, -0.088781, 0.982981,
		-0.284606, -0.957812, -0.039942,
		0.945058, -0.273339, -0.179310,
		32.545685, 36.306629, 29.849361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.038361, 36.028522, 30.533396>,  <31.884146, 36.497963, 29.974878>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.038361, 36.028522, 30.533396> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.396294, 36.089108, 30.365427>,  <32.611053, 36.125458, 30.264647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.396294, 36.089108, 30.365427>,  <32.038361, 36.028522, 30.533396>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.396294, 36.089108, 30.365427> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438099, -0.117394, 0.891228,
		0.085691, -0.981467, -0.171404,
		0.894833, 0.151462, -0.419920,
		32.664745, 36.134544, 30.239450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.456753, 35.401585, 30.642262>,  <32.038361, 36.028522, 30.533396>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.456753, 35.401585, 30.642262> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.695625, 35.717800, 30.587984>,  <32.838951, 35.907532, 30.555418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.695625, 35.717800, 30.587984>,  <32.456753, 35.401585, 30.642262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.695625, 35.717800, 30.587984> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361587, -0.114322, 0.925303,
		0.715979, -0.601641, -0.354122,
		0.597184, 0.790543, -0.135693,
		32.874779, 35.954964, 30.547276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.103207, 35.179031, 31.021349>,  <32.456753, 35.401585, 30.642262>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.103207, 35.179031, 31.021349> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127281, 35.577282, 30.992771>,  <33.141727, 35.816231, 30.975624>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.127281, 35.577282, 30.992771>,  <33.103207, 35.179031, 31.021349>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127281, 35.577282, 30.992771> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379292, 0.043396, 0.924259,
		0.923318, -0.082725, -0.375022,
		0.060185, 0.995627, -0.071445,
		33.145336, 35.875969, 30.971338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.855114, 35.382591, 31.312813>,  <33.103207, 35.179031, 31.021349>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.855114, 35.382591, 31.312813> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646297, 35.722744, 31.339117>,  <33.521008, 35.926834, 31.354900>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.646297, 35.722744, 31.339117>,  <33.855114, 35.382591, 31.312813>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.646297, 35.722744, 31.339117> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489721, 0.235725, 0.839409,
		0.698316, 0.470412, -0.539507,
		-0.522043, 0.850380, 0.065760,
		33.489685, 35.977859, 31.358845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493481, 35.229839, 30.974751>,  <33.855114, 35.382591, 31.312813>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493481, 35.229839, 30.974751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565479, 34.852142, 31.085035>,  <34.608677, 34.625526, 31.151205>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.565479, 34.852142, 31.085035>,  <34.493481, 35.229839, 30.974751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.565479, 34.852142, 31.085035> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447250, -0.328199, -0.832017,
		0.876110, 0.026445, -0.481385,
		0.179993, -0.944238, 0.275711,
		34.619476, 34.568871, 31.167749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.000126, 34.969139, 30.497866>,  <34.493481, 35.229839, 30.974751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.000126, 34.969139, 30.497866> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824554, 34.650707, 30.664524>,  <34.719212, 34.459648, 30.764519>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.824554, 34.650707, 30.664524>,  <35.000126, 34.969139, 30.497866>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824554, 34.650707, 30.664524> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196095, -0.367651, -0.909054,
		0.876861, -0.480715, 0.005266,
		-0.438932, -0.796082, 0.416645,
		34.692875, 34.411884, 30.789518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.405273, 34.457394, 30.347757>,  <35.000126, 34.969139, 30.497866>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.405273, 34.457394, 30.347757> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.028656, 34.339066, 30.412237>,  <34.802685, 34.268066, 30.450926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.028656, 34.339066, 30.412237>,  <35.405273, 34.457394, 30.347757>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028656, 34.339066, 30.412237> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066619, -0.305551, -0.949842,
		0.330241, -0.905056, 0.267982,
		-0.941543, -0.295824, 0.161200,
		34.746193, 34.250317, 30.460598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357349, 33.882500, 29.944366>,  <35.405273, 34.457394, 30.347757>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357349, 33.882500, 29.944366> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974354, 33.952187, 30.036331>,  <34.744556, 33.993999, 30.091511>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.974354, 33.952187, 30.036331>,  <35.357349, 33.882500, 29.944366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.974354, 33.952187, 30.036331> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286618, -0.484570, -0.826463,
		-0.032572, -0.857229, 0.513905,
		-0.957491, 0.174213, 0.229914,
		34.687107, 34.004452, 30.105305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.050049, 33.289776, 29.968676>,  <35.357349, 33.882500, 29.944366>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.050049, 33.289776, 29.968676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.737331, 33.531857, 29.908634>,  <34.549702, 33.677105, 29.872608>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.737331, 33.531857, 29.908634>,  <35.050049, 33.289776, 29.968676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.737331, 33.531857, 29.908634> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270126, -0.545697, -0.793251,
		-0.561990, -0.579609, 0.590102,
		-0.781792, 0.605201, -0.150108,
		34.502792, 33.713417, 29.863602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.495369, 32.931313, 29.754982>,  <35.050049, 33.289776, 29.968676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.495369, 32.931313, 29.754982> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396740, 33.299942, 29.635048>,  <34.337563, 33.521122, 29.563087>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.396740, 33.299942, 29.635048>,  <34.495369, 32.931313, 29.754982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.396740, 33.299942, 29.635048> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252176, -0.359742, -0.898328,
		-0.935740, -0.145893, 0.321102,
		-0.246574, 0.921575, -0.299834,
		34.322769, 33.576416, 29.545097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913673, 32.818604, 29.410822>,  <34.495369, 32.931313, 29.754982>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913673, 32.818604, 29.410822> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.037918, 33.168251, 29.261454>,  <34.112465, 33.378040, 29.171833>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.037918, 33.168251, 29.261454>,  <33.913673, 32.818604, 29.410822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.037918, 33.168251, 29.261454> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118068, -0.354332, -0.927637,
		-0.943177, 0.332222, -0.006854,
		0.310609, 0.874116, -0.373422,
		34.131100, 33.430485, 29.149427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.353786, 33.067764, 28.932991>,  <33.913673, 32.818604, 29.410822>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.353786, 33.067764, 28.932991> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685375, 33.272350, 28.842472>,  <33.884327, 33.395103, 28.788160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.685375, 33.272350, 28.842472>,  <33.353786, 33.067764, 28.932991>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.685375, 33.272350, 28.842472> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129393, -0.218257, -0.967275,
		-0.544119, 0.831124, -0.114749,
		0.828971, 0.511465, -0.226299,
		33.934067, 33.425789, 28.774582>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.149323, 33.591049, 28.492840>,  <33.353786, 33.067764, 28.932991>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.149323, 33.591049, 28.492840> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536331, 33.539993, 28.405569>,  <33.768536, 33.509361, 28.353207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.536331, 33.539993, 28.405569>,  <33.149323, 33.591049, 28.492840>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536331, 33.539993, 28.405569> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232819, -0.113876, -0.965830,
		0.098430, 0.985262, -0.139894,
		0.967526, -0.127636, -0.218179,
		33.826588, 33.501701, 28.340115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.306278, 34.076370, 28.020210>,  <33.149323, 33.591049, 28.492840>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.306278, 34.076370, 28.020210> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593044, 33.801460, 27.973433>,  <33.765106, 33.636513, 27.945366>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.593044, 33.801460, 27.973433>,  <33.306278, 34.076370, 28.020210>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.593044, 33.801460, 27.973433> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.278488, -0.128542, -0.951799,
		0.639118, 0.714931, -0.283553,
		0.716919, -0.687278, -0.116946,
		33.808121, 33.595276, 27.938349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.623547, 34.238678, 27.403570>,  <33.306278, 34.076370, 28.020210>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.623547, 34.238678, 27.403570> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749821, 33.862640, 27.455065>,  <33.825584, 33.637020, 27.485962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.749821, 33.862640, 27.455065>,  <33.623547, 34.238678, 27.403570>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.749821, 33.862640, 27.455065> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087992, -0.164093, -0.982512,
		0.944776, 0.298833, -0.134522,
		0.315682, -0.940091, 0.128736,
		33.844524, 33.580612, 27.493685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.268097, 34.187450, 27.042253>,  <33.623547, 34.238678, 27.403570>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.268097, 34.187450, 27.042253> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125164, 33.814056, 27.054388>,  <34.039406, 33.590019, 27.061668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.125164, 33.814056, 27.054388>,  <34.268097, 34.187450, 27.042253>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.125164, 33.814056, 27.054388> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218432, 0.051945, -0.974469,
		0.908077, -0.354833, -0.222464,
		-0.357330, -0.933486, 0.030337,
		34.017963, 33.534012, 27.063490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.625076, 33.838264, 26.469419>,  <34.268097, 34.187450, 27.042253>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.625076, 33.838264, 26.469419> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321842, 33.603737, 26.583643>,  <34.139904, 33.463020, 26.652178>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.321842, 33.603737, 26.583643>,  <34.625076, 33.838264, 26.469419>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.321842, 33.603737, 26.583643> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228840, -0.170877, -0.958349,
		0.610693, -0.791854, -0.004634,
		-0.758081, -0.586317, 0.285561,
		34.094418, 33.427841, 26.669312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.781433, 33.190826, 26.188837>,  <34.625076, 33.838264, 26.469419>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.781433, 33.190826, 26.188837> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.387875, 33.225384, 26.251415>,  <34.151737, 33.246120, 26.288963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.387875, 33.225384, 26.251415>,  <34.781433, 33.190826, 26.188837>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.387875, 33.225384, 26.251415> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169961, -0.181698, -0.968555,
		-0.055250, -0.979552, 0.193456,
		-0.983901, 0.086393, 0.156447,
		34.092705, 33.251301, 26.298349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.973038, 32.476696, 26.467060>,  <34.781433, 33.190826, 26.188837>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.973038, 32.476696, 26.467060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.098709, 32.100670, 26.414051>,  <35.174110, 31.875053, 26.382246>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.098709, 32.100670, 26.414051>,  <34.973038, 32.476696, 26.467060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.098709, 32.100670, 26.414051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253195, -0.051565, 0.966040,
		-0.914978, -0.337063, 0.221820,
		0.314178, -0.940069, -0.132523,
		35.192963, 31.818649, 26.374294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.746349, 32.060631, 27.114296>,  <34.973038, 32.476696, 26.467060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.746349, 32.060631, 27.114296> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052399, 31.844896, 26.973612>,  <35.236031, 31.715456, 26.889200>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.052399, 31.844896, 26.973612>,  <34.746349, 32.060631, 27.114296>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.052399, 31.844896, 26.973612> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451241, 0.059490, 0.890417,
		-0.459308, -0.839988, 0.288886,
		0.765126, -0.539333, -0.351713,
		35.281937, 31.683096, 26.868097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.759899, 31.450493, 27.488752>,  <34.746349, 32.060631, 27.114296>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.759899, 31.450493, 27.488752> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.134563, 31.441616, 27.348938>,  <35.359364, 31.436291, 27.265049>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.134563, 31.441616, 27.348938>,  <34.759899, 31.450493, 27.488752>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.134563, 31.441616, 27.348938> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331048, -0.269725, 0.904243,
		-0.114345, -0.962682, -0.245295,
		0.936660, -0.022191, -0.349535,
		35.415562, 31.434959, 27.244078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.064713, 30.861191, 27.764706>,  <34.759899, 31.450493, 27.488752>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.064713, 30.861191, 27.764706> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377029, 31.085861, 27.655251>,  <35.564419, 31.220663, 27.589577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.377029, 31.085861, 27.655251>,  <35.064713, 30.861191, 27.764706>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.377029, 31.085861, 27.655251> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441067, -0.185327, 0.878131,
		0.442515, -0.806332, -0.392440,
		0.780795, 0.561678, -0.273637,
		35.611267, 31.254364, 27.573160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617653, 30.458002, 28.022055>,  <35.064713, 30.861191, 27.764706>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617653, 30.458002, 28.022055> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773552, 30.818617, 27.946871>,  <35.867092, 31.034986, 27.901760>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.773552, 30.818617, 27.946871>,  <35.617653, 30.458002, 28.022055>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.773552, 30.818617, 27.946871> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674229, -0.140308, 0.725072,
		0.627307, -0.409321, -0.662527,
		0.389745, 0.901537, -0.187960,
		35.890476, 31.089079, 27.890482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.388699, 30.441217, 27.947443>,  <35.617653, 30.458002, 28.022055>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.388699, 30.441217, 27.947443> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280201, 30.808853, 28.061777>,  <36.215103, 31.029434, 28.130379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.280201, 30.808853, 28.061777>,  <36.388699, 30.441217, 27.947443>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280201, 30.808853, 28.061777> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608504, -0.066349, 0.790772,
		0.745755, 0.388424, -0.541273,
		-0.271242, 0.919089, 0.285838,
		36.198830, 31.084579, 28.147528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.008705, 30.619555, 28.299109>,  <36.388699, 30.441217, 27.947443>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.008705, 30.619555, 28.299109> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.772236, 30.925436, 28.401672>,  <36.630356, 31.108965, 28.463211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.772236, 30.925436, 28.401672>,  <37.008705, 30.619555, 28.299109>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.772236, 30.925436, 28.401672> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613289, 0.219730, 0.758680,
		0.523824, 0.605763, -0.598882,
		-0.591173, 0.764703, 0.256408,
		36.594883, 31.154846, 28.478594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.456596, 31.230873, 28.414404>,  <37.008705, 30.619555, 28.299109>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.456596, 31.230873, 28.414404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105778, 31.261078, 28.604179>,  <36.895287, 31.279200, 28.718044>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.105778, 31.261078, 28.604179>,  <37.456596, 31.230873, 28.414404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.105778, 31.261078, 28.604179> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478509, 0.225037, 0.848757,
		-0.042676, 0.971420, -0.233500,
		-0.877045, 0.075510, 0.474436,
		36.842663, 31.283731, 28.746510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.599487, 31.845572, 28.817265>,  <37.456596, 31.230873, 28.414404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.599487, 31.845572, 28.817265> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.288673, 31.666237, 28.993998>,  <37.102184, 31.558636, 29.100039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.288673, 31.666237, 28.993998>,  <37.599487, 31.845572, 28.817265>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.288673, 31.666237, 28.993998> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.360110, 0.259090, 0.896211,
		-0.516279, 0.855492, -0.039870,
		-0.777031, -0.448338, 0.441834,
		37.055565, 31.531736, 29.126547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284737, 32.332600, 29.215279>,  <37.599487, 31.845572, 28.817265>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284737, 32.332600, 29.215279> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203487, 31.963852, 29.347275>,  <37.154739, 31.742603, 29.426472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.203487, 31.963852, 29.347275>,  <37.284737, 32.332600, 29.215279>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.203487, 31.963852, 29.347275> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390474, 0.232794, 0.890695,
		-0.897926, 0.309772, 0.312682,
		-0.203122, -0.921872, 0.329990,
		37.142551, 31.687290, 29.446272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.771046, 32.400578, 29.774935>,  <37.284737, 32.332600, 29.215279>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.771046, 32.400578, 29.774935> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943970, 32.045799, 29.839972>,  <37.047726, 31.832932, 29.878994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.943970, 32.045799, 29.839972>,  <36.771046, 32.400578, 29.774935>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.943970, 32.045799, 29.839972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226279, 0.281248, 0.932576,
		-0.872872, -0.366371, 0.322283,
		0.432310, -0.886945, 0.162591,
		37.073662, 31.779716, 29.888748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.499725, 32.154022, 30.327841>,  <36.771046, 32.400578, 29.774935>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.499725, 32.154022, 30.327841> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865978, 31.997351, 30.291594>,  <37.085728, 31.903347, 30.269846>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.865978, 31.997351, 30.291594>,  <36.499725, 32.154022, 30.327841>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.865978, 31.997351, 30.291594> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205294, 0.261735, 0.943053,
		-0.345658, -0.882089, 0.320062,
		0.915628, -0.391681, -0.090616,
		37.140667, 31.879847, 30.264408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.584030, 31.805639, 30.938005>,  <36.499725, 32.154022, 30.327841>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.584030, 31.805639, 30.938005> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958504, 31.795187, 30.797787>,  <37.183186, 31.788916, 30.713655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.958504, 31.795187, 30.797787>,  <36.584030, 31.805639, 30.938005>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958504, 31.795187, 30.797787> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350074, -0.021027, 0.936486,
		-0.031860, -0.999437, -0.010530,
		0.936180, -0.026150, -0.350547,
		37.239357, 31.787348, 30.692623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.991680, 31.282488, 31.390921>,  <36.584030, 31.805639, 30.938005>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.991680, 31.282488, 31.390921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251095, 31.542877, 31.233116>,  <37.406742, 31.699110, 31.138433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.251095, 31.542877, 31.233116>,  <36.991680, 31.282488, 31.390921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.251095, 31.542877, 31.233116> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556508, -0.051884, 0.829221,
		0.519331, -0.757326, -0.395920,
		0.648532, 0.650973, -0.394513,
		37.445656, 31.738169, 31.114761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<39.410053, 32.653515, 25.235195> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033718, 32.741615, 25.338198>,  <38.807915, 32.794476, 25.400000>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.033718, 32.741615, 25.338198>,  <39.410053, 32.653515, 25.235195>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033718, 32.741615, 25.338198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334480, -0.482011, -0.809808,
		-0.054236, -0.848031, 0.527163,
		-0.940841, 0.220247, 0.257507,
		38.751465, 32.807690, 25.415449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935253, 32.075142, 24.960449>,  <39.410053, 32.653515, 25.235195>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935253, 32.075142, 24.960449> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.702431, 32.398750, 24.993176>,  <38.562737, 32.592915, 25.012812>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.702431, 32.398750, 24.993176>,  <38.935253, 32.075142, 24.960449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.702431, 32.398750, 24.993176> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494664, -0.272424, -0.825283,
		-0.645386, -0.520829, 0.558761,
		-0.582052, 0.809025, 0.081817,
		38.527817, 32.641457, 25.017721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304573, 31.860006, 24.728645>,  <38.935253, 32.075142, 24.960449>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304573, 31.860006, 24.728645> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309605, 32.256119, 24.673239>,  <38.312622, 32.493786, 24.639996>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.309605, 32.256119, 24.673239>,  <38.304573, 31.860006, 24.728645>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.309605, 32.256119, 24.673239> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383680, -0.123144, -0.915219,
		-0.923380, 0.064657, 0.378402,
		0.012577, 0.990280, -0.138516,
		38.313377, 32.553204, 24.631683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.725697, 31.904064, 24.523924>,  <38.304573, 31.860006, 24.728645>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.725697, 31.904064, 24.523924> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906315, 32.239151, 24.401070>,  <38.014687, 32.440205, 24.327358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.906315, 32.239151, 24.401070>,  <37.725697, 31.904064, 24.523924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.906315, 32.239151, 24.401070> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429462, -0.097669, -0.897788,
		-0.782092, 0.537296, 0.315666,
		0.451548, 0.837719, -0.307134,
		38.041779, 32.490467, 24.308929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.103451, 32.300175, 24.240919>,  <37.725697, 31.904064, 24.523924>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.103451, 32.300175, 24.240919> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422012, 32.496620, 24.099756>,  <37.613152, 32.614487, 24.015059>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.422012, 32.496620, 24.099756>,  <37.103451, 32.300175, 24.240919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.422012, 32.496620, 24.099756> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419439, 0.028170, -0.907347,
		-0.435670, 0.870639, 0.228427,
		0.796406, 0.491114, -0.352907,
		37.660934, 32.643955, 23.993885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881485, 32.946938, 23.818317>,  <37.103451, 32.300175, 24.240919>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881485, 32.946938, 23.818317> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240242, 32.818226, 23.696959>,  <37.455494, 32.741001, 23.624144>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.240242, 32.818226, 23.696959>,  <36.881485, 32.946938, 23.818317>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.240242, 32.818226, 23.696959> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.282903, 0.109879, -0.952834,
		0.339936, 0.940419, 0.007518,
		0.896889, -0.321775, -0.303399,
		37.509308, 32.721695, 23.605938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.937176, 33.298473, 23.174641>,  <36.881485, 32.946938, 23.818317>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.937176, 33.298473, 23.174641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190765, 32.989792, 23.194811>,  <37.342918, 32.804581, 23.206913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.190765, 32.989792, 23.194811>,  <36.937176, 33.298473, 23.174641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.190765, 32.989792, 23.194811> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109499, -0.154119, -0.981966,
		0.765561, 0.617022, -0.182209,
		0.633976, -0.771707, 0.050425,
		37.380959, 32.758278, 23.209938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295498, 33.284569, 22.550282>,  <36.937176, 33.298473, 23.174641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295498, 33.284569, 22.550282> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373024, 32.908257, 22.661547>,  <37.419540, 32.682468, 22.728306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.373024, 32.908257, 22.661547>,  <37.295498, 33.284569, 22.550282>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.373024, 32.908257, 22.661547> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341626, -0.330517, -0.879801,
		0.919634, 0.075492, -0.385454,
		0.193817, -0.940776, 0.278165,
		37.431168, 32.626022, 22.744997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451763, 32.830967, 21.944078>,  <37.295498, 33.284569, 22.550282>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451763, 32.830967, 21.944078> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335014, 32.561855, 22.216011>,  <37.264965, 32.400387, 22.379171>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.335014, 32.561855, 22.216011>,  <37.451763, 32.830967, 21.944078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.335014, 32.561855, 22.216011> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426838, -0.544455, -0.722065,
		0.855931, -0.500931, -0.128256,
		-0.291875, -0.672783, 0.679832,
		37.247452, 32.360020, 22.419960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.583126, 32.158169, 21.672785>,  <37.451763, 32.830967, 21.944078>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.583126, 32.158169, 21.672785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299831, 32.108540, 21.950779>,  <37.129852, 32.078762, 22.117575>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.299831, 32.108540, 21.950779>,  <37.583126, 32.158169, 21.672785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299831, 32.108540, 21.950779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557250, -0.506159, -0.658237,
		0.433439, -0.853470, 0.289344,
		-0.708239, -0.124069, 0.694985,
		37.087360, 32.071320, 22.159275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.390865, 31.510548, 21.485289>,  <37.583126, 32.158169, 21.672785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.390865, 31.510548, 21.485289> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115631, 31.693258, 21.710817>,  <36.950493, 31.802885, 21.846134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.115631, 31.693258, 21.710817>,  <37.390865, 31.510548, 21.485289>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.115631, 31.693258, 21.710817> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.716552, -0.305181, -0.627230,
		-0.114436, -0.835595, 0.537294,
		-0.688083, 0.456777, 0.563824,
		36.909206, 31.830292, 21.879965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.913147, 31.001156, 21.591997>,  <37.390865, 31.510548, 21.485289>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.913147, 31.001156, 21.591997> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736465, 31.357250, 21.636505>,  <36.630455, 31.570906, 21.663210>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.736465, 31.357250, 21.636505>,  <36.913147, 31.001156, 21.591997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736465, 31.357250, 21.636505> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759478, -0.305011, -0.574596,
		-0.477587, -0.338308, 0.810838,
		-0.441705, 0.890234, 0.111268,
		36.603954, 31.624321, 21.669886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167831, 31.047750, 21.815033>,  <36.913147, 31.001156, 21.591997>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167831, 31.047750, 21.815033> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248043, 31.365694, 21.585953>,  <36.296169, 31.556459, 21.448503>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.248043, 31.365694, 21.585953>,  <36.167831, 31.047750, 21.815033>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248043, 31.365694, 21.585953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847468, -0.152547, -0.508456,
		-0.491515, 0.587307, 0.643027,
		0.200528, 0.794859, -0.572703,
		36.308201, 31.604151, 21.414143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643467, 31.641569, 21.795332>,  <36.167831, 31.047750, 21.815033>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643467, 31.641569, 21.795332> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833569, 31.575605, 21.449629>,  <35.947628, 31.536028, 21.242207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.833569, 31.575605, 21.449629>,  <35.643467, 31.641569, 21.795332>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.833569, 31.575605, 21.449629> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.874971, -0.191880, -0.444531,
		-0.092526, 0.967464, -0.235483,
		0.475253, -0.164910, -0.864257,
		35.976143, 31.526133, 21.190351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.193356, 32.058960, 21.512062>,  <35.643467, 31.641569, 21.795332>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.193356, 32.058960, 21.512062> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087116, 31.849609, 21.188200>,  <35.023373, 31.723999, 20.993883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.087116, 31.849609, 21.188200>,  <35.193356, 32.058960, 21.512062>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.087116, 31.849609, 21.188200> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943481, -0.313795, -0.106656,
		-0.198243, -0.792220, 0.577137,
		-0.265598, -0.523374, -0.809653,
		35.007439, 31.692596, 20.945305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.549915, 31.861607, 21.084183>,  <35.193356, 32.058960, 21.512062>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.549915, 31.861607, 21.084183> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202827, 31.683601, 21.172754>,  <33.994576, 31.576797, 21.225897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.202827, 31.683601, 21.172754>,  <34.549915, 31.861607, 21.084183>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.202827, 31.683601, 21.172754> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176643, 0.140322, 0.974221,
		-0.464613, 0.884462, -0.043151,
		-0.867716, -0.445014, 0.221430,
		33.942513, 31.550097, 21.239183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144600, 32.309521, 21.602474>,  <34.549915, 31.861607, 21.084183>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144600, 32.309521, 21.602474> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051186, 31.921782, 21.633003>,  <33.995136, 31.689138, 21.651320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051186, 31.921782, 21.633003>,  <34.144600, 32.309521, 21.602474>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051186, 31.921782, 21.633003> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024006, 0.084216, 0.996158,
		-0.972053, 0.230803, -0.042937,
		-0.233532, -0.969349, 0.076322,
		33.981125, 31.630978, 21.655899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980740, 32.287201, 22.186304>,  <34.144600, 32.309521, 21.602474>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.980740, 32.287201, 22.186304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950108, 31.891563, 22.135981>,  <33.931728, 31.654181, 22.105787>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.950108, 31.891563, 22.135981>,  <33.980740, 32.287201, 22.186304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.950108, 31.891563, 22.135981> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016938, -0.124869, 0.992029,
		-0.996919, 0.078103, -0.007190,
		-0.076583, -0.989094, -0.125808,
		33.927132, 31.594835, 22.098238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510876, 31.905182, 22.751980>,  <33.980740, 32.287201, 22.186304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510876, 31.905182, 22.751980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756222, 31.613657, 22.630253>,  <33.903431, 31.438742, 22.557217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.756222, 31.613657, 22.630253>,  <33.510876, 31.905182, 22.751980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.756222, 31.613657, 22.630253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099440, -0.310981, 0.945200,
		-0.783512, -0.610016, -0.118273,
		0.613368, -0.728815, -0.304317,
		33.940231, 31.395012, 22.538958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.308762, 31.333471, 23.115915>,  <33.510876, 31.905182, 22.751980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.308762, 31.333471, 23.115915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688942, 31.263874, 23.012859>,  <33.917049, 31.222116, 22.951025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.688942, 31.263874, 23.012859>,  <33.308762, 31.333471, 23.115915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.688942, 31.263874, 23.012859> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240649, -0.112927, 0.964021,
		-0.196827, -0.978251, -0.065460,
		0.950446, -0.173992, -0.257642,
		33.974075, 31.211678, 22.935566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.470421, 30.841326, 23.535959>,  <33.308762, 31.333471, 23.115915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.470421, 30.841326, 23.535959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813183, 31.004553, 23.409983>,  <34.018841, 31.102489, 23.334396>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.813183, 31.004553, 23.409983>,  <33.470421, 30.841326, 23.535959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.813183, 31.004553, 23.409983> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374063, -0.071898, 0.924612,
		0.354659, -0.910117, -0.214252,
		0.856909, 0.408066, -0.314942,
		34.070255, 31.126972, 23.315500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.023853, 30.430410, 23.906055>,  <33.470421, 30.841326, 23.535959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.023853, 30.430410, 23.906055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209991, 30.757309, 23.770077>,  <34.321674, 30.953447, 23.688490>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.209991, 30.757309, 23.770077>,  <34.023853, 30.430410, 23.906055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.209991, 30.757309, 23.770077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538260, 0.043612, 0.841650,
		0.702661, -0.574636, -0.419597,
		0.465343, 0.817246, -0.339948,
		34.349594, 31.002483, 23.668093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.605103, 30.352795, 24.183212>,  <34.023853, 30.430410, 23.906055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.605103, 30.352795, 24.183212> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634117, 30.741600, 24.093834>,  <34.651527, 30.974884, 24.040207>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.634117, 30.741600, 24.093834>,  <34.605103, 30.352795, 24.183212>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.634117, 30.741600, 24.093834> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.430930, 0.171499, 0.885939,
		0.899465, -0.160554, -0.406429,
		0.072539, 0.972014, -0.223445,
		34.655880, 31.033205, 24.026800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.272121, 30.614752, 24.283768>,  <34.605103, 30.352795, 24.183212>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.272121, 30.614752, 24.283768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042702, 30.941021, 24.314037>,  <34.905052, 31.136782, 24.332199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.042702, 30.941021, 24.314037>,  <35.272121, 30.614752, 24.283768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.042702, 30.941021, 24.314037> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422884, 0.215698, 0.880138,
		0.701581, 0.536801, -0.468647,
		-0.573545, 0.815671, 0.075675,
		34.870640, 31.185722, 24.336740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.764297, 31.036179, 24.583427>,  <35.272121, 30.614752, 24.283768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.764297, 31.036179, 24.583427> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411461, 31.216957, 24.636583>,  <35.199760, 31.325424, 24.668476>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.411461, 31.216957, 24.636583>,  <35.764297, 31.036179, 24.583427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.411461, 31.216957, 24.636583> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.305658, 0.334444, 0.891471,
		0.358453, 0.826977, -0.433151,
		-0.882091, 0.451946, 0.132890,
		35.146835, 31.352541, 24.676451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849270, 31.786516, 24.762817>,  <35.764297, 31.036179, 24.583427>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849270, 31.786516, 24.762817> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500042, 31.660061, 24.911303>,  <35.290504, 31.584187, 25.000393>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.500042, 31.660061, 24.911303>,  <35.849270, 31.786516, 24.762817>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.500042, 31.660061, 24.911303> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270658, 0.319034, 0.908274,
		-0.405571, 0.893461, -0.192974,
		-0.873073, -0.316139, 0.371213,
		35.238121, 31.565220, 25.022667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.888432, 32.092247, 25.320862>,  <35.849270, 31.786516, 24.762817>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.888432, 32.092247, 25.320862> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.572769, 31.856236, 25.389095>,  <35.383373, 31.714628, 25.430035>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.572769, 31.856236, 25.389095>,  <35.888432, 32.092247, 25.320862>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572769, 31.856236, 25.389095> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137642, 0.100778, 0.985342,
		-0.598569, 0.801069, 0.001683,
		-0.789157, -0.590027, 0.170583,
		35.336021, 31.679228, 25.440269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284298, 32.494938, 25.675388>,  <35.888432, 32.092247, 25.320862>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284298, 32.494938, 25.675388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280365, 32.112083, 25.791178>,  <35.278008, 31.882372, 25.860651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.280365, 32.112083, 25.791178>,  <35.284298, 32.494938, 25.675388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.280365, 32.112083, 25.791178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034593, 0.289641, 0.956510,
		-0.999353, -0.000613, -0.035957,
		-0.009828, -0.957135, 0.289475,
		35.277416, 31.824944, 25.878019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.510113, 32.666008, 25.791679>,  <35.284298, 32.494938, 25.675388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.510113, 32.666008, 25.791679> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179359, 32.882191, 25.853865>,  <33.980907, 33.011902, 25.891176>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.179359, 32.882191, 25.853865>,  <34.510113, 32.666008, 25.791679>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.179359, 32.882191, 25.853865> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330679, -0.243658, -0.911747,
		-0.454882, -0.805316, 0.380195,
		-0.826882, 0.540460, 0.155465,
		33.931293, 33.044327, 25.900505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.832520, 32.255566, 25.561569>,  <34.510113, 32.666008, 25.791679>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.832520, 32.255566, 25.561569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726772, 32.640450, 25.587666>,  <33.663322, 32.871380, 25.603323>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.726772, 32.640450, 25.587666>,  <33.832520, 32.255566, 25.561569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.726772, 32.640450, 25.587666> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354373, -0.034003, -0.934486,
		-0.896954, -0.270172, 0.349971,
		-0.264372, 0.962211, 0.065243,
		33.647461, 32.929111, 25.607239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.135612, 32.300007, 25.230742>,  <33.832520, 32.255566, 25.561569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.135612, 32.300007, 25.230742> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269123, 32.676315, 25.206915>,  <33.349228, 32.902100, 25.192619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.269123, 32.676315, 25.206915>,  <33.135612, 32.300007, 25.230742>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269123, 32.676315, 25.206915> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398810, 0.083672, -0.913208,
		-0.854135, 0.328559, 0.403116,
		0.333773, 0.940770, -0.059565,
		33.369255, 32.958546, 25.189045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623867, 32.770710, 24.879864>,  <33.135612, 32.300007, 25.230742>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623867, 32.770710, 24.879864> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937305, 33.017288, 24.848930>,  <33.125366, 33.165234, 24.830370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.937305, 33.017288, 24.848930>,  <32.623867, 32.770710, 24.879864>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.937305, 33.017288, 24.848930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391457, 0.393232, -0.831944,
		-0.482436, 0.682177, 0.549444,
		0.783592, 0.616444, -0.077334,
		33.172382, 33.202221, 24.825729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.428127, 33.431305, 24.879990>,  <32.623867, 32.770710, 24.879864>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.428127, 33.431305, 24.879990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785294, 33.435848, 24.699955>,  <32.999592, 33.438576, 24.591934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.785294, 33.435848, 24.699955>,  <32.428127, 33.431305, 24.879990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.785294, 33.435848, 24.699955> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400353, 0.477371, -0.782198,
		0.205974, 0.878628, 0.430798,
		0.892912, 0.011359, -0.450088,
		33.053165, 33.439255, 24.564928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.542255, 34.171482, 24.530113>,  <32.428127, 33.431305, 24.879990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.542255, 34.171482, 24.530113> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795906, 33.916855, 24.354538>,  <32.948097, 33.764080, 24.249193>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.795906, 33.916855, 24.354538>,  <32.542255, 34.171482, 24.530113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795906, 33.916855, 24.354538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320604, 0.300115, -0.898412,
		0.703629, 0.710434, -0.013774,
		0.634128, -0.636565, -0.438938,
		32.986145, 33.725883, 24.222857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.869331, 34.491596, 23.913841>,  <32.542255, 34.171482, 24.530113>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.869331, 34.491596, 23.913841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922771, 34.103230, 23.834362>,  <32.954834, 33.870209, 23.786674>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.922771, 34.103230, 23.834362>,  <32.869331, 34.491596, 23.913841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922771, 34.103230, 23.834362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091572, 0.187543, -0.977979,
		0.986796, 0.148853, -0.063852,
		0.133600, -0.970912, -0.198697,
		32.962852, 33.811954, 23.774754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071644, 35.095806, 23.485537>,  <32.869331, 34.491596, 23.913841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071644, 35.095806, 23.485537> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793114, 35.377747, 23.539660>,  <32.625996, 35.546913, 23.572134>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.793114, 35.377747, 23.539660>,  <33.071644, 35.095806, 23.485537>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.793114, 35.377747, 23.539660> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231664, 0.042293, 0.971876,
		0.679310, 0.708089, -0.192739,
		-0.696326, 0.704856, 0.135309,
		32.584217, 35.589203, 23.580252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.268749, 35.679970, 23.719967>,  <33.071644, 35.095806, 23.485537>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.268749, 35.679970, 23.719967> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887066, 35.727879, 23.829613>,  <32.658054, 35.756622, 23.895401>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.887066, 35.727879, 23.829613>,  <33.268749, 35.679970, 23.719967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.887066, 35.727879, 23.829613> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289153, 0.134519, 0.947784,
		0.076644, 0.983646, -0.162991,
		-0.954210, 0.119771, 0.274114,
		32.600803, 35.763809, 23.911846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338882, 36.245399, 24.301964>,  <33.268749, 35.679970, 23.719967>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338882, 36.245399, 24.301964> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977089, 36.075531, 24.286114>,  <32.760014, 35.973610, 24.276604>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.977089, 36.075531, 24.286114>,  <33.338882, 36.245399, 24.301964>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.977089, 36.075531, 24.286114> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098624, 0.117859, 0.988121,
		-0.414952, 0.897646, -0.148484,
		-0.904482, -0.424666, -0.039624,
		32.705746, 35.948132, 24.274227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011669, 36.521427, 24.868675>,  <33.338882, 36.245399, 24.301964>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011669, 36.521427, 24.868675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770473, 36.215843, 24.776789>,  <32.625755, 36.032494, 24.721657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.770473, 36.215843, 24.776789>,  <33.011669, 36.521427, 24.868675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.770473, 36.215843, 24.776789> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392295, 0.033229, 0.919239,
		-0.694627, 0.644410, -0.319734,
		-0.602991, -0.763958, -0.229717,
		32.589577, 35.986656, 24.707874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.442493, 36.762695, 25.040247>,  <33.011669, 36.521427, 24.868675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.442493, 36.762695, 25.040247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397156, 36.365311, 25.045835>,  <32.369953, 36.126881, 25.049189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.397156, 36.365311, 25.045835>,  <32.442493, 36.762695, 25.040247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.397156, 36.365311, 25.045835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536708, 0.073055, 0.840600,
		-0.836121, 0.087781, -0.541477,
		-0.113346, -0.993458, 0.013970,
		32.363152, 36.067272, 25.050026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772846, 36.626621, 25.215727>,  <32.442493, 36.762695, 25.040247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772846, 36.626621, 25.215727> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984444, 36.304665, 25.323298>,  <32.111401, 36.111492, 25.387840>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.984444, 36.304665, 25.323298>,  <31.772846, 36.626621, 25.215727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984444, 36.304665, 25.323298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314746, 0.108208, 0.942988,
		-0.788099, -0.583479, -0.196094,
		0.528995, -0.804887, 0.268926,
		32.143143, 36.063198, 25.403975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.370247, 36.208683, 25.734041>,  <31.772846, 36.626621, 25.215727>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.370247, 36.208683, 25.734041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743917, 36.094505, 25.819679>,  <31.968119, 36.025997, 25.871061>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.743917, 36.094505, 25.819679>,  <31.370247, 36.208683, 25.734041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.743917, 36.094505, 25.819679> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219242, 0.014197, 0.975567,
		-0.281513, -0.958289, -0.049320,
		0.934175, -0.285448, 0.214093,
		32.024170, 36.008873, 25.883907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<35.415382, 34.424767, 21.232136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469612, 34.111980, 21.475494>,  <35.502151, 33.924309, 21.621510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.469612, 34.111980, 21.475494>,  <35.415382, 34.424767, 21.232136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.469612, 34.111980, 21.475494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105226, 0.621958, 0.775948,
		-0.985163, -0.041182, 0.166607,
		0.135578, -0.781967, 0.608397,
		35.510284, 33.877392, 21.658014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.107002, 34.662891, 21.736115>,  <35.415382, 34.424767, 21.232136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.107002, 34.662891, 21.736115> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323387, 34.365871, 21.894091>,  <35.453220, 34.187660, 21.988876>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.323387, 34.365871, 21.894091>,  <35.107002, 34.662891, 21.736115>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.323387, 34.365871, 21.894091> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144070, 0.544455, 0.826324,
		-0.828613, -0.390115, 0.401511,
		0.540966, -0.742549, 0.394939,
		35.485676, 34.143108, 22.012571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698486, 34.534531, 22.376535>,  <35.107002, 34.662891, 21.736115>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698486, 34.534531, 22.376535> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074471, 34.402874, 22.412634>,  <35.300060, 34.323879, 22.434294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.074471, 34.402874, 22.412634>,  <34.698486, 34.534531, 22.376535>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.074471, 34.402874, 22.412634> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122037, 0.571079, 0.811773,
		-0.318729, -0.752018, 0.576958,
		0.939957, -0.329146, 0.090245,
		35.356457, 34.304131, 22.439707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.810555, 34.419670, 22.998676>,  <34.698486, 34.534531, 22.376535>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.810555, 34.419670, 22.998676> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.190754, 34.452187, 22.878719>,  <35.418873, 34.471695, 22.806746>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.190754, 34.452187, 22.878719>,  <34.810555, 34.419670, 22.998676>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.190754, 34.452187, 22.878719> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200394, 0.577223, 0.791616,
		0.237457, -0.812530, 0.532362,
		0.950503, 0.081292, -0.299892,
		35.475906, 34.476574, 22.788752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.406292, 34.074467, 23.512217>,  <34.810555, 34.419670, 22.998676>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.406292, 34.074467, 23.512217> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.617485, 34.332935, 23.291784>,  <35.744202, 34.488018, 23.159525>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.617485, 34.332935, 23.291784>,  <35.406292, 34.074467, 23.512217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617485, 34.332935, 23.291784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508254, 0.279440, 0.814611,
		0.680374, -0.710193, -0.180879,
		0.527987, 0.646173, -0.551082,
		35.775883, 34.526787, 23.126459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106346, 34.112473, 23.772863>,  <35.406292, 34.074467, 23.512217>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106346, 34.112473, 23.772863> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.114605, 34.457695, 23.570986>,  <36.119560, 34.664829, 23.449860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.114605, 34.457695, 23.570986>,  <36.106346, 34.112473, 23.772863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.114605, 34.457695, 23.570986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474814, 0.435775, 0.764625,
		0.879844, -0.255425, -0.400790,
		0.020650, 0.863052, -0.504693,
		36.120800, 34.716610, 23.419579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.809361, 34.369331, 23.951637>,  <36.106346, 34.112473, 23.772863>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.809361, 34.369331, 23.951637> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.591015, 34.670654, 23.804903>,  <36.460007, 34.851448, 23.716864>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.591015, 34.670654, 23.804903>,  <36.809361, 34.369331, 23.951637>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591015, 34.670654, 23.804903> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456569, 0.634529, 0.623634,
		0.702553, 0.172933, -0.690300,
		-0.545862, 0.753304, -0.366834,
		36.427258, 34.896645, 23.694853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.255917, 34.867283, 23.687157>,  <36.809361, 34.369331, 23.951637>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.255917, 34.867283, 23.687157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913700, 35.062351, 23.756710>,  <36.708370, 35.179390, 23.798441>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.913700, 35.062351, 23.756710>,  <37.255917, 34.867283, 23.687157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.913700, 35.062351, 23.756710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465978, 0.578900, 0.669133,
		0.225654, 0.653494, -0.722514,
		-0.855538, 0.487668, 0.173882,
		36.657040, 35.208652, 23.808874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.367668, 35.628979, 23.440063>,  <37.255917, 34.867283, 23.687157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.367668, 35.628979, 23.440063> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.084793, 35.592220, 23.720474>,  <36.915070, 35.570164, 23.888721>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.084793, 35.592220, 23.720474>,  <37.367668, 35.628979, 23.440063>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084793, 35.592220, 23.720474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388825, 0.777566, 0.494172,
		-0.590507, 0.622050, -0.514155,
		-0.707189, -0.091895, 0.701027,
		36.872635, 35.564651, 23.930782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.363586, 36.274307, 23.693563>,  <37.367668, 35.628979, 23.440063>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.363586, 36.274307, 23.693563> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153561, 36.066360, 23.963095>,  <37.027546, 35.941593, 24.124813>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.153561, 36.066360, 23.963095>,  <37.363586, 36.274307, 23.693563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.153561, 36.066360, 23.963095> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354752, 0.585995, 0.728534,
		-0.773603, 0.621567, -0.123259,
		-0.525062, -0.519869, 0.673829,
		36.996040, 35.910400, 24.165243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.980816, 36.755615, 24.118755>,  <37.363586, 36.274307, 23.693563>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.980816, 36.755615, 24.118755> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.011978, 36.420860, 24.335474>,  <37.030678, 36.220005, 24.465506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<37.011978, 36.420860, 24.335474>,  <36.980816, 36.755615, 24.118755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011978, 36.420860, 24.335474> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342293, 0.532869, 0.773877,
		-0.936358, 0.125161, 0.327977,
		0.077910, -0.836890, 0.541798,
		37.035351, 36.169792, 24.498013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.775703, 36.923405, 24.726931>,  <36.980816, 36.755615, 24.118755>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.775703, 36.923405, 24.726931> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.951492, 36.580799, 24.835186>,  <37.056965, 36.375237, 24.900139>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<36.951492, 36.580799, 24.835186>,  <36.775703, 36.923405, 24.726931>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.951492, 36.580799, 24.835186> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431109, 0.465441, 0.772987,
		-0.788043, -0.223028, 0.573799,
		0.439468, -0.856518, 0.270638,
		37.083332, 36.323845, 24.916378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.008167, 36.775360, 24.540382>,  <36.775703, 36.923405, 24.726931>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.008167, 36.775360, 24.540382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.687065, 37.013721, 24.531542>,  <35.494404, 37.156738, 24.526237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.687065, 37.013721, 24.531542>,  <36.008167, 36.775360, 24.540382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.687065, 37.013721, 24.531542> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257278, -0.379543, -0.888682,
		-0.537959, -0.707703, 0.457992,
		-0.802750, 0.595905, -0.022102,
		35.446239, 37.192493, 24.524912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376244, 36.455338, 24.348989>,  <36.008167, 36.775360, 24.540382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376244, 36.455338, 24.348989> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.291462, 36.832485, 24.246166>,  <35.240593, 37.058773, 24.184473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.291462, 36.832485, 24.246166>,  <35.376244, 36.455338, 24.348989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.291462, 36.832485, 24.246166> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284324, -0.311148, -0.906833,
		-0.935006, -0.119120, 0.334029,
		-0.211954, 0.942867, -0.257057,
		35.227875, 37.115345, 24.169048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.736118, 36.444378, 24.006172>,  <35.376244, 36.455338, 24.348989>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.736118, 36.444378, 24.006172> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.884319, 36.803120, 23.909527>,  <34.973240, 37.018364, 23.851540>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.884319, 36.803120, 23.909527>,  <34.736118, 36.444378, 24.006172>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.884319, 36.803120, 23.909527> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173326, -0.188801, -0.966598,
		-0.912517, 0.400003, 0.085498,
		0.370500, 0.896857, -0.241615,
		34.995468, 37.072178, 23.837042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.284668, 36.741428, 23.486164>,  <34.736118, 36.444378, 24.006172>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.284668, 36.741428, 23.486164> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.631218, 36.937698, 23.448986>,  <34.839146, 37.055458, 23.426680>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.631218, 36.937698, 23.448986>,  <34.284668, 36.741428, 23.486164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.631218, 36.937698, 23.448986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185713, 0.143784, -0.972027,
		-0.463583, 0.859399, 0.215695,
		0.866372, 0.490673, -0.092946,
		34.891129, 37.084900, 23.421103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.096535, 37.421608, 23.060169>,  <34.284668, 36.741428, 23.486164>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.096535, 37.421608, 23.060169> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.491806, 37.371410, 23.024935>,  <34.728970, 37.341290, 23.003794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.491806, 37.371410, 23.024935>,  <34.096535, 37.421608, 23.060169>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491806, 37.371410, 23.024935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041185, 0.336122, -0.940917,
		0.147691, 0.933419, 0.326979,
		0.988176, -0.125499, -0.088086,
		34.788258, 37.333759, 22.998508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.352432, 38.017673, 22.750111>,  <34.096535, 37.421608, 23.060169>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.352432, 38.017673, 22.750111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.618065, 37.729973, 22.668453>,  <34.777443, 37.557354, 22.619459>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.618065, 37.729973, 22.668453>,  <34.352432, 38.017673, 22.750111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.618065, 37.729973, 22.668453> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038681, 0.239628, -0.970094,
		0.746659, 0.652118, 0.131312,
		0.664082, -0.719250, -0.204144,
		34.817291, 37.514198, 22.607210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761269, 38.297009, 22.159002>,  <34.352432, 38.017673, 22.750111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761269, 38.297009, 22.159002> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.813774, 37.900478, 22.156321>,  <34.845276, 37.662560, 22.154711>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.813774, 37.900478, 22.156321>,  <34.761269, 38.297009, 22.159002>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.813774, 37.900478, 22.156321> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053361, -0.000313, -0.998576,
		0.989910, 0.131435, -0.052939,
		0.131264, -0.991325, -0.006704,
		34.853153, 37.603081, 22.154310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.322723, 38.175945, 21.628145>,  <34.761269, 38.297009, 22.159002>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.322723, 38.175945, 21.628145> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.126984, 37.830158, 21.674160>,  <35.009541, 37.622684, 21.701769>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.126984, 37.830158, 21.674160>,  <35.322723, 38.175945, 21.628145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.126984, 37.830158, 21.674160> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042803, -0.155558, -0.986899,
		0.871038, -0.478012, 0.113123,
		-0.489347, -0.864469, 0.115037,
		34.980179, 37.570816, 21.708672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.598900, 37.822033, 21.163906>,  <35.322723, 38.175945, 21.628145>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.598900, 37.822033, 21.163906> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.258160, 37.620689, 21.221844>,  <35.053715, 37.499882, 21.256605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.258160, 37.620689, 21.221844>,  <35.598900, 37.822033, 21.163906>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.258160, 37.620689, 21.221844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090465, -0.130985, -0.987248,
		0.515913, -0.854091, 0.066043,
		-0.851850, -0.503360, 0.144842,
		35.002605, 37.469681, 21.265297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.602730, 37.137188, 20.772678>,  <35.598900, 37.822033, 21.163906>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.602730, 37.137188, 20.772678> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.216999, 37.223938, 20.833389>,  <34.985561, 37.275986, 20.869816>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<35.216999, 37.223938, 20.833389>,  <35.602730, 37.137188, 20.772678>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.216999, 37.223938, 20.833389> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214162, -0.302222, -0.928868,
		-0.155576, -0.928239, 0.337888,
		-0.964329, 0.216872, 0.151775,
		34.927700, 37.289001, 20.878922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.257652, 36.650105, 20.371454>,  <35.602730, 37.137188, 20.772678>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.257652, 36.650105, 20.371454> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.957729, 36.908901, 20.426857>,  <34.777775, 37.064178, 20.460098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.957729, 36.908901, 20.426857>,  <35.257652, 36.650105, 20.371454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.957729, 36.908901, 20.426857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387390, -0.259575, -0.884619,
		-0.536389, -0.716953, 0.445270,
		-0.749811, 0.646993, 0.138507,
		34.732784, 37.103001, 20.468409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.596733, 36.273468, 20.409616>,  <35.257652, 36.650105, 20.371454>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.596733, 36.273468, 20.409616> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.549702, 36.649990, 20.283045>,  <34.521484, 36.875904, 20.207102>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.549702, 36.649990, 20.283045>,  <34.596733, 36.273468, 20.409616>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549702, 36.649990, 20.283045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418775, -0.335919, -0.843674,
		-0.900446, 0.033318, 0.433689,
		-0.117575, 0.941301, -0.316429,
		34.514431, 36.932381, 20.188116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.936012, 36.453945, 20.332470>,  <34.596733, 36.273468, 20.409616>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.936012, 36.453945, 20.332470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.156326, 36.645145, 20.058784>,  <34.288517, 36.759865, 19.894573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.156326, 36.645145, 20.058784>,  <33.936012, 36.453945, 20.332470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.156326, 36.645145, 20.058784> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505653, -0.461101, -0.729178,
		-0.664038, 0.747598, -0.012267,
		0.550788, 0.477999, -0.684214,
		34.321564, 36.788544, 19.853519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.230225, 35.954414, 20.456791>,  <33.936012, 36.453945, 20.332470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.230225, 35.954414, 20.456791> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.831398, 35.984352, 20.463089>,  <32.592102, 36.002316, 20.466867>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.831398, 35.984352, 20.463089>,  <33.230225, 35.954414, 20.456791>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.831398, 35.984352, 20.463089> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022250, 0.086896, 0.995969,
		0.073179, 0.993402, -0.088307,
		-0.997071, 0.074849, 0.015744,
		32.532276, 36.006805, 20.467812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.979424, 36.581875, 20.825413>,  <33.230225, 35.954414, 20.456791>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.979424, 36.581875, 20.825413> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.703693, 36.296688, 20.876799>,  <32.538254, 36.125576, 20.907631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.703693, 36.296688, 20.876799>,  <32.979424, 36.581875, 20.825413>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.703693, 36.296688, 20.876799> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028354, 0.203744, 0.978613,
		-0.723894, 0.670944, -0.160662,
		-0.689328, -0.712968, 0.128465,
		32.496895, 36.082798, 20.915339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.431297, 36.856110, 21.269583>,  <32.979424, 36.581875, 20.825413>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.431297, 36.856110, 21.269583> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.392990, 36.459705, 21.306931>,  <32.370007, 36.221863, 21.329338>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.392990, 36.459705, 21.306931>,  <32.431297, 36.856110, 21.269583>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.392990, 36.459705, 21.306931> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248012, 0.114597, 0.961955,
		-0.964012, 0.068970, -0.256759,
		-0.095770, -0.991015, 0.093368,
		32.364258, 36.162399, 21.334940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.733471, 36.758060, 21.600912>,  <32.431297, 36.856110, 21.269583>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.733471, 36.758060, 21.600912> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.974625, 36.443253, 21.653278>,  <32.119316, 36.254368, 21.684698>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.974625, 36.443253, 21.653278>,  <31.733471, 36.758060, 21.600912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.974625, 36.443253, 21.653278> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214186, -0.001592, 0.976792,
		-0.768543, -0.616930, -0.169528,
		0.602882, -0.787017, 0.130914,
		32.155491, 36.207150, 21.692553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.411615, 36.204388, 22.133343>,  <31.733471, 36.758060, 21.600912>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.411615, 36.204388, 22.133343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.806717, 36.147507, 22.107655>,  <32.043777, 36.113380, 22.092241>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.806717, 36.147507, 22.107655>,  <31.411615, 36.204388, 22.133343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.806717, 36.147507, 22.107655> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032556, -0.214713, 0.976135,
		-0.152592, -0.966270, -0.207454,
		0.987753, -0.142196, -0.064221,
		32.103043, 36.104847, 22.088388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.537756, 35.591450, 22.534395>,  <31.411615, 36.204388, 22.133343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.537756, 35.591450, 22.534395> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882101, 35.794014, 22.514536>,  <32.088707, 35.915550, 22.502621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.882101, 35.794014, 22.514536>,  <31.537756, 35.591450, 22.534395>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.882101, 35.794014, 22.514536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102556, -0.077114, 0.991734,
		0.498392, -0.858840, -0.118320,
		0.860864, 0.506407, -0.049646,
		32.140362, 35.945934, 22.499641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.947285, 35.067802, 22.624851>,  <31.537756, 35.591450, 22.534395>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.947285, 35.067802, 22.624851> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.135025, 35.412243, 22.703047>,  <32.247669, 35.618908, 22.749964>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.135025, 35.412243, 22.703047>,  <31.947285, 35.067802, 22.624851>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.135025, 35.412243, 22.703047> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225616, -0.330989, 0.916266,
		0.853702, -0.385944, -0.349628,
		0.469350, 0.861100, 0.195491,
		32.275829, 35.670574, 22.761694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.514954, 34.910366, 23.044134>,  <31.947285, 35.067802, 22.624851>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.514954, 34.910366, 23.044134> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.450939, 35.299736, 23.109648>,  <32.412529, 35.533360, 23.148956>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.450939, 35.299736, 23.109648>,  <32.514954, 34.910366, 23.044134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.450939, 35.299736, 23.109648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205326, -0.129466, 0.970093,
		0.965520, 0.188881, -0.179150,
		-0.160038, 0.973428, 0.163784,
		32.402927, 35.591766, 23.158783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120811, 34.465057, 23.133308>,  <32.514954, 34.910366, 23.044134>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120811, 34.465057, 23.133308> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.048988, 34.077229, 23.199879>,  <33.005894, 33.844532, 23.239820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.048988, 34.077229, 23.199879>,  <33.120811, 34.465057, 23.133308>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.048988, 34.077229, 23.199879> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341438, -0.097239, -0.934861,
		0.922594, -0.224683, -0.313588,
		-0.179555, -0.969568, 0.166428,
		32.995121, 33.786358, 23.249807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.444965, 34.065453, 22.581621>,  <33.120811, 34.465057, 23.133308>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.444965, 34.065453, 22.581621> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.160477, 33.826786, 22.730301>,  <32.989784, 33.683586, 22.819508>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.160477, 33.826786, 22.730301>,  <33.444965, 34.065453, 22.581621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160477, 33.826786, 22.730301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211057, -0.323117, -0.922524,
		0.670537, -0.734568, 0.103878,
		-0.711221, -0.596662, 0.371697,
		32.947109, 33.647789, 22.841810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536045, 33.416233, 22.201483>,  <33.444965, 34.065453, 22.581621>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.536045, 33.416233, 22.201483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.165535, 33.403740, 22.351700>,  <32.943230, 33.396244, 22.441830>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.165535, 33.403740, 22.351700>,  <33.536045, 33.416233, 22.201483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.165535, 33.403740, 22.351700> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340152, -0.359594, -0.868901,
		0.162185, -0.932586, 0.322459,
		-0.926279, -0.031237, 0.375541,
		32.887650, 33.394367, 22.464363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.239861, 32.824493, 21.910240>,  <33.536045, 33.416233, 22.201483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.239861, 32.824493, 21.910240> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.906273, 33.007423, 22.033758>,  <32.706120, 33.117180, 22.107868>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.906273, 33.007423, 22.033758>,  <33.239861, 32.824493, 21.910240>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906273, 33.007423, 22.033758> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431657, -0.192051, -0.881356,
		-0.343760, -0.868316, 0.357570,
		-0.833967, 0.457323, 0.308795,
		32.656082, 33.144619, 22.126396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.720337, 32.431000, 21.570059>,  <33.239861, 32.824493, 21.910240>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.720337, 32.431000, 21.570059> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.547531, 32.774326, 21.680807>,  <32.443848, 32.980324, 21.747255>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.547531, 32.774326, 21.680807>,  <32.720337, 32.431000, 21.570059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.547531, 32.774326, 21.680807> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727444, -0.150167, -0.669533,
		-0.533096, -0.490653, 0.689252,
		-0.432011, 0.858318, 0.276869,
		32.417927, 33.031822, 21.763868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.025684, 32.267551, 21.770386>,  <32.720337, 32.431000, 21.570059>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.025684, 32.267551, 21.770386> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025414, 32.651985, 21.659889>,  <32.025253, 32.882645, 21.593592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025414, 32.651985, 21.659889>,  <32.025684, 32.267551, 21.770386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025414, 32.651985, 21.659889> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.718485, -0.192603, -0.668344,
		-0.695543, 0.198025, 0.690657,
		-0.000674, 0.961088, -0.276241,
		32.025211, 32.940311, 21.577017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.337887, 32.486034, 21.802256>,  <32.025684, 32.267551, 21.770386>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.337887, 32.486034, 21.802256> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545628, 32.709995, 21.544020>,  <31.670273, 32.844372, 21.389078>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.545628, 32.709995, 21.544020>,  <31.337887, 32.486034, 21.802256>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.545628, 32.709995, 21.544020> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695961, -0.161265, -0.699737,
		-0.495894, 0.812714, 0.305916,
		0.519352, 0.559901, -0.645588,
		31.701433, 32.877964, 21.350344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.858164, 32.724129, 21.326311>,  <31.337887, 32.486034, 21.802256>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.858164, 32.724129, 21.326311> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199461, 32.821571, 21.141863>,  <31.404240, 32.880035, 21.031193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.199461, 32.821571, 21.141863>,  <30.858164, 32.724129, 21.326311>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.199461, 32.821571, 21.141863> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418734, -0.207046, -0.884191,
		-0.310865, 0.947517, -0.074656,
		0.853243, 0.243603, -0.461121,
		31.455435, 32.894653, 21.003527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.597870, 33.159622, 20.815016>,  <30.858164, 32.724129, 21.326311>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.597870, 33.159622, 20.815016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950207, 33.001102, 20.711428>,  <31.161610, 32.905991, 20.649275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.950207, 33.001102, 20.711428>,  <30.597870, 33.159622, 20.815016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950207, 33.001102, 20.711428> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343216, -0.157803, -0.925906,
		0.326065, 0.904460, -0.275014,
		0.880843, -0.396295, -0.258971,
		31.214460, 32.882214, 20.633736>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.047276, 35.773735, 35.603085> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396797, 35.583519, 35.562431>,  <36.606510, 35.469391, 35.538040>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.396797, 35.583519, 35.562431>,  <36.047276, 35.773735, 35.603085>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.396797, 35.583519, 35.562431> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192040, -0.145436, -0.970551,
		0.446752, 0.867590, -0.218405,
		0.873804, -0.475538, -0.101638,
		36.658939, 35.440857, 35.531940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.365242, 35.933598, 35.025055>,  <36.047276, 35.773735, 35.603085>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.365242, 35.933598, 35.025055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541775, 35.578476, 35.077248>,  <36.647694, 35.365402, 35.108562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.541775, 35.578476, 35.077248>,  <36.365242, 35.933598, 35.025055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.541775, 35.578476, 35.077248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163586, -0.222573, -0.961093,
		0.882309, 0.402812, -0.243461,
		0.441328, -0.887808, 0.130484,
		36.674171, 35.312134, 35.116394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844677, 35.730145, 34.452522>,  <36.365242, 35.933598, 35.025055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844677, 35.730145, 34.452522> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763550, 35.356045, 34.568569>,  <36.714874, 35.131584, 34.638199>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.763550, 35.356045, 34.568569>,  <36.844677, 35.730145, 34.452522>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.763550, 35.356045, 34.568569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183776, -0.254656, -0.949409,
		0.961817, -0.245874, -0.120228,
		-0.202818, -0.935252, 0.290118,
		36.702705, 35.075470, 34.655605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.221828, 35.300903, 34.051945>,  <36.844677, 35.730145, 34.452522>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.221828, 35.300903, 34.051945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.926792, 35.051094, 34.154644>,  <36.749771, 34.901207, 34.216263>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.926792, 35.051094, 34.154644>,  <37.221828, 35.300903, 34.051945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.926792, 35.051094, 34.154644> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056558, -0.321752, -0.945133,
		0.672871, -0.711646, 0.202000,
		-0.737595, -0.624528, 0.256747,
		36.705513, 34.863735, 34.231667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309677, 34.845055, 33.626507>,  <37.221828, 35.300903, 34.051945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309677, 34.845055, 33.626507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942059, 34.760246, 33.759407>,  <36.721485, 34.709362, 33.839149>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.942059, 34.760246, 33.759407>,  <37.309677, 34.845055, 33.626507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.942059, 34.760246, 33.759407> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272999, -0.265586, -0.924628,
		0.284284, -0.940484, 0.186205,
		-0.919051, -0.212023, 0.332253,
		36.666344, 34.696640, 33.859081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.164730, 34.234386, 33.279549>,  <37.309677, 34.845055, 33.626507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.164730, 34.234386, 33.279549> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811672, 34.387196, 33.389088>,  <36.599838, 34.478882, 33.454811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.811672, 34.387196, 33.389088>,  <37.164730, 34.234386, 33.279549>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.811672, 34.387196, 33.389088> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345548, -0.132426, -0.929010,
		-0.318639, -0.914616, 0.248893,
		-0.882647, 0.382023, 0.273848,
		36.546879, 34.501801, 33.471241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.621593, 33.722889, 33.143570>,  <37.164730, 34.234386, 33.279549>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.621593, 33.722889, 33.143570> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439331, 34.078911, 33.148987>,  <36.329971, 34.292522, 33.152237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.439331, 34.078911, 33.148987>,  <36.621593, 33.722889, 33.143570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439331, 34.078911, 33.148987> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509659, -0.248388, -0.823742,
		-0.729811, -0.382245, 0.566803,
		-0.455659, 0.890052, 0.013538,
		36.302635, 34.345928, 33.153049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868587, 33.598183, 32.943031>,  <36.621593, 33.722889, 33.143570>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868587, 33.598183, 32.943031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940750, 33.985031, 32.871326>,  <35.984047, 34.217140, 32.828304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.940750, 33.985031, 32.871326>,  <35.868587, 33.598183, 32.943031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.940750, 33.985031, 32.871326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559347, -0.049043, -0.827482,
		-0.809065, 0.249552, 0.532107,
		0.180403, 0.967119, -0.179265,
		35.994873, 34.275166, 32.817547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.213840, 33.893192, 32.884426>,  <35.868587, 33.598183, 32.943031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.213840, 33.893192, 32.884426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484905, 34.126038, 32.704685>,  <35.647545, 34.265743, 32.596840>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.484905, 34.126038, 32.704685>,  <35.213840, 33.893192, 32.884426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.484905, 34.126038, 32.704685> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590667, 0.066883, -0.804139,
		-0.438046, 0.810352, 0.389160,
		0.677664, 0.582114, -0.449350,
		35.688206, 34.300671, 32.569881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.792603, 34.443470, 32.736282>,  <35.213840, 33.893192, 32.884426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.792603, 34.443470, 32.736282> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100529, 34.459156, 32.481461>,  <35.285286, 34.468567, 32.328568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.100529, 34.459156, 32.481461>,  <34.792603, 34.443470, 32.736282>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.100529, 34.459156, 32.481461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637215, 0.104324, -0.763592,
		0.036519, 0.993770, 0.105297,
		0.769820, 0.039211, -0.637055,
		35.331474, 34.470921, 32.290344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.600357, 34.939262, 32.374836>,  <34.792603, 34.443470, 32.736282>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.600357, 34.939262, 32.374836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853527, 34.734261, 32.142715>,  <35.005428, 34.611259, 32.003445>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.853527, 34.734261, 32.142715>,  <34.600357, 34.939262, 32.374836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853527, 34.734261, 32.142715> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686696, -0.025439, -0.726500,
		0.357572, 0.858308, -0.368035,
		0.632923, -0.512504, -0.580300,
		35.043404, 34.580509, 31.968626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.491325, 35.216549, 31.704426>,  <34.600357, 34.939262, 32.374836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.491325, 35.216549, 31.704426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666931, 34.864853, 31.630440>,  <34.772293, 34.653835, 31.586048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.666931, 34.864853, 31.630440>,  <34.491325, 35.216549, 31.704426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666931, 34.864853, 31.630440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588783, -0.126025, -0.798406,
		0.678677, 0.459414, -0.573006,
		0.439012, -0.879236, -0.184965,
		34.798634, 34.601082, 31.574949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.425243, 36.057182, 31.604839>,  <34.491325, 35.216549, 31.704426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.425243, 36.057182, 31.604839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041573, 36.166306, 31.634670>,  <33.811371, 36.231781, 31.652569>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.041573, 36.166306, 31.634670>,  <34.425243, 36.057182, 31.604839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.041573, 36.166306, 31.634670> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193905, 0.442387, 0.875611,
		0.205885, 0.854323, -0.477225,
		-0.959173, 0.272812, 0.074576,
		33.753822, 36.248150, 31.657043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460423, 36.631172, 31.997295>,  <34.425243, 36.057182, 31.604839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460423, 36.631172, 31.997295> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075840, 36.526722, 32.031746>,  <33.845089, 36.464054, 32.052418>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.075840, 36.526722, 32.031746>,  <34.460423, 36.631172, 31.997295>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.075840, 36.526722, 32.031746> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023444, 0.234241, 0.971896,
		-0.273960, 0.936454, -0.219091,
		-0.961455, -0.261124, 0.086127,
		33.787403, 36.448383, 32.057583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.207787, 37.203732, 32.300854>,  <34.460423, 36.631172, 31.997295>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.207787, 37.203732, 32.300854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966831, 36.896431, 32.387501>,  <33.822258, 36.712051, 32.439487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.966831, 36.896431, 32.387501>,  <34.207787, 37.203732, 32.300854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.966831, 36.896431, 32.387501> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225084, 0.096870, 0.969512,
		-0.765809, 0.632781, 0.114567,
		-0.602391, -0.768248, 0.216613,
		33.786114, 36.665958, 32.452484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.823433, 37.428341, 32.859013>,  <34.207787, 37.203732, 32.300854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.823433, 37.428341, 32.859013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821606, 37.028690, 32.875660>,  <33.820511, 36.788902, 32.885647>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.821606, 37.028690, 32.875660>,  <33.823433, 37.428341, 32.859013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.821606, 37.028690, 32.875660> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221002, 0.039579, 0.974470,
		-0.975263, 0.013646, 0.220628,
		-0.004565, -0.999123, 0.041615,
		33.820236, 36.728954, 32.888145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.393158, 37.310364, 33.403839>,  <33.823433, 37.428341, 32.859013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.393158, 37.310364, 33.403839> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609058, 36.978428, 33.347214>,  <33.738598, 36.779266, 33.313240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.609058, 36.978428, 33.347214>,  <33.393158, 37.310364, 33.403839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.609058, 36.978428, 33.347214> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188923, -0.044464, 0.980985,
		-0.820352, -0.556230, 0.132776,
		0.539749, -0.829838, -0.141561,
		33.770985, 36.729477, 33.304745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.087978, 36.867077, 33.985893>,  <33.393158, 37.310364, 33.403839>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.087978, 36.867077, 33.985893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428493, 36.732479, 33.824860>,  <33.632805, 36.651722, 33.728241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.428493, 36.732479, 33.824860>,  <33.087978, 36.867077, 33.985893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.428493, 36.732479, 33.824860> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378546, -0.137423, 0.915324,
		-0.363326, -0.931604, 0.010392,
		0.851291, -0.336495, -0.402585,
		33.683880, 36.631531, 33.704082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340847, 36.373844, 34.454140>,  <33.087978, 36.867077, 33.985893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340847, 36.373844, 34.454140> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672916, 36.456860, 34.247166>,  <33.872158, 36.506668, 34.122982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.672916, 36.456860, 34.247166>,  <33.340847, 36.373844, 34.454140>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.672916, 36.456860, 34.247166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531085, -0.012097, 0.847232,
		0.169575, -0.978152, -0.120264,
		0.830176, 0.207540, -0.517431,
		33.921970, 36.519123, 34.091938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787762, 35.877014, 34.762787>,  <33.340847, 36.373844, 34.454140>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787762, 35.877014, 34.762787> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977859, 36.176540, 34.577999>,  <34.091919, 36.356255, 34.467125>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.977859, 36.176540, 34.577999>,  <33.787762, 35.877014, 34.762787>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.977859, 36.176540, 34.577999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510172, 0.193251, 0.838080,
		0.716844, -0.633978, -0.290183,
		0.475247, 0.748816, -0.461969,
		34.120434, 36.401184, 34.439407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454868, 35.756882, 35.058899>,  <33.787762, 35.877014, 34.762787>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454868, 35.756882, 35.058899> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500271, 36.121319, 34.900394>,  <34.527512, 36.339981, 34.805290>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.500271, 36.121319, 34.900394>,  <34.454868, 35.756882, 35.058899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.500271, 36.121319, 34.900394> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558960, 0.271178, 0.783599,
		0.821389, -0.310438, -0.478485,
		0.113504, 0.911093, -0.396265,
		34.534321, 36.394646, 34.781513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088699, 35.918289, 35.034550>,  <34.454868, 35.756882, 35.058899>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088699, 35.918289, 35.034550> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936909, 36.288189, 35.023056>,  <34.845833, 36.510128, 35.016159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.936909, 36.288189, 35.023056>,  <35.088699, 35.918289, 35.034550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.936909, 36.288189, 35.023056> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450866, 0.211960, 0.867060,
		0.807908, 0.316075, -0.497375,
		-0.379479, 0.924754, -0.028736,
		34.823067, 36.565617, 35.014435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.645096, 36.310818, 35.308670>,  <35.088699, 35.918289, 35.034550>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.645096, 36.310818, 35.308670> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318134, 36.541004, 35.319160>,  <35.121956, 36.679115, 35.325455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.318134, 36.541004, 35.319160>,  <35.645096, 36.310818, 35.308670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318134, 36.541004, 35.319160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390397, 0.519904, 0.759796,
		0.423604, 0.631297, -0.649633,
		-0.817404, 0.575468, 0.026223,
		35.072914, 36.713646, 35.327026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.894798, 36.972450, 35.265499>,  <35.645096, 36.310818, 35.308670>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.894798, 36.972450, 35.265499> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530491, 37.031406, 35.419785>,  <35.311905, 37.066780, 35.512356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.530491, 37.031406, 35.419785>,  <35.894798, 36.972450, 35.265499>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.530491, 37.031406, 35.419785> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404942, 0.501496, 0.764542,
		-0.080744, 0.852512, -0.516434,
		-0.910770, 0.147394, 0.385710,
		35.257259, 37.075626, 35.535496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.921017, 37.699852, 35.550781>,  <35.894798, 36.972450, 35.265499>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.921017, 37.699852, 35.550781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630554, 37.483356, 35.720371>,  <35.456276, 37.353458, 35.822124>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.630554, 37.483356, 35.720371>,  <35.921017, 37.699852, 35.550781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.630554, 37.483356, 35.720371> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169651, 0.456542, 0.873377,
		-0.666272, 0.706135, -0.239698,
		-0.726154, -0.541242, 0.423978,
		35.412708, 37.320984, 35.847565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282658, 38.113491, 35.947426>,  <35.921017, 37.699852, 35.550781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282658, 38.113491, 35.947426> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383732, 37.758816, 36.102314>,  <35.444378, 37.546013, 36.195248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.383732, 37.758816, 36.102314>,  <35.282658, 38.113491, 35.947426>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.383732, 37.758816, 36.102314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270448, 0.448984, 0.851628,
		-0.928982, -0.110472, 0.353254,
		0.252687, -0.886684, 0.387222,
		35.459538, 37.492809, 36.218479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.002964, 38.316612, 35.253513>,  <35.282658, 38.113491, 35.947426>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.002964, 38.316612, 35.253513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237476, 38.635376, 35.311756>,  <35.378185, 38.826633, 35.346703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.237476, 38.635376, 35.311756>,  <35.002964, 38.316612, 35.253513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.237476, 38.635376, 35.311756> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301464, 0.381451, -0.873850,
		-0.751926, 0.468427, 0.463879,
		0.586282, 0.796913, 0.145609,
		35.413361, 38.874451, 35.355438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.722290, 38.957970, 34.943871>,  <35.002964, 38.316612, 35.253513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.722290, 38.957970, 34.943871> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112545, 39.045296, 34.952587>,  <35.346699, 39.097691, 34.957817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.112545, 39.045296, 34.952587>,  <34.722290, 38.957970, 34.943871>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.112545, 39.045296, 34.952587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060093, 0.361410, -0.930468,
		-0.211012, 0.906488, 0.365723,
		0.975634, 0.218318, 0.021788,
		35.405235, 39.110790, 34.959122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.836765, 39.700447, 34.676041>,  <34.722290, 38.957970, 34.943871>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.836765, 39.700447, 34.676041> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163811, 39.472187, 34.645393>,  <35.360039, 39.335232, 34.627007>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.163811, 39.472187, 34.645393>,  <34.836765, 39.700447, 34.676041>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163811, 39.472187, 34.645393> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156566, 0.348409, -0.924174,
		0.554074, 0.743620, 0.374208,
		0.817612, -0.570649, -0.076619,
		35.409096, 39.300991, 34.622406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381336, 40.135555, 34.346409>,  <34.836765, 39.700447, 34.676041>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381336, 40.135555, 34.346409> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495350, 39.755386, 34.296684>,  <35.563759, 39.527287, 34.266850>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.495350, 39.755386, 34.296684>,  <35.381336, 40.135555, 34.346409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.495350, 39.755386, 34.296684> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138511, 0.169169, -0.975806,
		0.948455, 0.260924, 0.179864,
		0.285039, -0.950421, -0.124308,
		35.580860, 39.470261, 34.259392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.806087, 40.233551, 33.831196>,  <35.381336, 40.135555, 34.346409>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.806087, 40.233551, 33.831196> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766918, 39.835926, 33.812176>,  <35.743416, 39.597351, 33.800766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.766918, 39.835926, 33.812176>,  <35.806087, 40.233551, 33.831196>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.766918, 39.835926, 33.812176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179002, 0.029404, -0.983409,
		0.978964, -0.104807, 0.175059,
		-0.097921, -0.994058, -0.047546,
		35.737541, 39.537708, 33.797913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.426037, 39.838791, 33.487453>,  <35.806087, 40.233551, 33.831196>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.426037, 39.838791, 33.487453> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116699, 39.585510, 33.474861>,  <35.931095, 39.433540, 33.467308>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.116699, 39.585510, 33.474861>,  <36.426037, 39.838791, 33.487453>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.116699, 39.585510, 33.474861> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096493, -0.068486, -0.992975,
		0.626598, -0.770950, 0.114063,
		-0.773345, -0.633203, -0.031478,
		35.884697, 39.395550, 33.465416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680370, 39.312199, 33.108810>,  <36.426037, 39.838791, 33.487453>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680370, 39.312199, 33.108810> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284248, 39.258007, 33.096508>,  <36.046577, 39.225491, 33.089127>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.284248, 39.258007, 33.096508>,  <36.680370, 39.312199, 33.108810>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.284248, 39.258007, 33.096508> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024649, 0.046548, -0.998612,
		0.136730, -0.989685, -0.042757,
		-0.990301, -0.135486, -0.030760,
		35.987156, 39.217361, 33.087280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.525990, 38.661446, 32.687870>,  <36.680370, 39.312199, 33.108810>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.525990, 38.661446, 32.687870> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183525, 38.867546, 32.672337>,  <35.978046, 38.991207, 32.663017>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.183525, 38.867546, 32.672337>,  <36.525990, 38.661446, 32.687870>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.183525, 38.867546, 32.672337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042220, -0.144668, -0.988579,
		-0.514986, -0.844740, 0.145612,
		-0.856158, 0.515252, -0.038837,
		35.926678, 39.022121, 32.660686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.943947, 38.256390, 32.346214>,  <36.525990, 38.661446, 32.687870>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.943947, 38.256390, 32.346214> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871975, 38.649364, 32.326473>,  <35.828793, 38.885151, 32.314629>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.871975, 38.649364, 32.326473>,  <35.943947, 38.256390, 32.346214>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.871975, 38.649364, 32.326473> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107480, -0.069502, -0.991775,
		-0.977790, -0.173145, 0.118098,
		-0.179929, 0.982441, -0.049349,
		35.817997, 38.944096, 32.311668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.455860, 38.399834, 31.739889>,  <35.943947, 38.256390, 32.346214>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.455860, 38.399834, 31.739889> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.551693, 38.778416, 31.826452>,  <35.609192, 39.005566, 31.878391>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.551693, 38.778416, 31.826452>,  <35.455860, 38.399834, 31.739889>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.551693, 38.778416, 31.826452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183864, 0.263097, -0.947087,
		-0.953308, 0.187113, 0.237050,
		0.239579, 0.946451, 0.216409,
		35.623566, 39.062351, 31.891375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.959045, 38.885326, 31.287580>,  <35.455860, 38.399834, 31.739889>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.959045, 38.885326, 31.287580> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260193, 39.130314, 31.383970>,  <35.440884, 39.277306, 31.441805>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.260193, 39.130314, 31.383970>,  <34.959045, 38.885326, 31.287580>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.260193, 39.130314, 31.383970> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007769, 0.357837, -0.933752,
		-0.658121, 0.704867, 0.264647,
		0.752872, 0.612466, 0.240976,
		35.486053, 39.314053, 31.456263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.752705, 39.683311, 31.067286>,  <34.959045, 38.885326, 31.287580>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.752705, 39.683311, 31.067286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141167, 39.588093, 31.072893>,  <35.374245, 39.530960, 31.076258>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.141167, 39.588093, 31.072893>,  <34.752705, 39.683311, 31.067286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.141167, 39.588093, 31.072893> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017083, 0.010804, -0.999796,
		0.237847, 0.971193, 0.014558,
		0.971152, -0.238047, 0.014021,
		35.432514, 39.516678, 31.077099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868034, 39.871815, 30.421930>,  <34.752705, 39.683311, 31.067286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868034, 39.871815, 30.421930> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194881, 39.664894, 30.523687>,  <35.390991, 39.540741, 30.584742>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.194881, 39.664894, 30.523687>,  <34.868034, 39.871815, 30.421930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.194881, 39.664894, 30.523687> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258086, -0.066322, -0.963843,
		0.515472, 0.853228, 0.079316,
		0.817117, -0.517304, 0.254394,
		35.440018, 39.509705, 30.600006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357719, 40.233204, 30.085228>,  <34.868034, 39.871815, 30.421930>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357719, 40.233204, 30.085228> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489109, 39.860638, 30.147919>,  <35.567944, 39.637096, 30.185534>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.489109, 39.860638, 30.147919>,  <35.357719, 40.233204, 30.085228>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489109, 39.860638, 30.147919> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195721, -0.095210, -0.976027,
		0.924012, 0.351274, 0.151024,
		0.328474, -0.931419, 0.156727,
		35.587650, 39.581211, 30.194937>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.881615, 40.127609, 29.618235>,  <35.357719, 40.233204, 30.085228>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.881615, 40.127609, 29.618235> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782028, 39.749214, 29.701305>,  <35.722275, 39.522179, 29.751148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.782028, 39.749214, 29.701305>,  <35.881615, 40.127609, 29.618235>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.782028, 39.749214, 29.701305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240082, -0.268015, -0.933021,
		0.938284, -0.182431, 0.293840,
		-0.248965, -0.945985, 0.207676,
		35.707340, 39.465420, 29.763609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265362, 39.851200, 29.213118>,  <35.881615, 40.127609, 29.618235>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265362, 39.851200, 29.213118> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058826, 39.523300, 29.312239>,  <35.934906, 39.326561, 29.371712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.058826, 39.523300, 29.312239>,  <36.265362, 39.851200, 29.213118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058826, 39.523300, 29.312239> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.045958, -0.315463, -0.947824,
		0.855153, -0.478006, 0.200559,
		-0.516334, -0.819752, 0.247801,
		35.903927, 39.277374, 29.386580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.563778, 39.285130, 28.888935>,  <36.265362, 39.851200, 29.213118>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.563778, 39.285130, 28.888935> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.192860, 39.153320, 28.959969>,  <35.970310, 39.074234, 29.002588>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.192860, 39.153320, 28.959969>,  <36.563778, 39.285130, 28.888935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192860, 39.153320, 28.959969> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016192, -0.438648, -0.898513,
		0.373977, -0.836064, 0.401421,
		-0.927296, -0.329524, 0.177582,
		35.914669, 39.054462, 29.013243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542870, 38.439629, 28.764597>,  <36.563778, 39.285130, 28.888935>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542870, 38.439629, 28.764597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156502, 38.541332, 28.745169>,  <35.924683, 38.602356, 28.733511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.156502, 38.541332, 28.745169>,  <36.542870, 38.439629, 28.764597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.156502, 38.541332, 28.745169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047120, -0.357203, -0.932838,
		-0.254535, -0.898753, 0.357008,
		-0.965915, 0.254262, -0.048572,
		35.866726, 38.617611, 28.730597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240902, 37.879490, 28.550632>,  <36.542870, 38.439629, 28.764597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240902, 37.879490, 28.550632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959179, 38.140739, 28.439358>,  <35.790146, 38.297489, 28.372593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.959179, 38.140739, 28.439358>,  <36.240902, 37.879490, 28.550632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.959179, 38.140739, 28.439358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096623, -0.476414, -0.873896,
		-0.703293, -0.588608, 0.398646,
		-0.704303, 0.653123, -0.278186,
		35.747887, 38.336678, 28.355902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.622734, 37.462742, 28.239651>,  <36.240902, 37.879490, 28.550632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.622734, 37.462742, 28.239651> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601089, 37.841480, 28.112804>,  <35.588104, 38.068722, 28.036695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.601089, 37.841480, 28.112804>,  <35.622734, 37.462742, 28.239651>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.601089, 37.841480, 28.112804> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.218735, -0.321109, -0.921436,
		-0.974283, 0.019508, 0.224481,
		-0.054107, 0.946841, -0.317118,
		35.584858, 38.125534, 28.017670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.963734, 37.557369, 27.892666>,  <35.622734, 37.462742, 28.239651>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.963734, 37.557369, 27.892666> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196220, 37.857292, 27.766186>,  <35.335712, 38.037247, 27.690298>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.196220, 37.857292, 27.766186>,  <34.963734, 37.557369, 27.892666>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.196220, 37.857292, 27.766186> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307977, -0.156983, -0.938353,
		-0.753218, 0.642769, 0.139681,
		0.581217, 0.749803, -0.316201,
		35.370586, 38.082233, 27.671326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.612305, 38.020443, 27.467909>,  <34.963734, 37.557369, 27.892666>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.612305, 38.020443, 27.467909> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991226, 38.089703, 27.360109>,  <35.218578, 38.131256, 27.295429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.991226, 38.089703, 27.360109>,  <34.612305, 38.020443, 27.467909>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.991226, 38.089703, 27.360109> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284233, 0.066359, -0.956456,
		-0.147723, 0.982658, 0.112076,
		0.947306, 0.173146, -0.269501,
		35.275417, 38.141647, 27.279259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.444691, 38.235554, 26.791883>,  <34.612305, 38.020443, 27.467909>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.444691, 38.235554, 26.791883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844517, 38.231564, 26.780823>,  <35.084412, 38.229168, 26.774187>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.844517, 38.231564, 26.780823>,  <34.444691, 38.235554, 26.791883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.844517, 38.231564, 26.780823> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028419, -0.087642, -0.995747,
		0.007508, 0.996102, -0.087888,
		0.999568, -0.009974, -0.027651,
		35.144386, 38.228573, 26.772528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.710529, 38.693153, 26.271551>,  <34.444691, 38.235554, 26.791883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.710529, 38.693153, 26.271551> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008965, 38.432568, 26.326614>,  <35.188026, 38.276215, 26.359652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.008965, 38.432568, 26.326614>,  <34.710529, 38.693153, 26.271551>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008965, 38.432568, 26.326614> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072229, -0.284703, -0.955891,
		0.661922, 0.703233, -0.259467,
		0.746085, -0.651466, 0.137657,
		35.232788, 38.237129, 26.367912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062706, 38.810757, 25.744385>,  <34.710529, 38.693153, 26.271551>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062706, 38.810757, 25.744385> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162472, 38.441990, 25.862957>,  <35.222332, 38.220730, 25.934101>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.162472, 38.441990, 25.862957>,  <35.062706, 38.810757, 25.744385>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.162472, 38.441990, 25.862957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186093, -0.254771, -0.948926,
		0.950349, 0.291836, 0.108019,
		0.249411, -0.921913, 0.296430,
		35.237293, 38.165417, 25.951885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507652, 38.633289, 25.252638>,  <35.062706, 38.810757, 25.744385>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507652, 38.633289, 25.252638> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.453323, 38.266407, 25.402452>,  <35.420727, 38.046276, 25.492342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.453323, 38.266407, 25.402452>,  <35.507652, 38.633289, 25.252638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.453323, 38.266407, 25.402452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210030, -0.396105, -0.893862,
		0.968214, -0.042745, 0.246442,
		-0.135825, -0.917210, 0.374537,
		35.412575, 37.991245, 25.514814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.167793, 38.171101, 25.101072>,  <35.507652, 38.633289, 25.252638>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.167793, 38.171101, 25.101072> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823051, 37.972691, 25.143328>,  <35.616207, 37.853645, 25.168682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.823051, 37.972691, 25.143328>,  <36.167793, 38.171101, 25.101072>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.823051, 37.972691, 25.143328> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082635, -0.342869, -0.935742,
		0.500373, -0.797747, 0.336493,
		-0.861858, -0.496026, 0.105640,
		35.564495, 37.823883, 25.175020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.265228, 37.385651, 24.914562>,  <36.167793, 38.171101, 25.101072>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.265228, 37.385651, 24.914562> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868973, 37.432625, 24.886700>,  <35.631222, 37.460808, 24.869982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.868973, 37.432625, 24.886700>,  <36.265228, 37.385651, 24.914562>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.868973, 37.432625, 24.886700> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025193, -0.344193, -0.938561,
		-0.134192, -0.931526, 0.338012,
		-0.990635, 0.117432, -0.069656,
		35.571781, 37.467854, 24.865803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.562923, 36.832108, 25.411585>,  <36.265228, 37.385651, 24.914562>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.562923, 36.832108, 25.411585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880241, 36.590961, 25.377563>,  <37.070633, 36.446274, 25.357151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.880241, 36.590961, 25.377563>,  <36.562923, 36.832108, 25.411585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.880241, 36.590961, 25.377563> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312778, 0.283692, 0.906470,
		-0.522348, -0.745704, 0.413615,
		0.793298, -0.602863, -0.085054,
		37.118233, 36.410103, 25.352047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630653, 36.424782, 25.971752>,  <36.562923, 36.832108, 25.411585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630653, 36.424782, 25.971752> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005260, 36.432350, 25.831711>,  <37.230026, 36.436890, 25.747686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.005260, 36.432350, 25.831711>,  <36.630653, 36.424782, 25.971752>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.005260, 36.432350, 25.831711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350310, -0.008752, 0.936593,
		0.014659, -0.999783, -0.014825,
		0.936519, 0.018923, -0.350105,
		37.286217, 36.438026, 25.726679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.985683, 36.013245, 26.468086>,  <36.630653, 36.424782, 25.971752>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.985683, 36.013245, 26.468086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294689, 36.169140, 26.267555>,  <37.480091, 36.262676, 26.147236>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.294689, 36.169140, 26.267555>,  <36.985683, 36.013245, 26.468086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.294689, 36.169140, 26.267555> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495275, 0.124277, 0.859801,
		0.397403, -0.912500, -0.097024,
		0.772511, 0.389742, -0.501327,
		37.526443, 36.286064, 26.117157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.564762, 35.662220, 26.705914>,  <36.985683, 36.013245, 26.468086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.564762, 35.662220, 26.705914> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670811, 36.023800, 26.571703>,  <37.734440, 36.240749, 26.491177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.670811, 36.023800, 26.571703>,  <37.564762, 35.662220, 26.705914>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.670811, 36.023800, 26.571703> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589967, 0.123155, 0.797980,
		0.762658, -0.409514, -0.500651,
		0.265126, 0.903953, -0.335525,
		37.750347, 36.294987, 26.471045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.279915, 35.598434, 26.650112>,  <37.564762, 35.662220, 26.705914>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.279915, 35.598434, 26.650112> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172249, 35.981602, 26.689981>,  <38.107647, 36.211502, 26.713903>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.172249, 35.981602, 26.689981>,  <38.279915, 35.598434, 26.650112>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172249, 35.981602, 26.689981> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661550, 0.108684, 0.741983,
		0.699929, 0.265657, -0.662968,
		-0.269168, 0.957922, 0.099675,
		38.091499, 36.268978, 26.719883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// box output
cylinder {
	<0.000000, 0.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 0.000000>,  <0.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 70.000000>,  <70.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 70.000000, 0.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<70.000000, 0.000000, 70.000000>,  <70.000000, 0.000000, 0.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
cylinder {
	<0.000000, 70.000000, 0.000000>,  <0.000000, 70.000000, 70.000000>, 0.350000
	pigment { color rgbt <0,0,0,0> }
	no_shadow
}
// end of box output
