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
	<24.449259, 34.508057, 35.052071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362135, 34.897537, 35.078812>,  <24.309860, 35.131226, 35.094856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.362135, 34.897537, 35.078812>,  <24.449259, 34.508057, 35.052071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.362135, 34.897537, 35.078812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484964, 0.167415, -0.858360,
		-0.846977, -0.154537, -0.508674,
		-0.217808, 0.973700, 0.066852,
		24.296793, 35.189648, 35.098866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.105551, 34.384571, 34.854332>,  <24.449259, 34.508057, 35.052071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.105551, 34.384571, 34.854332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881290, 34.104313, 34.677803>,  <24.746735, 33.936157, 34.571884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.881290, 34.104313, 34.677803>,  <25.105551, 34.384571, 34.854332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.881290, 34.104313, 34.677803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.696409, -0.110631, -0.709066,
		0.447980, -0.704880, 0.549962,
		-0.560650, -0.700646, -0.441324,
		24.713095, 33.894119, 34.545406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.482449, 33.824581, 34.603180>,  <25.105551, 34.384571, 34.854332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.482449, 33.824581, 34.603180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202044, 33.814465, 34.318100>,  <25.033800, 33.808395, 34.147053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.202044, 33.814465, 34.318100>,  <25.482449, 33.824581, 34.603180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.202044, 33.814465, 34.318100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695746, -0.243676, -0.675692,
		-0.156582, -0.969527, 0.188414,
		-0.701013, -0.025287, -0.712699,
		24.991739, 33.806877, 34.104290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.364344, 33.076797, 34.370514>,  <25.482449, 33.824581, 34.603180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.364344, 33.076797, 34.370514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335846, 33.385628, 34.117905>,  <25.318747, 33.570927, 33.966339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335846, 33.385628, 34.117905>,  <25.364344, 33.076797, 34.370514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335846, 33.385628, 34.117905> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.720125, -0.398274, -0.568153,
		-0.690177, -0.495255, -0.527616,
		-0.071245, 0.772075, -0.631525,
		25.314472, 33.617249, 33.928448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.995251, 33.023750, 34.107033>,  <25.364344, 33.076797, 34.370514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.995251, 33.023750, 34.107033> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279900, 33.226643, 34.301479>,  <26.450689, 33.348377, 34.418148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.279900, 33.226643, 34.301479>,  <25.995251, 33.023750, 34.107033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.279900, 33.226643, 34.301479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206245, -0.510612, 0.834709,
		0.671608, -0.694257, -0.258749,
		0.711622, 0.507231, 0.486118,
		26.493387, 33.378811, 34.447315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.466835, 32.626015, 34.462597>,  <25.995251, 33.023750, 34.107033>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.466835, 32.626015, 34.462597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398331, 32.971077, 34.652962>,  <26.357227, 33.178116, 34.767181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.398331, 32.971077, 34.652962>,  <26.466835, 32.626015, 34.462597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.398331, 32.971077, 34.652962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235354, -0.504886, 0.830481,
		0.956701, 0.030223, 0.289498,
		-0.171263, 0.862656, 0.475913,
		26.346952, 33.229874, 34.795734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.545277, 31.929621, 34.185482>,  <26.466835, 32.626015, 34.462597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.545277, 31.929621, 34.185482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890884, 31.940310, 34.386581>,  <27.098249, 31.946724, 34.507240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.890884, 31.940310, 34.386581>,  <26.545277, 31.929621, 34.185482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.890884, 31.940310, 34.386581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212634, -0.885787, 0.412515,
		0.456352, -0.463322, -0.759655,
		0.864019, 0.026724, 0.502748,
		27.150091, 31.948326, 34.537407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.503925, 31.247528, 34.557426>,  <26.545277, 31.929621, 34.185482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.503925, 31.247528, 34.557426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847380, 31.406717, 34.686646>,  <27.053453, 31.502230, 34.764175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.847380, 31.406717, 34.686646>,  <26.503925, 31.247528, 34.557426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.847380, 31.406717, 34.686646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009493, -0.617782, 0.786292,
		0.512495, -0.678207, -0.526672,
		0.858637, 0.397971, 0.323049,
		27.104971, 31.526108, 34.783562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.741385, 30.739305, 34.894840>,  <26.503925, 31.247528, 34.557426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.741385, 30.739305, 34.894840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978317, 31.032726, 35.028133>,  <27.120478, 31.208778, 35.108109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.978317, 31.032726, 35.028133>,  <26.741385, 30.739305, 34.894840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.978317, 31.032726, 35.028133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076256, -0.462785, 0.883184,
		0.802077, -0.497727, -0.330060,
		0.592332, 0.733551, 0.333235,
		27.156017, 31.252792, 35.128105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.362667, 30.352444, 35.190014>,  <26.741385, 30.739305, 34.894840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.362667, 30.352444, 35.190014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301924, 30.712173, 35.354042>,  <27.265478, 30.928011, 35.452457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.301924, 30.712173, 35.354042>,  <27.362667, 30.352444, 35.190014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.301924, 30.712173, 35.354042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027889, -0.418612, 0.907737,
		0.988009, 0.126412, 0.088651,
		-0.151859, 0.899324, 0.410067,
		27.256367, 30.981970, 35.477062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.901661, 30.423988, 35.754688>,  <27.362667, 30.352444, 35.190014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.901661, 30.423988, 35.754688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570681, 30.639772, 35.817047>,  <27.372093, 30.769243, 35.854462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.570681, 30.639772, 35.817047>,  <27.901661, 30.423988, 35.754688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.570681, 30.639772, 35.817047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043288, -0.338084, 0.940120,
		0.559867, 0.771155, 0.303100,
		-0.827451, 0.539462, 0.155901,
		27.322445, 30.801611, 35.863819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.554384, 30.069122, 36.210102>,  <27.901661, 30.423988, 35.754688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.554384, 30.069122, 36.210102> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674316, 30.399641, 36.019382>,  <28.746275, 30.597952, 35.904953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.674316, 30.399641, 36.019382>,  <28.554384, 30.069122, 36.210102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.674316, 30.399641, 36.019382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476953, -0.303008, -0.825047,
		-0.826207, 0.474784, 0.303253,
		0.299831, 0.826297, -0.476797,
		28.764265, 30.647530, 35.876343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.194307, 29.804062, 36.820488>,  <28.554384, 30.069122, 36.210102>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.194307, 29.804062, 36.820488> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978559, 30.007648, 37.088825>,  <27.849112, 30.129801, 37.249828>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978559, 30.007648, 37.088825>,  <28.194307, 29.804062, 36.820488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978559, 30.007648, 37.088825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179414, 0.708909, -0.682099,
		-0.822734, -0.488261, -0.291047,
		-0.539369, 0.508968, 0.670845,
		27.816750, 30.160339, 37.290077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.579258, 29.918428, 36.538017>,  <28.194307, 29.804062, 36.820488>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.579258, 29.918428, 36.538017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605562, 30.222876, 36.796127>,  <27.621344, 30.405544, 36.950993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.605562, 30.222876, 36.796127>,  <27.579258, 29.918428, 36.538017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.605562, 30.222876, 36.796127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405398, 0.611276, -0.679702,
		-0.911772, -0.216897, 0.348751,
		0.065758, 0.761116, 0.645274,
		27.625290, 30.451210, 36.989708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.018843, 30.262716, 36.583050>,  <27.579258, 29.918428, 36.538017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.018843, 30.262716, 36.583050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317158, 30.524448, 36.633099>,  <27.496147, 30.681488, 36.663128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.317158, 30.524448, 36.633099>,  <27.018843, 30.262716, 36.583050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.317158, 30.524448, 36.633099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328719, 0.524806, -0.785189,
		-0.579436, 0.544454, 0.606484,
		0.745786, 0.654330, 0.125119,
		27.540894, 30.720747, 36.670635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.743362, 30.798571, 36.520950>,  <27.018843, 30.262716, 36.583050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.743362, 30.798571, 36.520950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126369, 30.869894, 36.430294>,  <27.356174, 30.912687, 36.375900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.126369, 30.869894, 36.430294>,  <26.743362, 30.798571, 36.520950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.126369, 30.869894, 36.430294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285828, 0.482675, -0.827845,
		-0.038220, 0.857456, 0.513136,
		0.957518, 0.178309, -0.226637,
		27.413626, 30.923388, 36.362305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.669682, 31.508175, 36.125710>,  <26.743362, 30.798571, 36.520950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.669682, 31.508175, 36.125710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034883, 31.355341, 36.068539>,  <27.254005, 31.263639, 36.034237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.034883, 31.355341, 36.068539>,  <26.669682, 31.508175, 36.125710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.034883, 31.355341, 36.068539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006176, 0.337373, -0.941351,
		0.407897, 0.860343, 0.305664,
		0.913007, -0.382086, -0.142927,
		27.308786, 31.240715, 36.025661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.050602, 32.183380, 35.859241>,  <26.669682, 31.508175, 36.125710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.050602, 32.183380, 35.859241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166039, 31.815901, 35.751389>,  <27.235300, 31.595413, 35.686676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.166039, 31.815901, 35.751389>,  <27.050602, 32.183380, 35.859241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.166039, 31.815901, 35.751389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021520, 0.287769, -0.957458,
		0.957210, 0.270513, 0.102818,
		0.288592, -0.918701, -0.269634,
		27.252617, 31.540291, 35.670498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.758663, 32.188313, 35.747650>,  <27.050602, 32.183380, 35.859241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.758663, 32.188313, 35.747650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580826, 31.904263, 35.529274>,  <27.474123, 31.733831, 35.398247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.580826, 31.904263, 35.529274>,  <27.758663, 32.188313, 35.747650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.580826, 31.904263, 35.529274> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320012, 0.443345, -0.837280,
		0.836617, -0.546959, 0.030141,
		-0.444595, -0.710128, -0.545943,
		27.447447, 31.691225, 35.365490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.188110, 32.132111, 35.229328>,  <27.758663, 32.188313, 35.747650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.188110, 32.132111, 35.229328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868387, 31.945755, 35.077507>,  <27.676554, 31.833942, 34.986416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.868387, 31.945755, 35.077507>,  <28.188110, 32.132111, 35.229328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.868387, 31.945755, 35.077507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281743, 0.267342, -0.921493,
		0.530781, -0.843491, -0.082428,
		-0.799307, -0.465887, -0.379548,
		27.628595, 31.805988, 34.963642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.319199, 31.533850, 34.668068>,  <28.188110, 32.132111, 35.229328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.319199, 31.533850, 34.668068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978931, 31.740671, 34.630085>,  <27.774771, 31.864763, 34.607296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.978931, 31.740671, 34.630085>,  <28.319199, 31.533850, 34.668068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.978931, 31.740671, 34.630085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290639, 0.312044, -0.904521,
		-0.438055, -0.797047, -0.415722,
		-0.850669, 0.517054, -0.094961,
		27.723730, 31.895788, 34.601597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.133858, 31.389957, 34.000854>,  <28.319199, 31.533850, 34.668068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.133858, 31.389957, 34.000854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988327, 31.745209, 34.113182>,  <27.901009, 31.958359, 34.180580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.988327, 31.745209, 34.113182>,  <28.133858, 31.389957, 34.000854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.988327, 31.745209, 34.113182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419595, 0.425426, -0.801843,
		-0.831607, -0.173901, -0.527435,
		-0.363827, 0.888128, 0.280820,
		27.879179, 32.011646, 34.197430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.703234, 31.754528, 33.481617>,  <28.133858, 31.389957, 34.000854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.703234, 31.754528, 33.481617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850321, 32.045605, 33.713223>,  <27.938572, 32.220249, 33.852184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.850321, 32.045605, 33.713223>,  <27.703234, 31.754528, 33.481617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.850321, 32.045605, 33.713223> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.386245, 0.446875, -0.806919,
		-0.845931, 0.520357, -0.116743,
		0.367716, 0.727689, 0.579010,
		27.960636, 32.263912, 33.886925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.441757, 32.509029, 33.257915>,  <27.703234, 31.754528, 33.481617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.441757, 32.509029, 33.257915> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789181, 32.499386, 33.455914>,  <27.997635, 32.493599, 33.574715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.789181, 32.499386, 33.455914>,  <27.441757, 32.509029, 33.257915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.789181, 32.499386, 33.455914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390061, 0.649391, -0.652797,
		-0.305706, 0.760073, 0.573440,
		0.868560, -0.024113, 0.494998,
		28.049749, 32.492153, 33.604412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.656033, 33.206287, 33.638168>,  <27.441757, 32.509029, 33.257915>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.656033, 33.206287, 33.638168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975859, 33.024803, 33.480770>,  <28.167753, 32.915913, 33.386330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.975859, 33.024803, 33.480770>,  <27.656033, 33.206287, 33.638168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.975859, 33.024803, 33.480770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138687, 0.776973, -0.614068,
		0.584348, 0.436413, 0.684164,
		0.799564, -0.453714, -0.393498,
		28.215729, 32.888687, 33.362720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.427965, 33.475113, 33.810215>,  <27.656033, 33.206287, 33.638168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.427965, 33.475113, 33.810215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394779, 33.318901, 33.443478>,  <28.374866, 33.225174, 33.223434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.394779, 33.318901, 33.443478>,  <28.427965, 33.475113, 33.810215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.394779, 33.318901, 33.443478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299341, 0.867762, -0.396716,
		0.950532, -0.307363, 0.044907,
		-0.082967, -0.390534, -0.916842,
		28.369888, 33.201740, 33.168427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.820898, 33.923786, 33.276443>,  <28.427965, 33.475113, 33.810215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.820898, 33.923786, 33.276443> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547596, 33.744698, 33.045719>,  <28.383614, 33.637245, 32.907284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.547596, 33.744698, 33.045719>,  <28.820898, 33.923786, 33.276443>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.547596, 33.744698, 33.045719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154476, 0.860709, -0.485095,
		0.713650, -0.242341, -0.657247,
		-0.683257, -0.447717, -0.576809,
		28.342619, 33.610382, 32.872677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.487226, 33.500103, 33.108818>,  <28.820898, 33.923786, 33.276443>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.487226, 33.500103, 33.108818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827517, 33.709015, 33.132454>,  <30.031691, 33.834362, 33.146637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.827517, 33.709015, 33.132454>,  <29.487226, 33.500103, 33.108818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.827517, 33.709015, 33.132454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142245, 0.336996, -0.930699,
		-0.505995, 0.783365, 0.360983,
		0.850727, 0.522276, 0.059089,
		30.082735, 33.865696, 33.150181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.426323, 34.160759, 32.849922>,  <29.487226, 33.500103, 33.108818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.426323, 34.160759, 32.849922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810661, 34.066536, 32.791565>,  <30.041265, 34.010002, 32.756550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.810661, 34.066536, 32.791565>,  <29.426323, 34.160759, 32.849922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.810661, 34.066536, 32.791565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069994, 0.303130, -0.950375,
		0.268090, 0.923378, 0.274775,
		0.960848, -0.235553, -0.145897,
		30.098915, 33.995869, 32.747795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609489, 34.494678, 32.292694>,  <29.426323, 34.160759, 32.849922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609489, 34.494678, 32.292694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966532, 34.314369, 32.295837>,  <30.180758, 34.206184, 32.297722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.966532, 34.314369, 32.295837>,  <29.609489, 34.494678, 32.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.966532, 34.314369, 32.295837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181077, 0.342493, -0.921905,
		0.412876, 0.824321, 0.387336,
		0.892606, -0.450770, 0.007859,
		30.234314, 34.179138, 32.298195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.127390, 34.949543, 31.941568>,  <29.609489, 34.494678, 32.292694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.127390, 34.949543, 31.941568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265244, 34.575237, 31.911699>,  <30.347956, 34.350655, 31.893778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.265244, 34.575237, 31.911699>,  <30.127390, 34.949543, 31.941568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.265244, 34.575237, 31.911699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185309, 0.145798, -0.971804,
		0.920264, 0.321081, 0.223652,
		0.344636, -0.935762, -0.074674,
		30.368635, 34.294510, 31.889297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.756144, 35.003273, 31.653009>,  <30.127390, 34.949543, 31.941568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.756144, 35.003273, 31.653009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583841, 34.657349, 31.549824>,  <30.480459, 34.449795, 31.487913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.583841, 34.657349, 31.549824>,  <30.756144, 35.003273, 31.653009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.583841, 34.657349, 31.549824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.142962, 0.216843, -0.965681,
		0.891073, -0.452852, 0.030229,
		-0.430756, -0.864814, -0.257964,
		30.454615, 34.397903, 31.472435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.070688, 34.819511, 31.115454>,  <30.756144, 35.003273, 31.653009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.070688, 34.819511, 31.115454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772018, 34.557457, 31.069370>,  <30.592815, 34.400223, 31.041721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.772018, 34.557457, 31.069370>,  <31.070688, 34.819511, 31.115454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.772018, 34.557457, 31.069370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032960, 0.136543, -0.990086,
		0.664371, -0.743071, -0.080360,
		-0.746676, -0.655135, -0.115207,
		30.548016, 34.360916, 31.034809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.300550, 34.310287, 30.535995>,  <31.070688, 34.819511, 31.115454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.300550, 34.310287, 30.535995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902086, 34.334019, 30.561733>,  <30.663008, 34.348259, 30.577175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.902086, 34.334019, 30.561733>,  <31.300550, 34.310287, 30.535995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.902086, 34.334019, 30.561733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034908, 0.404832, -0.913725,
		-0.080256, -0.912464, -0.401208,
		-0.996163, 0.059327, 0.064342,
		30.603237, 34.351818, 30.581036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052696, 34.081047, 29.909079>,  <31.300550, 34.310287, 30.535995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052696, 34.081047, 29.909079> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810507, 34.346806, 30.084343>,  <30.665194, 34.506260, 30.189501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.810507, 34.346806, 30.084343>,  <31.052696, 34.081047, 29.909079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.810507, 34.346806, 30.084343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025211, 0.566280, -0.823827,
		-0.795465, -0.487760, -0.359618,
		-0.605475, 0.664393, 0.438159,
		30.628864, 34.546124, 30.215790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.572132, 34.278091, 29.400188>,  <31.052696, 34.081047, 29.909079>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.572132, 34.278091, 29.400188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651205, 34.560444, 29.672264>,  <30.698648, 34.729855, 29.835508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.651205, 34.560444, 29.672264>,  <30.572132, 34.278091, 29.400188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.651205, 34.560444, 29.672264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192268, 0.652483, -0.733007,
		-0.961225, 0.275682, -0.006732,
		0.197685, 0.705879, 0.680188,
		30.710510, 34.772209, 29.876320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.687038, 35.100815, 29.487198>,  <30.572132, 34.278091, 29.400188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.687038, 35.100815, 29.487198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313269, 34.959171, 29.471954>,  <30.089006, 34.874184, 29.462809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.313269, 34.959171, 29.471954>,  <30.687038, 35.100815, 29.487198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313269, 34.959171, 29.471954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.148598, -0.484877, 0.861866,
		-0.323675, 0.799687, 0.505703,
		-0.934427, -0.354111, -0.038111,
		30.032940, 34.852940, 29.460522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.261267, 35.277340, 30.096785>,  <30.687038, 35.100815, 29.487198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.261267, 35.277340, 30.096785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138006, 34.930935, 29.939268>,  <30.064049, 34.723091, 29.844759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.138006, 34.930935, 29.939268>,  <30.261267, 35.277340, 30.096785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.138006, 34.930935, 29.939268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034174, -0.423744, 0.905137,
		-0.950723, 0.265463, 0.160172,
		-0.308152, -0.866008, -0.393791,
		30.045561, 34.671131, 29.821131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.525843, 34.950214, 30.359907>,  <30.261267, 35.277340, 30.096785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.525843, 34.950214, 30.359907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803181, 34.682838, 30.252230>,  <29.969584, 34.522415, 30.187624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803181, 34.682838, 30.252230>,  <29.525843, 34.950214, 30.359907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803181, 34.682838, 30.252230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.057355, -0.321190, 0.945276,
		-0.718321, -0.670841, -0.184357,
		0.693343, -0.668438, -0.269194,
		30.011185, 34.482307, 30.171473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.324701, 34.282291, 30.690292>,  <29.525843, 34.950214, 30.359907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.324701, 34.282291, 30.690292> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719782, 34.306988, 30.632835>,  <29.956831, 34.321804, 30.598362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.719782, 34.306988, 30.632835>,  <29.324701, 34.282291, 30.690292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719782, 34.306988, 30.632835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156289, -0.415015, 0.896290,
		-0.004279, -0.907718, -0.419560,
		0.987702, 0.061737, -0.143642,
		30.016092, 34.325508, 30.589743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.518120, 33.569294, 30.808273>,  <29.324701, 34.282291, 30.690292>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.518120, 33.569294, 30.808273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835573, 33.804718, 30.869911>,  <30.026045, 33.945972, 30.906895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.835573, 33.804718, 30.869911>,  <29.518120, 33.569294, 30.808273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.835573, 33.804718, 30.869911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.011115, -0.239214, 0.970903,
		0.608297, -0.772252, -0.183306,
		0.793632, 0.588560, 0.154097,
		30.073662, 33.981285, 30.916140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.843445, 33.183285, 31.406437>,  <29.518120, 33.569294, 30.808273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.843445, 33.183285, 31.406437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012306, 33.545826, 31.399324>,  <30.113623, 33.763351, 31.395058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.012306, 33.545826, 31.399324>,  <29.843445, 33.183285, 31.406437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.012306, 33.545826, 31.399324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087558, -0.021244, 0.995933,
		0.902286, -0.421993, -0.088327,
		0.422153, 0.906350, -0.017781,
		30.138952, 33.817730, 31.393990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.305275, 33.086285, 31.987923>,  <29.843445, 33.183285, 31.406437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.305275, 33.086285, 31.987923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295923, 33.470512, 31.877104>,  <30.290312, 33.701050, 31.810612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.295923, 33.470512, 31.877104>,  <30.305275, 33.086285, 31.987923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.295923, 33.470512, 31.877104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130357, 0.277687, 0.951786,
		0.991191, -0.013861, -0.131710,
		-0.023381, 0.960572, -0.277047,
		30.288908, 33.758682, 31.793989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.043375, 33.316402, 32.010815>,  <30.305275, 33.086285, 31.987923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.043375, 33.316402, 32.010815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729742, 33.542126, 32.114174>,  <30.541561, 33.677559, 32.176189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.729742, 33.542126, 32.114174>,  <31.043375, 33.316402, 32.010815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.729742, 33.542126, 32.114174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309266, -0.005727, 0.950958,
		0.538114, 0.825544, -0.170031,
		-0.784084, 0.564309, 0.258395,
		30.494516, 33.711418, 32.191692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.355558, 33.777275, 32.560970>,  <31.043375, 33.316402, 32.010815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.355558, 33.777275, 32.560970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960375, 33.789497, 32.621632>,  <30.723265, 33.796833, 32.658028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.960375, 33.789497, 32.621632>,  <31.355558, 33.777275, 32.560970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.960375, 33.789497, 32.621632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153675, 0.081005, 0.984795,
		0.017808, 0.996245, -0.084726,
		-0.987961, 0.030558, 0.151656,
		30.663986, 33.798664, 32.667130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.147066, 34.444366, 32.932884>,  <31.355558, 33.777275, 32.560970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.147066, 34.444366, 32.932884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863792, 34.169605, 32.998165>,  <30.693829, 34.004749, 33.037334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.863792, 34.169605, 32.998165>,  <31.147066, 34.444366, 32.932884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.863792, 34.169605, 32.998165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085635, 0.145877, 0.985590,
		-0.700813, 0.711957, -0.044485,
		-0.708186, -0.686905, 0.163200,
		30.651337, 33.963535, 33.047127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.722509, 34.436634, 33.406197>,  <31.147066, 34.444366, 32.932884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.722509, 34.436634, 33.406197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113121, 34.429066, 33.320374>,  <32.347488, 34.424526, 33.268879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.113121, 34.429066, 33.320374>,  <31.722509, 34.436634, 33.406197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.113121, 34.429066, 33.320374> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212387, -0.081193, 0.973807,
		-0.035843, -0.996519, -0.075269,
		0.976528, -0.018918, -0.214558,
		32.406078, 34.423389, 33.256004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.954882, 33.844486, 33.615044>,  <31.722509, 34.436634, 33.406197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.954882, 33.844486, 33.615044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249699, 34.112892, 33.647320>,  <32.426590, 34.273937, 33.666687>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.249699, 34.112892, 33.647320>,  <31.954882, 33.844486, 33.615044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.249699, 34.112892, 33.647320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122445, -0.249994, 0.960474,
		0.664664, -0.698028, -0.266418,
		0.737041, 0.671014, 0.080692,
		32.470810, 34.314198, 33.671528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.714962, 33.588989, 33.602482>,  <31.954882, 33.844486, 33.615044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.714962, 33.588989, 33.602482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646873, 33.898975, 33.845940>,  <32.606022, 34.084969, 33.992016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.646873, 33.898975, 33.845940>,  <32.714962, 33.588989, 33.602482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.646873, 33.898975, 33.845940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.254373, -0.562169, 0.786931,
		0.952008, 0.288774, -0.101440,
		-0.170219, 0.774969, 0.608646,
		32.595806, 34.131466, 34.028534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271835, 33.340706, 34.067680>,  <32.714962, 33.588989, 33.602482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271835, 33.340706, 34.067680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296692, 33.614861, 34.357887>,  <33.311607, 33.779354, 34.532013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.296692, 33.614861, 34.357887>,  <33.271835, 33.340706, 34.067680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.296692, 33.614861, 34.357887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673665, -0.507555, 0.537181,
		0.736419, -0.522142, 0.430180,
		0.062145, 0.685387, 0.725522,
		33.315334, 33.820477, 34.575542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.383987, 32.928986, 34.662067>,  <33.271835, 33.340706, 34.067680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.383987, 32.928986, 34.662067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238018, 33.271004, 34.809429>,  <33.150436, 33.476215, 34.897846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238018, 33.271004, 34.809429>,  <33.383987, 32.928986, 34.662067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238018, 33.271004, 34.809429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489428, -0.512783, 0.705347,
		0.792017, 0.077092, 0.605612,
		-0.364924, 0.855050, 0.368402,
		33.128540, 33.527519, 34.919949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.280731, 32.667702, 35.250725>,  <33.383987, 32.928986, 34.662067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.280731, 32.667702, 35.250725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131927, 33.037971, 35.278271>,  <33.042645, 33.260132, 35.294800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.131927, 33.037971, 35.278271>,  <33.280731, 32.667702, 35.250725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.131927, 33.037971, 35.278271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477996, -0.254641, 0.840641,
		0.795693, 0.279808, 0.537196,
		-0.372010, 0.925670, 0.068868,
		33.020325, 33.315674, 35.298931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.507553, 32.949295, 35.891663>,  <33.280731, 32.667702, 35.250725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.507553, 32.949295, 35.891663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160152, 33.104401, 35.768150>,  <32.951714, 33.197464, 35.694042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.160152, 33.104401, 35.768150>,  <33.507553, 32.949295, 35.891663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.160152, 33.104401, 35.768150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.410033, -0.211966, 0.887099,
		0.278530, 0.897058, 0.343087,
		-0.868501, 0.387761, -0.308784,
		32.899601, 33.220730, 35.675514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.360592, 33.417519, 36.429127>,  <33.507553, 32.949295, 35.891663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.360592, 33.417519, 36.429127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025646, 33.310539, 36.238426>,  <32.824677, 33.246349, 36.124008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.025646, 33.310539, 36.238426>,  <33.360592, 33.417519, 36.429127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.025646, 33.310539, 36.238426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419548, -0.244647, 0.874144,
		-0.350425, 0.931997, 0.092651,
		-0.837366, -0.267451, -0.476747,
		32.774437, 33.230305, 36.095402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.827866, 32.982197, 36.807743>,  <33.360592, 33.417519, 36.429127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.827866, 32.982197, 36.807743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665806, 32.648457, 36.658237>,  <32.568569, 32.448212, 36.568535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.665806, 32.648457, 36.658237>,  <32.827866, 32.982197, 36.807743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.665806, 32.648457, 36.658237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187083, -0.324512, 0.927196,
		-0.894902, 0.445583, -0.024616,
		-0.405154, -0.834355, -0.373767,
		32.544258, 32.398151, 36.546108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.369129, 32.531990, 36.739529>,  <32.827866, 32.982197, 36.807743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.369129, 32.531990, 36.739529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442646, 32.141941, 36.689957>,  <33.486755, 31.907911, 36.660213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.442646, 32.141941, 36.689957>,  <33.369129, 32.531990, 36.739529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.442646, 32.141941, 36.689957> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775301, 0.066301, 0.628103,
		-0.604259, -0.211525, 0.768198,
		0.183792, -0.975121, -0.123932,
		33.497784, 31.849405, 36.652779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.818672, 32.008606, 36.786636>,  <33.369129, 32.531990, 36.739529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.818672, 32.008606, 36.786636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536201, 32.132050, 37.041534>,  <32.366718, 32.206116, 37.194473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.536201, 32.132050, 37.041534>,  <32.818672, 32.008606, 36.786636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.536201, 32.132050, 37.041534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490247, 0.436250, -0.754549,
		-0.510858, -0.845249, -0.156774,
		-0.706174, 0.308609, 0.637242,
		32.324348, 32.224632, 37.232708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196072, 31.631657, 36.735397>,  <32.818672, 32.008606, 36.786636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196072, 31.631657, 36.735397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174358, 32.018105, 36.836323>,  <32.161331, 32.249973, 36.896877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.174358, 32.018105, 36.836323>,  <32.196072, 31.631657, 36.735397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.174358, 32.018105, 36.836323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299087, 0.225354, -0.927234,
		-0.952681, -0.125796, 0.276721,
		-0.054282, 0.966122, 0.252315,
		32.158073, 32.307941, 36.912018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574787, 31.984270, 36.340317>,  <32.196072, 31.631657, 36.735397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574787, 31.984270, 36.340317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861399, 32.248585, 36.429710>,  <32.033367, 32.407173, 36.483349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.861399, 32.248585, 36.429710>,  <31.574787, 31.984270, 36.340317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.861399, 32.248585, 36.429710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.050789, 0.368956, -0.928058,
		-0.695706, 0.653629, 0.297928,
		0.716528, 0.660787, 0.223488,
		32.076359, 32.446819, 36.496758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.802187, 32.279324, 35.704971>,  <31.574787, 31.984270, 36.340317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.802187, 32.279324, 35.704971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965477, 32.600014, 35.879597>,  <32.063450, 32.792427, 35.984371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.965477, 32.600014, 35.879597>,  <31.802187, 32.279324, 35.704971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.965477, 32.600014, 35.879597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050921, 0.457486, -0.887758,
		-0.911461, 0.384635, 0.145932,
		0.408224, 0.801725, 0.436567,
		32.087944, 32.840530, 36.010567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.648979, 32.935566, 35.428982>,  <31.802187, 32.279324, 35.704971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.648979, 32.935566, 35.428982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988653, 33.042519, 35.611145>,  <32.192455, 33.106689, 35.720444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.988653, 33.042519, 35.611145>,  <31.648979, 32.935566, 35.428982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.988653, 33.042519, 35.611145> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289860, 0.484856, -0.825164,
		-0.441440, 0.832720, 0.334228,
		0.849183, 0.267381, 0.455407,
		32.243408, 33.122734, 35.747768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.738623, 33.647011, 35.323124>,  <31.648979, 32.935566, 35.428982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.738623, 33.647011, 35.323124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103035, 33.526600, 35.435841>,  <32.321682, 33.454353, 35.503471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.103035, 33.526600, 35.435841>,  <31.738623, 33.647011, 35.323124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.103035, 33.526600, 35.435841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411066, 0.609378, -0.678000,
		0.032378, 0.733513, 0.678903,
		0.911030, -0.301026, 0.281792,
		32.376343, 33.436291, 35.520378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.161251, 34.230648, 35.256020>,  <31.738623, 33.647011, 35.323124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.161251, 34.230648, 35.256020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445602, 33.951660, 35.292233>,  <32.616211, 33.784267, 35.313961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.445602, 33.951660, 35.292233>,  <32.161251, 34.230648, 35.256020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.445602, 33.951660, 35.292233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659729, 0.616656, -0.429526,
		0.243753, 0.365066, 0.898505,
		0.710874, -0.697468, 0.090533,
		32.658863, 33.742420, 35.319393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.711483, 34.562767, 35.553848>,  <32.161251, 34.230648, 35.256020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.711483, 34.562767, 35.553848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836609, 34.249401, 35.339031>,  <32.911686, 34.061382, 35.210140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.836609, 34.249401, 35.339031>,  <32.711483, 34.562767, 35.553848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.836609, 34.249401, 35.339031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608545, 0.599429, -0.519960,
		0.729260, -0.164161, 0.664253,
		0.312815, -0.783413, -0.537039,
		32.930454, 34.014378, 35.177921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.475285, 34.607750, 35.585392>,  <32.711483, 34.562767, 35.553848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.475285, 34.607750, 35.585392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385990, 34.389286, 35.262440>,  <33.332413, 34.258205, 35.068668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.385990, 34.389286, 35.262440>,  <33.475285, 34.607750, 35.585392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385990, 34.389286, 35.262440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752340, 0.430121, -0.498978,
		0.619798, -0.718818, 0.314883,
		-0.223237, -0.546164, -0.807384,
		33.319019, 34.225437, 35.020226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045563, 34.265976, 35.263542>,  <33.475285, 34.607750, 35.585392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045563, 34.265976, 35.263542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764736, 34.365482, 34.996643>,  <33.596241, 34.425186, 34.836506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.764736, 34.365482, 34.996643>,  <34.045563, 34.265976, 35.263542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.764736, 34.365482, 34.996643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691641, 0.461257, -0.555765,
		0.169514, -0.851678, -0.495893,
		-0.702067, 0.248770, -0.667245,
		33.554115, 34.440113, 34.796471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.063442, 33.763031, 34.667007>,  <34.045563, 34.265976, 35.263542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.063442, 33.763031, 34.667007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941605, 34.129990, 34.564548>,  <33.868504, 34.350166, 34.503075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.941605, 34.129990, 34.564548>,  <34.063442, 33.763031, 34.667007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.941605, 34.129990, 34.564548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795748, 0.097304, -0.597759,
		-0.523458, -0.385898, -0.759654,
		-0.304592, 0.917395, -0.256143,
		33.850227, 34.405209, 34.487705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.010902, 33.911175, 33.889263>,  <34.063442, 33.763031, 34.667007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.010902, 33.911175, 33.889263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063694, 34.274357, 34.048359>,  <34.095367, 34.492268, 34.143814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.063694, 34.274357, 34.048359>,  <34.010902, 33.911175, 33.889263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.063694, 34.274357, 34.048359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745208, 0.173707, -0.643810,
		-0.653642, 0.381364, -0.653692,
		0.131974, 0.907958, 0.397738,
		34.103287, 34.546745, 34.167679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.080307, 34.313686, 33.338272>,  <34.010902, 33.911175, 33.889263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.080307, 34.313686, 33.338272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224659, 34.539413, 33.635273>,  <34.311272, 34.674850, 33.813473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.224659, 34.539413, 33.635273>,  <34.080307, 34.313686, 33.338272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.224659, 34.539413, 33.635273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737616, 0.314475, -0.597519,
		-0.570689, 0.763314, -0.302763,
		0.360883, 0.564321, 0.742500,
		34.332924, 34.708710, 33.858025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.191753, 34.947777, 33.078468>,  <34.080307, 34.313686, 33.338272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.191753, 34.947777, 33.078468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420944, 34.939926, 33.406204>,  <34.558456, 34.935215, 33.602844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.420944, 34.939926, 33.406204>,  <34.191753, 34.947777, 33.078468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.420944, 34.939926, 33.406204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.760245, 0.386173, -0.522397,
		-0.306152, 0.922217, 0.236191,
		0.572974, -0.019631, 0.819338,
		34.592838, 34.934036, 33.652004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.348488, 35.639347, 33.177341>,  <34.191753, 34.947777, 33.078468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.348488, 35.639347, 33.177341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613285, 35.401356, 33.359665>,  <34.772163, 35.258560, 33.469059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613285, 35.401356, 33.359665>,  <34.348488, 35.639347, 33.177341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613285, 35.401356, 33.359665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744154, 0.449216, -0.494408,
		0.089407, 0.666488, 0.740135,
		0.661997, -0.594979, 0.455807,
		34.811886, 35.222862, 33.496407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884182, 36.101662, 33.149738>,  <34.348488, 35.639347, 33.177341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884182, 36.101662, 33.149738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088165, 35.775578, 33.259548>,  <35.210556, 35.579926, 33.325436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.088165, 35.775578, 33.259548>,  <34.884182, 36.101662, 33.149738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.088165, 35.775578, 33.259548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.815243, 0.356219, -0.456602,
		0.274438, 0.456654, 0.846257,
		0.509962, -0.815215, 0.274524,
		35.241154, 35.531013, 33.341904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.463799, 36.269695, 33.488407>,  <34.884182, 36.101662, 33.149738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.463799, 36.269695, 33.488407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528931, 35.913052, 33.319401>,  <35.568012, 35.699066, 33.217999>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.528931, 35.913052, 33.319401>,  <35.463799, 36.269695, 33.488407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.528931, 35.913052, 33.319401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798137, 0.370790, -0.474860,
		0.580054, -0.259901, 0.772003,
		0.162835, -0.891608, -0.422515,
		35.577782, 35.645569, 33.192646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.267040, 36.149105, 33.527679>,  <35.463799, 36.269695, 33.488407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.267040, 36.149105, 33.527679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108150, 35.900608, 33.257488>,  <36.012817, 35.751511, 33.095375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.108150, 35.900608, 33.257488>,  <36.267040, 36.149105, 33.527679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.108150, 35.900608, 33.257488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.754750, 0.197572, -0.625553,
		0.522078, -0.758300, 0.390405,
		-0.397224, -0.621246, -0.675475,
		35.988983, 35.714233, 33.054844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.810558, 35.601383, 33.285511>,  <36.267040, 36.149105, 33.527679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.810558, 35.601383, 33.285511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537754, 35.593102, 32.993092>,  <36.374073, 35.588135, 32.817638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.537754, 35.593102, 32.993092>,  <36.810558, 35.601383, 33.285511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.537754, 35.593102, 32.993092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729455, 0.052493, -0.682011,
		0.052493, -0.998407, -0.020701,
		0.682011, 0.020701, 0.731048,
		36.333149, 35.586891, 32.773777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.066189, 35.152897, 32.798965>,  <36.810558, 35.601383, 33.285511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.066189, 35.152897, 32.798965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804977, 35.390614, 32.611187>,  <36.648251, 35.533241, 32.498520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.804977, 35.390614, 32.611187>,  <37.066189, 35.152897, 32.798965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.804977, 35.390614, 32.611187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.655952, 0.134028, -0.742808,
		-0.378523, -0.793006, -0.477348,
		-0.653029, 0.594287, -0.469441,
		36.609070, 35.568901, 32.470356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.147892, 35.060486, 32.054996>,  <37.066189, 35.152897, 32.798965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.147892, 35.060486, 32.054996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938297, 35.401012, 32.044395>,  <36.812542, 35.605328, 32.038036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.938297, 35.401012, 32.044395>,  <37.147892, 35.060486, 32.054996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.938297, 35.401012, 32.044395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715097, 0.422814, -0.556655,
		-0.462686, -0.310627, -0.830321,
		-0.523983, 0.851317, -0.026498,
		36.781101, 35.656406, 32.036446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027615, 35.294842, 31.342327>,  <37.147892, 35.060486, 32.054996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027615, 35.294842, 31.342327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989380, 35.638340, 31.543690>,  <36.966438, 35.844440, 31.664507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.989380, 35.638340, 31.543690>,  <37.027615, 35.294842, 31.342327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.989380, 35.638340, 31.543690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594861, 0.454762, -0.662822,
		-0.798126, 0.236102, -0.554303,
		-0.095582, 0.858748, 0.503405,
		36.960705, 35.895966, 31.694712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.923672, 35.797367, 30.833065>,  <37.027615, 35.294842, 31.342327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.923672, 35.797367, 30.833065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011791, 36.051239, 31.129349>,  <37.064663, 36.203564, 31.307119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.011791, 36.051239, 31.129349>,  <36.923672, 35.797367, 30.833065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.011791, 36.051239, 31.129349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.521568, 0.565048, -0.639287,
		-0.824278, 0.527166, -0.206548,
		0.220301, 0.634679, 0.740710,
		37.077881, 36.241642, 31.351562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.840660, 36.385303, 30.622511>,  <36.923672, 35.797367, 30.833065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.840660, 36.385303, 30.622511> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062183, 36.503384, 30.933935>,  <37.195095, 36.574230, 31.120790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.062183, 36.503384, 30.933935>,  <36.840660, 36.385303, 30.622511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.062183, 36.503384, 30.933935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460829, 0.670117, -0.581876,
		-0.693495, 0.681030, 0.235080,
		0.553806, 0.295196, 0.778562,
		37.228325, 36.591942, 31.167503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.760181, 37.115673, 30.652977>,  <36.840660, 36.385303, 30.622511>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.760181, 37.115673, 30.652977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098984, 37.021954, 30.843842>,  <37.302265, 36.965721, 30.958361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.098984, 37.021954, 30.843842>,  <36.760181, 37.115673, 30.652977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098984, 37.021954, 30.843842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470460, 0.748287, -0.467690,
		-0.247477, 0.620623, 0.744031,
		0.847008, -0.234295, 0.477162,
		37.353085, 36.951664, 30.986990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.027653, 37.747204, 30.762644>,  <36.760181, 37.115673, 30.652977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.027653, 37.747204, 30.762644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325119, 37.480846, 30.786442>,  <37.503601, 37.321030, 30.800720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.325119, 37.480846, 30.786442>,  <37.027653, 37.747204, 30.762644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.325119, 37.480846, 30.786442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619965, 0.653585, -0.434132,
		0.250203, 0.359735, 0.898882,
		0.743668, -0.665897, 0.059494,
		37.548218, 37.281078, 30.804291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.548126, 37.987236, 31.147182>,  <37.027653, 37.747204, 30.762644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.548126, 37.987236, 31.147182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722050, 37.722908, 30.902475>,  <37.826405, 37.564312, 30.755651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.722050, 37.722908, 30.902475>,  <37.548126, 37.987236, 31.147182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.722050, 37.722908, 30.902475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685105, 0.683644, -0.251519,
		0.584439, -0.309760, 0.749987,
		0.434813, -0.660817, -0.611766,
		37.852493, 37.524662, 30.718945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.323673, 38.134888, 31.202494>,  <37.548126, 37.987236, 31.147182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.323673, 38.134888, 31.202494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260532, 37.915455, 30.874071>,  <38.222649, 37.783794, 30.677017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.260532, 37.915455, 30.874071>,  <38.323673, 38.134888, 31.202494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.260532, 37.915455, 30.874071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657717, 0.561784, -0.501804,
		0.736540, -0.619235, 0.272136,
		-0.157853, -0.548587, -0.821057,
		38.213177, 37.750877, 30.627754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.936207, 37.934776, 30.990709>,  <38.323673, 38.134888, 31.202494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.936207, 37.934776, 30.990709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695518, 37.903389, 30.672771>,  <38.551105, 37.884556, 30.482008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.695518, 37.903389, 30.672771>,  <38.936207, 37.934776, 30.990709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.695518, 37.903389, 30.672771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557639, 0.671189, -0.488410,
		0.571816, -0.737122, -0.360109,
		-0.601718, -0.078470, -0.794844,
		38.515003, 37.879848, 30.434319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.347080, 37.917980, 30.432009>,  <38.936207, 37.934776, 30.990709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.347080, 37.917980, 30.432009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995415, 38.019733, 30.270830>,  <38.784416, 38.080788, 30.174124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.995415, 38.019733, 30.270830>,  <39.347080, 37.917980, 30.432009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995415, 38.019733, 30.270830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454368, 0.702358, -0.547944,
		0.143621, -0.664816, -0.733071,
		-0.879160, 0.254388, -0.402945,
		38.731667, 38.096050, 30.149946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.390762, 37.770119, 29.693499>,  <39.347080, 37.917980, 30.432009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.390762, 37.770119, 29.693499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092033, 38.030941, 29.745781>,  <38.912796, 38.187435, 29.777151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092033, 38.030941, 29.745781>,  <39.390762, 37.770119, 29.693499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092033, 38.030941, 29.745781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414311, 0.609932, -0.675522,
		-0.520200, -0.450340, -0.725663,
		-0.746819, 0.652056, 0.130706,
		38.867989, 38.226559, 29.784992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.206478, 37.996384, 29.085445>,  <39.390762, 37.770119, 29.693499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.206478, 37.996384, 29.085445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055473, 38.303764, 29.292122>,  <38.964870, 38.488194, 29.416128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.055473, 38.303764, 29.292122>,  <39.206478, 37.996384, 29.085445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.055473, 38.303764, 29.292122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340012, 0.634034, -0.694545,
		-0.861321, -0.086521, -0.500639,
		-0.377515, 0.768450, 0.516689,
		38.942219, 38.534298, 29.447128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.594177, 38.298115, 28.597530>,  <39.206478, 37.996384, 29.085445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.594177, 38.298115, 28.597530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725300, 38.568367, 28.861673>,  <38.803974, 38.730518, 29.020159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.725300, 38.568367, 28.861673>,  <38.594177, 38.298115, 28.597530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.725300, 38.568367, 28.861673> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139936, 0.656547, -0.741191,
		-0.934325, 0.335373, 0.120675,
		0.327804, 0.675626, 0.660359,
		38.823643, 38.771053, 29.059780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.345310, 38.933380, 28.383808>,  <38.594177, 38.298115, 28.597530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.345310, 38.933380, 28.383808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637482, 39.055065, 28.628407>,  <38.812782, 39.128078, 28.775166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.637482, 39.055065, 28.628407>,  <38.345310, 38.933380, 28.383808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.637482, 39.055065, 28.628407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143590, 0.806914, -0.572950,
		-0.667727, 0.506303, 0.545709,
		0.730426, 0.304215, 0.611498,
		38.856609, 39.146328, 28.811855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.180920, 39.656784, 28.493015>,  <38.345310, 38.933380, 28.383808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.180920, 39.656784, 28.493015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559559, 39.601387, 28.609480>,  <38.786743, 39.568150, 28.679358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.559559, 39.601387, 28.609480>,  <38.180920, 39.656784, 28.493015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.559559, 39.601387, 28.609480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288572, 0.766710, -0.573483,
		-0.143810, 0.626877, 0.765730,
		0.946596, -0.138496, 0.291160,
		38.843536, 39.559837, 28.696827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.341076, 40.262897, 28.567142>,  <38.180920, 39.656784, 28.493015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.341076, 40.262897, 28.567142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690113, 40.068638, 28.546272>,  <38.899536, 39.952080, 28.533751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.690113, 40.068638, 28.546272>,  <38.341076, 40.262897, 28.567142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.690113, 40.068638, 28.546272> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361266, 0.713584, -0.600237,
		0.328738, 0.504914, 0.798119,
		0.872593, -0.485654, -0.052174,
		38.951889, 39.922943, 28.530621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.866024, 40.742901, 28.600542>,  <38.341076, 40.262897, 28.567142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.866024, 40.742901, 28.600542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080196, 40.440979, 28.448973>,  <39.208698, 40.259827, 28.358030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.080196, 40.440979, 28.448973>,  <38.866024, 40.742901, 28.600542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080196, 40.440979, 28.448973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.639238, 0.655402, -0.402273,
		0.551985, -0.026833, 0.833422,
		0.535432, -0.754804, -0.378925,
		39.240826, 40.214539, 28.335295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.406376, 41.100594, 28.573948>,  <38.866024, 40.742901, 28.600542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.406376, 41.100594, 28.573948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436172, 40.777081, 28.340597>,  <39.454052, 40.582973, 28.200586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.436172, 40.777081, 28.340597>,  <39.406376, 41.100594, 28.573948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.436172, 40.777081, 28.340597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550316, 0.521199, -0.652307,
		0.831627, -0.272449, 0.483909,
		0.074493, -0.808779, -0.583376,
		39.458519, 40.534447, 28.165585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.055645, 40.976978, 28.384291>,  <39.406376, 41.100594, 28.573948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.055645, 40.976978, 28.384291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852348, 40.791172, 28.094212>,  <39.730370, 40.679688, 27.920164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.852348, 40.791172, 28.094212>,  <40.055645, 40.976978, 28.384291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.852348, 40.791172, 28.094212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542466, 0.481347, -0.688503,
		0.668894, -0.743321, 0.007344,
		-0.508244, -0.464520, -0.725196,
		39.699875, 40.651817, 27.876652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.516598, 40.759380, 27.841534>,  <40.055645, 40.976978, 28.384291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.516598, 40.759380, 27.841534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162247, 40.781796, 27.657326>,  <39.949635, 40.795242, 27.546801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162247, 40.781796, 27.657326>,  <40.516598, 40.759380, 27.841534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162247, 40.781796, 27.657326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.368149, 0.688945, -0.624357,
		0.282287, -0.722644, -0.630951,
		-0.885878, 0.056036, -0.460521,
		39.896484, 40.798607, 27.519169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.709915, 40.691490, 27.071426>,  <40.516598, 40.759380, 27.841534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.709915, 40.691490, 27.071426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352596, 40.864059, 27.121857>,  <40.138206, 40.967602, 27.152115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.352596, 40.864059, 27.121857>,  <40.709915, 40.691490, 27.071426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.352596, 40.864059, 27.121857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274649, 0.745983, -0.606694,
		-0.355792, -0.507332, -0.784873,
		-0.893297, 0.431422, 0.126077,
		40.084606, 40.993484, 27.159679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.448166, 40.956470, 26.291010>,  <40.709915, 40.691490, 27.071426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.448166, 40.956470, 26.291010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226181, 41.171207, 26.545195>,  <40.092991, 41.300049, 26.697706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.226181, 41.171207, 26.545195>,  <40.448166, 40.956470, 26.291010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.226181, 41.171207, 26.545195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391396, 0.842565, -0.369990,
		-0.734047, 0.043388, -0.677712,
		-0.554964, 0.536843, 0.635464,
		40.059692, 41.332260, 26.735834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.975445, 41.498314, 25.830145>,  <40.448166, 40.956470, 26.291010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.975445, 41.498314, 25.830145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004951, 41.615444, 26.211472>,  <40.022655, 41.685722, 26.440268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.004951, 41.615444, 26.211472>,  <39.975445, 41.498314, 25.830145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.004951, 41.615444, 26.211472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.351079, 0.887101, -0.299657,
		-0.933435, 0.356795, -0.037365,
		0.073769, 0.292829, 0.953315,
		40.027081, 41.703293, 26.497465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771595, 42.154285, 25.827106>,  <39.975445, 41.498314, 25.830145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771595, 42.154285, 25.827106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932964, 42.159973, 26.193068>,  <40.029785, 42.163387, 26.412643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.932964, 42.159973, 26.193068>,  <39.771595, 42.154285, 25.827106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.932964, 42.159973, 26.193068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333032, 0.929019, -0.161289,
		-0.852255, 0.369759, 0.370053,
		0.403425, 0.014220, 0.914902,
		40.053993, 42.164238, 26.467539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.587486, 42.778927, 26.198935>,  <39.771595, 42.154285, 25.827106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.587486, 42.778927, 26.198935> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900047, 42.658550, 26.417603>,  <40.087585, 42.586323, 26.548803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900047, 42.658550, 26.417603>,  <39.587486, 42.778927, 26.198935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900047, 42.658550, 26.417603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.419348, 0.901978, -0.102872,
		-0.462124, 0.309628, 0.831006,
		0.781402, -0.300941, 0.546668,
		40.134468, 42.568268, 26.581602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.633900, 43.288891, 26.843369>,  <39.587486, 42.778927, 26.198935>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.633900, 43.288891, 26.843369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982498, 43.103249, 26.779997>,  <40.191658, 42.991863, 26.741974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.982498, 43.103249, 26.779997>,  <39.633900, 43.288891, 26.843369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.982498, 43.103249, 26.779997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486862, 0.857545, 0.166077,
		0.058784, -0.221870, 0.973303,
		0.871498, -0.464102, -0.158430,
		40.243946, 42.964020, 26.732468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.139885, 43.554813, 27.319569>,  <39.633900, 43.288891, 26.843369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.139885, 43.554813, 27.319569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365665, 43.383530, 27.037285>,  <40.501133, 43.280758, 26.867914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.365665, 43.383530, 27.037285>,  <40.139885, 43.554813, 27.319569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.365665, 43.383530, 27.037285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618561, 0.785528, 0.018109,
		0.546600, -0.446747, 0.708269,
		0.564456, -0.428209, -0.705710,
		40.535004, 43.255066, 26.825571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.804741, 43.735023, 27.471878>,  <40.139885, 43.554813, 27.319569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.804741, 43.735023, 27.471878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827316, 43.635040, 27.085234>,  <40.840862, 43.575050, 26.853247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.827316, 43.635040, 27.085234>,  <40.804741, 43.735023, 27.471878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.827316, 43.635040, 27.085234> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561472, 0.808499, -0.176292,
		0.825570, -0.532775, 0.185972,
		0.056434, -0.249959, -0.966610,
		40.844246, 43.560051, 26.795250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.572491, 43.698074, 27.272600>,  <40.804741, 43.735023, 27.471878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.572491, 43.698074, 27.272600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400333, 43.750587, 26.915382>,  <41.297039, 43.782093, 26.701052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.400333, 43.750587, 26.915382>,  <41.572491, 43.698074, 27.272600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400333, 43.750587, 26.915382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707410, 0.663578, -0.243383,
		0.560653, -0.736498, -0.378468,
		-0.430394, 0.131279, -0.893044,
		41.271214, 43.789970, 26.647469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.059048, 43.892490, 26.977640>,  <41.572491, 43.698074, 27.272600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.059048, 43.892490, 26.977640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816467, 44.001305, 26.678787>,  <41.670918, 44.066593, 26.499475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.816467, 44.001305, 26.678787>,  <42.059048, 43.892490, 26.977640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.816467, 44.001305, 26.678787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643451, 0.719920, -0.260165,
		0.467102, -0.638522, -0.611642,
		-0.606454, 0.272037, -0.747134,
		41.634533, 44.082916, 26.454647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.440899, 43.862659, 26.420444>,  <42.059048, 43.892490, 26.977640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.440899, 43.862659, 26.420444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143322, 44.123230, 26.360849>,  <41.964775, 44.279572, 26.325092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.143322, 44.123230, 26.360849>,  <42.440899, 43.862659, 26.420444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.143322, 44.123230, 26.360849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667276, 0.712184, -0.218028,
		-0.035920, -0.261618, -0.964503,
		-0.743943, 0.651422, -0.148990,
		41.920139, 44.318657, 26.316153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.524654, 44.192844, 25.799400>,  <42.440899, 43.862659, 26.420444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.524654, 44.192844, 25.799400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276016, 44.452484, 25.974800>,  <42.126831, 44.608269, 26.080040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.276016, 44.452484, 25.974800>,  <42.524654, 44.192844, 25.799400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.276016, 44.452484, 25.974800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607290, 0.752906, -0.253636,
		-0.494784, 0.108636, -0.862199,
		-0.621600, 0.649100, 0.438500,
		42.089535, 44.647213, 26.106350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.462681, 44.702400, 25.337799>,  <42.524654, 44.192844, 25.799400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.462681, 44.702400, 25.337799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350552, 44.859852, 25.687992>,  <42.283272, 44.954323, 25.898108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.350552, 44.859852, 25.687992>,  <42.462681, 44.702400, 25.337799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.350552, 44.859852, 25.687992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683945, 0.721856, -0.105562,
		-0.673526, 0.569191, -0.471577,
		-0.280326, 0.393631, 0.875484,
		42.266453, 44.977940, 25.950638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.311329, 45.448051, 25.318563>,  <42.462681, 44.702400, 25.337799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.311329, 45.448051, 25.318563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424210, 45.368454, 25.693960>,  <42.491936, 45.320698, 25.919199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.424210, 45.368454, 25.693960>,  <42.311329, 45.448051, 25.318563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.424210, 45.368454, 25.693960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.740859, 0.666709, -0.081408,
		-0.609502, 0.718263, 0.335569,
		0.282199, -0.198991, 0.938491,
		42.508869, 45.308758, 25.975508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.018795, 45.680355, 24.650557>,  <42.311329, 45.448051, 25.318563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.018795, 45.680355, 24.650557> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163166, 45.539032, 24.305326>,  <42.249790, 45.454239, 24.098188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.163166, 45.539032, 24.305326>,  <42.018795, 45.680355, 24.650557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.163166, 45.539032, 24.305326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712804, 0.492254, -0.499595,
		0.601365, 0.795524, -0.074172,
		0.360929, -0.353309, -0.863078,
		42.271446, 45.433041, 24.046404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.387897, 46.234337, 24.158655>,  <42.018795, 45.680355, 24.650557>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.387897, 46.234337, 24.158655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193375, 45.915695, 24.015030>,  <42.076660, 45.724510, 23.928854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193375, 45.915695, 24.015030>,  <42.387897, 46.234337, 24.158655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193375, 45.915695, 24.015030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.648893, 0.604443, -0.462155,
		0.585189, 0.008247, -0.810855,
		-0.486304, -0.796606, -0.359064,
		42.047482, 45.676712, 23.907310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471268, 46.882889, 24.031704>,  <42.387897, 46.234337, 24.158655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471268, 46.882889, 24.031704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622616, 47.252739, 24.014215>,  <42.713425, 47.474648, 24.003723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.622616, 47.252739, 24.014215>,  <42.471268, 46.882889, 24.031704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.622616, 47.252739, 24.014215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381645, 0.198858, 0.902664,
		0.843317, -0.324855, 0.428118,
		0.378370, 0.924622, -0.043721,
		42.736126, 47.530125, 24.001099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.886826, 47.036343, 24.623556>,  <42.471268, 46.882889, 24.031704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.886826, 47.036343, 24.623556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680153, 47.347141, 24.479712>,  <42.556149, 47.533619, 24.393404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.680153, 47.347141, 24.479712>,  <42.886826, 47.036343, 24.623556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.680153, 47.347141, 24.479712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643204, -0.075036, 0.762010,
		0.565095, 0.625017, 0.538537,
		-0.516679, 0.776996, -0.359611,
		42.525150, 47.580238, 24.371828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519630, 46.518497, 24.807255>,  <42.886826, 47.036343, 24.623556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519630, 46.518497, 24.807255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461658, 46.582794, 24.416735>,  <43.426876, 46.621372, 24.182423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.461658, 46.582794, 24.416735>,  <43.519630, 46.518497, 24.807255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.461658, 46.582794, 24.416735> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628613, -0.747031, -0.216311,
		-0.764094, -0.645064, 0.007225,
		-0.144931, 0.160740, -0.976298,
		43.418179, 46.631016, 24.123846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.882744, 46.525715, 25.231215>,  <43.519630, 46.518497, 24.807255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.882744, 46.525715, 25.231215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036934, 46.800125, 25.478043>,  <43.129448, 46.964771, 25.626141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.036934, 46.800125, 25.478043>,  <42.882744, 46.525715, 25.231215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.036934, 46.800125, 25.478043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.664259, -0.257855, 0.701620,
		0.640445, -0.680352, 0.356303,
		0.385474, 0.686026, 0.617072,
		43.152576, 47.005932, 25.663164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.083572, 46.314697, 25.931606>,  <42.882744, 46.525715, 25.231215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.083572, 46.314697, 25.931606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965427, 46.696392, 25.950333>,  <42.894539, 46.925407, 25.961569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.965427, 46.696392, 25.950333>,  <43.083572, 46.314697, 25.931606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.965427, 46.696392, 25.950333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708073, -0.251543, 0.659817,
		0.641398, 0.161739, 0.749966,
		-0.295367, 0.954236, 0.046817,
		42.876816, 46.982662, 25.964378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.132591, 46.609192, 26.707218>,  <43.083572, 46.314697, 25.931606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.132591, 46.609192, 26.707218> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847443, 46.782681, 26.486780>,  <42.676353, 46.886772, 26.354517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.847443, 46.782681, 26.486780>,  <43.132591, 46.609192, 26.707218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.847443, 46.782681, 26.486780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699850, -0.389469, 0.598769,
		0.045065, 0.812527, 0.581179,
		-0.712867, 0.433722, -0.551095,
		42.633583, 46.912796, 26.321451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.706692, 47.235352, 27.006298>,  <43.132591, 46.609192, 26.707218>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.706692, 47.235352, 27.006298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524685, 46.974636, 26.763605>,  <42.415482, 46.818207, 26.617990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.524685, 46.974636, 26.763605>,  <42.706692, 47.235352, 27.006298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.524685, 46.974636, 26.763605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630409, -0.245434, 0.736442,
		-0.628920, 0.717585, -0.299219,
		-0.455021, -0.651793, -0.606731,
		42.388180, 46.779099, 26.581587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.989948, 47.433445, 27.000378>,  <42.706692, 47.235352, 27.006298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.989948, 47.433445, 27.000378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077644, 47.045929, 26.954102>,  <42.130260, 46.813419, 26.926336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.077644, 47.045929, 26.954102>,  <41.989948, 47.433445, 27.000378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.077644, 47.045929, 26.954102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588473, -0.225880, 0.776323,
		-0.778225, -0.102118, -0.619627,
		0.219238, -0.968788, -0.115692,
		42.143417, 46.755291, 26.919394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297188, 47.188290, 26.921757>,  <41.989948, 47.433445, 27.000378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297188, 47.188290, 26.921757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528706, 46.872284, 27.002630>,  <41.667618, 46.682682, 27.051153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.528706, 46.872284, 27.002630>,  <41.297188, 47.188290, 26.921757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.528706, 46.872284, 27.002630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721335, -0.380355, 0.578797,
		-0.380355, -0.480848, -0.790010,
		-0.578797, 0.790010, -0.202183,
		41.702343, 46.635281, 27.063286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899109, 46.483047, 26.756426>,  <41.297188, 47.188290, 26.921757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899109, 46.483047, 26.756426> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179035, 46.369846, 27.018774>,  <41.346992, 46.301926, 27.176182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.179035, 46.369846, 27.018774>,  <40.899109, 46.483047, 26.756426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.179035, 46.369846, 27.018774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702393, -0.439728, 0.559717,
		0.130001, -0.852377, -0.506510,
		0.699817, -0.283006, 0.655869,
		41.388981, 46.284943, 27.215534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.592094, 45.913006, 27.020197>,  <40.899109, 46.483047, 26.756426>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.592094, 45.913006, 27.020197> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875645, 45.980526, 27.294130>,  <41.045776, 46.021038, 27.458490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875645, 45.980526, 27.294130>,  <40.592094, 45.913006, 27.020197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875645, 45.980526, 27.294130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545055, -0.485152, 0.683771,
		0.447669, -0.857983, -0.251909,
		0.708878, 0.168799, 0.684835,
		41.088306, 46.031166, 27.499580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.618782, 45.278294, 27.281128>,  <40.592094, 45.913006, 27.020197>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.618782, 45.278294, 27.281128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798069, 45.531689, 27.533409>,  <40.905643, 45.683727, 27.684778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.798069, 45.531689, 27.533409>,  <40.618782, 45.278294, 27.281128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.798069, 45.531689, 27.533409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367533, -0.512558, 0.776018,
		0.814873, -0.579631, 0.003090,
		0.448220, 0.633492, 0.630703,
		40.932533, 45.721737, 27.722620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.871773, 44.910885, 27.727612>,  <40.618782, 45.278294, 27.281128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.871773, 44.910885, 27.727612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860847, 45.245983, 27.945761>,  <40.854294, 45.447044, 28.076651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.860847, 45.245983, 27.945761>,  <40.871773, 44.910885, 27.727612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860847, 45.245983, 27.945761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318802, -0.524387, 0.789546,
		0.947428, -0.152301, 0.281399,
		-0.027313, 0.837749, 0.545372,
		40.852654, 45.497307, 28.109373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.182518, 44.770329, 28.316183>,  <40.871773, 44.910885, 27.727612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.182518, 44.770329, 28.316183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938938, 45.081165, 28.379816>,  <40.792789, 45.267666, 28.417995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.938938, 45.081165, 28.379816>,  <41.182518, 44.770329, 28.316183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.938938, 45.081165, 28.379816> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463165, -0.511167, 0.724007,
		0.643936, 0.367207, 0.671198,
		-0.608954, 0.777089, 0.159081,
		40.756252, 45.314293, 28.427540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243294, 44.923035, 29.051281>,  <41.182518, 44.770329, 28.316183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.243294, 44.923035, 29.051281> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888954, 45.056644, 28.922472>,  <40.676350, 45.136810, 28.845186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.888954, 45.056644, 28.922472>,  <41.243294, 44.923035, 29.051281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.888954, 45.056644, 28.922472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450130, -0.450424, 0.771039,
		0.112502, 0.827975, 0.549364,
		-0.885848, 0.334028, -0.322023,
		40.623199, 45.156853, 28.825865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.877453, 45.106174, 29.663671>,  <41.243294, 44.923035, 29.051281>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.877453, 45.106174, 29.663671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612617, 45.061310, 29.367277>,  <40.453716, 45.034389, 29.189442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.612617, 45.061310, 29.367277>,  <40.877453, 45.106174, 29.663671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612617, 45.061310, 29.367277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534250, -0.622746, 0.571633,
		-0.525562, 0.774343, 0.352389,
		-0.662089, -0.112164, -0.740984,
		40.413990, 45.027660, 29.144981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.330139, 44.907375, 30.024471>,  <40.877453, 45.106174, 29.663671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.330139, 44.907375, 30.024471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193287, 44.816910, 29.659658>,  <40.111176, 44.762630, 29.440771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193287, 44.816910, 29.659658>,  <40.330139, 44.907375, 30.024471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193287, 44.816910, 29.659658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635133, -0.659649, 0.401833,
		-0.692498, 0.716739, 0.082043,
		-0.342129, -0.226160, -0.912030,
		40.090649, 44.749062, 29.386049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.608974, 44.919296, 30.143713>,  <40.330139, 44.907375, 30.024471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.608974, 44.919296, 30.143713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704193, 44.679569, 29.837994>,  <39.761326, 44.535732, 29.654562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.704193, 44.679569, 29.837994>,  <39.608974, 44.919296, 30.143713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.704193, 44.679569, 29.837994> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284853, -0.795397, 0.534979,
		-0.928542, 0.090362, -0.360061,
		0.238050, -0.599315, -0.764299,
		39.775608, 44.499775, 29.608704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.026047, 44.527645, 29.995653>,  <39.608974, 44.919296, 30.143713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.026047, 44.527645, 29.995653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311310, 44.291573, 29.844345>,  <39.482468, 44.149929, 29.753559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.311310, 44.291573, 29.844345>,  <39.026047, 44.527645, 29.995653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.311310, 44.291573, 29.844345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383153, -0.780052, 0.494684,
		-0.587026, -0.207851, -0.782431,
		0.713157, -0.590184, -0.378272,
		39.525257, 44.114517, 29.730864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.649586, 43.985813, 29.886412>,  <39.026047, 44.527645, 29.995653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.649586, 43.985813, 29.886412> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033218, 43.872681, 29.881222>,  <39.263397, 43.804802, 29.878107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.033218, 43.872681, 29.881222>,  <38.649586, 43.985813, 29.886412>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.033218, 43.872681, 29.881222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252434, -0.874947, 0.413212,
		-0.128223, -0.393029, -0.910542,
		0.959081, -0.282836, -0.012974,
		39.320942, 43.787830, 29.877329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.592625, 43.344326, 29.683807>,  <38.649586, 43.985813, 29.886412>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.592625, 43.344326, 29.683807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954021, 43.349327, 29.855173>,  <39.170860, 43.352325, 29.957993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954021, 43.349327, 29.855173>,  <38.592625, 43.344326, 29.683807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954021, 43.349327, 29.855173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.256435, -0.785156, 0.563712,
		0.343418, -0.619172, -0.706181,
		0.903496, 0.012499, 0.428414,
		39.225071, 43.353077, 29.983698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002743, 42.741718, 29.434879>,  <38.592625, 43.344326, 29.683807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002743, 42.741718, 29.434879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099129, 42.886715, 29.794998>,  <39.156960, 42.973713, 30.011070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.099129, 42.886715, 29.794998>,  <39.002743, 42.741718, 29.434879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.099129, 42.886715, 29.794998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172138, -0.896960, 0.407224,
		0.955147, -0.253102, -0.153735,
		0.240963, 0.362495, 0.900297,
		39.171417, 42.995464, 30.065086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.209949, 42.203480, 29.814302>,  <39.002743, 42.741718, 29.434879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.209949, 42.203480, 29.814302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166069, 42.448025, 30.127789>,  <39.139740, 42.594749, 30.315880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.166069, 42.448025, 30.127789>,  <39.209949, 42.203480, 29.814302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166069, 42.448025, 30.127789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262784, -0.778255, 0.570319,
		0.958598, -0.143384, 0.246030,
		-0.109700, 0.611359, 0.783713,
		39.133160, 42.631432, 30.362902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.519279, 41.805519, 30.357008>,  <39.209949, 42.203480, 29.814302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.519279, 41.805519, 30.357008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259117, 42.067188, 30.511427>,  <39.103020, 42.224190, 30.604078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259117, 42.067188, 30.511427>,  <39.519279, 41.805519, 30.357008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259117, 42.067188, 30.511427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192509, -0.633604, 0.749324,
		0.734787, 0.413047, 0.538033,
		-0.650406, 0.654170, 0.386049,
		39.063995, 42.263439, 30.627241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.652988, 41.711224, 31.044163>,  <39.519279, 41.805519, 30.357008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.652988, 41.711224, 31.044163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314880, 41.924652, 31.032698>,  <39.112015, 42.052711, 31.025818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.314880, 41.924652, 31.032698>,  <39.652988, 41.711224, 31.044163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.314880, 41.924652, 31.032698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417013, -0.625177, 0.659737,
		0.334099, 0.569607, 0.750949,
		-0.845268, 0.533574, -0.028663,
		39.061298, 42.084724, 31.024099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.439899, 41.782627, 31.808580>,  <39.652988, 41.711224, 31.044163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.439899, 41.782627, 31.808580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112785, 41.842793, 31.586370>,  <38.916519, 41.878891, 31.453045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112785, 41.842793, 31.586370>,  <39.439899, 41.782627, 31.808580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112785, 41.842793, 31.586370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503192, -0.655358, 0.563297,
		-0.279340, 0.740190, 0.611627,
		-0.817782, 0.150415, -0.555526,
		38.867451, 41.887917, 31.419712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.827221, 41.515640, 32.229965>,  <39.439899, 41.782627, 31.808580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.827221, 41.515640, 32.229965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643448, 41.562000, 31.877718>,  <38.533184, 41.589817, 31.666368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643448, 41.562000, 31.877718>,  <38.827221, 41.515640, 32.229965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643448, 41.562000, 31.877718> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735908, -0.604834, 0.304329,
		-0.497358, 0.787873, 0.363169,
		-0.459429, 0.115899, -0.880620,
		38.505619, 41.596771, 31.613531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039371, 41.714081, 32.309288>,  <38.827221, 41.515640, 32.229965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039371, 41.714081, 32.309288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089485, 41.544209, 31.950636>,  <38.119553, 41.442284, 31.735445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.089485, 41.544209, 31.950636>,  <38.039371, 41.714081, 32.309288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.089485, 41.544209, 31.950636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842990, -0.522107, 0.129507,
		-0.523136, 0.739621, -0.423426,
		0.125288, -0.424694, -0.896626,
		38.127068, 41.416805, 31.681646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.469337, 41.908428, 31.898270>,  <38.039371, 41.714081, 32.309288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.469337, 41.908428, 31.898270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607502, 41.564564, 31.747713>,  <37.690399, 41.358246, 31.657379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.607502, 41.564564, 31.747713>,  <37.469337, 41.908428, 31.898270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607502, 41.564564, 31.747713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.866909, -0.445886, 0.222833,
		-0.359389, 0.249327, -0.899264,
		0.345411, -0.859664, -0.376390,
		37.711124, 41.306664, 31.634796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.884716, 41.633377, 31.580118>,  <37.469337, 41.908428, 31.898270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.884716, 41.633377, 31.580118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138783, 41.331551, 31.646069>,  <37.291222, 41.150455, 31.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.138783, 41.331551, 31.646069>,  <36.884716, 41.633377, 31.580118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.138783, 41.331551, 31.646069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771665, -0.610827, 0.177266,
		-0.033048, -0.239824, -0.970254,
		0.635169, -0.754569, 0.164878,
		37.329334, 41.105179, 31.695532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.454784, 41.087627, 31.421888>,  <36.884716, 41.633377, 31.580118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.454784, 41.087627, 31.421888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755154, 40.914345, 31.621267>,  <36.935375, 40.810375, 31.740894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.755154, 40.914345, 31.621267>,  <36.454784, 41.087627, 31.421888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.755154, 40.914345, 31.621267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588800, -0.780981, 0.208287,
		0.299046, -0.449893, -0.841527,
		0.750923, -0.433204, 0.498446,
		36.980431, 40.784382, 31.770802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.298031, 40.373508, 31.456354>,  <36.454784, 41.087627, 31.421888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.298031, 40.373508, 31.456354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588558, 40.379887, 31.731224>,  <36.762875, 40.383713, 31.896147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.588558, 40.379887, 31.731224>,  <36.298031, 40.373508, 31.456354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.588558, 40.379887, 31.731224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555107, -0.575976, 0.600090,
		0.405367, -0.817311, -0.409487,
		0.726315, 0.015947, 0.687177,
		36.806454, 40.384670, 31.937378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.399860, 39.618587, 31.754000>,  <36.298031, 40.373508, 31.456354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.399860, 39.618587, 31.754000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559059, 39.862000, 32.028599>,  <36.654579, 40.008049, 32.193359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.559059, 39.862000, 32.028599>,  <36.399860, 39.618587, 31.754000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.559059, 39.862000, 32.028599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404457, -0.555272, 0.726696,
		0.823413, -0.566886, 0.025126,
		0.398001, 0.608534, 0.686499,
		36.678459, 40.044559, 32.234550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551605, 39.084972, 32.297085>,  <36.399860, 39.618587, 31.754000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551605, 39.084972, 32.297085> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548698, 39.440514, 32.480339>,  <36.546955, 39.653839, 32.590290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.548698, 39.440514, 32.480339>,  <36.551605, 39.084972, 32.297085>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548698, 39.440514, 32.480339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581850, -0.376361, 0.720973,
		0.813263, -0.261329, 0.519913,
		-0.007264, 0.888853, 0.458135,
		36.546520, 39.707169, 32.617779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848446, 38.986877, 32.943592>,  <36.551605, 39.084972, 32.297085>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848446, 38.986877, 32.943592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623447, 39.317242, 32.958931>,  <36.488449, 39.515461, 32.968136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.623447, 39.317242, 32.958931>,  <36.848446, 38.986877, 32.943592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.623447, 39.317242, 32.958931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490287, -0.370549, 0.788868,
		0.665742, 0.424936, 0.613365,
		-0.562500, 0.825908, 0.038349,
		36.454697, 39.565014, 32.970436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.786747, 39.205856, 33.673321>,  <36.848446, 38.986877, 32.943592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.786747, 39.205856, 33.673321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476002, 39.365791, 33.478748>,  <36.289555, 39.461754, 33.362007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.476002, 39.365791, 33.478748>,  <36.786747, 39.205856, 33.673321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.476002, 39.365791, 33.478748> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628019, -0.436139, 0.644496,
		0.045542, 0.806172, 0.589926,
		-0.776864, 0.399836, -0.486429,
		36.242943, 39.485741, 33.332821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.498959, 39.373009, 34.204277>,  <36.786747, 39.205856, 33.673321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.498959, 39.373009, 34.204277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214302, 39.410015, 33.925705>,  <36.043507, 39.432220, 33.758564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.214302, 39.410015, 33.925705>,  <36.498959, 39.373009, 34.204277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.214302, 39.410015, 33.925705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602334, -0.590584, 0.537034,
		-0.361611, 0.801655, 0.476011,
		-0.711640, 0.092519, -0.696426,
		36.000809, 39.437771, 33.716778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.871349, 39.475777, 34.687473>,  <36.498959, 39.373009, 34.204277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.871349, 39.475777, 34.687473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769501, 39.375420, 34.313900>,  <35.708393, 39.315205, 34.089756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.769501, 39.375420, 34.313900>,  <35.871349, 39.475777, 34.687473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.769501, 39.375420, 34.313900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.691526, -0.627855, 0.357197,
		-0.675990, 0.736785, -0.013634,
		-0.254617, -0.250890, -0.933930,
		35.693115, 39.300152, 34.033722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138107, 39.474190, 34.661484>,  <35.871349, 39.475777, 34.687473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138107, 39.474190, 34.661484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270596, 39.222549, 34.380192>,  <35.350090, 39.071568, 34.211418>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.270596, 39.222549, 34.380192>,  <35.138107, 39.474190, 34.661484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.270596, 39.222549, 34.380192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621458, -0.706257, 0.339104,
		-0.709997, 0.324723, -0.624867,
		0.331202, -0.629092, -0.703242,
		35.369961, 39.033821, 34.169224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505363, 39.156109, 34.449184>,  <35.138107, 39.474190, 34.661484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505363, 39.156109, 34.449184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803337, 38.929337, 34.308521>,  <34.982121, 38.793274, 34.224121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.803337, 38.929337, 34.308521>,  <34.505363, 39.156109, 34.449184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.803337, 38.929337, 34.308521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450684, -0.816299, 0.361303,
		-0.491894, -0.110658, -0.863594,
		0.744932, -0.566931, -0.351661,
		35.026817, 38.759258, 34.203022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.172546, 38.555702, 34.345383>,  <34.505363, 39.156109, 34.449184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.172546, 38.555702, 34.345383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555935, 38.441769, 34.351044>,  <34.785969, 38.373409, 34.354439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555935, 38.441769, 34.351044>,  <34.172546, 38.555702, 34.345383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555935, 38.441769, 34.351044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254979, -0.833681, 0.489858,
		-0.127728, -0.473125, -0.871687,
		0.958474, -0.284830, 0.014153,
		34.843475, 38.356319, 34.355289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.193546, 37.902618, 34.175140>,  <34.172546, 38.555702, 34.345383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.193546, 37.902618, 34.175140> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539864, 37.935909, 34.372509>,  <34.747654, 37.955883, 34.490932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.539864, 37.935909, 34.372509>,  <34.193546, 37.902618, 34.175140>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.539864, 37.935909, 34.372509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303958, -0.695831, 0.650714,
		0.397498, -0.713367, -0.577151,
		0.865797, 0.083228, 0.493425,
		34.799603, 37.960876, 34.520535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.424156, 37.217518, 34.194077>,  <34.193546, 37.902618, 34.175140>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.424156, 37.217518, 34.194077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628952, 37.416168, 34.474426>,  <34.751831, 37.535358, 34.642635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.628952, 37.416168, 34.474426>,  <34.424156, 37.217518, 34.194077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628952, 37.416168, 34.474426> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114882, -0.769009, 0.628830,
		0.851273, -0.402474, -0.336673,
		0.511993, 0.496629, 0.700873,
		34.782551, 37.565155, 34.684689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.872692, 36.727318, 34.439911>,  <34.424156, 37.217518, 34.194077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.872692, 36.727318, 34.439911> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875008, 37.001862, 34.730804>,  <34.876396, 37.166588, 34.905342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.875008, 37.001862, 34.730804>,  <34.872692, 36.727318, 34.439911>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.875008, 37.001862, 34.730804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126895, -0.720867, 0.681358,
		0.991899, -0.096229, 0.082921,
		0.005791, 0.686361, 0.727238,
		34.876743, 37.207771, 34.948975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.299099, 36.547611, 35.007633>,  <34.872692, 36.727318, 34.439911>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.299099, 36.547611, 35.007633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063568, 36.794395, 35.216496>,  <34.922249, 36.942467, 35.341812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.063568, 36.794395, 35.216496>,  <35.299099, 36.547611, 35.007633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.063568, 36.794395, 35.216496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149766, -0.718120, 0.679613,
		0.794260, 0.321976, 0.515250,
		-0.588830, 0.616957, 0.522153,
		34.886921, 36.979481, 35.373142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.352615, 36.340424, 35.773861>,  <35.299099, 36.547611, 35.007633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.352615, 36.340424, 35.773861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008591, 36.536564, 35.717506>,  <34.802174, 36.654247, 35.683693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008591, 36.536564, 35.717506>,  <35.352615, 36.340424, 35.773861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008591, 36.536564, 35.717506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451776, -0.603678, 0.656865,
		0.237043, 0.628595, 0.740729,
		-0.860064, 0.490349, -0.140886,
		34.750572, 36.683670, 35.675240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088882, 36.389320, 36.424942>,  <35.352615, 36.340424, 35.773861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088882, 36.389320, 36.424942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772808, 36.461239, 36.190582>,  <34.583164, 36.504391, 36.049965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.772808, 36.461239, 36.190582>,  <35.088882, 36.389320, 36.424942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772808, 36.461239, 36.190582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532585, -0.674479, 0.511304,
		-0.303246, 0.716067, 0.628721,
		-0.790187, 0.179796, -0.585899,
		34.535751, 36.515179, 36.014812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.572655, 36.853508, 36.227318>,  <35.088882, 36.389320, 36.424942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.572655, 36.853508, 36.227318> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859070, 36.632763, 36.398308>,  <36.030918, 36.500317, 36.500904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.859070, 36.632763, 36.398308>,  <35.572655, 36.853508, 36.227318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.859070, 36.632763, 36.398308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579557, 0.811322, 0.076622,
		-0.389108, 0.192883, 0.900773,
		0.716037, -0.551863, 0.427478,
		36.073879, 36.467205, 36.526550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.831482, 37.293869, 36.786438>,  <35.572655, 36.853508, 36.227318>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.831482, 37.293869, 36.786438> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122829, 37.025764, 36.729549>,  <36.297638, 36.864902, 36.695415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.122829, 37.025764, 36.729549>,  <35.831482, 37.293869, 36.786438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.122829, 37.025764, 36.729549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681944, 0.729299, 0.055453,
		0.066554, -0.137378, 0.988280,
		0.728370, -0.670261, -0.142222,
		36.341339, 36.824688, 36.686882>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.308891, 37.582592, 37.096329>,  <35.831482, 37.293869, 36.786438>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.308891, 37.582592, 37.096329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516430, 37.314922, 36.883537>,  <36.640953, 37.154320, 36.755863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.516430, 37.314922, 36.883537>,  <36.308891, 37.582592, 37.096329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.516430, 37.314922, 36.883537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686506, 0.696986, -0.207170,
		0.509415, -0.257717, 0.821023,
		0.518850, -0.669173, -0.531980,
		36.672085, 37.114170, 36.723942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.071678, 37.481636, 37.367634>,  <36.308891, 37.582592, 37.096329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.071678, 37.481636, 37.367634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085258, 37.341869, 36.993095>,  <37.093407, 37.258007, 36.768372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.085258, 37.341869, 36.993095>,  <37.071678, 37.481636, 37.367634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.085258, 37.341869, 36.993095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806487, 0.562922, -0.180824,
		0.590276, -0.749015, 0.300916,
		0.033952, -0.349421, -0.936350,
		37.095444, 37.237041, 36.712189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.801277, 37.312450, 37.317341>,  <37.071678, 37.481636, 37.367634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.801277, 37.312450, 37.317341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651398, 37.348930, 36.948280>,  <37.561470, 37.370819, 36.726845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.651398, 37.348930, 36.948280>,  <37.801277, 37.312450, 37.317341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.651398, 37.348930, 36.948280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781026, 0.567293, -0.261105,
		0.499602, -0.818450, -0.283791,
		-0.374694, 0.091200, -0.922652,
		37.538990, 37.376289, 36.671486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.368629, 37.230843, 36.849525>,  <37.801277, 37.312450, 37.317341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.368629, 37.230843, 36.849525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097328, 37.428905, 36.632347>,  <37.934547, 37.547745, 36.502041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.097328, 37.428905, 36.632347>,  <38.368629, 37.230843, 36.849525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.097328, 37.428905, 36.632347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708657, 0.636193, -0.305063,
		0.194363, -0.591673, -0.782398,
		-0.678254, 0.495159, -0.542945,
		37.893852, 37.577454, 36.469463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.706284, 37.310123, 36.302807>,  <38.368629, 37.230843, 36.849525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.706284, 37.310123, 36.302807> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414761, 37.581013, 36.262398>,  <38.239849, 37.743546, 36.238152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.414761, 37.581013, 36.262398>,  <38.706284, 37.310123, 36.302807>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.414761, 37.581013, 36.262398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679436, 0.696970, -0.229345,
		-0.084907, -0.235789, -0.968088,
		-0.728806, 0.677227, -0.101026,
		38.196117, 37.784180, 36.232090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.981171, 37.526520, 35.657402>,  <38.706284, 37.310123, 36.302807>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.981171, 37.526520, 35.657402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733761, 37.785831, 35.835014>,  <38.585316, 37.941418, 35.941582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.733761, 37.785831, 35.835014>,  <38.981171, 37.526520, 35.657402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733761, 37.785831, 35.835014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.528744, 0.761400, -0.375101,
		-0.581255, 0.002770, -0.813717,
		-0.618524, 0.648277, 0.444032,
		38.548203, 37.980316, 35.968224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.753250, 37.961113, 35.067829>,  <38.981171, 37.526520, 35.657402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.753250, 37.961113, 35.067829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700203, 38.159657, 35.410999>,  <38.668373, 38.278782, 35.616901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.700203, 38.159657, 35.410999>,  <38.753250, 37.961113, 35.067829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.700203, 38.159657, 35.410999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392081, 0.821244, -0.414526,
		-0.910321, 0.281401, -0.303528,
		-0.132622, 0.496359, 0.857927,
		38.660416, 38.308563, 35.668377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422894, 38.633514, 34.909187>,  <38.753250, 37.961113, 35.067829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422894, 38.633514, 34.909187> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566952, 38.705189, 35.275398>,  <38.653385, 38.748192, 35.495125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.566952, 38.705189, 35.275398>,  <38.422894, 38.633514, 34.909187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.566952, 38.705189, 35.275398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292421, 0.910239, -0.293183,
		-0.885881, 0.373307, 0.275421,
		0.360146, 0.179186, 0.915526,
		38.674995, 38.758945, 35.550056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086658, 39.246433, 35.133007>,  <38.422894, 38.633514, 34.909187>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086658, 39.246433, 35.133007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417393, 39.186546, 35.349869>,  <38.615833, 39.150616, 35.479984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.417393, 39.186546, 35.349869>,  <38.086658, 39.246433, 35.133007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.417393, 39.186546, 35.349869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211951, 0.975800, -0.053779,
		-0.520981, 0.159376, 0.838557,
		0.826835, -0.149715, 0.542153,
		38.665443, 39.141632, 35.512516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.996826, 39.760265, 35.663254>,  <38.086658, 39.246433, 35.133007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.996826, 39.760265, 35.663254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381638, 39.656776, 35.628445>,  <38.612522, 39.594685, 35.607559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381638, 39.656776, 35.628445>,  <37.996826, 39.760265, 35.663254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381638, 39.656776, 35.628445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244547, 0.958539, -0.146287,
		0.121263, 0.119451, 0.985407,
		0.962025, -0.258718, -0.087024,
		38.670246, 39.579163, 35.602337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492111, 40.193634, 36.061848>,  <37.996826, 39.760265, 35.663254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492111, 40.193634, 36.061848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712357, 40.049217, 35.760792>,  <38.844505, 39.962566, 35.580158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.712357, 40.049217, 35.760792>,  <38.492111, 40.193634, 36.061848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.712357, 40.049217, 35.760792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260227, 0.930939, -0.256191,
		0.793160, -0.054795, 0.606543,
		0.550617, -0.361039, -0.752643,
		38.877541, 39.940907, 35.535000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109909, 40.606300, 36.079315>,  <38.492111, 40.193634, 36.061848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109909, 40.606300, 36.079315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129025, 40.453861, 35.709995>,  <39.140495, 40.362396, 35.488403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.129025, 40.453861, 35.709995>,  <39.109909, 40.606300, 36.079315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.129025, 40.453861, 35.709995> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244716, 0.900653, -0.359081,
		0.968416, -0.208784, 0.136305,
		0.047793, -0.381096, -0.923299,
		39.143364, 40.339531, 35.433006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.817089, 40.775703, 35.822956>,  <39.109909, 40.606300, 36.079315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.817089, 40.775703, 35.822956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598976, 40.704189, 35.495369>,  <39.468109, 40.661282, 35.298817>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.598976, 40.704189, 35.495369>,  <39.817089, 40.775703, 35.822956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.598976, 40.704189, 35.495369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312577, 0.863159, -0.396551,
		0.777791, -0.472223, -0.414786,
		-0.545286, -0.178781, -0.818963,
		39.435390, 40.650555, 35.249680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328918, 40.932796, 35.205711>,  <39.817089, 40.775703, 35.822956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.328918, 40.932796, 35.205711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958454, 40.938820, 35.054985>,  <39.736176, 40.942432, 34.964550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.958454, 40.938820, 35.054985>,  <40.328918, 40.932796, 35.205711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.958454, 40.938820, 35.054985> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263663, 0.740252, -0.618473,
		0.269630, -0.672161, -0.689565,
		-0.926165, 0.015054, -0.376818,
		39.680603, 40.943336, 34.941940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473370, 40.892448, 34.489170>,  <40.328918, 40.932796, 35.205711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473370, 40.892448, 34.489170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106380, 41.049454, 34.515003>,  <39.886185, 41.143658, 34.530502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.106380, 41.049454, 34.515003>,  <40.473370, 40.892448, 34.489170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106380, 41.049454, 34.515003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319306, 0.823511, -0.468906,
		-0.237242, -0.409586, -0.880883,
		-0.917475, 0.392516, 0.064588,
		39.831139, 41.167210, 34.534378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.131691, 40.903030, 33.859612>,  <40.473370, 40.892448, 34.489170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.131691, 40.903030, 33.859612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948009, 41.196430, 34.060055>,  <39.837803, 41.372471, 34.180321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.948009, 41.196430, 34.060055>,  <40.131691, 40.903030, 33.859612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.948009, 41.196430, 34.060055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.448827, 0.678380, -0.581683,
		-0.766608, -0.042197, -0.640727,
		-0.459202, 0.733498, 0.501113,
		39.810249, 41.416481, 34.210388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.819099, 41.298912, 33.369141>,  <40.131691, 40.903030, 33.859612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.819099, 41.298912, 33.369141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804482, 41.556423, 33.674877>,  <39.795712, 41.710930, 33.858318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.804482, 41.556423, 33.674877>,  <39.819099, 41.298912, 33.369141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.804482, 41.556423, 33.674877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505265, 0.671792, -0.541667,
		-0.862190, 0.366397, -0.349831,
		-0.036548, 0.643777, 0.764340,
		39.793518, 41.749557, 33.904179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.604778, 41.863556, 33.089287>,  <39.819099, 41.298912, 33.369141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.604778, 41.863556, 33.089287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752872, 42.007214, 33.431969>,  <39.841728, 42.093410, 33.637577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.752872, 42.007214, 33.431969>,  <39.604778, 41.863556, 33.089287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.752872, 42.007214, 33.431969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505187, 0.696091, -0.510141,
		-0.779558, 0.621668, 0.076281,
		0.370237, 0.359148, 0.856701,
		39.863945, 42.114960, 33.688980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349716, 42.500378, 33.127979>,  <39.604778, 41.863556, 33.089287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349716, 42.500378, 33.127979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684845, 42.481979, 33.345581>,  <39.885921, 42.470940, 33.476143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.684845, 42.481979, 33.345581>,  <39.349716, 42.500378, 33.127979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.684845, 42.481979, 33.345581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456470, 0.605635, -0.651798,
		-0.299493, 0.794412, 0.528406,
		0.837818, -0.045993, 0.544009,
		39.936192, 42.468182, 33.508785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598267, 43.097237, 33.186451>,  <39.349716, 42.500378, 33.127979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598267, 43.097237, 33.186451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928741, 42.880356, 33.247684>,  <40.127026, 42.750229, 33.284424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.928741, 42.880356, 33.247684>,  <39.598267, 43.097237, 33.186451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.928741, 42.880356, 33.247684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460389, 0.493118, -0.738158,
		0.324742, 0.680334, 0.657030,
		0.826187, -0.542200, 0.153082,
		40.176598, 42.717697, 33.293610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.086510, 43.541706, 33.086437>,  <39.598267, 43.097237, 33.186451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.086510, 43.541706, 33.086437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254150, 43.184372, 33.021557>,  <40.354736, 42.969971, 32.982628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.254150, 43.184372, 33.021557>,  <40.086510, 43.541706, 33.086437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.254150, 43.184372, 33.021557> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610030, 0.409377, -0.678435,
		0.672472, 0.185382, 0.716530,
		0.419101, -0.893333, -0.162205,
		40.379879, 42.916370, 32.972897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.754963, 43.666637, 32.933830>,  <40.086510, 43.541706, 33.086437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.754963, 43.666637, 32.933830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730164, 43.303703, 32.767509>,  <40.715282, 43.085941, 32.667717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.730164, 43.303703, 32.767509>,  <40.754963, 43.666637, 32.933830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.730164, 43.303703, 32.767509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542256, 0.319133, -0.777246,
		0.837922, -0.273663, 0.472223,
		-0.062002, -0.907338, -0.415804,
		40.711563, 43.031502, 32.642769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.381439, 43.414639, 32.903278>,  <40.754963, 43.666637, 32.933830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.381439, 43.414639, 32.903278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196186, 43.183754, 32.634258>,  <41.085033, 43.045223, 32.472847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.196186, 43.183754, 32.634258>,  <41.381439, 43.414639, 32.903278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.196186, 43.183754, 32.634258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697738, 0.230460, -0.678269,
		0.546503, -0.783398, 0.296009,
		-0.463137, -0.577214, -0.672554,
		41.057243, 43.010590, 32.432491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.916882, 43.003403, 32.604481>,  <41.381439, 43.414639, 32.903278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.916882, 43.003403, 32.604481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610176, 42.992702, 32.347931>,  <41.426155, 42.986282, 32.194000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.610176, 42.992702, 32.347931>,  <41.916882, 43.003403, 32.604481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.610176, 42.992702, 32.347931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641019, -0.085275, -0.762774,
		-0.034284, -0.995998, 0.082537,
		-0.766759, -0.026757, -0.641377,
		41.380150, 42.984676, 32.155518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.159275, 42.555470, 32.094391>,  <41.916882, 43.003403, 32.604481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.159275, 42.555470, 32.094391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864830, 42.793797, 31.965931>,  <41.688164, 42.936794, 31.888855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.864830, 42.793797, 31.965931>,  <42.159275, 42.555470, 32.094391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.864830, 42.793797, 31.965931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423536, 0.035368, -0.905188,
		-0.527971, -0.802339, -0.278386,
		-0.736114, 0.595820, -0.321146,
		41.643997, 42.972542, 31.869587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.950909, 42.215912, 31.479374>,  <42.159275, 42.555470, 32.094391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.950909, 42.215912, 31.479374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814022, 42.588902, 31.433109>,  <41.731888, 42.812695, 31.405350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814022, 42.588902, 31.433109>,  <41.950909, 42.215912, 31.479374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814022, 42.588902, 31.433109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390463, 0.029165, -0.920157,
		-0.854649, -0.360057, -0.374078,
		-0.342219, 0.932475, -0.115663,
		41.711357, 42.868645, 31.398411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655102, 42.218410, 30.787485>,  <41.950909, 42.215912, 31.479374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655102, 42.218410, 30.787485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707092, 42.601173, 30.891359>,  <41.738285, 42.830830, 30.953684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.707092, 42.601173, 30.891359>,  <41.655102, 42.218410, 30.787485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.707092, 42.601173, 30.891359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222040, 0.227166, -0.948206,
		-0.966336, 0.180905, -0.182945,
		0.129976, 0.956906, 0.259687,
		41.746086, 42.888245, 30.969265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.297531, 42.679699, 30.313761>,  <41.655102, 42.218410, 30.787485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.297531, 42.679699, 30.313761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550400, 42.947937, 30.469021>,  <41.702122, 43.108879, 30.562178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.550400, 42.947937, 30.469021>,  <41.297531, 42.679699, 30.313761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.550400, 42.947937, 30.469021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216962, 0.327708, -0.919530,
		-0.743832, 0.665515, 0.061674,
		0.632172, 0.670595, 0.388151,
		41.740051, 43.149117, 30.585466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345356, 43.149998, 29.787405>,  <41.297531, 42.679699, 30.313761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345356, 43.149998, 29.787405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654655, 43.261974, 30.014990>,  <41.840237, 43.329159, 30.151541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.654655, 43.261974, 30.014990>,  <41.345356, 43.149998, 29.787405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.654655, 43.261974, 30.014990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454457, 0.381089, -0.805133,
		-0.442214, 0.881138, 0.167457,
		0.773250, 0.279940, 0.568963,
		41.886631, 43.345955, 30.185678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.415478, 43.921696, 29.759405>,  <41.345356, 43.149998, 29.787405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.415478, 43.921696, 29.759405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778954, 43.780647, 29.848797>,  <41.997040, 43.696018, 29.902431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.778954, 43.780647, 29.848797>,  <41.415478, 43.921696, 29.759405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.778954, 43.780647, 29.848797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388355, 0.517579, -0.762426,
		0.153180, 0.779597, 0.607260,
		0.908689, -0.352621, 0.223477,
		42.051559, 43.674862, 29.915840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.927155, 44.561253, 29.825731>,  <41.415478, 43.921696, 29.759405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.927155, 44.561253, 29.825731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125702, 44.219940, 29.761818>,  <42.244831, 44.015152, 29.723471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.125702, 44.219940, 29.761818>,  <41.927155, 44.561253, 29.825731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.125702, 44.219940, 29.761818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590244, 0.466693, -0.658642,
		0.636574, 0.232622, 0.735296,
		0.496372, -0.853279, -0.159781,
		42.274612, 43.963955, 29.713884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.485294, 44.836681, 29.749632>,  <41.927155, 44.561253, 29.825731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.485294, 44.836681, 29.749632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556786, 44.469250, 29.608622>,  <42.599682, 44.248791, 29.524015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556786, 44.469250, 29.608622>,  <42.485294, 44.836681, 29.749632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556786, 44.469250, 29.608622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688368, 0.372744, -0.622263,
		0.702997, -0.131450, 0.698939,
		0.178729, -0.918577, -0.352524,
		42.610405, 44.193676, 29.502865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.196373, 44.827690, 29.611137>,  <42.485294, 44.836681, 29.749632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.196373, 44.827690, 29.611137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014256, 44.545231, 29.394226>,  <42.904987, 44.375755, 29.264080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.014256, 44.545231, 29.394226>,  <43.196373, 44.827690, 29.611137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.014256, 44.545231, 29.394226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464632, 0.331110, -0.821269,
		0.759491, -0.625876, 0.177348,
		-0.455291, -0.706148, -0.542278,
		42.877666, 44.333385, 29.231543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.653980, 44.708012, 29.122747>,  <43.196373, 44.827690, 29.611137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.653980, 44.708012, 29.122747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316879, 44.555946, 28.970306>,  <43.114616, 44.464706, 28.878841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.316879, 44.555946, 28.970306>,  <43.653980, 44.708012, 29.122747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316879, 44.555946, 28.970306> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261058, 0.330503, -0.906982,
		0.470756, -0.863855, -0.179289,
		-0.842756, -0.380162, -0.381102,
		43.064053, 44.441898, 28.855976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888588, 44.515579, 28.503868>,  <43.653980, 44.708012, 29.122747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888588, 44.515579, 28.503868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490467, 44.531952, 28.468756>,  <43.251595, 44.541775, 28.447689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.490467, 44.531952, 28.468756>,  <43.888588, 44.515579, 28.503868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.490467, 44.531952, 28.468756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096855, 0.420834, -0.901952,
		0.000022, -0.906214, -0.422820,
		-0.995298, 0.040932, -0.087780,
		43.191879, 44.544231, 28.442421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.475750, 44.942455, 28.465223>,  <43.888588, 44.515579, 28.503868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.475750, 44.942455, 28.465223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862736, 44.876743, 28.388250>,  <45.094925, 44.837315, 28.342068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.862736, 44.876743, 28.388250>,  <44.475750, 44.942455, 28.465223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.862736, 44.876743, 28.388250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038380, -0.847025, 0.530166,
		-0.250091, -0.505530, -0.825769,
		0.967461, -0.164282, -0.192431,
		45.152973, 44.827457, 28.330521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576630, 44.218571, 28.403862>,  <44.475750, 44.942455, 28.465223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576630, 44.218571, 28.403862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936203, 44.366680, 28.497517>,  <45.151947, 44.455547, 28.553709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.936203, 44.366680, 28.497517>,  <44.576630, 44.218571, 28.403862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.936203, 44.366680, 28.497517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136779, -0.744943, 0.652956,
		0.416193, -0.554936, -0.720298,
		0.898930, 0.370277, 0.234136,
		45.205883, 44.477764, 28.567757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.042435, 43.668495, 28.397030>,  <44.576630, 44.218571, 28.403862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.042435, 43.668495, 28.397030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224236, 43.935127, 28.633369>,  <45.333317, 44.095104, 28.775173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.224236, 43.935127, 28.633369>,  <45.042435, 43.668495, 28.397030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.224236, 43.935127, 28.633369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297346, -0.738808, 0.604771,
		0.839649, -0.099184, -0.533996,
		0.454504, 0.666577, 0.590847,
		45.360588, 44.135101, 28.810623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.648266, 43.371460, 28.494877>,  <45.042435, 43.668495, 28.397030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.648266, 43.371460, 28.494877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592236, 43.643936, 28.782309>,  <45.558617, 43.807423, 28.954767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.592236, 43.643936, 28.782309>,  <45.648266, 43.371460, 28.494877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.592236, 43.643936, 28.782309> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138495, -0.705119, 0.695432,
		0.980407, 0.196932, 0.004427,
		-0.140075, 0.681194, 0.718578,
		45.550213, 43.848293, 28.997883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.930084, 43.074570, 28.985882>,  <45.648266, 43.371460, 28.494877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.930084, 43.074570, 28.985882> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731720, 43.357216, 29.187780>,  <45.612701, 43.526802, 29.308920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.731720, 43.357216, 29.187780>,  <45.930084, 43.074570, 28.985882>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.731720, 43.357216, 29.187780> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.112144, -0.628502, 0.769682,
		0.861102, 0.325089, 0.390923,
		-0.495910, 0.706614, 0.504747,
		45.582947, 43.569199, 29.339205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.273434, 43.117779, 29.629280>,  <45.930084, 43.074570, 28.985882>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.273434, 43.117779, 29.629280> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901669, 43.254318, 29.685375>,  <45.678608, 43.336243, 29.719032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.901669, 43.254318, 29.685375>,  <46.273434, 43.117779, 29.629280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.901669, 43.254318, 29.685375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111316, -0.621629, 0.775362,
		0.351843, 0.705023, 0.615750,
		-0.929417, 0.341348, 0.140236,
		45.622845, 43.356724, 29.727446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.097141, 42.956478, 30.392668>,  <46.273434, 43.117779, 29.629280>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.097141, 42.956478, 30.392668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738663, 43.061478, 30.249599>,  <45.523575, 43.124477, 30.163759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.738663, 43.061478, 30.249599>,  <46.097141, 42.956478, 30.392668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.738663, 43.061478, 30.249599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443659, -0.527943, 0.724185,
		0.001271, 0.807694, 0.589601,
		-0.896195, 0.262502, -0.357669,
		45.469803, 43.140228, 30.142300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751507, 43.140202, 30.919348>,  <46.097141, 42.956478, 30.392668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751507, 43.140202, 30.919348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455414, 43.066143, 30.660805>,  <45.277760, 43.021709, 30.505678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.455414, 43.066143, 30.660805>,  <45.751507, 43.140202, 30.919348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.455414, 43.066143, 30.660805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517263, -0.457330, 0.723386,
		-0.429530, 0.869811, 0.242762,
		-0.740231, -0.185145, -0.646358,
		45.233345, 43.010601, 30.466898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.118336, 43.264835, 31.304024>,  <45.751507, 43.140202, 30.919348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.118336, 43.264835, 31.304024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989887, 43.027401, 31.008854>,  <44.912819, 42.884941, 30.831753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.989887, 43.027401, 31.008854>,  <45.118336, 43.264835, 31.304024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.989887, 43.027401, 31.008854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573484, -0.498199, 0.650319,
		-0.753655, 0.632019, -0.180431,
		-0.321123, -0.593590, -0.737923,
		44.893551, 42.849323, 30.787477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.468369, 43.199509, 31.431787>,  <45.118336, 43.264835, 31.304024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.468369, 43.199509, 31.431787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507786, 42.875362, 31.200756>,  <44.531437, 42.680874, 31.062138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.507786, 42.875362, 31.200756>,  <44.468369, 43.199509, 31.431787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.507786, 42.875362, 31.200756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.700429, -0.468766, 0.538198,
		-0.706887, 0.351518, -0.613797,
		0.098541, -0.810366, -0.577578,
		44.537350, 42.632252, 31.027483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.834763, 42.984028, 31.305010>,  <44.468369, 43.199509, 31.431787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.834763, 42.984028, 31.305010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074795, 42.667377, 31.258984>,  <44.218815, 42.477386, 31.231367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.074795, 42.667377, 31.258984>,  <43.834763, 42.984028, 31.305010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.074795, 42.667377, 31.258984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710032, -0.593349, 0.379199,
		-0.368456, -0.145849, -0.918133,
		0.600080, -0.791621, -0.115065,
		44.254818, 42.429890, 31.224464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.415726, 42.392227, 31.040396>,  <43.834763, 42.984028, 31.305010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.415726, 42.392227, 31.040396> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743893, 42.223087, 31.194338>,  <43.940792, 42.121605, 31.286703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.743893, 42.223087, 31.194338>,  <43.415726, 42.392227, 31.040396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.743893, 42.223087, 31.194338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.571487, -0.627326, 0.529023,
		0.017734, -0.653960, -0.756321,
		0.820420, -0.422846, 0.384855,
		43.990017, 42.096233, 31.309793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.235611, 41.732571, 30.994659>,  <43.415726, 42.392227, 31.040396>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.235611, 41.732571, 30.994659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518593, 41.749710, 31.276842>,  <43.688381, 41.759995, 31.446152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518593, 41.749710, 31.276842>,  <43.235611, 41.732571, 30.994659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518593, 41.749710, 31.276842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394548, -0.804204, 0.444508,
		0.586377, -0.592806, -0.552035,
		0.707456, 0.042845, 0.705458,
		43.730831, 41.762562, 31.488480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.339169, 41.101292, 31.127436>,  <43.235611, 41.732571, 30.994659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.339169, 41.101292, 31.127436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496620, 41.286015, 31.445377>,  <43.591091, 41.396851, 31.636143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.496620, 41.286015, 31.445377>,  <43.339169, 41.101292, 31.127436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.496620, 41.286015, 31.445377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368173, -0.713081, 0.596627,
		0.842322, -0.527491, -0.110662,
		0.393626, 0.461809, 0.794852,
		43.614708, 41.424557, 31.683832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.497005, 40.593391, 31.541862>,  <43.339169, 41.101292, 31.127436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.497005, 40.593391, 31.541862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518806, 40.908081, 31.787819>,  <43.531887, 41.096897, 31.935392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.518806, 40.908081, 31.787819>,  <43.497005, 40.593391, 31.541862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.518806, 40.908081, 31.787819> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288250, -0.577190, 0.764044,
		0.956003, -0.218886, 0.195315,
		0.054505, 0.786728, 0.614889,
		43.535156, 41.144100, 31.972286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.812065, 40.355392, 32.254707>,  <43.497005, 40.593391, 31.541862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.812065, 40.355392, 32.254707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615936, 40.698048, 32.318893>,  <43.498257, 40.903641, 32.357403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.615936, 40.698048, 32.318893>,  <43.812065, 40.355392, 32.254707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.615936, 40.698048, 32.318893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397148, -0.383501, 0.833787,
		0.775792, 0.345101, 0.528253,
		-0.490327, 0.856640, 0.160461,
		43.468838, 40.955040, 32.367031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.875015, 40.500298, 32.919464>,  <43.812065, 40.355392, 32.254707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.875015, 40.500298, 32.919464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554516, 40.703899, 32.793659>,  <43.362217, 40.826061, 32.718178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554516, 40.703899, 32.793659>,  <43.875015, 40.500298, 32.919464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554516, 40.703899, 32.793659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550322, -0.420624, 0.721263,
		0.234839, 0.750990, 0.617142,
		-0.801247, 0.509008, -0.314508,
		43.314140, 40.856602, 32.699306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.493584, 40.715782, 33.557655>,  <43.875015, 40.500298, 32.919464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.493584, 40.715782, 33.557655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213387, 40.766563, 33.276745>,  <43.045269, 40.797031, 33.108200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.213387, 40.766563, 33.276745>,  <43.493584, 40.715782, 33.557655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.213387, 40.766563, 33.276745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673537, -0.442902, 0.591765,
		-0.235911, 0.887536, 0.395759,
		-0.700495, 0.126954, -0.702274,
		43.003239, 40.804649, 33.066063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.908199, 41.059589, 33.850487>,  <43.493584, 40.715782, 33.557655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.908199, 41.059589, 33.850487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761116, 40.898849, 33.515034>,  <42.672867, 40.802406, 33.313763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.761116, 40.898849, 33.515034>,  <42.908199, 41.059589, 33.850487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.761116, 40.898849, 33.515034> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765453, -0.381319, 0.518341,
		-0.528082, 0.832535, -0.167379,
		-0.367712, -0.401847, -0.838634,
		42.650803, 40.778294, 33.263443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.275406, 41.252167, 33.860161>,  <42.908199, 41.059589, 33.850487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.275406, 41.252167, 33.860161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305004, 40.930939, 33.623650>,  <42.322762, 40.738201, 33.481743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.305004, 40.930939, 33.623650>,  <42.275406, 41.252167, 33.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.305004, 40.930939, 33.623650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.725616, -0.450080, 0.520491,
		-0.684111, 0.390529, -0.616019,
		0.073991, -0.803066, -0.591278,
		42.327202, 40.690018, 33.446266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.630272, 41.109665, 33.713818>,  <42.275406, 41.252167, 33.860161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.630272, 41.109665, 33.713818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832771, 40.770565, 33.650517>,  <41.954269, 40.567104, 33.612537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.832771, 40.770565, 33.650517>,  <41.630272, 41.109665, 33.713818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.832771, 40.770565, 33.650517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631464, -0.489369, 0.601474,
		-0.587341, -0.204561, -0.783061,
		0.506245, -0.847746, -0.158254,
		41.984646, 40.516243, 33.603039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.114086, 40.624657, 33.707649>,  <41.630272, 41.109665, 33.713818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.114086, 40.624657, 33.707649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442341, 40.398594, 33.741459>,  <41.639294, 40.262955, 33.761745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.442341, 40.398594, 33.741459>,  <41.114086, 40.624657, 33.707649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.442341, 40.398594, 33.741459> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519399, -0.676019, 0.522708,
		-0.238273, -0.472857, -0.848311,
		0.820641, -0.565159, 0.084524,
		41.688534, 40.229046, 33.766815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.885880, 39.977016, 33.598564>,  <41.114086, 40.624657, 33.707649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.885880, 39.977016, 33.598564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232391, 39.909275, 33.786552>,  <41.440300, 39.868629, 33.899345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.232391, 39.909275, 33.786552>,  <40.885880, 39.977016, 33.598564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.232391, 39.909275, 33.786552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417285, -0.762532, 0.494387,
		0.274639, -0.624390, -0.731239,
		0.866283, -0.169357, 0.469969,
		41.492275, 39.858467, 33.927544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.993458, 39.268307, 33.614735>,  <40.885880, 39.977016, 33.598564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.993458, 39.268307, 33.614735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210789, 39.423748, 33.912403>,  <41.341187, 39.517014, 34.091003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.210789, 39.423748, 33.912403>,  <40.993458, 39.268307, 33.614735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.210789, 39.423748, 33.912403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545520, -0.510351, 0.664793,
		0.638124, -0.767159, -0.065299,
		0.543328, 0.388599, 0.744168,
		41.373787, 39.540329, 34.135654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.266350, 38.690701, 34.044956>,  <40.993458, 39.268307, 33.614735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.266350, 38.690701, 34.044956> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274757, 39.006180, 34.290726>,  <41.279800, 39.195465, 34.438187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.274757, 39.006180, 34.290726>,  <41.266350, 38.690701, 34.044956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.274757, 39.006180, 34.290726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391909, -0.558876, 0.730798,
		0.919764, -0.256160, 0.297350,
		0.021020, 0.788695, 0.614425,
		41.281063, 39.242790, 34.475052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.560181, 38.389698, 34.712791>,  <41.266350, 38.690701, 34.044956>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.560181, 38.389698, 34.712791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412811, 38.745365, 34.821342>,  <41.324390, 38.958767, 34.886471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.412811, 38.745365, 34.821342>,  <41.560181, 38.389698, 34.712791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.412811, 38.745365, 34.821342> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477289, -0.431410, 0.765559,
		0.797784, 0.152526, 0.583332,
		-0.368423, 0.889169, 0.271373,
		41.302284, 39.012115, 34.902756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.787380, 38.460854, 35.407471>,  <41.560181, 38.389698, 34.712791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.787380, 38.460854, 35.407471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465477, 38.681347, 35.319382>,  <41.272335, 38.813644, 35.266529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.465477, 38.681347, 35.319382>,  <41.787380, 38.460854, 35.407471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.465477, 38.681347, 35.319382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499170, -0.427668, 0.753611,
		0.321235, 0.716406, 0.619331,
		-0.804759, 0.551238, -0.220226,
		41.224049, 38.846718, 35.253315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.608852, 38.896988, 35.901112>,  <41.787380, 38.460854, 35.407471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.608852, 38.896988, 35.901112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265579, 38.808197, 35.715961>,  <41.059616, 38.754925, 35.604870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.265579, 38.808197, 35.715961>,  <41.608852, 38.896988, 35.901112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.265579, 38.808197, 35.715961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325968, -0.460945, 0.825394,
		-0.396577, 0.859219, 0.323217,
		-0.858179, -0.221974, -0.462878,
		41.008125, 38.741604, 35.577099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097771, 39.009754, 36.388695>,  <41.608852, 38.896988, 35.901112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097771, 39.009754, 36.388695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892670, 38.780888, 36.132660>,  <40.769611, 38.643566, 35.979038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.892670, 38.780888, 36.132660>,  <41.097771, 39.009754, 36.388695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.892670, 38.780888, 36.132660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376752, -0.519980, 0.766602,
		-0.771458, 0.634229, 0.051054,
		-0.512748, -0.572166, -0.640090,
		40.738846, 38.609238, 35.940632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.453621, 38.781570, 36.836998>,  <41.097771, 39.009754, 36.388695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.453621, 38.781570, 36.836998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530182, 38.546112, 36.522839>,  <40.576118, 38.404835, 36.334343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.530182, 38.546112, 36.522839>,  <40.453621, 38.781570, 36.836998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.530182, 38.546112, 36.522839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407320, -0.775678, 0.482094,
		-0.893003, 0.227635, -0.388238,
		0.191406, -0.588648, -0.785403,
		40.587605, 38.369518, 36.287216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.875576, 38.319023, 36.759914>,  <40.453621, 38.781570, 36.836998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.875576, 38.319023, 36.759914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133095, 38.079636, 36.569187>,  <40.287605, 37.936001, 36.454750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.133095, 38.079636, 36.569187>,  <39.875576, 38.319023, 36.759914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.133095, 38.079636, 36.569187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.450738, -0.800152, 0.395718,
		-0.618356, -0.039840, -0.784887,
		0.643794, -0.598473, -0.476821,
		40.326233, 37.900093, 36.426140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.564816, 37.699844, 36.631706>,  <39.875576, 38.319023, 36.759914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.564816, 37.699844, 36.631706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925655, 37.550323, 36.545460>,  <40.142159, 37.460609, 36.493713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.925655, 37.550323, 36.545460>,  <39.564816, 37.699844, 36.631706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.925655, 37.550323, 36.545460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358647, -0.927306, 0.107122,
		-0.239982, -0.019306, -0.970585,
		0.902098, -0.373805, -0.215613,
		40.196285, 37.438183, 36.480774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.546089, 37.170589, 36.111179>,  <39.564816, 37.699844, 36.631706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.546089, 37.170589, 36.111179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900089, 37.098400, 36.282856>,  <40.112488, 37.055088, 36.385860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.900089, 37.098400, 36.282856>,  <39.546089, 37.170589, 36.111179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.900089, 37.098400, 36.282856> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198909, -0.980016, -0.001939,
		0.420962, -0.083654, -0.903213,
		0.885001, -0.180473, 0.429189,
		40.165588, 37.044258, 36.411613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.609467, 36.472099, 35.782135>,  <39.546089, 37.170589, 36.111179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.609467, 36.472099, 35.782135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872059, 36.503582, 36.082226>,  <40.029613, 36.522472, 36.262280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.872059, 36.503582, 36.082226>,  <39.609467, 36.472099, 35.782135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.872059, 36.503582, 36.082226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213943, -0.934278, 0.285225,
		0.723369, -0.347750, -0.596496,
		0.656480, 0.078707, 0.750226,
		40.069004, 36.527195, 36.307293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.048542, 35.824097, 35.745941>,  <39.609467, 36.472099, 35.782135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.048542, 35.824097, 35.745941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082577, 35.992752, 36.107048>,  <40.102997, 36.093945, 36.323711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.082577, 35.992752, 36.107048>,  <40.048542, 35.824097, 35.745941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082577, 35.992752, 36.107048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207199, -0.878756, 0.429950,
		0.974592, -0.223633, 0.012595,
		0.085083, 0.421636, 0.902765,
		40.108101, 36.119244, 36.377876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.691628, 35.489697, 36.197586>,  <40.048542, 35.824097, 35.745941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.691628, 35.489697, 36.197586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413628, 35.647686, 36.437908>,  <40.246826, 35.742481, 36.582104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.413628, 35.647686, 36.437908>,  <40.691628, 35.489697, 36.197586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413628, 35.647686, 36.437908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057076, -0.863275, 0.501496,
		0.716741, 0.314248, 0.622520,
		-0.695000, 0.394974, 0.600808,
		40.205128, 35.766178, 36.618149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.789059, 35.300266, 36.949226>,  <40.691628, 35.489697, 36.197586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.789059, 35.300266, 36.949226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400837, 35.394516, 36.969238>,  <40.167904, 35.451065, 36.981243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.400837, 35.394516, 36.969238>,  <40.789059, 35.300266, 36.949226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.400837, 35.394516, 36.969238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114246, -0.633139, 0.765560,
		0.212055, 0.737305, 0.641416,
		-0.970557, 0.235620, 0.050026,
		40.109669, 35.465202, 36.984245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.718742, 35.292679, 37.647243>,  <40.789059, 35.300266, 36.949226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.718742, 35.292679, 37.647243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361652, 35.245495, 37.473286>,  <40.147400, 35.217186, 37.368912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.361652, 35.245495, 37.473286>,  <40.718742, 35.292679, 37.647243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.361652, 35.245495, 37.473286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074574, -0.913144, 0.400759,
		-0.444396, 0.390197, 0.806386,
		-0.892721, -0.117960, -0.434896,
		40.093838, 35.210106, 37.342815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380951, 34.985653, 38.186138>,  <40.718742, 35.292679, 37.647243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380951, 34.985653, 38.186138> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178238, 34.897873, 37.852669>,  <40.056610, 34.845203, 37.652588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.178238, 34.897873, 37.852669>,  <40.380951, 34.985653, 38.186138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.178238, 34.897873, 37.852669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174885, -0.920778, 0.348688,
		-0.844151, 0.322505, 0.428252,
		-0.506779, -0.219450, -0.833677,
		40.026203, 34.832039, 37.602566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.725609, 34.707096, 38.481625>,  <40.380951, 34.985653, 38.186138>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.725609, 34.707096, 38.481625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765057, 34.585747, 38.102524>,  <39.788723, 34.512939, 37.875061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.765057, 34.585747, 38.102524>,  <39.725609, 34.707096, 38.481625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.765057, 34.585747, 38.102524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331181, -0.908114, 0.256219,
		-0.938400, 0.288612, -0.190025,
		0.098616, -0.303369, -0.947757,
		39.794643, 34.494736, 37.818195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.117222, 34.290798, 38.376820>,  <39.725609, 34.707096, 38.481625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.117222, 34.290798, 38.376820> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387920, 34.172146, 38.107292>,  <39.550339, 34.100956, 37.945576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387920, 34.172146, 38.107292>,  <39.117222, 34.290798, 38.376820>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387920, 34.172146, 38.107292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194229, -0.954750, 0.225225,
		-0.710137, -0.021545, -0.703734,
		0.676743, -0.296627, -0.673819,
		39.590942, 34.083157, 37.905148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.847729, 33.862030, 37.853130>,  <39.117222, 34.290798, 38.376820>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.847729, 33.862030, 37.853130> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233147, 33.773422, 37.913155>,  <39.464397, 33.720257, 37.949169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.233147, 33.773422, 37.913155>,  <38.847729, 33.862030, 37.853130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.233147, 33.773422, 37.913155> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260483, -0.904783, 0.336920,
		0.061138, -0.363725, -0.929498,
		0.963541, -0.221520, 0.150061,
		39.522209, 33.706966, 37.958172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.050987, 33.150959, 37.552708>,  <38.847729, 33.862030, 37.853130>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.050987, 33.150959, 37.552708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303707, 33.241905, 37.849121>,  <39.455338, 33.296474, 38.026970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.303707, 33.241905, 37.849121>,  <39.050987, 33.150959, 37.552708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.303707, 33.241905, 37.849121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228567, -0.858857, 0.458390,
		0.740667, -0.458987, -0.490656,
		0.631798, 0.227367, 0.741037,
		39.493248, 33.310116, 38.071434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.479126, 32.660625, 37.583721>,  <39.050987, 33.150959, 37.552708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.479126, 32.660625, 37.583721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487633, 32.839752, 37.941269>,  <39.492737, 32.947227, 38.155796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.487633, 32.839752, 37.941269>,  <39.479126, 32.660625, 37.583721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.487633, 32.839752, 37.941269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110592, -0.887532, 0.447276,
		0.993638, -0.108368, 0.030649,
		0.021269, 0.447820, 0.893871,
		39.494015, 32.974098, 38.209431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065895, 32.400043, 37.929195>,  <39.479126, 32.660625, 37.583721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065895, 32.400043, 37.929195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786716, 32.509693, 38.193840>,  <39.619209, 32.575485, 38.352627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.786716, 32.509693, 38.193840>,  <40.065895, 32.400043, 37.929195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.786716, 32.509693, 38.193840> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014163, -0.918375, 0.395457,
		0.716010, 0.285378, 0.637094,
		-0.697947, 0.274128, 0.661608,
		39.577332, 32.591930, 38.392323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.132183, 31.936594, 38.490936>,  <40.065895, 32.400043, 37.929195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.132183, 31.936594, 38.490936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818928, 32.145390, 38.626122>,  <39.630974, 32.270668, 38.707233>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.818928, 32.145390, 38.626122>,  <40.132183, 31.936594, 38.490936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.818928, 32.145390, 38.626122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308676, -0.798115, 0.517427,
		0.539822, 0.300899, 0.786163,
		-0.783142, 0.521988, 0.337960,
		39.583984, 32.301987, 38.727509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041553, 31.714514, 39.185715>,  <40.132183, 31.936594, 38.490936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041553, 31.714514, 39.185715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702034, 31.907192, 39.098522>,  <39.498322, 32.022800, 39.046207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.702034, 31.907192, 39.098522>,  <40.041553, 31.714514, 39.185715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702034, 31.907192, 39.098522> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507277, -0.625711, 0.592584,
		0.149050, 0.613560, 0.775453,
		-0.848796, 0.481694, -0.217983,
		39.447395, 32.051701, 39.033127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.772438, 31.823570, 39.864639>,  <40.041553, 31.714514, 39.185715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.772438, 31.823570, 39.864639> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486477, 31.787403, 39.587299>,  <39.314899, 31.765703, 39.420895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.486477, 31.787403, 39.587299>,  <39.772438, 31.823570, 39.864639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.486477, 31.787403, 39.587299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362959, -0.799555, 0.478511,
		-0.597637, 0.593748, 0.538789,
		-0.714906, -0.090417, -0.693350,
		39.272003, 31.760279, 39.379295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.154827, 31.591589, 40.256363>,  <39.772438, 31.823570, 39.864639>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.154827, 31.591589, 40.256363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088684, 31.483932, 39.876842>,  <39.048996, 31.419338, 39.649132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.088684, 31.483932, 39.876842>,  <39.154827, 31.591589, 40.256363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.088684, 31.483932, 39.876842> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433018, -0.844540, 0.315036,
		-0.886088, 0.462941, 0.023109,
		-0.165359, -0.269143, -0.948798,
		39.039078, 31.403189, 39.592201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.348415, 31.447104, 40.251492>,  <39.154827, 31.591589, 40.256363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.348415, 31.447104, 40.251492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549595, 31.195143, 40.014755>,  <38.670303, 31.043966, 39.872715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549595, 31.195143, 40.014755>,  <38.348415, 31.447104, 40.251492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549595, 31.195143, 40.014755> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302713, -0.769749, 0.562007,
		-0.809576, -0.103500, -0.577818,
		0.502943, -0.629900, -0.591840,
		38.700478, 31.006172, 39.837204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.008553, 30.817030, 40.120266>,  <38.348415, 31.447104, 40.251492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.008553, 30.817030, 40.120266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368122, 30.662086, 40.038391>,  <38.583862, 30.569120, 39.989265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.368122, 30.662086, 40.038391>,  <38.008553, 30.817030, 40.120266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.368122, 30.662086, 40.038391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244992, -0.831767, 0.498139,
		-0.363212, -0.397639, -0.842591,
		0.898919, -0.387358, -0.204689,
		38.637798, 30.545879, 39.976986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890148, 30.104916, 39.911289>,  <38.008553, 30.817030, 40.120266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890148, 30.104916, 39.911289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268684, 30.130503, 40.037998>,  <38.495808, 30.145855, 40.114025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.268684, 30.130503, 40.037998>,  <37.890148, 30.104916, 39.911289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.268684, 30.130503, 40.037998> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124778, -0.831875, 0.540754,
		0.298106, -0.551264, -0.779256,
		0.946342, 0.063968, 0.316773,
		38.552586, 30.149693, 40.133030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.920475, 29.492117, 40.211918>,  <37.890148, 30.104916, 39.911289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.920475, 29.492117, 40.211918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298588, 29.600168, 40.285095>,  <38.525455, 29.664999, 40.329002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.298588, 29.600168, 40.285095>,  <37.920475, 29.492117, 40.211918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.298588, 29.600168, 40.285095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196511, -0.919051, 0.341657,
		0.260428, -0.287012, -0.921847,
		0.945283, 0.270130, 0.182946,
		38.582172, 29.681208, 40.339977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.290821, 28.967894, 39.982830>,  <37.920475, 29.492117, 40.211918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.290821, 28.967894, 39.982830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519867, 29.169584, 40.241402>,  <38.657295, 29.290598, 40.396545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.519867, 29.169584, 40.241402>,  <38.290821, 28.967894, 39.982830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519867, 29.169584, 40.241402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307717, -0.863034, 0.400602,
		0.759887, -0.030471, -0.649341,
		0.572610, 0.504225, 0.646432,
		38.691650, 29.320852, 40.435333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.002720, 28.556479, 40.067986>,  <38.290821, 28.967894, 39.982830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.002720, 28.556479, 40.067986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895851, 28.771446, 40.387936>,  <38.831730, 28.900427, 40.579906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.895851, 28.771446, 40.387936>,  <39.002720, 28.556479, 40.067986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.895851, 28.771446, 40.387936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075711, -0.815776, 0.573392,
		0.960671, 0.213751, 0.177261,
		-0.267169, 0.537420, 0.799875,
		38.815701, 28.932673, 40.627899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.570309, 28.370699, 40.584606>,  <39.002720, 28.556479, 40.067986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.570309, 28.370699, 40.584606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281570, 28.535614, 40.806942>,  <39.108326, 28.634563, 40.940346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.281570, 28.535614, 40.806942>,  <39.570309, 28.370699, 40.584606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.281570, 28.535614, 40.806942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.244598, -0.599349, 0.762203,
		0.647389, 0.686150, 0.331792,
		-0.721844, 0.412286, 0.555843,
		39.065018, 28.659300, 40.973694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.631886, 27.861788, 41.159676>,  <39.570309, 28.370699, 40.584606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.631886, 27.861788, 41.159676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327698, 28.107834, 41.242924>,  <39.145184, 28.255463, 41.292873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.327698, 28.107834, 41.242924>,  <39.631886, 27.861788, 41.159676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.327698, 28.107834, 41.242924> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239202, -0.563307, 0.790865,
		0.603708, 0.551649, 0.575517,
		-0.760473, 0.615116, 0.208118,
		39.099556, 28.292368, 41.305359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746262, 28.155169, 41.807262>,  <39.631886, 27.861788, 41.159676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746262, 28.155169, 41.807262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359215, 28.090832, 41.729435>,  <39.126987, 28.052231, 41.682739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.359215, 28.090832, 41.729435>,  <39.746262, 28.155169, 41.807262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.359215, 28.090832, 41.729435> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035477, -0.676455, 0.735629,
		-0.249936, 0.718706, 0.648840,
		-0.967612, -0.160841, -0.194568,
		39.068932, 28.042580, 41.671066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522579, 28.106899, 42.433357>,  <39.746262, 28.155169, 41.807262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522579, 28.106899, 42.433357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228558, 27.964590, 42.202492>,  <39.052143, 27.879206, 42.063972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.228558, 27.964590, 42.202492>,  <39.522579, 28.106899, 42.433357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228558, 27.964590, 42.202492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.169653, -0.727671, 0.664614,
		-0.656435, 0.586448, 0.474523,
		-0.735058, -0.355772, -0.577162,
		39.008041, 27.857859, 42.029343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984375, 27.909039, 42.886829>,  <39.522579, 28.106899, 42.433357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.984375, 27.909039, 42.886829> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958107, 27.705030, 42.543770>,  <38.942345, 27.582626, 42.337933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.958107, 27.705030, 42.543770>,  <38.984375, 27.909039, 42.886829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.958107, 27.705030, 42.543770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105238, -0.851174, 0.514225,
		-0.992277, 0.124026, 0.002223,
		-0.065669, -0.510020, -0.857652,
		38.938408, 27.552025, 42.286472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.369247, 27.415985, 42.903400>,  <38.984375, 27.909039, 42.886829>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.369247, 27.415985, 42.903400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622066, 27.256727, 42.637466>,  <38.773758, 27.161173, 42.477905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.622066, 27.256727, 42.637466>,  <38.369247, 27.415985, 42.903400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.622066, 27.256727, 42.637466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.015051, -0.864068, 0.503150,
		-0.774786, -0.308006, -0.552122,
		0.632044, -0.398144, -0.664833,
		38.811680, 27.137283, 42.438015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.078255, 26.752531, 42.720234>,  <38.369247, 27.415985, 42.903400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.078255, 26.752531, 42.720234> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473724, 26.755655, 42.660286>,  <38.711006, 26.757530, 42.624317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.473724, 26.755655, 42.660286>,  <38.078255, 26.752531, 42.720234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473724, 26.755655, 42.660286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058735, -0.939120, 0.338532,
		-0.138103, -0.343501, -0.928943,
		0.988675, 0.007809, -0.149870,
		38.770329, 26.757998, 42.615326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.174931, 26.078527, 42.878479>,  <38.078255, 26.752531, 42.720234>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.174931, 26.078527, 42.878479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439396, 26.255772, 43.120644>,  <38.598076, 26.362118, 43.265942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.439396, 26.255772, 43.120644>,  <38.174931, 26.078527, 42.878479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.439396, 26.255772, 43.120644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218579, -0.885711, 0.409560,
		0.717697, -0.138455, -0.682452,
		0.661161, 0.443110, 0.605409,
		38.637745, 26.388704, 43.302265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.932793, 26.022593, 42.908646>,  <38.174931, 26.078527, 42.878479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.932793, 26.022593, 42.908646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013634, 25.919575, 42.530689>,  <39.062138, 25.857763, 42.303913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.013634, 25.919575, 42.530689>,  <38.932793, 26.022593, 42.908646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.013634, 25.919575, 42.530689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100880, 0.954197, -0.281659,
		0.974155, 0.152245, 0.166864,
		0.202102, -0.257546, -0.944894,
		39.074265, 25.842310, 42.247223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.491001, 26.522703, 42.620296>,  <38.932793, 26.022593, 42.908646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.491001, 26.522703, 42.620296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259789, 26.338327, 42.350952>,  <39.121059, 26.227703, 42.189346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.259789, 26.338327, 42.350952>,  <39.491001, 26.522703, 42.620296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.259789, 26.338327, 42.350952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320948, 0.887098, -0.331737,
		0.750246, 0.024357, -0.660710,
		-0.578035, -0.460938, -0.673359,
		39.086380, 26.200047, 42.148945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751019, 26.695166, 41.970089>,  <39.491001, 26.522703, 42.620296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751019, 26.695166, 41.970089> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357391, 26.648603, 42.023834>,  <39.121216, 26.620667, 42.056080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.357391, 26.648603, 42.023834>,  <39.751019, 26.695166, 41.970089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.357391, 26.648603, 42.023834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161333, 0.902212, -0.399982,
		-0.074663, -0.415288, -0.906621,
		-0.984072, -0.116404, 0.134362,
		39.062168, 26.613682, 42.064144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.379066, 26.653553, 41.355583>,  <39.751019, 26.695166, 41.970089>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.379066, 26.653553, 41.355583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181122, 26.811375, 41.665276>,  <39.062355, 26.906069, 41.851093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.181122, 26.811375, 41.665276>,  <39.379066, 26.653553, 41.355583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.181122, 26.811375, 41.665276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141593, 0.842458, -0.519823,
		-0.857360, -0.366866, -0.361032,
		-0.494859, 0.394556, 0.774235,
		39.032665, 26.929741, 41.897545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.772160, 26.944582, 41.132271>,  <39.379066, 26.653553, 41.355583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.772160, 26.944582, 41.132271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819099, 27.121075, 41.488148>,  <38.847263, 27.226971, 41.701672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.819099, 27.121075, 41.488148>,  <38.772160, 26.944582, 41.132271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819099, 27.121075, 41.488148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142373, 0.894098, -0.424639,
		-0.982832, -0.076836, 0.167740,
		0.117349, 0.441230, 0.889688,
		38.854305, 27.253445, 41.755054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.151005, 27.263283, 41.153942>,  <38.772160, 26.944582, 41.132271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.151005, 27.263283, 41.153942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385052, 27.431648, 41.431206>,  <38.525478, 27.532667, 41.597565>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.385052, 27.431648, 41.431206>,  <38.151005, 27.263283, 41.153942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.385052, 27.431648, 41.431206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043852, 0.869924, -0.491233,
		-0.809762, 0.257032, 0.527465,
		0.585117, 0.420912, 0.693160,
		38.560585, 27.557922, 41.639153>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.817020, 27.857504, 41.515774>,  <38.151005, 27.263283, 41.153942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.817020, 27.857504, 41.515774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212044, 27.914881, 41.541546>,  <38.449059, 27.949306, 41.557007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.212044, 27.914881, 41.541546>,  <37.817020, 27.857504, 41.515774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212044, 27.914881, 41.541546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106623, 0.911989, -0.396116,
		-0.115578, 0.384319, 0.915937,
		0.987559, 0.143442, 0.064429,
		38.508312, 27.957912, 41.560875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.779449, 28.493734, 41.342266>,  <37.817020, 27.857504, 41.515774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.779449, 28.493734, 41.342266> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173973, 28.470976, 41.404175>,  <38.410686, 28.457321, 41.441319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.173973, 28.470976, 41.404175>,  <37.779449, 28.493734, 41.342266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.173973, 28.470976, 41.404175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110386, 0.925080, -0.363376,
		-0.122502, 0.375486, 0.918697,
		0.986311, -0.056897, 0.154772,
		38.469868, 28.453907, 41.450607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.053814, 29.111834, 41.658886>,  <37.779449, 28.493734, 41.342266>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.053814, 29.111834, 41.658886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365131, 28.977491, 41.446671>,  <38.551922, 28.896887, 41.319344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.365131, 28.977491, 41.446671>,  <38.053814, 29.111834, 41.658886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365131, 28.977491, 41.446671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060788, 0.881261, -0.468705,
		0.624956, 0.332538, 0.706292,
		0.778289, -0.335854, -0.530535,
		38.598618, 28.876736, 41.287510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.513004, 29.682083, 41.727077>,  <38.053814, 29.111834, 41.658886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.513004, 29.682083, 41.727077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573898, 29.455046, 41.403431>,  <38.610435, 29.318823, 41.209244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.573898, 29.455046, 41.403431>,  <38.513004, 29.682083, 41.727077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.573898, 29.455046, 41.403431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114955, 0.823267, -0.555893,
		0.981636, -0.008384, 0.190580,
		0.152237, -0.567593, -0.809112,
		38.619568, 29.284767, 41.160698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991154, 30.153851, 41.366337>,  <38.513004, 29.682083, 41.727077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991154, 30.153851, 41.366337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907627, 29.886087, 41.081158>,  <38.857510, 29.725430, 40.910049>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.907627, 29.886087, 41.081158>,  <38.991154, 30.153851, 41.366337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907627, 29.886087, 41.081158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398547, 0.607480, -0.687116,
		0.893060, -0.427623, 0.139938,
		-0.208817, -0.669407, -0.712944,
		38.844982, 29.685265, 40.867275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.577251, 30.192530, 40.921127>,  <38.991154, 30.153851, 41.366337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.577251, 30.192530, 40.921127> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288998, 30.025520, 40.699726>,  <39.116047, 29.925314, 40.566887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.288998, 30.025520, 40.699726>,  <39.577251, 30.192530, 40.921127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.288998, 30.025520, 40.699726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.157195, 0.679152, -0.716967,
		0.675252, -0.603683, -0.423794,
		-0.720642, -0.417515, -0.553495,
		39.072807, 29.900263, 40.533676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777504, 30.175674, 40.360538>,  <39.577251, 30.192530, 40.921127>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777504, 30.175674, 40.360538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385700, 30.138393, 40.289116>,  <39.150620, 30.116026, 40.246262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385700, 30.138393, 40.289116>,  <39.777504, 30.175674, 40.360538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385700, 30.138393, 40.289116> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097556, 0.556068, -0.825392,
		0.176220, -0.825895, -0.535579,
		-0.979504, -0.093201, -0.178561,
		39.091850, 30.110434, 40.235546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.758251, 29.981415, 39.640957>,  <39.777504, 30.175674, 40.360538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.758251, 29.981415, 39.640957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429001, 30.171721, 39.764961>,  <39.231449, 30.285904, 39.839363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.429001, 30.171721, 39.764961>,  <39.758251, 29.981415, 39.640957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429001, 30.171721, 39.764961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075316, 0.632581, -0.770823,
		-0.562840, -0.611137, -0.556528,
		-0.823127, 0.475766, 0.310014,
		39.182064, 30.314449, 39.857964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.530293, 30.347605, 39.083145>,  <39.758251, 29.981415, 39.640957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.530293, 30.347605, 39.083145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247978, 30.503080, 39.320053>,  <39.078590, 30.596365, 39.462196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.247978, 30.503080, 39.320053>,  <39.530293, 30.347605, 39.083145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.247978, 30.503080, 39.320053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239409, 0.655987, -0.715797,
		-0.666743, -0.646996, -0.369932,
		-0.705788, 0.388687, 0.592272,
		39.036243, 30.619686, 39.497734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.074657, 30.626293, 38.579861>,  <39.530293, 30.347605, 39.083145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.074657, 30.626293, 38.579861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966656, 30.762676, 38.940048>,  <38.901855, 30.844507, 39.156162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.966656, 30.762676, 38.940048>,  <39.074657, 30.626293, 38.579861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.966656, 30.762676, 38.940048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042503, 0.938512, -0.342619,
		-0.961921, -0.054235, -0.267892,
		-0.270002, 0.340959, 0.900470,
		38.885654, 30.864964, 39.210190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655540, 31.195045, 38.403431>,  <39.074657, 30.626293, 38.579861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655540, 31.195045, 38.403431> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773056, 31.259499, 38.780308>,  <38.843563, 31.298170, 39.006435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.773056, 31.259499, 38.780308>,  <38.655540, 31.195045, 38.403431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.773056, 31.259499, 38.780308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227910, 0.945454, -0.232754,
		-0.928303, 0.283115, 0.241038,
		0.293787, 0.161131, 0.942192,
		38.861191, 31.307838, 39.062965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.152828, 31.659883, 38.754242>,  <38.655540, 31.195045, 38.403431>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.152828, 31.659883, 38.754242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518768, 31.697317, 38.911358>,  <38.738335, 31.719778, 39.005627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.518768, 31.697317, 38.911358>,  <38.152828, 31.659883, 38.754242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518768, 31.697317, 38.911358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055632, 0.934282, -0.352167,
		-0.399937, 0.344033, 0.849525,
		0.914853, 0.093584, 0.392793,
		38.793224, 31.725391, 39.029194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.197563, 32.301517, 38.849998>,  <38.152828, 31.659883, 38.754242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.197563, 32.301517, 38.849998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586494, 32.255730, 38.931465>,  <38.819851, 32.228256, 38.980347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.586494, 32.255730, 38.931465>,  <38.197563, 32.301517, 38.849998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.586494, 32.255730, 38.931465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189977, 0.894779, -0.404078,
		-0.135983, 0.431588, 0.891763,
		0.972326, -0.114467, 0.203666,
		38.878193, 32.221390, 38.992565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.417206, 32.957539, 38.896214>,  <38.197563, 32.301517, 38.849998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.417206, 32.957539, 38.896214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771336, 32.772720, 38.875381>,  <38.983814, 32.661831, 38.862881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.771336, 32.772720, 38.875381>,  <38.417206, 32.957539, 38.896214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.771336, 32.772720, 38.875381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412472, 0.832130, -0.370710,
		0.214626, 0.306716, 0.927287,
		0.885326, -0.462044, -0.052085,
		39.036934, 32.634106, 38.859756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904163, 33.401432, 39.266056>,  <38.417206, 32.957539, 38.896214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904163, 33.401432, 39.266056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131187, 33.159710, 39.042381>,  <39.267403, 33.014675, 38.908176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.131187, 33.159710, 39.042381>,  <38.904163, 33.401432, 39.266056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.131187, 33.159710, 39.042381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406506, 0.796297, -0.447956,
		0.715979, 0.026931, 0.697602,
		0.567562, -0.604307, -0.559184,
		39.301456, 32.978416, 38.874626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656631, 33.701054, 39.280987>,  <38.904163, 33.401432, 39.266056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656631, 33.701054, 39.280987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609955, 33.454494, 38.969490>,  <39.581947, 33.306561, 38.782593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.609955, 33.454494, 38.969490>,  <39.656631, 33.701054, 39.280987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.609955, 33.454494, 38.969490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493972, 0.644214, -0.583934,
		0.861611, -0.452819, 0.229305,
		-0.116695, -0.616395, -0.778743,
		39.574947, 33.269577, 38.735867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270298, 33.677658, 39.013580>,  <39.656631, 33.701054, 39.280987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270298, 33.677658, 39.013580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041046, 33.531933, 38.719967>,  <39.903496, 33.444500, 38.543800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041046, 33.531933, 38.719967>,  <40.270298, 33.677658, 39.013580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041046, 33.531933, 38.719967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379545, 0.675866, -0.631784,
		0.726275, -0.640689, -0.249082,
		-0.573123, -0.364311, -0.734035,
		39.869110, 33.422642, 38.499756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.732849, 33.621994, 38.351513>,  <40.270298, 33.677658, 39.013580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.732849, 33.621994, 38.351513> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355927, 33.641468, 38.219032>,  <40.129772, 33.653152, 38.139545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.355927, 33.641468, 38.219032>,  <40.732849, 33.621994, 38.351513>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.355927, 33.641468, 38.219032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241434, 0.784168, -0.571655,
		0.231886, -0.618636, -0.750679,
		-0.942305, 0.048681, -0.331198,
		40.073235, 33.656071, 38.119675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.728664, 33.686348, 37.728287>,  <40.732849, 33.621994, 38.351513>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.728664, 33.686348, 37.728287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383282, 33.860119, 37.830830>,  <40.176052, 33.964382, 37.892357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.383282, 33.860119, 37.830830>,  <40.728664, 33.686348, 37.728287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.383282, 33.860119, 37.830830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296906, 0.848558, -0.437945,
		-0.407790, -0.302032, -0.861675,
		-0.863455, 0.434426, 0.256359,
		40.124245, 33.990448, 37.907738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.386848, 34.062950, 37.595043>,  <40.728664, 33.686348, 37.728287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.386848, 34.062950, 37.595043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549030, 34.072292, 37.960571>,  <41.646339, 34.077896, 38.179886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.549030, 34.072292, 37.960571>,  <41.386848, 34.062950, 37.595043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.549030, 34.072292, 37.960571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.876223, -0.294764, -0.381245,
		0.260457, 0.955285, -0.139977,
		0.405457, 0.023353, 0.913816,
		41.670666, 34.079300, 38.234715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.019501, 33.971085, 37.349129>,  <41.386848, 34.062950, 37.595043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.019501, 33.971085, 37.349129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034313, 33.975372, 37.748833>,  <42.043201, 33.977943, 37.988655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.034313, 33.975372, 37.748833>,  <42.019501, 33.971085, 37.349129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.034313, 33.975372, 37.748833> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.971253, -0.235684, -0.033469,
		0.235150, 0.971771, -0.019139,
		0.037035, 0.010719, 0.999257,
		42.045425, 33.978588, 38.048611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.592018, 34.468369, 37.701256>,  <42.019501, 33.971085, 37.349129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.592018, 34.468369, 37.701256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513844, 34.128242, 37.896709>,  <42.466938, 33.924168, 38.013981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.513844, 34.128242, 37.896709>,  <42.592018, 34.468369, 37.701256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.513844, 34.128242, 37.896709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.950205, -0.287491, -0.120247,
		0.242727, 0.440806, 0.864161,
		-0.195433, -0.850317, 0.488638,
		42.455215, 33.873146, 38.043301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.163704, 34.303440, 38.129566>,  <42.592018, 34.468369, 37.701256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.163704, 34.303440, 38.129566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979874, 33.954964, 38.060505>,  <42.869576, 33.745876, 38.019070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.979874, 33.954964, 38.060505>,  <43.163704, 34.303440, 38.129566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.979874, 33.954964, 38.060505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874429, -0.409829, -0.259643,
		0.155442, -0.270298, 0.950146,
		-0.459578, -0.871194, -0.172652,
		42.841999, 33.693604, 38.008709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.510448, 33.750683, 38.483936>,  <43.163704, 34.303440, 38.129566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.510448, 33.750683, 38.483936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327660, 33.626938, 38.150356>,  <43.217987, 33.552692, 37.950207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.327660, 33.626938, 38.150356>,  <43.510448, 33.750683, 38.483936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.327660, 33.626938, 38.150356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866387, -0.367060, -0.338586,
		-0.201364, -0.877248, 0.435762,
		-0.456975, -0.309359, -0.833949,
		43.190567, 33.534130, 37.900173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.642052, 33.086941, 38.366940>,  <43.510448, 33.750683, 38.483936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.642052, 33.086941, 38.366940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552612, 33.220005, 38.000477>,  <43.498951, 33.299843, 37.780602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.552612, 33.220005, 38.000477>,  <43.642052, 33.086941, 38.366940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.552612, 33.220005, 38.000477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762033, -0.526391, -0.377118,
		-0.607709, -0.782463, -0.135803,
		-0.223595, 0.332664, -0.916155,
		43.485535, 33.319805, 37.725632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.769638, 32.487278, 37.730980>,  <43.642052, 33.086941, 38.366940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.769638, 32.487278, 37.730980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774704, 32.839878, 37.542171>,  <43.777744, 33.051437, 37.428886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.774704, 32.839878, 37.542171>,  <43.769638, 32.487278, 37.730980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.774704, 32.839878, 37.542171> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875301, -0.237994, -0.420961,
		-0.483413, -0.407827, -0.774589,
		0.012668, 0.881496, -0.472021,
		43.778503, 33.104328, 37.400566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.704052, 32.455647, 36.941792>,  <43.769638, 32.487278, 37.730980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.704052, 32.455647, 36.941792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894909, 32.789967, 37.050438>,  <44.009422, 32.990559, 37.115627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.894909, 32.789967, 37.050438>,  <43.704052, 32.455647, 36.941792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.894909, 32.789967, 37.050438> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.828924, -0.325345, -0.455011,
		-0.291929, 0.442254, -0.848050,
		0.477140, 0.835800, 0.271618,
		44.038052, 33.040707, 37.131924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.064663, 32.615036, 36.451908>,  <43.704052, 32.455647, 36.941792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.064663, 32.615036, 36.451908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240608, 32.777740, 36.772175>,  <44.346176, 32.875362, 36.964336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.240608, 32.777740, 36.772175>,  <44.064663, 32.615036, 36.451908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.240608, 32.777740, 36.772175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886225, -0.052308, -0.460292,
		-0.145345, 0.912038, -0.383487,
		0.439863, 0.406757, 0.800668,
		44.372566, 32.899769, 37.012375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443600, 33.287727, 36.367939>,  <44.064663, 32.615036, 36.451908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443600, 33.287727, 36.367939> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653446, 33.078564, 36.636665>,  <44.779354, 32.953064, 36.797901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.653446, 33.078564, 36.636665>,  <44.443600, 33.287727, 36.367939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.653446, 33.078564, 36.636665> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820215, 0.099034, -0.563418,
		0.228084, 0.846615, 0.480855,
		0.524619, -0.522911, 0.671818,
		44.810833, 32.921692, 36.838211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.946274, 33.732773, 36.629276>,  <44.443600, 33.287727, 36.367939>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.946274, 33.732773, 36.629276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049839, 33.347614, 36.598835>,  <45.111977, 33.116520, 36.580570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.049839, 33.347614, 36.598835>,  <44.946274, 33.732773, 36.629276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.049839, 33.347614, 36.598835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683192, 0.238259, -0.690277,
		0.682800, 0.126724, 0.719532,
		0.258910, -0.962899, -0.076106,
		45.127510, 33.058746, 36.576004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.662907, 33.793850, 36.577469>,  <44.946274, 33.732773, 36.629276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.662907, 33.793850, 36.577469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576405, 33.438740, 36.414944>,  <45.524506, 33.225674, 36.317429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.576405, 33.438740, 36.414944>,  <45.662907, 33.793850, 36.577469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.576405, 33.438740, 36.414944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728232, 0.130527, -0.672786,
		0.650318, -0.441381, 0.618280,
		-0.216253, -0.887776, -0.406312,
		45.511528, 33.172405, 36.293049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.178188, 33.154949, 36.549316>,  <45.662907, 33.793850, 36.577469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.178188, 33.154949, 36.549316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926064, 33.198845, 36.241898>,  <45.774788, 33.225182, 36.057446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.926064, 33.198845, 36.241898>,  <46.178188, 33.154949, 36.549316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.926064, 33.198845, 36.241898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773995, 0.165749, -0.611113,
		0.060324, -0.980043, -0.189409,
		-0.630311, 0.109737, -0.768548,
		45.736969, 33.231766, 36.011333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.302631, 32.698162, 35.927982>,  <46.178188, 33.154949, 36.549316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.302631, 32.698162, 35.927982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153397, 33.048115, 35.804443>,  <46.063854, 33.258087, 35.730320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.153397, 33.048115, 35.804443>,  <46.302631, 32.698162, 35.927982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.153397, 33.048115, 35.804443> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858615, 0.199445, -0.472230,
		-0.351548, -0.441363, -0.825598,
		-0.373087, 0.874883, -0.308847,
		46.041470, 33.310581, 35.711788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.610077, 32.690617, 35.258648>,  <46.302631, 32.698162, 35.927982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.610077, 32.690617, 35.258648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518631, 33.058681, 35.385792>,  <46.463764, 33.279522, 35.462078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.518631, 33.058681, 35.385792>,  <46.610077, 32.690617, 35.258648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.518631, 33.058681, 35.385792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927747, 0.304862, -0.215278,
		-0.294993, 0.245675, -0.923376,
		-0.228614, 0.920165, 0.317856,
		46.450047, 33.334732, 35.481148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.760330, 33.165985, 34.720512>,  <46.610077, 32.690617, 35.258648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.760330, 33.165985, 34.720512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802505, 33.272305, 35.103809>,  <46.827808, 33.336098, 35.333790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.802505, 33.272305, 35.103809>,  <46.760330, 33.165985, 34.720512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.802505, 33.272305, 35.103809> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994417, -0.032264, -0.100467,
		0.004213, 0.963488, -0.267718,
		0.105436, 0.265800, 0.958245,
		46.834137, 33.352043, 35.391281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.229500, 33.699436, 34.736141>,  <46.760330, 33.165985, 34.720512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.229500, 33.699436, 34.736141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.235359, 33.537231, 35.101730>,  <47.238876, 33.439907, 35.321083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.235359, 33.537231, 35.101730>,  <47.229500, 33.699436, 34.736141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.235359, 33.537231, 35.101730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.961828, -0.244095, -0.123716,
		0.273264, 0.880894, 0.386460,
		0.014647, -0.405515, 0.913971,
		47.239754, 33.415577, 35.375923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.896912, 34.125854, 34.444473>,  <47.229500, 33.699436, 34.736141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.896912, 34.125854, 34.444473> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537136, 34.251118, 34.566414>,  <47.321270, 34.326275, 34.639580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.537136, 34.251118, 34.566414>,  <47.896912, 34.125854, 34.444473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.537136, 34.251118, 34.566414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413929, 0.834244, 0.364278,
		-0.140243, 0.453834, -0.879981,
		-0.899441, 0.313163, 0.304852,
		47.267303, 34.345066, 34.657871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.624706, 34.767513, 34.242458>,  <47.896912, 34.125854, 34.444473>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.624706, 34.767513, 34.242458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446247, 34.716625, 34.596806>,  <47.339172, 34.686092, 34.809414>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.446247, 34.716625, 34.596806>,  <47.624706, 34.767513, 34.242458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.446247, 34.716625, 34.596806> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527605, 0.762155, 0.375170,
		-0.722902, 0.634771, -0.272908,
		-0.446145, -0.127224, 0.885872,
		47.312405, 34.678459, 34.862568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.284908, 35.394951, 34.439259>,  <47.624706, 34.767513, 34.242458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.284908, 35.394951, 34.439259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441383, 35.142918, 34.707577>,  <47.535267, 34.991699, 34.868568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.441383, 35.142918, 34.707577>,  <47.284908, 35.394951, 34.439259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.441383, 35.142918, 34.707577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821652, 0.567441, 0.053843,
		-0.414564, 0.530100, 0.739682,
		0.391184, -0.630083, 0.670799,
		47.558739, 34.953892, 34.908817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<42.553490, 38.201214, 28.958248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.211205, 38.179935, 28.752361>,  <42.005833, 38.167168, 28.628830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.211205, 38.179935, 28.752361>,  <42.553490, 38.201214, 28.958248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.211205, 38.179935, 28.752361> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405375, -0.549316, 0.730700,
		-0.321609, 0.833920, 0.448492,
		-0.855709, -0.053193, -0.514715,
		41.954491, 38.163979, 28.597946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.094238, 38.180817, 29.482510>,  <42.553490, 38.201214, 28.958248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.094238, 38.180817, 29.482510> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.880676, 38.073929, 29.161625>,  <41.752541, 38.009796, 28.969095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.880676, 38.073929, 29.161625>,  <42.094238, 38.180817, 29.482510>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.880676, 38.073929, 29.161625> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619310, -0.522355, 0.586174,
		-0.575678, 0.809776, 0.113392,
		-0.533901, -0.267223, -0.802211,
		41.720505, 37.993763, 28.920961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.370163, 38.325779, 29.568148>,  <42.094238, 38.180817, 29.482510>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.370163, 38.325779, 29.568148> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403820, 38.010582, 29.324184>,  <41.424015, 37.821465, 29.177807>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.403820, 38.010582, 29.324184>,  <41.370163, 38.325779, 29.568148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.403820, 38.010582, 29.324184> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559552, -0.543831, 0.625419,
		-0.824512, 0.288650, -0.486683,
		0.084146, -0.787990, -0.609910,
		41.429066, 37.774185, 29.141211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.664783, 38.205406, 29.385277>,  <41.370163, 38.325779, 29.568148>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.664783, 38.205406, 29.385277> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880775, 37.875668, 29.317303>,  <41.010368, 37.677826, 29.276518>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.880775, 37.875668, 29.317303>,  <40.664783, 38.205406, 29.385277>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.880775, 37.875668, 29.317303> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697519, -0.551272, 0.457783,
		-0.471053, -0.128659, -0.872672,
		0.539978, -0.824346, -0.169936,
		41.042770, 37.628365, 29.266321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.169682, 37.673782, 29.289003>,  <40.664783, 38.205406, 29.385277>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.169682, 37.673782, 29.289003> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502079, 37.465084, 29.366180>,  <40.701519, 37.339863, 29.412487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.502079, 37.465084, 29.366180>,  <40.169682, 37.673782, 29.289003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.502079, 37.465084, 29.366180> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526174, -0.624660, 0.577010,
		-0.180531, -0.581013, -0.793620,
		0.830993, -0.521750, 0.192943,
		40.751377, 37.308559, 29.424063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.001850, 36.928474, 29.140656>,  <40.169682, 37.673782, 29.289003>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.001850, 36.928474, 29.140656> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311508, 36.953053, 29.392662>,  <40.497303, 36.967800, 29.543865>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.311508, 36.953053, 29.392662>,  <40.001850, 36.928474, 29.140656>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311508, 36.953053, 29.392662> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368232, -0.765831, 0.527169,
		0.514880, -0.640099, -0.570239,
		0.774147, 0.061449, 0.630016,
		40.543751, 36.971489, 29.581667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874355, 36.372421, 29.518484>,  <40.001850, 36.928474, 29.140656>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874355, 36.372421, 29.518484> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.186001, 36.498219, 29.735397>,  <40.372990, 36.573696, 29.865545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.186001, 36.498219, 29.735397>,  <39.874355, 36.372421, 29.518484>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.186001, 36.498219, 29.735397> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280861, -0.598248, 0.750477,
		0.560442, -0.737015, -0.377775,
		0.779116, 0.314496, 0.542282,
		40.419735, 36.592567, 29.898083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.247841, 35.801308, 29.634611>,  <39.874355, 36.372421, 29.518484>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.247841, 35.801308, 29.634611> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285908, 36.083580, 29.915455>,  <40.308746, 36.252945, 30.083961>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.285908, 36.083580, 29.915455>,  <40.247841, 35.801308, 29.634611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.285908, 36.083580, 29.915455> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170312, -0.683367, 0.709932,
		0.980784, -0.187138, 0.055153,
		0.095165, 0.705683, 0.702107,
		40.314457, 36.295284, 30.126087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.574314, 35.480579, 30.121305>,  <40.247841, 35.801308, 29.634611>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.574314, 35.480579, 30.121305> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413982, 35.789650, 30.318203>,  <40.317783, 35.975094, 30.436342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.413982, 35.789650, 30.318203>,  <40.574314, 35.480579, 30.121305>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.413982, 35.789650, 30.318203> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274038, -0.613814, 0.740362,
		0.874209, 0.161864, 0.457776,
		-0.400827, 0.772679, 0.492245,
		40.293736, 36.021454, 30.465876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.769863, 35.508579, 30.799545>,  <40.574314, 35.480579, 30.121305>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.769863, 35.508579, 30.799545> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446857, 35.739548, 30.847723>,  <40.253056, 35.878128, 30.876629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.446857, 35.739548, 30.847723>,  <40.769863, 35.508579, 30.799545>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.446857, 35.739548, 30.847723> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216633, -0.480251, 0.849958,
		0.548625, 0.660262, 0.512898,
		-0.807515, 0.577419, 0.120443,
		40.204601, 35.912773, 30.883856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.770973, 35.565483, 31.433001>,  <40.769863, 35.508579, 30.799545>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.770973, 35.565483, 31.433001> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.394035, 35.669220, 31.348398>,  <40.167873, 35.731461, 31.297638>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.394035, 35.669220, 31.348398>,  <40.770973, 35.565483, 31.433001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.394035, 35.669220, 31.348398> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294068, -0.340042, 0.893250,
		0.159734, 0.903944, 0.396699,
		-0.942342, 0.259339, -0.211505,
		40.111332, 35.747021, 31.284946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576023, 35.903122, 32.001762>,  <40.770973, 35.565483, 31.433001>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576023, 35.903122, 32.001762> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.237366, 35.772808, 31.833452>,  <40.034172, 35.694618, 31.732466>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.237366, 35.772808, 31.833452>,  <40.576023, 35.903122, 32.001762>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237366, 35.772808, 31.833452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354266, -0.244964, 0.902490,
		-0.397094, 0.913157, 0.091983,
		-0.846647, -0.325787, -0.420775,
		39.983372, 35.675072, 31.707220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.041325, 36.171844, 32.367004>,  <40.576023, 35.903122, 32.001762>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.041325, 36.171844, 32.367004> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.876007, 35.871929, 32.160313>,  <39.776817, 35.691978, 32.036297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.876007, 35.871929, 32.160313>,  <40.041325, 36.171844, 32.367004>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876007, 35.871929, 32.160313> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447512, -0.326959, 0.832364,
		-0.793046, 0.575252, -0.200409,
		-0.413294, -0.749788, -0.516726,
		39.752018, 35.646992, 32.005295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.373581, 36.006741, 32.649437>,  <40.041325, 36.171844, 32.367004>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.373581, 36.006741, 32.649437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448181, 35.661419, 32.461849>,  <39.492943, 35.454227, 32.349297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.448181, 35.661419, 32.461849>,  <39.373581, 36.006741, 32.649437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.448181, 35.661419, 32.461849> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444329, -0.499852, 0.743451,
		-0.876236, 0.069723, -0.476811,
		0.186500, -0.863300, -0.468969,
		39.504131, 35.402428, 32.321159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.846687, 35.528736, 32.872211>,  <39.373581, 36.006741, 32.649437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.846687, 35.528736, 32.872211> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119057, 35.280670, 32.716396>,  <39.282478, 35.131828, 32.622906>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.119057, 35.280670, 32.716396>,  <38.846687, 35.528736, 32.872211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.119057, 35.280670, 32.716396> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355255, -0.744831, 0.564819,
		-0.640424, -0.246210, -0.727487,
		0.680919, -0.620167, -0.389541,
		39.323334, 35.094620, 32.599533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468773, 35.015034, 32.682468>,  <38.846687, 35.528736, 32.872211>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468773, 35.015034, 32.682468> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842834, 34.876965, 32.714306>,  <39.067272, 34.794125, 32.733406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.842834, 34.876965, 32.714306>,  <38.468773, 35.015034, 32.682468>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.842834, 34.876965, 32.714306> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.317873, -0.718571, 0.618557,
		-0.156318, -0.603748, -0.781699,
		0.935159, -0.345172, 0.079590,
		39.123383, 34.773415, 32.738182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.419140, 34.349865, 32.734734>,  <38.468773, 35.015034, 32.682468>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.419140, 34.349865, 32.734734> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794308, 34.393112, 32.866566>,  <39.019409, 34.419060, 32.945667>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.794308, 34.393112, 32.866566>,  <38.419140, 34.349865, 32.734734>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.794308, 34.393112, 32.866566> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151624, -0.726790, 0.669915,
		0.311969, -0.678296, -0.665274,
		0.937915, 0.108121, 0.329582,
		39.075684, 34.425549, 32.965439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.654243, 33.695202, 32.759140>,  <38.419140, 34.349865, 32.734734>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.654243, 33.695202, 32.759140> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.860268, 33.898064, 33.035549>,  <38.983883, 34.019779, 33.201393>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.860268, 33.898064, 33.035549>,  <38.654243, 33.695202, 32.759140>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860268, 33.898064, 33.035549> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272719, -0.667326, 0.693036,
		0.812610, -0.545412, -0.205405,
		0.515062, 0.507151, 0.691020,
		39.014786, 34.050209, 33.242855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.990215, 33.210976, 33.233204>,  <38.654243, 33.695202, 32.759140>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.990215, 33.210976, 33.233204> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041397, 33.540005, 33.454834>,  <39.072105, 33.737423, 33.587811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041397, 33.540005, 33.454834>,  <38.990215, 33.210976, 33.233204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041397, 33.540005, 33.454834> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016857, -0.556782, 0.830488,
		0.991636, -0.115607, -0.057378,
		0.127957, 0.822575, 0.554074,
		39.079784, 33.786777, 33.621056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.585896, 33.136768, 33.662731>,  <38.990215, 33.210976, 33.233204>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.585896, 33.136768, 33.662731> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363281, 33.424873, 33.828377>,  <39.229713, 33.597736, 33.927765>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.363281, 33.424873, 33.828377>,  <39.585896, 33.136768, 33.662731>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.363281, 33.424873, 33.828377> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065491, -0.458860, 0.886092,
		0.828239, 0.520261, 0.208200,
		-0.556534, 0.720261, 0.414118,
		39.196320, 33.640953, 33.952614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.751095, 33.068466, 34.366776>,  <39.585896, 33.136768, 33.662731>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.751095, 33.068466, 34.366776> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.415466, 33.284958, 34.388798>,  <39.214088, 33.414852, 34.402012>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.415466, 33.284958, 34.388798>,  <39.751095, 33.068466, 34.366776>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.415466, 33.284958, 34.388798> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206916, -0.411092, 0.887800,
		0.503138, 0.733534, 0.456924,
		-0.839070, 0.541231, 0.055056,
		39.163746, 33.447327, 34.405315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.808498, 33.389645, 35.042915>,  <39.751095, 33.068466, 34.366776>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.808498, 33.389645, 35.042915> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430527, 33.374836, 34.912846>,  <39.203743, 33.365952, 34.834805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.430527, 33.374836, 34.912846>,  <39.808498, 33.389645, 35.042915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.430527, 33.374836, 34.912846> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290658, -0.361754, 0.885806,
		-0.150431, 0.931538, 0.331070,
		-0.944928, -0.037024, -0.325178,
		39.147049, 33.363728, 34.815292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.083385, 33.514877, 35.613525>,  <39.808498, 33.389645, 35.042915>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.083385, 33.514877, 35.613525> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379852, 33.397713, 35.855145>,  <40.557732, 33.327415, 36.000118>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.379852, 33.397713, 35.855145>,  <40.083385, 33.514877, 35.613525>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.379852, 33.397713, 35.855145> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550389, 0.780321, -0.296936,
		-0.384378, 0.552542, 0.739561,
		0.741165, -0.292911, 0.604051,
		40.602203, 33.309841, 36.036362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.409958, 34.120430, 35.807987>,  <40.083385, 33.514877, 35.613525>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.409958, 34.120430, 35.807987> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680420, 33.856091, 35.938274>,  <40.842697, 33.697487, 36.016445>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.680420, 33.856091, 35.938274>,  <40.409958, 34.120430, 35.807987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.680420, 33.856091, 35.938274> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736031, 0.625583, -0.258659,
		-0.032829, 0.414632, 0.909397,
		0.676152, -0.660852, 0.325720,
		40.883266, 33.657833, 36.035992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.745335, 34.481323, 36.346653>,  <40.409958, 34.120430, 35.807987>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.745335, 34.481323, 36.346653> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.973701, 34.198528, 36.179691>,  <41.110722, 34.028851, 36.079514>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.973701, 34.198528, 36.179691>,  <40.745335, 34.481323, 36.346653>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.973701, 34.198528, 36.179691> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599735, 0.706329, -0.376055,
		0.560688, -0.035633, 0.827260,
		0.570918, -0.706986, -0.417400,
		41.144978, 33.986431, 36.054470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.385368, 34.795540, 36.348370>,  <40.745335, 34.481323, 36.346653>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.385368, 34.795540, 36.348370> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.424656, 34.501030, 36.080563>,  <41.448227, 34.324326, 35.919876>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.424656, 34.501030, 36.080563>,  <41.385368, 34.795540, 36.348370>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.424656, 34.501030, 36.080563> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687113, 0.536843, -0.489567,
		0.719881, -0.411952, 0.558630,
		0.098218, -0.736271, -0.669520,
		41.454121, 34.280148, 35.879707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149719, 34.826782, 36.174980>,  <41.385368, 34.795540, 36.348370>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149719, 34.826782, 36.174980> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.973438, 34.646294, 35.864578>,  <41.867668, 34.537998, 35.678337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.973438, 34.646294, 35.864578>,  <42.149719, 34.826782, 36.174980>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.973438, 34.646294, 35.864578> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693464, 0.377789, -0.613501,
		0.569992, -0.808500, 0.146416,
		-0.440701, -0.451225, -0.776002,
		41.841228, 34.510925, 35.631779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.664398, 34.526047, 35.800259>,  <42.149719, 34.826782, 36.174980>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.664398, 34.526047, 35.800259> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.356705, 34.574169, 35.549244>,  <42.172089, 34.603043, 35.398636>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.356705, 34.574169, 35.549244>,  <42.664398, 34.526047, 35.800259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.356705, 34.574169, 35.549244> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617256, 0.393735, -0.681152,
		0.165134, -0.911317, -0.377137,
		-0.769237, 0.120309, -0.627534,
		42.125935, 34.610260, 35.360985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.852970, 34.148624, 35.224968>,  <42.664398, 34.526047, 35.800259>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.852970, 34.148624, 35.224968> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.569469, 34.407532, 35.112747>,  <42.399368, 34.562878, 35.045414>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.569469, 34.407532, 35.112747>,  <42.852970, 34.148624, 35.224968>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.569469, 34.407532, 35.112747> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602374, 0.348292, -0.718219,
		-0.367168, -0.678037, -0.636752,
		-0.708755, 0.647270, -0.280551,
		42.356842, 34.601711, 35.028584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.794559, 34.119347, 34.454487>,  <42.852970, 34.148624, 35.224968>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.794559, 34.119347, 34.454487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.605858, 34.454975, 34.562862>,  <42.492638, 34.656353, 34.627888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.605858, 34.454975, 34.562862>,  <42.794559, 34.119347, 34.454487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.605858, 34.454975, 34.562862> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499724, 0.507597, -0.701870,
		-0.726447, -0.195715, -0.658764,
		-0.471753, 0.839071, 0.270939,
		42.464333, 34.706696, 34.644142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688919, 34.430344, 33.840717>,  <42.794559, 34.119347, 34.454487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688919, 34.430344, 33.840717> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.620377, 34.753338, 34.066502>,  <42.579250, 34.947132, 34.201973>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.620377, 34.753338, 34.066502>,  <42.688919, 34.430344, 33.840717>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.620377, 34.753338, 34.066502> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402104, 0.580360, -0.708163,
		-0.899417, 0.105626, -0.424137,
		-0.171352, 0.807481, 0.564458,
		42.568970, 34.995583, 34.235840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.260746, 34.857067, 33.350674>,  <42.688919, 34.430344, 33.840717>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.260746, 34.857067, 33.350674> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.427784, 35.073776, 33.642452>,  <42.528008, 35.203800, 33.817520>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.427784, 35.073776, 33.642452>,  <42.260746, 34.857067, 33.350674>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.427784, 35.073776, 33.642452> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074490, 0.779684, -0.621727,
		-0.905573, 0.313969, 0.285239,
		0.417599, 0.541771, 0.729448,
		42.553062, 35.236309, 33.861286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.806942, 35.435513, 33.358509>,  <42.260746, 34.857067, 33.350674>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.806942, 35.435513, 33.358509> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.151806, 35.535168, 33.534966>,  <42.358727, 35.594959, 33.640839>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.151806, 35.535168, 33.534966>,  <41.806942, 35.435513, 33.358509>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.151806, 35.535168, 33.534966> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037076, 0.837375, -0.545370,
		-0.505273, 0.486553, 0.712716,
		0.862163, 0.249136, 0.441143,
		42.410454, 35.609909, 33.667309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.722481, 36.134781, 33.429806>,  <41.806942, 35.435513, 33.358509>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.722481, 36.134781, 33.429806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.111015, 36.039749, 33.433052>,  <42.344135, 35.982731, 33.435001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.111015, 36.039749, 33.433052>,  <41.722481, 36.134781, 33.429806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.111015, 36.039749, 33.433052> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183452, 0.727439, -0.661194,
		0.151185, 0.643728, 0.750171,
		0.971333, -0.237583, 0.008115,
		42.402416, 35.968475, 33.435486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.110622, 36.698406, 33.515034>,  <41.722481, 36.134781, 33.429806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.110622, 36.698406, 33.515034> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.375961, 36.459435, 33.334789>,  <42.535164, 36.316051, 33.226643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.375961, 36.459435, 33.334789>,  <42.110622, 36.698406, 33.515034>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.375961, 36.459435, 33.334789> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163717, 0.703446, -0.691636,
		0.730183, 0.385022, 0.564438,
		0.663347, -0.597429, -0.450610,
		42.574966, 36.280205, 33.199608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.682716, 37.052525, 33.528748>,  <42.110622, 36.698406, 33.515034>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.682716, 37.052525, 33.528748> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.702633, 36.798241, 33.220619>,  <42.714584, 36.645672, 33.035740>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.702633, 36.798241, 33.220619>,  <42.682716, 37.052525, 33.528748>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.702633, 36.798241, 33.220619> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246531, 0.755237, -0.607321,
		0.967855, -0.159666, 0.194329,
		0.049796, -0.635707, -0.770323,
		42.717571, 36.607529, 32.989521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.247978, 37.271263, 33.180920>,  <42.682716, 37.052525, 33.528748>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.247978, 37.271263, 33.180920> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.041264, 37.066174, 32.906681>,  <42.917233, 36.943119, 32.742138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.041264, 37.066174, 32.906681>,  <43.247978, 37.271263, 33.180920>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.041264, 37.066174, 32.906681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343606, 0.609270, -0.714651,
		0.784133, -0.604898, -0.138688,
		-0.516789, -0.512727, -0.685595,
		42.886227, 36.912357, 32.701004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.671368, 37.337891, 32.677845>,  <43.247978, 37.271263, 33.180920>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.671368, 37.337891, 32.677845> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.367710, 37.163895, 32.484154>,  <43.185516, 37.059498, 32.367939>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.367710, 37.163895, 32.484154>,  <43.671368, 37.337891, 32.677845>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367710, 37.163895, 32.484154> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273268, 0.462207, -0.843617,
		0.590778, -0.772754, -0.232016,
		-0.759148, -0.434988, -0.484231,
		43.139965, 37.033398, 32.338886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.926132, 37.026798, 32.124702>,  <43.671368, 37.337891, 32.677845>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.926132, 37.026798, 32.124702> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.544426, 37.098686, 32.029140>,  <43.315403, 37.141819, 31.971804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.544426, 37.098686, 32.029140>,  <43.926132, 37.026798, 32.124702>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.544426, 37.098686, 32.029140> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297897, 0.504408, -0.810450,
		-0.025147, -0.844555, -0.534878,
		-0.954266, 0.179719, -0.238906,
		43.258144, 37.152603, 31.957468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.985912, 37.079212, 31.432880>,  <43.926132, 37.026798, 32.124702>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.985912, 37.079212, 31.432880> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.626114, 37.237522, 31.506922>,  <43.410233, 37.332508, 31.551346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.626114, 37.237522, 31.506922>,  <43.985912, 37.079212, 31.432880>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.626114, 37.237522, 31.506922> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092451, 0.586460, -0.804685,
		-0.427031, -0.706700, -0.564110,
		-0.899498, 0.395777, 0.185102,
		43.356266, 37.356255, 31.562452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<43.626980, 37.104603, 30.818851> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.451405, 37.398354, 31.025934>,  <43.346058, 37.574604, 31.150185>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.451405, 37.398354, 31.025934>,  <43.626980, 37.104603, 30.818851>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.451405, 37.398354, 31.025934> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193753, 0.639985, -0.743558,
		-0.877378, -0.226069, -0.423202,
		-0.438939, 0.734378, 0.517707,
		43.319721, 37.618668, 31.181246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.140285, 37.173977, 30.428347>,  <43.626980, 37.104603, 30.818851>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.140285, 37.173977, 30.428347> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.193569, 37.505299, 30.646030>,  <43.225540, 37.704094, 30.776640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.193569, 37.505299, 30.646030>,  <43.140285, 37.173977, 30.428347>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193569, 37.505299, 30.646030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095689, 0.535788, -0.838913,
		-0.986458, 0.163824, -0.007889,
		0.133208, 0.828307, 0.544208,
		43.233532, 37.753792, 30.809294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.943184, 37.643330, 29.959476>,  <43.140285, 37.173977, 30.428347>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.943184, 37.643330, 29.959476> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.139545, 37.852585, 30.238142>,  <43.257362, 37.978138, 30.405342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.139545, 37.852585, 30.238142>,  <42.943184, 37.643330, 29.959476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.139545, 37.852585, 30.238142> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194078, 0.713889, -0.672827,
		-0.849323, 0.465499, 0.248919,
		0.490900, 0.523138, 0.696666,
		43.286816, 38.009525, 30.447142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.666210, 38.339718, 29.936663>,  <42.943184, 37.643330, 29.959476>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.666210, 38.339718, 29.936663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.026104, 38.368668, 30.108822>,  <43.242039, 38.386036, 30.212118>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.026104, 38.368668, 30.108822>,  <42.666210, 38.339718, 29.936663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.026104, 38.368668, 30.108822> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217798, 0.780129, -0.586484,
		-0.378215, 0.621418, 0.686143,
		0.899732, 0.072376, 0.430400,
		43.296024, 38.390381, 30.237942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.750549, 39.033466, 30.122248>,  <42.666210, 38.339718, 29.936663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.750549, 39.033466, 30.122248> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118347, 38.876423, 30.130138>,  <43.339024, 38.782196, 30.134872>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.118347, 38.876423, 30.130138>,  <42.750549, 39.033466, 30.122248>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.118347, 38.876423, 30.130138> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.317370, 0.711791, -0.626602,
		0.231969, 0.582418, 0.779089,
		0.919493, -0.392611, 0.019729,
		43.394196, 38.758640, 30.136057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167473, 39.464954, 30.482288>,  <42.750549, 39.033466, 30.122248>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167473, 39.464954, 30.482288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.390297, 39.255589, 30.224382>,  <43.523991, 39.129971, 30.069639>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.390297, 39.255589, 30.224382>,  <43.167473, 39.464954, 30.482288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.390297, 39.255589, 30.224382> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329565, 0.851962, -0.406875,
		0.762278, 0.014163, 0.647095,
		0.557063, -0.523411, -0.644765,
		43.557415, 39.098564, 30.030952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.710144, 39.921852, 30.320751>,  <43.167473, 39.464954, 30.482288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.710144, 39.921852, 30.320751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.781158, 39.656185, 30.030272>,  <43.823765, 39.496784, 29.855984>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.781158, 39.656185, 30.030272>,  <43.710144, 39.921852, 30.320751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.781158, 39.656185, 30.030272> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634596, 0.641267, -0.431352,
		0.752177, -0.384263, 0.535324,
		0.177533, -0.664167, -0.726198,
		43.834419, 39.456936, 29.812412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.510883, 39.857685, 30.181080>,  <43.710144, 39.921852, 30.320751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.510883, 39.857685, 30.181080> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.295658, 39.757153, 29.859255>,  <44.166523, 39.696835, 29.666159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.295658, 39.757153, 29.859255>,  <44.510883, 39.857685, 30.181080>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.295658, 39.757153, 29.859255> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583248, 0.578094, -0.570639,
		0.608532, -0.776300, -0.164463,
		-0.538062, -0.251329, -0.804564,
		44.134239, 39.681755, 29.617886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.027641, 39.701496, 29.659279>,  <44.510883, 39.857685, 30.181080>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.027641, 39.701496, 29.659279> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.679356, 39.784290, 29.480837>,  <44.470383, 39.833969, 29.373772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.679356, 39.784290, 29.480837>,  <45.027641, 39.701496, 29.659279>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679356, 39.784290, 29.480837> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481721, 0.541571, -0.688946,
		0.098995, -0.814775, -0.571264,
		-0.870715, 0.206988, -0.446107,
		44.418140, 39.846386, 29.347004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203724, 39.750324, 28.981050>,  <45.027641, 39.701496, 29.659279>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203724, 39.750324, 28.981050> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.840694, 39.913719, 28.942173>,  <44.622875, 40.011757, 28.918846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.840694, 39.913719, 28.942173>,  <45.203724, 39.750324, 28.981050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.840694, 39.913719, 28.942173> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362260, 0.644703, -0.673146,
		-0.212311, -0.646139, -0.733095,
		-0.907575, 0.408488, -0.097193,
		44.568420, 40.036266, 28.913015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.041794, 39.741913, 28.297342>,  <45.203724, 39.750324, 28.981050>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.041794, 39.741913, 28.297342> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.820061, 40.035763, 28.453829>,  <44.687023, 40.212070, 28.547720>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.820061, 40.035763, 28.453829>,  <45.041794, 39.741913, 28.297342>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820061, 40.035763, 28.453829> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393239, 0.645439, -0.654807,
		-0.733541, -0.209137, -0.646668,
		-0.554329, 0.734623, 0.391215,
		44.653763, 40.256149, 28.571194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.622852, 40.079792, 27.716574>,  <45.041794, 39.741913, 28.297342>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.622852, 40.079792, 27.716574> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.646683, 40.343136, 28.016710>,  <44.660980, 40.501141, 28.196793>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.646683, 40.343136, 28.016710>,  <44.622852, 40.079792, 27.716574>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.646683, 40.343136, 28.016710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225234, 0.723428, -0.652627,
		-0.972481, 0.207887, -0.105183,
		0.059580, 0.658358, 0.750343,
		44.664558, 40.540642, 28.241814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.336597, 40.666649, 27.500589>,  <44.622852, 40.079792, 27.716574>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.336597, 40.666649, 27.500589> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.550522, 40.799477, 27.811384>,  <44.678875, 40.879173, 27.997862>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.550522, 40.799477, 27.811384>,  <44.336597, 40.666649, 27.500589>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.550522, 40.799477, 27.811384> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232031, 0.826476, -0.512932,
		-0.812491, 0.454605, 0.364954,
		0.534807, 0.332072, 0.776987,
		44.710964, 40.899097, 28.044481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.117615, 41.436466, 27.566486>,  <44.336597, 40.666649, 27.500589>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.117615, 41.436466, 27.566486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475571, 41.385433, 27.737553>,  <44.690346, 41.354813, 27.840193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.475571, 41.385433, 27.737553>,  <44.117615, 41.436466, 27.566486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.475571, 41.385433, 27.737553> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304033, 0.875786, -0.374916,
		-0.326709, 0.465532, 0.822521,
		0.894888, -0.127586, 0.427664,
		44.744038, 41.347157, 27.865852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.398605, 42.140301, 27.730555>,  <44.117615, 41.436466, 27.566486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.398605, 42.140301, 27.730555> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.730484, 41.925430, 27.791277>,  <44.929611, 41.796509, 27.827711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.730484, 41.925430, 27.791277>,  <44.398605, 42.140301, 27.730555>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730484, 41.925430, 27.791277> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530631, 0.674554, -0.513232,
		0.173292, 0.506382, 0.844717,
		0.829699, -0.537172, 0.151807,
		44.979393, 41.764278, 27.836819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.878712, 42.545982, 28.048220>,  <44.398605, 42.140301, 27.730555>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.878712, 42.545982, 28.048220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.085495, 42.254471, 27.868605>,  <45.209564, 42.079563, 27.760836>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.085495, 42.254471, 27.868605>,  <44.878712, 42.545982, 28.048220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.085495, 42.254471, 27.868605> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595198, 0.683035, -0.423322,
		0.615217, -0.048426, 0.786869,
		0.516960, -0.728778, -0.449038,
		45.240582, 42.035839, 27.733892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.549690, 42.646713, 28.193874>,  <44.878712, 42.545982, 28.048220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.549690, 42.646713, 28.193874> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.555294, 42.445690, 27.848103>,  <45.558655, 42.325077, 27.640640>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.555294, 42.445690, 27.848103>,  <45.549690, 42.646713, 28.193874>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.555294, 42.445690, 27.848103> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582909, 0.706519, -0.401308,
		0.812416, -0.498262, 0.302844,
		0.014008, -0.502559, -0.864429,
		45.559498, 42.294922, 27.588774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.245407, 42.715294, 27.899622>,  <45.549690, 42.646713, 28.193874>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.245407, 42.715294, 27.899622> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.034431, 42.587608, 27.584684>,  <45.907845, 42.510998, 27.395721>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.034431, 42.587608, 27.584684>,  <46.245407, 42.715294, 27.899622>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.034431, 42.587608, 27.584684> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516091, 0.615771, -0.595379,
		0.674877, -0.720367, -0.160039,
		-0.527439, -0.319212, -0.787345,
		45.876198, 42.491844, 27.348480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.723724, 42.781006, 27.421003>,  <46.245407, 42.715294, 27.899622>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.723724, 42.781006, 27.421003> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.387619, 42.729240, 27.210400>,  <46.185955, 42.698181, 27.084038>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.387619, 42.729240, 27.210400>,  <46.723724, 42.781006, 27.421003>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.387619, 42.729240, 27.210400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328736, 0.650631, -0.684553,
		0.431155, -0.748286, -0.504156,
		-0.840260, -0.129414, -0.526511,
		46.135540, 42.690414, 27.052446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.956722, 42.684917, 26.706268>,  <46.723724, 42.781006, 27.421003>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.956722, 42.684917, 26.706268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.576744, 42.798615, 26.654402>,  <46.348759, 42.866833, 26.623281>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.576744, 42.798615, 26.654402>,  <46.956722, 42.684917, 26.706268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.576744, 42.798615, 26.654402> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274628, 0.561845, -0.780326,
		-0.148945, -0.776877, -0.611782,
		-0.949945, 0.284239, -0.129668,
		46.291759, 42.883884, 26.615501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.788067, 42.720409, 25.993526>,  <46.956722, 42.684917, 26.706268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.788067, 42.720409, 25.993526> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.495461, 42.953232, 26.135565>,  <46.319897, 43.092926, 26.220789>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.495461, 42.953232, 26.135565>,  <46.788067, 42.720409, 25.993526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.495461, 42.953232, 26.135565> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277942, 0.730130, -0.624227,
		-0.622605, -0.357933, -0.695878,
		-0.731513, 0.582061, 0.355098,
		46.276005, 43.127850, 26.242094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.394566, 42.886589, 25.469891>,  <46.788067, 42.720409, 25.993526>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.394566, 42.886589, 25.469891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.353432, 43.161324, 25.757692>,  <46.328751, 43.326164, 25.930372>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.353432, 43.161324, 25.757692>,  <46.394566, 42.886589, 25.469891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.353432, 43.161324, 25.757692> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265428, 0.716058, -0.645607,
		-0.958630, 0.124583, -0.255943,
		-0.102839, 0.686833, 0.719503,
		46.322578, 43.367374, 25.973543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.038563, 43.346092, 25.271635>,  <46.394566, 42.886589, 25.469891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.038563, 43.346092, 25.271635> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.223328, 43.548420, 25.563055>,  <46.334187, 43.669815, 25.737907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.223328, 43.548420, 25.563055>,  <46.038563, 43.346092, 25.271635>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.223328, 43.548420, 25.563055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282693, 0.694625, -0.661499,
		-0.840668, 0.511509, 0.177864,
		0.461911, 0.505820, 0.728549,
		46.361900, 43.700165, 25.781620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.884426, 44.081432, 25.357527>,  <46.038563, 43.346092, 25.271635>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.884426, 44.081432, 25.357527> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.253788, 44.040871, 25.505602>,  <46.475407, 44.016533, 25.594448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.253788, 44.040871, 25.505602>,  <45.884426, 44.081432, 25.357527>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.253788, 44.040871, 25.505602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314442, 0.752955, -0.578087,
		-0.220113, 0.650211, 0.727170,
		0.923405, -0.101409, 0.370189,
		46.530811, 44.010448, 25.616659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.292641, 44.409821, 25.260401>,  <45.884426, 44.081432, 25.357527>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.292641, 44.409821, 25.260401> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.058922, 44.397270, 24.936029>,  <44.918690, 44.389740, 24.741405>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.058922, 44.397270, 24.936029>,  <45.292641, 44.409821, 25.260401>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.058922, 44.397270, 24.936029> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561882, -0.705366, 0.432143,
		-0.585560, 0.708149, 0.394518,
		-0.584301, -0.031373, -0.810930,
		44.883633, 44.387859, 24.692751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.649040, 44.502708, 25.563633>,  <45.292641, 44.409821, 25.260401>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.649040, 44.502708, 25.563633> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.571884, 44.329933, 25.211220>,  <44.525589, 44.226269, 24.999773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.571884, 44.329933, 25.211220>,  <44.649040, 44.502708, 25.563633>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.571884, 44.329933, 25.211220> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568535, -0.682612, 0.459139,
		-0.799725, 0.589463, -0.113903,
		-0.192894, -0.431943, -0.881032,
		44.514015, 44.200352, 24.946911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.839779, 44.470295, 25.428614>,  <44.649040, 44.502708, 25.563633>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.839779, 44.470295, 25.428614> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032974, 44.185005, 25.225426>,  <44.148891, 44.013832, 25.103512>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.032974, 44.185005, 25.225426>,  <43.839779, 44.470295, 25.428614>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.032974, 44.185005, 25.225426> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674843, -0.672851, 0.303081,
		-0.557954, 0.196417, -0.806293,
		0.482984, -0.713227, -0.507970,
		44.177868, 43.971039, 25.073034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.361797, 44.125320, 25.046179>,  <43.839779, 44.470295, 25.428614>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.361797, 44.125320, 25.046179> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.658451, 43.862999, 25.102608>,  <43.836445, 43.705608, 25.136465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.658451, 43.862999, 25.102608>,  <43.361797, 44.125320, 25.046179>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.658451, 43.862999, 25.102608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655657, -0.664243, 0.359018,
		-0.141738, -0.358756, -0.922607,
		0.741636, -0.655801, 0.141072,
		43.880943, 43.666260, 25.144930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.049423, 43.600681, 24.865402>,  <43.361797, 44.125320, 25.046179>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.049423, 43.600681, 24.865402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.367001, 43.457104, 25.061695>,  <43.557549, 43.370956, 25.179470>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.367001, 43.457104, 25.061695>,  <43.049423, 43.600681, 24.865402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.367001, 43.457104, 25.061695> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558684, -0.749114, 0.355951,
		0.239850, -0.556769, -0.795287,
		0.793942, -0.358939, 0.490732,
		43.605183, 43.349422, 25.208916>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.847118, 42.922047, 24.736631>,  <43.049423, 43.600681, 24.865402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.847118, 42.922047, 24.736631> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106602, 42.949638, 25.039791>,  <43.262291, 42.966194, 25.221687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.106602, 42.949638, 25.039791>,  <42.847118, 42.922047, 24.736631>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.106602, 42.949638, 25.039791> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369889, -0.841761, 0.393218,
		0.665097, -0.535425, -0.520544,
		0.648713, 0.068984, 0.757901,
		43.301216, 42.970333, 25.267160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.216461, 42.385036, 24.764627>,  <42.847118, 42.922047, 24.736631>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.216461, 42.385036, 24.764627> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.217499, 42.534561, 25.135628>,  <43.218121, 42.624275, 25.358229>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.217499, 42.534561, 25.135628>,  <43.216461, 42.385036, 24.764627>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.217499, 42.534561, 25.135628> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300822, -0.884251, 0.357221,
		0.953677, -0.279940, 0.110156,
		0.002595, 0.373811, 0.927501,
		43.218277, 42.646706, 25.413877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.464405, 41.894379, 25.141506>,  <43.216461, 42.385036, 24.764627>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.464405, 41.894379, 25.141506> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301159, 42.106728, 25.438589>,  <43.203209, 42.234138, 25.616838>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.301159, 42.106728, 25.438589>,  <43.464405, 41.894379, 25.141506>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301159, 42.106728, 25.438589> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235462, -0.847229, 0.476194,
		0.882042, 0.019463, 0.470769,
		-0.408117, 0.530872, 0.742709,
		43.178722, 42.265987, 25.661402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.800148, 41.616482, 25.769878>,  <43.464405, 41.894379, 25.141506>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.800148, 41.616482, 25.769878> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463219, 41.812630, 25.859348>,  <43.261063, 41.930317, 25.913031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.463219, 41.812630, 25.859348>,  <43.800148, 41.616482, 25.769878>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.463219, 41.812630, 25.859348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296738, -0.768376, 0.567050,
		0.449929, 0.411267, 0.792732,
		-0.842324, 0.490366, 0.223676,
		43.210522, 41.959740, 25.926451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.801216, 41.684788, 26.446968>,  <43.800148, 41.616482, 25.769878>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.801216, 41.684788, 26.446968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.409241, 41.717682, 26.374355>,  <43.174053, 41.737419, 26.330788>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.409241, 41.717682, 26.374355>,  <43.801216, 41.684788, 26.446968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.409241, 41.717682, 26.374355> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189091, -0.671355, 0.716608,
		-0.062943, 0.736559, 0.673438,
		-0.979940, 0.082236, -0.181534,
		43.115257, 41.742352, 26.319895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.407295, 41.842442, 27.037432>,  <43.801216, 41.684788, 26.446968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.407295, 41.842442, 27.037432> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.126160, 41.682777, 26.801912>,  <42.957478, 41.586979, 26.660601>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.126160, 41.682777, 26.801912>,  <43.407295, 41.842442, 27.037432>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126160, 41.682777, 26.801912> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158703, -0.718871, 0.676785,
		-0.693417, 0.569116, 0.441904,
		-0.702841, -0.399162, -0.588798,
		42.915306, 41.563030, 26.625273>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.931824, 41.607384, 27.506252>,  <43.407295, 41.842442, 27.037432>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.931824, 41.607384, 27.506252> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.830009, 41.400043, 27.179689>,  <42.768921, 41.275639, 26.983751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.830009, 41.400043, 27.179689>,  <42.931824, 41.607384, 27.506252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830009, 41.400043, 27.179689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321224, -0.750963, 0.576948,
		-0.912154, 0.409105, 0.024642,
		-0.254538, -0.518350, -0.816409,
		42.753647, 41.244537, 26.934767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.319336, 41.340176, 27.653208>,  <42.931824, 41.607384, 27.506252>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.319336, 41.340176, 27.653208> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.459511, 41.122963, 27.347973>,  <42.543617, 40.992634, 27.164831>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.459511, 41.122963, 27.347973>,  <42.319336, 41.340176, 27.653208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459511, 41.122963, 27.347973> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347374, -0.832006, 0.432548,
		-0.869782, 0.113494, -0.480206,
		0.350443, -0.543034, -0.763088,
		42.564644, 40.960052, 27.119045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.756332, 40.905426, 27.465834>,  <42.319336, 41.340176, 27.653208>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.756332, 40.905426, 27.465834> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.086029, 40.729610, 27.323044>,  <42.283848, 40.624123, 27.237370>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.086029, 40.729610, 27.323044>,  <41.756332, 40.905426, 27.465834>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.086029, 40.729610, 27.323044> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382632, -0.897064, 0.221061,
		-0.417394, -0.045618, -0.907580,
		0.824242, -0.439539, -0.356974,
		42.333302, 40.597748, 27.215952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.549049, 40.328617, 27.021915>,  <41.756332, 40.905426, 27.465834>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.549049, 40.328617, 27.021915> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924061, 40.244621, 27.132870>,  <42.149067, 40.194221, 27.199442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.924061, 40.244621, 27.132870>,  <41.549049, 40.328617, 27.021915>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.924061, 40.244621, 27.132870> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266327, -0.946187, 0.183849,
		0.223852, -0.246239, -0.943004,
		0.937529, -0.209993, 0.277386,
		42.205318, 40.181622, 27.216085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.663593, 39.658073, 26.822319>,  <41.549049, 40.328617, 27.021915>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.663593, 39.658073, 26.822319> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.984467, 39.678249, 27.060297>,  <42.176991, 39.690357, 27.203083>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.984467, 39.678249, 27.060297>,  <41.663593, 39.658073, 26.822319>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.984467, 39.678249, 27.060297> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066541, -0.982665, 0.173039,
		0.593359, -0.178397, -0.784920,
		0.802183, 0.050444, 0.594944,
		42.225121, 39.693382, 27.238781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.131802, 39.088531, 26.651487>,  <41.663593, 39.658073, 26.822319>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.131802, 39.088531, 26.651487> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.205585, 39.207005, 27.026348>,  <42.249855, 39.278088, 27.251265>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.205585, 39.207005, 27.026348>,  <42.131802, 39.088531, 26.651487>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205585, 39.207005, 27.026348> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.376194, -0.859623, 0.345725,
		0.907995, -0.416321, -0.047141,
		0.184456, 0.296182, 0.937151,
		42.260921, 39.295860, 27.307493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.430111, 38.437180, 27.040203>,  <42.131802, 39.088531, 26.651487>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.430111, 38.437180, 27.040203> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.310490, 38.687794, 27.328098>,  <42.238716, 38.838161, 27.500835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.310490, 38.687794, 27.328098>,  <42.430111, 38.437180, 27.040203>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.310490, 38.687794, 27.328098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380319, -0.770016, 0.512282,
		0.875172, -0.120530, 0.468559,
		-0.299053, 0.626536, 0.719736,
		42.220776, 38.875755, 27.544020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.543442, 38.092434, 27.559971>,  <42.430111, 38.437180, 27.040203>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.543442, 38.092434, 27.559971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.313202, 38.371746, 27.730186>,  <42.175056, 38.539333, 27.832315>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.313202, 38.371746, 27.730186>,  <42.543442, 38.092434, 27.559971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.313202, 38.371746, 27.730186> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293917, -0.662281, 0.689201,
		0.763084, 0.271632, 0.586447,
		-0.575601, 0.698284, 0.425538,
		42.140522, 38.581230, 27.857847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.688828, 38.130390, 28.238937>,  <42.543442, 38.092434, 27.559971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.688828, 38.130390, 28.238937> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.320801, 38.286953, 28.232203>,  <42.099987, 38.380890, 28.228161>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.320801, 38.286953, 28.232203>,  <42.688828, 38.130390, 28.238937>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320801, 38.286953, 28.232203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319799, -0.725515, 0.609391,
		0.226305, 0.566063, 0.792691,
		-0.920063, 0.391410, -0.016838,
		42.044781, 38.404377, 28.227152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<43.700684, 35.762058, 33.449188> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310635, 35.850643, 33.452957>,  <43.076607, 35.903793, 33.455219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.310635, 35.850643, 33.452957>,  <43.700684, 35.762058, 33.449188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.310635, 35.850643, 33.452957> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085745, -0.416054, 0.905288,
		0.204407, 0.881960, 0.424693,
		-0.975123, 0.221462, 0.009420,
		43.018097, 35.917084, 33.455784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.648449, 35.835026, 34.191898>,  <43.700684, 35.762058, 33.449188>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.648449, 35.835026, 34.191898> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279293, 35.807705, 34.040314>,  <43.057800, 35.791313, 33.949364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.279293, 35.807705, 34.040314>,  <43.648449, 35.835026, 34.191898>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.279293, 35.807705, 34.040314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.303507, -0.476634, 0.825047,
		-0.236981, 0.876444, 0.419149,
		-0.922889, -0.068306, -0.378960,
		43.002426, 35.787212, 33.926624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.188660, 36.040028, 34.698551>,  <43.648449, 35.835026, 34.191898>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.188660, 36.040028, 34.698551> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991585, 35.802914, 34.443718>,  <42.873341, 35.660645, 34.290817>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.991585, 35.802914, 34.443718>,  <43.188660, 36.040028, 34.698551>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.991585, 35.802914, 34.443718> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311634, -0.563358, 0.765188,
		-0.812495, 0.575531, 0.092826,
		-0.492683, -0.592783, -0.637080,
		42.843781, 35.625080, 34.252594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.535622, 36.052502, 34.992302>,  <43.188660, 36.040028, 34.698551>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.535622, 36.052502, 34.992302> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548065, 35.720036, 34.770241>,  <42.555531, 35.520557, 34.637005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.548065, 35.720036, 34.770241>,  <42.535622, 36.052502, 34.992302>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.548065, 35.720036, 34.770241> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609678, -0.455910, 0.648412,
		-0.792039, 0.318297, -0.520924,
		0.031107, -0.831163, -0.555157,
		42.557396, 35.470688, 34.603695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.842289, 35.858227, 34.933468>,  <42.535622, 36.052502, 34.992302>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.842289, 35.858227, 34.933468> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032051, 35.514210, 34.858349>,  <42.145908, 35.307800, 34.813278>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.032051, 35.514210, 34.858349>,  <41.842289, 35.858227, 34.933468>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.032051, 35.514210, 34.858349> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692442, -0.496296, 0.523656,
		-0.543569, -0.118386, -0.830974,
		0.474402, -0.860044, -0.187796,
		42.174370, 35.256195, 34.802010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.274754, 35.361923, 34.631332>,  <41.842289, 35.858227, 34.933468>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.274754, 35.361923, 34.631332> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.582081, 35.137508, 34.754574>,  <41.766479, 35.002861, 34.828518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.582081, 35.137508, 34.754574>,  <41.274754, 35.361923, 34.631332>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.582081, 35.137508, 34.754574> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639815, -0.659717, 0.394222,
		-0.017914, -0.500015, -0.865832,
		0.768320, -0.561034, 0.308099,
		41.812576, 34.969196, 34.847004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.077099, 34.660263, 34.561604>,  <41.274754, 35.361923, 34.631332>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.077099, 34.660263, 34.561604> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397636, 34.662849, 34.800869>,  <41.589958, 34.664402, 34.944427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.397636, 34.662849, 34.800869>,  <41.077099, 34.660263, 34.561604>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.397636, 34.662849, 34.800869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361001, -0.792102, 0.492192,
		0.476989, -0.610355, -0.632415,
		0.801348, 0.006468, 0.598163,
		41.638042, 34.664791, 34.980316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.237926, 33.946747, 34.611973>,  <41.077099, 34.660263, 34.561604>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.237926, 33.946747, 34.611973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400181, 34.114933, 34.936607>,  <41.497532, 34.215847, 35.131386>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.400181, 34.114933, 34.936607>,  <41.237926, 33.946747, 34.611973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.400181, 34.114933, 34.936607> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321963, -0.765277, 0.557396,
		0.855454, -0.487398, -0.175047,
		0.405633, 0.420468, 0.811584,
		41.521870, 34.241074, 35.180084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.667446, 33.419022, 34.946365>,  <41.237926, 33.946747, 34.611973>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.667446, 33.419022, 34.946365> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.584267, 33.680290, 35.237606>,  <41.534359, 33.837051, 35.412350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.584267, 33.680290, 35.237606>,  <41.667446, 33.419022, 34.946365>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.584267, 33.680290, 35.237606> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187306, -0.757186, 0.625769,
		0.960039, -0.006252, 0.279796,
		-0.207945, 0.653170, 0.728099,
		41.521885, 33.876240, 35.456036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.909454, 33.059376, 35.541325>,  <41.667446, 33.419022, 34.946365>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.909454, 33.059376, 35.541325> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694176, 33.356892, 35.699879>,  <41.565010, 33.535400, 35.795013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.694176, 33.356892, 35.699879>,  <41.909454, 33.059376, 35.541325>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.694176, 33.356892, 35.699879> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.363157, -0.629063, 0.687311,
		0.760570, 0.225954, 0.608670,
		-0.538192, 0.743791, 0.396389,
		41.532719, 33.580029, 35.818794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.881042, 32.866394, 36.263103>,  <41.909454, 33.059376, 35.541325>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.881042, 32.866394, 36.263103> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572384, 33.115639, 36.212036>,  <41.387188, 33.265186, 36.181396>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.572384, 33.115639, 36.212036>,  <41.881042, 32.866394, 36.263103>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.572384, 33.115639, 36.212036> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617338, -0.685357, 0.386238,
		0.153173, 0.376851, 0.913521,
		-0.771642, 0.623112, -0.127667,
		41.340893, 33.302574, 36.173737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.580208, 32.896057, 36.888145>,  <41.881042, 32.866394, 36.263103>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.580208, 32.896057, 36.888145> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304302, 32.996426, 36.616478>,  <41.138760, 33.056648, 36.453480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.304302, 32.996426, 36.616478>,  <41.580208, 32.896057, 36.888145>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.304302, 32.996426, 36.616478> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669156, -0.579162, 0.465621,
		-0.276510, 0.775634, 0.567392,
		-0.689763, 0.250924, -0.679164,
		41.097374, 33.071705, 36.412727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.955261, 33.095585, 37.258381>,  <41.580208, 32.896057, 36.888145>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.955261, 33.095585, 37.258381> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844601, 32.977592, 36.892551>,  <40.778206, 32.906796, 36.673054>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.844601, 32.977592, 36.892551>,  <40.955261, 33.095585, 37.258381>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.844601, 32.977592, 36.892551> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.742032, -0.539167, 0.398356,
		-0.610618, 0.788850, -0.069728,
		-0.276648, -0.294983, -0.914577,
		40.761608, 32.889099, 36.618179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.135345, 33.102810, 37.278065>,  <40.955261, 33.095585, 37.258381>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.135345, 33.102810, 37.278065> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.326355, 32.833488, 37.052273>,  <40.440960, 32.671898, 36.916798>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.326355, 32.833488, 37.052273>,  <40.135345, 33.102810, 37.278065>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.326355, 32.833488, 37.052273> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649389, -0.703220, 0.289439,
		-0.591835, 0.228356, -0.773036,
		0.477519, -0.673301, -0.564483,
		40.469612, 32.631496, 36.882927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.344730, 33.681187, 36.893318>,  <40.135345, 33.102810, 37.278065>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.344730, 33.681187, 36.893318> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.106533, 33.803944, 37.190289>,  <39.963615, 33.877598, 37.368473>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.106533, 33.803944, 37.190289>,  <40.344730, 33.681187, 36.893318>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.106533, 33.803944, 37.190289> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028898, 0.915377, -0.401559,
		-0.802837, -0.260583, -0.536236,
		-0.595498, 0.306890, 0.742429,
		39.927883, 33.896011, 37.413017>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.794399, 34.001747, 36.591576>,  <40.344730, 33.681187, 36.893318>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.794399, 34.001747, 36.591576> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794746, 34.157467, 36.960018>,  <39.794952, 34.250900, 37.181084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.794746, 34.157467, 36.960018>,  <39.794399, 34.001747, 36.591576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.794746, 34.157467, 36.960018> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018018, 0.920954, -0.389255,
		-0.999837, 0.016934, -0.006217,
		0.000866, 0.389303, 0.921109,
		39.795006, 34.274258, 37.236351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.454700, 34.596104, 36.488144>,  <39.794399, 34.001747, 36.591576>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.454700, 34.596104, 36.488144> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608234, 34.680717, 36.847683>,  <39.700356, 34.731483, 37.063404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.608234, 34.680717, 36.847683>,  <39.454700, 34.596104, 36.488144>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.608234, 34.680717, 36.847683> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068057, 0.977241, -0.200917,
		-0.920889, 0.015946, 0.389498,
		0.383838, 0.211530, 0.898846,
		39.723385, 34.744175, 37.117336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.974209, 35.288456, 36.706501>,  <39.454700, 34.596104, 36.488144>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.974209, 35.288456, 36.706501> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301605, 35.256500, 36.934078>,  <39.498043, 35.237328, 37.070625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.301605, 35.256500, 36.934078>,  <38.974209, 35.288456, 36.706501>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.301605, 35.256500, 36.934078> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.140872, 0.987961, -0.063940,
		-0.556985, 0.132482, 0.819888,
		0.818488, -0.079886, 0.568942,
		39.547153, 35.232536, 37.104759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.925800, 35.884098, 37.065639>,  <38.974209, 35.288456, 36.706501>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.925800, 35.884098, 37.065639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307850, 35.765629, 37.067692>,  <39.537079, 35.694546, 37.068924>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.307850, 35.765629, 37.067692>,  <38.925800, 35.884098, 37.065639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.307850, 35.765629, 37.067692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285568, 0.916032, -0.281667,
		0.078720, 0.270492, 0.959499,
		0.955120, -0.296175, 0.005133,
		39.594387, 35.676777, 37.069233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.315948, 36.435440, 37.405640>,  <38.925800, 35.884098, 37.065639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.315948, 36.435440, 37.405640> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562309, 36.232983, 37.164154>,  <39.710125, 36.111507, 37.019260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.562309, 36.232983, 37.164154>,  <39.315948, 36.435440, 37.405640>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.562309, 36.232983, 37.164154> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381451, 0.862090, -0.333610,
		0.689315, -0.024816, 0.724037,
		0.615906, -0.506147, -0.603717,
		39.747082, 36.081139, 36.983040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.012779, 36.502876, 37.609634>,  <39.315948, 36.435440, 37.405640>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.012779, 36.502876, 37.609634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038185, 36.414795, 37.220280>,  <40.053429, 36.361946, 36.986668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.038185, 36.414795, 37.220280>,  <40.012779, 36.502876, 37.609634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.038185, 36.414795, 37.220280> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554856, 0.818502, -0.148960,
		0.829518, -0.530628, 0.174166,
		0.063513, -0.220203, -0.973384,
		40.057240, 36.348736, 36.928265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814289, 36.551712, 37.392170>,  <40.012779, 36.502876, 37.609634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814289, 36.551712, 37.392170> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.599728, 36.564640, 37.054832>,  <40.470993, 36.572395, 36.852428>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.599728, 36.564640, 37.054832>,  <40.814289, 36.551712, 37.392170>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599728, 36.564640, 37.054832> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605151, 0.711254, -0.357645,
		0.588274, -0.702191, -0.401074,
		-0.536401, 0.032318, -0.843344,
		40.438808, 36.574337, 36.801830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.312069, 36.745979, 36.866615>,  <40.814289, 36.551712, 37.392170>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.312069, 36.745979, 36.866615> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957069, 36.844170, 36.710621>,  <40.744068, 36.903084, 36.617023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.957069, 36.844170, 36.710621>,  <41.312069, 36.745979, 36.866615>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.957069, 36.844170, 36.710621> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396687, 0.837637, -0.375505,
		0.234492, -0.487963, -0.840777,
		-0.887498, 0.245473, -0.389988,
		40.690819, 36.917812, 36.593624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.467888, 37.231464, 36.425266>,  <41.312069, 36.745979, 36.866615>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.467888, 37.231464, 36.425266> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070778, 37.272881, 36.449547>,  <40.832512, 37.297729, 36.464115>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.070778, 37.272881, 36.449547>,  <41.467888, 37.231464, 36.425266>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.070778, 37.272881, 36.449547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068720, 0.905039, -0.419740,
		-0.098399, -0.412534, -0.905612,
		-0.992772, 0.103536, 0.060705,
		40.772945, 37.303940, 36.467758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.248363, 37.326588, 35.720108>,  <41.467888, 37.231464, 36.425266>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.248363, 37.326588, 35.720108> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.934189, 37.486061, 35.909481>,  <40.745686, 37.581745, 36.023106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.934189, 37.486061, 35.909481>,  <41.248363, 37.326588, 35.720108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.934189, 37.486061, 35.909481> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.006999, 0.770583, -0.637301,
		-0.618904, -0.497245, -0.608033,
		-0.785435, 0.398684, 0.473437,
		40.698559, 37.605667, 36.051514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.704113, 37.446976, 35.366013>,  <41.248363, 37.326588, 35.720108>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.704113, 37.446976, 35.366013> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.650143, 37.736183, 35.637020>,  <40.617760, 37.909710, 35.799625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.650143, 37.736183, 35.637020>,  <40.704113, 37.446976, 35.366013>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.650143, 37.736183, 35.637020> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078546, 0.689428, -0.720083,
		-0.987738, -0.043942, -0.149812,
		-0.134926, 0.723020, 0.677522,
		40.609665, 37.953091, 35.840279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229328, 37.798534, 35.086197>,  <40.704113, 37.446976, 35.366013>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229328, 37.798534, 35.086197> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387638, 38.054661, 35.349518>,  <40.482624, 38.208336, 35.507511>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.387638, 38.054661, 35.349518>,  <40.229328, 37.798534, 35.086197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.387638, 38.054661, 35.349518> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101856, 0.681801, -0.724412,
		-0.912682, 0.353755, 0.204619,
		0.395774, 0.640316, 0.658300,
		40.506371, 38.246758, 35.547009>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877823, 38.404114, 35.061443>,  <40.229328, 37.798534, 35.086197>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877823, 38.404114, 35.061443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252689, 38.464920, 35.187057>,  <40.477608, 38.501404, 35.262424>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.252689, 38.464920, 35.187057>,  <39.877823, 38.404114, 35.061443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.252689, 38.464920, 35.187057> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073905, 0.793160, -0.604512,
		-0.340977, 0.589735, 0.732085,
		0.937162, 0.152020, 0.314034,
		40.533836, 38.510525, 35.281269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.891438, 39.030361, 35.484261>,  <39.877823, 38.404114, 35.061443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.891438, 39.030361, 35.484261> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546616, 39.215736, 35.566330>,  <39.339722, 39.326962, 35.615570>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.546616, 39.215736, 35.566330>,  <39.891438, 39.030361, 35.484261>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.546616, 39.215736, 35.566330> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387686, -0.863710, 0.322033,
		0.326449, 0.198067, 0.924230,
		-0.862050, 0.463438, 0.205169,
		39.288002, 39.354767, 35.627880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.707146, 38.983070, 36.256897>,  <39.891438, 39.030361, 35.484261>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.707146, 38.983070, 36.256897> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391525, 39.050102, 36.020489>,  <39.202152, 39.090321, 35.878643>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.391525, 39.050102, 36.020489>,  <39.707146, 38.983070, 36.256897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.391525, 39.050102, 36.020489> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512863, -0.709308, 0.483585,
		-0.338179, 0.684689, 0.645628,
		-0.789054, 0.167580, -0.591025,
		39.154808, 39.100376, 35.843182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.137589, 38.973438, 36.758877>,  <39.707146, 38.983070, 36.256897>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.137589, 38.973438, 36.758877> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985664, 38.926353, 36.391857>,  <38.894512, 38.898102, 36.171646>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.985664, 38.926353, 36.391857>,  <39.137589, 38.973438, 36.758877>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985664, 38.926353, 36.391857> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633837, -0.689337, 0.350807,
		-0.673794, 0.714813, 0.187201,
		-0.379806, -0.117717, -0.917546,
		38.871723, 38.891037, 36.116592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373642, 39.056637, 36.713776>,  <39.137589, 38.973438, 36.758877>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373642, 39.056637, 36.713776> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473515, 38.826946, 36.401897>,  <38.533440, 38.689133, 36.214771>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.473515, 38.826946, 36.401897>,  <38.373642, 39.056637, 36.713776>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.473515, 38.826946, 36.401897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801790, -0.574076, 0.166038,
		-0.542947, 0.583692, -0.603748,
		0.249682, -0.574229, -0.779691,
		38.548420, 38.654678, 36.167992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.718300, 38.873253, 36.474094>,  <38.373642, 39.056637, 36.713776>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.718300, 38.873253, 36.474094> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953159, 38.603104, 36.295597>,  <38.094074, 38.441013, 36.188499>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.953159, 38.603104, 36.295597>,  <37.718300, 38.873253, 36.474094>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.953159, 38.603104, 36.295597> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659989, -0.718593, 0.219177,
		-0.468696, 0.165829, -0.867655,
		0.587145, -0.675370, -0.446247,
		38.129303, 38.400494, 36.161724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272739, 38.644764, 35.995152>,  <37.718300, 38.873253, 36.474094>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272739, 38.644764, 35.995152> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.555912, 38.369816, 36.060093>,  <37.725815, 38.204845, 36.099060>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.555912, 38.369816, 36.060093>,  <37.272739, 38.644764, 35.995152>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.555912, 38.369816, 36.060093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.692064, -0.720994, -0.034856,
		0.141016, -0.087685, -0.986117,
		0.707928, -0.687371, 0.162355,
		37.768291, 38.163605, 36.108799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.011822, 38.132236, 35.682888>,  <37.272739, 38.644764, 35.995152>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.011822, 38.132236, 35.682888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275440, 37.961750, 35.930759>,  <37.433609, 37.859459, 36.079483>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.275440, 37.961750, 35.930759>,  <37.011822, 38.132236, 35.682888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.275440, 37.961750, 35.930759> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589004, -0.804840, 0.072850,
		0.467692, -0.413005, -0.781467,
		0.659043, -0.426216, 0.619679,
		37.473152, 37.833885, 36.116665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.119125, 37.495037, 35.425587>,  <37.011822, 38.132236, 35.682888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.119125, 37.495037, 35.425587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230988, 37.474419, 35.809074>,  <37.298103, 37.462048, 36.039165>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.230988, 37.474419, 35.809074>,  <37.119125, 37.495037, 35.425587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.230988, 37.474419, 35.809074> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479822, -0.872417, 0.093057,
		0.831604, -0.486037, -0.268707,
		0.279653, -0.051545, 0.958716,
		37.314884, 37.458954, 36.096691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108238, 36.781540, 35.523785>,  <37.119125, 37.495037, 35.425587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108238, 36.781540, 35.523785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123295, 36.922047, 35.897991>,  <37.132328, 37.006351, 36.122517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.123295, 36.922047, 35.897991>,  <37.108238, 36.781540, 35.523785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.123295, 36.922047, 35.897991> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.544538, -0.777766, 0.313941,
		0.837891, -0.521242, 0.162002,
		0.037640, 0.351265, 0.935519,
		37.134586, 37.027428, 36.178646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.111320, 36.167004, 35.941284>,  <37.108238, 36.781540, 35.523785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.111320, 36.167004, 35.941284> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009586, 36.448025, 36.207138>,  <36.948544, 36.616638, 36.366650>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.009586, 36.448025, 36.207138>,  <37.111320, 36.167004, 35.941284>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009586, 36.448025, 36.207138> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727069, -0.592062, 0.347612,
		0.637718, -0.394822, 0.661386,
		-0.254337, 0.702551, 0.664631,
		36.933285, 36.658791, 36.406528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.238285, 35.907551, 36.500378>,  <37.111320, 36.167004, 35.941284>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.238285, 35.907551, 36.500378> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.950523, 36.179157, 36.558884>,  <36.777866, 36.342121, 36.593987>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.950523, 36.179157, 36.558884>,  <37.238285, 35.907551, 36.500378>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.950523, 36.179157, 36.558884> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647767, -0.731872, 0.211571,
		0.250706, 0.057460, 0.966356,
		-0.719406, 0.679016, 0.146264,
		36.734703, 36.382862, 36.602764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.950260, 35.721844, 37.106754>,  <37.238285, 35.907551, 36.500378>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.950260, 35.721844, 37.106754> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687775, 35.948544, 36.907486>,  <36.530285, 36.084564, 36.787926>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.687775, 35.948544, 36.907486>,  <36.950260, 35.721844, 37.106754>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.687775, 35.948544, 36.907486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.687579, -0.721074, 0.085365,
		-0.310837, 0.398550, 0.862866,
		-0.656212, 0.566754, -0.498172,
		36.490910, 36.118568, 36.758034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.013340, 42.434074, 34.267628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689495, 42.478260, 34.037033>,  <40.495190, 42.504772, 33.898678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.689495, 42.478260, 34.037033>,  <41.013340, 42.434074, 34.267628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.689495, 42.478260, 34.037033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584404, -0.243451, 0.774082,
		-0.054837, 0.963602, 0.261655,
		-0.809608, 0.110464, -0.576483,
		40.446613, 42.511398, 33.864090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.480289, 42.615643, 34.745449>,  <41.013340, 42.434074, 34.267628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.480289, 42.615643, 34.745449> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277668, 42.464928, 34.435242>,  <40.156094, 42.374500, 34.249115>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.277668, 42.464928, 34.435242>,  <40.480289, 42.615643, 34.745449>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.277668, 42.464928, 34.435242> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614284, -0.473455, 0.631265,
		-0.605025, 0.796162, 0.008381,
		-0.506557, -0.376783, -0.775522,
		40.125702, 42.351894, 34.202583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.799496, 42.504066, 34.993214>,  <40.480289, 42.615643, 34.745449>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.799496, 42.504066, 34.993214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780617, 42.272015, 34.667953>,  <39.769287, 42.132782, 34.472797>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.780617, 42.272015, 34.667953>,  <39.799496, 42.504066, 34.993214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.780617, 42.272015, 34.667953> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649894, -0.600365, 0.466047,
		-0.758558, 0.550461, -0.348687,
		-0.047201, -0.580134, -0.813153,
		39.766457, 42.097973, 34.424007>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.070621, 42.290024, 34.869324>,  <39.799496, 42.504066, 34.993214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.070621, 42.290024, 34.869324> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295776, 42.023540, 34.673641>,  <39.430870, 41.863651, 34.556232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.295776, 42.023540, 34.673641>,  <39.070621, 42.290024, 34.869324>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.295776, 42.023540, 34.673641> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509842, -0.745719, 0.428910,
		-0.650555, 0.007990, -0.759417,
		0.562885, -0.666212, -0.489205,
		39.464642, 41.823677, 34.526878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635017, 41.740993, 34.675690>,  <39.070621, 42.290024, 34.869324>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635017, 41.740993, 34.675690> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984402, 41.551163, 34.632149>,  <39.194031, 41.437263, 34.606026>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.984402, 41.551163, 34.632149>,  <38.635017, 41.740993, 34.675690>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.984402, 41.551163, 34.632149> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416659, -0.844209, 0.337203,
		-0.251918, -0.249181, -0.935118,
		0.873460, -0.474573, -0.108848,
		39.246441, 41.408791, 34.599495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.484695, 41.040836, 34.455002>,  <38.635017, 41.740993, 34.675690>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.484695, 41.040836, 34.455002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860321, 41.032219, 34.592232>,  <39.085697, 41.027050, 34.674568>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860321, 41.032219, 34.592232>,  <38.484695, 41.040836, 34.455002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860321, 41.032219, 34.592232> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121353, -0.954549, 0.272230,
		0.321617, -0.297274, -0.898994,
		0.939061, -0.021542, 0.343074,
		39.142040, 41.025757, 34.695152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732887, 40.470470, 34.170082>,  <38.484695, 41.040836, 34.455002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732887, 40.470470, 34.170082> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930225, 40.534618, 34.512051>,  <39.048626, 40.573105, 34.717232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930225, 40.534618, 34.512051>,  <38.732887, 40.470470, 34.170082>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.930225, 40.534618, 34.512051> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214625, -0.930027, 0.298305,
		0.842941, -0.330655, -0.424403,
		0.493342, 0.160366, 0.854925,
		39.078228, 40.582729, 34.768528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160740, 39.860241, 34.211472>,  <38.732887, 40.470470, 34.170082>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160740, 39.860241, 34.211472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150406, 39.999218, 34.586411>,  <39.144207, 40.082603, 34.811375>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150406, 39.999218, 34.586411>,  <39.160740, 39.860241, 34.211472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150406, 39.999218, 34.586411> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165159, -0.926256, 0.338781,
		0.985929, -0.146059, 0.081311,
		-0.025833, 0.347443, 0.937345,
		39.142654, 40.103451, 34.867615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734138, 39.603493, 34.636215>,  <39.160740, 39.860241, 34.211472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734138, 39.603493, 34.636215> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424423, 39.687115, 34.875137>,  <39.238594, 39.737286, 35.018490>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.424423, 39.687115, 34.875137>,  <39.734138, 39.603493, 34.636215>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.424423, 39.687115, 34.875137> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074771, -0.967471, 0.241682,
		0.628399, 0.142471, 0.764733,
		-0.774289, 0.209052, 0.597305,
		39.192135, 39.749832, 35.054329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243061, 39.718586, 35.118507>,  <39.734138, 39.603493, 34.636215>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243061, 39.718586, 35.118507> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539135, 39.459309, 35.190033>,  <40.716778, 39.303741, 35.232948>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.539135, 39.459309, 35.190033>,  <40.243061, 39.718586, 35.118507>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539135, 39.459309, 35.190033> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571474, 0.466294, -0.675268,
		0.354325, 0.602009, 0.715569,
		0.740183, -0.648194, 0.178813,
		40.761189, 39.264851, 35.243675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.863617, 40.117935, 35.372639>,  <40.243061, 39.718586, 35.118507>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.863617, 40.117935, 35.372639> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997578, 39.777580, 35.210732>,  <41.077953, 39.573368, 35.113586>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.997578, 39.777580, 35.210732>,  <40.863617, 40.117935, 35.372639>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.997578, 39.777580, 35.210732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683369, 0.515091, -0.517387,
		0.648727, -0.103328, 0.753974,
		0.334904, -0.850885, -0.404765,
		41.098049, 39.522316, 35.089302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.493755, 40.268585, 35.264908>,  <40.863617, 40.117935, 35.372639>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.493755, 40.268585, 35.264908> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420506, 39.963188, 35.017181>,  <41.376556, 39.779949, 34.868546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.420506, 39.963188, 35.017181>,  <41.493755, 40.268585, 35.264908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.420506, 39.963188, 35.017181> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767278, 0.282852, -0.575569,
		0.614615, -0.580586, 0.534012,
		-0.183121, -0.763489, -0.619316,
		41.365570, 39.734142, 34.831387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.089172, 39.979443, 35.125034>,  <41.493755, 40.268585, 35.264908>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.089172, 39.979443, 35.125034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883778, 39.826797, 34.817604>,  <41.760540, 39.735210, 34.633144>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.883778, 39.826797, 34.817604>,  <42.089172, 39.979443, 35.125034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.883778, 39.826797, 34.817604> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601725, 0.478428, -0.639557,
		0.611770, -0.790873, -0.016040,
		-0.513483, -0.381610, -0.768576,
		41.729733, 39.712315, 34.587032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566162, 39.726452, 34.636200>,  <42.089172, 39.979443, 35.125034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566162, 39.726452, 34.636200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233921, 39.763359, 34.416534>,  <42.034576, 39.785503, 34.284737>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.233921, 39.763359, 34.416534>,  <42.566162, 39.726452, 34.636200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.233921, 39.763359, 34.416534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532417, 0.420574, -0.734609,
		0.163180, -0.902554, -0.398458,
		-0.830605, 0.092272, -0.549164,
		41.984741, 39.791042, 34.251785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.802845, 39.523785, 33.953556>,  <42.566162, 39.726452, 34.636200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.802845, 39.523785, 33.953556> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472980, 39.743504, 33.899578>,  <42.275063, 39.875336, 33.867191>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.472980, 39.743504, 33.899578>,  <42.802845, 39.523785, 33.953556>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.472980, 39.743504, 33.899578> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409062, 0.414406, -0.812980,
		-0.390646, -0.725631, -0.566440,
		-0.824660, 0.549297, -0.134942,
		42.225582, 39.908291, 33.859097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.607243, 39.417999, 33.223114>,  <42.802845, 39.523785, 33.953556>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.607243, 39.417999, 33.223114> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416042, 39.752556, 33.330418>,  <42.301323, 39.953289, 33.394798>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.416042, 39.752556, 33.330418>,  <42.607243, 39.417999, 33.223114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416042, 39.752556, 33.330418> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468479, 0.501107, -0.727612,
		-0.742996, -0.222126, -0.631362,
		-0.478001, 0.836392, 0.268259,
		42.272640, 40.003475, 33.410896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.354042, 39.654499, 32.650841>,  <42.607243, 39.417999, 33.223114>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.354042, 39.654499, 32.650841> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337502, 39.978539, 32.884777>,  <42.327576, 40.172962, 33.025139>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337502, 39.978539, 32.884777>,  <42.354042, 39.654499, 32.650841>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337502, 39.978539, 32.884777> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467997, 0.532863, -0.705008,
		-0.882762, 0.244549, -0.401157,
		-0.041352, 0.810094, 0.584839,
		42.325096, 40.221565, 33.060230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.198277, 40.195362, 32.217121>,  <42.354042, 39.654499, 32.650841>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.198277, 40.195362, 32.217121> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351093, 40.360218, 32.547981>,  <42.442783, 40.459133, 32.746498>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.351093, 40.360218, 32.547981>,  <42.198277, 40.195362, 32.217121>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.351093, 40.360218, 32.547981> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505530, 0.656055, -0.560384,
		-0.773616, 0.632242, 0.042292,
		0.382044, 0.412142, 0.827152,
		42.465706, 40.483860, 32.796127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.149406, 40.832184, 32.132034>,  <42.198277, 40.195362, 32.217121>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.149406, 40.832184, 32.132034> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428692, 40.843395, 32.418171>,  <42.596264, 40.850121, 32.589851>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.428692, 40.843395, 32.418171>,  <42.149406, 40.832184, 32.132034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428692, 40.843395, 32.418171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503441, 0.691183, -0.518471,
		-0.508961, 0.722136, 0.468486,
		0.698216, 0.028027, 0.715338,
		42.638157, 40.851803, 32.632771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.256199, 41.538628, 32.233345>,  <42.149406, 40.832184, 32.132034>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.256199, 41.538628, 32.233345> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576889, 41.349907, 32.380119>,  <42.769302, 41.236675, 32.468185>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.576889, 41.349907, 32.380119>,  <42.256199, 41.538628, 32.233345>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.576889, 41.349907, 32.380119> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596492, 0.592676, -0.541233,
		0.037880, 0.652794, 0.756588,
		0.801724, -0.471801, 0.366936,
		42.817406, 41.208366, 32.490200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.723137, 42.002941, 32.436123>,  <42.256199, 41.538628, 32.233345>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.723137, 42.002941, 32.436123> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962925, 41.682781, 32.436752>,  <43.106796, 41.490685, 32.437130>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.962925, 41.682781, 32.436752>,  <42.723137, 42.002941, 32.436123>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.962925, 41.682781, 32.436752> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.705617, 0.527552, -0.473068,
		0.377812, 0.284700, 0.881025,
		0.599469, -0.800397, 0.001574,
		43.142765, 41.442661, 32.437225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.435745, 42.180859, 32.694405>,  <42.723137, 42.002941, 32.436123>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.435745, 42.180859, 32.694405> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460991, 41.856937, 32.461086>,  <43.476139, 41.662582, 32.321095>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460991, 41.856937, 32.461086>,  <43.435745, 42.180859, 32.694405>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460991, 41.856937, 32.461086> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662289, 0.471205, -0.582529,
		0.746586, -0.349543, 0.566064,
		0.063113, -0.809806, -0.583293,
		43.479923, 41.613995, 32.286098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.203144, 42.038212, 32.632782>,  <43.435745, 42.180859, 32.694405>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.203144, 42.038212, 32.632782> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001270, 41.849651, 32.343487>,  <43.880146, 41.736515, 32.169910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.001270, 41.849651, 32.343487>,  <44.203144, 42.038212, 32.632782>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.001270, 41.849651, 32.343487> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590374, 0.422788, -0.687538,
		0.629885, -0.773969, 0.064931,
		-0.504682, -0.471404, -0.723239,
		43.849865, 41.708229, 32.126514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<38.883545, 39.987888, 27.097563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158169, 40.187534, 27.309040>,  <39.322945, 40.307323, 27.435926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.158169, 40.187534, 27.309040>,  <38.883545, 39.987888, 27.097563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.158169, 40.187534, 27.309040> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.106035, -0.650643, 0.751944,
		0.719301, -0.572314, -0.393781,
		0.686559, 0.499119, 0.528693,
		39.364136, 40.337269, 27.467648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456581, 39.539242, 27.277418>,  <38.883545, 39.987888, 27.097563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456581, 39.539242, 27.277418> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441319, 39.835255, 27.546015>,  <39.432159, 40.012863, 27.707172>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.441319, 39.835255, 27.546015>,  <39.456581, 39.539242, 27.277418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441319, 39.835255, 27.546015> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252237, -0.657353, 0.710115,
		0.966913, -0.142276, 0.211749,
		-0.038161, 0.740030, 0.671491,
		39.429871, 40.057262, 27.747461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.788296, 39.283985, 27.743092>,  <39.456581, 39.539242, 27.277418>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.788296, 39.283985, 27.743092> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573299, 39.570862, 27.920515>,  <39.444302, 39.742989, 28.026970>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.573299, 39.570862, 27.920515>,  <39.788296, 39.283985, 27.743092>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.573299, 39.570862, 27.920515> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220580, -0.627259, 0.746921,
		0.813909, 0.303623, 0.495344,
		-0.537491, 0.717188, 0.443558,
		39.412052, 39.786018, 28.053583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.066418, 39.314991, 28.354347>,  <39.788296, 39.283985, 27.743092>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.066418, 39.314991, 28.354347> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731602, 39.515984, 28.440947>,  <39.530712, 39.636581, 28.492907>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.731602, 39.515984, 28.440947>,  <40.066418, 39.314991, 28.354347>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.731602, 39.515984, 28.440947> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035964, -0.445365, 0.894627,
		0.545958, 0.741053, 0.390860,
		-0.837041, 0.502485, 0.216499,
		39.480488, 39.666729, 28.505896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.159664, 39.386856, 29.055197>,  <40.066418, 39.314991, 28.354347>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.159664, 39.386856, 29.055197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776703, 39.441074, 28.953215>,  <39.546925, 39.473606, 28.892025>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.776703, 39.441074, 28.953215>,  <40.159664, 39.386856, 29.055197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.776703, 39.441074, 28.953215> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283466, -0.609308, 0.740535,
		-0.054974, 0.781264, 0.621776,
		-0.957405, 0.135542, -0.254958,
		39.489483, 39.481735, 28.876728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.771618, 39.546421, 29.667736>,  <40.159664, 39.386856, 29.055197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.771618, 39.546421, 29.667736> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492157, 39.424583, 29.408783>,  <39.324478, 39.351482, 29.253410>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.492157, 39.424583, 29.408783>,  <39.771618, 39.546421, 29.667736>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.492157, 39.424583, 29.408783> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399481, -0.584589, 0.706167,
		-0.593546, 0.751984, 0.286747,
		-0.698655, -0.304592, -0.647383,
		39.282562, 39.333206, 29.214567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.157436, 39.634346, 30.001795>,  <39.771618, 39.546421, 29.667736>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.157436, 39.634346, 30.001795> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075207, 39.347221, 29.735716>,  <39.025867, 39.174946, 29.576069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.075207, 39.347221, 29.735716>,  <39.157436, 39.634346, 30.001795>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.075207, 39.347221, 29.735716> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460313, -0.528911, 0.712998,
		-0.863626, 0.452775, -0.221684,
		-0.205576, -0.717808, -0.665200,
		39.013535, 39.131878, 29.536156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.384312, 39.468384, 30.055462>,  <39.157436, 39.634346, 30.001795>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.384312, 39.468384, 30.055462> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575344, 39.163754, 29.880226>,  <38.689964, 38.980976, 29.775084>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.575344, 39.163754, 29.880226>,  <38.384312, 39.468384, 30.055462>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.575344, 39.163754, 29.880226> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521722, -0.647022, 0.556028,
		-0.706914, -0.036982, -0.706332,
		0.477576, -0.761574, -0.438094,
		38.718616, 38.935280, 29.748798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824253, 39.021065, 29.855330>,  <38.384312, 39.468384, 30.055462>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824253, 39.021065, 29.855330> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144276, 38.781830, 29.836538>,  <38.336288, 38.638290, 29.825264>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.144276, 38.781830, 29.836538>,  <37.824253, 39.021065, 29.855330>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.144276, 38.781830, 29.836538> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.540723, -0.752803, 0.375375,
		-0.259872, -0.274918, -0.925682,
		0.800053, -0.598087, -0.046978,
		38.384293, 38.602402, 29.822445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.625595, 38.405216, 29.534805>,  <37.824253, 39.021065, 29.855330>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.625595, 38.405216, 29.534805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964905, 38.291668, 29.713619>,  <38.168491, 38.223537, 29.820908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.964905, 38.291668, 29.713619>,  <37.625595, 38.405216, 29.534805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.964905, 38.291668, 29.713619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472623, -0.786618, 0.397315,
		0.238858, -0.548312, -0.801436,
		0.848277, -0.283875, 0.447035,
		38.219387, 38.206505, 29.847729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.722851, 37.766899, 29.431223>,  <37.625595, 38.405216, 29.534805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.722851, 37.766899, 29.431223> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975075, 37.813282, 29.738195>,  <38.126408, 37.841110, 29.922379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.975075, 37.813282, 29.738195>,  <37.722851, 37.766899, 29.431223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.975075, 37.813282, 29.738195> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336189, -0.850398, 0.404723,
		0.699552, -0.513203, -0.497241,
		0.630558, 0.115958, 0.767431,
		38.164242, 37.848068, 29.968424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.056973, 37.055031, 29.526838>,  <37.722851, 37.766899, 29.431223>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.056973, 37.055031, 29.526838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.098995, 37.267956, 29.862841>,  <38.124210, 37.395710, 30.064442>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.098995, 37.267956, 29.862841>,  <38.056973, 37.055031, 29.526838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.098995, 37.267956, 29.862841> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215538, -0.812414, 0.541782,
		0.970828, -0.237972, 0.029382,
		0.105059, 0.532310, 0.840005,
		38.130512, 37.427650, 30.114841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.319874, 36.565277, 29.942537>,  <38.056973, 37.055031, 29.526838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.319874, 36.565277, 29.942537> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181107, 36.858326, 30.176775>,  <38.097847, 37.034153, 30.317318>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.181107, 36.858326, 30.176775>,  <38.319874, 36.565277, 29.942537>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181107, 36.858326, 30.176775> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225308, -0.671182, 0.706223,
		0.910432, 0.113060, 0.397908,
		-0.346914, 0.732620, 0.585592,
		38.077034, 37.078114, 30.352453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.460842, 36.390743, 30.709648>,  <38.319874, 36.565277, 29.942537>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.460842, 36.390743, 30.709648> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185833, 36.678699, 30.747761>,  <38.020828, 36.851471, 30.770628>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.185833, 36.678699, 30.747761>,  <38.460842, 36.390743, 30.709648>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.185833, 36.678699, 30.747761> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314657, -0.413588, 0.854363,
		0.654453, 0.557410, 0.510867,
		-0.687519, 0.719888, 0.095281,
		37.979576, 36.894665, 30.776344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.214340, 36.701275, 30.863371>,  <38.460842, 36.390743, 30.709648>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.214340, 36.701275, 30.863371> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517761, 36.441372, 30.883011>,  <39.699814, 36.285431, 30.894794>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.517761, 36.441372, 30.883011>,  <39.214340, 36.701275, 30.863371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517761, 36.441372, 30.883011> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539487, 0.583979, -0.606566,
		0.365448, 0.486602, 0.793515,
		0.758552, -0.649759, 0.049101,
		39.745327, 36.246445, 30.897741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.856663, 37.109501, 30.890354>,  <39.214340, 36.701275, 30.863371>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.856663, 37.109501, 30.890354> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994251, 36.755100, 30.765972>,  <40.076805, 36.542461, 30.691343>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.994251, 36.755100, 30.765972>,  <39.856663, 37.109501, 30.890354>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.994251, 36.755100, 30.765972> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671237, 0.463588, -0.578383,
		0.656600, -0.009775, 0.754176,
		0.343973, -0.885997, -0.310953,
		40.097443, 36.489300, 30.672686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.612209, 37.139240, 31.021671>,  <39.856663, 37.109501, 30.890354>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.612209, 37.139240, 31.021671> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514488, 36.870148, 30.742317>,  <40.455856, 36.708691, 30.574705>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.514488, 36.870148, 30.742317>,  <40.612209, 37.139240, 31.021671>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.514488, 36.870148, 30.742317> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618448, 0.446631, -0.646562,
		0.746886, -0.589872, 0.306940,
		-0.244300, -0.672735, -0.698388,
		40.441196, 36.668327, 30.532801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.247250, 37.139278, 30.799574>,  <40.612209, 37.139240, 31.021671>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.247250, 37.139278, 30.799574> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.003132, 36.983192, 30.523813>,  <40.856663, 36.889542, 30.358356>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.003132, 36.983192, 30.523813>,  <41.247250, 37.139278, 30.799574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.003132, 36.983192, 30.523813> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605344, 0.331627, -0.723590,
		0.510982, -0.858926, 0.033827,
		-0.610292, -0.390218, -0.689401,
		40.820045, 36.866127, 30.316994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.614632, 36.914871, 30.275209>,  <41.247250, 37.139278, 30.799574>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.614632, 36.914871, 30.275209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275688, 36.934216, 30.063686>,  <41.072323, 36.945824, 29.936773>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.275688, 36.934216, 30.063686>,  <41.614632, 36.914871, 30.275209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.275688, 36.934216, 30.063686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500228, 0.406859, -0.764355,
		0.178181, -0.912210, -0.368951,
		-0.847362, 0.048366, -0.528807,
		41.021481, 36.948727, 29.905045>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.818180, 36.611431, 29.661245>,  <41.614632, 36.914871, 30.275209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.818180, 36.611431, 29.661245> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.499882, 36.845104, 29.597347>,  <41.308903, 36.985310, 29.559010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.499882, 36.845104, 29.597347>,  <41.818180, 36.611431, 29.661245>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.499882, 36.845104, 29.597347> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434831, 0.367503, -0.822109,
		-0.421556, -0.723652, -0.546460,
		-0.795746, 0.584183, -0.159743,
		41.261158, 37.020359, 29.549425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.644176, 36.572266, 28.938963>,  <41.818180, 36.611431, 29.661245>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.644176, 36.572266, 28.938963> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.484028, 36.915699, 29.067047>,  <41.387939, 37.121761, 29.143898>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.484028, 36.915699, 29.067047>,  <41.644176, 36.572266, 28.938963>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.484028, 36.915699, 29.067047> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441788, 0.487003, -0.753426,
		-0.802826, -0.160182, -0.574293,
		-0.400368, 0.858586, 0.320212,
		41.363918, 37.173275, 29.163111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.369835, 36.865391, 28.249647>,  <41.644176, 36.572266, 28.938963>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.369835, 36.865391, 28.249647> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.386738, 37.158009, 28.521843>,  <41.396881, 37.333580, 28.685160>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.386738, 37.158009, 28.521843>,  <41.369835, 36.865391, 28.249647>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386738, 37.158009, 28.521843> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328464, 0.633065, -0.700957,
		-0.943571, 0.253137, -0.213532,
		0.042258, 0.731540, 0.680488,
		41.399414, 37.377472, 28.725988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.124966, 37.460354, 27.891937>,  <41.369835, 36.865391, 28.249647>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.124966, 37.460354, 27.891937> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.311367, 37.625740, 28.204830>,  <41.423206, 37.724972, 28.392567>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.311367, 37.625740, 28.204830>,  <41.124966, 37.460354, 27.891937>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311367, 37.625740, 28.204830> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352295, 0.724280, -0.592711,
		-0.811623, 0.551779, 0.191851,
		0.466000, 0.413470, 0.782232,
		41.451168, 37.749783, 28.439499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.996735, 38.126881, 27.707729>,  <41.124966, 37.460354, 27.891937>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.996735, 38.126881, 27.707729> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.246693, 38.146496, 28.019398>,  <41.396667, 38.158264, 28.206398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.246693, 38.146496, 28.019398>,  <40.996735, 38.126881, 27.707729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.246693, 38.146496, 28.019398> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347202, 0.876442, -0.333615,
		-0.699257, 0.479003, 0.530656,
		0.624892, 0.049038, 0.779170,
		41.434158, 38.161209, 28.253149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.900196, 38.858097, 27.958164>,  <40.996735, 38.126881, 27.707729>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.900196, 38.858097, 27.958164> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256817, 38.713043, 28.066706>,  <41.470791, 38.626011, 28.131830>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.256817, 38.713043, 28.066706>,  <40.900196, 38.858097, 27.958164>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.256817, 38.713043, 28.066706> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441018, 0.831518, -0.337759,
		-0.103150, 0.420800, 0.901270,
		0.891551, -0.362636, 0.271352,
		41.524281, 38.604252, 28.148111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.282482, 39.422749, 28.294069>,  <40.900196, 38.858097, 27.958164>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.282482, 39.422749, 28.294069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576378, 39.172302, 28.189657>,  <41.752716, 39.022034, 28.127010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.576378, 39.172302, 28.189657>,  <41.282482, 39.422749, 28.294069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.576378, 39.172302, 28.189657> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537399, 0.772079, -0.339260,
		0.413950, 0.108991, 0.903751,
		0.734743, -0.626111, -0.261030,
		41.796803, 38.984470, 28.111347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.915192, 39.776909, 28.524546>,  <41.282482, 39.422749, 28.294069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.915192, 39.776909, 28.524546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.003235, 39.493229, 28.256638>,  <42.056061, 39.323021, 28.095892>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.003235, 39.493229, 28.256638>,  <41.915192, 39.776909, 28.524546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.003235, 39.493229, 28.256638> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687838, 0.599698, -0.408952,
		0.691687, -0.370680, 0.619810,
		0.220109, -0.709196, -0.669771,
		42.069267, 39.280472, 28.055706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.650227, 39.527752, 28.578329>,  <41.915192, 39.776909, 28.524546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.650227, 39.527752, 28.578329> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521275, 39.494652, 28.201134>,  <42.443905, 39.474792, 27.974817>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.521275, 39.494652, 28.201134>,  <42.650227, 39.527752, 28.578329>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.521275, 39.494652, 28.201134> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723032, 0.621444, -0.301717,
		0.610979, -0.779077, -0.140514,
		-0.322382, -0.082747, -0.942986,
		42.424561, 39.469826, 27.918238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.394402, 39.154251, 28.703058>,  <42.650227, 39.527752, 28.578329>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.394402, 39.154251, 28.703058> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.629971, 39.333851, 28.971853>,  <43.771313, 39.441612, 29.133129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.629971, 39.333851, 28.971853>,  <43.394402, 39.154251, 28.703058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.629971, 39.333851, 28.971853> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231436, -0.702958, 0.672523,
		0.774341, -0.551588, -0.310075,
		0.588925, 0.449000, 0.671986,
		43.806648, 39.468552, 29.173449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.965321, 38.643696, 28.872805>,  <43.394402, 39.154251, 28.703058>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.965321, 38.643696, 28.872805> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.909721, 38.909813, 29.166216>,  <43.876362, 39.069485, 29.342262>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.909721, 38.909813, 29.166216>,  <43.965321, 38.643696, 28.872805>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.909721, 38.909813, 29.166216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063878, -0.733152, 0.677058,
		0.988230, 0.140967, 0.059411,
		-0.139000, 0.665294, 0.733528,
		43.868023, 39.109402, 29.386274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427094, 38.426640, 29.430948>,  <43.965321, 38.643696, 28.872805>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427094, 38.426640, 29.430948> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.164303, 38.659584, 29.622463>,  <44.006630, 38.799351, 29.737371>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.164303, 38.659584, 29.622463>,  <44.427094, 38.426640, 29.430948>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164303, 38.659584, 29.622463> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099538, -0.696515, 0.710605,
		0.747310, 0.419194, 0.515561,
		-0.656977, 0.582360, 0.478787,
		43.967209, 38.834293, 29.766100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.652878, 38.403053, 30.136179>,  <44.427094, 38.426640, 29.430948>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.652878, 38.403053, 30.136179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.271870, 38.524826, 30.138203>,  <44.043266, 38.597889, 30.139418>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.271870, 38.524826, 30.138203>,  <44.652878, 38.403053, 30.136179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.271870, 38.524826, 30.138203> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204641, -0.652413, 0.729712,
		0.225449, 0.694030, 0.683736,
		-0.952520, 0.304434, 0.005059,
		43.986115, 38.616158, 30.139721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.423962, 38.448357, 30.862463>,  <44.652878, 38.403053, 30.136179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.423962, 38.448357, 30.862463> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.081806, 38.420197, 30.657194>,  <43.876511, 38.403301, 30.534033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<44.081806, 38.420197, 30.657194>,  <44.423962, 38.448357, 30.862463>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.081806, 38.420197, 30.657194> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383685, -0.579446, 0.719047,
		-0.347979, 0.811965, 0.468641,
		-0.855393, -0.070403, -0.513173,
		43.825188, 38.399075, 30.503242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.975094, 38.636597, 31.396568>,  <44.423962, 38.448357, 30.862463>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.975094, 38.636597, 31.396568> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.770081, 38.465504, 31.098749>,  <43.647072, 38.362846, 30.920057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.770081, 38.465504, 31.098749>,  <43.975094, 38.636597, 31.396568>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.770081, 38.465504, 31.098749> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616209, -0.420643, 0.665842,
		-0.597994, 0.800063, -0.047982,
		-0.512532, -0.427737, -0.744548,
		43.616322, 38.337181, 30.875385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.320457, 38.734074, 31.639988>,  <43.975094, 38.636597, 31.396568>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.320457, 38.734074, 31.639988> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.298954, 38.449482, 31.359728>,  <43.286053, 38.278728, 31.191572>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.298954, 38.449482, 31.359728>,  <43.320457, 38.734074, 31.639988>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.298954, 38.449482, 31.359728> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588589, -0.544233, 0.597807,
		-0.806643, 0.444533, -0.389509,
		-0.053761, -0.711478, -0.700649,
		43.282825, 38.236038, 31.149532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.625713, 38.536541, 31.728018>,  <43.320457, 38.734074, 31.639988>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.625713, 38.536541, 31.728018> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.808022, 38.230824, 31.545530>,  <42.917404, 38.047394, 31.436039>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.808022, 38.230824, 31.545530>,  <42.625713, 38.536541, 31.728018>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.808022, 38.230824, 31.545530> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528840, -0.644789, 0.551883,
		-0.715964, -0.010264, -0.698062,
		0.455767, -0.764292, -0.456218,
		42.944752, 38.001537, 31.408665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237289, 38.009228, 31.726233>,  <42.625713, 38.536541, 31.728018>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237289, 38.009228, 31.726233> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.568218, 37.793575, 31.663139>,  <42.766773, 37.664185, 31.625284>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.568218, 37.793575, 31.663139>,  <42.237289, 38.009228, 31.726233>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.568218, 37.793575, 31.663139> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350894, -0.715278, 0.604360,
		-0.438652, -0.444652, -0.780942,
		0.827320, -0.539131, -0.157732,
		42.816414, 37.631836, 31.615820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.998676, 37.345966, 31.543028>,  <42.237289, 38.009228, 31.726233>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.998676, 37.345966, 31.543028> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.374382, 37.300823, 31.672668>,  <42.599808, 37.273739, 31.750452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.374382, 37.300823, 31.672668>,  <41.998676, 37.345966, 31.543028>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.374382, 37.300823, 31.672668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295625, -0.745725, 0.597076,
		0.174306, -0.656626, -0.733799,
		0.939268, -0.112856, 0.324100,
		42.656162, 37.266968, 31.769897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047695, 36.664700, 31.687197>,  <41.998676, 37.345966, 31.543028>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047695, 36.664700, 31.687197> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.387203, 36.758183, 31.876923>,  <42.590908, 36.814274, 31.990759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.387203, 36.758183, 31.876923>,  <42.047695, 36.664700, 31.687197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.387203, 36.758183, 31.876923> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240108, -0.628857, 0.739517,
		0.471107, -0.741565, -0.477638,
		0.848767, 0.233707, 0.474315,
		42.641834, 36.828293, 32.019218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.376389, 36.039253, 31.865196>,  <42.047695, 36.664700, 31.687197>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.376389, 36.039253, 31.865196> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.517670, 36.317245, 32.115715>,  <42.602440, 36.484039, 32.266026>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.517670, 36.317245, 32.115715>,  <42.376389, 36.039253, 31.865196>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.517670, 36.317245, 32.115715> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126301, -0.627898, 0.767980,
		0.926981, -0.350358, -0.134001,
		0.353207, 0.694978, 0.626299,
		42.623631, 36.525738, 32.303604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896248, 35.596203, 32.161842>,  <42.376389, 36.039253, 31.865196>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896248, 35.596203, 32.161842> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855778, 35.921066, 32.391678>,  <42.831497, 36.115986, 32.529579>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.855778, 35.921066, 32.391678>,  <42.896248, 35.596203, 32.161842>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.855778, 35.921066, 32.391678> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174945, -0.554032, 0.813906,
		0.979366, 0.182866, -0.086031,
		-0.101172, 0.812163, 0.574591,
		42.825428, 36.164715, 32.564056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.476757, 35.616718, 32.490128>,  <42.896248, 35.596203, 32.161842>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.476757, 35.616718, 32.490128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.193199, 35.792965, 32.710426>,  <43.023064, 35.898712, 32.842606>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.193199, 35.792965, 32.710426>,  <43.476757, 35.616718, 32.490128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.193199, 35.792965, 32.710426> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165579, -0.655072, 0.737200,
		0.685602, 0.613790, 0.391421,
		-0.708896, 0.440615, 0.550750,
		42.980530, 35.925148, 32.875652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.791428, 41.783779, 32.259274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.477367, 41.763737, 32.012363>,  <44.288929, 41.751713, 31.864218>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.477367, 41.763737, 32.012363>,  <44.791428, 41.783779, 32.259274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.477367, 41.763737, 32.012363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539693, 0.433513, -0.721663,
		0.303756, -0.899753, -0.313332,
		-0.785152, -0.050106, -0.617272,
		44.241821, 41.748703, 31.827181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066429, 41.482956, 31.662258>,  <44.791428, 41.783779, 32.259274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066429, 41.482956, 31.662258> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.730896, 41.661907, 31.538191>,  <44.529575, 41.769279, 31.463751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.730896, 41.661907, 31.538191>,  <45.066429, 41.482956, 31.662258>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.730896, 41.661907, 31.538191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501283, 0.412595, -0.760579,
		-0.212292, -0.793484, -0.570364,
		-0.838837, 0.447379, -0.310169,
		44.479244, 41.796120, 31.445141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.859337, 41.338326, 30.892012>,  <45.066429, 41.482956, 31.662258>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.859337, 41.338326, 30.892012> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.685715, 41.680790, 31.004147>,  <44.581543, 41.886269, 31.071428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.685715, 41.680790, 31.004147>,  <44.859337, 41.338326, 30.892012>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.685715, 41.680790, 31.004147> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388508, 0.458649, -0.799189,
		-0.812808, -0.237979, -0.531704,
		-0.434056, 0.856158, 0.280337,
		44.555496, 41.937637, 31.088247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.746025, 41.618225, 30.265099>,  <44.859337, 41.338326, 30.892012>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.746025, 41.618225, 30.265099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658810, 41.937180, 30.490177>,  <44.606480, 42.128551, 30.625225>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.658810, 41.937180, 30.490177>,  <44.746025, 41.618225, 30.265099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.658810, 41.937180, 30.490177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294914, 0.603449, -0.740862,
		-0.930315, 0.004412, -0.366735,
		-0.218037, 0.797390, 0.562699,
		44.593399, 42.176395, 30.658987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.635387, 42.074169, 29.754528>,  <44.746025, 41.618225, 30.265099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.635387, 42.074169, 29.754528> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.684639, 42.312355, 30.072084>,  <44.714188, 42.455265, 30.262619>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.684639, 42.312355, 30.072084>,  <44.635387, 42.074169, 29.754528>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.684639, 42.312355, 30.072084> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461727, 0.673743, -0.576955,
		-0.878435, 0.437600, -0.191986,
		0.123126, 0.595463, 0.793892,
		44.721577, 42.490993, 30.310251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.305984, 42.653286, 29.671143>,  <44.635387, 42.074169, 29.754528>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.305984, 42.653286, 29.671143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.606312, 42.753326, 29.915672>,  <44.786507, 42.813351, 30.062389>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.606312, 42.753326, 29.915672>,  <44.305984, 42.653286, 29.671143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.606312, 42.753326, 29.915672> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290505, 0.706169, -0.645703,
		-0.593192, 0.662399, 0.457549,
		0.750820, 0.250105, 0.611324,
		44.831558, 42.828358, 30.099070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.322819, 43.378033, 29.613626>,  <44.305984, 42.653286, 29.671143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.322819, 43.378033, 29.613626> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.670048, 43.331509, 29.806677>,  <44.878384, 43.303593, 29.922506>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.670048, 43.331509, 29.806677>,  <44.322819, 43.378033, 29.613626>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.670048, 43.331509, 29.806677> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355488, 0.824235, -0.440755,
		-0.346530, 0.554173, 0.756842,
		0.868070, -0.116313, 0.482624,
		44.930470, 43.296616, 29.951464>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.499943, 43.919266, 29.908041>,  <44.322819, 43.378033, 29.613626>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.499943, 43.919266, 29.908041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.852261, 43.733128, 29.873041>,  <45.063652, 43.621445, 29.852041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.852261, 43.733128, 29.873041>,  <44.499943, 43.919266, 29.908041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.852261, 43.733128, 29.873041> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397633, 0.827262, -0.396896,
		0.257077, 0.314791, 0.913684,
		0.880795, -0.465343, -0.087498,
		45.116501, 43.593525, 29.846792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.850559, 44.538948, 29.897127>,  <44.499943, 43.919266, 29.908041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.850559, 44.538948, 29.897127> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.065361, 44.241814, 29.737219>,  <45.194244, 44.063534, 29.641273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.065361, 44.241814, 29.737219>,  <44.850559, 44.538948, 29.897127>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.065361, 44.241814, 29.737219> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409722, 0.643924, -0.646134,
		0.737395, 0.183184, 0.650148,
		0.537007, -0.742836, -0.399772,
		45.226463, 44.018963, 29.617287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.503906, 44.753574, 29.976570>,  <44.850559, 44.538948, 29.897127>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.503906, 44.753574, 29.976570> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.508900, 44.481075, 29.683790>,  <45.511894, 44.317577, 29.508121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.508900, 44.481075, 29.683790>,  <45.503906, 44.753574, 29.976570>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.508900, 44.481075, 29.683790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.200382, 0.718861, -0.665646,
		0.979638, -0.138360, 0.145483,
		0.012483, -0.681245, -0.731949,
		45.512646, 44.276703, 29.464205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.001320, 44.966599, 29.561815>,  <45.503906, 44.753574, 29.976570>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.001320, 44.966599, 29.561815> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.833748, 44.718407, 29.296633>,  <45.733204, 44.569492, 29.137524>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.833748, 44.718407, 29.296633>,  <46.001320, 44.966599, 29.561815>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.833748, 44.718407, 29.296633> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037191, 0.717774, -0.695282,
		0.907259, -0.315928, -0.277618,
		-0.418925, -0.620475, -0.662956,
		45.708069, 44.532265, 29.097746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.360477, 44.907578, 28.909098>,  <46.001320, 44.966599, 29.561815>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.360477, 44.907578, 28.909098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.993355, 44.777203, 28.818420>,  <45.773079, 44.698978, 28.764015>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.993355, 44.777203, 28.818420>,  <46.360477, 44.907578, 28.909098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.993355, 44.777203, 28.818420> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032369, 0.507650, -0.860955,
		0.395697, -0.797532, -0.455376,
		-0.917811, -0.325937, -0.226691,
		45.718010, 44.679420, 28.750414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.511055, 44.641884, 28.227821>,  <46.360477, 44.907578, 28.909098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.511055, 44.641884, 28.227821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.118488, 44.710484, 28.262259>,  <45.882950, 44.751644, 28.282921>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.118488, 44.710484, 28.262259>,  <46.511055, 44.641884, 28.227821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.118488, 44.710484, 28.262259> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010162, 0.494475, -0.869133,
		-0.191623, -0.852106, -0.487028,
		-0.981416, 0.171495, 0.086093,
		45.824062, 44.761932, 28.288086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.080032, 44.556190, 27.571526>,  <46.511055, 44.641884, 28.227821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.080032, 44.556190, 27.571526> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.865501, 44.804554, 27.800203>,  <45.736782, 44.953571, 27.937410>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.865501, 44.804554, 27.800203>,  <46.080032, 44.556190, 27.571526>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.865501, 44.804554, 27.800203> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079268, 0.637304, -0.766525,
		-0.840282, -0.456422, -0.292582,
		-0.536322, 0.620905, 0.571695,
		45.704605, 44.990826, 27.971712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.239056, 44.142941, 26.949970>,  <46.080032, 44.556190, 27.571526>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.239056, 44.142941, 26.949970> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.230892, 43.921825, 26.616741>,  <46.225994, 43.789158, 26.416803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.230892, 43.921825, 26.616741>,  <46.239056, 44.142941, 26.949970>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.230892, 43.921825, 26.616741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396188, -0.760561, 0.514376,
		-0.917942, 0.340553, -0.203482,
		-0.020412, -0.552784, -0.833074,
		46.224770, 43.755989, 26.366819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.568916, 43.927471, 26.937136>,  <46.239056, 44.142941, 26.949970>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.568916, 43.927471, 26.937136> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.764671, 43.671795, 26.699839>,  <45.882126, 43.518391, 26.557461>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.764671, 43.671795, 26.699839>,  <45.568916, 43.927471, 26.937136>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.764671, 43.671795, 26.699839> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436228, -0.768477, 0.468131,
		-0.755118, 0.029691, -0.654916,
		0.489389, -0.639188, -0.593243,
		45.911488, 43.480038, 26.521866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157166, 43.481438, 26.605844>,  <45.568916, 43.927471, 26.937136>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157166, 43.481438, 26.605844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.503460, 43.281254, 26.608644>,  <45.711235, 43.161144, 26.610325>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.503460, 43.281254, 26.608644>,  <45.157166, 43.481438, 26.605844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.503460, 43.281254, 26.608644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447014, -0.766840, 0.460582,
		-0.225135, -0.401869, -0.887590,
		0.865733, -0.500458, 0.006998,
		45.763180, 43.131115, 26.610744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.139648, 42.827557, 26.280457>,  <45.157166, 43.481438, 26.605844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.139648, 42.827557, 26.280457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.436771, 42.770882, 26.542191>,  <45.615047, 42.736877, 26.699230>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.436771, 42.770882, 26.542191>,  <45.139648, 42.827557, 26.280457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.436771, 42.770882, 26.542191> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350376, -0.915093, 0.199603,
		0.570497, -0.377531, -0.729386,
		0.742812, -0.141687, 0.654336,
		45.659615, 42.728374, 26.738491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.115585, 42.184006, 26.328241>,  <45.139648, 42.827557, 26.280457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.115585, 42.184006, 26.328241> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.352753, 42.262604, 26.640610>,  <45.495052, 42.309761, 26.828032>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.352753, 42.262604, 26.640610>,  <45.115585, 42.184006, 26.328241>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.352753, 42.262604, 26.640610> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404223, -0.766111, 0.499678,
		0.696456, -0.611934, -0.374813,
		0.592919, 0.196496, 0.780921,
		45.530628, 42.321552, 26.874886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.559109, 41.583202, 26.484739>,  <45.115585, 42.184006, 26.328241>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.559109, 41.583202, 26.484739> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.546455, 41.787361, 26.828482>,  <45.538864, 41.909855, 27.034727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.546455, 41.787361, 26.828482>,  <45.559109, 41.583202, 26.484739>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.546455, 41.787361, 26.828482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.345150, -0.812476, 0.469845,
		0.938014, -0.281744, 0.201865,
		-0.031635, 0.510395, 0.859358,
		45.536964, 41.940479, 27.086288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830025, 41.110912, 27.022301>,  <45.559109, 41.583202, 26.484739>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830025, 41.110912, 27.022301> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.631504, 41.405743, 27.205778>,  <45.512394, 41.582642, 27.315865>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.631504, 41.405743, 27.205778>,  <45.830025, 41.110912, 27.022301>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631504, 41.405743, 27.205778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310770, -0.644183, 0.698892,
		0.810623, 0.204311, 0.548770,
		-0.496299, 0.737079, 0.458696,
		45.482613, 41.626865, 27.343388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.961060, 40.973167, 27.758471>,  <45.830025, 41.110912, 27.022301>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.961060, 40.973167, 27.758471> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.673706, 41.245735, 27.814447>,  <45.501293, 41.409275, 27.848034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.673706, 41.245735, 27.814447>,  <45.961060, 40.973167, 27.758471>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.673706, 41.245735, 27.814447> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393372, -0.563845, 0.726180,
		0.573739, 0.466630, 0.673112,
		-0.718388, 0.681421, 0.139941,
		45.458191, 41.450161, 27.856430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.868526, 41.242874, 28.524607>,  <45.961060, 40.973167, 27.758471>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.868526, 41.242874, 28.524607> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.529903, 41.273827, 28.313951>,  <45.326729, 41.292397, 28.187557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.529903, 41.273827, 28.313951>,  <45.868526, 41.242874, 28.524607>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.529903, 41.273827, 28.313951> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467926, -0.579801, 0.666990,
		-0.253734, 0.811076, 0.527044,
		-0.846560, 0.077380, -0.526639,
		45.275936, 41.297039, 28.155960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.334526, 41.341419, 29.059744>,  <45.868526, 41.242874, 28.524607>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.334526, 41.341419, 29.059744> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.148575, 41.197338, 28.736229>,  <45.037003, 41.110889, 28.542120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.148575, 41.197338, 28.736229>,  <45.334526, 41.341419, 29.059744>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.148575, 41.197338, 28.736229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644405, -0.488777, 0.588081,
		-0.607146, 0.794575, -0.004894,
		-0.464882, -0.360205, -0.808787,
		45.009109, 41.089275, 28.493593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.704746, 41.364243, 29.248510>,  <45.334526, 41.341419, 29.059744>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.704746, 41.364243, 29.248510> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.676117, 41.125633, 28.928753>,  <44.658939, 40.982468, 28.736898>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.676117, 41.125633, 28.928753>,  <44.704746, 41.364243, 29.248510>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.676117, 41.125633, 28.928753> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553046, -0.643238, 0.529514,
		-0.830071, 0.479999, -0.283870,
		-0.071570, -0.596527, -0.799395,
		44.654648, 40.946674, 28.688934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.963253, 41.090271, 29.245272>,  <44.704746, 41.364243, 29.248510>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.963253, 41.090271, 29.245272> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.176193, 40.861996, 28.995178>,  <44.303955, 40.725029, 28.845121>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.176193, 40.861996, 28.995178>,  <43.963253, 41.090271, 29.245272>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.176193, 40.861996, 28.995178> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451886, -0.816129, 0.360182,
		-0.715825, 0.090793, -0.692351,
		0.532346, -0.570692, -0.625234,
		44.335896, 40.690788, 28.807608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.410969, 40.622936, 29.017675>,  <43.963253, 41.090271, 29.245272>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.410969, 40.622936, 29.017675> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.765751, 40.444969, 28.968090>,  <43.978619, 40.338188, 28.938339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.765751, 40.444969, 28.968090>,  <43.410969, 40.622936, 29.017675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765751, 40.444969, 28.968090> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359908, -0.834008, 0.418207,
		-0.289452, -0.326314, -0.899853,
		0.886952, -0.444915, -0.123962,
		44.031837, 40.311493, 28.930901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.252415, 40.004852, 28.739971>,  <43.410969, 40.622936, 29.017675>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.252415, 40.004852, 28.739971> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603813, 39.974339, 28.928616>,  <43.814651, 39.956032, 29.041803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.603813, 39.974339, 28.928616>,  <43.252415, 40.004852, 28.739971>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.603813, 39.974339, 28.928616> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295978, -0.861802, 0.411940,
		0.375013, -0.501476, -0.779671,
		0.878500, -0.076283, 0.471613,
		43.867363, 39.951454, 29.070099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.261059, 39.745293, 28.048923>,  <43.252415, 40.004852, 28.739971>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.261059, 39.745293, 28.048923> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.937592, 39.745911, 27.813622>,  <42.743511, 39.746281, 27.672440>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.937592, 39.745911, 27.813622>,  <43.261059, 39.745293, 28.048923>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937592, 39.745911, 27.813622> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358579, 0.794035, -0.490846,
		0.466336, -0.607870, -0.642670,
		-0.808673, 0.001549, -0.588256,
		42.694988, 39.746376, 27.637144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.487755, 39.944111, 27.393681>,  <43.261059, 39.745293, 28.048923>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.487755, 39.944111, 27.393681> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.094757, 40.015285, 27.371645>,  <42.858959, 40.057991, 27.358423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.094757, 40.015285, 27.371645>,  <43.487755, 39.944111, 27.393681>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.094757, 40.015285, 27.371645> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173764, 0.768983, -0.615200,
		-0.067105, -0.614005, -0.786444,
		-0.982498, 0.177939, -0.055090,
		42.800007, 40.068668, 27.355118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.382103, 40.072945, 26.627987>,  <43.487755, 39.944111, 27.393681>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.382103, 40.072945, 26.627987> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.067680, 40.234131, 26.815489>,  <42.879028, 40.330841, 26.927990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.067680, 40.234131, 26.815489>,  <43.382103, 40.072945, 26.627987>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.067680, 40.234131, 26.815489> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036969, 0.787606, -0.615070,
		-0.617048, -0.466150, -0.634000,
		-0.786057, 0.402966, 0.468757,
		42.831863, 40.355022, 26.956116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.868279, 40.159554, 26.176998>,  <43.382103, 40.072945, 26.627987>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.868279, 40.159554, 26.176998> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.781384, 40.426163, 26.462250>,  <42.729248, 40.586128, 26.633402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.781384, 40.426163, 26.462250>,  <42.868279, 40.159554, 26.176998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.781384, 40.426163, 26.462250> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202324, 0.683966, -0.700896,
		-0.954921, -0.296543, -0.013729,
		-0.217236, 0.666523, 0.713131,
		42.716213, 40.626118, 26.676189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.314259, 40.626484, 25.871229>,  <42.868279, 40.159554, 26.176998>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.314259, 40.626484, 25.871229> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.469868, 40.818115, 26.185972>,  <42.563232, 40.933094, 26.374819>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.469868, 40.818115, 26.185972>,  <42.314259, 40.626484, 25.871229>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.469868, 40.818115, 26.185972> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039045, 0.861949, -0.505489,
		-0.920400, 0.165924, 0.354024,
		0.389024, 0.479075, 0.786859,
		42.586575, 40.961838, 26.422029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.872139, 41.223038, 25.931168>,  <42.314259, 40.626484, 25.871229>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.872139, 41.223038, 25.931168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186348, 41.333771, 26.152555>,  <42.374874, 41.400211, 26.285387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.186348, 41.333771, 26.152555>,  <41.872139, 41.223038, 25.931168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.186348, 41.333771, 26.152555> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025964, 0.878835, -0.476419,
		-0.618294, 0.388606, 0.683153,
		0.785518, 0.276830, 0.553468,
		42.422005, 41.416821, 26.318596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.809734, 41.962143, 25.976978>,  <41.872139, 41.223038, 25.931168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.809734, 41.962143, 25.976978> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175472, 41.895004, 26.124382>,  <42.394917, 41.854721, 26.212824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.175472, 41.895004, 26.124382>,  <41.809734, 41.962143, 25.976978>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.175472, 41.895004, 26.124382> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276437, 0.923729, -0.265154,
		-0.295898, 0.344312, 0.891007,
		0.914345, -0.167849, 0.368510,
		42.449776, 41.844650, 26.234936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.473125, 42.355797, 26.610697>,  <41.809734, 41.962143, 25.976978>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.473125, 42.355797, 26.610697> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109749, 42.521252, 26.634825>,  <40.891724, 42.620525, 26.649302>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.109749, 42.521252, 26.634825>,  <41.473125, 42.355797, 26.610697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.109749, 42.521252, 26.634825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392173, -0.893307, 0.219553,
		0.144702, 0.175794, 0.973734,
		-0.908440, 0.413641, 0.060321,
		40.837215, 42.645344, 26.652922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.172260, 42.050365, 27.189455>,  <41.473125, 42.355797, 26.610697>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.172260, 42.050365, 27.189455> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851532, 42.203960, 27.006311>,  <40.659096, 42.296116, 26.896425>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.851532, 42.203960, 27.006311>,  <41.172260, 42.050365, 27.189455>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.851532, 42.203960, 27.006311> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.556755, -0.758346, 0.339021,
		-0.217036, 0.526750, 0.821845,
		-0.801822, 0.383986, -0.457859,
		40.610985, 42.319157, 26.868954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.622677, 42.134098, 27.632662>,  <41.172260, 42.050365, 27.189455>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.622677, 42.134098, 27.632662> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445881, 42.133350, 27.273855>,  <40.339802, 42.132900, 27.058571>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.445881, 42.133350, 27.273855>,  <40.622677, 42.134098, 27.632662>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.445881, 42.133350, 27.273855> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.635294, -0.705330, 0.314502,
		-0.633282, 0.708877, 0.310561,
		-0.441991, -0.001871, -0.897017,
		40.313282, 42.132790, 27.004749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.938465, 42.215633, 27.736094>,  <40.622677, 42.134098, 27.632662>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.938465, 42.215633, 27.736094> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968288, 42.058571, 27.369431>,  <39.986183, 41.964333, 27.149433>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.968288, 42.058571, 27.369431>,  <39.938465, 42.215633, 27.736094>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.968288, 42.058571, 27.369431> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637867, -0.725350, 0.258830,
		-0.766529, 0.565409, -0.304543,
		0.074556, -0.392658, -0.916658,
		39.990654, 41.940773, 27.094433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270058, 41.965595, 27.537712>,  <39.938465, 42.215633, 27.736094>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.270058, 41.965595, 27.537712> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517944, 41.771996, 27.290585>,  <39.666676, 41.655838, 27.142307>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.517944, 41.771996, 27.290585>,  <39.270058, 41.965595, 27.537712>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.517944, 41.771996, 27.290585> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502383, -0.849427, 0.161509,
		-0.602961, 0.210291, -0.769556,
		0.619717, -0.483995, -0.617818,
		39.703861, 41.626797, 27.105240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.889942, 41.470737, 27.314981>,  <39.270058, 41.965595, 27.537712>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.889942, 41.470737, 27.314981> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253929, 41.332909, 27.222706>,  <39.472321, 41.250210, 27.167339>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.253929, 41.332909, 27.222706>,  <38.889942, 41.470737, 27.314981>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.253929, 41.332909, 27.222706> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239636, -0.891001, 0.385606,
		-0.338417, -0.295609, -0.893358,
		0.909972, -0.344576, -0.230691,
		39.526920, 41.229534, 27.153498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.815292, 40.833866, 26.855375>,  <38.889942, 41.470737, 27.314981>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.815292, 40.833866, 26.855375> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151623, 40.828594, 27.071835>,  <39.353420, 40.825432, 27.201710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.151623, 40.828594, 27.071835>,  <38.815292, 40.833866, 26.855375>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151623, 40.828594, 27.071835> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227564, -0.915681, 0.331274,
		0.491153, -0.401689, -0.772926,
		0.840823, -0.013184, 0.541149,
		39.403870, 40.824638, 27.234179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<42.281212, 45.162727, 28.335569> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555092, 44.918152, 28.176908>,  <42.719421, 44.771408, 28.081713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.555092, 44.918152, 28.176908>,  <42.281212, 45.162727, 28.335569>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.555092, 44.918152, 28.176908> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099942, -0.617860, 0.779911,
		-0.721942, -0.494361, -0.484156,
		0.684698, -0.611438, -0.396652,
		42.760502, 44.734722, 28.057913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.933792, 44.553841, 28.147812>,  <42.281212, 45.162727, 28.335569>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.933792, 44.553841, 28.147812> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.318211, 44.524200, 28.254326>,  <42.548862, 44.506416, 28.318235>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.318211, 44.524200, 28.254326>,  <41.933792, 44.553841, 28.147812>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318211, 44.524200, 28.254326> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239673, -0.703274, 0.669300,
		0.137679, -0.707047, -0.693635,
		0.961042, -0.074097, 0.266286,
		42.606522, 44.501972, 28.334211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.058544, 43.809971, 28.241808>,  <41.933792, 44.553841, 28.147812>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.058544, 43.809971, 28.241808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.346264, 44.012680, 28.431877>,  <42.518894, 44.134308, 28.545919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.346264, 44.012680, 28.431877>,  <42.058544, 43.809971, 28.241808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.346264, 44.012680, 28.431877> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119181, -0.583836, 0.803076,
		0.684403, -0.634282, -0.359553,
		0.719297, 0.506776, 0.475174,
		42.562054, 44.164715, 28.574429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.411816, 43.371727, 28.505754>,  <42.058544, 43.809971, 28.241808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.411816, 43.371727, 28.505754> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.533344, 43.683117, 28.725454>,  <42.606262, 43.869949, 28.857275>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.533344, 43.683117, 28.725454>,  <42.411816, 43.371727, 28.505754>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.533344, 43.683117, 28.725454> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306611, -0.465939, 0.829995,
		0.902044, -0.420576, 0.097125,
		0.303821, 0.778471, 0.549250,
		42.624489, 43.916656, 28.890230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.660980, 42.971054, 29.078634>,  <42.411816, 43.371727, 28.505754>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.660980, 42.971054, 29.078634> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.661697, 43.356373, 29.186012>,  <42.662128, 43.587563, 29.250439>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.661697, 43.356373, 29.186012>,  <42.660980, 42.971054, 29.078634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.661697, 43.356373, 29.186012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227738, -0.260997, 0.938092,
		0.973721, -0.062818, 0.218911,
		0.001794, 0.963294, 0.268444,
		42.662235, 43.645363, 29.266546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.072021, 42.930710, 29.662897>,  <42.660980, 42.971054, 29.078634>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.072021, 42.930710, 29.662897> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824890, 43.245232, 29.662148>,  <42.676609, 43.433945, 29.661697>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.824890, 43.245232, 29.662148>,  <43.072021, 42.930710, 29.662897>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824890, 43.245232, 29.662148> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.284059, -0.220971, 0.932996,
		0.733208, 0.576967, 0.359881,
		-0.617832, 0.786308, -0.001875,
		42.639542, 43.481125, 29.661585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.221912, 43.114391, 30.335014>,  <43.072021, 42.930710, 29.662897>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.221912, 43.114391, 30.335014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.878273, 43.274502, 30.207436>,  <42.672089, 43.370567, 30.130888>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.878273, 43.274502, 30.207436>,  <43.221912, 43.114391, 30.335014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.878273, 43.274502, 30.207436> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425579, -0.212509, 0.879615,
		0.284313, 0.891413, 0.352916,
		-0.859098, 0.400279, -0.318947,
		42.620544, 43.394585, 30.111752>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934261, 43.469677, 30.918060>,  <43.221912, 43.114391, 30.335014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934261, 43.469677, 30.918060> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.610077, 43.446095, 30.684935>,  <42.415565, 43.431946, 30.545059>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.610077, 43.446095, 30.684935>,  <42.934261, 43.469677, 30.918060>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.610077, 43.446095, 30.684935> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.573840, -0.120006, 0.810127,
		-0.117701, 0.991021, 0.063430,
		-0.810465, -0.058954, -0.582812,
		42.366936, 43.428410, 30.510092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.573357, 43.897781, 31.254229>,  <42.934261, 43.469677, 30.918060>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.573357, 43.897781, 31.254229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.322956, 43.667393, 31.043941>,  <42.172718, 43.529160, 30.917768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.322956, 43.667393, 31.043941>,  <42.573357, 43.897781, 31.254229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.322956, 43.667393, 31.043941> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581565, -0.104314, 0.806784,
		-0.519527, 0.810784, -0.269666,
		-0.625998, -0.575975, -0.525718,
		42.135159, 43.494602, 30.886227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.974331, 44.123165, 31.362572>,  <42.573357, 43.897781, 31.254229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.974331, 44.123165, 31.362572> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.897755, 43.745968, 31.253670>,  <41.851810, 43.519650, 31.188328>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.897755, 43.745968, 31.253670>,  <41.974331, 44.123165, 31.362572>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.897755, 43.745968, 31.253670> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638726, -0.090922, 0.764043,
		-0.745238, 0.320165, -0.584906,
		-0.191439, -0.942989, -0.272256,
		41.840324, 43.463070, 31.171993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.229378, 44.125671, 31.374483>,  <41.974331, 44.123165, 31.362572>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.229378, 44.125671, 31.374483> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388599, 43.758801, 31.367104>,  <41.484135, 43.538677, 31.362677>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.388599, 43.758801, 31.367104>,  <41.229378, 44.125671, 31.374483>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.388599, 43.758801, 31.367104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.655674, -0.298513, 0.693529,
		-0.641595, -0.263967, -0.720193,
		0.398056, -0.917176, -0.018448,
		41.508015, 43.483646, 31.361568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698677, 43.666622, 31.281267>,  <41.229378, 44.125671, 31.374483>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.698677, 43.666622, 31.281267> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992886, 43.470852, 31.468660>,  <41.169411, 43.353390, 31.581097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.992886, 43.470852, 31.468660>,  <40.698677, 43.666622, 31.281267>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.992886, 43.470852, 31.468660> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666834, -0.400723, 0.628295,
		-0.119772, -0.774522, -0.621104,
		0.735518, -0.489426, 0.468482,
		41.213543, 43.324024, 31.609205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.376148, 43.487392, 30.547411>,  <40.698677, 43.666622, 31.281267>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.376148, 43.487392, 30.547411> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.029053, 43.432037, 30.356464>,  <39.820797, 43.398823, 30.241896>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.029053, 43.432037, 30.356464>,  <40.376148, 43.487392, 30.547411>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.029053, 43.432037, 30.356464> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267774, 0.678978, -0.683583,
		0.418723, -0.720997, -0.552118,
		-0.867737, -0.138389, -0.477368,
		39.768730, 43.390522, 30.213255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.520428, 43.254692, 29.883150>,  <40.376148, 43.487392, 30.547411>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.520428, 43.254692, 29.883150> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150703, 43.407085, 29.874212>,  <39.928867, 43.498524, 29.868849>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.150703, 43.407085, 29.874212>,  <40.520428, 43.254692, 29.883150>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.150703, 43.407085, 29.874212> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278022, 0.632080, -0.723311,
		-0.261448, -0.674776, -0.690161,
		-0.924310, 0.380988, -0.022347,
		39.873409, 43.521381, 29.867508>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.510857, 43.448486, 29.179304>,  <40.520428, 43.254692, 29.883150>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.510857, 43.448486, 29.179304> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204762, 43.646870, 29.343468>,  <40.021103, 43.765900, 29.441965>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.204762, 43.646870, 29.343468>,  <40.510857, 43.448486, 29.179304>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204762, 43.646870, 29.343468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077801, 0.561608, -0.823737,
		-0.639024, -0.662288, -0.391180,
		-0.765242, 0.495954, 0.410408,
		39.975189, 43.795654, 29.466591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953926, 43.642693, 28.641111>,  <40.510857, 43.448486, 29.179304>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953926, 43.642693, 28.641111> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895664, 43.918667, 28.924738>,  <39.860706, 44.084251, 29.094913>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.895664, 43.918667, 28.924738>,  <39.953926, 43.642693, 28.641111>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.895664, 43.918667, 28.924738> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260411, 0.718173, -0.645301,
		-0.954447, 0.090655, -0.284275,
		-0.145659, 0.689934, 0.709066,
		39.851967, 44.125648, 29.137457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624146, 44.300354, 28.306938>,  <39.953926, 43.642693, 28.641111>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624146, 44.300354, 28.306938> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783646, 44.439037, 28.646536>,  <39.879345, 44.522247, 28.850294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.783646, 44.439037, 28.646536>,  <39.624146, 44.300354, 28.306938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.783646, 44.439037, 28.646536> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301784, 0.824606, -0.478489,
		-0.865980, 0.447012, 0.224184,
		0.398754, 0.346707, 0.848993,
		39.903271, 44.543049, 28.901234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.425018, 44.947254, 28.295284>,  <39.624146, 44.300354, 28.306938>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.425018, 44.947254, 28.295284> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732170, 44.961723, 28.551111>,  <39.916462, 44.970406, 28.704607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.732170, 44.961723, 28.551111>,  <39.425018, 44.947254, 28.295284>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.732170, 44.961723, 28.551111> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384713, 0.772262, -0.505576,
		-0.512203, 0.634274, 0.579090,
		0.767883, 0.036174, 0.639568,
		39.962536, 44.972576, 28.742981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456028, 45.737419, 28.594963>,  <39.425018, 44.947254, 28.295284>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.456028, 45.737419, 28.594963> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.798038, 45.534836, 28.639576>,  <40.003242, 45.413288, 28.666344>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<39.798038, 45.534836, 28.639576>,  <39.456028, 45.737419, 28.594963>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798038, 45.534836, 28.639576> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494732, 0.732111, -0.468245,
		0.155492, 0.455539, 0.876531,
		0.855022, -0.506456, 0.111532,
		40.054546, 45.382900, 28.673037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.915825, 46.285023, 28.563118>,  <39.456028, 45.737419, 28.594963>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.915825, 46.285023, 28.563118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173275, 45.980034, 28.536659>,  <40.327747, 45.797039, 28.520784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.173275, 45.980034, 28.536659>,  <39.915825, 46.285023, 28.563118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.173275, 45.980034, 28.536659> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568724, 0.534329, -0.625336,
		0.512146, 0.364866, 0.777547,
		0.643630, -0.762473, -0.066146,
		40.366364, 45.751293, 28.516815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511936, 46.590744, 28.551607>,  <39.915825, 46.285023, 28.563118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511936, 46.590744, 28.551607> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.612202, 46.223072, 28.430101>,  <40.672359, 46.002468, 28.357199>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.612202, 46.223072, 28.430101>,  <40.511936, 46.590744, 28.551607>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.612202, 46.223072, 28.430101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719529, 0.386817, -0.576759,
		0.647647, -0.073994, 0.758339,
		0.250662, -0.919183, -0.303762,
		40.687401, 45.947319, 28.338972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.199780, 46.608322, 28.615564>,  <40.511936, 46.590744, 28.551607>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.199780, 46.608322, 28.615564> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.119041, 46.316772, 28.353876>,  <41.070599, 46.141842, 28.196863>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.119041, 46.316772, 28.353876>,  <41.199780, 46.608322, 28.615564>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.119041, 46.316772, 28.353876> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605528, 0.432139, -0.668275,
		0.769801, -0.531038, 0.354127,
		-0.201848, -0.728872, -0.654219,
		41.058487, 46.098110, 28.157610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.914352, 46.439350, 28.352633>,  <41.199780, 46.608322, 28.615564>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.914352, 46.439350, 28.352633> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.673206, 46.273132, 28.080198>,  <41.528519, 46.173401, 27.916739>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.673206, 46.273132, 28.080198>,  <41.914352, 46.439350, 28.352633>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.673206, 46.273132, 28.080198> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645112, 0.248406, -0.722583,
		0.469452, -0.874995, 0.118319,
		-0.602865, -0.415547, -0.681084,
		41.492348, 46.148468, 27.875874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.364658, 45.943645, 27.955847>,  <41.914352, 46.439350, 28.352633>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.364658, 45.943645, 27.955847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.043827, 46.045277, 27.739658>,  <41.851326, 46.106255, 27.609945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.043827, 46.045277, 27.739658>,  <42.364658, 45.943645, 27.955847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.043827, 46.045277, 27.739658> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.596244, 0.289142, -0.748926,
		-0.034010, -0.922953, -0.383406,
		-0.802082, 0.254075, -0.540472,
		41.803204, 46.121498, 27.577517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.539661, 45.630894, 27.310532>,  <42.364658, 45.943645, 27.955847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.539661, 45.630894, 27.310532> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.263805, 45.905392, 27.218035>,  <42.098293, 46.070091, 27.162537>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.263805, 45.905392, 27.218035>,  <42.539661, 45.630894, 27.310532>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263805, 45.905392, 27.218035> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534459, 0.266865, -0.801958,
		-0.488627, -0.676649, -0.550808,
		-0.689635, 0.686243, -0.231244,
		42.056915, 46.111263, 27.148661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.362644, 44.966473, 27.160492>,  <42.539661, 45.630894, 27.310532>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.362644, 44.966473, 27.160492> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.353474, 45.198296, 26.834650>,  <42.347969, 45.337391, 26.639145>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.353474, 45.198296, 26.834650>,  <42.362644, 44.966473, 27.160492>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.353474, 45.198296, 26.834650> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.803401, -0.495626, -0.330003,
		-0.594997, 0.646888, 0.476984,
		-0.022930, 0.579560, -0.814607,
		42.346596, 45.372162, 26.590267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.754654, 45.406719, 27.100197>,  <42.362644, 44.966473, 27.160492>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.754654, 45.406719, 27.100197> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.910564, 45.313171, 26.743910>,  <42.004112, 45.257042, 26.530138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.910564, 45.313171, 26.743910>,  <41.754654, 45.406719, 27.100197>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910564, 45.313171, 26.743910> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.831384, -0.505354, -0.231123,
		-0.396075, 0.830615, -0.391411,
		0.389775, -0.233871, -0.890719,
		42.027496, 45.243011, 26.476694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.245373, 45.566013, 26.541777>,  <41.754654, 45.406719, 27.100197>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.245373, 45.566013, 26.541777> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.495686, 45.280457, 26.416082>,  <41.645874, 45.109123, 26.340666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.495686, 45.280457, 26.416082>,  <41.245373, 45.566013, 26.541777>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.495686, 45.280457, 26.416082> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771000, -0.627156, -0.110605,
		-0.118115, 0.311493, -0.942879,
		0.625785, -0.713896, -0.314238,
		41.683422, 45.066288, 26.321812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.899933, 45.102531, 26.088762>,  <41.245373, 45.566013, 26.541777>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.899933, 45.102531, 26.088762> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.203091, 44.860489, 26.186285>,  <41.384987, 44.715263, 26.244799>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.203091, 44.860489, 26.186285>,  <40.899933, 45.102531, 26.088762>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.203091, 44.860489, 26.186285> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638499, -0.764697, 0.086934,
		0.133834, -0.221558, -0.965920,
		0.757896, -0.605104, 0.243807,
		41.430458, 44.678959, 26.259428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.820797, 44.578934, 25.581415>,  <40.899933, 45.102531, 26.088762>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.820797, 44.578934, 25.581415> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066494, 44.418713, 25.853374>,  <41.213913, 44.322578, 26.016550>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.066494, 44.418713, 25.853374>,  <40.820797, 44.578934, 25.581415>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066494, 44.418713, 25.853374> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532189, -0.846437, -0.017869,
		0.582648, -0.350858, -0.733089,
		0.614244, -0.400553, 0.679898,
		41.250767, 44.298546, 26.057344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.653603, 43.856514, 25.536442>,  <40.820797, 44.578934, 25.581415>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.653603, 43.856514, 25.536442> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.861877, 43.833721, 25.877180>,  <40.986843, 43.820045, 26.081623>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.861877, 43.833721, 25.877180>,  <40.653603, 43.856514, 25.536442>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.861877, 43.833721, 25.877180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421655, -0.884751, 0.198554,
		0.742356, -0.462569, -0.484703,
		0.520687, -0.056979, 0.851845,
		41.018082, 43.816628, 26.132734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959396, 43.217773, 25.583103>,  <40.653603, 43.856514, 25.536442>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959396, 43.217773, 25.583103> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913074, 43.327961, 25.964827>,  <40.885281, 43.394073, 26.193861>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.913074, 43.327961, 25.964827>,  <40.959396, 43.217773, 25.583103>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.913074, 43.327961, 25.964827> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488211, -0.852492, 0.186834,
		0.865008, -0.444269, 0.233208,
		-0.115803, 0.275468, 0.954310,
		40.878334, 43.410603, 26.251120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.328175, 42.698097, 25.978090>,  <40.959396, 43.217773, 25.583103>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.328175, 42.698097, 25.978090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.085091, 42.878830, 26.239332>,  <40.939240, 42.987270, 26.396076>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.085091, 42.878830, 26.239332>,  <41.328175, 42.698097, 25.978090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.085091, 42.878830, 26.239332> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373515, -0.888359, 0.267031,
		0.700842, -0.081667, 0.708626,
		-0.607707, 0.451829, 0.653103,
		40.902779, 43.014378, 26.435263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.078968, 42.588512, 26.260998>,  <41.328175, 42.698097, 25.978090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.078968, 42.588512, 26.260998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.416847, 42.387516, 26.187254>,  <42.619576, 42.266918, 26.143007>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.416847, 42.387516, 26.187254>,  <42.078968, 42.588512, 26.260998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.416847, 42.387516, 26.187254> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.422588, 0.837490, -0.346454,
		0.328488, 0.214742, 0.919773,
		0.844698, -0.502491, -0.184358,
		42.670258, 42.236771, 26.131947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.680195, 42.943130, 26.638107>,  <42.078968, 42.588512, 26.260998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.680195, 42.943130, 26.638107> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.830135, 42.733543, 26.332180>,  <42.920101, 42.607792, 26.148624>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.830135, 42.733543, 26.332180>,  <42.680195, 42.943130, 26.638107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.830135, 42.733543, 26.332180> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540873, 0.793621, -0.278607,
		0.752957, -0.309234, 0.580887,
		0.374850, -0.523965, -0.764819,
		42.942589, 42.576355, 26.102734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.398048, 43.137123, 26.605043>,  <42.680195, 42.943130, 26.638107>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.398048, 43.137123, 26.605043> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.348175, 42.992283, 26.235538>,  <43.318253, 42.905380, 26.013836>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.348175, 42.992283, 26.235538>,  <43.398048, 43.137123, 26.605043>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.348175, 42.992283, 26.235538> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677689, 0.648946, -0.345841,
		0.724702, -0.669145, 0.164478,
		-0.124680, -0.362097, -0.923765,
		43.310772, 42.883656, 25.958408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.129040, 43.140621, 26.265377>,  <43.398048, 43.137123, 26.605043>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.129040, 43.140621, 26.265377> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.888226, 43.064758, 25.955128>,  <43.743736, 43.019241, 25.768978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.888226, 43.064758, 25.955128>,  <44.129040, 43.140621, 26.265377>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.888226, 43.064758, 25.955128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609213, 0.518826, -0.599733,
		0.516159, -0.833576, -0.196804,
		-0.602030, -0.189661, -0.775622,
		43.707615, 43.007862, 25.722441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.646019, 42.845150, 25.719292>,  <44.129040, 43.140621, 26.265377>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.646019, 42.845150, 25.719292> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.306042, 42.989544, 25.565779>,  <44.102055, 43.076180, 25.473671>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.306042, 42.989544, 25.565779>,  <44.646019, 42.845150, 25.719292>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.306042, 42.989544, 25.565779> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526159, 0.619557, -0.582500,
		0.027499, -0.697021, -0.716523,
		-0.849942, 0.360987, -0.383781,
		44.051060, 43.097839, 25.450644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.785759, 42.724106, 24.986567>,  <44.646019, 42.845150, 25.719292>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.785759, 42.724106, 24.986567> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.509800, 43.010155, 25.031549>,  <44.344227, 43.181782, 25.058538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.509800, 43.010155, 25.031549>,  <44.785759, 42.724106, 24.986567>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.509800, 43.010155, 25.031549> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.437636, 0.535755, -0.722109,
		-0.576645, -0.448964, -0.682577,
		-0.689896, 0.715121, 0.112458,
		44.302830, 43.224689, 25.065287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687683, 43.055637, 24.349628>,  <44.785759, 42.724106, 24.986567>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687683, 43.055637, 24.349628> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.513832, 43.334480, 24.577713>,  <44.409523, 43.501785, 24.714563>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.513832, 43.334480, 24.577713>,  <44.687683, 43.055637, 24.349628>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.513832, 43.334480, 24.577713> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308656, 0.710092, -0.632851,
		-0.846068, -0.099054, -0.523791,
		-0.434626, 0.697106, 0.570213,
		44.383446, 43.543613, 24.748777>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.242714, 43.492840, 23.939531>,  <44.687683, 43.055637, 24.349628>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.242714, 43.492840, 23.939531> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.334698, 43.737843, 24.242041>,  <44.389889, 43.884846, 24.423546>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.334698, 43.737843, 24.242041>,  <44.242714, 43.492840, 23.939531>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.334698, 43.737843, 24.242041> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404088, 0.646850, -0.646760,
		-0.885342, 0.454331, -0.098756,
		0.229963, 0.612510, 0.756273,
		44.403687, 43.921597, 24.468922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.128387, 44.178761, 23.680798>,  <44.242714, 43.492840, 23.939531>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.128387, 44.178761, 23.680798> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.387615, 44.236095, 23.979986>,  <44.543152, 44.270496, 24.159498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.387615, 44.236095, 23.979986>,  <44.128387, 44.178761, 23.680798>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.387615, 44.236095, 23.979986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380178, 0.790113, -0.480818,
		-0.659902, 0.595965, 0.457553,
		0.648069, 0.143341, 0.747970,
		44.582035, 44.279099, 24.204378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.960083, 33.199612, 34.478577> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320766, 33.281010, 34.631157>,  <38.537178, 33.329849, 34.722706>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.320766, 33.281010, 34.631157>,  <37.960083, 33.199612, 34.478577>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.320766, 33.281010, 34.631157> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081962, 0.785836, -0.612980,
		-0.424494, 0.583996, 0.691920,
		0.901713, 0.203496, 0.381448,
		38.591282, 33.342060, 34.745590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.001698, 33.993755, 34.414989>,  <37.960083, 33.199612, 34.478577>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.001698, 33.993755, 34.414989> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.375843, 33.852467, 34.422211>,  <38.600330, 33.767693, 34.426544>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.375843, 33.852467, 34.422211>,  <38.001698, 33.993755, 34.414989>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375843, 33.852467, 34.422211> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.205567, 0.501412, -0.840433,
		0.287805, 0.789824, 0.541614,
		0.935367, -0.353219, 0.018053,
		38.656452, 33.746502, 34.427628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.564537, 34.642632, 34.503654>,  <38.001698, 33.993755, 34.414989>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.564537, 34.642632, 34.503654> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697567, 34.318237, 34.311115>,  <38.777386, 34.123600, 34.195591>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.697567, 34.318237, 34.311115>,  <38.564537, 34.642632, 34.503654>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697567, 34.318237, 34.311115> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246015, 0.567332, -0.785882,
		0.910422, 0.142950, 0.388197,
		0.332578, -0.810987, -0.481343,
		38.797340, 34.074940, 34.166714>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.158943, 34.960121, 34.223476>,  <38.564537, 34.642632, 34.503654>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.158943, 34.960121, 34.223476> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151264, 34.601601, 34.046261>,  <39.146656, 34.386490, 33.939934>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.151264, 34.601601, 34.046261>,  <39.158943, 34.960121, 34.223476>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151264, 34.601601, 34.046261> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266422, 0.422510, -0.866317,
		0.963665, -0.134664, 0.230683,
		-0.019195, -0.896298, -0.443036,
		39.145504, 34.332710, 33.913349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.822830, 34.784756, 33.950691>,  <39.158943, 34.960121, 34.223476>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.822830, 34.784756, 33.950691> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557823, 34.556538, 33.756557>,  <39.398819, 34.419605, 33.640076>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.557823, 34.556538, 33.756557>,  <39.822830, 34.784756, 33.950691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.557823, 34.556538, 33.756557> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335761, 0.352990, -0.873305,
		0.669581, -0.741534, -0.042294,
		-0.662515, -0.570548, -0.485334,
		39.359070, 34.385372, 33.610958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.218174, 34.728683, 33.399548>,  <39.822830, 34.784756, 33.950691>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.218174, 34.728683, 33.399548> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853462, 34.622108, 33.274536>,  <39.634636, 34.558163, 33.199532>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.853462, 34.622108, 33.274536>,  <40.218174, 34.728683, 33.399548>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.853462, 34.622108, 33.274536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155538, 0.480272, -0.863219,
		0.380086, -0.835675, -0.396462,
		-0.911780, -0.266433, -0.312524,
		39.579929, 34.542179, 33.180779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.355152, 34.261066, 32.828678>,  <40.218174, 34.728683, 33.399548>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.355152, 34.261066, 32.828678> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.997242, 34.435493, 32.790260>,  <39.782497, 34.540150, 32.767208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.997242, 34.435493, 32.790260>,  <40.355152, 34.261066, 32.828678>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.997242, 34.435493, 32.790260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183524, 0.163067, -0.969396,
		-0.407060, -0.885017, -0.225937,
		-0.894774, 0.436067, -0.096044,
		39.728809, 34.566315, 32.761448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.119198, 34.151878, 32.154213>,  <40.355152, 34.261066, 32.828678>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.119198, 34.151878, 32.154213> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.888020, 34.455936, 32.272980>,  <39.749313, 34.638371, 32.344242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.888020, 34.455936, 32.272980>,  <40.119198, 34.151878, 32.154213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.888020, 34.455936, 32.272980> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114668, 0.435874, -0.892673,
		-0.807979, -0.481870, -0.339075,
		-0.577947, 0.760142, 0.296921,
		39.714634, 34.683979, 32.362057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861771, 34.378487, 31.611732>,  <40.119198, 34.151878, 32.154213>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861771, 34.378487, 31.611732> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719440, 34.679520, 31.833363>,  <39.634041, 34.860142, 31.966341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.719440, 34.679520, 31.833363>,  <39.861771, 34.378487, 31.611732>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.719440, 34.679520, 31.833363> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.082475, 0.565277, -0.820768,
		-0.930905, -0.337750, -0.139071,
		-0.355828, 0.752587, 0.554075,
		39.612694, 34.905296, 31.999586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.331284, 34.649990, 31.234131>,  <39.861771, 34.378487, 31.611732>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.331284, 34.649990, 31.234131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416641, 34.952789, 31.481167>,  <39.467857, 35.134468, 31.629389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.416641, 34.952789, 31.481167>,  <39.331284, 34.649990, 31.234131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.416641, 34.952789, 31.481167> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197965, 0.652542, -0.731436,
		-0.956699, 0.033822, 0.289108,
		0.213394, 0.756997, 0.617591,
		39.480659, 35.179890, 31.666445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890797, 35.264454, 31.081141>,  <39.331284, 34.649990, 31.234131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890797, 35.264454, 31.081141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.197414, 35.409355, 31.293247>,  <39.381386, 35.496296, 31.420511>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.197414, 35.409355, 31.293247>,  <38.890797, 35.264454, 31.081141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.197414, 35.409355, 31.293247> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121513, 0.728980, -0.673663,
		-0.630593, 0.580826, 0.514775,
		0.766542, 0.362255, 0.530268,
		39.427376, 35.518032, 31.452328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875370, 36.017563, 31.170782>,  <38.890797, 35.264454, 31.081141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875370, 36.017563, 31.170782> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267551, 35.943260, 31.196697>,  <39.502861, 35.898678, 31.212246>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.267551, 35.943260, 31.196697>,  <38.875370, 36.017563, 31.170782>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.267551, 35.943260, 31.196697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.175155, 0.674283, -0.717400,
		0.089580, 0.714728, 0.693642,
		0.980457, -0.185759, 0.064786,
		39.561687, 35.887531, 31.216133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505974, 36.671082, 31.496344>,  <38.875370, 36.017563, 31.170782>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505974, 36.671082, 31.496344> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.150772, 36.752876, 31.331596>,  <37.937653, 36.801952, 31.232748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.150772, 36.752876, 31.331596>,  <38.505974, 36.671082, 31.496344>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150772, 36.752876, 31.331596> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.459401, -0.355363, 0.814044,
		0.020101, 0.912086, 0.409506,
		-0.888002, 0.204490, -0.411870,
		37.884373, 36.814224, 31.208035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.108021, 36.982342, 32.046177>,  <38.505974, 36.671082, 31.496344>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.108021, 36.982342, 32.046177> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830830, 36.859524, 31.785257>,  <37.664513, 36.785831, 31.628704>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.830830, 36.859524, 31.785257>,  <38.108021, 36.982342, 32.046177>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.830830, 36.859524, 31.785257> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525758, -0.403862, 0.748648,
		-0.493312, 0.861752, 0.118435,
		-0.692980, -0.307049, -0.652303,
		37.622936, 36.767410, 31.589567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.413338, 37.103172, 32.274204>,  <38.108021, 36.982342, 32.046177>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.413338, 37.103172, 32.274204> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323902, 36.827435, 31.998579>,  <37.270241, 36.661991, 31.833202>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.323902, 36.827435, 31.998579>,  <37.413338, 37.103172, 32.274204>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.323902, 36.827435, 31.998579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672032, -0.403022, 0.621246,
		-0.705961, 0.601979, -0.373149,
		-0.223590, -0.689343, -0.689067,
		37.256824, 36.620632, 31.791859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.769524, 37.003860, 32.291817>,  <37.413338, 37.103172, 32.274204>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.769524, 37.003860, 32.291817> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838017, 36.656380, 32.105900>,  <36.879112, 36.447891, 31.994350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.838017, 36.656380, 32.105900>,  <36.769524, 37.003860, 32.291817>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.838017, 36.656380, 32.105900> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548106, -0.476010, 0.687746,
		-0.818693, 0.136987, -0.557653,
		0.171236, -0.868706, -0.464789,
		36.889389, 36.395767, 31.966463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.128342, 36.799446, 31.968048>,  <36.769524, 37.003860, 32.291817>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.128342, 36.799446, 31.968048> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337502, 36.461857, 32.015854>,  <36.462997, 36.259304, 32.044537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.337502, 36.461857, 32.015854>,  <36.128342, 36.799446, 31.968048>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.337502, 36.461857, 32.015854> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746376, -0.385622, 0.542419,
		-0.411705, -0.372826, -0.831565,
		0.522898, -0.843976, 0.119506,
		36.494373, 36.208664, 32.051708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.695484, 36.288239, 31.779585>,  <36.128342, 36.799446, 31.968048>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.695484, 36.288239, 31.779585> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962803, 36.086441, 31.998260>,  <36.123196, 35.965363, 32.129467>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.962803, 36.086441, 31.998260>,  <35.695484, 36.288239, 31.779585>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.962803, 36.086441, 31.998260> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.743822, -0.442880, 0.500585,
		-0.010425, -0.741177, -0.671229,
		0.668296, -0.504494, 0.546687,
		36.163292, 35.935093, 32.162266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.315838, 35.648865, 31.948505>,  <35.695484, 36.288239, 31.779585>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.315838, 35.648865, 31.948505> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632942, 35.647533, 32.192314>,  <35.823204, 35.646732, 32.338600>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.632942, 35.647533, 32.192314>,  <35.315838, 35.648865, 31.948505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.632942, 35.647533, 32.192314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495145, -0.586698, 0.640794,
		0.355470, -0.809799, -0.466762,
		0.792763, -0.003331, 0.609521,
		35.870770, 35.646534, 32.375172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512341, 34.958775, 32.098408>,  <35.315838, 35.648865, 31.948505>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512341, 34.958775, 32.098408> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659096, 35.180634, 32.397141>,  <35.747150, 35.313747, 32.576382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659096, 35.180634, 32.397141>,  <35.512341, 34.958775, 32.098408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659096, 35.180634, 32.397141> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375750, -0.646058, 0.664395,
		0.851000, -0.524384, -0.028626,
		0.366892, 0.554644, 0.746833,
		35.769165, 35.347027, 32.621189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.797531, 34.473675, 32.623043>,  <35.512341, 34.958775, 32.098408>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.797531, 34.473675, 32.623043> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707405, 34.832798, 32.774395>,  <35.653328, 35.048271, 32.865208>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.707405, 34.832798, 32.774395>,  <35.797531, 34.473675, 32.623043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.707405, 34.832798, 32.774395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421090, -0.439956, 0.793172,
		0.878588, 0.019381, 0.477188,
		-0.225314, 0.897810, 0.378378,
		35.639812, 35.102142, 32.887909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.865280, 34.391834, 33.374485>,  <35.797531, 34.473675, 32.623043>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.865280, 34.391834, 33.374485> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659508, 34.734596, 33.387562>,  <35.536045, 34.940254, 33.395409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.659508, 34.734596, 33.387562>,  <35.865280, 34.391834, 33.374485>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659508, 34.734596, 33.387562> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445558, -0.299665, 0.843610,
		0.732693, 0.419415, 0.535960,
		-0.514431, 0.856909, 0.032689,
		35.505177, 34.991669, 33.397369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.805008, 34.609104, 34.046921>,  <35.865280, 34.391834, 33.374485>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.805008, 34.609104, 34.046921> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494774, 34.794224, 33.875202>,  <35.308636, 34.905296, 33.772171>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.494774, 34.794224, 33.875202>,  <35.805008, 34.609104, 34.046921>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.494774, 34.794224, 33.875202> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588922, -0.285659, 0.756022,
		0.227252, 0.839178, 0.494103,
		-0.775582, 0.462796, -0.429294,
		35.262100, 34.933064, 33.746414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450855, 34.861252, 34.603142>,  <35.805008, 34.609104, 34.046921>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450855, 34.861252, 34.603142> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.181622, 34.911858, 34.311676>,  <35.020081, 34.942223, 34.136795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.181622, 34.911858, 34.311676>,  <35.450855, 34.861252, 34.603142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.181622, 34.911858, 34.311676> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739410, -0.135341, 0.659511,
		-0.015180, 0.982688, 0.184643,
		-0.673084, 0.126515, -0.728664,
		34.979698, 34.949814, 34.093079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.945122, 35.312931, 34.872673>,  <35.450855, 34.861252, 34.603142>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.945122, 35.312931, 34.872673> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767414, 35.115166, 34.573826>,  <34.660789, 34.996506, 34.394520>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767414, 35.115166, 34.573826>,  <34.945122, 35.312931, 34.872673>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767414, 35.115166, 34.573826> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821160, -0.108723, 0.560247,
		-0.358224, 0.862398, -0.357694,
		-0.444266, -0.494417, -0.747114,
		34.634132, 34.966839, 34.349693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336964, 35.658276, 34.779846>,  <34.945122, 35.312931, 34.872673>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336964, 35.658276, 34.779846> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295464, 35.302391, 34.602013>,  <34.270561, 35.088860, 34.495312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.295464, 35.302391, 34.602013>,  <34.336964, 35.658276, 34.779846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.295464, 35.302391, 34.602013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840158, -0.160840, 0.517943,
		-0.532325, 0.427261, -0.730807,
		-0.103754, -0.889707, -0.444586,
		34.264336, 35.035480, 34.468636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.594654, 35.623177, 34.609795>,  <34.336964, 35.658276, 34.779846>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.594654, 35.623177, 34.609795> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778812, 35.273849, 34.673481>,  <33.889309, 35.064251, 34.711693>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.778812, 35.273849, 34.673481>,  <33.594654, 35.623177, 34.609795>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.778812, 35.273849, 34.673481> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614595, -0.184164, 0.767044,
		-0.640554, -0.450995, -0.621526,
		0.460396, -0.873320, 0.159212,
		33.916931, 35.011852, 34.721245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.741730, 36.167770, 35.117596>,  <33.594654, 35.623177, 34.609795>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.741730, 36.167770, 35.117596> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715607, 36.357941, 35.468529>,  <33.699932, 36.472042, 35.679089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.715607, 36.357941, 35.468529>,  <33.741730, 36.167770, 35.117596>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.715607, 36.357941, 35.468529> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546351, 0.752751, -0.367242,
		-0.835006, 0.455346, -0.308910,
		-0.065310, 0.475423, 0.877330,
		33.696014, 36.500568, 35.731728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.561092, 36.909088, 35.190826>,  <33.741730, 36.167770, 35.117596>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.561092, 36.909088, 35.190826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837055, 36.826897, 35.468475>,  <34.002632, 36.777580, 35.635067>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.837055, 36.826897, 35.468475>,  <33.561092, 36.909088, 35.190826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.837055, 36.826897, 35.468475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588884, 0.716966, -0.373062,
		-0.421006, 0.666136, 0.615643,
		0.689905, -0.205481, 0.694124,
		34.044025, 36.765251, 35.676712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765755, 37.472420, 35.576748>,  <33.561092, 36.909088, 35.190826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765755, 37.472420, 35.576748> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083595, 37.232552, 35.614716>,  <34.274300, 37.088631, 35.637497>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.083595, 37.232552, 35.614716>,  <33.765755, 37.472420, 35.576748>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083595, 37.232552, 35.614716> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.584675, 0.713664, -0.385795,
		0.163611, 0.362048, 0.917689,
		0.794598, -0.599670, 0.094918,
		34.321976, 37.052650, 35.643192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.185055, 37.831440, 36.099880>,  <33.765755, 37.472420, 35.576748>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.185055, 37.831440, 36.099880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360321, 37.580452, 35.842415>,  <34.465481, 37.429859, 35.687935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.360321, 37.580452, 35.842415>,  <34.185055, 37.831440, 36.099880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360321, 37.580452, 35.842415> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431220, 0.775009, -0.461963,
		0.788710, -0.075145, 0.610156,
		0.438162, -0.627466, -0.643662,
		34.491768, 37.392212, 35.649315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.757900, 38.148048, 35.868286>,  <34.185055, 37.831440, 36.099880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.757900, 38.148048, 35.868286> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792606, 37.849529, 35.604313>,  <34.813431, 37.670418, 35.445927>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.792606, 37.849529, 35.604313>,  <34.757900, 38.148048, 35.868286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.792606, 37.849529, 35.604313> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498614, 0.606024, -0.619774,
		0.862471, -0.275278, 0.424695,
		0.086765, -0.746295, -0.659936,
		34.818634, 37.625641, 35.406334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.409039, 38.054596, 35.672131>,  <34.757900, 38.148048, 35.868286>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.409039, 38.054596, 35.672131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217487, 37.916080, 35.349453>,  <35.102554, 37.832970, 35.155846>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.217487, 37.916080, 35.349453>,  <35.409039, 38.054596, 35.672131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.217487, 37.916080, 35.349453> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.575738, 0.569809, -0.586382,
		0.662721, -0.745251, -0.073497,
		-0.478881, -0.346292, -0.806694,
		35.073822, 37.812191, 35.107445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927582, 37.959377, 35.104458>,  <35.409039, 38.054596, 35.672131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.927582, 37.959377, 35.104458> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566967, 37.982731, 34.932957>,  <35.350597, 37.996742, 34.830055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.566967, 37.982731, 34.932957>,  <35.927582, 37.959377, 35.104458>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.566967, 37.982731, 34.932957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356647, 0.661345, -0.659868,
		0.245029, -0.747807, -0.617046,
		-0.901534, 0.058381, -0.428751,
		35.296505, 38.000244, 34.804333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132984, 38.075951, 34.462711>,  <35.927582, 37.959377, 35.104458>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132984, 38.075951, 34.462711> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742611, 38.155350, 34.426594>,  <35.508389, 38.202988, 34.404922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.742611, 38.155350, 34.426594>,  <36.132984, 38.075951, 34.462711>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.742611, 38.155350, 34.426594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210492, 0.749248, -0.627949,
		-0.056994, -0.631843, -0.772998,
		-0.975933, 0.198499, -0.090296,
		35.449833, 38.214901, 34.399506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942513, 37.922688, 33.856319>,  <36.132984, 38.075951, 34.462711>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942513, 37.922688, 33.856319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673782, 38.188965, 33.986248>,  <35.512547, 38.348732, 34.064205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.673782, 38.188965, 33.986248>,  <35.942513, 37.922688, 33.856319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.673782, 38.188965, 33.986248> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366659, 0.679904, -0.635052,
		-0.643597, -0.307544, -0.700857,
		-0.671822, 0.665693, 0.324821,
		35.472237, 38.388672, 34.083694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798332, 38.256119, 33.277416>,  <35.942513, 37.922688, 33.856319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798332, 38.256119, 33.277416> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664299, 38.507511, 33.558197>,  <35.583881, 38.658344, 33.726665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.664299, 38.507511, 33.558197>,  <35.798332, 38.256119, 33.277416>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.664299, 38.507511, 33.558197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332494, 0.775967, -0.536026,
		-0.881572, 0.053784, -0.468975,
		-0.335080, 0.628477, 0.701954,
		35.563774, 38.696053, 33.768784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365662, 38.784786, 32.915581>,  <35.798332, 38.256119, 33.277416>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365662, 38.784786, 32.915581> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466610, 38.958630, 33.261395>,  <35.527180, 39.062935, 33.468884>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.466610, 38.958630, 33.261395>,  <35.365662, 38.784786, 32.915581>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.466610, 38.958630, 33.261395> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258401, 0.830740, -0.493052,
		-0.932490, 0.347830, 0.097352,
		0.252373, 0.434610, 0.864536,
		35.542320, 39.089012, 33.520756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.048840, 39.463871, 32.776665>,  <35.365662, 38.784786, 32.915581>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.048840, 39.463871, 32.776665> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321636, 39.453312, 33.069016>,  <35.485313, 39.446976, 33.244427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.321636, 39.453312, 33.069016>,  <35.048840, 39.463871, 32.776665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.321636, 39.453312, 33.069016> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508130, 0.735860, -0.447564,
		-0.526010, 0.676619, 0.515267,
		0.681995, -0.026399, 0.730880,
		35.526234, 39.445393, 33.288280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.266602, 40.093349, 32.738022>,  <35.048840, 39.463871, 32.776665>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.266602, 40.093349, 32.738022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558636, 39.901459, 32.932690>,  <35.733856, 39.786324, 33.049488>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.558636, 39.901459, 32.932690>,  <35.266602, 40.093349, 32.738022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.558636, 39.901459, 32.932690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675012, 0.617226, -0.404216,
		-0.106471, 0.623616, 0.774446,
		0.730084, -0.479723, 0.486665,
		35.777660, 39.757542, 33.078690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.677494, 40.580696, 32.938248>,  <35.266602, 40.093349, 32.738022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.677494, 40.580696, 32.938248> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917416, 40.260658, 32.934444>,  <36.061367, 40.068634, 32.932163>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.917416, 40.260658, 32.934444>,  <35.677494, 40.580696, 32.938248>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.917416, 40.260658, 32.934444> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680031, 0.515984, -0.520882,
		0.421661, 0.305959, 0.853576,
		0.599800, -0.800093, -0.009509,
		36.097355, 40.020630, 32.931591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.360188, 40.849483, 33.252621>,  <35.677494, 40.580696, 32.938248>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.360188, 40.849483, 33.252621> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411694, 40.507610, 33.051449>,  <36.442596, 40.302486, 32.930744>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.411694, 40.507610, 33.051449>,  <36.360188, 40.849483, 33.252621>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.411694, 40.507610, 33.051449> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781509, 0.399655, -0.479082,
		0.610461, -0.331356, 0.719403,
		0.128766, -0.854681, -0.502931,
		36.450325, 40.251205, 32.900570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.046925, 40.860111, 33.244022>,  <36.360188, 40.849483, 33.252621>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.046925, 40.860111, 33.244022> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930344, 40.639107, 32.931667>,  <36.860394, 40.506504, 32.744255>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.930344, 40.639107, 32.931667>,  <37.046925, 40.860111, 33.244022>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.930344, 40.639107, 32.931667> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745992, 0.379717, -0.547093,
		0.598793, -0.741986, 0.301501,
		-0.291451, -0.552513, -0.780888,
		36.842907, 40.473354, 32.697399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631130, 40.524284, 32.929325>,  <37.046925, 40.860111, 33.244022>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631130, 40.524284, 32.929325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362000, 40.491684, 32.635208>,  <37.200520, 40.472122, 32.458736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.362000, 40.491684, 32.635208>,  <37.631130, 40.524284, 32.929325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.362000, 40.491684, 32.635208> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716832, 0.173900, -0.675211,
		0.182895, -0.981385, -0.058586,
		-0.672831, -0.081496, -0.735294,
		37.160152, 40.467232, 32.414619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011097, 40.291428, 32.408478>,  <37.631130, 40.524284, 32.929325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011097, 40.291428, 32.408478> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695473, 40.432365, 32.207184>,  <37.506100, 40.516930, 32.086407>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.695473, 40.432365, 32.207184>,  <38.011097, 40.291428, 32.408478>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.695473, 40.432365, 32.207184> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590777, 0.210615, -0.778861,
		-0.168439, -0.911863, -0.374344,
		-0.789057, 0.352344, -0.503232,
		37.458755, 40.538067, 32.056213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.141468, 40.090199, 31.709209>,  <38.011097, 40.291428, 32.408478>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.141468, 40.090199, 31.709209> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.903885, 40.411255, 31.731028>,  <37.761333, 40.603889, 31.744118>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.903885, 40.411255, 31.731028>,  <38.141468, 40.090199, 31.709209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.903885, 40.411255, 31.731028> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588823, 0.479925, -0.650353,
		-0.548180, -0.354165, -0.757671,
		-0.593958, 0.802645, 0.054544,
		37.725697, 40.652050, 31.747391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.119518, 40.267273, 31.080778>,  <38.141468, 40.090199, 31.709209>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.119518, 40.267273, 31.080778> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000790, 40.595486, 31.276175>,  <37.929550, 40.792412, 31.393414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.000790, 40.595486, 31.276175>,  <38.119518, 40.267273, 31.080778>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.000790, 40.595486, 31.276175> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653462, 0.547549, -0.522665,
		-0.696336, 0.164072, -0.698711,
		-0.296824, 0.820531, 0.488493,
		37.911743, 40.841644, 31.422722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.055573, 40.758465, 30.560640>,  <38.119518, 40.267273, 31.080778>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.055573, 40.758465, 30.560640> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108807, 40.954056, 30.905474>,  <38.140747, 41.071411, 31.112373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.108807, 40.954056, 30.905474>,  <38.055573, 40.758465, 30.560640>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.108807, 40.954056, 30.905474> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506708, 0.713981, -0.483195,
		-0.851784, 0.501131, -0.152749,
		0.133084, 0.488977, 0.862085,
		38.148731, 41.100750, 31.164099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.997715, 41.481968, 30.392864>,  <38.055573, 40.758465, 30.560640>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.997715, 41.481968, 30.392864> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164021, 41.484680, 30.756643>,  <38.263805, 41.486305, 30.974911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.164021, 41.484680, 30.756643>,  <37.997715, 41.481968, 30.392864>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.164021, 41.484680, 30.756643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491319, 0.839824, -0.230872,
		-0.765339, 0.542817, 0.345841,
		0.415767, 0.006777, 0.909446,
		38.288750, 41.486713, 31.029476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.841648, 42.114277, 30.632973>,  <37.997715, 41.481968, 30.392864>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.841648, 42.114277, 30.632973> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175194, 42.017414, 30.831375>,  <38.375320, 41.959297, 30.950417>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.175194, 42.017414, 30.831375>,  <37.841648, 42.114277, 30.632973>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.175194, 42.017414, 30.831375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414425, 0.868224, -0.272834,
		-0.364575, 0.433066, 0.824342,
		0.833868, -0.242159, 0.496006,
		38.425354, 41.944767, 30.980177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.958248, 42.726139, 30.974237>,  <37.841648, 42.114277, 30.632973>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.958248, 42.726139, 30.974237> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305420, 42.531605, 31.014591>,  <38.513721, 42.414883, 31.038803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.305420, 42.531605, 31.014591>,  <37.958248, 42.726139, 30.974237>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.305420, 42.531605, 31.014591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482794, 0.778351, -0.401347,
		0.116668, 0.397045, 0.910354,
		0.867927, -0.486338, 0.100882,
		38.565800, 42.385704, 31.044855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366455, 43.156639, 31.316423>,  <37.958248, 42.726139, 30.974237>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366455, 43.156639, 31.316423> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604275, 42.908512, 31.111790>,  <38.746967, 42.759636, 30.989010>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.604275, 42.908512, 31.111790>,  <38.366455, 43.156639, 31.316423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.604275, 42.908512, 31.111790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562673, 0.775486, -0.286391,
		0.574380, -0.117582, 0.810100,
		0.594547, -0.620319, -0.511584,
		38.782639, 42.722416, 30.958315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.064774, 43.352989, 31.429590>,  <38.366455, 43.156639, 31.316423>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.064774, 43.352989, 31.429590> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080112, 43.137489, 31.092955>,  <39.089317, 43.008190, 30.890972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.080112, 43.137489, 31.092955>,  <39.064774, 43.352989, 31.429590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.080112, 43.137489, 31.092955> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543814, 0.717820, -0.434741,
		0.838329, -0.440998, 0.320507,
		0.038346, -0.538752, -0.841591,
		39.091618, 42.975864, 30.840477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.695675, 43.510933, 31.159369>,  <39.064774, 43.352989, 31.429590>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.695675, 43.510933, 31.159369> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514355, 43.353317, 30.839556>,  <39.405563, 43.258747, 30.647669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.514355, 43.353317, 30.839556>,  <39.695675, 43.510933, 31.159369>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.514355, 43.353317, 30.839556> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428895, 0.689898, -0.583173,
		0.781386, -0.607270, -0.143734,
		-0.453305, -0.394036, -0.799531,
		39.378365, 43.235107, 30.599697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.338913, 43.001961, 31.377131>,  <39.695675, 43.510933, 31.159369>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.338913, 43.001961, 31.377131> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.664722, 42.982567, 31.608372>,  <40.860207, 42.970932, 31.747116>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.664722, 42.982567, 31.608372>,  <40.338913, 43.001961, 31.377131>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.664722, 42.982567, 31.608372> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512862, -0.525950, 0.678491,
		0.271160, -0.849133, -0.453261,
		0.814522, -0.048480, 0.578104,
		40.909081, 42.968021, 31.781803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.306736, 42.341412, 31.659225>,  <40.338913, 43.001961, 31.377131>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.306736, 42.341412, 31.659225> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569038, 42.539074, 31.887539>,  <40.726421, 42.657673, 32.024529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.569038, 42.539074, 31.887539>,  <40.306736, 42.341412, 31.659225>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.569038, 42.539074, 31.887539> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436784, -0.368340, 0.820698,
		0.615794, -0.787488, -0.025703,
		0.655757, 0.494155, 0.570784,
		40.765766, 42.687321, 32.058773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.540535, 41.864849, 32.154366>,  <40.306736, 42.341412, 31.659225>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.540535, 41.864849, 32.154366> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.602085, 42.228149, 32.310009>,  <40.639015, 42.446129, 32.403397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.602085, 42.228149, 32.310009>,  <40.540535, 41.864849, 32.154366>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.602085, 42.228149, 32.310009> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415266, -0.297891, 0.859544,
		0.896592, -0.293845, 0.331327,
		0.153873, 0.908249, 0.389111,
		40.648247, 42.500626, 32.426743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.928162, 41.752831, 32.781563>,  <40.540535, 41.864849, 32.154366>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.928162, 41.752831, 32.781563> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.768555, 42.116127, 32.831985>,  <40.672791, 42.334103, 32.862240>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.768555, 42.116127, 32.831985>,  <40.928162, 41.752831, 32.781563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.768555, 42.116127, 32.831985> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297508, -0.258272, 0.919121,
		0.867338, 0.329240, 0.373263,
		-0.399015, 0.908238, 0.126058,
		40.648849, 42.388599, 32.869804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.147205, 41.956173, 33.535786>,  <40.928162, 41.752831, 32.781563>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.147205, 41.956173, 33.535786> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809963, 42.147327, 33.437153>,  <40.607616, 42.262020, 33.377972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.809963, 42.147327, 33.437153>,  <41.147205, 41.956173, 33.535786>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809963, 42.147327, 33.437153> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412009, -0.279367, 0.867296,
		0.345578, 0.832816, 0.432427,
		-0.843104, 0.477882, -0.246584,
		40.557034, 42.290691, 33.363178>
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
