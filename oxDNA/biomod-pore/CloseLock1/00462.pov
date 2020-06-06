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
	<24.245405, 35.557926, 34.883270> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390846, 35.258259, 35.104733>,  <24.478111, 35.078457, 35.237610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.390846, 35.258259, 35.104733>,  <24.245405, 35.557926, 34.883270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.390846, 35.258259, 35.104733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660680, 0.626384, 0.413696,
		-0.656732, 0.215369, 0.722717,
		0.363601, -0.749172, 0.553657,
		24.499926, 35.033508, 35.270828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.255297, 35.711246, 35.595520>,  <24.245405, 35.557926, 34.883270>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.255297, 35.711246, 35.595520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554319, 35.449852, 35.547997>,  <24.733734, 35.293015, 35.519482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.554319, 35.449852, 35.547997>,  <24.255297, 35.711246, 35.595520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.554319, 35.449852, 35.547997> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.650432, 0.684035, 0.330205,
		-0.134518, -0.324121, 0.936403,
		0.747558, -0.653485, -0.118804,
		24.778587, 35.253807, 35.512356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.712498, 35.576668, 36.256584>,  <24.255297, 35.711246, 35.595520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.712498, 35.576668, 36.256584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913616, 35.581413, 35.910854>,  <25.034286, 35.584259, 35.703415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.913616, 35.581413, 35.910854>,  <24.712498, 35.576668, 36.256584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.913616, 35.581413, 35.910854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409474, 0.877333, 0.250237,
		0.761268, -0.479736, 0.436262,
		0.502794, 0.011859, -0.864325,
		25.064455, 35.584972, 35.651558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.497751, 35.518986, 36.259464>,  <24.712498, 35.576668, 36.256584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.497751, 35.518986, 36.259464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335329, 35.733219, 35.963284>,  <25.237875, 35.861759, 35.785576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.335329, 35.733219, 35.963284>,  <25.497751, 35.518986, 36.259464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.335329, 35.733219, 35.963284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312971, 0.842759, 0.437956,
		0.858584, -0.053904, -0.509831,
		-0.406058, 0.535585, -0.740450,
		25.213512, 35.893894, 35.741150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.904102, 35.869560, 35.694809>,  <25.497751, 35.518986, 36.259464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.904102, 35.869560, 35.694809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578798, 36.082890, 35.787910>,  <25.383615, 36.210888, 35.843769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.578798, 36.082890, 35.787910>,  <25.904102, 35.869560, 35.694809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.578798, 36.082890, 35.787910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581896, 0.747308, 0.320823,
		-0.002832, 0.396348, -0.918096,
		-0.813258, 0.533328, 0.232750,
		25.334822, 36.242889, 35.857735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.264528, 35.286545, 35.538383>,  <25.904102, 35.869560, 35.694809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.264528, 35.286545, 35.538383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343149, 34.921444, 35.395138>,  <26.390322, 34.702381, 35.309189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.343149, 34.921444, 35.395138>,  <26.264528, 35.286545, 35.538383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.343149, 34.921444, 35.395138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245951, -0.399460, 0.883142,
		-0.949144, -0.085506, -0.303008,
		0.196553, -0.912755, -0.358115,
		26.402115, 34.647617, 35.287704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.776089, 34.796700, 35.795902>,  <26.264528, 35.286545, 35.538383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.776089, 34.796700, 35.795902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109795, 34.597561, 35.701115>,  <26.310019, 34.478077, 35.644241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.109795, 34.597561, 35.701115>,  <25.776089, 34.796700, 35.795902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.109795, 34.597561, 35.701115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089410, -0.301948, 0.949122,
		-0.544068, -0.813006, -0.207392,
		0.834264, -0.497845, -0.236971,
		26.360073, 34.448208, 35.630024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.749594, 34.001488, 35.948887>,  <25.776089, 34.796700, 35.795902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.749594, 34.001488, 35.948887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101276, 34.190754, 35.971169>,  <26.312286, 34.304314, 35.984535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.101276, 34.190754, 35.971169>,  <25.749594, 34.001488, 35.948887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.101276, 34.190754, 35.971169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011563, -0.138070, 0.990355,
		0.476296, -0.870085, -0.126863,
		0.879209, 0.473169, 0.055701,
		26.365040, 34.332706, 35.987881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.217415, 33.551914, 36.209328>,  <25.749594, 34.001488, 35.948887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.217415, 33.551914, 36.209328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354769, 33.917309, 36.296616>,  <26.437181, 34.136547, 36.348988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.354769, 33.917309, 36.296616>,  <26.217415, 33.551914, 36.209328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354769, 33.917309, 36.296616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004621, -0.230704, 0.973013,
		0.939183, -0.335127, -0.074999,
		0.343386, 0.913491, 0.218222,
		26.457785, 34.191357, 36.362083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.652859, 33.452568, 36.803436>,  <26.217415, 33.551914, 36.209328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.652859, 33.452568, 36.803436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550045, 33.839043, 36.811611>,  <26.488358, 34.070927, 36.816517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.550045, 33.839043, 36.811611>,  <26.652859, 33.452568, 36.803436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.550045, 33.839043, 36.811611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197444, -0.073202, 0.977577,
		0.946017, 0.247237, 0.209583,
		-0.257035, 0.966186, 0.020435,
		26.472935, 34.128899, 36.817741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.986200, 33.778561, 37.506271>,  <26.652859, 33.452568, 36.803436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.986200, 33.778561, 37.506271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705793, 34.031754, 37.374878>,  <26.537548, 34.183670, 37.296040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.705793, 34.031754, 37.374878>,  <26.986200, 33.778561, 37.506271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.705793, 34.031754, 37.374878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.310897, 0.143284, 0.939581,
		0.641807, 0.760790, 0.096348,
		-0.701019, 0.632984, -0.328488,
		26.495487, 34.221649, 37.276333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.111534, 34.326248, 37.971333>,  <26.986200, 33.778561, 37.506271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.111534, 34.326248, 37.971333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727499, 34.347626, 37.861515>,  <26.497078, 34.360451, 37.795624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.727499, 34.347626, 37.861515>,  <27.111534, 34.326248, 37.971333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.727499, 34.347626, 37.861515> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254436, 0.240756, 0.936642,
		0.116151, 0.969113, -0.217550,
		-0.960089, 0.053439, -0.274541,
		26.439472, 34.363659, 37.779152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.845530, 34.926006, 38.338810>,  <27.111534, 34.326248, 37.971333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.845530, 34.926006, 38.338810> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546375, 34.688236, 38.220612>,  <26.366882, 34.545574, 38.149693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.546375, 34.688236, 38.220612>,  <26.845530, 34.926006, 38.338810>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.546375, 34.688236, 38.220612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371685, 0.006147, 0.928338,
		-0.550013, 0.804126, -0.225537,
		-0.747887, -0.594427, -0.295501,
		26.322008, 34.509907, 38.131962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.370344, 35.208721, 38.643482>,  <26.845530, 34.926006, 38.338810>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.370344, 35.208721, 38.643482> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200052, 34.852409, 38.579899>,  <26.097878, 34.638622, 38.541748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.200052, 34.852409, 38.579899>,  <26.370344, 35.208721, 38.643482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.200052, 34.852409, 38.579899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.402256, 0.028953, 0.915070,
		-0.810522, 0.453515, -0.370647,
		-0.425729, -0.890779, -0.158962,
		26.072334, 34.585175, 38.532211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.631443, 35.276478, 38.729805>,  <26.370344, 35.208721, 38.643482>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.631443, 35.276478, 38.729805> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703228, 34.886341, 38.781200>,  <25.746300, 34.652260, 38.812038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.703228, 34.886341, 38.781200>,  <25.631443, 35.276478, 38.729805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.703228, 34.886341, 38.781200> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500805, 0.021841, 0.865284,
		-0.846751, -0.219634, -0.484535,
		0.179463, -0.975338, 0.128488,
		25.757067, 34.593739, 38.819748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.133543, 35.032463, 39.146259>,  <25.631443, 35.276478, 38.729805>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.133543, 35.032463, 39.146259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392166, 34.730743, 39.191853>,  <25.547340, 34.549713, 39.219208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.392166, 34.730743, 39.191853>,  <25.133543, 35.032463, 39.146259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.392166, 34.730743, 39.191853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240366, -0.059629, 0.968849,
		-0.724006, -0.653816, -0.219861,
		0.646559, -0.754300, 0.113983,
		25.586134, 34.504452, 39.226048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.920979, 34.531197, 39.654198>,  <25.133543, 35.032463, 39.146259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.920979, 34.531197, 39.654198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312817, 34.450905, 39.658253>,  <25.547918, 34.402729, 39.660686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.312817, 34.450905, 39.658253>,  <24.920979, 34.531197, 39.654198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.312817, 34.450905, 39.658253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034978, -0.120598, 0.992085,
		-0.197921, -0.972195, -0.125158,
		0.979594, -0.200732, 0.010137,
		25.606695, 34.390686, 39.661293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.051344, 33.903679, 40.084927>,  <24.920979, 34.531197, 39.654198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.051344, 33.903679, 40.084927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417320, 34.062138, 40.054081>,  <25.636906, 34.157211, 40.035572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.417320, 34.062138, 40.054081>,  <25.051344, 33.903679, 40.084927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.417320, 34.062138, 40.054081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089353, -0.012496, 0.995922,
		0.393568, -0.918102, -0.046831,
		0.914943, 0.396147, -0.077117,
		25.691803, 34.180981, 40.030945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.409477, 33.543411, 40.582336>,  <25.051344, 33.903679, 40.084927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.409477, 33.543411, 40.582336> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664856, 33.834530, 40.482185>,  <25.818083, 34.009201, 40.422092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.664856, 33.834530, 40.482185>,  <25.409477, 33.543411, 40.582336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.664856, 33.834530, 40.482185> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434839, -0.072666, 0.897571,
		0.635059, -0.681928, -0.362870,
		0.638447, 0.727801, -0.250382,
		25.856390, 34.052872, 40.407070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.035206, 33.318951, 40.895775>,  <25.409477, 33.543411, 40.582336>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.035206, 33.318951, 40.895775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063667, 33.713829, 40.838676>,  <26.080744, 33.950756, 40.804417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.063667, 33.713829, 40.838676>,  <26.035206, 33.318951, 40.895775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.063667, 33.713829, 40.838676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559461, 0.078977, 0.825086,
		0.825797, -0.138568, -0.546679,
		0.071155, 0.987199, -0.142742,
		26.085014, 34.009987, 40.795853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.707958, 33.402718, 41.101215>,  <26.035206, 33.318951, 40.895775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.707958, 33.402718, 41.101215> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512737, 33.750202, 41.135029>,  <26.395605, 33.958694, 41.155315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.512737, 33.750202, 41.135029>,  <26.707958, 33.402718, 41.101215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.512737, 33.750202, 41.135029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563246, 0.239486, 0.790823,
		0.666753, 0.433574, -0.606180,
		-0.488052, 0.868711, 0.084531,
		26.366322, 34.010815, 41.160389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.257044, 33.959812, 41.311375>,  <26.707958, 33.402718, 41.101215>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.257044, 33.959812, 41.311375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905691, 34.128220, 41.401878>,  <26.694880, 34.229263, 41.456181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.905691, 34.128220, 41.401878>,  <27.257044, 33.959812, 41.311375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.905691, 34.128220, 41.401878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348386, 0.239873, 0.906139,
		0.327223, 0.874761, -0.357375,
		-0.878380, 0.421014, 0.226263,
		26.642178, 34.254524, 41.469757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.540094, 34.478043, 41.609417>,  <27.257044, 33.959812, 41.311375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.540094, 34.478043, 41.609417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161934, 34.443161, 41.735027>,  <26.935038, 34.422230, 41.810394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.161934, 34.443161, 41.735027>,  <27.540094, 34.478043, 41.609417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.161934, 34.443161, 41.735027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.268023, 0.340152, 0.901366,
		-0.185424, 0.936318, -0.298206,
		-0.945400, -0.087209, 0.314027,
		26.878313, 34.417000, 41.829235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.601772, 34.972649, 42.047691>,  <27.540094, 34.478043, 41.609417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.601772, 34.972649, 42.047691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263119, 34.779343, 42.136829>,  <27.059927, 34.663357, 42.190311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.263119, 34.779343, 42.136829>,  <27.601772, 34.972649, 42.047691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.263119, 34.779343, 42.136829> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179152, 0.135489, 0.974447,
		-0.501113, 0.864925, -0.028131,
		-0.846635, -0.483268, 0.222848,
		27.009129, 34.634361, 42.203682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.272036, 35.363556, 42.473534>,  <27.601772, 34.972649, 42.047691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.272036, 35.363556, 42.473534> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159731, 34.989910, 42.561714>,  <27.092348, 34.765720, 42.614624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.159731, 34.989910, 42.561714>,  <27.272036, 35.363556, 42.473534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.159731, 34.989910, 42.561714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074955, 0.207648, 0.975328,
		-0.956847, 0.290357, 0.011718,
		-0.280760, -0.934117, 0.220451,
		27.075502, 34.709675, 42.627850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.888367, 35.684032, 42.722530>,  <27.272036, 35.363556, 42.473534>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.888367, 35.684032, 42.722530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764095, 35.880100, 43.048283>,  <27.689533, 35.997742, 43.243732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.764095, 35.880100, 43.048283>,  <27.888367, 35.684032, 42.722530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.764095, 35.880100, 43.048283> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625810, -0.539396, 0.563396,
		0.715431, 0.684683, -0.139171,
		-0.310679, 0.490165, 0.814381,
		27.670891, 36.027149, 43.292599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.494402, 35.963978, 43.191311>,  <27.888367, 35.684032, 42.722530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.494402, 35.963978, 43.191311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160999, 35.925171, 43.408882>,  <27.960958, 35.901886, 43.539425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.160999, 35.925171, 43.408882>,  <28.494402, 35.963978, 43.191311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.160999, 35.925171, 43.408882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.461179, -0.664312, 0.588220,
		0.304271, 0.741133, 0.598449,
		-0.833506, -0.097014, 0.543926,
		27.910948, 35.896069, 43.572060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.655455, 36.038174, 43.954926>,  <28.494402, 35.963978, 43.191311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.655455, 36.038174, 43.954926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317324, 35.834320, 43.890808>,  <28.114445, 35.712006, 43.852337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.317324, 35.834320, 43.890808>,  <28.655455, 36.038174, 43.954926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.317324, 35.834320, 43.890808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.320194, -0.723463, 0.611618,
		-0.427668, 0.465693, 0.774745,
		-0.845326, -0.509639, -0.160290,
		28.063726, 35.681427, 43.842720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.435585, 35.714981, 44.609333>,  <28.655455, 36.038174, 43.954926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.435585, 35.714981, 44.609333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296486, 35.484772, 44.313267>,  <28.213026, 35.346645, 44.135628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.296486, 35.484772, 44.313267>,  <28.435585, 35.714981, 44.609333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.296486, 35.484772, 44.313267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.417718, -0.801861, 0.427235,
		-0.839394, -0.160612, 0.519251,
		-0.347748, -0.575519, -0.740168,
		28.192162, 35.312115, 44.091217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.884335, 35.307598, 44.878544>,  <28.435585, 35.714981, 44.609333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.884335, 35.307598, 44.878544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103014, 35.138084, 44.589676>,  <28.234221, 35.036377, 44.416355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103014, 35.138084, 44.589676>,  <27.884335, 35.307598, 44.878544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103014, 35.138084, 44.589676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278643, -0.721234, 0.634177,
		-0.789609, -0.547929, -0.276210,
		0.546696, -0.423788, -0.722169,
		28.267023, 35.010948, 44.373024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.815598, 34.749249, 45.124691>,  <27.884335, 35.307598, 44.878544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.815598, 34.749249, 45.124691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128237, 34.759861, 44.875404>,  <28.315821, 34.766228, 44.725834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.128237, 34.759861, 44.875404>,  <27.815598, 34.749249, 45.124691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.128237, 34.759861, 44.875404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522262, -0.574155, 0.630546,
		-0.341096, -0.818317, -0.462614,
		0.781598, 0.026529, -0.623218,
		28.362717, 34.767818, 44.688438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.102316, 34.133881, 44.768921>,  <27.815598, 34.749249, 45.124691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.102316, 34.133881, 44.768921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381281, 34.409592, 44.847420>,  <28.548660, 34.575020, 44.894520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381281, 34.409592, 44.847420>,  <28.102316, 34.133881, 44.768921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381281, 34.409592, 44.847420> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471420, -0.647469, 0.598789,
		0.539798, -0.325085, -0.776491,
		0.697411, 0.689278, 0.196250,
		28.590504, 34.616375, 44.906296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.777498, 33.823223, 44.622849>,  <28.102316, 34.133881, 44.768921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.777498, 33.823223, 44.622849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820122, 34.100620, 44.907867>,  <28.845695, 34.267059, 45.078876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.820122, 34.100620, 44.907867>,  <28.777498, 33.823223, 44.622849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.820122, 34.100620, 44.907867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413515, -0.682619, 0.602525,
		0.904240, 0.230443, -0.359507,
		0.106559, 0.693489, 0.712544,
		28.852089, 34.308666, 45.121632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.494791, 34.113014, 44.756195>,  <28.777498, 33.823223, 44.622849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.494791, 34.113014, 44.756195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247284, 34.091412, 45.069679>,  <29.098780, 34.078449, 45.257771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.247284, 34.091412, 45.069679>,  <29.494791, 34.113014, 44.756195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.247284, 34.091412, 45.069679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643150, -0.607689, 0.465910,
		0.451092, 0.792337, 0.410754,
		-0.618768, -0.054008, 0.783715,
		29.061653, 34.075211, 45.304794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.146217, 34.360264, 44.555637>,  <29.494791, 34.113014, 44.756195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.146217, 34.360264, 44.555637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934721, 34.039089, 44.445560>,  <29.807823, 33.846386, 44.379517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.934721, 34.039089, 44.445560>,  <30.146217, 34.360264, 44.555637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.934721, 34.039089, 44.445560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525181, -0.054782, -0.849225,
		0.666798, -0.593544, 0.450652,
		-0.528740, -0.802935, -0.275190,
		29.776098, 33.798210, 44.363003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.611685, 33.831989, 44.195889>,  <30.146217, 34.360264, 44.555637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.611685, 33.831989, 44.195889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249666, 33.709740, 44.077576>,  <30.032455, 33.636391, 44.006588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.249666, 33.709740, 44.077576>,  <30.611685, 33.831989, 44.195889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.249666, 33.709740, 44.077576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361855, -0.187850, -0.913112,
		0.223508, -0.933438, 0.280605,
		-0.905044, -0.305626, -0.295783,
		29.978153, 33.618053, 43.988842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.640551, 33.140923, 43.765182>,  <30.611685, 33.831989, 44.195889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.640551, 33.140923, 43.765182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303518, 33.324451, 43.652370>,  <30.101299, 33.434570, 43.584682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.303518, 33.324451, 43.652370>,  <30.640551, 33.140923, 43.765182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.303518, 33.324451, 43.652370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150697, -0.301888, -0.941357,
		-0.517059, -0.835669, 0.185221,
		-0.842580, 0.458825, -0.282027,
		30.050745, 33.462097, 43.567764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300417, 32.693447, 43.277279>,  <30.640551, 33.140923, 43.765182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300417, 32.693447, 43.277279> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135118, 33.047432, 43.191418>,  <30.035940, 33.259823, 43.139900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.135118, 33.047432, 43.191418>,  <30.300417, 32.693447, 43.277279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.135118, 33.047432, 43.191418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058888, -0.209261, -0.976085,
		-0.908714, -0.416002, 0.034363,
		-0.413244, 0.884959, -0.214656,
		30.011145, 33.312920, 43.127022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.822723, 32.468639, 42.675694>,  <30.300417, 32.693447, 43.277279>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.822723, 32.468639, 42.675694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844862, 32.867676, 42.658993>,  <29.858145, 33.107098, 42.648972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.844862, 32.867676, 42.658993>,  <29.822723, 32.468639, 42.675694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.844862, 32.867676, 42.658993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004536, -0.042067, -0.999105,
		-0.998457, 0.055108, -0.006854,
		0.055347, 0.997594, -0.041752,
		29.861465, 33.166954, 42.646465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.441694, 32.676346, 42.211357>,  <29.822723, 32.468639, 42.675694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.441694, 32.676346, 42.211357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627129, 33.030273, 42.230049>,  <29.738390, 33.242630, 42.241264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.627129, 33.030273, 42.230049>,  <29.441694, 32.676346, 42.211357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.627129, 33.030273, 42.230049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.014348, 0.045235, -0.998873,
		-0.885936, 0.463735, 0.008275,
		0.463586, 0.884819, 0.046728,
		29.766205, 33.295719, 42.244068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.062174, 32.988232, 41.764835>,  <29.441694, 32.676346, 42.211357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.062174, 32.988232, 41.764835> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414730, 33.173489, 41.802040>,  <29.626265, 33.284641, 41.824364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.414730, 33.173489, 41.802040>,  <29.062174, 32.988232, 41.764835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.414730, 33.173489, 41.802040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082225, 0.043468, -0.995665,
		-0.465176, 0.885218, 0.000230,
		0.881391, 0.463141, 0.093007,
		29.679148, 33.312431, 41.829941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.060329, 33.653954, 41.433372>,  <29.062174, 32.988232, 41.764835>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.060329, 33.653954, 41.433372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451078, 33.568977, 41.423672>,  <29.685528, 33.517990, 41.417850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451078, 33.568977, 41.423672>,  <29.060329, 33.653954, 41.433372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451078, 33.568977, 41.423672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020244, 0.204820, -0.978590,
		0.212863, 0.955467, 0.204384,
		0.976872, -0.212443, -0.024256,
		29.744141, 33.505245, 41.416393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.282667, 34.200485, 41.034149>,  <29.060329, 33.653954, 41.433372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.282667, 34.200485, 41.034149> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551758, 33.904541, 41.036835>,  <29.713213, 33.726974, 41.038448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.551758, 33.904541, 41.036835>,  <29.282667, 34.200485, 41.034149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.551758, 33.904541, 41.036835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.216298, 0.187975, -0.958061,
		0.707567, 0.645968, 0.286486,
		0.672729, -0.739859, 0.006716,
		29.753576, 33.682583, 41.038849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.851795, 34.508709, 40.697231>,  <29.282667, 34.200485, 41.034149>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.851795, 34.508709, 40.697231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945976, 34.120064, 40.706463>,  <30.002485, 33.886875, 40.712002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.945976, 34.120064, 40.706463>,  <29.851795, 34.508709, 40.697231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.945976, 34.120064, 40.706463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238971, 0.034857, -0.970401,
		0.942049, 0.233997, 0.240394,
		0.235450, -0.971612, 0.023082,
		30.016611, 33.828579, 40.713387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.543713, 34.440426, 40.301273>,  <29.851795, 34.508709, 40.697231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.543713, 34.440426, 40.301273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372229, 34.079388, 40.285622>,  <30.269339, 33.862766, 40.276230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.372229, 34.079388, 40.285622>,  <30.543713, 34.440426, 40.301273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.372229, 34.079388, 40.285622> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203460, -0.054263, -0.977578,
		0.880234, -0.427058, 0.206906,
		-0.428710, -0.902595, -0.039125,
		30.243616, 33.808609, 40.273884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.102955, 34.003677, 40.018799>,  <30.543713, 34.440426, 40.301273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.102955, 34.003677, 40.018799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746317, 33.836132, 39.949970>,  <30.532333, 33.735603, 39.908672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.746317, 33.836132, 39.949970>,  <31.102955, 34.003677, 40.018799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.746317, 33.836132, 39.949970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219813, -0.068111, -0.973161,
		0.395906, -0.905489, 0.152800,
		-0.891595, -0.418867, -0.172073,
		30.478838, 33.710472, 39.898350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.254053, 33.595039, 39.356750>,  <31.102955, 34.003677, 40.018799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.254053, 33.595039, 39.356750> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855064, 33.583572, 39.382771>,  <30.615671, 33.576691, 39.398384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.855064, 33.583572, 39.382771>,  <31.254053, 33.595039, 39.356750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.855064, 33.583572, 39.382771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065490, 0.014689, -0.997745,
		0.027658, -0.999481, -0.016529,
		-0.997470, -0.028678, 0.065049,
		30.555824, 33.574970, 39.402287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.072895, 33.103550, 38.908173>,  <31.254053, 33.595039, 39.356750>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.072895, 33.103550, 38.908173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749062, 33.335835, 38.942478>,  <30.554762, 33.475204, 38.963062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749062, 33.335835, 38.942478>,  <31.072895, 33.103550, 38.908173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749062, 33.335835, 38.942478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020267, 0.118370, -0.992763,
		-0.586657, -0.805461, -0.084061,
		-0.809582, 0.580708, 0.085767,
		30.506187, 33.510048, 38.968208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.470274, 32.800152, 38.537743>,  <31.072895, 33.103550, 38.908173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.470274, 32.800152, 38.537743> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309128, 33.163654, 38.581314>,  <30.212440, 33.381756, 38.607456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309128, 33.163654, 38.581314>,  <30.470274, 32.800152, 38.537743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309128, 33.163654, 38.581314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381658, -0.058628, -0.922443,
		-0.831887, -0.413194, 0.370452,
		-0.402867, 0.908754, 0.108927,
		30.188269, 33.436279, 38.613991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.807930, 32.703003, 38.387527>,  <30.470274, 32.800152, 38.537743>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.807930, 32.703003, 38.387527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849716, 33.097122, 38.333447>,  <29.874788, 33.333591, 38.300995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.849716, 33.097122, 38.333447>,  <29.807930, 32.703003, 38.387527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.849716, 33.097122, 38.333447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.350330, -0.090780, -0.932216,
		-0.930782, 0.144751, 0.335695,
		0.104465, 0.985295, -0.135207,
		29.881056, 33.392712, 38.292885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.311783, 32.995182, 37.865658>,  <29.807930, 32.703003, 38.387527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.311783, 32.995182, 37.865658> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573084, 33.297871, 37.855648>,  <29.729864, 33.479485, 37.849644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.573084, 33.297871, 37.855648>,  <29.311783, 32.995182, 37.865658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.573084, 33.297871, 37.855648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335310, 0.259514, -0.905660,
		-0.678841, 0.600017, 0.423266,
		0.653255, 0.756725, -0.025023,
		29.769060, 33.524887, 37.848141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.952448, 33.533295, 37.661987>,  <29.311783, 32.995182, 37.865658>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.952448, 33.533295, 37.661987> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332294, 33.616283, 37.568020>,  <29.560202, 33.666077, 37.511639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.332294, 33.616283, 37.568020>,  <28.952448, 33.533295, 37.661987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.332294, 33.616283, 37.568020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277951, 0.211162, -0.937098,
		-0.144814, 0.955179, 0.258189,
		0.949617, 0.207469, -0.234914,
		29.617180, 33.678524, 37.497547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.906078, 34.141289, 37.223251>,  <28.952448, 33.533295, 37.661987>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.906078, 34.141289, 37.223251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287630, 34.049057, 37.146362>,  <29.516562, 33.993717, 37.100231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.287630, 34.049057, 37.146362>,  <28.906078, 34.141289, 37.223251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.287630, 34.049057, 37.146362> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161717, 0.144755, -0.976163,
		0.252909, 0.962226, 0.100790,
		0.953879, -0.230581, -0.192218,
		29.573793, 33.979881, 37.088696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.217646, 34.710297, 36.827560>,  <28.906078, 34.141289, 37.223251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.217646, 34.710297, 36.827560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451965, 34.396667, 36.745514>,  <29.592558, 34.208492, 36.696285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.451965, 34.396667, 36.745514>,  <29.217646, 34.710297, 36.827560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451965, 34.396667, 36.745514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.107088, 0.175984, -0.978551,
		0.803351, 0.595199, 0.019126,
		0.585799, -0.784071, -0.205115,
		29.627705, 34.161446, 36.683979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.870058, 35.016235, 36.473209>,  <29.217646, 34.710297, 36.827560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.870058, 35.016235, 36.473209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803493, 34.629856, 36.393951>,  <29.763556, 34.398029, 36.346397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.803493, 34.629856, 36.393951>,  <29.870058, 35.016235, 36.473209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.803493, 34.629856, 36.393951> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.005852, 0.199972, -0.979784,
		0.986039, -0.164206, -0.027625,
		-0.166411, -0.965944, -0.198141,
		29.753571, 34.340073, 36.334511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.204048, 34.872658, 35.818489>,  <29.870058, 35.016235, 36.473209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.204048, 34.872658, 35.818489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927483, 34.589115, 35.874294>,  <29.761543, 34.418991, 35.907776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.927483, 34.589115, 35.874294>,  <30.204048, 34.872658, 35.818489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.927483, 34.589115, 35.874294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304430, 0.110736, -0.946076,
		0.655185, -0.696604, -0.292362,
		-0.691416, -0.708858, 0.139514,
		29.720058, 34.376457, 35.916149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.279665, 34.395153, 35.216068>,  <30.204048, 34.872658, 35.818489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.279665, 34.395153, 35.216068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913805, 34.364952, 35.374920>,  <29.694288, 34.346832, 35.470230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.913805, 34.364952, 35.374920>,  <30.279665, 34.395153, 35.216068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.913805, 34.364952, 35.374920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404241, 0.167480, -0.899188,
		0.001375, -0.982981, -0.183704,
		-0.914652, -0.075497, 0.397131,
		29.639410, 34.342300, 35.494061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.881269, 34.021175, 34.689674>,  <30.279665, 34.395153, 35.216068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.881269, 34.021175, 34.689674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596468, 34.182552, 34.919556>,  <29.425587, 34.279381, 35.057484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596468, 34.182552, 34.919556>,  <29.881269, 34.021175, 34.689674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596468, 34.182552, 34.919556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486217, 0.307224, -0.818050,
		-0.506602, -0.861884, -0.022581,
		-0.712002, 0.403447, 0.574703,
		29.382868, 34.303585, 35.091965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202074, 34.597084, 34.500214>,  <29.881269, 34.021175, 34.689674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202074, 34.597084, 34.500214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489666, 34.726490, 34.254154>,  <30.662220, 34.804134, 34.106518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.489666, 34.726490, 34.254154>,  <30.202074, 34.597084, 34.500214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.489666, 34.726490, 34.254154> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285041, 0.669963, 0.685494,
		0.633892, -0.668199, 0.389476,
		0.718981, 0.323512, -0.615147,
		30.705360, 34.823544, 34.069611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.986610, 34.411556, 34.626274>,  <30.202074, 34.597084, 34.500214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.986610, 34.411556, 34.626274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955875, 34.774551, 34.461079>,  <30.937435, 34.992348, 34.361961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.955875, 34.774551, 34.461079>,  <30.986610, 34.411556, 34.626274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.955875, 34.774551, 34.461079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515696, 0.390674, 0.762517,
		0.853320, -0.154386, -0.498007,
		-0.076836, 0.907491, -0.412986,
		30.932825, 35.046799, 34.337181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.613735, 34.744091, 34.653324>,  <30.986610, 34.411556, 34.626274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.613735, 34.744091, 34.653324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325438, 35.020782, 34.671364>,  <31.152458, 35.186798, 34.682186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.325438, 35.020782, 34.671364>,  <31.613735, 34.744091, 34.653324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.325438, 35.020782, 34.671364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376783, 0.336315, 0.863092,
		0.581861, 0.639061, -0.503030,
		-0.720744, 0.691732, 0.045099,
		31.109215, 35.228302, 34.684895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.824318, 35.512798, 34.737961>,  <31.613735, 34.744091, 34.653324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.824318, 35.512798, 34.737961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474512, 35.412197, 34.903835>,  <31.264627, 35.351837, 35.003361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.474512, 35.412197, 34.903835>,  <31.824318, 35.512798, 34.737961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.474512, 35.412197, 34.903835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.343257, 0.283078, 0.895567,
		-0.342630, 0.925533, -0.161225,
		-0.874516, -0.251507, 0.414687,
		31.212156, 35.336746, 35.028240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.365997, 36.048050, 35.068581>,  <31.824318, 35.512798, 34.737961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.365997, 36.048050, 35.068581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317415, 35.712090, 35.280167>,  <31.288265, 35.510513, 35.407120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.317415, 35.712090, 35.280167>,  <31.365997, 36.048050, 35.068581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.317415, 35.712090, 35.280167> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146814, 0.511852, 0.846436,
		-0.981679, 0.180466, 0.061142,
		-0.121457, -0.839905, 0.528969,
		31.280977, 35.460117, 35.438858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.977699, 36.084457, 35.809540>,  <31.365997, 36.048050, 35.068581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.977699, 36.084457, 35.809540> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237265, 35.789913, 35.886150>,  <31.393003, 35.613186, 35.932117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.237265, 35.789913, 35.886150>,  <30.977699, 36.084457, 35.809540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.237265, 35.789913, 35.886150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134165, 0.358522, 0.923830,
		-0.748938, -0.573791, 0.331444,
		0.648915, -0.736360, 0.191528,
		31.431940, 35.569004, 35.943607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.709223, 35.793194, 36.364223>,  <30.977699, 36.084457, 35.809540>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.709223, 35.793194, 36.364223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093550, 35.682404, 36.359943>,  <31.324146, 35.615929, 36.357376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.093550, 35.682404, 36.359943>,  <30.709223, 35.793194, 36.364223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.093550, 35.682404, 36.359943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087836, 0.267616, 0.959514,
		-0.262902, -0.922856, 0.281459,
		0.960816, -0.276981, -0.010703,
		31.381794, 35.599308, 36.356731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.815723, 35.480499, 36.985855>,  <30.709223, 35.793194, 36.364223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.815723, 35.480499, 36.985855> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189116, 35.570621, 36.874245>,  <31.413151, 35.624695, 36.807278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.189116, 35.570621, 36.874245>,  <30.815723, 35.480499, 36.985855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.189116, 35.570621, 36.874245> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183032, 0.369772, 0.910916,
		0.308409, -0.901392, 0.303937,
		0.933479, 0.225304, -0.279024,
		31.469160, 35.638214, 36.790539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.186384, 35.171421, 37.447422>,  <30.815723, 35.480499, 36.985855>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.186384, 35.171421, 37.447422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427734, 35.453796, 37.299049>,  <31.572544, 35.623222, 37.210026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.427734, 35.453796, 37.299049>,  <31.186384, 35.171421, 37.447422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.427734, 35.453796, 37.299049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113677, 0.384257, 0.916201,
		0.789314, -0.594979, 0.151602,
		0.603375, 0.705937, -0.370934,
		31.608747, 35.665577, 37.187771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.702898, 35.272591, 37.961803>,  <31.186384, 35.171421, 37.447422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.702898, 35.272591, 37.961803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774244, 35.611099, 37.761002>,  <31.817053, 35.814205, 37.640518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.774244, 35.611099, 37.761002>,  <31.702898, 35.272591, 37.961803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.774244, 35.611099, 37.761002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413723, 0.398398, 0.818604,
		0.892759, -0.353705, -0.279060,
		0.178367, 0.846269, -0.502009,
		31.827755, 35.864979, 37.610397>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.348442, 35.434624, 38.113953>,  <31.702898, 35.272591, 37.961803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.348442, 35.434624, 38.113953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246441, 35.788166, 37.957104>,  <32.185238, 36.000294, 37.862995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.246441, 35.788166, 37.957104>,  <32.348442, 35.434624, 38.113953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.246441, 35.788166, 37.957104> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.535396, 0.466759, 0.703908,
		0.805185, -0.030442, -0.592242,
		-0.255006, 0.883860, -0.392127,
		32.169941, 36.053326, 37.839466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.011608, 35.865936, 37.968212>,  <32.348442, 35.434624, 38.113953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.011608, 35.865936, 37.968212> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713589, 36.125473, 38.030067>,  <32.534779, 36.281197, 38.067181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.713589, 36.125473, 38.030067>,  <33.011608, 35.865936, 37.968212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.713589, 36.125473, 38.030067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486819, 0.370474, 0.791048,
		0.455975, 0.664646, -0.591888,
		-0.745046, 0.648841, 0.154635,
		32.490074, 36.320126, 38.076458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318989, 36.524681, 37.957760>,  <33.011608, 35.865936, 37.968212>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318989, 36.524681, 37.957760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969318, 36.602451, 38.135757>,  <32.759518, 36.649113, 38.242554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.969318, 36.602451, 38.135757>,  <33.318989, 36.524681, 37.957760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.969318, 36.602451, 38.135757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485112, 0.391134, 0.782100,
		-0.021990, 0.899562, -0.436239,
		-0.874175, 0.194426, 0.444990,
		32.707066, 36.660778, 38.269253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.262852, 37.284473, 38.038200>,  <33.318989, 36.524681, 37.957760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.262852, 37.284473, 38.038200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055176, 37.071758, 38.305824>,  <32.930569, 36.944130, 38.466400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.055176, 37.071758, 38.305824>,  <33.262852, 37.284473, 38.038200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.055176, 37.071758, 38.305824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506797, 0.438790, 0.742037,
		-0.688182, 0.724339, 0.041690,
		-0.519194, -0.531785, 0.669061,
		32.899418, 36.912224, 38.506542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202358, 37.643829, 38.660732>,  <33.262852, 37.284473, 38.038200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202358, 37.643829, 38.660732> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108925, 37.271229, 38.772259>,  <33.052864, 37.047668, 38.839176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.108925, 37.271229, 38.772259>,  <33.202358, 37.643829, 38.660732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.108925, 37.271229, 38.772259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.468288, 0.143530, 0.871840,
		-0.852141, 0.334218, 0.402684,
		-0.233588, -0.931503, 0.278818,
		33.038849, 36.991779, 38.855904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924809, 37.722290, 39.337254>,  <33.202358, 37.643829, 38.660732>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924809, 37.722290, 39.337254> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047035, 37.343929, 39.293617>,  <33.120373, 37.116913, 39.267437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.047035, 37.343929, 39.293617>,  <32.924809, 37.722290, 39.337254>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.047035, 37.343929, 39.293617> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418575, 0.030541, 0.907669,
		-0.855232, -0.323017, 0.405262,
		0.305569, -0.945900, -0.109087,
		33.138706, 37.060158, 39.260891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.777615, 37.368633, 40.014679>,  <32.924809, 37.722290, 39.337254>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.777615, 37.368633, 40.014679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056946, 37.150208, 39.829571>,  <33.224545, 37.019150, 39.718506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.056946, 37.150208, 39.829571>,  <32.777615, 37.368633, 40.014679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.056946, 37.150208, 39.829571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.413131, -0.220472, 0.883581,
		-0.584521, -0.808210, 0.071636,
		0.698325, -0.546067, -0.462767,
		33.266445, 36.986389, 39.690742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926464, 36.876827, 40.489559>,  <32.777615, 37.368633, 40.014679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926464, 36.876827, 40.489559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236176, 36.815830, 40.243881>,  <33.422005, 36.779232, 40.096474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.236176, 36.815830, 40.243881>,  <32.926464, 36.876827, 40.489559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.236176, 36.815830, 40.243881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567336, -0.262733, 0.780449,
		-0.280383, -0.952742, -0.116913,
		0.774283, -0.152496, -0.614191,
		33.468460, 36.770081, 40.059624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256542, 36.251663, 40.685268>,  <32.926464, 36.876827, 40.489559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256542, 36.251663, 40.685268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542961, 36.464661, 40.504719>,  <33.714813, 36.592457, 40.396389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.542961, 36.464661, 40.504719>,  <33.256542, 36.251663, 40.685268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.542961, 36.464661, 40.504719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666876, -0.330721, 0.667757,
		0.206295, -0.779153, -0.591915,
		0.716044, 0.532489, -0.451372,
		33.757774, 36.624409, 40.369308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.730099, 35.727444, 40.452816>,  <33.256542, 36.251663, 40.685268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.730099, 35.727444, 40.452816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932606, 36.071716, 40.474445>,  <34.054111, 36.278278, 40.487423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.932606, 36.071716, 40.474445>,  <33.730099, 35.727444, 40.452816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932606, 36.071716, 40.474445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642889, -0.418462, 0.641548,
		0.574794, -0.290033, -0.765175,
		0.506266, 0.860680, 0.054071,
		34.084484, 36.329922, 40.490665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458649, 35.584419, 40.264214>,  <33.730099, 35.727444, 40.452816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458649, 35.584419, 40.264214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394623, 35.904942, 40.494789>,  <34.356205, 36.097256, 40.633137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.394623, 35.904942, 40.494789>,  <34.458649, 35.584419, 40.264214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.394623, 35.904942, 40.494789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628201, -0.367755, 0.685653,
		0.761408, 0.471872, -0.444517,
		-0.160067, 0.801307, 0.576442,
		34.346603, 36.145332, 40.667721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.126945, 35.698456, 40.609699>,  <34.458649, 35.584419, 40.264214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.126945, 35.698456, 40.609699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851257, 35.883240, 40.832973>,  <34.685844, 35.994110, 40.966938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.851257, 35.883240, 40.832973>,  <35.126945, 35.698456, 40.609699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.851257, 35.883240, 40.832973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427215, -0.363126, 0.828025,
		0.585205, 0.809156, 0.052918,
		-0.689218, 0.461958, 0.558188,
		34.644493, 36.021828, 41.000431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.502712, 35.650131, 41.200462>,  <35.126945, 35.698456, 40.609699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.502712, 35.650131, 41.200462> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174194, 35.839947, 41.327133>,  <34.977081, 35.953838, 41.403133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.174194, 35.839947, 41.327133>,  <35.502712, 35.650131, 41.200462>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.174194, 35.839947, 41.327133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284060, -0.141229, 0.948348,
		0.494754, 0.868830, -0.018807,
		-0.821297, 0.474541, 0.316673,
		34.927807, 35.982307, 41.422134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.719532, 35.931248, 41.756367>,  <35.502712, 35.650131, 41.200462>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.719532, 35.931248, 41.756367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330311, 35.958000, 41.844627>,  <35.096779, 35.974052, 41.897583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.330311, 35.958000, 41.844627>,  <35.719532, 35.931248, 41.756367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.330311, 35.958000, 41.844627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188855, -0.317833, 0.929148,
		0.132270, 0.945785, 0.296639,
		-0.973056, 0.066877, 0.220656,
		35.038395, 35.978062, 41.910824>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.690620, 36.261833, 42.448170>,  <35.719532, 35.931248, 41.756367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.690620, 36.261833, 42.448170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339924, 36.076866, 42.395260>,  <35.129505, 35.965885, 42.363514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.339924, 36.076866, 42.395260>,  <35.690620, 36.261833, 42.448170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.339924, 36.076866, 42.395260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.009621, -0.291818, 0.956426,
		-0.480868, 0.837264, 0.260297,
		-0.876740, -0.462418, -0.132271,
		35.076900, 35.938141, 42.355579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.191776, 36.503220, 42.969009>,  <35.690620, 36.261833, 42.448170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.191776, 36.503220, 42.969009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050419, 36.147686, 42.852329>,  <34.965607, 35.934364, 42.782322>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.050419, 36.147686, 42.852329>,  <35.191776, 36.503220, 42.969009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.050419, 36.147686, 42.852329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.118912, -0.266606, 0.956442,
		-0.927887, 0.372684, -0.011477,
		-0.353391, -0.888835, -0.291697,
		34.944401, 35.881035, 42.764820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.490063, 36.372555, 43.277328>,  <35.191776, 36.503220, 42.969009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.490063, 36.372555, 43.277328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644062, 36.014328, 43.188114>,  <34.736462, 35.799393, 43.134586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.644062, 36.014328, 43.188114>,  <34.490063, 36.372555, 43.277328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.644062, 36.014328, 43.188114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064805, -0.267297, 0.961433,
		-0.920640, -0.355694, -0.160945,
		0.384996, -0.895564, -0.223033,
		34.759560, 35.745659, 43.121204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.125336, 35.882576, 43.699963>,  <34.490063, 36.372555, 43.277328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.125336, 35.882576, 43.699963> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440861, 35.665977, 43.583649>,  <34.630177, 35.536018, 43.513859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.440861, 35.665977, 43.583649>,  <34.125336, 35.882576, 43.699963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.440861, 35.665977, 43.583649> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086437, -0.370674, 0.924732,
		-0.608530, -0.754572, -0.245585,
		0.788809, -0.541500, -0.290789,
		34.677502, 35.503529, 43.496410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.035656, 35.194088, 43.911713>,  <34.125336, 35.882576, 43.699963>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.035656, 35.194088, 43.911713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428467, 35.224560, 43.842636>,  <34.664154, 35.242844, 43.801189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.428467, 35.224560, 43.842636>,  <34.035656, 35.194088, 43.911713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.428467, 35.224560, 43.842636> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188203, -0.325620, 0.926580,
		0.014353, -0.942427, -0.334104,
		0.982026, 0.076178, -0.172694,
		34.723076, 35.247414, 43.790829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.335972, 34.577709, 44.098763>,  <34.035656, 35.194088, 43.911713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.335972, 34.577709, 44.098763> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610725, 34.868366, 44.104206>,  <34.775578, 35.042759, 44.107471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.610725, 34.868366, 44.104206>,  <34.335972, 34.577709, 44.098763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.610725, 34.868366, 44.104206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212561, -0.218765, 0.952345,
		0.694992, -0.651253, -0.304721,
		0.686880, 0.726644, 0.013609,
		34.816788, 35.086361, 44.108288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.849579, 34.231476, 44.426060>,  <34.335972, 34.577709, 44.098763>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.849579, 34.231476, 44.426060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932270, 34.622166, 44.448929>,  <34.981884, 34.856579, 44.462650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.932270, 34.622166, 44.448929>,  <34.849579, 34.231476, 44.426060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.932270, 34.622166, 44.448929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219675, -0.103282, 0.970090,
		0.953418, -0.187985, -0.235914,
		0.206728, 0.976726, 0.057175,
		34.994289, 34.915184, 44.466080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.580139, 34.324383, 44.768990>,  <34.849579, 34.231476, 44.426060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.580139, 34.324383, 44.768990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380219, 34.669785, 44.795990>,  <35.260265, 34.877026, 44.812191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.380219, 34.669785, 44.795990>,  <35.580139, 34.324383, 44.768990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.380219, 34.669785, 44.795990> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215244, 0.048340, 0.975363,
		0.838971, 0.502014, -0.210025,
		-0.499798, 0.863508, 0.067499,
		35.230278, 34.928837, 44.816238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.986656, 34.678223, 45.156609>,  <35.580139, 34.324383, 44.768990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.986656, 34.678223, 45.156609> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663532, 34.912457, 45.183525>,  <35.469658, 35.052998, 45.199677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.663532, 34.912457, 45.183525>,  <35.986656, 34.678223, 45.156609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.663532, 34.912457, 45.183525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.146429, 0.088780, 0.985229,
		0.570964, 0.805733, -0.157464,
		-0.807811, 0.585588, 0.067292,
		35.421188, 35.088131, 45.203712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.202614, 35.288910, 45.511646>,  <35.986656, 34.678223, 45.156609>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.202614, 35.288910, 45.511646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805225, 35.281849, 45.556728>,  <35.566792, 35.277615, 45.583778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.805225, 35.281849, 45.556728>,  <36.202614, 35.288910, 45.511646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.805225, 35.281849, 45.556728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110607, 0.092812, 0.989521,
		-0.027926, 0.995527, -0.090254,
		-0.993472, -0.017651, 0.112704,
		35.507183, 35.276554, 45.590538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120655, 35.852715, 45.862507>,  <36.202614, 35.288910, 45.511646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120655, 35.852715, 45.862507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792347, 35.628578, 45.906967>,  <35.595360, 35.494099, 45.933643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.792347, 35.628578, 45.906967>,  <36.120655, 35.852715, 45.862507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.792347, 35.628578, 45.906967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.089971, 0.065340, 0.993799,
		-0.564124, 0.825684, -0.003215,
		-0.820774, -0.560337, 0.111148,
		35.546116, 35.460476, 45.940311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.756901, 36.197899, 46.340778>,  <36.120655, 35.852715, 45.862507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.756901, 36.197899, 46.340778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616302, 35.823925, 46.360195>,  <35.531944, 35.599541, 46.371845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.616302, 35.823925, 46.360195>,  <35.756901, 36.197899, 46.340778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.616302, 35.823925, 46.360195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165511, 0.113092, 0.979702,
		-0.921443, 0.336326, -0.194493,
		-0.351495, -0.934931, 0.048542,
		35.510853, 35.543446, 46.374760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.371193, 36.274872, 46.924747>,  <35.756901, 36.197899, 46.340778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.371193, 36.274872, 46.924747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328789, 35.878986, 46.886330>,  <35.303349, 35.641453, 46.863277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.328789, 35.878986, 46.886330>,  <35.371193, 36.274872, 46.924747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.328789, 35.878986, 46.886330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148339, -0.079772, 0.985714,
		-0.983239, 0.118741, -0.138357,
		-0.106008, -0.989716, -0.096049,
		35.296986, 35.582073, 46.857513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.791447, 36.145123, 47.303722>,  <35.371193, 36.274872, 46.924747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.791447, 36.145123, 47.303722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005474, 35.809277, 47.266308>,  <35.133888, 35.607769, 47.243858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.005474, 35.809277, 47.266308>,  <34.791447, 36.145123, 47.303722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.005474, 35.809277, 47.266308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008294, -0.105496, 0.994385,
		-0.844770, -0.532837, -0.049483,
		0.535066, -0.839616, -0.093539,
		35.165993, 35.557392, 47.238247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.393871, 35.590717, 47.804283>,  <34.791447, 36.145123, 47.303722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.393871, 35.590717, 47.804283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774055, 35.473560, 47.762638>,  <35.002167, 35.403267, 47.737652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.774055, 35.473560, 47.762638>,  <34.393871, 35.590717, 47.804283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.774055, 35.473560, 47.762638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031626, -0.242071, 0.969743,
		-0.309234, -0.924995, -0.220816,
		0.950460, -0.292894, -0.104111,
		35.059193, 35.385693, 47.731403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.504459, 35.059105, 48.229095>,  <34.393871, 35.590717, 47.804283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.504459, 35.059105, 48.229095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892220, 35.134293, 48.165932>,  <35.124874, 35.179405, 48.128033>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.892220, 35.134293, 48.165932>,  <34.504459, 35.059105, 48.229095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.892220, 35.134293, 48.165932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208330, -0.289566, 0.934211,
		0.129881, -0.938519, -0.319865,
		0.969397, 0.187973, -0.157913,
		35.183037, 35.190685, 48.118557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.845497, 34.488392, 48.475220>,  <34.504459, 35.059105, 48.229095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.845497, 34.488392, 48.475220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138721, 34.759895, 48.457714>,  <35.314655, 34.922798, 48.447212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.138721, 34.759895, 48.457714>,  <34.845497, 34.488392, 48.475220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.138721, 34.759895, 48.457714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353463, -0.325190, 0.877106,
		0.581108, -0.658440, -0.478298,
		0.733060, 0.678755, -0.043764,
		35.358639, 34.963520, 48.444584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.349407, 34.151276, 48.813236>,  <34.845497, 34.488392, 48.475220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.349407, 34.151276, 48.813236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485340, 34.527203, 48.827381>,  <35.566902, 34.752758, 48.835869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.485340, 34.527203, 48.827381>,  <35.349407, 34.151276, 48.813236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.485340, 34.527203, 48.827381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207361, -0.111550, 0.971884,
		0.917341, -0.322947, -0.232790,
		0.339834, 0.939820, 0.035363,
		35.587292, 34.809147, 48.837990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950779, 34.179409, 49.317917>,  <35.349407, 34.151276, 48.813236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950779, 34.179409, 49.317917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816502, 34.555805, 49.300705>,  <35.735935, 34.781643, 49.290379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.816502, 34.555805, 49.300705>,  <35.950779, 34.179409, 49.317917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.816502, 34.555805, 49.300705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220544, 0.122925, 0.967600,
		0.915789, 0.315327, -0.248795,
		-0.335693, 0.940988, -0.043030,
		35.715794, 34.838100, 49.287796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.383038, 34.610706, 49.547985>,  <35.950779, 34.179409, 49.317917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.383038, 34.610706, 49.547985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047249, 34.814243, 49.624275>,  <35.845776, 34.936363, 49.670052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.047249, 34.814243, 49.624275>,  <36.383038, 34.610706, 49.547985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.047249, 34.814243, 49.624275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232893, 0.019771, 0.972301,
		0.490973, 0.860635, -0.135102,
		-0.839468, 0.508838, 0.190729,
		35.795410, 34.966896, 49.681496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.597462, 35.138489, 50.071766>,  <36.383038, 34.610706, 49.547985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.597462, 35.138489, 50.071766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198723, 35.110374, 50.086479>,  <35.959480, 35.093506, 50.095306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.198723, 35.110374, 50.086479>,  <36.597462, 35.138489, 50.071766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.198723, 35.110374, 50.086479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038444, -0.022424, 0.999009,
		-0.069396, 0.997274, 0.025055,
		-0.996848, -0.070290, 0.036783,
		35.899670, 35.089287, 50.097515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261517, 35.661758, 50.560650>,  <36.597462, 35.138489, 50.071766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261517, 35.661758, 50.560650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022289, 35.345566, 50.507797>,  <35.878754, 35.155849, 50.476086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.022289, 35.345566, 50.507797>,  <36.261517, 35.661758, 50.560650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.022289, 35.345566, 50.507797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151443, -0.050426, 0.987179,
		-0.787005, 0.610412, -0.089554,
		-0.598070, -0.790477, -0.132128,
		35.842869, 35.108421, 50.468159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.648418, 35.725872, 51.088493>,  <36.261517, 35.661758, 50.560650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.648418, 35.725872, 51.088493> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667511, 35.343876, 50.971382>,  <35.678967, 35.114677, 50.901115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.667511, 35.343876, 50.971382>,  <35.648418, 35.725872, 51.088493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.667511, 35.343876, 50.971382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460350, -0.281162, 0.842037,
		-0.886454, 0.094593, -0.453048,
		0.047729, -0.954987, -0.292783,
		35.681831, 35.057381, 50.883549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.900318, 35.359875, 50.938503>,  <35.648418, 35.725872, 51.088493>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.900318, 35.359875, 50.938503> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201565, 35.133743, 51.073090>,  <35.382313, 34.998062, 51.153839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.201565, 35.133743, 51.073090>,  <34.900318, 35.359875, 50.938503>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.201565, 35.133743, 51.073090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590412, -0.355192, 0.724743,
		-0.290209, -0.744473, -0.601280,
		0.753122, -0.565330, 0.336466,
		35.427502, 34.964142, 51.174030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.626740, 34.646194, 51.005096>,  <34.900318, 35.359875, 50.938503>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.626740, 34.646194, 51.005096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930233, 34.723549, 51.253910>,  <35.112328, 34.769962, 51.403198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.930233, 34.723549, 51.253910>,  <34.626740, 34.646194, 51.005096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.930233, 34.723549, 51.253910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508186, -0.421668, 0.750961,
		0.407519, -0.885888, -0.221656,
		0.758733, 0.193389, 0.622033,
		35.157852, 34.781567, 51.440521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844528, 34.073746, 51.419434>,  <34.626740, 34.646194, 51.005096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844528, 34.073746, 51.419434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913120, 34.407730, 51.628597>,  <34.954277, 34.608120, 51.754097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.913120, 34.407730, 51.628597>,  <34.844528, 34.073746, 51.419434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.913120, 34.407730, 51.628597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.259247, -0.473824, 0.841595,
		0.950465, -0.279883, 0.135207,
		0.171484, 0.834959, 0.522913,
		34.964565, 34.658218, 51.785473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.303146, 33.956188, 51.922871>,  <34.844528, 34.073746, 51.419434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.303146, 33.956188, 51.922871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125980, 34.276360, 52.084431>,  <35.019680, 34.468464, 52.181366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.125980, 34.276360, 52.084431>,  <35.303146, 33.956188, 51.922871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.125980, 34.276360, 52.084431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229177, -0.536606, 0.812116,
		0.866777, 0.267136, 0.421112,
		-0.442917, 0.800432, 0.403896,
		34.993107, 34.516491, 52.205601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.698807, 34.518074, 52.368382>,  <35.303146, 33.956188, 51.922871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.698807, 34.518074, 52.368382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324062, 34.476746, 52.502014>,  <35.099216, 34.451946, 52.582191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324062, 34.476746, 52.502014>,  <35.698807, 34.518074, 52.368382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324062, 34.476746, 52.502014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342066, -0.469194, 0.814154,
		0.072627, 0.877030, 0.474915,
		-0.936865, -0.103323, 0.334078,
		35.043003, 34.445747, 52.602238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.111881, 33.820198, 52.673809>,  <35.698807, 34.518074, 52.368382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.111881, 33.820198, 52.673809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486439, 33.853394, 52.537411>,  <36.711174, 33.873310, 52.455574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.486439, 33.853394, 52.537411>,  <36.111881, 33.820198, 52.673809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.486439, 33.853394, 52.537411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213410, -0.636690, -0.741001,
		-0.278603, 0.766641, -0.578482,
		0.936396, 0.082992, -0.340993,
		36.767357, 33.878292, 52.435112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.088436, 34.020081, 51.949463>,  <36.111881, 33.820198, 52.673809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.088436, 34.020081, 51.949463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408363, 33.798676, 52.042347>,  <36.600319, 33.665833, 52.098076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.408363, 33.798676, 52.042347>,  <36.088436, 34.020081, 51.949463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.408363, 33.798676, 52.042347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240280, -0.649750, -0.721173,
		0.550056, 0.521009, -0.652678,
		0.799815, -0.553511, 0.232211,
		36.648308, 33.632622, 52.112011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.632408, 33.929569, 51.417679>,  <36.088436, 34.020081, 51.949463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.632408, 33.929569, 51.417679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639290, 33.602676, 51.648098>,  <36.643421, 33.406540, 51.786350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.639290, 33.602676, 51.648098>,  <36.632408, 33.929569, 51.417679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.639290, 33.602676, 51.648098> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157261, -0.571175, -0.805623,
		0.987407, -0.076728, -0.138347,
		0.017206, -0.817234, 0.576048,
		36.644451, 33.357506, 51.820911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144669, 33.381641, 51.299950>,  <36.632408, 33.929569, 51.417679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144669, 33.381641, 51.299950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822376, 33.189533, 51.438591>,  <36.629002, 33.074268, 51.521774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.822376, 33.189533, 51.438591>,  <37.144669, 33.381641, 51.299950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.822376, 33.189533, 51.438591> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031805, -0.549276, -0.835036,
		0.591422, -0.683841, 0.427296,
		-0.805734, -0.480269, 0.346604,
		36.580654, 33.045452, 51.542572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.142155, 32.644058, 51.202744>,  <37.144669, 33.381641, 51.299950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.142155, 32.644058, 51.202744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760441, 32.763603, 51.201210>,  <36.531410, 32.835331, 51.200291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.760441, 32.763603, 51.201210>,  <37.142155, 32.644058, 51.202744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.760441, 32.763603, 51.201210> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195539, -0.633951, -0.748245,
		-0.226054, -0.713292, 0.663412,
		-0.954287, 0.298867, -0.003830,
		36.474155, 32.853264, 51.200062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.680660, 32.073956, 51.333992>,  <37.142155, 32.644058, 51.202744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.680660, 32.073956, 51.333992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526283, 32.357075, 51.097328>,  <36.433655, 32.526947, 50.955330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.526283, 32.357075, 51.097328>,  <36.680660, 32.073956, 51.333992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.526283, 32.357075, 51.097328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030967, -0.650933, -0.758503,
		-0.922002, -0.274419, 0.273143,
		-0.385945, 0.707800, -0.591663,
		36.410500, 32.569416, 50.919830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.083069, 31.733114, 51.173611>,  <36.680660, 32.073956, 51.333992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.083069, 31.733114, 51.173611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176544, 32.008553, 50.899025>,  <36.232628, 32.173817, 50.734276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.176544, 32.008553, 50.899025>,  <36.083069, 31.733114, 51.173611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.176544, 32.008553, 50.899025> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.188977, -0.660380, -0.726764,
		-0.953771, 0.299558, -0.024192,
		0.233684, 0.688595, -0.686461,
		36.246651, 32.215130, 50.693089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.743916, 31.553957, 50.650940>,  <36.083069, 31.733114, 51.173611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.743916, 31.553957, 50.650940> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977261, 31.814550, 50.456928>,  <36.117268, 31.970907, 50.340523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.977261, 31.814550, 50.456928>,  <35.743916, 31.553957, 50.650940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.977261, 31.814550, 50.456928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125949, -0.517386, -0.846433,
		-0.802385, 0.554868, -0.219771,
		0.583365, 0.651486, -0.485028,
		36.152271, 32.009995, 50.311420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.425903, 31.741695, 50.030090>,  <35.743916, 31.553957, 50.650940>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.425903, 31.741695, 50.030090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807602, 31.828503, 49.947803>,  <36.036621, 31.880587, 49.898434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.807602, 31.828503, 49.947803>,  <35.425903, 31.741695, 50.030090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807602, 31.828503, 49.947803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061381, -0.531138, -0.845059,
		-0.292655, 0.819021, -0.493516,
		0.954246, 0.217018, -0.205713,
		36.093876, 31.893608, 49.886089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.450401, 32.074314, 49.383034>,  <35.425903, 31.741695, 50.030090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.450401, 32.074314, 49.383034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808399, 31.909416, 49.451199>,  <36.023197, 31.810476, 49.492096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.808399, 31.909416, 49.451199>,  <35.450401, 32.074314, 49.383034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.808399, 31.909416, 49.451199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.062387, -0.493933, -0.867259,
		0.441696, 0.765560, -0.467786,
		0.894993, -0.412248, 0.170408,
		36.076897, 31.785742, 49.502319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.862854, 32.186993, 48.740784>,  <35.450401, 32.074314, 49.383034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.862854, 32.186993, 48.740784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083576, 31.911558, 48.928978>,  <36.216011, 31.746296, 49.041893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.083576, 31.911558, 48.928978>,  <35.862854, 32.186993, 48.740784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.083576, 31.911558, 48.928978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297452, -0.364543, -0.882400,
		0.779123, 0.626860, 0.003665,
		0.551805, -0.688589, 0.470485,
		36.249119, 31.704981, 49.070122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.537678, 32.330418, 48.514771>,  <35.862854, 32.186993, 48.740784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.537678, 32.330418, 48.514771> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533833, 31.948425, 48.633377>,  <36.531525, 31.719231, 48.704540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533833, 31.948425, 48.633377>,  <36.537678, 32.330418, 48.514771>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533833, 31.948425, 48.633377> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361961, -0.279749, -0.889227,
		0.932144, 0.098781, 0.348354,
		-0.009613, -0.954978, 0.296521,
		36.530949, 31.661932, 48.722332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.109440, 32.082340, 48.301636>,  <36.537678, 32.330418, 48.514771>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.109440, 32.082340, 48.301636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870152, 31.764885, 48.345936>,  <36.726578, 31.574411, 48.372517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.870152, 31.764885, 48.345936>,  <37.109440, 32.082340, 48.301636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.870152, 31.764885, 48.345936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075454, -0.193385, -0.978217,
		0.797772, -0.576832, 0.175570,
		-0.598219, -0.793641, 0.110753,
		36.690685, 31.526793, 48.379162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.480515, 31.563822, 47.942432>,  <37.109440, 32.082340, 48.301636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.480515, 31.563822, 47.942432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109276, 31.419603, 47.979614>,  <36.886532, 31.333073, 48.001923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.109276, 31.419603, 47.979614>,  <37.480515, 31.563822, 47.942432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109276, 31.419603, 47.979614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.037769, -0.157199, -0.986845,
		0.370416, -0.919399, 0.132279,
		-0.928098, -0.360547, 0.092954,
		36.830845, 31.311440, 48.007500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.525364, 30.814173, 47.538223>,  <37.480515, 31.563822, 47.942432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.525364, 30.814173, 47.538223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141506, 30.918669, 47.579861>,  <36.911190, 30.981365, 47.604843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.141506, 30.918669, 47.579861>,  <37.525364, 30.814173, 47.538223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.141506, 30.918669, 47.579861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.164456, -0.221092, -0.961287,
		-0.228135, -0.939607, 0.255135,
		-0.959640, 0.261262, 0.104085,
		36.853611, 30.997040, 47.611088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.144829, 30.290882, 47.340012>,  <37.525364, 30.814173, 47.538223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.144829, 30.290882, 47.340012> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900879, 30.606169, 47.307110>,  <36.754509, 30.795341, 47.287369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.900879, 30.606169, 47.307110>,  <37.144829, 30.290882, 47.340012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900879, 30.606169, 47.307110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099924, -0.179443, -0.978680,
		-0.786171, -0.588656, 0.188200,
		-0.609877, 0.788216, -0.082252,
		36.717915, 30.842634, 47.282433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.747250, 30.059965, 46.788933>,  <37.144829, 30.290882, 47.340012>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.747250, 30.059965, 46.788933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653526, 30.447536, 46.820621>,  <36.597294, 30.680080, 46.839634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.653526, 30.447536, 46.820621>,  <36.747250, 30.059965, 46.788933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653526, 30.447536, 46.820621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.359489, -0.010645, -0.933089,
		-0.903254, -0.247109, 0.350813,
		-0.234309, 0.968929, 0.079218,
		36.583233, 30.738214, 46.844387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.060440, 30.120609, 46.478340>,  <36.747250, 30.059965, 46.788933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.060440, 30.120609, 46.478340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218483, 30.488045, 46.474579>,  <36.313309, 30.708506, 46.472321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.218483, 30.488045, 46.474579>,  <36.060440, 30.120609, 46.478340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218483, 30.488045, 46.474579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360871, 0.145790, -0.921150,
		-0.844785, 0.367348, 0.389094,
		0.395108, 0.918586, -0.009404,
		36.337017, 30.763620, 46.471756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.499748, 30.518318, 46.202785>,  <36.060440, 30.120609, 46.478340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.499748, 30.518318, 46.202785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831474, 30.726339, 46.121029>,  <36.030510, 30.851152, 46.071976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.831474, 30.726339, 46.121029>,  <35.499748, 30.518318, 46.202785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.831474, 30.726339, 46.121029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430746, 0.361987, -0.826694,
		-0.355937, 0.773634, 0.524212,
		0.829317, 0.520054, -0.204395,
		36.080269, 30.882355, 46.059711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.313034, 31.219368, 46.065670>,  <35.499748, 30.518318, 46.202785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.313034, 31.219368, 46.065670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674335, 31.196930, 45.895500>,  <35.891117, 31.183468, 45.793400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.674335, 31.196930, 45.895500>,  <35.313034, 31.219368, 46.065670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674335, 31.196930, 45.895500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340115, 0.510907, -0.789491,
		0.261637, 0.857804, 0.442401,
		0.903254, -0.056093, -0.425424,
		35.945312, 31.180101, 45.767872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454006, 31.896696, 45.820080>,  <35.313034, 31.219368, 46.065670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454006, 31.896696, 45.820080> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710743, 31.669085, 45.614460>,  <35.864784, 31.532516, 45.491089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.710743, 31.669085, 45.614460>,  <35.454006, 31.896696, 45.820080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.710743, 31.669085, 45.614460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415643, 0.305187, -0.856797,
		0.644425, 0.763587, -0.040633,
		0.641839, -0.569030, -0.514050,
		35.903294, 31.498375, 45.460243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.884064, 32.325512, 45.297405>,  <35.454006, 31.896696, 45.820080>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.884064, 32.325512, 45.297405> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912453, 31.950602, 45.160885>,  <35.929485, 31.725657, 45.078972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.912453, 31.950602, 45.160885>,  <35.884064, 32.325512, 45.297405>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.912453, 31.950602, 45.160885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.302873, 0.305757, -0.902652,
		0.950385, 0.167434, -0.262174,
		0.070973, -0.937272, -0.341298,
		35.933746, 31.669420, 45.058495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.175369, 32.434704, 44.624825>,  <35.884064, 32.325512, 45.297405>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.175369, 32.434704, 44.624825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045376, 32.056725, 44.609524>,  <35.967381, 31.829937, 44.600342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045376, 32.056725, 44.609524>,  <36.175369, 32.434704, 44.624825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045376, 32.056725, 44.609524> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230031, 0.118215, -0.965977,
		0.917318, -0.305127, -0.255784,
		-0.324983, -0.944946, -0.038252,
		35.947880, 31.773241, 44.598049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.336735, 32.232437, 43.921474>,  <36.175369, 32.434704, 44.624825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.336735, 32.232437, 43.921474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084400, 31.954578, 44.059757>,  <35.932999, 31.787865, 44.142727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.084400, 31.954578, 44.059757>,  <36.336735, 32.232437, 43.921474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.084400, 31.954578, 44.059757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429456, -0.058486, -0.901192,
		0.646226, -0.716972, -0.261425,
		-0.630840, -0.694644, 0.345703,
		35.895149, 31.746185, 44.163467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.370800, 31.696146, 43.504971>,  <36.336735, 32.232437, 43.921474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.370800, 31.696146, 43.504971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019199, 31.619837, 43.679764>,  <35.808239, 31.574051, 43.784641>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.019199, 31.619837, 43.679764>,  <36.370800, 31.696146, 43.504971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.019199, 31.619837, 43.679764> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393150, -0.228559, -0.890614,
		0.269781, -0.954655, 0.125903,
		-0.879006, -0.190772, 0.436983,
		35.755497, 31.562605, 43.810860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.087120, 31.203665, 43.117626>,  <36.370800, 31.696146, 43.504971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.087120, 31.203665, 43.117626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762959, 31.340469, 43.307896>,  <35.568462, 31.422552, 43.422058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.762959, 31.340469, 43.307896>,  <36.087120, 31.203665, 43.117626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.762959, 31.340469, 43.307896> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504084, 0.006703, -0.863629,
		-0.298561, -0.939671, 0.166971,
		-0.810408, 0.342013, 0.475675,
		35.519836, 31.443073, 43.450600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.428394, 30.774540, 42.949017>,  <36.087120, 31.203665, 43.117626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.428394, 30.774540, 42.949017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320484, 31.145836, 43.051456>,  <35.255737, 31.368614, 43.112923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.320484, 31.145836, 43.051456>,  <35.428394, 30.774540, 42.949017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.320484, 31.145836, 43.051456> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452770, 0.112446, -0.884508,
		-0.849835, -0.354575, 0.389945,
		-0.269776, 0.928241, 0.256101,
		35.239552, 31.424309, 43.128288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.683578, 30.762751, 42.831993>,  <35.428394, 30.774540, 42.949017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.683578, 30.762751, 42.831993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818340, 31.139362, 42.830387>,  <34.899197, 31.365330, 42.829422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.818340, 31.139362, 42.830387>,  <34.683578, 30.762751, 42.831993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.818340, 31.139362, 42.830387> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581820, 0.204836, -0.787101,
		-0.740256, 0.267516, 0.616812,
		0.336908, 0.941529, -0.004015,
		34.919411, 31.421822, 42.829182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.087227, 31.153942, 42.759838>,  <34.683578, 30.762751, 42.831993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.087227, 31.153942, 42.759838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388157, 31.396664, 42.657238>,  <34.568714, 31.542297, 42.595680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388157, 31.396664, 42.657238>,  <34.087227, 31.153942, 42.759838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388157, 31.396664, 42.657238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539421, 0.343889, -0.768613,
		-0.378191, 0.716609, 0.586040,
		0.752328, 0.606805, -0.256498,
		34.613853, 31.578705, 42.580288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.721512, 31.748817, 42.532635>,  <34.087227, 31.153942, 42.759838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.721512, 31.748817, 42.532635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079567, 31.740692, 42.354500>,  <34.294399, 31.735817, 42.247620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079567, 31.740692, 42.354500>,  <33.721512, 31.748817, 42.532635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079567, 31.740692, 42.354500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431757, 0.209243, -0.877385,
		0.111005, 0.977653, 0.178530,
		0.895134, -0.020313, -0.445335,
		34.348106, 31.734598, 42.220898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.669144, 32.320011, 42.073242>,  <33.721512, 31.748817, 42.532635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.669144, 32.320011, 42.073242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001228, 32.132336, 41.952835>,  <34.200478, 32.019730, 41.880592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.001228, 32.132336, 41.952835>,  <33.669144, 32.320011, 42.073242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.001228, 32.132336, 41.952835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233284, 0.198002, -0.952037,
		0.506289, 0.860613, 0.054929,
		0.830211, -0.469191, -0.301013,
		34.250290, 31.991579, 41.862530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.013363, 32.830452, 41.515823>,  <33.669144, 32.320011, 42.073242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.013363, 32.830452, 41.515823> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158127, 32.461658, 41.460720>,  <34.244984, 32.240383, 41.427658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.158127, 32.461658, 41.460720>,  <34.013363, 32.830452, 41.515823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.158127, 32.461658, 41.460720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173814, 0.078444, -0.981649,
		0.915867, 0.379209, -0.131863,
		0.361906, -0.921980, -0.137756,
		34.266697, 32.185066, 41.419392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458782, 32.895481, 40.936066>,  <34.013363, 32.830452, 41.515823>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.458782, 32.895481, 40.936066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388699, 32.502136, 40.955238>,  <34.346649, 32.266129, 40.966743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.388699, 32.502136, 40.955238>,  <34.458782, 32.895481, 40.936066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.388699, 32.502136, 40.955238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113261, -0.028231, -0.993164,
		0.977995, -0.179440, -0.106430,
		-0.175209, -0.983364, 0.047933,
		34.336136, 32.207127, 40.969620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.920502, 32.499336, 40.436115>,  <34.458782, 32.895481, 40.936066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.920502, 32.499336, 40.436115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582069, 32.303776, 40.521088>,  <34.379009, 32.186440, 40.572071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.582069, 32.303776, 40.521088>,  <34.920502, 32.499336, 40.436115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582069, 32.303776, 40.521088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222251, -0.038694, -0.974221,
		0.484517, -0.871481, -0.075921,
		-0.846078, -0.488900, 0.212436,
		34.328247, 32.157104, 40.584820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.768494, 32.092384, 39.909016>,  <34.920502, 32.499336, 40.436115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.768494, 32.092384, 39.909016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411839, 32.082619, 40.089848>,  <34.197845, 32.076759, 40.198349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.411839, 32.082619, 40.089848>,  <34.768494, 32.092384, 39.909016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.411839, 32.082619, 40.089848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451096, -0.037189, -0.891700,
		0.038583, -0.999010, 0.022146,
		-0.891641, -0.024415, 0.452084,
		34.144344, 32.075294, 40.225471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.412632, 31.622890, 39.427235>,  <34.768494, 32.092384, 39.909016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.412632, 31.622890, 39.427235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142387, 31.816952, 39.649292>,  <33.980240, 31.933388, 39.782528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142387, 31.816952, 39.649292>,  <34.412632, 31.622890, 39.427235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142387, 31.816952, 39.649292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.596861, 0.082106, -0.798133,
		-0.432796, -0.870566, 0.234097,
		-0.675607, 0.485152, 0.555142,
		33.939705, 31.962498, 39.815834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.723480, 31.307562, 39.252434>,  <34.412632, 31.622890, 39.427235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.723480, 31.307562, 39.252434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633270, 31.666828, 39.403397>,  <33.579144, 31.882389, 39.493973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.633270, 31.666828, 39.403397>,  <33.723480, 31.307562, 39.252434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.633270, 31.666828, 39.403397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.631313, 0.160316, -0.758777,
		-0.742012, -0.409385, 0.530869,
		-0.225525, 0.898166, 0.377406,
		33.565613, 31.936277, 39.516617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.012238, 31.335964, 39.173859>,  <33.723480, 31.307562, 39.252434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.012238, 31.335964, 39.173859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157272, 31.707882, 39.199192>,  <33.244293, 31.931032, 39.214394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.157272, 31.707882, 39.199192>,  <33.012238, 31.335964, 39.173859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.157272, 31.707882, 39.199192> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.551669, 0.268910, -0.789524,
		-0.751128, 0.251331, 0.610443,
		0.362586, 0.929796, 0.063334,
		33.266048, 31.986820, 39.218193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.520988, 31.730539, 38.981491>,  <33.012238, 31.335964, 39.173859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.520988, 31.730539, 38.981491> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815792, 31.996632, 38.933685>,  <32.992676, 32.156288, 38.905003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.815792, 31.996632, 38.933685>,  <32.520988, 31.730539, 38.981491>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.815792, 31.996632, 38.933685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517182, 0.441225, -0.733378,
		-0.435133, 0.602318, 0.669233,
		0.737009, 0.665232, -0.119516,
		33.036896, 32.196201, 38.897831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.184189, 32.331333, 38.851994>,  <32.520988, 31.730539, 38.981491>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.184189, 32.331333, 38.851994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559216, 32.414021, 38.740108>,  <32.784229, 32.463634, 38.672977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.559216, 32.414021, 38.740108>,  <32.184189, 32.331333, 38.851994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559216, 32.414021, 38.740108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347503, 0.590698, -0.728229,
		0.014689, 0.779963, 0.625653,
		0.937564, 0.206720, -0.279716,
		32.840485, 32.476036, 38.656193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.180367, 33.015751, 38.665600>,  <32.184189, 32.331333, 38.851994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.180367, 33.015751, 38.665600> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507339, 32.875443, 38.482834>,  <32.703522, 32.791260, 38.373173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.507339, 32.875443, 38.482834>,  <32.180367, 33.015751, 38.665600>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.507339, 32.875443, 38.482834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.237232, 0.517820, -0.821939,
		0.524908, 0.780272, 0.340069,
		0.817430, -0.350767, -0.456914,
		32.752567, 32.770214, 38.345760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.576775, 33.576099, 38.475285>,  <32.180367, 33.015751, 38.665600>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.576775, 33.576099, 38.475285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691994, 33.290779, 38.219715>,  <32.761124, 33.119587, 38.066372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.691994, 33.290779, 38.219715>,  <32.576775, 33.576099, 38.475285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.691994, 33.290779, 38.219715> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176117, 0.616361, -0.767516,
		0.941281, 0.333608, 0.051917,
		0.288049, -0.713305, -0.638923,
		32.778408, 33.076786, 38.028038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693546, 33.858524, 37.893150>,  <32.576775, 33.576099, 38.475285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693546, 33.858524, 37.893150> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712494, 33.500530, 37.715721>,  <32.723862, 33.285732, 37.609264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712494, 33.500530, 37.715721>,  <32.693546, 33.858524, 37.893150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712494, 33.500530, 37.715721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022610, 0.444917, -0.895287,
		0.998622, 0.032381, 0.041312,
		0.047371, -0.894986, -0.443571,
		32.726704, 33.232033, 37.582649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.399380, 33.804363, 37.470108>,  <32.693546, 33.858524, 37.893150>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.399380, 33.804363, 37.470108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106861, 33.569160, 37.331863>,  <32.931351, 33.428040, 37.248917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.106861, 33.569160, 37.331863>,  <33.399380, 33.804363, 37.470108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.106861, 33.569160, 37.331863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170066, 0.333519, -0.927277,
		0.660517, -0.736892, -0.143902,
		-0.731296, -0.588009, -0.345615,
		32.887470, 33.392757, 37.228180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.631603, 33.616287, 36.835335>,  <33.399380, 33.804363, 37.470108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.631603, 33.616287, 36.835335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238098, 33.545517, 36.823334>,  <33.001995, 33.503056, 36.816135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.238098, 33.545517, 36.823334>,  <33.631603, 33.616287, 36.835335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238098, 33.545517, 36.823334> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035407, 0.355265, -0.934095,
		0.175922, -0.917870, -0.355763,
		-0.983767, -0.176924, -0.029999,
		32.942966, 33.492439, 36.814335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.263885, 33.221859, 37.147587>,  <33.631603, 33.616287, 36.835335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.263885, 33.221859, 37.147587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613331, 33.380013, 37.034107>,  <34.822998, 33.474903, 36.966019>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.613331, 33.380013, 37.034107>,  <34.263885, 33.221859, 37.147587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.613331, 33.380013, 37.034107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463387, -0.497879, 0.733068,
		0.148594, -0.771876, -0.618165,
		0.873609, 0.395379, -0.283695,
		34.875412, 33.498627, 36.948997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.713089, 32.656513, 36.958992>,  <34.263885, 33.221859, 37.147587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.713089, 32.656513, 36.958992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941216, 32.977688, 37.028320>,  <35.078091, 33.170391, 37.069916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.941216, 32.977688, 37.028320>,  <34.713089, 32.656513, 36.958992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.941216, 32.977688, 37.028320> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540520, -0.525715, 0.656857,
		0.618530, -0.280931, -0.733824,
		0.570314, 0.802933, 0.173322,
		35.112309, 33.218567, 37.080318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.357468, 32.285206, 37.122421>,  <34.713089, 32.656513, 36.958992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.357468, 32.285206, 37.122421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489861, 32.646355, 37.232166>,  <35.569294, 32.863045, 37.298012>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.489861, 32.646355, 37.232166>,  <35.357468, 32.285206, 37.122421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489861, 32.646355, 37.232166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646617, -0.428758, 0.630914,
		0.687270, -0.031413, -0.725723,
		0.330979, 0.902873, 0.274360,
		35.589153, 32.917217, 37.314476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.153217, 32.336563, 37.136845>,  <35.357468, 32.285206, 37.122421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.153217, 32.336563, 37.136845> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007668, 32.624947, 37.372746>,  <35.920338, 32.797977, 37.514286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.007668, 32.624947, 37.372746>,  <36.153217, 32.336563, 37.136845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.007668, 32.624947, 37.372746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597948, -0.304664, 0.741376,
		0.714179, 0.622412, -0.320236,
		-0.363877, 0.720960, 0.589754,
		35.898506, 32.841236, 37.549671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.753754, 32.712559, 37.445183>,  <36.153217, 32.336563, 37.136845>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.753754, 32.712559, 37.445183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434689, 32.772869, 37.678761>,  <36.243248, 32.809055, 37.818909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.434689, 32.772869, 37.678761>,  <36.753754, 32.712559, 37.445183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.434689, 32.772869, 37.678761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566896, -0.142966, 0.811289,
		0.205809, 0.978175, 0.028564,
		-0.797666, 0.150778, 0.583948,
		36.195389, 32.818104, 37.853947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.972595, 33.045849, 37.995686>,  <36.753754, 32.712559, 37.445183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.972595, 33.045849, 37.995686> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629372, 32.909027, 38.148911>,  <36.423439, 32.826935, 38.240845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.629372, 32.909027, 38.148911>,  <36.972595, 33.045849, 37.995686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629372, 32.909027, 38.148911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446340, -0.127786, 0.885692,
		-0.254003, 0.930952, 0.262319,
		-0.858058, -0.342052, 0.383063,
		36.371956, 32.806412, 38.263828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.909904, 33.371555, 38.611065>,  <36.972595, 33.045849, 37.995686>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.909904, 33.371555, 38.611065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672234, 33.049973, 38.620930>,  <36.529633, 32.857021, 38.626846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.672234, 33.049973, 38.620930>,  <36.909904, 33.371555, 38.611065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.672234, 33.049973, 38.620930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325492, -0.212299, 0.921403,
		-0.735533, 0.555503, 0.387825,
		-0.594177, -0.803956, 0.024658,
		36.493980, 32.808784, 38.628326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.548611, 33.390400, 39.299210>,  <36.909904, 33.371555, 38.611065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.548611, 33.390400, 39.299210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540619, 33.005798, 39.189583>,  <36.535824, 32.775040, 39.123806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.540619, 33.005798, 39.189583>,  <36.548611, 33.390400, 39.299210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.540619, 33.005798, 39.189583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389813, -0.259923, 0.883451,
		-0.920677, -0.089187, 0.379999,
		-0.019978, -0.961502, -0.274071,
		36.534626, 32.717346, 39.107361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.408085, 33.060143, 39.965466>,  <36.548611, 33.390400, 39.299210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.408085, 33.060143, 39.965466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518646, 32.757557, 39.728359>,  <36.584984, 32.576008, 39.586094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.518646, 32.757557, 39.728359>,  <36.408085, 33.060143, 39.965466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.518646, 32.757557, 39.728359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493488, -0.417550, 0.762969,
		-0.824664, -0.503410, 0.257891,
		0.276403, -0.756460, -0.592765,
		36.601566, 32.530621, 39.550529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.304104, 32.437309, 40.408478>,  <36.408085, 33.060143, 39.965466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.304104, 32.437309, 40.408478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556717, 32.326935, 40.118641>,  <36.708282, 32.260708, 39.944740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.556717, 32.326935, 40.118641>,  <36.304104, 32.437309, 40.408478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.556717, 32.326935, 40.118641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598374, -0.420842, 0.681792,
		-0.493070, -0.864146, -0.100660,
		0.631530, -0.275939, -0.724588,
		36.746178, 32.244152, 39.901264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.424896, 31.786751, 40.556740>,  <36.304104, 32.437309, 40.408478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.424896, 31.786751, 40.556740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735611, 31.913967, 40.339317>,  <36.922039, 31.990297, 40.208862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.735611, 31.913967, 40.339317>,  <36.424896, 31.786751, 40.556740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.735611, 31.913967, 40.339317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629734, -0.401253, 0.665155,
		-0.006559, -0.858980, -0.511967,
		0.776783, 0.318041, -0.543561,
		36.968647, 32.009380, 40.176250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.881016, 31.266340, 40.462139>,  <36.424896, 31.786751, 40.556740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.881016, 31.266340, 40.462139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131199, 31.568291, 40.383183>,  <37.281307, 31.749460, 40.335808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.131199, 31.568291, 40.383183>,  <36.881016, 31.266340, 40.462139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.131199, 31.568291, 40.383183> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622062, -0.329712, 0.710161,
		0.471002, -0.566966, -0.675801,
		0.625457, 0.754877, -0.197393,
		37.318836, 31.794754, 40.323963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.502731, 30.859716, 40.285885>,  <36.881016, 31.266340, 40.462139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.502731, 30.859716, 40.285885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583122, 31.231266, 40.410336>,  <37.631355, 31.454197, 40.485004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.583122, 31.231266, 40.410336>,  <37.502731, 30.859716, 40.285885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.583122, 31.231266, 40.410336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629282, -0.365825, 0.685695,
		0.750742, 0.057978, -0.658046,
		0.200974, 0.928876, 0.311125,
		37.643414, 31.509930, 40.503674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.213760, 30.950235, 40.445541>,  <37.502731, 30.859716, 40.285885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.213760, 30.950235, 40.445541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118202, 31.280296, 40.650307>,  <38.060867, 31.478333, 40.773167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.118202, 31.280296, 40.650307>,  <38.213760, 30.950235, 40.445541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.118202, 31.280296, 40.650307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.703156, -0.216580, 0.677248,
		0.669703, 0.521743, -0.528472,
		-0.238893, 0.825153, 0.511911,
		38.046535, 31.527842, 40.803879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.904747, 31.173721, 40.766525>,  <38.213760, 30.950235, 40.445541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.904747, 31.173721, 40.766525> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646622, 31.396112, 40.976082>,  <38.491745, 31.529547, 41.101814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646622, 31.396112, 40.976082>,  <38.904747, 31.173721, 40.766525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646622, 31.396112, 40.976082> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582748, -0.085152, 0.808180,
		0.493940, 0.826824, -0.269045,
		-0.645313, 0.555978, 0.523889,
		38.453030, 31.562906, 41.133247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.185143, 31.526085, 41.259785>,  <38.904747, 31.173721, 40.766525>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.185143, 31.526085, 41.259785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837807, 31.571592, 41.452881>,  <38.629406, 31.598896, 41.568737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.837807, 31.571592, 41.452881>,  <39.185143, 31.526085, 41.259785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.837807, 31.571592, 41.452881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495941, 0.189381, 0.847454,
		0.004990, 0.975291, -0.220869,
		-0.868342, 0.113767, 0.482742,
		38.577305, 31.605722, 41.597702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.267960, 32.080845, 41.775551>,  <39.185143, 31.526085, 41.259785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.267960, 32.080845, 41.775551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957218, 31.859905, 41.896488>,  <38.770775, 31.727341, 41.969051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.957218, 31.859905, 41.896488>,  <39.267960, 32.080845, 41.775551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.957218, 31.859905, 41.896488> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201423, 0.236936, 0.950416,
		-0.596598, 0.799230, -0.072808,
		-0.776852, -0.552351, 0.302339,
		38.724163, 31.694201, 41.987190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042717, 32.391037, 42.374744>,  <39.267960, 32.080845, 41.775551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042717, 32.391037, 42.374744> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868858, 32.034081, 42.423279>,  <38.764542, 31.819906, 42.452400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.868858, 32.034081, 42.423279>,  <39.042717, 32.391037, 42.374744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.868858, 32.034081, 42.423279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016868, 0.142770, 0.989612,
		-0.900442, 0.428087, -0.077107,
		-0.434649, -0.892389, 0.121335,
		38.738464, 31.766363, 42.459679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.624825, 32.460777, 42.898045>,  <39.042717, 32.391037, 42.374744>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.624825, 32.460777, 42.898045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656693, 32.062065, 42.894638>,  <38.675816, 31.822836, 42.892593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.656693, 32.062065, 42.894638>,  <38.624825, 32.460777, 42.898045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.656693, 32.062065, 42.894638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134262, 0.002261, 0.990944,
		-0.987738, -0.080094, 0.134010,
		0.079672, -0.996785, -0.008520,
		38.680595, 31.763029, 42.892082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.091702, 32.176678, 43.402538>,  <38.624825, 32.460777, 42.898045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.091702, 32.176678, 43.402538> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374023, 31.896845, 43.357948>,  <38.543415, 31.728945, 43.331196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.374023, 31.896845, 43.357948>,  <38.091702, 32.176678, 43.402538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.374023, 31.896845, 43.357948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021343, -0.178286, 0.983747,
		-0.708086, -0.691953, -0.140766,
		0.705804, -0.699582, -0.111473,
		38.585766, 31.686970, 43.324505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851482, 31.684423, 43.835705>,  <38.091702, 32.176678, 43.402538>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851482, 31.684423, 43.835705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237312, 31.603573, 43.767891>,  <38.468811, 31.555061, 43.727203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.237312, 31.603573, 43.767891>,  <37.851482, 31.684423, 43.835705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.237312, 31.603573, 43.767891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.133615, -0.179810, 0.974585,
		-0.227481, -0.962710, -0.146431,
		0.964572, -0.202134, -0.169536,
		38.526684, 31.542934, 43.717030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.039371, 30.972044, 43.860104>,  <37.851482, 31.684423, 43.835705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.039371, 30.972044, 43.860104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383675, 31.158785, 43.941238>,  <38.590256, 31.270828, 43.989922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.383675, 31.158785, 43.941238>,  <38.039371, 30.972044, 43.860104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.383675, 31.158785, 43.941238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152581, -0.143523, 0.977814,
		0.485606, -0.872612, -0.052306,
		0.860759, 0.466851, 0.202839,
		38.641903, 31.298840, 44.002090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.425659, 30.520416, 44.456284>,  <38.039371, 30.972044, 43.860104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.425659, 30.520416, 44.456284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612499, 30.874023, 44.448975>,  <38.724602, 31.086187, 44.444588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.612499, 30.874023, 44.448975>,  <38.425659, 30.520416, 44.456284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.612499, 30.874023, 44.448975> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106523, -0.035747, 0.993667,
		0.877766, -0.466085, -0.110866,
		0.467096, 0.884017, -0.018271,
		38.752628, 31.139229, 44.443493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988979, 30.404850, 44.876881>,  <38.425659, 30.520416, 44.456284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988979, 30.404850, 44.876881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928417, 30.799507, 44.852859>,  <38.892078, 31.036303, 44.838448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.928417, 30.799507, 44.852859>,  <38.988979, 30.404850, 44.876881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928417, 30.799507, 44.852859> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035178, 0.066093, 0.997193,
		0.987845, 0.148873, -0.044715,
		-0.151410, 0.986645, -0.060052,
		38.882996, 31.095501, 44.834843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.306408, 30.720800, 45.569347>,  <38.988979, 30.404850, 44.876881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.306408, 30.720800, 45.569347> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092728, 31.029865, 45.432159>,  <38.964520, 31.215303, 45.349846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.092728, 31.029865, 45.432159>,  <39.306408, 30.720800, 45.569347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.092728, 31.029865, 45.432159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055985, 0.437150, 0.897645,
		0.843503, 0.460320, -0.276782,
		-0.534199, 0.772661, -0.342966,
		38.932468, 31.261663, 45.329269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.746479, 31.237219, 45.671516>,  <39.306408, 30.720800, 45.569347>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.746479, 31.237219, 45.671516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372120, 31.377628, 45.659657>,  <39.147503, 31.461874, 45.652538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372120, 31.377628, 45.659657>,  <39.746479, 31.237219, 45.671516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372120, 31.377628, 45.659657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112423, 0.377390, 0.919205,
		0.333852, 0.856948, -0.392661,
		-0.935897, 0.351023, -0.029652,
		39.091351, 31.482935, 45.650761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759712, 31.929026, 45.832775>,  <39.746479, 31.237219, 45.671516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759712, 31.929026, 45.832775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385525, 31.809031, 45.907513>,  <39.161011, 31.737034, 45.952354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.385525, 31.809031, 45.907513>,  <39.759712, 31.929026, 45.832775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.385525, 31.809031, 45.907513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008217, 0.510069, 0.860094,
		-0.353317, 0.806125, -0.474688,
		-0.935467, -0.299986, 0.186840,
		39.104885, 31.719034, 45.963566>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383327, 32.491512, 46.041267>,  <39.759712, 31.929026, 45.832775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383327, 32.491512, 46.041267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146137, 32.192665, 46.161400>,  <39.003822, 32.013359, 46.233479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.146137, 32.192665, 46.161400>,  <39.383327, 32.491512, 46.041267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.146137, 32.192665, 46.161400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275696, 0.538816, 0.796033,
		-0.756554, 0.389226, -0.525480,
		-0.592974, -0.747115, 0.300336,
		38.968246, 31.968531, 46.251499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.743988, 32.865261, 46.311672>,  <39.383327, 32.491512, 46.041267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.743988, 32.865261, 46.311672> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769352, 32.500706, 46.474323>,  <38.784569, 32.281971, 46.571915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.769352, 32.500706, 46.474323>,  <38.743988, 32.865261, 46.311672>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.769352, 32.500706, 46.474323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043220, 0.404559, 0.913490,
		-0.997051, -0.075499, -0.013737,
		0.063410, -0.911390, 0.406629,
		38.788376, 32.227287, 46.596313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.267330, 32.924789, 46.820923>,  <38.743988, 32.865261, 46.311672>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.267330, 32.924789, 46.820923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520889, 32.631283, 46.918716>,  <38.673023, 32.455181, 46.977390>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.520889, 32.631283, 46.918716>,  <38.267330, 32.924789, 46.820923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.520889, 32.631283, 46.918716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.074865, 0.372831, 0.924874,
		-0.769788, -0.567969, 0.291269,
		0.633894, -0.733763, 0.244480,
		38.711056, 32.411156, 46.992062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945728, 32.677399, 47.458626>,  <38.267330, 32.924789, 46.820923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945728, 32.677399, 47.458626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330883, 32.570351, 47.444546>,  <38.561974, 32.506123, 47.436100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.330883, 32.570351, 47.444546>,  <37.945728, 32.677399, 47.458626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.330883, 32.570351, 47.444546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165876, 0.483802, 0.859314,
		-0.212940, -0.833256, 0.510236,
		0.962882, -0.267618, -0.035196,
		38.619747, 32.490067, 47.433987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.179012, 32.283375, 48.131535>,  <37.945728, 32.677399, 47.458626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.179012, 32.283375, 48.131535> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524715, 32.403172, 47.969860>,  <38.732136, 32.475052, 47.872856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.524715, 32.403172, 47.969860>,  <38.179012, 32.283375, 48.131535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.524715, 32.403172, 47.969860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290957, 0.357837, 0.887297,
		0.410375, -0.884452, 0.222121,
		0.864255, 0.299496, -0.404185,
		38.783993, 32.493019, 47.848606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.577068, 32.182346, 48.707424>,  <38.179012, 32.283375, 48.131535>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.577068, 32.182346, 48.707424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785820, 32.409424, 48.452751>,  <38.911072, 32.545670, 48.299950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.785820, 32.409424, 48.452751>,  <38.577068, 32.182346, 48.707424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.785820, 32.409424, 48.452751> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517914, 0.382190, 0.765308,
		0.677795, -0.729145, -0.094561,
		0.521880, 0.567696, -0.636680,
		38.942383, 32.579731, 48.261745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.233482, 32.220505, 48.973888>,  <38.577068, 32.182346, 48.707424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.233482, 32.220505, 48.973888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251850, 32.534748, 48.727081>,  <39.262871, 32.723293, 48.578995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.251850, 32.534748, 48.727081>,  <39.233482, 32.220505, 48.973888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.251850, 32.534748, 48.727081> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592532, 0.475857, 0.649974,
		0.804237, -0.395453, -0.443644,
		0.045924, 0.785606, -0.617020,
		39.265629, 32.770432, 48.541977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.977146, 32.358032, 48.858795>,  <39.233482, 32.220505, 48.973888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.977146, 32.358032, 48.858795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718384, 32.661484, 48.827801>,  <39.563126, 32.843555, 48.809204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.718384, 32.661484, 48.827801>,  <39.977146, 32.358032, 48.858795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.718384, 32.661484, 48.827801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443866, 0.457215, 0.770673,
		0.620079, 0.464158, -0.632502,
		-0.646904, 0.758625, -0.077486,
		39.524311, 32.889072, 48.804554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428978, 33.048729, 48.920181>,  <39.977146, 32.358032, 48.858795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428978, 33.048729, 48.920181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048805, 33.144726, 48.999264>,  <39.820702, 33.202324, 49.046715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.048805, 33.144726, 48.999264>,  <40.428978, 33.048729, 48.920181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.048805, 33.144726, 48.999264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303736, 0.580467, 0.755515,
		0.066554, 0.778114, -0.624587,
		-0.950429, 0.239992, 0.197709,
		39.763676, 33.216724, 49.058575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.511478, 33.734455, 49.147167>,  <40.428978, 33.048729, 48.920181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.511478, 33.734455, 49.147167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146034, 33.635948, 49.276581>,  <39.926769, 33.576843, 49.354229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.146034, 33.635948, 49.276581>,  <40.511478, 33.734455, 49.147167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.146034, 33.635948, 49.276581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082353, 0.667141, 0.740365,
		-0.398167, 0.703048, -0.589225,
		-0.913609, -0.246265, 0.323532,
		39.871952, 33.562069, 49.373642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.298550, 34.309250, 49.510700>,  <40.511478, 33.734455, 49.147167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.298550, 34.309250, 49.510700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021240, 34.035873, 49.602150>,  <39.854855, 33.871845, 49.657021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.021240, 34.035873, 49.602150>,  <40.298550, 34.309250, 49.510700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.021240, 34.035873, 49.602150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131970, 0.432271, 0.892034,
		-0.708485, 0.588256, -0.389878,
		-0.693277, -0.683445, 0.228626,
		39.813255, 33.830841, 49.670738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.213104, 34.964436, 49.773441>,  <40.298550, 34.309250, 49.510700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.213104, 34.964436, 49.773441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527306, 35.171989, 49.638535>,  <40.715824, 35.296520, 49.557590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.527306, 35.171989, 49.638535>,  <40.213104, 34.964436, 49.773441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.527306, 35.171989, 49.638535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209428, -0.289944, -0.933848,
		-0.582346, 0.804171, -0.119083,
		0.785501, 0.518884, -0.337264,
		40.762955, 35.327656, 49.537354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936405, 35.395927, 49.259571>,  <40.213104, 34.964436, 49.773441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936405, 35.395927, 49.259571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323677, 35.394218, 49.159477>,  <40.556038, 35.393192, 49.099419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.323677, 35.394218, 49.159477>,  <39.936405, 35.395927, 49.259571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.323677, 35.394218, 49.159477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249969, -0.065793, -0.966016,
		-0.012338, 0.997824, -0.064767,
		0.968175, -0.004271, -0.250237,
		40.614128, 35.392937, 49.084408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.123081, 35.959995, 48.844090>,  <39.936405, 35.395927, 49.259571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.123081, 35.959995, 48.844090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405930, 35.690598, 48.757938>,  <40.575638, 35.528961, 48.706245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.405930, 35.690598, 48.757938>,  <40.123081, 35.959995, 48.844090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.405930, 35.690598, 48.757938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285972, 0.006183, -0.958218,
		0.646683, 0.739170, -0.188228,
		0.707122, -0.673491, -0.215380,
		40.618065, 35.488552, 48.693325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.572041, 36.233505, 48.419514>,  <40.123081, 35.959995, 48.844090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.572041, 36.233505, 48.419514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646023, 35.847599, 48.344658>,  <40.690411, 35.616055, 48.299744>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.646023, 35.847599, 48.344658>,  <40.572041, 36.233505, 48.419514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.646023, 35.847599, 48.344658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172813, 0.155534, -0.972597,
		0.967434, 0.212227, -0.137957,
		0.184954, -0.964764, -0.187144,
		40.701508, 35.558170, 48.288513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.830452, 36.177410, 47.773678>,  <40.572041, 36.233505, 48.419514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.830452, 36.177410, 47.773678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742496, 35.787239, 47.779045>,  <40.689724, 35.553135, 47.782265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.742496, 35.787239, 47.779045>,  <40.830452, 36.177410, 47.773678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.742496, 35.787239, 47.779045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314529, 0.057873, -0.947482,
		0.923428, -0.212564, -0.319528,
		-0.219893, -0.975432, 0.013416,
		40.676529, 35.494610, 47.783070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.097706, 35.913830, 47.173592>,  <40.830452, 36.177410, 47.773678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.097706, 35.913830, 47.173592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824238, 35.642910, 47.282299>,  <40.660156, 35.480358, 47.347523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.824238, 35.642910, 47.282299>,  <41.097706, 35.913830, 47.173592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.824238, 35.642910, 47.282299> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.333633, -0.041131, -0.941805,
		0.649060, -0.734559, -0.197849,
		-0.683673, -0.677297, 0.271770,
		40.619137, 35.439720, 47.363831>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.976387, 35.441742, 46.652241>,  <41.097706, 35.913830, 47.173592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.976387, 35.441742, 46.652241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636204, 35.347294, 46.840271>,  <40.432095, 35.290623, 46.953087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.636204, 35.347294, 46.840271>,  <40.976387, 35.441742, 46.652241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.636204, 35.347294, 46.840271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412977, -0.253817, -0.874658,
		0.325838, -0.937989, 0.118347,
		-0.850458, -0.236122, 0.470071,
		40.381065, 35.276459, 46.981293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.757080, 34.831188, 46.371559>,  <40.976387, 35.441742, 46.652241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.757080, 34.831188, 46.371559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440102, 35.044182, 46.490547>,  <40.249916, 35.171978, 46.561939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.440102, 35.044182, 46.490547>,  <40.757080, 34.831188, 46.371559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.440102, 35.044182, 46.490547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449043, -0.179262, -0.875343,
		-0.412783, -0.827238, 0.381165,
		-0.792445, 0.532486, 0.297469,
		40.202370, 35.203926, 46.579788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.243141, 34.533058, 45.973644>,  <40.757080, 34.831188, 46.371559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.243141, 34.533058, 45.973644> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041660, 34.841858, 46.128719>,  <39.920773, 35.027138, 46.221764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.041660, 34.841858, 46.128719>,  <40.243141, 34.533058, 45.973644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.041660, 34.841858, 46.128719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566870, 0.043272, -0.822670,
		-0.651879, -0.634145, 0.415829,
		-0.503699, 0.772003, 0.387686,
		39.890553, 35.073460, 46.245026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.451000, 34.332172, 45.948986>,  <40.243141, 34.533058, 45.973644>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.451000, 34.332172, 45.948986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518604, 34.725868, 45.969837>,  <39.559166, 34.962086, 45.982349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.518604, 34.725868, 45.969837>,  <39.451000, 34.332172, 45.948986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.518604, 34.725868, 45.969837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432472, 0.121582, -0.893412,
		-0.885666, 0.128447, 0.446202,
		0.169007, 0.984235, 0.052132,
		39.569305, 35.021137, 45.985477>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858246, 34.599686, 45.735916>,  <39.451000, 34.332172, 45.948986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858246, 34.599686, 45.735916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101864, 34.915878, 45.709972>,  <39.248035, 35.105595, 45.694408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.101864, 34.915878, 45.709972>,  <38.858246, 34.599686, 45.735916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.101864, 34.915878, 45.709972> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524071, 0.339708, -0.780991,
		-0.595325, 0.509649, 0.621165,
		0.609046, 0.790479, -0.064856,
		39.284576, 35.153023, 45.690517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.390335, 35.119259, 45.640556>,  <38.858246, 34.599686, 45.735916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.390335, 35.119259, 45.640556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742867, 35.236347, 45.492195>,  <38.954388, 35.306599, 45.403179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.742867, 35.236347, 45.492195>,  <38.390335, 35.119259, 45.640556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.742867, 35.236347, 45.492195> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449628, 0.278297, -0.848755,
		-0.145224, 0.914804, 0.376886,
		0.881331, 0.292718, -0.370906,
		39.007267, 35.324162, 45.380924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.219467, 35.714844, 45.215614>,  <38.390335, 35.119259, 45.640556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.219467, 35.714844, 45.215614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569405, 35.577072, 45.079365>,  <38.779366, 35.494408, 44.997616>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.569405, 35.577072, 45.079365>,  <38.219467, 35.714844, 45.215614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.569405, 35.577072, 45.079365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289195, 0.192756, -0.937663,
		0.388614, 0.918811, 0.069024,
		0.874840, -0.344428, -0.340623,
		38.831856, 35.473743, 44.977177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.381706, 36.191399, 44.736229>,  <38.219467, 35.714844, 45.215614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.381706, 36.191399, 44.736229> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608799, 35.874111, 44.648148>,  <38.745056, 35.683739, 44.595299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.608799, 35.874111, 44.648148>,  <38.381706, 36.191399, 44.736229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608799, 35.874111, 44.648148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.194264, 0.130847, -0.972183,
		0.799964, 0.594716, -0.079808,
		0.567731, -0.793216, -0.220205,
		38.779118, 35.636147, 44.582085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808189, 36.400921, 44.260246>,  <38.381706, 36.191399, 44.736229>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808189, 36.400921, 44.260246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820107, 36.002441, 44.227520>,  <38.827255, 35.763351, 44.207886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.820107, 36.002441, 44.227520>,  <38.808189, 36.400921, 44.260246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820107, 36.002441, 44.227520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161275, 0.075990, -0.983979,
		0.986460, 0.042511, -0.158399,
		0.029793, -0.996202, -0.081817,
		38.829044, 35.703579, 44.202976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100204, 36.354961, 43.629230>,  <38.808189, 36.400921, 44.260246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100204, 36.354961, 43.629230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985043, 35.978897, 43.702122>,  <38.915947, 35.753258, 43.745857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.985043, 35.978897, 43.702122>,  <39.100204, 36.354961, 43.629230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985043, 35.978897, 43.702122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058824, -0.207291, -0.976509,
		0.955851, -0.270420, 0.114984,
		-0.287902, -0.940161, 0.182233,
		38.898670, 35.696850, 43.756790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434589, 35.976238, 43.136890>,  <39.100204, 36.354961, 43.629230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434589, 35.976238, 43.136890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136742, 35.734200, 43.249603>,  <38.958035, 35.588978, 43.317230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.136742, 35.734200, 43.249603>,  <39.434589, 35.976238, 43.136890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136742, 35.734200, 43.249603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131877, -0.280463, -0.950762,
		0.654332, -0.745117, 0.129040,
		-0.744620, -0.605097, 0.281779,
		38.913357, 35.552670, 43.334137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573166, 35.424454, 42.743664>,  <39.434589, 35.976238, 43.136890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573166, 35.424454, 42.743664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192940, 35.368717, 42.854671>,  <38.964806, 35.335278, 42.921276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.192940, 35.368717, 42.854671>,  <39.573166, 35.424454, 42.743664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192940, 35.368717, 42.854671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179934, -0.481242, -0.857922,
		0.253096, -0.865443, 0.432379,
		-0.950561, -0.139337, 0.277523,
		38.907772, 35.326916, 42.937927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.360474, 34.652351, 42.674225>,  <39.573166, 35.424454, 42.743664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.360474, 34.652351, 42.674225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011662, 34.848099, 42.677708>,  <38.802372, 34.965549, 42.679798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.011662, 34.848099, 42.677708>,  <39.360474, 34.652351, 42.674225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.011662, 34.848099, 42.677708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.318377, -0.553636, -0.769495,
		-0.371747, -0.673797, 0.638593,
		-0.872032, 0.489371, 0.008709,
		38.750053, 34.994911, 42.680321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.863647, 34.102840, 42.635723>,  <39.360474, 34.652351, 42.674225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.863647, 34.102840, 42.635723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677086, 34.433529, 42.509869>,  <38.565147, 34.631943, 42.434357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.677086, 34.433529, 42.509869>,  <38.863647, 34.102840, 42.635723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.677086, 34.433529, 42.509869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264874, -0.469896, -0.842045,
		-0.843984, -0.309395, 0.438139,
		-0.466404, 0.826724, -0.314634,
		38.537163, 34.681545, 42.415478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397900, 33.857018, 42.155094>,  <38.863647, 34.102840, 42.635723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397900, 33.857018, 42.155094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375404, 34.248669, 42.076973>,  <38.361908, 34.483662, 42.030102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375404, 34.248669, 42.076973>,  <38.397900, 33.857018, 42.155094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375404, 34.248669, 42.076973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176625, -0.202279, -0.963269,
		-0.982670, -0.019679, 0.184315,
		-0.056239, 0.979130, -0.195298,
		38.358532, 34.542408, 42.018383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772915, 34.002125, 41.826374>,  <38.397900, 33.857018, 42.155094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772915, 34.002125, 41.826374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030888, 34.285313, 41.711243>,  <38.185673, 34.455223, 41.642162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.030888, 34.285313, 41.711243>,  <37.772915, 34.002125, 41.826374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.030888, 34.285313, 41.711243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067361, -0.322500, -0.944170,
		-0.761267, 0.628312, -0.160300,
		0.644930, 0.707967, -0.287832,
		38.224365, 34.497704, 41.624893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.450882, 34.289562, 41.361343>,  <37.772915, 34.002125, 41.826374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.450882, 34.289562, 41.361343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834431, 34.380737, 41.293686>,  <38.064560, 34.435444, 41.253090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.834431, 34.380737, 41.293686>,  <37.450882, 34.289562, 41.361343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.834431, 34.380737, 41.293686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.108443, -0.256527, -0.960434,
		-0.262314, 0.939274, -0.221258,
		0.958870, 0.227942, -0.169148,
		38.122093, 34.449120, 41.242943>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488190, 34.593182, 40.699543>,  <37.450882, 34.289562, 41.361343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488190, 34.593182, 40.699543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871307, 34.501675, 40.769173>,  <38.101177, 34.446770, 40.810951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871307, 34.501675, 40.769173>,  <37.488190, 34.593182, 40.699543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871307, 34.501675, 40.769173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122666, -0.222415, -0.967204,
		0.259982, 0.947733, -0.184965,
		0.957790, -0.228767, 0.174079,
		38.158646, 34.433044, 40.821396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.814678, 35.075783, 40.320766>,  <37.488190, 34.593182, 40.699543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.814678, 35.075783, 40.320766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056458, 34.766380, 40.397007>,  <38.201527, 34.580738, 40.442749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.056458, 34.766380, 40.397007>,  <37.814678, 35.075783, 40.320766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.056458, 34.766380, 40.397007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278523, -0.018962, -0.960242,
		0.746370, 0.633502, 0.203978,
		0.604448, -0.773509, 0.190597,
		38.237793, 34.534328, 40.454185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.284130, 35.243607, 39.918430>,  <37.814678, 35.075783, 40.320766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.284130, 35.243607, 39.918430> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355045, 34.856396, 39.989407>,  <38.397594, 34.624069, 40.031994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.355045, 34.856396, 39.989407>,  <38.284130, 35.243607, 39.918430>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.355045, 34.856396, 39.989407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411195, -0.090947, -0.906999,
		0.894140, 0.233767, 0.381925,
		0.177292, -0.968030, 0.177443,
		38.408234, 34.565987, 40.042641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.958282, 35.065536, 39.641403>,  <38.284130, 35.243607, 39.918430>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.958282, 35.065536, 39.641403> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761154, 34.718258, 39.664574>,  <38.642876, 34.509892, 39.678478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761154, 34.718258, 39.664574>,  <38.958282, 35.065536, 39.641403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761154, 34.718258, 39.664574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367734, -0.268152, -0.890430,
		0.788606, -0.417519, 0.451418,
		-0.492820, -0.868201, 0.057931,
		38.613308, 34.457798, 39.681953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.437092, 34.643913, 39.522717>,  <38.958282, 35.065536, 39.641403>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.437092, 34.643913, 39.522717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095856, 34.451836, 39.441090>,  <38.891113, 34.336590, 39.392113>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.095856, 34.451836, 39.441090>,  <39.437092, 34.643913, 39.522717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.095856, 34.451836, 39.441090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.375540, -0.293584, -0.879078,
		0.362215, -0.826573, 0.430787,
		-0.853095, -0.480193, -0.204071,
		38.839928, 34.307777, 39.379868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.734905, 34.064915, 39.227936>,  <39.437092, 34.643913, 39.522717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.734905, 34.064915, 39.227936> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353722, 34.075710, 39.107178>,  <39.125011, 34.082188, 39.034721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.353722, 34.075710, 39.107178>,  <39.734905, 34.064915, 39.227936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.353722, 34.075710, 39.107178> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290614, -0.201594, -0.935363,
		-0.086101, -0.979097, 0.184269,
		-0.952959, 0.026985, -0.301896,
		39.067833, 34.083805, 39.016609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.656467, 33.455276, 38.842255>,  <39.734905, 34.064915, 39.227936>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.656467, 33.455276, 38.842255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365665, 33.711227, 38.742634>,  <39.191185, 33.864799, 38.682861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.365665, 33.711227, 38.742634>,  <39.656467, 33.455276, 38.842255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365665, 33.711227, 38.742634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299687, -0.030641, -0.953546,
		-0.617782, -0.767867, -0.169486,
		-0.727003, 0.639876, -0.249049,
		39.147564, 33.903191, 38.667919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.578701, 33.203358, 38.188251>,  <39.656467, 33.455276, 38.842255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.578701, 33.203358, 38.188251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372353, 33.545948, 38.195351>,  <39.248543, 33.751503, 38.199612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.372353, 33.545948, 38.195351>,  <39.578701, 33.203358, 38.188251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.372353, 33.545948, 38.195351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.251117, 0.171000, -0.952733,
		-0.819032, -0.487032, -0.303291,
		-0.515874, 0.856480, 0.017752,
		39.217590, 33.802891, 38.200676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.051941, 33.239014, 37.613678>,  <39.578701, 33.203358, 38.188251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.051941, 33.239014, 37.613678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156639, 33.611546, 37.714958>,  <39.219460, 33.835064, 37.775726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.156639, 33.611546, 37.714958>,  <39.051941, 33.239014, 37.613678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.156639, 33.611546, 37.714958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.393806, 0.136456, -0.909009,
		-0.881140, 0.337640, -0.331047,
		0.261744, 0.931332, 0.253201,
		39.235161, 33.890945, 37.790920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.780342, 33.631248, 37.054707>,  <39.051941, 33.239014, 37.613678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.780342, 33.631248, 37.054707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066017, 33.835751, 37.245934>,  <39.237423, 33.958454, 37.360668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.066017, 33.835751, 37.245934>,  <38.780342, 33.631248, 37.054707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.066017, 33.835751, 37.245934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458297, 0.174681, -0.871464,
		-0.529052, 0.841488, -0.109552,
		0.714190, 0.511257, 0.478067,
		39.280273, 33.989128, 37.389355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.031567, 34.204666, 36.597927>,  <38.780342, 33.631248, 37.054707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.031567, 34.204666, 36.597927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337521, 34.190250, 36.855190>,  <39.521095, 34.181602, 37.009548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.337521, 34.190250, 36.855190>,  <39.031567, 34.204666, 36.597927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.337521, 34.190250, 36.855190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610383, 0.359638, -0.705757,
		-0.205867, 0.932396, 0.297080,
		0.764886, -0.036040, 0.643156,
		39.566986, 34.179440, 37.048138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.459999, 34.550198, 36.251881>,  <39.031567, 34.204666, 36.597927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.459999, 34.550198, 36.251881> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705776, 34.420185, 36.539440>,  <39.853245, 34.342178, 36.711975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.705776, 34.420185, 36.539440>,  <39.459999, 34.550198, 36.251881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.705776, 34.420185, 36.539440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781152, 0.122771, -0.612151,
		0.110710, 0.937700, 0.329336,
		0.614446, -0.325033, 0.718894,
		39.890110, 34.322674, 36.755108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.075497, 35.066715, 36.328957>,  <39.459999, 34.550198, 36.251881>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.075497, 35.066715, 36.328957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183105, 34.700012, 36.447060>,  <40.247669, 34.479988, 36.517921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.183105, 34.700012, 36.447060>,  <40.075497, 35.066715, 36.328957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.183105, 34.700012, 36.447060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777347, 0.025676, -0.628548,
		0.568647, 0.398613, 0.719548,
		0.269023, -0.916760, 0.295260,
		40.263813, 34.424984, 36.535637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.783016, 35.104118, 36.484104>,  <40.075497, 35.066715, 36.328957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.783016, 35.104118, 36.484104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721306, 34.720623, 36.388580>,  <40.684280, 34.490528, 36.331268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.721306, 34.720623, 36.388580>,  <40.783016, 35.104118, 36.484104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.721306, 34.720623, 36.388580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.827753, 0.006554, -0.561055,
		0.539467, -0.284229, 0.792584,
		-0.154273, -0.958734, -0.238807,
		40.675022, 34.433002, 36.316936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.400330, 34.774734, 36.544334>,  <40.783016, 35.104118, 36.484104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.400330, 34.774734, 36.544334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201332, 34.510860, 36.319012>,  <41.081932, 34.352535, 36.183819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.201332, 34.510860, 36.319012>,  <41.400330, 34.774734, 36.544334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.201332, 34.510860, 36.319012> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802878, -0.104289, -0.586951,
		0.328455, -0.744272, 0.581529,
		-0.497498, -0.659684, -0.563305,
		41.052082, 34.312954, 36.150021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.898712, 34.300591, 36.443317>,  <41.400330, 34.774734, 36.544334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.898712, 34.300591, 36.443317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612801, 34.305706, 36.163624>,  <41.441254, 34.308773, 35.995808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.612801, 34.305706, 36.163624>,  <41.898712, 34.300591, 36.443317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.612801, 34.305706, 36.163624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693980, 0.136689, -0.706900,
		0.086539, -0.990532, -0.106575,
		-0.714774, 0.012787, -0.699238,
		41.398369, 34.309544, 35.953854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.069340, 33.830460, 35.997101>,  <41.898712, 34.300591, 36.443317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.069340, 33.830460, 35.997101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831844, 34.071815, 35.784157>,  <41.689346, 34.216629, 35.656391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.831844, 34.071815, 35.784157>,  <42.069340, 33.830460, 35.997101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.831844, 34.071815, 35.784157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.725160, 0.114498, -0.678994,
		-0.348742, -0.789186, -0.505533,
		-0.593736, 0.603386, -0.532356,
		41.653725, 34.252831, 35.624451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.259727, 33.610809, 35.284142>,  <42.069340, 33.830460, 35.997101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.259727, 33.610809, 35.284142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128029, 33.985481, 35.331837>,  <42.049007, 34.210285, 35.360455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128029, 33.985481, 35.331837>,  <42.259727, 33.610809, 35.284142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128029, 33.985481, 35.331837> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697797, 0.326443, -0.637585,
		-0.636141, -0.126719, -0.761096,
		-0.329248, 0.936684, 0.119239,
		42.029255, 34.266487, 35.367607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.072777, 33.823505, 34.641983>,  <42.259727, 33.610809, 35.284142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.072777, 33.823505, 34.641983> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190704, 34.137909, 34.859341>,  <42.261459, 34.326550, 34.989754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.190704, 34.137909, 34.859341>,  <42.072777, 33.823505, 34.641983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.190704, 34.137909, 34.859341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586247, 0.300287, -0.752425,
		-0.754584, 0.540392, -0.372263,
		0.294818, 0.786006, 0.543394,
		42.279148, 34.373711, 35.022358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276688, 34.195362, 34.116024>,  <42.072777, 33.823505, 34.641983>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276688, 34.195362, 34.116024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399517, 34.349697, 34.464008>,  <42.473213, 34.442299, 34.672798>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399517, 34.349697, 34.464008>,  <42.276688, 34.195362, 34.116024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399517, 34.349697, 34.464008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676819, 0.554105, -0.484649,
		-0.669046, 0.737630, -0.090991,
		0.307073, 0.385837, 0.869963,
		42.491638, 34.465446, 34.724998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.255341, 35.003716, 34.050327>,  <42.276688, 34.195362, 34.116024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.255341, 35.003716, 34.050327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518295, 34.920799, 34.340118>,  <42.676067, 34.871048, 34.513992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518295, 34.920799, 34.340118>,  <42.255341, 35.003716, 34.050327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518295, 34.920799, 34.340118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672846, 0.594360, -0.440471,
		-0.339296, 0.777023, 0.530201,
		0.657386, -0.207294, 0.724481,
		42.715511, 34.858612, 34.557461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.509712, 35.676350, 34.359737>,  <42.255341, 35.003716, 34.050327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.509712, 35.676350, 34.359737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785576, 35.388592, 34.392834>,  <42.951092, 35.215939, 34.412693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.785576, 35.388592, 34.392834>,  <42.509712, 35.676350, 34.359737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.785576, 35.388592, 34.392834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.683674, 0.609198, -0.401831,
		0.238670, 0.333692, 0.911968,
		0.689657, -0.719394, 0.082740,
		42.992474, 35.172775, 34.417656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.151131, 35.953693, 34.813374>,  <42.509712, 35.676350, 34.359737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.151131, 35.953693, 34.813374> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229683, 35.674442, 34.537968>,  <43.276814, 35.506893, 34.372723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.229683, 35.674442, 34.537968>,  <43.151131, 35.953693, 34.813374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.229683, 35.674442, 34.537968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.675432, 0.605338, -0.421139,
		0.710793, -0.382341, 0.590414,
		0.196382, -0.698127, -0.688515,
		43.288597, 35.465004, 34.331413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.811161, 35.902622, 35.274906>,  <43.151131, 35.953693, 34.813374>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.811161, 35.902622, 35.274906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136120, 35.881821, 35.507217>,  <44.331097, 35.869339, 35.646603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.136120, 35.881821, 35.507217>,  <43.811161, 35.902622, 35.274906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.136120, 35.881821, 35.507217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067794, 0.997684, -0.005493,
		-0.579145, 0.043836, 0.814045,
		0.812400, -0.052006, 0.580776,
		44.379841, 35.866219, 35.681450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.843559, 36.570000, 35.634869>,  <43.811161, 35.902622, 35.274906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.843559, 36.570000, 35.634869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209148, 36.411877, 35.671509>,  <44.428501, 36.317001, 35.693493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.209148, 36.411877, 35.671509>,  <43.843559, 36.570000, 35.634869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.209148, 36.411877, 35.671509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387586, 0.917291, 0.091396,
		-0.120150, -0.048032, 0.991593,
		0.913970, -0.395309, 0.091596,
		44.483341, 36.293285, 35.698986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.144928, 36.919624, 36.179058>,  <43.843559, 36.570000, 35.634869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.144928, 36.919624, 36.179058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436779, 36.786373, 35.940170>,  <44.611889, 36.706421, 35.796837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.436779, 36.786373, 35.940170>,  <44.144928, 36.919624, 36.179058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.436779, 36.786373, 35.940170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387606, 0.920950, -0.040163,
		0.563384, -0.202180, 0.801075,
		0.729630, -0.333129, -0.597215,
		44.655666, 36.686436, 35.761005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.687462, 37.145786, 36.502331>,  <44.144928, 36.919624, 36.179058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.687462, 37.145786, 36.502331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821316, 37.069759, 36.133137>,  <44.901627, 37.024143, 35.911621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.821316, 37.069759, 36.133137>,  <44.687462, 37.145786, 36.502331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.821316, 37.069759, 36.133137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361888, 0.930265, -0.060361,
		0.870090, -0.313816, 0.380082,
		0.334635, -0.190066, -0.922981,
		44.921707, 37.012741, 35.856243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.469154, 37.534878, 36.385109>,  <44.687462, 37.145786, 36.502331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.469154, 37.534878, 36.385109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350277, 37.457516, 36.011101>,  <45.278950, 37.411098, 35.786694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.350277, 37.457516, 36.011101>,  <45.469154, 37.534878, 36.385109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.350277, 37.457516, 36.011101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443959, 0.838983, -0.314655,
		0.845326, -0.508626, -0.163474,
		-0.297194, -0.193411, -0.935023,
		45.261116, 37.399494, 35.730595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.995659, 37.640491, 35.959190>,  <45.469154, 37.534878, 36.385109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.995659, 37.640491, 35.959190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675709, 37.678951, 35.722225>,  <45.483738, 37.702026, 35.580048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.675709, 37.678951, 35.722225>,  <45.995659, 37.640491, 35.959190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.675709, 37.678951, 35.722225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321111, 0.902477, -0.287096,
		0.507037, -0.419872, -0.752743,
		-0.799876, 0.096146, -0.592414,
		45.435745, 37.707794, 35.544502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.307953, 38.007824, 35.425365>,  <45.995659, 37.640491, 35.959190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.307953, 38.007824, 35.425365> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912277, 38.064007, 35.408463>,  <45.674873, 38.097717, 35.398323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.912277, 38.064007, 35.408463>,  <46.307953, 38.007824, 35.425365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.912277, 38.064007, 35.408463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143806, 0.985425, -0.090869,
		0.028874, -0.095962, -0.994966,
		-0.989185, 0.140459, -0.042254,
		45.615520, 38.106144, 35.395786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.166008, 38.457668, 34.873379>,  <46.307953, 38.007824, 35.425365>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.166008, 38.457668, 34.873379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849422, 38.498436, 35.114445>,  <45.659473, 38.522896, 35.259083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.849422, 38.498436, 35.114445>,  <46.166008, 38.457668, 34.873379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.849422, 38.498436, 35.114445> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046855, 0.993215, -0.106432,
		-0.609420, -0.056000, -0.790868,
		-0.791462, 0.101918, 0.602661,
		45.611984, 38.529011, 35.295242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.737625, 38.871334, 34.530243>,  <46.166008, 38.457668, 34.873379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.737625, 38.871334, 34.530243> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629990, 38.906082, 34.913918>,  <45.565411, 38.926929, 35.144123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.629990, 38.906082, 34.913918>,  <45.737625, 38.871334, 34.530243>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.629990, 38.906082, 34.913918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088795, 0.989445, -0.114521,
		-0.959015, -0.115987, -0.258530,
		-0.269084, 0.086871, 0.959191,
		45.549263, 38.932144, 35.201675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.269196, 39.334366, 34.493095>,  <45.737625, 38.871334, 34.530243>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.269196, 39.334366, 34.493095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382774, 39.350243, 34.876305>,  <45.450920, 39.359768, 35.106228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.382774, 39.350243, 34.876305>,  <45.269196, 39.334366, 34.493095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.382774, 39.350243, 34.876305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085572, 0.996205, -0.015914,
		-0.955015, -0.077461, 0.286263,
		0.283944, 0.039694, 0.958019,
		45.467957, 39.362152, 35.163712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.135246, 40.052795, 34.709415>,  <45.269196, 39.334366, 34.493095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.135246, 40.052795, 34.709415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319016, 39.901234, 35.030754>,  <45.429279, 39.810299, 35.223557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.319016, 39.901234, 35.030754>,  <45.135246, 40.052795, 34.709415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319016, 39.901234, 35.030754> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026863, 0.909961, 0.413823,
		-0.887810, -0.168541, 0.428237,
		0.459425, -0.378900, 0.803345,
		45.456844, 39.787563, 35.271759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.768517, 40.208035, 35.352299>,  <45.135246, 40.052795, 34.709415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.768517, 40.208035, 35.352299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159527, 40.177731, 35.430984>,  <45.394135, 40.159546, 35.478195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.159527, 40.177731, 35.430984>,  <44.768517, 40.208035, 35.352299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.159527, 40.177731, 35.430984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033813, 0.864739, 0.501081,
		-0.208068, -0.496473, 0.842746,
		0.977530, -0.075763, 0.196712,
		45.452785, 40.155003, 35.489998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.938911, 40.472305, 36.019527>,  <44.768517, 40.208035, 35.352299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.938911, 40.472305, 36.019527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302811, 40.499210, 35.855656>,  <45.521149, 40.515354, 35.757332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.302811, 40.499210, 35.855656>,  <44.938911, 40.472305, 36.019527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.302811, 40.499210, 35.855656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174127, 0.833976, 0.523606,
		0.376883, -0.547685, 0.746994,
		0.909747, 0.067266, -0.409678,
		45.575733, 40.519390, 35.732754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.398026, 40.691654, 36.555977>,  <44.938911, 40.472305, 36.019527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.398026, 40.691654, 36.555977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591972, 40.757393, 36.212376>,  <45.708340, 40.796837, 36.006214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.591972, 40.757393, 36.212376>,  <45.398026, 40.691654, 36.555977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.591972, 40.757393, 36.212376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181875, 0.941765, 0.282844,
		0.855468, -0.293373, 0.426738,
		0.484866, 0.164351, -0.859007,
		45.737431, 40.806698, 35.954674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.952282, 40.975571, 36.848366>,  <45.398026, 40.691654, 36.555977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.952282, 40.975571, 36.848366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945122, 41.102707, 36.469173>,  <45.940826, 41.178989, 36.241657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.945122, 41.102707, 36.469173>,  <45.952282, 40.975571, 36.848366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.945122, 41.102707, 36.469173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.264706, 0.915803, 0.302052,
		0.964163, -0.245528, -0.100525,
		-0.017899, 0.317837, -0.947977,
		45.939751, 41.198059, 36.184780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.637615, 41.359089, 36.725063>,  <45.952282, 40.975571, 36.848366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.637615, 41.359089, 36.725063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394630, 41.475368, 36.429363>,  <46.248840, 41.545135, 36.251945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.394630, 41.475368, 36.429363>,  <46.637615, 41.359089, 36.725063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.394630, 41.475368, 36.429363> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.226586, 0.955380, 0.189495,
		0.761346, -0.052392, -0.646225,
		-0.607463, 0.290697, -0.739246,
		46.212391, 41.562576, 36.207588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.087337, 41.782986, 36.360878>,  <46.637615, 41.359089, 36.725063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.087337, 41.782986, 36.360878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702698, 41.872398, 36.297173>,  <46.471916, 41.926044, 36.258949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.702698, 41.872398, 36.297173>,  <47.087337, 41.782986, 36.360878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.702698, 41.872398, 36.297173> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198358, 0.967046, 0.159612,
		0.189694, 0.121891, -0.974248,
		-0.961598, 0.223528, -0.159265,
		46.414219, 41.939457, 36.249393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.068291, 42.408497, 36.026711>,  <47.087337, 41.782986, 36.360878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.068291, 42.408497, 36.026711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683777, 42.400200, 36.136616>,  <46.453068, 42.395222, 36.202557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.683777, 42.400200, 36.136616>,  <47.068291, 42.408497, 36.026711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.683777, 42.400200, 36.136616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008698, 0.994381, 0.105499,
		-0.275405, 0.103805, -0.955708,
		-0.961289, -0.020742, 0.274760,
		46.395390, 42.393978, 36.219044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.815506, 42.909737, 35.649139>,  <47.068291, 42.408497, 36.026711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.815506, 42.909737, 35.649139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578236, 42.851704, 35.965897>,  <46.435875, 42.816883, 36.155952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.578236, 42.851704, 35.965897>,  <46.815506, 42.909737, 35.649139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.578236, 42.851704, 35.965897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116336, 0.957857, 0.262633,
		-0.796626, 0.247913, -0.551295,
		-0.593172, -0.145085, 0.791895,
		46.400284, 42.808178, 36.203465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.248627, 43.345829, 35.669334>,  <46.815506, 42.909737, 35.649139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.248627, 43.345829, 35.669334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339901, 43.248856, 36.046516>,  <46.394665, 43.190670, 36.272823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.339901, 43.248856, 36.046516>,  <46.248627, 43.345829, 35.669334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.339901, 43.248856, 36.046516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209411, 0.933615, 0.290707,
		-0.950831, -0.263799, 0.162267,
		0.228183, -0.242432, 0.942952,
		46.408356, 43.176125, 36.329403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.898743, 43.941994, 36.106537>,  <46.248627, 43.345829, 35.669334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.898743, 43.941994, 36.106537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103340, 43.751659, 36.392738>,  <46.226097, 43.637459, 36.564461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.103340, 43.751659, 36.392738>,  <45.898743, 43.941994, 36.106537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.103340, 43.751659, 36.392738> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018302, 0.826455, 0.562705,
		-0.859092, -0.300915, 0.414019,
		0.511494, -0.475838, 0.715508,
		46.256790, 43.608910, 36.607391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.490524, 43.984821, 36.669785>,  <45.898743, 43.941994, 36.106537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.490524, 43.984821, 36.669785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878883, 43.956657, 36.761353>,  <46.111900, 43.939758, 36.816292>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.878883, 43.956657, 36.761353>,  <45.490524, 43.984821, 36.669785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.878883, 43.956657, 36.761353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068238, 0.834876, 0.546192,
		-0.229571, -0.545917, 0.805774,
		0.970897, -0.070406, 0.228916,
		46.170151, 43.935535, 36.830029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.587250, 44.117527, 37.407650>,  <45.490524, 43.984821, 36.669785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.587250, 44.117527, 37.407650> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933712, 44.204361, 37.227581>,  <46.141590, 44.256462, 37.119541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.933712, 44.204361, 37.227581>,  <45.587250, 44.117527, 37.407650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.933712, 44.204361, 37.227581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003448, 0.898123, 0.439731,
		0.499766, -0.382427, 0.777163,
		0.866153, 0.217083, -0.450170,
		46.193558, 44.269485, 37.092529>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.033649, 44.015099, 37.809246>,  <45.587250, 44.117527, 37.407650>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.033649, 44.015099, 37.809246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118561, 44.173149, 37.451740>,  <45.169506, 44.267979, 37.237236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.118561, 44.173149, 37.451740>,  <45.033649, 44.015099, 37.809246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.118561, 44.173149, 37.451740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797918, 0.598094, 0.074899,
		0.564150, 0.697251, 0.442240,
		0.212278, 0.395125, -0.893764,
		45.182243, 44.291687, 37.183613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.619667, 43.477997, 38.299469>,  <45.033649, 44.015099, 37.809246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.619667, 43.477997, 38.299469> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429020, 43.240421, 38.040218>,  <44.314632, 43.097874, 37.884666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.429020, 43.240421, 38.040218>,  <44.619667, 43.477997, 38.299469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.429020, 43.240421, 38.040218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744898, -0.118677, 0.656539,
		-0.466862, 0.795708, -0.385862,
		-0.476620, -0.593941, -0.648126,
		44.286034, 43.062241, 37.845779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.850269, 43.679173, 38.128796>,  <44.619667, 43.477997, 38.299469>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.850269, 43.679173, 38.128796> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974297, 43.300674, 38.165630>,  <44.048714, 43.073574, 38.187733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.974297, 43.300674, 38.165630>,  <43.850269, 43.679173, 38.128796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.974297, 43.300674, 38.165630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.637744, -0.135177, 0.758294,
		-0.705083, -0.293850, -0.645376,
		0.310065, -0.946245, 0.092090,
		44.067318, 43.016800, 38.193256>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.269024, 43.250027, 38.095119>,  <43.850269, 43.679173, 38.128796>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.269024, 43.250027, 38.095119> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554787, 43.087662, 38.323105>,  <43.726242, 42.990242, 38.459896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.554787, 43.087662, 38.323105>,  <43.269024, 43.250027, 38.095119>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.554787, 43.087662, 38.323105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693510, -0.302348, 0.653934,
		-0.093109, -0.862452, -0.497501,
		0.714405, -0.405909, 0.569968,
		43.769108, 42.965889, 38.494095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.089245, 42.560104, 38.421070>,  <43.269024, 43.250027, 38.095119>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.089245, 42.560104, 38.421070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342247, 42.754616, 38.662224>,  <43.494049, 42.871323, 38.806915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.342247, 42.754616, 38.662224>,  <43.089245, 42.560104, 38.421070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.342247, 42.754616, 38.662224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616301, -0.155501, 0.772006,
		0.469158, -0.859857, 0.201338,
		0.632506, 0.486278, 0.602885,
		43.531998, 42.900497, 38.843090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.359947, 41.849487, 38.677593>,  <43.089245, 42.560104, 38.421070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.359947, 41.849487, 38.677593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502987, 42.109501, 38.945797>,  <43.588810, 42.265511, 39.106720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.502987, 42.109501, 38.945797>,  <43.359947, 41.849487, 38.677593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.502987, 42.109501, 38.945797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457731, -0.747825, 0.480875,
		0.814007, 0.134952, -0.564960,
		0.357596, 0.650036, 0.670506,
		43.610264, 42.304512, 39.146950>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.058331, 41.774956, 38.758659>,  <43.359947, 41.849487, 38.677593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.058331, 41.774956, 38.758659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887867, 41.927567, 39.086761>,  <43.785587, 42.019135, 39.283623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.887867, 41.927567, 39.086761>,  <44.058331, 41.774956, 38.758659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.887867, 41.927567, 39.086761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314584, -0.787629, 0.529790,
		0.848189, 0.483816, 0.215634,
		-0.426160, 0.381527, 0.820259,
		43.760017, 42.042027, 39.332840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.541374, 41.735153, 39.235901>,  <44.058331, 41.774956, 38.758659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.541374, 41.735153, 39.235901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158421, 41.706478, 39.347813>,  <43.928650, 41.689274, 39.414959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.158421, 41.706478, 39.347813>,  <44.541374, 41.735153, 39.235901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.158421, 41.706478, 39.347813> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188381, -0.889280, 0.416767,
		0.218928, 0.451711, 0.864886,
		-0.957384, -0.071686, 0.279782,
		43.871204, 41.684971, 39.431747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.443558, 41.740704, 39.967949>,  <44.541374, 41.735153, 39.235901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.443558, 41.740704, 39.967949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145729, 41.533955, 39.798973>,  <43.967030, 41.409904, 39.697590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.145729, 41.533955, 39.798973>,  <44.443558, 41.740704, 39.967949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.145729, 41.533955, 39.798973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182348, -0.766246, 0.616130,
		-0.642149, 0.381725, 0.664779,
		-0.744576, -0.516869, -0.422437,
		43.922356, 41.378895, 39.672241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.427532, 41.157524, 40.369759>,  <44.443558, 41.740704, 39.967949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.427532, 41.157524, 40.369759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194584, 41.062107, 40.058907>,  <44.054813, 41.004856, 39.872395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.194584, 41.062107, 40.058907>,  <44.427532, 41.157524, 40.369759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.194584, 41.062107, 40.058907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032650, -0.948342, 0.315566,
		-0.812265, 0.209151, 0.544501,
		-0.582374, -0.238546, -0.777133,
		44.019871, 40.990543, 39.825768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.923759, 40.777893, 40.668877>,  <44.427532, 41.157524, 40.369759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.923759, 40.777893, 40.668877> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943821, 40.682858, 40.280849>,  <43.955856, 40.625835, 40.048031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.943821, 40.682858, 40.280849>,  <43.923759, 40.777893, 40.668877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.943821, 40.682858, 40.280849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114640, -0.963504, 0.241906,
		-0.992140, -0.123341, -0.021082,
		0.050149, -0.237588, -0.970071,
		43.958866, 40.611580, 39.989830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.749622, 40.111832, 40.640556>,  <43.923759, 40.777893, 40.668877>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.749622, 40.111832, 40.640556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918526, 40.151215, 40.280113>,  <44.019867, 40.174843, 40.063847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.918526, 40.151215, 40.280113>,  <43.749622, 40.111832, 40.640556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.918526, 40.151215, 40.280113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410948, -0.906853, 0.093487,
		-0.807972, -0.409786, -0.423387,
		0.422259, 0.098455, -0.901112,
		44.045204, 40.180752, 40.009781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.533611, 39.460743, 40.287601>,  <43.749622, 40.111832, 40.640556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.533611, 39.460743, 40.287601> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883080, 39.586784, 40.139328>,  <44.092762, 39.662411, 40.050362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.883080, 39.586784, 40.139328>,  <43.533611, 39.460743, 40.287601>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.883080, 39.586784, 40.139328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260777, -0.946523, -0.189972,
		-0.410725, 0.069306, -0.909121,
		0.873671, 0.315104, -0.370687,
		44.145180, 39.681316, 40.028122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.631641, 38.950565, 39.693604>,  <43.533611, 39.460743, 40.287601>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.631641, 38.950565, 39.693604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981792, 39.138447, 39.739380>,  <44.191883, 39.251175, 39.766846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.981792, 39.138447, 39.739380>,  <43.631641, 38.950565, 39.693604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.981792, 39.138447, 39.739380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483223, -0.843005, -0.236300,
		-0.014518, 0.262151, -0.964918,
		0.875377, 0.469701, 0.114438,
		44.244404, 39.279358, 39.773712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.030231, 38.875874, 39.058041>,  <43.631641, 38.950565, 39.693604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.030231, 38.875874, 39.058041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293190, 38.934128, 39.353775>,  <44.450966, 38.969082, 39.531216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.293190, 38.934128, 39.353775>,  <44.030231, 38.875874, 39.058041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.293190, 38.934128, 39.353775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.592978, -0.705406, -0.388303,
		0.464982, 0.693680, -0.550091,
		0.657395, 0.145639, 0.739338,
		44.490410, 38.977818, 39.575577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.712852, 39.008442, 38.795078>,  <44.030231, 38.875874, 39.058041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.712852, 39.008442, 38.795078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810684, 38.897968, 39.166862>,  <44.869381, 38.831684, 39.389935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.810684, 38.897968, 39.166862>,  <44.712852, 39.008442, 38.795078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.810684, 38.897968, 39.166862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643923, -0.670419, -0.368649,
		0.724945, 0.688667, 0.013872,
		0.244576, -0.276182, 0.929465,
		44.884056, 38.815113, 39.445702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.421371, 38.869419, 38.824005>,  <44.712852, 39.008442, 38.795078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.421371, 38.869419, 38.824005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327591, 38.681644, 39.164513>,  <45.271324, 38.568981, 39.368816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.327591, 38.681644, 39.164513>,  <45.421371, 38.869419, 38.824005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.327591, 38.681644, 39.164513> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579763, -0.770425, -0.265180,
		0.780325, 0.431363, 0.452790,
		-0.234451, -0.469438, 0.851270,
		45.257256, 38.540813, 39.419895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.966339, 38.623486, 38.970051>,  <45.421371, 38.869419, 38.824005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.966339, 38.623486, 38.970051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720627, 38.414295, 39.206406>,  <45.573200, 38.288780, 39.348221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.720627, 38.414295, 39.206406>,  <45.966339, 38.623486, 38.970051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.720627, 38.414295, 39.206406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532166, -0.827473, -0.179130,
		0.582627, 0.204415, 0.786613,
		-0.614284, -0.522975, 0.590891,
		45.536343, 38.257404, 39.383675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.384003, 38.314110, 39.477337>,  <45.966339, 38.623486, 38.970051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.384003, 38.314110, 39.477337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.037930, 38.113621, 39.471115>,  <45.830288, 37.993328, 39.467384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.037930, 38.113621, 39.471115>,  <46.384003, 38.314110, 39.477337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.037930, 38.113621, 39.471115> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.475002, -0.809192, -0.345805,
		0.160741, -0.306570, 0.938178,
		-0.865179, -0.501221, -0.015551,
		45.778378, 37.963253, 39.466450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.495258, 37.702831, 39.776073>,  <46.384003, 38.314110, 39.477337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.495258, 37.702831, 39.776073> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162449, 37.611694, 39.573757>,  <45.962765, 37.557011, 39.452366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.162449, 37.611694, 39.573757>,  <46.495258, 37.702831, 39.776073>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.162449, 37.611694, 39.573757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492585, -0.722790, -0.484701,
		-0.255143, -0.652427, 0.713611,
		-0.832023, -0.227846, -0.505790,
		45.912842, 37.543339, 39.422020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.434708, 36.993000, 39.961029>,  <46.495258, 37.702831, 39.776073>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.434708, 36.993000, 39.961029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238815, 37.071938, 39.621330>,  <46.121281, 37.119301, 39.417511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.238815, 37.071938, 39.621330>,  <46.434708, 36.993000, 39.961029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.238815, 37.071938, 39.621330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.463013, -0.766477, -0.445120,
		-0.738768, -0.611202, 0.283996,
		-0.489735, 0.197347, -0.849243,
		46.091896, 37.131142, 39.366558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.149406, 36.343636, 39.653599>,  <46.434708, 36.993000, 39.961029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.149406, 36.343636, 39.653599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133575, 36.599354, 39.346424>,  <46.124077, 36.752785, 39.162121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.133575, 36.599354, 39.346424>,  <46.149406, 36.343636, 39.653599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.133575, 36.599354, 39.346424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327893, -0.717673, -0.614354,
		-0.943885, -0.276117, -0.181218,
		-0.039578, 0.639300, -0.767938,
		46.121700, 36.791145, 39.116043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.813244, 35.974384, 39.038937>,  <46.149406, 36.343636, 39.653599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.813244, 35.974384, 39.038937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002975, 36.288692, 38.880150>,  <46.116814, 36.477276, 38.784878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.002975, 36.288692, 38.880150>,  <45.813244, 35.974384, 39.038937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.002975, 36.288692, 38.880150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130296, -0.508615, -0.851078,
		-0.870651, 0.351969, -0.343634,
		0.474330, 0.785766, -0.396966,
		46.145275, 36.524422, 38.761059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.468567, 35.990913, 38.441376>,  <45.813244, 35.974384, 39.038937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.468567, 35.990913, 38.441376> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805630, 36.201588, 38.396606>,  <46.007870, 36.327991, 38.369743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.805630, 36.201588, 38.396606>,  <45.468567, 35.990913, 38.441376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.805630, 36.201588, 38.396606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174347, -0.463556, -0.868746,
		-0.509440, 0.712543, -0.482446,
		0.842659, 0.526687, -0.111924,
		46.058426, 36.359592, 38.363029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.419693, 36.418320, 37.910484>,  <45.468567, 35.990913, 38.441376>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.419693, 36.418320, 37.910484> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811478, 36.360596, 37.966801>,  <46.046551, 36.325962, 38.000591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.811478, 36.360596, 37.966801>,  <45.419693, 36.418320, 37.910484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.811478, 36.360596, 37.966801> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062859, -0.444918, -0.893363,
		0.191562, 0.883868, -0.426711,
		0.979466, -0.144312, 0.140788,
		46.105316, 36.317303, 38.009037>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.824478, 36.770210, 37.317760>,  <45.419693, 36.418320, 37.910484>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.824478, 36.770210, 37.317760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049824, 36.485905, 37.486252>,  <46.185032, 36.315323, 37.587345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.049824, 36.485905, 37.486252>,  <45.824478, 36.770210, 37.317760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.049824, 36.485905, 37.486252> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232022, -0.353209, -0.906316,
		0.792958, 0.608323, -0.034074,
		0.563368, -0.710765, 0.421225,
		46.218834, 36.272675, 37.612617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.493214, 36.809090, 37.019321>,  <45.824478, 36.770210, 37.317760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.493214, 36.809090, 37.019321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452744, 36.444763, 37.179413>,  <46.428463, 36.226170, 37.275467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.452744, 36.444763, 37.179413>,  <46.493214, 36.809090, 37.019321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.452744, 36.444763, 37.179413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356001, -0.408801, -0.840325,
		0.928993, 0.057463, 0.365610,
		-0.101174, -0.910813, 0.400230,
		46.422390, 36.171520, 37.299480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.071629, 36.538414, 36.620052>,  <46.493214, 36.809090, 37.019321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.071629, 36.538414, 36.620052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927322, 36.201782, 36.780849>,  <46.840740, 35.999805, 36.877327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.927322, 36.201782, 36.780849>,  <47.071629, 36.538414, 36.620052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.927322, 36.201782, 36.780849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358586, -0.523050, -0.773198,
		0.860967, -0.134794, 0.490475,
		-0.360765, -0.841576, 0.401993,
		46.819092, 35.949310, 36.901447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.634396, 36.123367, 36.640583>,  <47.071629, 36.538414, 36.620052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.634396, 36.123367, 36.640583> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296833, 35.908886, 36.647648>,  <47.094296, 35.780197, 36.651886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.296833, 35.908886, 36.647648>,  <47.634396, 36.123367, 36.640583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.296833, 35.908886, 36.647648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.387578, -0.632097, -0.670997,
		0.370956, -0.559411, 0.741250,
		-0.843905, -0.536202, 0.017665,
		47.043663, 35.748024, 36.652946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.726978, 35.354736, 36.826965>,  <47.634396, 36.123367, 36.640583>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.726978, 35.354736, 36.826965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406963, 35.420212, 36.596088>,  <47.214954, 35.459496, 36.457561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.406963, 35.420212, 36.596088>,  <47.726978, 35.354736, 36.826965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.406963, 35.420212, 36.596088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.292568, -0.733472, -0.613533,
		-0.523777, -0.659717, 0.538917,
		-0.800039, 0.163685, -0.577188,
		47.166950, 35.469318, 36.422932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.391743, 34.709984, 36.585312>,  <47.726978, 35.354736, 36.826965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.391743, 34.709984, 36.585312> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354275, 35.030815, 36.349380>,  <47.331795, 35.223312, 36.207821>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.354275, 35.030815, 36.349380>,  <47.391743, 34.709984, 36.585312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.354275, 35.030815, 36.349380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581535, -0.436790, -0.686317,
		-0.808111, -0.407293, -0.425522,
		-0.093668, 0.802077, -0.589830,
		47.326176, 35.271439, 36.172432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.252670, 34.435207, 35.898163>,  <47.391743, 34.709984, 36.585312>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.252670, 34.435207, 35.898163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.391468, 34.807842, 35.854828>,  <47.474747, 35.031422, 35.828827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.391468, 34.807842, 35.854828>,  <47.252670, 34.435207, 35.898163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.391468, 34.807842, 35.854828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472702, -0.273497, -0.837707,
		-0.810027, 0.239470, -0.535266,
		0.346999, 0.931587, -0.108342,
		47.495567, 35.087318, 35.822327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.051968, 34.689373, 35.241653>,  <47.252670, 34.435207, 35.898163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.051968, 34.689373, 35.241653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390720, 34.865528, 35.360886>,  <47.593971, 34.971222, 35.432426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.390720, 34.865528, 35.360886>,  <47.051968, 34.689373, 35.241653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.390720, 34.865528, 35.360886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457574, -0.317843, -0.830422,
		-0.270965, 0.839663, -0.470685,
		0.846879, 0.440389, 0.298084,
		47.644783, 34.997646, 35.450310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.225769, 35.280979, 34.782242>,  <47.051968, 34.689373, 35.241653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.225769, 35.280979, 34.782242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551044, 35.126118, 34.956066>,  <47.746208, 35.033199, 35.060360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.551044, 35.126118, 34.956066>,  <47.225769, 35.280979, 34.782242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.551044, 35.126118, 34.956066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304632, -0.353069, -0.884614,
		0.495913, 0.851735, -0.169169,
		0.813185, -0.387157, 0.434557,
		47.794998, 35.009972, 35.086433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<37.392220, 38.491074, 43.539459> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040836, 38.301258, 43.561810>,  <36.830006, 38.187370, 43.575222>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.040836, 38.301258, 43.561810>,  <37.392220, 38.491074, 43.539459>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040836, 38.301258, 43.561810> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018702, -0.151004, -0.988356,
		0.477449, -0.867187, 0.141526,
		-0.878461, -0.474536, 0.055878,
		36.777298, 38.158897, 43.578571>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.488400, 37.825989, 43.277355>,  <37.392220, 38.491074, 43.539459>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.488400, 37.825989, 43.277355> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109348, 37.944035, 43.228516>,  <36.881916, 38.014862, 43.199211>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.109348, 37.944035, 43.228516>,  <37.488400, 37.825989, 43.277355>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.109348, 37.944035, 43.228516> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085886, -0.132749, -0.987422,
		-0.307609, -0.946196, 0.100450,
		-0.947629, 0.295112, -0.122100,
		36.825058, 38.032566, 43.191887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.248501, 37.565361, 42.537521>,  <37.488400, 37.825989, 43.277355>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.248501, 37.565361, 42.537521> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945148, 37.813763, 42.616730>,  <36.763138, 37.962803, 42.664253>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.945148, 37.813763, 42.616730>,  <37.248501, 37.565361, 42.537521>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.945148, 37.813763, 42.616730> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143401, 0.137395, -0.980081,
		-0.635846, -0.771667, -0.015144,
		-0.758377, 0.621009, 0.198020,
		36.717636, 38.000065, 42.676136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.639740, 37.303699, 42.077812>,  <37.248501, 37.565361, 42.537521>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.639740, 37.303699, 42.077812> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548237, 37.680981, 42.174179>,  <36.493336, 37.907349, 42.231998>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.548237, 37.680981, 42.174179>,  <36.639740, 37.303699, 42.077812>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.548237, 37.680981, 42.174179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129199, 0.215872, -0.967836,
		-0.964873, -0.252523, 0.072480,
		-0.228754, 0.943203, 0.240915,
		36.479610, 37.963940, 42.246452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.940285, 37.403656, 41.956600>,  <36.639740, 37.303699, 42.077812>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.940285, 37.403656, 41.956600> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079464, 37.778515, 41.967148>,  <36.162971, 38.003429, 41.973476>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.079464, 37.778515, 41.967148>,  <35.940285, 37.403656, 41.956600>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.079464, 37.778515, 41.967148> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452219, 0.192408, -0.870906,
		-0.821237, 0.291107, 0.490741,
		0.347950, 0.937142, 0.026368,
		36.183849, 38.059658, 41.975060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.374981, 37.751133, 41.707531>,  <35.940285, 37.403656, 41.956600>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.374981, 37.751133, 41.707531> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715130, 37.947758, 41.632454>,  <35.919220, 38.065731, 41.587406>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.715130, 37.947758, 41.632454>,  <35.374981, 37.751133, 41.707531>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.715130, 37.947758, 41.632454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222746, 0.013134, -0.974788,
		-0.476701, 0.870745, 0.120662,
		0.850377, 0.491559, -0.187694,
		35.970242, 38.095226, 41.576145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.203930, 38.376484, 41.222904>,  <35.374981, 37.751133, 41.707531>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.203930, 38.376484, 41.222904> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593304, 38.286190, 41.207569>,  <35.826927, 38.232014, 41.198368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.593304, 38.286190, 41.207569>,  <35.203930, 38.376484, 41.222904>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.593304, 38.286190, 41.207569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003118, 0.180487, -0.983572,
		0.228944, 0.957324, 0.176396,
		0.973435, -0.225733, -0.038337,
		35.885334, 38.218472, 41.196068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.582935, 38.872162, 40.829342>,  <35.203930, 38.376484, 41.222904>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.582935, 38.872162, 40.829342> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837673, 38.564014, 40.816925>,  <35.990517, 38.379128, 40.809475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.837673, 38.564014, 40.816925>,  <35.582935, 38.872162, 40.829342>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.837673, 38.564014, 40.816925> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.016181, 0.053613, -0.998431,
		0.770824, 0.635340, 0.046609,
		0.636842, -0.770369, -0.031046,
		36.028725, 38.332905, 40.807610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145584, 39.044514, 40.332470>,  <35.582935, 38.872162, 40.829342>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145584, 39.044514, 40.332470> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170750, 38.647915, 40.378044>,  <36.185848, 38.409958, 40.405388>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.170750, 38.647915, 40.378044>,  <36.145584, 39.044514, 40.332470>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.170750, 38.647915, 40.378044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021844, -0.115505, -0.993067,
		0.997780, 0.059989, -0.028925,
		0.062914, -0.991494, 0.113938,
		36.189625, 38.350468, 40.412224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616222, 38.822983, 39.895309>,  <36.145584, 39.044514, 40.332470>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616222, 38.822983, 39.895309> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420265, 38.482525, 39.970741>,  <36.302692, 38.278252, 40.015999>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.420265, 38.482525, 39.970741>,  <36.616222, 38.822983, 39.895309>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.420265, 38.482525, 39.970741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.019131, -0.226758, -0.973763,
		0.871574, -0.473430, 0.127370,
		-0.489891, -0.851143, 0.188579,
		36.273296, 38.227180, 40.027313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.916378, 38.294800, 39.461689>,  <36.616222, 38.822983, 39.895309>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.916378, 38.294800, 39.461689> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567245, 38.124630, 39.557343>,  <36.357765, 38.022530, 39.614735>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.567245, 38.124630, 39.557343>,  <36.916378, 38.294800, 39.461689>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.567245, 38.124630, 39.557343> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093529, -0.335102, -0.937528,
		0.478983, -0.840666, 0.252697,
		-0.872828, -0.425425, 0.239135,
		36.305397, 37.997002, 39.629082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.952415, 37.593834, 39.259113>,  <36.916378, 38.294800, 39.461689>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.952415, 37.593834, 39.259113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574970, 37.726234, 39.261299>,  <36.348503, 37.805676, 39.262611>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.574970, 37.726234, 39.261299>,  <36.952415, 37.593834, 39.259113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574970, 37.726234, 39.261299> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162568, -0.448940, -0.878649,
		-0.288378, -0.829996, 0.477436,
		-0.943615, 0.330999, 0.005467,
		36.291885, 37.825535, 39.262939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.616871, 37.020016, 39.041798>,  <36.952415, 37.593834, 39.259113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.616871, 37.020016, 39.041798> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329590, 37.292854, 38.986771>,  <36.157223, 37.456558, 38.953754>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.329590, 37.292854, 38.986771>,  <36.616871, 37.020016, 39.041798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329590, 37.292854, 38.986771> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003163, -0.194493, -0.980899,
		-0.695826, -0.704920, 0.137528,
		-0.718204, 0.682100, -0.137563,
		36.114128, 37.497486, 38.945503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.919910, 36.666206, 38.915409>,  <36.616871, 37.020016, 39.041798>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.919910, 36.666206, 38.915409> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881592, 37.036705, 38.769588>,  <35.858601, 37.259003, 38.682098>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.881592, 37.036705, 38.769588>,  <35.919910, 36.666206, 38.915409>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.881592, 37.036705, 38.769588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010312, -0.367135, -0.930110,
		-0.995348, -0.085338, 0.044721,
		-0.095793, 0.926244, -0.364547,
		35.852856, 37.314579, 38.660225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.415760, 36.579479, 38.378700>,  <35.919910, 36.666206, 38.915409>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.415760, 36.579479, 38.378700> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609062, 36.921490, 38.303444>,  <35.725044, 37.126698, 38.258289>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609062, 36.921490, 38.303444>,  <35.415760, 36.579479, 38.378700>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609062, 36.921490, 38.303444> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092739, -0.263685, -0.960140,
		-0.870555, 0.446543, -0.206722,
		0.483254, 0.855026, -0.188140,
		35.754040, 37.177998, 38.247002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086128, 36.951866, 37.782433>,  <35.415760, 36.579479, 38.378700>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086128, 36.951866, 37.782433> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472343, 37.054569, 37.799480>,  <35.704071, 37.116192, 37.809708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.472343, 37.054569, 37.799480>,  <35.086128, 36.951866, 37.782433>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.472343, 37.054569, 37.799480> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118471, -0.287759, -0.950347,
		-0.231747, 0.922642, -0.308260,
		0.965535, 0.256760, 0.042618,
		35.762005, 37.131596, 37.812267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.269939, 37.178482, 37.080799>,  <35.086128, 36.951866, 37.782433>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.269939, 37.178482, 37.080799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636978, 37.119450, 37.228443>,  <35.857201, 37.084030, 37.317028>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.636978, 37.119450, 37.228443>,  <35.269939, 37.178482, 37.080799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.636978, 37.119450, 37.228443> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.321314, -0.271329, -0.907269,
		0.234048, 0.951104, -0.201549,
		0.917594, -0.147584, 0.369107,
		35.912258, 37.075176, 37.339176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610413, 37.505119, 36.613873>,  <35.269939, 37.178482, 37.080799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610413, 37.505119, 36.613873> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863258, 37.244602, 36.781803>,  <36.014965, 37.088291, 36.882561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.863258, 37.244602, 36.781803>,  <35.610413, 37.505119, 36.613873>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.863258, 37.244602, 36.781803> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.411766, -0.176645, -0.894005,
		0.656418, 0.737981, 0.156521,
		0.632110, -0.651291, 0.419829,
		36.052891, 37.049213, 36.907753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.188972, 37.681648, 36.301064>,  <35.610413, 37.505119, 36.613873>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.188972, 37.681648, 36.301064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245205, 37.312733, 36.445072>,  <36.278942, 37.091381, 36.531475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.245205, 37.312733, 36.445072>,  <36.188972, 37.681648, 36.301064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.245205, 37.312733, 36.445072> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394054, -0.281467, -0.874928,
		0.908273, 0.264862, 0.323865,
		0.140578, -0.922293, 0.360018,
		36.287380, 37.036045, 36.553078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.745140, 37.528477, 35.906567>,  <36.188972, 37.681648, 36.301064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.745140, 37.528477, 35.906567> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590969, 37.184513, 36.040436>,  <36.498466, 36.978134, 36.120758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.590969, 37.184513, 36.040436>,  <36.745140, 37.528477, 35.906567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590969, 37.184513, 36.040436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197501, -0.431172, -0.880388,
		0.901353, -0.273230, 0.336019,
		-0.385430, -0.859905, 0.334675,
		36.475342, 36.926540, 36.140839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.236080, 36.978088, 35.853756>,  <36.745140, 37.528477, 35.906567>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.236080, 36.978088, 35.853756> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879257, 36.797428, 35.847488>,  <36.665165, 36.689030, 35.843727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.879257, 36.797428, 35.847488>,  <37.236080, 36.978088, 35.853756>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.879257, 36.797428, 35.847488> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.312127, -0.590667, -0.744104,
		0.326824, -0.668672, 0.667881,
		-0.892056, -0.451654, -0.015666,
		36.611641, 36.661934, 35.842789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.426464, 36.392582, 35.538338>,  <37.236080, 36.978088, 35.853756>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.426464, 36.392582, 35.538338> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028301, 36.362869, 35.514198>,  <36.789402, 36.345043, 35.499714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.028301, 36.362869, 35.514198>,  <37.426464, 36.392582, 35.538338>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.028301, 36.362869, 35.514198> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093955, -0.638241, -0.764081,
		0.018240, -0.766244, 0.642291,
		-0.995409, -0.074283, -0.060351,
		36.729679, 36.340584, 35.496094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.045280, 35.923355, 35.697620>,  <37.426464, 36.392582, 35.538338>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.045280, 35.923355, 35.697620> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428379, 35.964939, 35.590359>,  <38.658237, 35.989887, 35.526001>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.428379, 35.964939, 35.590359>,  <38.045280, 35.923355, 35.697620>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.428379, 35.964939, 35.590359> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.181031, 0.506592, 0.842966,
		0.223478, -0.855896, 0.466369,
		0.957750, 0.103957, -0.268156,
		38.715706, 35.996128, 35.509911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.418633, 35.605820, 36.244919>,  <38.045280, 35.923355, 35.697620>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.418633, 35.605820, 36.244919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619717, 35.897800, 36.059681>,  <38.740368, 36.072987, 35.948540>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.619717, 35.897800, 36.059681>,  <38.418633, 35.605820, 36.244919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619717, 35.897800, 36.059681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048249, 0.511176, 0.858121,
		0.863106, -0.453732, 0.221755,
		0.502712, 0.729949, -0.463092,
		38.770531, 36.116787, 35.920753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.016434, 35.678890, 36.630276>,  <38.418633, 35.605820, 36.244919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.016434, 35.678890, 36.630276> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041298, 36.019199, 36.421539>,  <39.056217, 36.223385, 36.296295>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.041298, 36.019199, 36.421539>,  <39.016434, 35.678890, 36.630276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.041298, 36.019199, 36.421539> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118384, 0.512878, 0.850259,
		0.991021, -0.114627, -0.068839,
		0.062157, 0.850774, -0.521843,
		39.059944, 36.274433, 36.264988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.540337, 36.087082, 36.959488>,  <39.016434, 35.678890, 36.630276>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.540337, 36.087082, 36.959488> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349243, 36.351368, 36.727894>,  <39.234585, 36.509941, 36.588940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.349243, 36.351368, 36.727894>,  <39.540337, 36.087082, 36.959488>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.349243, 36.351368, 36.727894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.081844, 0.689664, 0.719490,
		0.874682, 0.296342, -0.383554,
		-0.477738, 0.660716, -0.578982,
		39.205921, 36.549583, 36.554199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.901539, 36.683582, 36.907814>,  <39.540337, 36.087082, 36.959488>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.901539, 36.683582, 36.907814> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531490, 36.806622, 36.818783>,  <39.309464, 36.880444, 36.765366>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.531490, 36.806622, 36.818783>,  <39.901539, 36.683582, 36.907814>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.531490, 36.806622, 36.818783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020335, 0.545243, 0.838031,
		0.379131, 0.779805, -0.498160,
		-0.925119, 0.307594, -0.222576,
		39.253956, 36.898899, 36.752010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.835930, 37.422607, 37.160099>,  <39.901539, 36.683582, 36.907814>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.835930, 37.422607, 37.160099> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478477, 37.245434, 37.131176>,  <39.264004, 37.139130, 37.113823>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.478477, 37.245434, 37.131176>,  <39.835930, 37.422607, 37.160099>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.478477, 37.245434, 37.131176> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254746, 0.367976, 0.894258,
		-0.369486, 0.817561, -0.441671,
		-0.893636, -0.442930, -0.072308,
		39.210388, 37.112556, 37.109482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.418575, 37.951717, 37.382198>,  <39.835930, 37.422607, 37.160099>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.418575, 37.951717, 37.382198> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210701, 37.612835, 37.426311>,  <39.085976, 37.409504, 37.452778>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.210701, 37.612835, 37.426311>,  <39.418575, 37.951717, 37.382198>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210701, 37.612835, 37.426311> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265702, 0.282946, 0.921598,
		-0.811989, 0.449643, -0.372149,
		-0.519688, -0.847209, 0.110278,
		39.054794, 37.358673, 37.459396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.977352, 38.205204, 37.740437>,  <39.418575, 37.951717, 37.382198>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.977352, 38.205204, 37.740437> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932339, 37.812016, 37.798557>,  <38.905331, 37.576103, 37.833431>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.932339, 37.812016, 37.798557>,  <38.977352, 38.205204, 37.740437>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932339, 37.812016, 37.798557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.111140, 0.157767, 0.981202,
		-0.987413, 0.094265, -0.127001,
		-0.112529, -0.982967, 0.145305,
		38.898579, 37.517124, 37.842148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.367363, 38.125019, 38.029446>,  <38.977352, 38.205204, 37.740437>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.367363, 38.125019, 38.029446> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548199, 37.779289, 38.117596>,  <38.656700, 37.571854, 38.170486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.548199, 37.779289, 38.117596>,  <38.367363, 38.125019, 38.029446>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.548199, 37.779289, 38.117596> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019173, 0.237594, 0.971175,
		-0.891767, -0.443283, 0.090842,
		0.452089, -0.864320, 0.220378,
		38.683826, 37.519993, 38.183708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.994606, 37.734692, 38.523010>,  <38.367363, 38.125019, 38.029446>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.994606, 37.734692, 38.523010> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372818, 37.610107, 38.560894>,  <38.599743, 37.535358, 38.583626>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.372818, 37.610107, 38.560894>,  <37.994606, 37.734692, 38.523010>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372818, 37.610107, 38.560894> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042381, 0.170687, 0.984413,
		-0.322773, -0.934803, 0.148189,
		0.945526, -0.311462, 0.094711,
		38.656475, 37.516670, 38.589306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.932987, 37.293903, 39.097107>,  <37.994606, 37.734692, 38.523010>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.932987, 37.293903, 39.097107> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323803, 37.372009, 39.062992>,  <38.558292, 37.418873, 39.042522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.323803, 37.372009, 39.062992>,  <37.932987, 37.293903, 39.097107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.323803, 37.372009, 39.062992> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064423, 0.110822, 0.991750,
		0.203104, -0.974469, 0.095698,
		0.977036, 0.195264, -0.085287,
		38.616913, 37.430588, 39.037407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274723, 36.882240, 39.563232>,  <37.932987, 37.293903, 39.097107>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.274723, 36.882240, 39.563232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537045, 37.173519, 39.483585>,  <38.694439, 37.348286, 39.435799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.537045, 37.173519, 39.483585>,  <38.274723, 36.882240, 39.563232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537045, 37.173519, 39.483585> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187027, 0.098813, 0.977373,
		0.731397, -0.678205, -0.071391,
		0.655804, 0.728200, -0.199114,
		38.733788, 37.391979, 39.423851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957508, 36.722836, 39.725014>,  <38.274723, 36.882240, 39.563232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957508, 36.722836, 39.725014> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927265, 37.121296, 39.742767>,  <38.909119, 37.360371, 39.753418>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.927265, 37.121296, 39.742767>,  <38.957508, 36.722836, 39.725014>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927265, 37.121296, 39.742767> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219019, -0.026832, 0.975351,
		0.972787, 0.083465, -0.216147,
		-0.075608, 0.996149, 0.044382,
		38.904583, 37.420139, 39.756081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.514740, 36.950771, 40.277794>,  <38.957508, 36.722836, 39.725014>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.514740, 36.950771, 40.277794> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.302025, 37.281845, 40.206081>,  <39.174397, 37.480488, 40.163055>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.302025, 37.281845, 40.206081>,  <39.514740, 36.950771, 40.277794>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.302025, 37.281845, 40.206081> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.087083, 0.264019, 0.960578,
		0.842387, 0.495213, -0.212480,
		-0.531789, 0.827682, -0.179282,
		39.142487, 37.530151, 40.152298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.887066, 37.426701, 40.662983>,  <39.514740, 36.950771, 40.277794>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.887066, 37.426701, 40.662983> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525494, 37.590237, 40.612782>,  <39.308548, 37.688358, 40.582661>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.525494, 37.590237, 40.612782>,  <39.887066, 37.426701, 40.662983>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.525494, 37.590237, 40.612782> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073812, 0.438200, 0.895842,
		0.421254, 0.800518, -0.426281,
		-0.903934, 0.408842, -0.125505,
		39.254314, 37.712891, 40.575130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.953262, 38.176929, 40.774479>,  <39.887066, 37.426701, 40.662983>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.953262, 38.176929, 40.774479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565056, 38.088051, 40.811844>,  <39.332130, 38.034725, 40.834263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.565056, 38.088051, 40.811844>,  <39.953262, 38.176929, 40.774479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.565056, 38.088051, 40.811844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053755, 0.577313, 0.814752,
		-0.234959, 0.785710, -0.572237,
		-0.970518, -0.222193, 0.093409,
		39.273899, 38.021393, 40.839867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.624588, 38.796890, 40.908142>,  <39.953262, 38.176929, 40.774479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.624588, 38.796890, 40.908142> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339424, 38.542923, 41.027229>,  <39.168324, 38.390541, 41.098682>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.339424, 38.542923, 41.027229>,  <39.624588, 38.796890, 40.908142>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.339424, 38.542923, 41.027229> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114966, 0.524624, 0.843536,
		-0.691765, 0.567140, -0.447005,
		-0.712913, -0.634918, 0.297715,
		39.125549, 38.352448, 41.116543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.068962, 39.192604, 41.241779>,  <39.624588, 38.796890, 40.908142>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.068962, 39.192604, 41.241779> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.016552, 38.831020, 41.404594>,  <38.985107, 38.614071, 41.502285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.016552, 38.831020, 41.404594>,  <39.068962, 39.192604, 41.241779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.016552, 38.831020, 41.404594> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025986, 0.413571, 0.910101,
		-0.991038, 0.108670, -0.077679,
		-0.131026, -0.903964, 0.407040,
		38.977245, 38.559830, 41.526707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<38.680779, 39.360336, 41.810345> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833755, 39.001282, 41.897968>,  <38.925541, 38.785851, 41.950542>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.833755, 39.001282, 41.897968>,  <38.680779, 39.360336, 41.810345>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.833755, 39.001282, 41.897968> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113119, 0.280782, 0.953082,
		-0.917028, -0.339722, 0.208924,
		0.382445, -0.897636, 0.219055,
		38.948490, 38.731991, 41.963684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398266, 39.299332, 42.374657>,  <38.680779, 39.360336, 41.810345>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398266, 39.299332, 42.374657> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686451, 39.021969, 42.378983>,  <38.859364, 38.855553, 42.381580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.686451, 39.021969, 42.378983>,  <38.398266, 39.299332, 42.374657>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.686451, 39.021969, 42.378983> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112762, 0.132526, 0.984744,
		-0.684262, -0.708255, 0.173670,
		0.720465, -0.693406, 0.010818,
		38.902592, 38.813946, 42.382229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.163712, 38.658150, 42.715019>,  <38.398266, 39.299332, 42.374657>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.163712, 38.658150, 42.715019> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560978, 38.684490, 42.753555>,  <38.799339, 38.700294, 42.776676>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.560978, 38.684490, 42.753555>,  <38.163712, 38.658150, 42.715019>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.560978, 38.684490, 42.753555> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091712, -0.070003, 0.993322,
		0.072157, -0.995371, -0.063485,
		0.993168, 0.065853, 0.096339,
		38.858929, 38.704247, 42.782455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.370724, 38.065399, 43.164005>,  <38.163712, 38.658150, 42.715019>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.370724, 38.065399, 43.164005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682362, 38.316158, 43.164497>,  <38.869347, 38.466614, 43.164791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.682362, 38.316158, 43.164497>,  <38.370724, 38.065399, 43.164005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682362, 38.316158, 43.164497> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088215, -0.111571, 0.989833,
		0.620664, -0.771069, -0.142227,
		0.779098, 0.626901, 0.001228,
		38.916092, 38.504227, 43.164867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.856071, 37.710850, 43.583710>,  <38.370724, 38.065399, 43.164005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.856071, 37.710850, 43.583710> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985512, 38.089172, 43.594547>,  <39.063175, 38.316166, 43.601051>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<38.985512, 38.089172, 43.594547>,  <38.856071, 37.710850, 43.583710>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.985512, 38.089172, 43.594547> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120436, -0.069576, 0.990280,
		0.938499, -0.317189, -0.136424,
		0.323598, 0.945807, 0.027096,
		39.082592, 38.372913, 43.602676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.573723, 37.734726, 43.838718>,  <38.856071, 37.710850, 43.583710>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.573723, 37.734726, 43.838718> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410294, 38.093872, 43.904335>,  <39.312237, 38.309361, 43.943707>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.410294, 38.093872, 43.904335>,  <39.573723, 37.734726, 43.838718>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.410294, 38.093872, 43.904335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196005, -0.089228, 0.976535,
		0.891433, 0.431135, -0.139530,
		-0.408569, 0.897865, 0.164045,
		39.287724, 38.363232, 43.953548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.029808, 37.938179, 44.431725>,  <39.573723, 37.734726, 43.838718>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.029808, 37.938179, 44.431725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740223, 38.214027, 44.424740>,  <39.566471, 38.379536, 44.420551>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.740223, 38.214027, 44.424740>,  <40.029808, 37.938179, 44.431725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.740223, 38.214027, 44.424740> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.186382, 0.219905, 0.957551,
		0.664186, 0.689975, -0.287735,
		-0.723961, 0.689620, -0.017459,
		39.523033, 38.420914, 44.419502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.307365, 38.581097, 44.732349>,  <40.029808, 37.938179, 44.431725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.307365, 38.581097, 44.732349> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909096, 38.575459, 44.769077>,  <39.670132, 38.572075, 44.791115>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.909096, 38.575459, 44.769077>,  <40.307365, 38.581097, 44.732349>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.909096, 38.575459, 44.769077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092114, -0.021991, 0.995506,
		-0.012010, 0.999659, 0.023194,
		-0.995676, -0.014093, 0.091818,
		39.610394, 38.571232, 44.796623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.110783, 39.101303, 45.245293>,  <40.307365, 38.581097, 44.732349>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.110783, 39.101303, 45.245293> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820618, 38.826077, 45.237823>,  <39.646519, 38.660942, 45.233341>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.820618, 38.826077, 45.237823>,  <40.110783, 39.101303, 45.245293>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.820618, 38.826077, 45.237823> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000053, -0.027071, 0.999633,
		-0.688316, 0.725146, 0.019601,
		-0.725411, -0.688063, -0.018672,
		39.602993, 38.619659, 45.232224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.765076, 39.347000, 45.804554>,  <40.110783, 39.101303, 45.245293>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.765076, 39.347000, 45.804554> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641998, 38.973030, 45.733860>,  <39.568153, 38.748646, 45.691444>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.641998, 38.973030, 45.733860>,  <39.765076, 39.347000, 45.804554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.641998, 38.973030, 45.733860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036004, -0.197056, 0.979731,
		-0.950805, 0.295092, 0.094294,
		-0.307691, -0.934928, -0.176738,
		39.549690, 38.692551, 45.680840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.232922, 39.309723, 46.097961>,  <39.765076, 39.347000, 45.804554>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.232922, 39.309723, 46.097961> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.336868, 38.924389, 46.071251>,  <39.399235, 38.693188, 46.055225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.336868, 38.924389, 46.071251>,  <39.232922, 39.309723, 46.097961>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336868, 38.924389, 46.071251> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006187, -0.070808, 0.997471,
		-0.965625, -0.258796, -0.024361,
		0.259867, -0.963333, -0.066773,
		39.414829, 38.635387, 46.051220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.785362, 39.015804, 46.663975>,  <39.232922, 39.309723, 46.097961>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.785362, 39.015804, 46.663975> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065563, 38.749435, 46.561337>,  <39.233685, 38.589615, 46.499752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.065563, 38.749435, 46.561337>,  <38.785362, 39.015804, 46.663975>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.065563, 38.749435, 46.561337> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.059156, -0.304137, 0.950790,
		-0.711197, -0.681207, -0.173654,
		0.700499, -0.665926, -0.256599,
		39.275715, 38.549656, 46.484356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.651646, 38.389755, 47.125381>,  <38.785362, 39.015804, 46.663975>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.651646, 38.389755, 47.125381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030869, 38.330849, 47.012600>,  <39.258404, 38.295506, 46.944931>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.030869, 38.330849, 47.012600>,  <38.651646, 38.389755, 47.125381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030869, 38.330849, 47.012600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209155, -0.379251, 0.901345,
		-0.239668, -0.913500, -0.328751,
		0.948058, -0.147264, -0.281958,
		39.315285, 38.286671, 46.928013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837936, 37.778290, 47.314354>,  <38.651646, 38.389755, 47.125381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837936, 37.778290, 47.314354> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201294, 37.941883, 47.279602>,  <39.419308, 38.040039, 47.258751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.201294, 37.941883, 47.279602>,  <38.837936, 37.778290, 47.314354>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.201294, 37.941883, 47.279602> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257931, -0.384619, 0.886307,
		0.329074, -0.827525, -0.454876,
		0.908395, 0.408987, -0.086876,
		39.473812, 38.064579, 47.253540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.272022, 37.255463, 47.631199>,  <38.837936, 37.778290, 47.314354>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.272022, 37.255463, 47.631199> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500427, 37.583790, 47.625507>,  <39.637470, 37.780785, 47.622093>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.500427, 37.583790, 47.625507>,  <39.272022, 37.255463, 47.631199>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.500427, 37.583790, 47.625507> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228642, -0.142360, 0.963045,
		0.788457, -0.553168, -0.268963,
		0.571015, 0.820816, -0.014233,
		39.671730, 37.830036, 47.621239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.936893, 37.041046, 47.799141>,  <39.272022, 37.255463, 47.631199>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.936893, 37.041046, 47.799141> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857738, 37.425400, 47.876648>,  <39.810246, 37.656010, 47.923153>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.857738, 37.425400, 47.876648>,  <39.936893, 37.041046, 47.799141>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857738, 37.425400, 47.876648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172782, -0.160387, 0.971814,
		0.964876, 0.225790, -0.134285,
		-0.197889, 0.960882, 0.193766,
		39.798370, 37.713665, 47.934776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.239243, 37.097565, 48.336174>,  <39.936893, 37.041046, 47.799141>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.239243, 37.097565, 48.336174> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045490, 37.446941, 48.356060>,  <39.929241, 37.656567, 48.367992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.045490, 37.446941, 48.356060>,  <40.239243, 37.097565, 48.336174>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.045490, 37.446941, 48.356060> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.159517, 0.032298, 0.986667,
		0.860193, 0.485850, -0.154974,
		-0.484378, 0.873445, 0.049718,
		39.900177, 37.708977, 48.370975>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.657276, 37.460682, 48.761398>,  <40.239243, 37.097565, 48.336174>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.657276, 37.460682, 48.761398> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298355, 37.637135, 48.767834>,  <40.083004, 37.743008, 48.771694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.298355, 37.637135, 48.767834>,  <40.657276, 37.460682, 48.761398>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.298355, 37.637135, 48.767834> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069707, 0.105613, 0.991961,
		0.435886, 0.891206, -0.125516,
		-0.897298, 0.441132, 0.016089,
		40.029167, 37.769474, 48.772659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.699364, 38.030445, 49.300797>,  <40.657276, 37.460682, 48.761398>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.699364, 38.030445, 49.300797> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313568, 37.944855, 49.238857>,  <40.082092, 37.893501, 49.201694>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.313568, 37.944855, 49.238857>,  <40.699364, 38.030445, 49.300797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.313568, 37.944855, 49.238857> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148396, -0.045986, 0.987858,
		-0.218494, 0.975757, 0.012601,
		-0.964489, -0.213972, -0.154846,
		40.024223, 37.880665, 49.192402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.432327, 38.481861, 49.709805>,  <40.699364, 38.030445, 49.300797>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.432327, 38.481861, 49.709805> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140759, 38.212288, 49.661674>,  <39.965816, 38.050545, 49.632797>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<40.140759, 38.212288, 49.661674>,  <40.432327, 38.481861, 49.709805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.140759, 38.212288, 49.661674> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234738, 0.080941, 0.968683,
		-0.643091, 0.734342, -0.217198,
		-0.728925, -0.673936, -0.120326,
		39.922081, 38.010105, 49.625576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.889282, 38.594460, 50.208515>,  <40.432327, 38.481861, 49.709805>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.889282, 38.594460, 50.208515> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789696, 38.224289, 50.094246>,  <39.729942, 38.002186, 50.025684>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.789696, 38.224289, 50.094246>,  <39.889282, 38.594460, 50.208515>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.789696, 38.224289, 50.094246> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281164, -0.213199, 0.935678,
		-0.926802, 0.313273, -0.207116,
		-0.248966, -0.925422, -0.285675,
		39.715008, 37.946663, 50.008545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.163845, 38.469574, 50.375381>,  <39.889282, 38.594460, 50.208515>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.163845, 38.469574, 50.375381> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400806, 38.147331, 50.372444>,  <39.542984, 37.953987, 50.370682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.400806, 38.147331, 50.372444>,  <39.163845, 38.469574, 50.375381>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.400806, 38.147331, 50.372444> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372468, -0.281953, 0.884178,
		-0.714370, -0.521056, -0.467093,
		0.592405, -0.805607, -0.007342,
		39.578529, 37.905647, 50.370243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.858021, 37.908672, 50.594501>,  <39.163845, 38.469574, 50.375381>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.858021, 37.908672, 50.594501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239754, 37.812649, 50.665623>,  <39.468796, 37.755035, 50.708294>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.239754, 37.812649, 50.665623>,  <38.858021, 37.908672, 50.594501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.239754, 37.812649, 50.665623> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265142, -0.406465, 0.874349,
		-0.137628, -0.881565, -0.451555,
		0.954336, -0.240061, 0.177799,
		39.526054, 37.740631, 50.718964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.989613, 37.117752, 50.815704>,  <38.858021, 37.908672, 50.594501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.989613, 37.117752, 50.815704> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.261837, 37.375790, 50.954666>,  <39.425171, 37.530613, 51.038044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<39.261837, 37.375790, 50.954666>,  <38.989613, 37.117752, 50.815704>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.261837, 37.375790, 50.954666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199325, -0.293257, 0.935024,
		0.705055, -0.705590, -0.070998,
		0.680564, 0.645091, 0.347404,
		39.466007, 37.569317, 51.058887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.304932, 37.437927, 51.013947>,  <38.989613, 37.117752, 50.815704>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.304932, 37.437927, 51.013947> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982460, 37.271099, 51.181816>,  <37.788975, 37.171001, 51.282539>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.982460, 37.271099, 51.181816>,  <38.304932, 37.437927, 51.013947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.982460, 37.271099, 51.181816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384399, -0.170016, -0.907377,
		0.449789, -0.892832, -0.023256,
		-0.806181, -0.417068, 0.419675,
		37.740604, 37.145981, 51.307720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149204, 36.807213, 50.706959>,  <38.304932, 37.437927, 51.013947>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149204, 36.807213, 50.706959> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787613, 36.903980, 50.847984>,  <37.570660, 36.962040, 50.932602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.787613, 36.903980, 50.847984>,  <38.149204, 36.807213, 50.706959>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787613, 36.903980, 50.847984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374606, -0.050537, -0.925806,
		-0.206150, -0.968980, 0.136308,
		-0.903976, 0.241917, 0.352567,
		37.516418, 36.976555, 50.953754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.729118, 36.325401, 50.369934>,  <38.149204, 36.807213, 50.706959>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.729118, 36.325401, 50.369934> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496613, 36.629921, 50.484863>,  <37.357109, 36.812634, 50.553822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.496613, 36.629921, 50.484863>,  <37.729118, 36.325401, 50.369934>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496613, 36.629921, 50.484863> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374256, 0.063416, -0.925154,
		-0.722538, -0.645295, 0.248059,
		-0.581267, 0.761297, 0.287326,
		37.322231, 36.858311, 50.571060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.190517, 36.137413, 50.075333>,  <37.729118, 36.325401, 50.369934>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.190517, 36.137413, 50.075333> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155010, 36.527653, 50.155651>,  <37.133705, 36.761799, 50.203842>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.155010, 36.527653, 50.155651>,  <37.190517, 36.137413, 50.075333>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.155010, 36.527653, 50.155651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279380, 0.169113, -0.945171,
		-0.956068, -0.140004, 0.257551,
		-0.088773, 0.975602, 0.200798,
		37.128380, 36.820332, 50.215889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.578705, 36.280327, 49.803829>,  <37.190517, 36.137413, 50.075333>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.578705, 36.280327, 49.803829> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765217, 36.633835, 49.819466>,  <36.877125, 36.845940, 49.828846>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.765217, 36.633835, 49.819466>,  <36.578705, 36.280327, 49.803829>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.765217, 36.633835, 49.819466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.128906, 0.111592, -0.985358,
		-0.875194, 0.454416, 0.165957,
		0.466281, 0.883772, 0.039087,
		36.905102, 36.898968, 49.831192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.160690, 36.791771, 49.474316>,  <36.578705, 36.280327, 49.803829>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.160690, 36.791771, 49.474316> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522697, 36.961895, 49.471306>,  <36.739902, 37.063969, 49.469498>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.522697, 36.961895, 49.471306>,  <36.160690, 36.791771, 49.474316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522697, 36.961895, 49.471306> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138085, 0.276995, -0.950898,
		-0.402343, 0.861616, 0.309414,
		0.905015, 0.425313, -0.007529,
		36.794201, 37.089489, 49.469048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.066551, 37.437946, 49.176579>,  <36.160690, 36.791771, 49.474316>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.066551, 37.437946, 49.176579> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450954, 37.335575, 49.134689>,  <36.681595, 37.274151, 49.109554>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.450954, 37.335575, 49.134689>,  <36.066551, 37.437946, 49.176579>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.450954, 37.335575, 49.134689> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068613, 0.146179, -0.986876,
		0.267878, 0.955580, 0.122919,
		0.961007, -0.255928, -0.104723,
		36.739258, 37.258797, 49.103271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.240578, 37.822330, 48.650661>,  <36.066551, 37.437946, 49.176579>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.240578, 37.822330, 48.650661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535931, 37.553654, 48.674763>,  <36.713142, 37.392448, 48.689224>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.535931, 37.553654, 48.674763>,  <36.240578, 37.822330, 48.650661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.535931, 37.553654, 48.674763> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024828, -0.062203, -0.997755,
		0.673930, 0.738216, -0.029253,
		0.738378, -0.671690, 0.060249,
		36.757442, 37.352146, 48.692837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.857414, 38.083569, 48.332897>,  <36.240578, 37.822330, 48.650661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.857414, 38.083569, 48.332897> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922787, 37.689068, 48.323132>,  <36.962009, 37.452366, 48.317272>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.922787, 37.689068, 48.323132>,  <36.857414, 38.083569, 48.332897>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.922787, 37.689068, 48.323132> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155498, 0.050191, -0.986560,
		0.974223, 0.157440, 0.161563,
		0.163433, -0.986252, -0.024415,
		36.971817, 37.393192, 48.315807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.508915, 37.986374, 48.001781>,  <36.857414, 38.083569, 48.332897>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.508915, 37.986374, 48.001781> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.313126, 37.638592, 47.975063>,  <37.195652, 37.429924, 47.959034>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.313126, 37.638592, 47.975063>,  <37.508915, 37.986374, 48.001781>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313126, 37.638592, 47.975063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158584, -0.013432, -0.987254,
		0.857476, -0.493829, 0.144456,
		-0.489475, -0.869455, -0.066796,
		37.166283, 37.377754, 47.955025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916504, 37.548607, 47.581982>,  <37.508915, 37.986374, 48.001781>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916504, 37.548607, 47.581982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541245, 37.410572, 47.570721>,  <37.316090, 37.327751, 47.563965>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.541245, 37.410572, 47.570721>,  <37.916504, 37.548607, 47.581982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.541245, 37.410572, 47.570721> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025464, 0.012324, -0.999600,
		0.345294, -0.938490, -0.002775,
		-0.938149, -0.345085, -0.028153,
		37.259800, 37.307045, 47.562275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.927212, 37.195786, 47.007011>,  <37.916504, 37.548607, 47.581982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.927212, 37.195786, 47.007011> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533649, 37.229591, 47.069988>,  <37.297512, 37.249874, 47.107773>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.533649, 37.229591, 47.069988>,  <37.927212, 37.195786, 47.007011>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533649, 37.229591, 47.069988> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154517, 0.040157, -0.987174,
		-0.089758, -0.995612, -0.026450,
		-0.983904, 0.084520, 0.157443,
		37.238480, 37.254948, 47.117222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708763, 36.721386, 46.539322>,  <37.927212, 37.195786, 47.007011>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708763, 36.721386, 46.539322> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416901, 36.986530, 46.606522>,  <37.241783, 37.145618, 46.646843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.416901, 36.986530, 46.606522>,  <37.708763, 36.721386, 46.539322>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416901, 36.986530, 46.606522> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.182054, 0.048508, -0.982091,
		-0.659139, -0.747169, 0.085282,
		-0.729652, 0.662861, 0.167999,
		37.198006, 37.185387, 46.656921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.171509, 36.565044, 46.063076>,  <37.708763, 36.721386, 46.539322>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.171509, 36.565044, 46.063076> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104366, 36.946964, 46.161201>,  <37.064083, 37.176117, 46.220078>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<37.104366, 36.946964, 46.161201>,  <37.171509, 36.565044, 46.063076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.104366, 36.946964, 46.161201> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406427, 0.159688, -0.899620,
		-0.898132, -0.250707, 0.361253,
		-0.167854, 0.954801, 0.245315,
		37.054008, 37.233406, 46.234795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533794, 36.759789, 45.592377>,  <37.171509, 36.565044, 46.063076>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533794, 36.759789, 45.592377> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697800, 37.108242, 45.700459>,  <36.796204, 37.317314, 45.765308>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.697800, 37.108242, 45.700459>,  <36.533794, 36.759789, 45.592377>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697800, 37.108242, 45.700459> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400578, 0.438143, -0.804716,
		-0.819406, 0.221706, 0.528602,
		0.410013, 0.871136, 0.270206,
		36.820805, 37.369583, 45.781521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.115326, 37.225666, 45.281597>,  <36.533794, 36.759789, 45.592377>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.115326, 37.225666, 45.281597> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414398, 37.476151, 45.369984>,  <36.593842, 37.626442, 45.423016>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.414398, 37.476151, 45.369984>,  <36.115326, 37.225666, 45.281597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.414398, 37.476151, 45.369984> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110901, 0.445827, -0.888222,
		-0.654729, 0.639605, 0.402785,
		0.747684, 0.626214, 0.220964,
		36.638702, 37.664013, 45.436272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.846218, 38.001240, 45.411991>,  <36.115326, 37.225666, 45.281597>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.846218, 38.001240, 45.411991> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223228, 37.969784, 45.282093>,  <36.449436, 37.950909, 45.204155>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.223228, 37.969784, 45.282093>,  <35.846218, 38.001240, 45.411991>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.223228, 37.969784, 45.282093> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252809, 0.467667, -0.846980,
		0.218480, 0.880400, 0.420907,
		0.942525, -0.078639, -0.324749,
		36.505985, 37.946194, 45.184669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.988289, 38.617226, 45.046818>,  <35.846218, 38.001240, 45.411991>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.988289, 38.617226, 45.046818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280804, 38.379108, 44.913651>,  <36.456314, 38.236237, 44.833752>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.280804, 38.379108, 44.913651>,  <35.988289, 38.617226, 45.046818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280804, 38.379108, 44.913651> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022657, 0.466633, -0.884161,
		0.681688, 0.654123, 0.327757,
		0.731292, -0.595296, -0.332919,
		36.500191, 38.200520, 44.813774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.337742, 38.991707, 44.478626>,  <35.988289, 38.617226, 45.046818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.337742, 38.991707, 44.478626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443810, 38.612019, 44.410896>,  <36.507450, 38.384205, 44.370258>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.443810, 38.612019, 44.410896>,  <36.337742, 38.991707, 44.478626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443810, 38.612019, 44.410896> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.034110, 0.184738, -0.982196,
		0.963598, 0.254672, 0.081364,
		0.265169, -0.949217, -0.169327,
		36.523361, 38.327251, 44.360100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.865028, 39.034019, 44.032394>,  <36.337742, 38.991707, 44.478626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.865028, 39.034019, 44.032394> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747948, 38.652588, 44.004070>,  <36.677700, 38.423729, 43.987076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<36.747948, 38.652588, 44.004070>,  <36.865028, 39.034019, 44.032394>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.747948, 38.652588, 44.004070> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136545, 0.031615, -0.990129,
		0.946405, -0.299480, 0.120953,
		-0.292700, -0.953579, -0.070813,
		36.660137, 38.366516, 43.982826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<47.364010, 43.620235, 37.302376> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.007374, 43.726665, 37.155804>,  <46.793392, 43.790524, 37.067860>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<47.007374, 43.726665, 37.155804>,  <47.364010, 43.620235, 37.302376>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.007374, 43.726665, 37.155804> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.177401, -0.949725, -0.257976,
		-0.416644, -0.165004, 0.893969,
		-0.891592, 0.266075, -0.366426,
		46.739895, 43.806488, 37.045876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.998402, 43.134708, 37.611454>,  <47.364010, 43.620235, 37.302376>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.998402, 43.134708, 37.611454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.782833, 43.278706, 37.306831>,  <46.653492, 43.365105, 37.124058>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.782833, 43.278706, 37.306831>,  <46.998402, 43.134708, 37.611454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.782833, 43.278706, 37.306831> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223632, -0.932783, -0.282673,
		-0.812128, 0.017970, 0.583202,
		-0.538921, 0.359989, -0.761558,
		46.621159, 43.386703, 37.078365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.452984, 42.726570, 37.517132>,  <46.998402, 43.134708, 37.611454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.452984, 42.726570, 37.517132> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.448215, 42.909435, 37.161411>,  <46.445354, 43.019154, 36.947979>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.448215, 42.909435, 37.161411>,  <46.452984, 42.726570, 37.517132>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.448215, 42.909435, 37.161411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308862, -0.847561, -0.431562,
		-0.951032, 0.269527, 0.151303,
		-0.011921, 0.457161, -0.889304,
		46.444637, 43.046585, 36.894619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750832, 42.673286, 37.331062>,  <46.452984, 42.726570, 37.517132>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750832, 42.673286, 37.331062> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.927425, 42.717133, 36.974842>,  <46.033382, 42.743439, 36.761108>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.927425, 42.717133, 36.974842>,  <45.750832, 42.673286, 37.331062>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.927425, 42.717133, 36.974842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.439714, -0.838732, -0.321218,
		-0.782141, 0.533399, -0.322088,
		0.441483, 0.109611, -0.890550,
		46.059872, 42.750015, 36.707676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.225681, 42.438049, 36.809875>,  <45.750832, 42.673286, 37.331062>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.225681, 42.438049, 36.809875> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560398, 42.427834, 36.591106>,  <45.761227, 42.421703, 36.459843>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.560398, 42.427834, 36.591106>,  <45.225681, 42.438049, 36.809875>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.560398, 42.427834, 36.591106> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.261971, -0.895824, -0.358985,
		-0.480781, 0.443674, -0.756309,
		0.836792, -0.025538, -0.546925,
		45.811436, 42.420174, 36.427029>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.106792, 42.237175, 36.068050>,  <45.225681, 42.438049, 36.809875>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.106792, 42.237175, 36.068050> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.496899, 42.158867, 36.109093>,  <45.730965, 42.111881, 36.133717>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.496899, 42.158867, 36.109093>,  <45.106792, 42.237175, 36.068050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.496899, 42.158867, 36.109093> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119407, -0.857300, -0.500778,
		0.185999, 0.476141, -0.859473,
		0.975267, -0.195772, 0.102602,
		45.789478, 42.100136, 36.139874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.417492, 42.008537, 35.305588>,  <45.106792, 42.237175, 36.068050>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.417492, 42.008537, 35.305588> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644020, 41.871162, 35.605278>,  <45.779938, 41.788738, 35.785091>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.644020, 41.871162, 35.605278>,  <45.417492, 42.008537, 35.305588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.644020, 41.871162, 35.605278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.140699, -0.935987, -0.322694,
		0.812087, 0.077333, -0.578389,
		0.566320, -0.343435, 0.749222,
		45.813915, 41.768131, 35.830044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.855659, 41.649986, 34.958847>,  <45.417492, 42.008537, 35.305588>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.855659, 41.649986, 34.958847> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.884312, 41.502914, 35.329723>,  <45.901505, 41.414669, 35.552250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.884312, 41.502914, 35.329723>,  <45.855659, 41.649986, 34.958847>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.884312, 41.502914, 35.329723> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040894, -0.927712, -0.371051,
		0.996593, 0.064495, -0.051416,
		0.071630, -0.367684, 0.927188,
		45.905800, 41.392609, 35.607880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.413780, 41.093601, 34.901752>,  <45.855659, 41.649986, 34.958847>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.413780, 41.093601, 34.901752> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.179996, 41.018505, 35.217514>,  <46.039726, 40.973450, 35.406971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.179996, 41.018505, 35.217514>,  <46.413780, 41.093601, 34.901752>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.179996, 41.018505, 35.217514> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094097, -0.981984, -0.163871,
		0.805945, -0.021496, 0.591600,
		-0.584464, -0.187739, 0.789403,
		46.004658, 40.962185, 35.454334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.738430, 40.418606, 35.098946>,  <46.413780, 41.093601, 34.901752>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.738430, 40.418606, 35.098946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.384048, 40.456486, 35.280548>,  <46.171421, 40.479214, 35.389507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.384048, 40.456486, 35.280548>,  <46.738430, 40.418606, 35.098946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.384048, 40.456486, 35.280548> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076886, -0.995375, 0.057589,
		0.457356, 0.016115, 0.889138,
		-0.885954, 0.094701, 0.454002,
		46.118263, 40.484898, 35.416748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.771286, 40.012611, 35.630829>,  <46.738430, 40.418606, 35.098946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.771286, 40.012611, 35.630829> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374798, 40.038696, 35.584827>,  <46.136906, 40.054348, 35.557224>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.374798, 40.038696, 35.584827>,  <46.771286, 40.012611, 35.630829>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.374798, 40.038696, 35.584827> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056009, -0.995097, -0.081522,
		-0.119759, -0.074365, 0.990014,
		-0.991222, 0.065213, -0.115007,
		46.077431, 40.058262, 35.550327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.429813, 39.394638, 35.947243>,  <46.771286, 40.012611, 35.630829>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.429813, 39.394638, 35.947243> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106075, 39.540905, 35.763393>,  <45.911835, 39.628666, 35.653084>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.106075, 39.540905, 35.763393>,  <46.429813, 39.394638, 35.947243>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.106075, 39.540905, 35.763393> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418609, -0.908048, 0.014699,
		-0.411984, 0.204298, 0.887993,
		-0.809342, 0.365666, -0.459623,
		45.863274, 39.650604, 35.625507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.830170, 39.234234, 36.392971>,  <46.429813, 39.394638, 35.947243>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.830170, 39.234234, 36.392971> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696114, 39.304195, 36.022655>,  <45.615681, 39.346172, 35.800465>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.696114, 39.304195, 36.022655>,  <45.830170, 39.234234, 36.392971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.696114, 39.304195, 36.022655> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386531, -0.921642, -0.034196,
		-0.859228, 0.346387, 0.376488,
		-0.335142, 0.174906, -0.925790,
		45.595570, 39.356667, 35.744919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.974342, 39.171139, 36.310638>,  <45.830170, 39.234234, 36.392971>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.974342, 39.171139, 36.310638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180466, 39.099327, 35.975445>,  <45.304142, 39.056240, 35.774326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.180466, 39.099327, 35.975445>,  <44.974342, 39.171139, 36.310638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.180466, 39.099327, 35.975445> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427876, -0.901118, -0.070060,
		-0.742547, 0.394657, -0.541174,
		0.515311, -0.179532, -0.837987,
		45.335060, 39.045467, 35.724049>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.612736, 38.575100, 36.137135>,  <44.974342, 39.171139, 36.310638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.612736, 38.575100, 36.137135> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919277, 38.574280, 35.880169>,  <45.103203, 38.573788, 35.725990>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.919277, 38.574280, 35.880169>,  <44.612736, 38.575100, 36.137135>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.919277, 38.574280, 35.880169> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.127239, -0.980669, -0.148656,
		-0.629691, 0.195663, -0.751801,
		0.766355, -0.002052, -0.642414,
		45.149185, 38.573666, 35.687443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.343086, 38.279045, 35.499813>,  <44.612736, 38.575100, 36.137135>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.343086, 38.279045, 35.499813> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738522, 38.223385, 35.476707>,  <44.975780, 38.189991, 35.462845>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.738522, 38.223385, 35.476707>,  <44.343086, 38.279045, 35.499813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.738522, 38.223385, 35.476707> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147926, -0.969186, -0.196966,
		-0.028576, 0.203263, -0.978707,
		0.988586, -0.139147, -0.057764,
		45.035099, 38.181641, 35.459377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.358780, 37.892883, 34.859184>,  <44.343086, 38.279045, 35.499813>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.358780, 37.892883, 34.859184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690533, 37.848743, 35.078255>,  <44.889584, 37.822258, 35.209698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.690533, 37.848743, 35.078255>,  <44.358780, 37.892883, 34.859184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.690533, 37.848743, 35.078255> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102925, -0.993700, -0.044354,
		0.549122, -0.019583, -0.835513,
		0.829380, -0.110351, 0.547678,
		44.939346, 37.815639, 35.242558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.611473, 37.207134, 34.617634>,  <44.358780, 37.892883, 34.859184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.611473, 37.207134, 34.617634> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820541, 37.270893, 34.952633>,  <44.945984, 37.309147, 35.153633>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.820541, 37.270893, 34.952633>,  <44.611473, 37.207134, 34.617634>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.820541, 37.270893, 34.952633> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041584, -0.976431, 0.211789,
		0.851518, -0.145523, -0.503727,
		0.522674, 0.159395, 0.837499,
		44.977345, 37.318710, 35.203884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.308201, 36.843971, 34.668255>,  <44.611473, 37.207134, 34.617634>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.308201, 36.843971, 34.668255> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171688, 36.900249, 35.040001>,  <45.089779, 36.934017, 35.263050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.171688, 36.900249, 35.040001>,  <45.308201, 36.843971, 34.668255>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.171688, 36.900249, 35.040001> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212790, -0.974630, 0.069409,
		0.915557, -0.174072, 0.362567,
		-0.341286, 0.140698, 0.929370,
		45.069302, 36.942459, 35.318813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.612614, 36.207012, 35.012653>,  <45.308201, 36.843971, 34.668255>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.612614, 36.207012, 35.012653> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322769, 36.342335, 35.252815>,  <45.148861, 36.423527, 35.396912>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.322769, 36.342335, 35.252815>,  <45.612614, 36.207012, 35.012653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.322769, 36.342335, 35.252815> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.356522, -0.929595, 0.093515,
		0.589766, -0.146294, 0.794213,
		-0.724616, 0.338306, 0.600401,
		45.105385, 36.443825, 35.432934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.700699, 35.923523, 35.773647>,  <45.612614, 36.207012, 35.012653>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.700699, 35.923523, 35.773647> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.319065, 36.036739, 35.734421>,  <45.090084, 36.104671, 35.710884>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.319065, 36.036739, 35.734421>,  <45.700699, 35.923523, 35.773647>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.319065, 36.036739, 35.734421> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299011, -0.880230, 0.368493,
		0.017980, 0.380895, 0.924444,
		-0.954080, 0.283044, -0.098065,
		45.032841, 36.121655, 35.705002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.314198, 35.746643, 36.423416>,  <45.700699, 35.923523, 35.773647>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.314198, 35.746643, 36.423416> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074268, 35.754406, 36.103455>,  <44.930313, 35.759064, 35.911480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.074268, 35.754406, 36.103455>,  <45.314198, 35.746643, 36.423416>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.074268, 35.754406, 36.103455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293308, -0.935448, 0.197248,
		-0.744437, 0.352931, 0.566792,
		-0.599819, 0.019406, -0.799900,
		44.894321, 35.760227, 35.863483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829487, 35.225338, 36.549244>,  <45.314198, 35.746643, 36.423416>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829487, 35.225338, 36.549244> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.207504, 35.323261, 36.635933>,  <46.434315, 35.382015, 36.687946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.207504, 35.323261, 36.635933>,  <45.829487, 35.225338, 36.549244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.207504, 35.323261, 36.635933> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300754, 0.390936, 0.869894,
		0.128231, -0.887265, 0.443077,
		0.945042, 0.244804, 0.216719,
		46.491016, 35.396702, 36.700947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.989880, 34.974846, 37.305779>,  <45.829487, 35.225338, 36.549244>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.989880, 34.974846, 37.305779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.235344, 35.275169, 37.208042>,  <46.382622, 35.455364, 37.149399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.235344, 35.275169, 37.208042>,  <45.989880, 34.974846, 37.305779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.235344, 35.275169, 37.208042> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.165576, 0.424951, 0.889944,
		0.772014, -0.505666, 0.385092,
		0.613659, 0.750812, -0.244342,
		46.419441, 35.500412, 37.134739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.542599, 34.988129, 37.811234>,  <45.989880, 34.974846, 37.305779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.542599, 34.988129, 37.811234> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491436, 35.346554, 37.641197>,  <46.460739, 35.561611, 37.539173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.491436, 35.346554, 37.641197>,  <46.542599, 34.988129, 37.811234>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.491436, 35.346554, 37.641197> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004701, 0.428062, 0.903737,
		0.991776, 0.117589, -0.050538,
		-0.127903, 0.896067, -0.425094,
		46.453064, 35.615376, 37.513668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.097618, 35.427605, 38.044567>,  <46.542599, 34.988129, 37.811234>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.097618, 35.427605, 38.044567> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.821926, 35.686363, 37.914043>,  <46.656509, 35.841618, 37.835728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.821926, 35.686363, 37.914043>,  <47.097618, 35.427605, 38.044567>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.821926, 35.686363, 37.914043> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094919, 0.527107, 0.844482,
		0.718295, 0.551072, -0.424703,
		-0.689234, 0.646899, -0.326310,
		46.615154, 35.880432, 37.816151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.368679, 36.178383, 38.090710>,  <47.097618, 35.427605, 38.044567>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.368679, 36.178383, 38.090710> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.970085, 36.209351, 38.077942>,  <46.730927, 36.227932, 38.070282>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.970085, 36.209351, 38.077942>,  <47.368679, 36.178383, 38.090710>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.970085, 36.209351, 38.077942> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022872, 0.618274, 0.785629,
		0.080559, 0.782140, -0.617873,
		-0.996487, 0.077421, -0.031918,
		46.671139, 36.232578, 38.068367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.203228, 36.954098, 38.235558>,  <47.368679, 36.178383, 38.090710>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.203228, 36.954098, 38.235558> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850430, 36.769123, 38.271851>,  <46.638748, 36.658138, 38.293625>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.850430, 36.769123, 38.271851>,  <47.203228, 36.954098, 38.235558>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.850430, 36.769123, 38.271851> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240474, 0.607231, 0.757260,
		-0.405275, 0.646086, -0.646781,
		-0.882000, -0.462433, 0.090729,
		46.585831, 36.630394, 38.299068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716530, 37.495010, 38.198517>,  <47.203228, 36.954098, 38.235558>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716530, 37.495010, 38.198517> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.552601, 37.182533, 38.386894>,  <46.454243, 36.995049, 38.499920>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.552601, 37.182533, 38.386894>,  <46.716530, 37.495010, 38.198517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.552601, 37.182533, 38.386894> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466216, 0.623147, 0.627957,
		-0.784019, 0.037793, -0.619586,
		-0.409826, -0.781191, 0.470939,
		46.429653, 36.948177, 38.528175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.991737, 37.679043, 38.212017>,  <46.716530, 37.495010, 38.198517>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.991737, 37.679043, 38.212017> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048264, 37.392174, 38.484985>,  <46.082180, 37.220055, 38.648766>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.048264, 37.392174, 38.484985>,  <45.991737, 37.679043, 38.212017>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.048264, 37.392174, 38.484985> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697739, 0.416859, 0.582571,
		-0.702276, -0.558477, -0.441489,
		0.141313, -0.717170, 0.682421,
		46.090656, 37.177021, 38.689713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.356812, 37.467010, 38.305809>,  <45.991737, 37.679043, 38.212017>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.356812, 37.467010, 38.305809> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571796, 37.344265, 38.619999>,  <45.700787, 37.270618, 38.808514>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.571796, 37.344265, 38.619999>,  <45.356812, 37.467010, 38.305809>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.571796, 37.344265, 38.619999> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654501, 0.435554, 0.617998,
		-0.531758, -0.846244, 0.033250,
		0.537459, -0.306863, 0.785476,
		45.733032, 37.252205, 38.855640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902660, 37.174503, 38.752594>,  <45.356812, 37.467010, 38.305809>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902660, 37.174503, 38.752594> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222527, 37.301716, 38.956314>,  <45.414448, 37.378044, 39.078548>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.222527, 37.301716, 38.956314>,  <44.902660, 37.174503, 38.752594>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.222527, 37.301716, 38.956314> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575139, 0.649361, 0.497539,
		-0.172487, -0.690785, 0.702186,
		0.799665, 0.318035, 0.509303,
		45.462425, 37.397125, 39.109104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.662743, 37.267170, 39.417179>,  <44.902660, 37.174503, 38.752594>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.662743, 37.267170, 39.417179> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001270, 37.478874, 39.441265>,  <45.204388, 37.605896, 39.455719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.001270, 37.478874, 39.441265>,  <44.662743, 37.267170, 39.417179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.001270, 37.478874, 39.441265> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497522, 0.745000, 0.444350,
		0.190315, -0.406021, 0.893827,
		0.846317, 0.529265, 0.060219,
		45.255165, 37.637653, 39.459332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669563, 37.529675, 39.980553>,  <44.662743, 37.267170, 39.417179>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669563, 37.529675, 39.980553> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924496, 37.772278, 39.790413>,  <45.077457, 37.917839, 39.676331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.924496, 37.772278, 39.790413>,  <44.669563, 37.529675, 39.980553>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.924496, 37.772278, 39.790413> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301938, 0.764090, 0.570087,
		0.708971, -0.219810, 0.670108,
		0.637334, 0.606506, -0.475349,
		45.115696, 37.954231, 39.647808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.894138, 37.956291, 40.522377>,  <44.669563, 37.529675, 39.980553>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.894138, 37.956291, 40.522377> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.994946, 38.140602, 40.181984>,  <45.055431, 38.251190, 39.977749>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.994946, 38.140602, 40.181984>,  <44.894138, 37.956291, 40.522377>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.994946, 38.140602, 40.181984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348504, 0.863577, 0.364390,
		0.902791, 0.204736, 0.378222,
		0.252020, 0.460780, -0.850980,
		45.070553, 38.278835, 39.926689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.164562, 38.566772, 40.648041>,  <44.894138, 37.956291, 40.522377>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.164562, 38.566772, 40.648041> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031555, 38.613369, 40.273689>,  <44.951752, 38.641327, 40.049080>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.031555, 38.613369, 40.273689>,  <45.164562, 38.566772, 40.648041>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031555, 38.613369, 40.273689> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.430753, 0.864027, 0.260595,
		0.838977, 0.489783, -0.237127,
		-0.332520, 0.116490, -0.935874,
		44.931801, 38.648315, 39.992928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.355049, 39.243172, 40.544491>,  <45.164562, 38.566772, 40.648041>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.355049, 39.243172, 40.544491> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044231, 39.127834, 40.320686>,  <44.857738, 39.058632, 40.186405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.044231, 39.127834, 40.320686>,  <45.355049, 39.243172, 40.544491>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.044231, 39.127834, 40.320686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407876, 0.907689, 0.098685,
		0.479408, 0.304895, -0.822926,
		-0.777049, -0.288341, -0.559512,
		44.811115, 39.041332, 40.152832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335697, 39.807281, 40.226906>,  <45.355049, 39.243172, 40.544491>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335697, 39.807281, 40.226906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006927, 39.633347, 40.079739>,  <44.809666, 39.528984, 39.991440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.006927, 39.633347, 40.079739>,  <45.335697, 39.807281, 40.226906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.006927, 39.633347, 40.079739> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419012, 0.899114, -0.126585,
		0.385841, 0.050118, -0.921203,
		-0.821922, -0.434837, -0.367915,
		44.760349, 39.502895, 39.969364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.221169, 40.179630, 39.565430>,  <45.335697, 39.807281, 40.226906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.221169, 40.179630, 39.565430> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.881721, 40.017925, 39.701908>,  <44.678055, 39.920902, 39.783794>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.881721, 40.017925, 39.701908>,  <45.221169, 40.179630, 39.565430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.881721, 40.017925, 39.701908> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474089, 0.867350, -0.151472,
		-0.234703, -0.290301, -0.927707,
		-0.848619, -0.404265, 0.341198,
		44.627136, 39.896645, 39.804268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.714684, 40.116112, 38.943310>,  <45.221169, 40.179630, 39.565430>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.714684, 40.116112, 38.943310> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490723, 40.139267, 39.273926>,  <44.356346, 40.153160, 39.472294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.490723, 40.139267, 39.273926>,  <44.714684, 40.116112, 38.943310>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.490723, 40.139267, 39.273926> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460099, 0.807898, -0.368252,
		-0.689074, -0.586472, -0.425707,
		-0.559897, 0.057886, 0.826537,
		44.322754, 40.156631, 39.521889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.010201, 40.320705, 38.741737>,  <44.714684, 40.116112, 38.943310>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.010201, 40.320705, 38.741737> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975536, 40.408356, 39.130474>,  <43.954739, 40.460945, 39.363716>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.975536, 40.408356, 39.130474>,  <44.010201, 40.320705, 38.741737>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.975536, 40.408356, 39.130474> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630853, 0.742936, -0.223765,
		-0.771048, -0.632479, 0.073857,
		-0.086656, 0.219127, 0.971841,
		43.949539, 40.474094, 39.422028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.396454, 40.684261, 38.736023>,  <44.010201, 40.320705, 38.741737>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.396454, 40.684261, 38.736023> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563419, 40.762527, 39.090984>,  <43.663597, 40.809486, 39.303963>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.563419, 40.762527, 39.090984>,  <43.396454, 40.684261, 38.736023>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.563419, 40.762527, 39.090984> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532545, 0.843947, 0.064415,
		-0.736318, -0.499470, 0.456470,
		0.417410, 0.195661, 0.887404,
		43.688641, 40.821224, 39.357204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<39.723087, 38.190311, 39.263603> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402660, 37.956493, 39.315144>,  <39.210403, 37.816204, 39.346069>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.402660, 37.956493, 39.315144>,  <39.723087, 38.190311, 39.263603>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.402660, 37.956493, 39.315144> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072127, -0.119438, -0.990218,
		0.594216, -0.802523, 0.053516,
		-0.801065, -0.584544, 0.128855,
		39.162342, 37.781132, 39.353802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.829102, 37.728737, 38.758011>,  <39.723087, 38.190311, 39.263603>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.829102, 37.728737, 38.758011> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457119, 37.631439, 38.868294>,  <39.233929, 37.573063, 38.934464>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.457119, 37.631439, 38.868294>,  <39.829102, 37.728737, 38.758011>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457119, 37.631439, 38.868294> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152320, -0.427620, -0.891033,
		0.334635, -0.870617, 0.360617,
		-0.929956, -0.243242, 0.275709,
		39.178131, 37.558468, 38.951008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.801243, 36.962742, 38.619347>,  <39.829102, 37.728737, 38.758011>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.801243, 36.962742, 38.619347> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446369, 37.147125, 38.611183>,  <39.233444, 37.257755, 38.606285>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.446369, 37.147125, 38.611183>,  <39.801243, 36.962742, 38.619347>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.446369, 37.147125, 38.611183> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243155, -0.504660, -0.828368,
		-0.392139, -0.729956, 0.559813,
		-0.887188, 0.460957, -0.020405,
		39.180214, 37.285412, 38.605061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.324684, 36.423203, 38.577919>,  <39.801243, 36.962742, 38.619347>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.324684, 36.423203, 38.577919> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162540, 36.760983, 38.437866>,  <39.065254, 36.963650, 38.353832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162540, 36.760983, 38.437866>,  <39.324684, 36.423203, 38.577919>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162540, 36.760983, 38.437866> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123896, -0.430230, -0.894177,
		-0.905723, -0.319082, 0.279021,
		-0.405359, 0.844446, -0.350136,
		39.040932, 37.014317, 38.332825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.878426, 36.241570, 38.140976>,  <39.324684, 36.423203, 38.577919>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.878426, 36.241570, 38.140976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883617, 36.629353, 38.043007>,  <38.886734, 36.862022, 37.984226>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.883617, 36.629353, 38.043007>,  <38.878426, 36.241570, 38.140976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.883617, 36.629353, 38.043007> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230757, -0.235426, -0.944100,
		-0.972925, 0.068774, 0.220653,
		0.012982, 0.969456, -0.244922,
		38.887512, 36.920189, 37.969532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229317, 36.377018, 37.734200>,  <38.878426, 36.241570, 38.140976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229317, 36.377018, 37.734200> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490372, 36.666939, 37.645901>,  <38.647003, 36.840893, 37.592922>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.490372, 36.666939, 37.645901>,  <38.229317, 36.377018, 37.734200>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.490372, 36.666939, 37.645901> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.146260, -0.165353, -0.975329,
		-0.743421, 0.668821, -0.001905,
		0.652635, 0.724802, -0.220749,
		38.686161, 36.884380, 37.579678>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.005562, 36.631409, 37.013954>,  <38.229317, 36.377018, 37.734200>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.005562, 36.631409, 37.013954> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365162, 36.804520, 37.040791>,  <38.580921, 36.908386, 37.056892>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.365162, 36.804520, 37.040791>,  <38.005562, 36.631409, 37.013954>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.365162, 36.804520, 37.040791> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.120803, -0.097799, -0.987847,
		-0.420956, 0.896181, -0.140202,
		0.899001, 0.432777, 0.067092,
		38.634861, 36.934353, 37.060917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.094097, 37.292927, 36.460068>,  <38.005562, 36.631409, 37.013954>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.094097, 37.292927, 36.460068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436916, 37.118324, 36.569557>,  <38.642609, 37.013561, 36.635250>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436916, 37.118324, 36.569557>,  <38.094097, 37.292927, 36.460068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.436916, 37.118324, 36.569557> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119505, -0.348360, -0.929711,
		0.501183, 0.829520, -0.246397,
		0.857049, -0.436510, 0.273725,
		38.694031, 36.987370, 36.651676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.540932, 37.452534, 35.822193>,  <38.094097, 37.292927, 36.460068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.540932, 37.452534, 35.822193> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696831, 37.160851, 36.047176>,  <38.790371, 36.985840, 36.182167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696831, 37.160851, 36.047176>,  <38.540932, 37.452534, 35.822193>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.696831, 37.160851, 36.047176> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470139, -0.367619, -0.802387,
		0.791874, 0.577163, 0.199547,
		0.389751, -0.729204, 0.562455,
		38.813755, 36.942089, 36.215912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.215042, 37.406696, 35.666718>,  <38.540932, 37.452534, 35.822193>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.215042, 37.406696, 35.666718> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134262, 37.055531, 35.840378>,  <39.085793, 36.844833, 35.944572>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.134262, 37.055531, 35.840378>,  <39.215042, 37.406696, 35.666718>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.134262, 37.055531, 35.840378> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282471, -0.476659, -0.832470,
		0.937777, -0.045485, 0.344247,
		-0.201954, -0.877910, 0.434152,
		39.073677, 36.792156, 35.970623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.717590, 36.989750, 35.349762>,  <39.215042, 37.406696, 35.666718>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.717590, 36.989750, 35.349762> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449635, 36.752808, 35.528805>,  <39.288860, 36.610641, 35.636230>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.449635, 36.752808, 35.528805>,  <39.717590, 36.989750, 35.349762>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.449635, 36.752808, 35.528805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138332, -0.691901, -0.708617,
		0.729457, -0.412779, 0.545442,
		-0.669893, -0.592357, 0.447611,
		39.248665, 36.575100, 35.663090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965485, 36.285999, 35.161167>,  <39.717590, 36.989750, 35.349762>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965485, 36.285999, 35.161167> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581139, 36.217575, 35.248322>,  <39.350529, 36.176521, 35.300613>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581139, 36.217575, 35.248322>,  <39.965485, 36.285999, 35.161167>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.581139, 36.217575, 35.248322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032422, -0.711704, -0.701731,
		0.275106, -0.681334, 0.678307,
		-0.960867, -0.171058, 0.217885,
		39.292877, 36.166256, 35.313686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.873627, 35.591625, 35.125595>,  <39.965485, 36.285999, 35.161167>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.873627, 35.591625, 35.125595> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507801, 35.747967, 35.084000>,  <39.288307, 35.841770, 35.059044>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.507801, 35.747967, 35.084000>,  <39.873627, 35.591625, 35.125595>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507801, 35.747967, 35.084000> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243453, -0.737314, -0.630158,
		-0.322969, -0.551002, 0.769473,
		-0.914561, 0.390851, -0.103986,
		39.233433, 35.865223, 35.052803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.013031, 34.781860, 34.895695>,  <39.873627, 35.591625, 35.125595>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.013031, 34.781860, 34.895695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816410, 34.502060, 35.103184>,  <39.698437, 34.334179, 35.227676>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.816410, 34.502060, 35.103184>,  <40.013031, 34.781860, 34.895695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816410, 34.502060, 35.103184> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570945, 0.190916, 0.798482,
		-0.657571, 0.688659, 0.305531,
		-0.491551, -0.699500, 0.518727,
		39.668945, 34.292210, 35.258801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814640, 34.628540, 34.905785>,  <40.013031, 34.781860, 34.895695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814640, 34.628540, 34.905785> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061436, 34.382317, 35.101910>,  <41.209515, 34.234581, 35.219585>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.061436, 34.382317, 35.101910>,  <40.814640, 34.628540, 34.905785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.061436, 34.382317, 35.101910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507548, 0.164903, 0.845696,
		-0.601433, -0.770643, -0.210684,
		0.616988, -0.615562, 0.490316,
		41.246532, 34.197647, 35.249004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.400539, 34.079338, 35.067078>,  <40.814640, 34.628540, 34.905785>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.400539, 34.079338, 35.067078> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698009, 34.127220, 35.330173>,  <40.876492, 34.155949, 35.488033>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.698009, 34.127220, 35.330173>,  <40.400539, 34.079338, 35.067078>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.698009, 34.127220, 35.330173> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619401, -0.246867, 0.745251,
		0.251586, -0.961627, -0.109442,
		0.743671, 0.119706, 0.657741,
		40.921112, 34.163132, 35.527496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.369362, 33.442867, 35.488323>,  <40.400539, 34.079338, 35.067078>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.369362, 33.442867, 35.488323> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580860, 33.707840, 35.700592>,  <40.707760, 33.866825, 35.827953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.580860, 33.707840, 35.700592>,  <40.369362, 33.442867, 35.488323>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.580860, 33.707840, 35.700592> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591028, -0.161390, 0.790341,
		0.609195, -0.731528, 0.306184,
		0.528742, 0.662436, 0.530671,
		40.739483, 33.906570, 35.859795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.456791, 33.170097, 36.129894>,  <40.369362, 33.442867, 35.488323>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.456791, 33.170097, 36.129894> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526810, 33.560570, 36.181168>,  <40.568821, 33.794853, 36.211929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.526810, 33.560570, 36.181168>,  <40.456791, 33.170097, 36.129894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.526810, 33.560570, 36.181168> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628761, 0.010652, 0.777526,
		0.757640, -0.216699, 0.615649,
		0.175047, 0.976180, 0.128182,
		40.579323, 33.853424, 36.219624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.522301, 33.223938, 36.898438>,  <40.456791, 33.170097, 36.129894>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.522301, 33.223938, 36.898438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435848, 33.593384, 36.771801>,  <40.383976, 33.815052, 36.695820>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.435848, 33.593384, 36.771801>,  <40.522301, 33.223938, 36.898438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.435848, 33.593384, 36.771801> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581572, 0.138674, 0.801588,
		0.784258, 0.357369, 0.507174,
		-0.216131, 0.923610, -0.316593,
		40.371010, 33.870468, 36.676823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.731777, 33.628586, 37.412796>,  <40.522301, 33.223938, 36.898438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.731777, 33.628586, 37.412796> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462429, 33.845303, 37.211586>,  <40.300819, 33.975334, 37.090858>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.462429, 33.845303, 37.211586>,  <40.731777, 33.628586, 37.412796>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.462429, 33.845303, 37.211586> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522732, 0.132238, 0.842178,
		0.522805, 0.830044, 0.194167,
		-0.673369, 0.541793, -0.503025,
		40.260418, 34.007839, 37.060677>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.464905, 34.114365, 37.940628>,  <40.731777, 33.628586, 37.412796>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.464905, 34.114365, 37.940628> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192917, 34.134361, 37.648014>,  <40.029724, 34.146358, 37.472446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192917, 34.134361, 37.648014>,  <40.464905, 34.114365, 37.940628>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.192917, 34.134361, 37.648014> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653295, 0.411689, 0.635388,
		0.332928, 0.909952, -0.247278,
		-0.679974, 0.049993, -0.731530,
		39.988926, 34.149361, 37.428555>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.099194, 34.811115, 37.921597>,  <40.464905, 34.114365, 37.940628>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.099194, 34.811115, 37.921597> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860428, 34.527687, 37.771069>,  <39.717167, 34.357632, 37.680752>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.860428, 34.527687, 37.771069>,  <40.099194, 34.811115, 37.921597>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.860428, 34.527687, 37.771069> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666692, 0.177133, 0.723979,
		-0.446331, 0.683045, -0.578133,
		-0.596917, -0.708571, -0.376321,
		39.681355, 34.315117, 37.658173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.433266, 35.098347, 38.063953>,  <40.099194, 34.811115, 37.921597>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.433266, 35.098347, 38.063953> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396442, 34.707310, 37.988224>,  <39.374348, 34.472687, 37.942787>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.396442, 34.707310, 37.988224>,  <39.433266, 35.098347, 38.063953>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396442, 34.707310, 37.988224> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.744664, -0.058634, 0.664858,
		-0.661060, 0.202184, -0.722579,
		-0.092056, -0.977591, -0.189320,
		39.368824, 34.414032, 37.931427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.635452, 34.981373, 38.084232>,  <39.433266, 35.098347, 38.063953>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.635452, 34.981373, 38.084232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795803, 34.619946, 38.144711>,  <38.892014, 34.403088, 38.180996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795803, 34.619946, 38.144711>,  <38.635452, 34.981373, 38.084232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.795803, 34.619946, 38.144711> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606605, -0.138122, 0.782913,
		-0.686532, -0.405570, -0.603479,
		0.400879, -0.903568, 0.151195,
		38.916065, 34.348877, 38.190071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122742, 34.551933, 38.268379>,  <38.635452, 34.981373, 38.084232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122742, 34.551933, 38.268379> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432751, 34.335342, 38.398701>,  <38.618755, 34.205387, 38.476894>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.432751, 34.335342, 38.398701>,  <38.122742, 34.551933, 38.268379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.432751, 34.335342, 38.398701> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449096, -0.109227, 0.886782,
		-0.444589, -0.833588, -0.327829,
		0.775019, -0.541480, 0.325800,
		38.665257, 34.172897, 38.496441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.786469, 34.169464, 38.717976>,  <38.122742, 34.551933, 38.268379>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.786469, 34.169464, 38.717976> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177166, 34.143936, 38.799847>,  <38.411587, 34.128620, 38.848969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.177166, 34.143936, 38.799847>,  <37.786469, 34.169464, 38.717976>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.177166, 34.143936, 38.799847> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209833, -0.088715, 0.973704,
		-0.043981, -0.994011, -0.100043,
		0.976748, -0.063816, 0.204675,
		38.470192, 34.124790, 38.861248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.892086, 33.535603, 39.050629>,  <37.786469, 34.169464, 38.717976>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.892086, 33.535603, 39.050629> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190548, 33.776745, 39.163631>,  <38.369625, 33.921432, 39.231434>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.190548, 33.776745, 39.163631>,  <37.892086, 33.535603, 39.050629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.190548, 33.776745, 39.163631> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331627, -0.031396, 0.942888,
		0.577299, -0.797229, 0.176498,
		0.746157, 0.602860, 0.282508,
		38.414394, 33.957603, 39.248383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.103298, 33.286724, 39.677147>,  <37.892086, 33.535603, 39.050629>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.103298, 33.286724, 39.677147> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258770, 33.654854, 39.694698>,  <38.352055, 33.875732, 39.705231>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.258770, 33.654854, 39.694698>,  <38.103298, 33.286724, 39.677147>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.258770, 33.654854, 39.694698> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232106, 0.051712, 0.971315,
		0.891658, -0.387716, 0.233713,
		0.388680, 0.920327, 0.043882,
		38.375374, 33.930950, 39.707863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171642, 32.700939, 40.009178>,  <38.103298, 33.286724, 39.677147>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171642, 32.700939, 40.009178> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916691, 32.409943, 40.110771>,  <37.763721, 32.235344, 40.171726>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916691, 32.409943, 40.110771>,  <38.171642, 32.700939, 40.009178>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916691, 32.409943, 40.110771> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627386, 0.298593, -0.719186,
		0.447364, -0.617739, -0.646734,
		-0.637379, -0.727490, 0.253981,
		37.725475, 32.191696, 40.186966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.970158, 32.365772, 39.359684>,  <38.171642, 32.700939, 40.009178>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.970158, 32.365772, 39.359684> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677101, 32.266525, 39.613194>,  <37.501266, 32.206978, 39.765301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.677101, 32.266525, 39.613194>,  <37.970158, 32.365772, 39.359684>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677101, 32.266525, 39.613194> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675463, 0.150729, -0.721825,
		0.083564, -0.956933, -0.278021,
		-0.732644, -0.248112, 0.633777,
		37.457310, 32.192089, 39.803326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.604137, 31.908998, 38.965267>,  <37.970158, 32.365772, 39.359684>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.604137, 31.908998, 38.965267> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349682, 32.003605, 39.259041>,  <37.197010, 32.060368, 39.435303>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.349682, 32.003605, 39.259041>,  <37.604137, 31.908998, 38.965267>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.349682, 32.003605, 39.259041> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717011, 0.170377, -0.675920,
		-0.284997, -0.956573, 0.061203,
		-0.636139, 0.236518, 0.734430,
		37.158840, 32.074558, 39.479370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003292, 31.651510, 38.753742>,  <37.604137, 31.908998, 38.965267>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003292, 31.651510, 38.753742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885979, 31.939224, 39.005653>,  <36.815590, 32.111851, 39.156799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.885979, 31.939224, 39.005653>,  <37.003292, 31.651510, 38.753742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.885979, 31.939224, 39.005653> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.729422, 0.257477, -0.633757,
		-0.618005, -0.645241, 0.449149,
		-0.293281, 0.719284, 0.629775,
		36.797993, 32.155010, 39.194588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.345585, 31.533566, 38.668053>,  <37.003292, 31.651510, 38.753742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.345585, 31.533566, 38.668053> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404327, 31.901072, 38.814644>,  <36.439575, 32.121574, 38.902599>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.404327, 31.901072, 38.814644>,  <36.345585, 31.533566, 38.668053>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.404327, 31.901072, 38.814644> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511239, 0.387671, -0.767037,
		-0.846798, -0.074710, 0.526642,
		0.146859, 0.918765, 0.366474,
		36.448383, 32.176701, 38.924587>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.659565, 31.798330, 38.752605>,  <36.345585, 31.533566, 38.668053>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.659565, 31.798330, 38.752605> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927826, 32.092648, 38.715008>,  <36.088783, 32.269238, 38.692448>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.927826, 32.092648, 38.715008>,  <35.659565, 31.798330, 38.752605>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927826, 32.092648, 38.715008> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472358, 0.325926, -0.818933,
		-0.571930, 0.593618, 0.566140,
		0.670653, 0.735793, -0.093993,
		36.129021, 32.313385, 38.686810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240612, 32.440247, 38.729813>,  <35.659565, 31.798330, 38.752605>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240612, 32.440247, 38.729813> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592258, 32.553974, 38.576805>,  <35.803246, 32.622211, 38.485001>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592258, 32.553974, 38.576805>,  <35.240612, 32.440247, 38.729813>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.592258, 32.553974, 38.576805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473048, 0.422524, -0.773110,
		-0.058184, 0.860602, 0.505943,
		0.879113, 0.284318, -0.382522,
		35.855991, 32.639271, 38.462048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.143158, 33.104855, 38.661720>,  <35.240612, 32.440247, 38.729813>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.143158, 33.104855, 38.661720> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443253, 33.004578, 38.417004>,  <35.623310, 32.944412, 38.270172>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443253, 33.004578, 38.417004>,  <35.143158, 33.104855, 38.661720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.443253, 33.004578, 38.417004> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.397746, 0.568027, -0.720516,
		0.528146, 0.783898, 0.326443,
		0.750240, -0.250697, -0.611793,
		35.668324, 32.929367, 38.233467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.238022, 33.703373, 38.183472>,  <35.143158, 33.104855, 38.661720>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.238022, 33.703373, 38.183472> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462933, 33.431889, 37.994495>,  <35.597878, 33.268997, 37.881111>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.462933, 33.431889, 37.994495>,  <35.238022, 33.703373, 38.183472>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.462933, 33.431889, 37.994495> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170083, 0.464173, -0.869262,
		0.809272, 0.569115, 0.145554,
		0.562272, -0.678713, -0.472439,
		35.631615, 33.228275, 37.852764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.783531, 33.995743, 37.888035>,  <35.238022, 33.703373, 38.183472>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.783531, 33.995743, 37.888035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682110, 33.668682, 37.681286>,  <35.621258, 33.472446, 37.557236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.682110, 33.668682, 37.681286>,  <35.783531, 33.995743, 37.888035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682110, 33.668682, 37.681286> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268884, 0.572852, -0.774301,
		0.929200, -0.057348, -0.365102,
		-0.253554, -0.817651, -0.516874,
		35.606045, 33.423386, 37.526222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.142639, 34.079063, 37.267181>,  <35.783531, 33.995743, 37.888035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.142639, 34.079063, 37.267181> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826729, 33.838650, 37.218155>,  <35.637184, 33.694401, 37.188740>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.826729, 33.838650, 37.218155>,  <36.142639, 34.079063, 37.267181>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.826729, 33.838650, 37.218155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354441, 0.610236, -0.708508,
		0.500630, -0.516117, -0.694977,
		-0.789773, -0.601029, -0.122569,
		35.589798, 33.658340, 37.181385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.993542, 34.044815, 36.546795>,  <36.142639, 34.079063, 37.267181>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.993542, 34.044815, 36.546795> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652283, 33.885483, 36.681534>,  <35.447525, 33.789883, 36.762379>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.652283, 33.885483, 36.681534>,  <35.993542, 34.044815, 36.546795>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652283, 33.885483, 36.681534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492926, 0.404182, -0.770494,
		0.170762, -0.823390, -0.541174,
		-0.853150, -0.398329, 0.336851,
		35.396339, 33.765984, 36.782589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.794884, 31.302761, 43.467876> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.403057, 31.330391, 43.543438>,  <39.167961, 31.346968, 43.588776>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.403057, 31.330391, 43.543438>,  <39.794884, 31.302761, 43.467876>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403057, 31.330391, 43.543438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183698, 0.075298, -0.980094,
		-0.081925, -0.994766, -0.061071,
		-0.979563, 0.069075, 0.188905,
		39.109188, 31.351112, 43.600109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.492516, 30.785532, 43.040375>,  <39.794884, 31.302761, 43.467876>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.492516, 30.785532, 43.040375> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211327, 31.048161, 43.149734>,  <39.042614, 31.205738, 43.215351>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.211327, 31.048161, 43.149734>,  <39.492516, 30.785532, 43.040375>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.211327, 31.048161, 43.149734> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.413817, -0.064952, -0.908040,
		-0.578435, -0.751462, 0.317360,
		-0.702971, 0.656571, 0.273397,
		39.000435, 31.245132, 43.231754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.905212, 30.497396, 42.882626>,  <39.492516, 30.785532, 43.040375>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.905212, 30.497396, 42.882626> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820198, 30.888220, 42.888111>,  <38.769188, 31.122713, 42.891403>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.820198, 30.888220, 42.888111>,  <38.905212, 30.497396, 42.882626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.820198, 30.888220, 42.888111> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354288, -0.063969, -0.932946,
		-0.910664, -0.203146, 0.359755,
		-0.212537, 0.977057, 0.013718,
		38.756435, 31.181337, 42.892227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.183678, 30.626560, 42.631985>,  <38.905212, 30.497396, 42.882626>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.183678, 30.626560, 42.631985> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370903, 30.975960, 42.578445>,  <38.483238, 31.185600, 42.546322>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.370903, 30.975960, 42.578445>,  <38.183678, 30.626560, 42.631985>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370903, 30.975960, 42.578445> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442890, 0.100806, -0.890891,
		-0.764700, 0.476274, 0.434047,
		0.468062, 0.873500, -0.133851,
		38.511322, 31.238010, 42.538292>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667667, 31.018566, 42.414295>,  <38.183678, 30.626560, 42.631985>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667667, 31.018566, 42.414295> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986134, 31.224043, 42.286400>,  <38.177216, 31.347330, 42.209663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.986134, 31.224043, 42.286400>,  <37.667667, 31.018566, 42.414295>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.986134, 31.224043, 42.286400> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.479040, 0.212317, -0.851729,
		-0.369642, 0.831289, 0.415120,
		0.796169, 0.513693, -0.319739,
		38.224983, 31.378151, 42.190479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.397861, 31.493931, 42.041565>,  <37.667667, 31.018566, 42.414295>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.397861, 31.493931, 42.041565> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775352, 31.550329, 41.921898>,  <38.001846, 31.584169, 41.850098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.775352, 31.550329, 41.921898>,  <37.397861, 31.493931, 42.041565>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.775352, 31.550329, 41.921898> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.328661, 0.298884, -0.895907,
		-0.036904, 0.943816, 0.328405,
		0.943726, 0.140997, -0.299166,
		38.058472, 31.592628, 41.832150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.515537, 32.145088, 41.770458>,  <37.397861, 31.493931, 42.041565>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.515537, 32.145088, 41.770458> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792252, 31.937639, 41.569477>,  <37.958282, 31.813169, 41.448891>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.792252, 31.937639, 41.569477>,  <37.515537, 32.145088, 41.770458>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.792252, 31.937639, 41.569477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.364980, 0.349264, -0.863021,
		0.623071, 0.780413, 0.052330,
		0.691790, -0.518623, -0.502451,
		37.999790, 31.782053, 41.418743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.060623, 32.598873, 41.415863>,  <37.515537, 32.145088, 41.770458>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.060623, 32.598873, 41.415863> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957951, 32.260715, 41.228497>,  <37.896347, 32.057819, 41.116077>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.957951, 32.260715, 41.228497>,  <38.060623, 32.598873, 41.415863>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.957951, 32.260715, 41.228497> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477273, 0.532313, -0.699180,
		0.840432, 0.044100, -0.540120,
		-0.256679, -0.845398, -0.468421,
		37.880947, 32.007095, 41.087971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.992409, 32.809196, 40.761826>,  <38.060623, 32.598873, 41.415863>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.992409, 32.809196, 40.761826> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886066, 32.430157, 40.690979>,  <37.822262, 32.202732, 40.648472>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.886066, 32.430157, 40.690979>,  <37.992409, 32.809196, 40.761826>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.886066, 32.430157, 40.690979> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394737, 0.274627, -0.876791,
		0.879491, -0.163184, -0.447065,
		-0.265854, -0.947603, -0.177117,
		37.806309, 32.145874, 40.637844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.486805, 33.299030, 40.312496>,  <37.992409, 32.809196, 40.761826>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.486805, 33.299030, 40.312496> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421322, 33.686810, 40.239422>,  <38.382034, 33.919476, 40.195576>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.421322, 33.686810, 40.239422>,  <38.486805, 33.299030, 40.312496>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.421322, 33.686810, 40.239422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104870, 0.167037, 0.980358,
		0.980919, 0.179649, 0.074320,
		-0.163706, 0.969446, -0.182690,
		38.372211, 33.977642, 40.184616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.047215, 33.509888, 40.745899>,  <38.486805, 33.299030, 40.312496>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.047215, 33.509888, 40.745899> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807014, 33.815670, 40.652077>,  <38.662895, 33.999138, 40.595783>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.807014, 33.815670, 40.652077>,  <39.047215, 33.509888, 40.745899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.807014, 33.815670, 40.652077> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.035603, 0.318601, 0.947220,
		0.798835, 0.560451, -0.218535,
		-0.600496, 0.764453, -0.234556,
		38.626865, 34.045006, 40.581711>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.404263, 34.131207, 40.970615>,  <39.047215, 33.509888, 40.745899>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.404263, 34.131207, 40.970615> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.018246, 34.228504, 40.931572>,  <38.786636, 34.286884, 40.908146>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.018246, 34.228504, 40.931572>,  <39.404263, 34.131207, 40.970615>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.018246, 34.228504, 40.931572> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.005969, 0.351917, 0.936012,
		0.262029, 0.903873, -0.338163,
		-0.965042, 0.243243, -0.097608,
		38.728733, 34.301476, 40.902290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.354588, 34.849277, 41.023621>,  <39.404263, 34.131207, 40.970615>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.354588, 34.849277, 41.023621> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.994106, 34.699356, 41.110668>,  <38.777817, 34.609402, 41.162899>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.994106, 34.699356, 41.110668>,  <39.354588, 34.849277, 41.023621>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994106, 34.699356, 41.110668> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.064864, 0.379831, 0.922779,
		-0.428521, 0.845725, -0.317993,
		-0.901200, -0.374804, 0.217622,
		38.723747, 34.586914, 41.175957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.100098, 35.386497, 41.295452>,  <39.354588, 34.849277, 41.023621>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.100098, 35.386497, 41.295452> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830547, 35.110527, 41.401207>,  <38.668819, 34.944946, 41.464661>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.830547, 35.110527, 41.401207>,  <39.100098, 35.386497, 41.295452>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.830547, 35.110527, 41.401207> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116080, 0.452260, 0.884300,
		-0.729672, 0.565215, -0.384852,
		-0.673873, -0.689922, 0.264391,
		38.628387, 34.903549, 41.480526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.567665, 35.750900, 41.542309>,  <39.100098, 35.386497, 41.295452>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.567665, 35.750900, 41.542309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.537334, 35.387253, 41.706135>,  <38.519135, 35.169064, 41.804432>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.537334, 35.387253, 41.706135>,  <38.567665, 35.750900, 41.542309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.537334, 35.387253, 41.706135> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092867, 0.415406, 0.904883,
		-0.992787, 0.030583, -0.115928,
		-0.075831, -0.909122, 0.409569,
		38.514584, 35.114517, 41.829006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.072094, 35.831299, 41.981964>,  <38.567665, 35.750900, 41.542309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.072094, 35.831299, 41.981964> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250874, 35.497715, 42.111423>,  <38.358139, 35.297565, 42.189098>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.250874, 35.497715, 42.111423>,  <38.072094, 35.831299, 41.981964>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.250874, 35.497715, 42.111423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000224, 0.361694, 0.932297,
		-0.894561, -0.416759, 0.161471,
		0.446946, -0.833960, 0.323651,
		38.384956, 35.247528, 42.208519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.619713, 35.662724, 42.520061>,  <38.072094, 35.831299, 41.981964>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.619713, 35.662724, 42.520061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960464, 35.458447, 42.566525>,  <38.164917, 35.335880, 42.594402>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.960464, 35.458447, 42.566525>,  <37.619713, 35.662724, 42.520061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.960464, 35.458447, 42.566525> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041670, 0.154990, 0.987037,
		-0.522076, -0.845677, 0.110752,
		0.851880, -0.510693, 0.116156,
		38.216030, 35.305237, 42.601372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.634979, 35.215359, 43.098953>,  <37.619713, 35.662724, 42.520061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.634979, 35.215359, 43.098953> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032917, 35.242702, 43.069008>,  <38.271679, 35.259109, 43.051041>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.032917, 35.242702, 43.069008>,  <37.634979, 35.215359, 43.098953>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.032917, 35.242702, 43.069008> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062060, 0.173262, 0.982919,
		0.080159, -0.982501, 0.168128,
		0.994848, 0.068356, -0.074863,
		38.331371, 35.263210, 43.046551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.881008, 34.775837, 43.620605>,  <37.634979, 35.215359, 43.098953>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.881008, 34.775837, 43.620605> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.195961, 35.008343, 43.538475>,  <38.384933, 35.147846, 43.489197>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.195961, 35.008343, 43.538475>,  <37.881008, 34.775837, 43.620605>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.195961, 35.008343, 43.538475> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134267, 0.163369, 0.977386,
		0.601660, -0.797148, 0.050590,
		0.787386, 0.581262, -0.205323,
		38.432178, 35.182720, 43.476879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.371849, 34.538345, 43.948921>,  <37.881008, 34.775837, 43.620605>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.371849, 34.538345, 43.948921> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510818, 34.905602, 43.872688>,  <38.594200, 35.125954, 43.826946>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.510818, 34.905602, 43.872688>,  <38.371849, 34.538345, 43.948921>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.510818, 34.905602, 43.872688> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278546, 0.093025, 0.955907,
		0.895383, -0.385189, -0.223425,
		0.347421, 0.918137, -0.190587,
		38.615044, 35.181042, 43.815514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042561, 34.447346, 44.064693>,  <38.371849, 34.538345, 43.948921>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042561, 34.447346, 44.064693> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959858, 34.836029, 44.110355>,  <38.910236, 35.069241, 44.137753>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.959858, 34.836029, 44.110355>,  <39.042561, 34.447346, 44.064693>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.959858, 34.836029, 44.110355> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429588, -0.014666, 0.902906,
		0.879038, 0.235716, -0.414403,
		-0.206752, 0.971711, 0.114153,
		38.897831, 35.127541, 44.144600>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.667538, 34.708450, 44.292564>,  <39.042561, 34.447346, 44.064693>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.667538, 34.708450, 44.292564> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399506, 34.990265, 44.386051>,  <39.238686, 35.159355, 44.442142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.399506, 34.990265, 44.386051>,  <39.667538, 34.708450, 44.292564>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399506, 34.990265, 44.386051> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352467, 0.024901, 0.935493,
		0.653271, 0.709229, -0.265012,
		-0.670078, 0.704539, 0.233713,
		39.198483, 35.201626, 44.456165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.068336, 35.205406, 44.518528>,  <39.667538, 34.708450, 44.292564>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.068336, 35.205406, 44.518528> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702332, 35.277012, 44.663147>,  <39.482731, 35.319977, 44.749916>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.702332, 35.277012, 44.663147>,  <40.068336, 35.205406, 44.518528>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.702332, 35.277012, 44.663147> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398406, 0.259873, 0.879624,
		0.063508, 0.948905, -0.309106,
		-0.915008, 0.179013, 0.361545,
		39.427830, 35.330715, 44.771610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<34.355434, 35.801983, 45.308010> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.686234, 35.580357, 45.269890>,  <34.884712, 35.447380, 45.247017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.686234, 35.580357, 45.269890>,  <34.355434, 35.801983, 45.308010>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.686234, 35.580357, 45.269890> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043169, 0.106437, -0.993382,
		0.560545, 0.825639, 0.064104,
		0.826998, -0.554068, -0.095305,
		34.934334, 35.414135, 45.241299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.739407, 36.082554, 44.771034>,  <34.355434, 35.801983, 45.308010>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.739407, 36.082554, 44.771034> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.887424, 35.711716, 44.794868>,  <34.976234, 35.489212, 44.809170>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.887424, 35.711716, 44.794868>,  <34.739407, 36.082554, 44.771034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.887424, 35.711716, 44.794868> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085847, -0.029743, -0.995864,
		0.925038, 0.373633, 0.068582,
		0.370048, -0.927100, 0.059588,
		34.998440, 35.433586, 44.812744>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.282345, 36.154278, 44.290874>,  <34.739407, 36.082554, 44.771034>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.282345, 36.154278, 44.290874> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.195732, 35.772518, 44.373077>,  <35.143764, 35.543461, 44.422398>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.195732, 35.772518, 44.373077>,  <35.282345, 36.154278, 44.290874>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.195732, 35.772518, 44.373077> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173764, -0.244814, -0.953872,
		0.960686, -0.170838, 0.218852,
		-0.216536, -0.954400, 0.205504,
		35.130772, 35.486198, 44.434727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.893528, 35.800888, 44.031120>,  <35.282345, 36.154278, 44.290874>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.893528, 35.800888, 44.031120> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553825, 35.591118, 44.055603>,  <35.350002, 35.465256, 44.070293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.553825, 35.591118, 44.055603>,  <35.893528, 35.800888, 44.031120>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.553825, 35.591118, 44.055603> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042333, -0.047927, -0.997953,
		0.526283, -0.850108, 0.018502,
		-0.849255, -0.524423, 0.061210,
		35.299049, 35.433792, 44.073967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.015587, 35.241119, 43.546986>,  <35.893528, 35.800888, 44.031120>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.015587, 35.241119, 43.546986> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.624763, 35.257465, 43.630589>,  <35.390270, 35.267273, 43.680748>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.624763, 35.257465, 43.630589>,  <36.015587, 35.241119, 43.546986>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.624763, 35.257465, 43.630589> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208295, 0.020964, -0.977841,
		-0.044346, -0.998945, -0.011970,
		-0.977060, 0.040870, 0.209005,
		35.331646, 35.269726, 43.693291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.720318, 34.873657, 43.040226>,  <36.015587, 35.241119, 43.546986>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.720318, 34.873657, 43.040226> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403858, 35.064934, 43.192757>,  <35.213982, 35.179699, 43.284275>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.403858, 35.064934, 43.192757>,  <35.720318, 34.873657, 43.040226>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403858, 35.064934, 43.192757> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336074, 0.181021, -0.924276,
		-0.511010, -0.859397, 0.017493,
		-0.791153, 0.478193, 0.381325,
		35.166512, 35.208393, 43.307156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086166, 34.570602, 42.749851>,  <35.720318, 34.873657, 43.040226>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086166, 34.570602, 42.749851> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997097, 34.944649, 42.860104>,  <34.943653, 35.169075, 42.926254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.997097, 34.944649, 42.860104>,  <35.086166, 34.570602, 42.749851>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.997097, 34.944649, 42.860104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269166, 0.212771, -0.939296,
		-0.936997, -0.283352, 0.204322,
		-0.222678, 0.935115, 0.275635,
		34.930294, 35.225182, 42.942795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486916, 34.743927, 42.416294>,  <35.086166, 34.570602, 42.749851>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486916, 34.743927, 42.416294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.628403, 35.099655, 42.532215>,  <34.713295, 35.313091, 42.601768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.628403, 35.099655, 42.532215>,  <34.486916, 34.743927, 42.416294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.628403, 35.099655, 42.532215> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162265, 0.363482, -0.917361,
		-0.921169, 0.277465, 0.272877,
		0.353721, 0.889322, 0.289805,
		34.734520, 35.366451, 42.619156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.952106, 35.283928, 42.216614>,  <34.486916, 34.743927, 42.416294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.952106, 35.283928, 42.216614> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.305592, 35.467823, 42.251686>,  <34.517685, 35.578159, 42.272728>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.305592, 35.467823, 42.251686>,  <33.952106, 35.283928, 42.216614>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.305592, 35.467823, 42.251686> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211733, 0.559779, -0.801134,
		-0.417392, 0.689411, 0.592027,
		0.883716, 0.459739, 0.087676,
		34.570705, 35.605743, 42.277988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.786316, 35.991467, 42.259354>,  <33.952106, 35.283928, 42.216614>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.786316, 35.991467, 42.259354> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160370, 35.965923, 42.119961>,  <34.384804, 35.950600, 42.036324>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.160370, 35.965923, 42.119961>,  <33.786316, 35.991467, 42.259354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160370, 35.965923, 42.119961> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274230, 0.492318, -0.826088,
		0.224314, 0.868070, 0.442874,
		0.935137, -0.063854, -0.348485,
		34.440910, 35.946766, 42.015415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.767357, 36.412643, 41.706055>,  <33.786316, 35.991467, 42.259354>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.767357, 36.412643, 41.706055> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137867, 36.284615, 41.626495>,  <34.360172, 36.207798, 41.578758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.137867, 36.284615, 41.626495>,  <33.767357, 36.412643, 41.706055>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.137867, 36.284615, 41.626495> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025721, 0.580279, -0.814012,
		0.375963, 0.748885, 0.545732,
		0.926278, -0.320075, -0.198901,
		34.415749, 36.188591, 41.566826>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.144379, 36.973850, 41.686764>,  <33.767357, 36.412643, 41.706055>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.144379, 36.973850, 41.686764> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307976, 36.691998, 41.454823>,  <34.406132, 36.522888, 41.315659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.307976, 36.691998, 41.454823>,  <34.144379, 36.973850, 41.686764>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.307976, 36.691998, 41.454823> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150886, 0.574460, -0.804506,
		0.899978, 0.416526, 0.128630,
		0.408990, -0.704629, -0.579849,
		34.430672, 36.480610, 41.280869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.577290, 37.365616, 41.132191>,  <34.144379, 36.973850, 41.686764>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.577290, 37.365616, 41.132191> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495235, 37.002930, 40.984795>,  <34.446003, 36.785316, 40.896358>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.495235, 37.002930, 40.984795>,  <34.577290, 37.365616, 41.132191>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.495235, 37.002930, 40.984795> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147511, 0.400838, -0.904195,
		0.967554, -0.131126, -0.215976,
		-0.205135, -0.906717, -0.368490,
		34.433693, 36.730915, 40.874249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.828449, 37.375954, 40.369091>,  <34.577290, 37.365616, 41.132191>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.828449, 37.375954, 40.369091> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579544, 37.069126, 40.431564>,  <34.430202, 36.885029, 40.469048>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.579544, 37.069126, 40.431564>,  <34.828449, 37.375954, 40.369091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.579544, 37.069126, 40.431564> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464453, 0.201167, -0.862447,
		0.630137, -0.609211, -0.481446,
		-0.622263, -0.767069, 0.156187,
		34.392864, 36.839005, 40.478420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.560474, 37.246971, 40.318531>,  <34.828449, 37.375954, 40.369091>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.560474, 37.246971, 40.318531> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835594, 37.515461, 40.207977>,  <36.000664, 37.676556, 40.141644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.835594, 37.515461, 40.207977>,  <35.560474, 37.246971, 40.318531>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835594, 37.515461, 40.207977> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371402, 0.001738, 0.928470,
		0.623695, -0.741250, -0.248100,
		0.687797, 0.671227, -0.276386,
		36.041935, 37.716827, 40.125061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.159264, 37.042019, 40.727810>,  <35.560474, 37.246971, 40.318531>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.159264, 37.042019, 40.727810> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185581, 37.422543, 40.607349>,  <36.201370, 37.650856, 40.535072>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.185581, 37.422543, 40.607349>,  <36.159264, 37.042019, 40.727810>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.185581, 37.422543, 40.607349> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366079, 0.257745, 0.894178,
		0.928255, -0.169076, -0.331294,
		0.065794, 0.951305, -0.301148,
		36.205318, 37.707935, 40.517006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841919, 37.376545, 40.871227>,  <36.159264, 37.042019, 40.727810>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.841919, 37.376545, 40.871227> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561340, 37.661133, 40.854305>,  <36.392994, 37.831886, 40.844151>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.561340, 37.661133, 40.854305>,  <36.841919, 37.376545, 40.871227>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.561340, 37.661133, 40.854305> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428801, 0.468688, 0.772309,
		0.569301, 0.523591, -0.633836,
		-0.701445, 0.711466, -0.042308,
		36.350906, 37.874573, 40.841614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.166840, 38.007462, 41.037701>,  <36.841919, 37.376545, 40.871227>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.166840, 38.007462, 41.037701> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781166, 38.085365, 41.109715>,  <36.549763, 38.132107, 41.152924>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.781166, 38.085365, 41.109715>,  <37.166840, 38.007462, 41.037701>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.781166, 38.085365, 41.109715> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249577, 0.436582, 0.864354,
		0.089742, 0.878331, -0.469555,
		-0.964188, 0.194759, 0.180031,
		36.491909, 38.143791, 41.163723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.108543, 38.727917, 41.358013>,  <37.166840, 38.007462, 41.037701>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.108543, 38.727917, 41.358013> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769943, 38.535126, 41.448471>,  <36.566784, 38.419453, 41.502747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.769943, 38.535126, 41.448471>,  <37.108543, 38.727917, 41.358013>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.769943, 38.535126, 41.448471> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093522, 0.283548, 0.954387,
		-0.524115, 0.829035, -0.194947,
		-0.846497, -0.481977, 0.226145,
		36.515995, 38.390533, 41.516315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.719223, 39.199219, 41.846428>,  <37.108543, 38.727917, 41.358013>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.719223, 39.199219, 41.846428> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552273, 38.838078, 41.887711>,  <36.452103, 38.621391, 41.912479>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.552273, 38.838078, 41.887711>,  <36.719223, 39.199219, 41.846428>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.552273, 38.838078, 41.887711> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127575, 0.054236, 0.990345,
		-0.899734, 0.426514, 0.092545,
		-0.417377, -0.902853, 0.103210,
		36.427059, 38.567223, 41.918674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.219688, 39.233730, 42.456642>,  <36.719223, 39.199219, 41.846428>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.219688, 39.233730, 42.456642> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297398, 38.846645, 42.392406>,  <36.344021, 38.614395, 42.353867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.297398, 38.846645, 42.392406>,  <36.219688, 39.233730, 42.456642>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.297398, 38.846645, 42.392406> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108168, -0.141573, 0.984000,
		-0.974966, -0.208533, 0.077172,
		0.194271, -0.967714, -0.160586,
		36.355679, 38.556332, 42.344231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.693558, 38.805359, 42.805294>,  <36.219688, 39.233730, 42.456642>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.693558, 38.805359, 42.805294> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004936, 38.555656, 42.778969>,  <36.191761, 38.405834, 42.763172>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.004936, 38.555656, 42.778969>,  <35.693558, 38.805359, 42.805294>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.004936, 38.555656, 42.778969> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091082, -0.216072, 0.972120,
		-0.621073, -0.750744, -0.225058,
		0.778442, -0.624256, -0.065817,
		36.238468, 38.368382, 42.759224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.535851, 38.247883, 43.246529>,  <35.693558, 38.805359, 42.805294>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.535851, 38.247883, 43.246529> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924595, 38.160400, 43.211521>,  <36.157841, 38.107910, 43.190517>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.924595, 38.160400, 43.211521>,  <35.535851, 38.247883, 43.246529>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.924595, 38.160400, 43.211521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.007156, -0.343954, 0.938959,
		-0.235457, -0.913162, -0.332710,
		0.971859, -0.218703, -0.087521,
		36.216152, 38.094788, 43.185265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639362, 37.624958, 43.633343>,  <35.535851, 38.247883, 43.246529>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.639362, 37.624958, 43.633343> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.001194, 37.793449, 43.607132>,  <36.218292, 37.894547, 43.591408>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.001194, 37.793449, 43.607132>,  <35.639362, 37.624958, 43.633343>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.001194, 37.793449, 43.607132> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174414, -0.225451, 0.958515,
		0.388985, -0.878484, -0.277408,
		0.904583, 0.421232, -0.065523,
		36.272568, 37.919819, 43.587475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.123402, 37.191765, 43.828545>,  <35.639362, 37.624958, 43.633343>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.123402, 37.191765, 43.828545> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.286663, 37.554192, 43.873173>,  <36.384621, 37.771648, 43.899948>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.286663, 37.554192, 43.873173>,  <36.123402, 37.191765, 43.828545>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.286663, 37.554192, 43.873173> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284572, -0.242398, 0.927503,
		0.867429, -0.346810, -0.356777,
		0.408149, 0.906072, 0.111571,
		36.409107, 37.826012, 43.906643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.783806, 37.122826, 44.035320>,  <36.123402, 37.191765, 43.828545>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.783806, 37.122826, 44.035320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692898, 37.493881, 44.153870>,  <36.638351, 37.716515, 44.224998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.692898, 37.493881, 44.153870>,  <36.783806, 37.122826, 44.035320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.692898, 37.493881, 44.153870> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374419, -0.197703, 0.905938,
		0.898976, 0.316862, -0.302392,
		-0.227273, 0.927638, 0.296369,
		36.624714, 37.772171, 44.242779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398476, 37.383305, 44.460281>,  <36.783806, 37.122826, 44.035320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398476, 37.383305, 44.460281> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094414, 37.618355, 44.571175>,  <36.911976, 37.759384, 44.637711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.094414, 37.618355, 44.571175>,  <37.398476, 37.383305, 44.460281>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.094414, 37.618355, 44.571175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275040, -0.095552, 0.956673,
		0.588654, 0.803472, -0.088985,
		-0.760158, 0.587624, 0.277234,
		36.866367, 37.794643, 44.654346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.833488, 37.888115, 44.857838>,  <37.398476, 37.383305, 44.460281>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.833488, 37.888115, 44.857838> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.450989, 37.856449, 44.970490>,  <37.221489, 37.837448, 45.038078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<37.450989, 37.856449, 44.970490>,  <37.833488, 37.888115, 44.857838>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.450989, 37.856449, 44.970490> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291263, -0.167656, 0.941837,
		-0.027348, 0.982661, 0.183381,
		-0.956252, -0.079169, 0.281628,
		37.164112, 37.832699, 45.054977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.295250, 38.531906, 44.777637>,  <37.833488, 37.888115, 44.857838>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.295250, 38.531906, 44.777637> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693836, 38.554321, 44.802689>,  <38.932987, 38.567772, 44.817719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.693836, 38.554321, 44.802689>,  <38.295250, 38.531906, 44.777637>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.693836, 38.554321, 44.802689> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038897, 0.353045, -0.934797,
		-0.074497, 0.933927, 0.349616,
		0.996462, 0.056041, 0.062628,
		38.992775, 38.571133, 44.821476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.525234, 39.184219, 44.592419>,  <38.295250, 38.531906, 44.777637>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.525234, 39.184219, 44.592419> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819622, 38.925716, 44.511723>,  <38.996254, 38.770615, 44.463306>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.819622, 38.925716, 44.511723>,  <38.525234, 39.184219, 44.592419>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.819622, 38.925716, 44.511723> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075817, 0.217435, -0.973126,
		0.672752, 0.731490, 0.111030,
		0.735974, -0.646254, -0.201739,
		39.040413, 38.731842, 44.451202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.949177, 39.577766, 44.208988>,  <38.525234, 39.184219, 44.592419>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.949177, 39.577766, 44.208988> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032166, 39.195290, 44.126385>,  <39.081959, 38.965801, 44.076820>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.032166, 39.195290, 44.126385>,  <38.949177, 39.577766, 44.208988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.032166, 39.195290, 44.126385> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105250, 0.188061, -0.976502,
		0.972562, 0.224333, -0.061622,
		0.207473, -0.956194, -0.206512,
		39.094406, 38.908432, 44.064430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.356178, 39.657391, 43.633644>,  <38.949177, 39.577766, 44.208988>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.356178, 39.657391, 43.633644> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.246170, 39.273182, 43.616867>,  <39.180164, 39.042656, 43.606800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.246170, 39.273182, 43.616867>,  <39.356178, 39.657391, 43.633644>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.246170, 39.273182, 43.616867> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047735, 0.057209, -0.997220,
		0.960252, -0.272256, -0.061584,
		-0.275023, -0.960523, -0.041939,
		39.163662, 38.985023, 43.604286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.876717, 39.345207, 43.246361>,  <39.356178, 39.657391, 43.633644>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.876717, 39.345207, 43.246361> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.572754, 39.085941, 43.226669>,  <39.390377, 38.930382, 43.214855>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.572754, 39.085941, 43.226669>,  <39.876717, 39.345207, 43.246361>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572754, 39.085941, 43.226669> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144359, -0.094434, -0.985009,
		0.633795, -0.755625, 0.165329,
		-0.759910, -0.648161, -0.049230,
		39.344780, 38.891495, 43.211899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.149906, 38.738579, 42.820747>,  <39.876717, 39.345207, 43.246361>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.149906, 38.738579, 42.820747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751301, 38.705910, 42.827618>,  <39.512138, 38.686306, 42.831738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.751301, 38.705910, 42.827618>,  <40.149906, 38.738579, 42.820747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751301, 38.705910, 42.827618> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.027371, -0.514197, -0.857235,
		0.078845, -0.853775, 0.514638,
		-0.996511, -0.081675, 0.017173,
		39.452347, 38.681408, 42.832771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.004044, 38.091038, 42.405659>,  <40.149906, 38.738579, 42.820747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.004044, 38.091038, 42.405659> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.655197, 38.286751, 42.404472>,  <39.445889, 38.404179, 42.403759>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.655197, 38.286751, 42.404472>,  <40.004044, 38.091038, 42.405659>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.655197, 38.286751, 42.404472> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183526, -0.332733, -0.924990,
		-0.453573, -0.806156, 0.379979,
		-0.872118, 0.489287, -0.002968,
		39.393562, 38.433537, 42.403584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.346138, 37.595570, 42.334496>,  <40.004044, 38.091038, 42.405659>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.346138, 37.595570, 42.334496> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227985, 37.957550, 42.211979>,  <39.157093, 38.174740, 42.138470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.227985, 37.957550, 42.211979>,  <39.346138, 37.595570, 42.334496>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227985, 37.957550, 42.211979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247767, -0.382189, -0.890249,
		-0.922693, -0.187072, 0.337107,
		-0.295379, 0.904951, -0.306293,
		39.139370, 38.229034, 42.120090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.721889, 37.379402, 42.131641>,  <39.346138, 37.595570, 42.334496>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.721889, 37.379402, 42.131641> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.804325, 37.719788, 41.938400>,  <38.853786, 37.924019, 41.822456>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.804325, 37.719788, 41.938400>,  <38.721889, 37.379402, 42.131641>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.804325, 37.719788, 41.938400> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347077, -0.398035, -0.849179,
		-0.914912, 0.342684, 0.213318,
		0.206092, 0.850962, -0.483105,
		38.866154, 37.975075, 41.793468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.398861, 37.371403, 41.517075>,  <38.721889, 37.379402, 42.131641>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.398861, 37.371403, 41.517075> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619328, 37.688786, 41.413822>,  <38.751606, 37.879215, 41.351871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.619328, 37.688786, 41.413822>,  <38.398861, 37.371403, 41.517075>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.619328, 37.688786, 41.413822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090812, -0.250487, -0.963851,
		-0.829438, 0.554685, -0.066005,
		0.551167, 0.793461, -0.258136,
		38.784679, 37.926823, 41.336380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.031372, 37.611977, 40.982189>,  <38.398861, 37.371403, 41.517075>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.031372, 37.611977, 40.982189> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.412132, 37.727776, 40.942024>,  <38.640587, 37.797253, 40.917927>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.412132, 37.727776, 40.942024>,  <38.031372, 37.611977, 40.982189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.412132, 37.727776, 40.942024> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.071946, -0.107377, -0.991612,
		-0.297848, 0.951138, -0.081385,
		0.951898, 0.289495, -0.100412,
		38.697701, 37.814625, 40.911900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032669, 38.177948, 40.518723>,  <38.031372, 37.611977, 40.982189>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032669, 38.177948, 40.518723> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404625, 38.031452, 40.532379>,  <38.627800, 37.943554, 40.540573>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.404625, 38.031452, 40.532379>,  <38.032669, 38.177948, 40.518723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.404625, 38.031452, 40.532379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024599, -0.030692, -0.999226,
		0.367005, 0.930014, -0.019531,
		0.929894, -0.366241, 0.034142,
		38.683594, 37.921581, 40.542622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.476677, 38.636635, 40.100613>,  <38.032669, 38.177948, 40.518723>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.476677, 38.636635, 40.100613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665344, 38.284500, 40.120804>,  <38.778545, 38.073219, 40.132919>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<38.665344, 38.284500, 40.120804>,  <38.476677, 38.636635, 40.100613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.665344, 38.284500, 40.120804> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220015, 0.062056, -0.973521,
		0.853889, 0.470281, 0.222955,
		0.471664, -0.880332, 0.050480,
		38.806843, 38.020401, 40.135948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.106327, 38.678860, 39.729576>,  <38.476677, 38.636635, 40.100613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.106327, 38.678860, 39.729576> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035175, 38.287098, 39.767769>,  <38.992485, 38.052040, 39.790684>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.035175, 38.287098, 39.767769>,  <39.106327, 38.678860, 39.729576>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035175, 38.287098, 39.767769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232416, -0.136100, -0.963047,
		0.956212, -0.149116, 0.251839,
		-0.177881, -0.979409, 0.095483,
		38.981812, 37.993275, 39.796413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<25.804905, 34.368965, 43.463024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.422043, 34.359615, 43.347572>,  <25.192326, 34.354008, 43.278301>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.422043, 34.359615, 43.347572>,  <25.804905, 34.368965, 43.463024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.422043, 34.359615, 43.347572> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015072, 0.991366, -0.130254,
		0.289184, -0.129024, -0.948539,
		-0.957155, -0.023371, -0.288632,
		25.134897, 34.352604, 43.260983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.951698, 33.988785, 42.784084>,  <25.804905, 34.368965, 43.463024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.951698, 33.988785, 42.784084> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249187, 34.169312, 42.586826>,  <26.427681, 34.277630, 42.468472>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.249187, 34.169312, 42.586826>,  <25.951698, 33.988785, 42.784084>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.249187, 34.169312, 42.586826> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373857, -0.330740, -0.866511,
		-0.554175, 0.828808, -0.077249,
		0.743721, 0.451319, -0.493143,
		26.472303, 34.304707, 42.438885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.650345, 34.380405, 42.289742>,  <25.951698, 33.988785, 42.784084>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.650345, 34.380405, 42.289742> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028242, 34.388817, 42.158890>,  <26.254980, 34.393864, 42.080379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.028242, 34.388817, 42.158890>,  <25.650345, 34.380405, 42.289742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.028242, 34.388817, 42.158890> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320177, -0.154887, -0.934611,
		-0.070323, 0.987708, -0.139595,
		0.944744, 0.021029, -0.327133,
		26.311665, 34.395126, 42.060749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.519962, 34.789604, 41.799587>,  <25.650345, 34.380405, 42.289742>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.519962, 34.789604, 41.799587> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.863846, 34.610256, 41.701717>,  <26.070177, 34.502647, 41.642994>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.863846, 34.610256, 41.701717>,  <25.519962, 34.789604, 41.799587>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.863846, 34.610256, 41.701717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.277302, -0.007424, -0.960754,
		0.428953, 0.893820, -0.130715,
		0.859711, -0.448366, -0.244673,
		26.121759, 34.475746, 41.628315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.811787, 35.253235, 41.352016>,  <25.519962, 34.789604, 41.799587>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.811787, 35.253235, 41.352016> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968826, 34.891060, 41.287449>,  <26.063051, 34.673756, 41.248707>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.968826, 34.891060, 41.287449>,  <25.811787, 35.253235, 41.352016>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.968826, 34.891060, 41.287449> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305025, 0.037392, -0.951610,
		0.867655, 0.422839, -0.261500,
		0.392600, -0.905433, -0.161420,
		26.086607, 34.619431, 41.239021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.061493, 35.312447, 40.678722>,  <25.811787, 35.253235, 41.352016>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.061493, 35.312447, 40.678722> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085798, 34.914932, 40.716022>,  <26.100382, 34.676422, 40.738403>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.085798, 34.914932, 40.716022>,  <26.061493, 35.312447, 40.678722>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.085798, 34.914932, 40.716022> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.258352, -0.105893, -0.960230,
		0.964138, 0.034255, -0.263181,
		0.060762, -0.993787, 0.093246,
		26.104027, 34.616795, 40.743996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.573732, 35.081181, 40.245979>,  <26.061493, 35.312447, 40.678722>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.573732, 35.081181, 40.245979> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.318169, 34.778599, 40.301933>,  <26.164831, 34.597050, 40.335506>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.318169, 34.778599, 40.301933>,  <26.573732, 35.081181, 40.245979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.318169, 34.778599, 40.301933> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001206, -0.182819, -0.983146,
		0.769281, -0.627973, 0.117717,
		-0.638910, -0.756457, 0.139881,
		26.126495, 34.551662, 40.343899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.888597, 34.567039, 39.920937>,  <26.573732, 35.081181, 40.245979>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.888597, 34.567039, 39.920937> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502110, 34.469727, 39.954964>,  <26.270218, 34.411339, 39.975380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.502110, 34.469727, 39.954964>,  <26.888597, 34.567039, 39.920937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.502110, 34.469727, 39.954964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001767, -0.336301, -0.941753,
		0.257718, -0.909789, 0.325370,
		-0.966218, -0.243282, 0.085063,
		26.212244, 34.396744, 39.980484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.803022, 33.935387, 39.653843>,  <26.888597, 34.567039, 39.920937>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.803022, 33.935387, 39.653843> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427668, 34.073524, 39.659046>,  <26.202456, 34.156406, 39.662167>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.427668, 34.073524, 39.659046>,  <26.803022, 33.935387, 39.653843>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.427668, 34.073524, 39.659046> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086142, -0.197292, -0.976553,
		-0.334682, -0.917504, 0.214885,
		-0.938386, 0.345345, 0.013006,
		26.146152, 34.177128, 39.662949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.399632, 33.494987, 39.224277>,  <26.803022, 33.935387, 39.653843>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.399632, 33.494987, 39.224277> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161270, 33.815628, 39.243618>,  <26.018253, 34.008011, 39.255222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.161270, 33.815628, 39.243618>,  <26.399632, 33.494987, 39.224277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.161270, 33.815628, 39.243618> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109297, -0.021310, -0.993781,
		-0.795585, -0.597479, 0.100311,
		-0.595901, 0.801601, 0.048349,
		25.982500, 34.056107, 39.258121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.826136, 33.315990, 38.793945>,  <26.399632, 33.494987, 39.224277>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.826136, 33.315990, 38.793945> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.807060, 33.715462, 38.801643>,  <25.795616, 33.955143, 38.806263>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.807060, 33.715462, 38.801643>,  <25.826136, 33.315990, 38.793945>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.807060, 33.715462, 38.801643> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.093588, 0.014713, -0.995502,
		-0.994469, -0.049273, 0.092762,
		-0.047687, 0.998677, 0.019243,
		25.792755, 34.015064, 38.807415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.387503, 33.553425, 38.226715>,  <25.826136, 33.315990, 38.793945>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.387503, 33.553425, 38.226715> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.621054, 33.864697, 38.319252>,  <25.761185, 34.051460, 38.374775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.621054, 33.864697, 38.319252>,  <25.387503, 33.553425, 38.226715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.621054, 33.864697, 38.319252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162241, 0.167367, -0.972454,
		-0.795465, 0.605327, -0.028532,
		0.583877, 0.778182, 0.231344,
		25.796217, 34.098152, 38.388657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.143927, 34.098953, 37.782318>,  <25.387503, 33.553425, 38.226715>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.143927, 34.098953, 37.782318> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518763, 34.205891, 37.872112>,  <25.743664, 34.270054, 37.925987>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.518763, 34.205891, 37.872112>,  <25.143927, 34.098953, 37.782318>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.518763, 34.205891, 37.872112> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165501, 0.225965, -0.959973,
		-0.307366, 0.936733, 0.167504,
		0.937089, 0.267341, 0.224485,
		25.799889, 34.286095, 37.939457>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.222332, 34.663078, 37.311684>,  <25.143927, 34.098953, 37.782318>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.222332, 34.663078, 37.311684> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.581682, 34.586849, 37.469978>,  <25.797293, 34.541111, 37.564957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.581682, 34.586849, 37.469978>,  <25.222332, 34.663078, 37.311684>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.581682, 34.586849, 37.469978> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402093, -0.005779, -0.915581,
		0.176767, 0.981657, 0.071435,
		0.898373, -0.190568, 0.395739,
		25.851194, 34.529678, 37.588699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.656538, 35.140465, 37.059132>,  <25.222332, 34.663078, 37.311684>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.656538, 35.140465, 37.059132> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.915768, 34.843121, 37.125366>,  <26.071306, 34.664715, 37.165108>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.915768, 34.843121, 37.125366>,  <25.656538, 35.140465, 37.059132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.915768, 34.843121, 37.125366> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485118, 0.235331, -0.842188,
		0.587077, 0.626131, 0.513128,
		0.648075, -0.743357, 0.165590,
		26.110189, 34.620113, 37.175041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.353371, 35.429420, 36.923824>,  <25.656538, 35.140465, 37.059132>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.353371, 35.429420, 36.923824> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354353, 35.031631, 36.881847>,  <26.354942, 34.792957, 36.856663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.354353, 35.031631, 36.881847>,  <26.353371, 35.429420, 36.923824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.354353, 35.031631, 36.881847> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519980, 0.090907, -0.849327,
		0.854175, -0.052479, 0.517331,
		0.002457, -0.994476, -0.104939,
		26.355089, 34.733288, 36.850365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.939516, 35.334812, 36.707310>,  <26.353371, 35.429420, 36.923824>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.939516, 35.334812, 36.707310> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782642, 34.981712, 36.603813>,  <26.688519, 34.769852, 36.541714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.782642, 34.981712, 36.603813>,  <26.939516, 35.334812, 36.707310>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.782642, 34.981712, 36.603813> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408333, 0.084985, -0.908868,
		0.824291, -0.462097, 0.327126,
		-0.392184, -0.882748, -0.258742,
		26.664988, 34.716888, 36.526192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.402620, 35.099186, 36.256187>,  <26.939516, 35.334812, 36.707310>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.402620, 35.099186, 36.256187> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091080, 34.859390, 36.182423>,  <26.904156, 34.715511, 36.138165>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.091080, 34.859390, 36.182423>,  <27.402620, 35.099186, 36.256187>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.091080, 34.859390, 36.182423> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.272670, -0.058847, -0.960306,
		0.564840, -0.798217, 0.209295,
		-0.778849, -0.599488, -0.184410,
		26.857426, 34.679543, 36.127098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.701590, 34.611797, 35.851120>,  <27.402620, 35.099186, 36.256187>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.701590, 34.611797, 35.851120> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.305964, 34.603096, 35.792774>,  <27.068588, 34.597878, 35.757767>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.305964, 34.603096, 35.792774>,  <27.701590, 34.611797, 35.851120>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.305964, 34.603096, 35.792774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.145203, -0.316718, -0.937340,
		-0.025810, -0.948270, 0.316413,
		-0.989065, -0.021752, -0.145867,
		27.009243, 34.596569, 35.749016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.468813, 34.786484, 35.836212>,  <27.701590, 34.611797, 35.851120>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.468813, 34.786484, 35.836212> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691614, 34.566376, 35.587391>,  <28.825294, 34.434311, 35.438099>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.691614, 34.566376, 35.587391>,  <28.468813, 34.786484, 35.836212>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.691614, 34.566376, 35.587391> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401797, -0.476963, 0.781707,
		-0.726846, -0.685352, -0.044573,
		0.557004, -0.550271, -0.622051,
		28.858715, 34.401295, 35.400776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.460743, 34.059265, 35.973831>,  <28.468813, 34.786484, 35.836212>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.460743, 34.059265, 35.973831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826834, 34.122543, 35.825600>,  <29.046488, 34.160511, 35.736660>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.826834, 34.122543, 35.825600>,  <28.460743, 34.059265, 35.973831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.826834, 34.122543, 35.825600> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.398307, -0.494211, 0.772727,
		-0.060905, -0.854827, -0.515326,
		0.915228, 0.158195, -0.370583,
		29.101402, 34.170002, 35.714424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.840660, 33.442867, 36.031631>,  <28.460743, 34.059265, 35.973831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.840660, 33.442867, 36.031631> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107344, 33.738297, 35.991611>,  <29.267355, 33.915554, 35.967602>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.107344, 33.738297, 35.991611>,  <28.840660, 33.442867, 36.031631>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.107344, 33.738297, 35.991611> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519401, -0.364146, 0.773059,
		0.534527, -0.567372, -0.626394,
		0.666711, 0.738571, -0.100047,
		29.307358, 33.959869, 35.961597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.521749, 33.071140, 36.063416>,  <28.840660, 33.442867, 36.031631>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.521749, 33.071140, 36.063416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570961, 33.458515, 36.150135>,  <29.600489, 33.690941, 36.202168>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.570961, 33.458515, 36.150135>,  <29.521749, 33.071140, 36.063416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.570961, 33.458515, 36.150135> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438698, -0.249027, 0.863441,
		0.890173, -0.011118, -0.455487,
		0.123028, 0.968433, 0.216800,
		29.607870, 33.749046, 36.215176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.259344, 33.108105, 36.285225>,  <29.521749, 33.071140, 36.063416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.259344, 33.108105, 36.285225> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050634, 33.423584, 36.415279>,  <29.925407, 33.612869, 36.493313>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.050634, 33.423584, 36.415279>,  <30.259344, 33.108105, 36.285225>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.050634, 33.423584, 36.415279> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296805, -0.189480, 0.935951,
		0.799785, 0.584858, -0.135222,
		-0.521776, 0.788695, 0.325132,
		29.894102, 33.660191, 36.512817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.697668, 33.515503, 36.724262>,  <30.259344, 33.108105, 36.285225>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.697668, 33.515503, 36.724262> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.360905, 33.686855, 36.855522>,  <30.158848, 33.789669, 36.934277>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.360905, 33.686855, 36.855522>,  <30.697668, 33.515503, 36.724262>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.360905, 33.686855, 36.855522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432777, 0.172780, 0.884788,
		0.322332, 0.886924, -0.330860,
		-0.841906, 0.428384, 0.328148,
		30.108334, 33.815369, 36.953968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.848137, 34.043304, 37.167118>,  <30.697668, 33.515503, 36.724262>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.848137, 34.043304, 37.167118> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473730, 33.948566, 37.271252>,  <30.249086, 33.891724, 37.333733>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.473730, 33.948566, 37.271252>,  <30.848137, 34.043304, 37.167118>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.473730, 33.948566, 37.271252> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219839, 0.184204, 0.957987,
		-0.274849, 0.953925, -0.120350,
		-0.936017, -0.236845, 0.260339,
		30.192924, 33.877514, 37.349354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718069, 34.422169, 37.724747>,  <30.848137, 34.043304, 37.167118>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718069, 34.422169, 37.724747> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436102, 34.143169, 37.776253>,  <30.266922, 33.975769, 37.807156>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.436102, 34.143169, 37.776253>,  <30.718069, 34.422169, 37.724747>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.436102, 34.143169, 37.776253> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.106576, 0.075327, 0.991447,
		-0.701237, 0.712612, 0.021238,
		-0.704917, -0.697503, 0.128769,
		30.224627, 33.933918, 37.814884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.129227, 34.727997, 38.169125>,  <30.718069, 34.422169, 37.724747>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.129227, 34.727997, 38.169125> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082363, 34.333946, 38.219410>,  <30.054245, 34.097515, 38.249580>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.082363, 34.333946, 38.219410>,  <30.129227, 34.727997, 38.169125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.082363, 34.333946, 38.219410> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091434, 0.136751, 0.986377,
		-0.988895, 0.104069, -0.106096,
		-0.117160, -0.985124, 0.125717,
		30.047215, 34.038410, 38.257126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.701887, 34.613392, 38.760155>,  <30.129227, 34.727997, 38.169125>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.701887, 34.613392, 38.760155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.871298, 34.253674, 38.716522>,  <29.972944, 34.037842, 38.690342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.871298, 34.253674, 38.716522>,  <29.701887, 34.613392, 38.760155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871298, 34.253674, 38.716522> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033726, -0.104679, 0.993934,
		-0.905256, -0.424636, -0.014005,
		0.423526, -0.899292, -0.109083,
		29.998356, 33.983887, 38.683796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.402122, 34.241245, 39.185291>,  <29.701887, 34.613392, 38.760155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.402122, 34.241245, 39.185291> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719603, 34.007149, 39.118919>,  <29.910089, 33.866692, 39.079098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.719603, 34.007149, 39.118919>,  <29.402122, 34.241245, 39.185291>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.719603, 34.007149, 39.118919> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116644, -0.121291, 0.985740,
		-0.597024, -0.801734, -0.028003,
		0.793698, -0.585244, -0.165931,
		29.957712, 33.831577, 39.069141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.276861, 33.714928, 39.586948>,  <29.402122, 34.241245, 39.185291>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.276861, 33.714928, 39.586948> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666029, 33.646965, 39.524258>,  <29.899529, 33.606186, 39.486645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.666029, 33.646965, 39.524258>,  <29.276861, 33.714928, 39.586948>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.666029, 33.646965, 39.524258> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118478, -0.215637, 0.969260,
		-0.198481, -0.961578, -0.189667,
		0.972918, -0.169908, -0.156725,
		29.957905, 33.595993, 39.477242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.395304, 33.061417, 39.769398>,  <29.276861, 33.714928, 39.586948>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.395304, 33.061417, 39.769398> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721003, 33.291756, 39.798782>,  <29.916422, 33.429958, 39.816414>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.721003, 33.291756, 39.798782>,  <29.395304, 33.061417, 39.769398>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.721003, 33.291756, 39.798782> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049938, -0.195557, 0.979420,
		0.578367, -0.793821, -0.187989,
		0.814247, 0.575852, 0.073462,
		29.965277, 33.464512, 39.820820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.963896, 32.638813, 39.931541>,  <29.395304, 33.061417, 39.769398>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.963896, 32.638813, 39.931541> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971773, 33.011887, 40.075607>,  <29.976500, 33.235729, 40.162048>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.971773, 33.011887, 40.075607>,  <29.963896, 32.638813, 39.931541>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.971773, 33.011887, 40.075607> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072544, -0.357954, 0.930917,
		0.997171, -0.044463, 0.060610,
		0.019695, 0.932680, 0.360167,
		29.977682, 33.291691, 40.183659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.202621, 32.511955, 40.599934>,  <29.963896, 32.638813, 39.931541>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.202621, 32.511955, 40.599934> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.144798, 32.904640, 40.649494>,  <30.110104, 33.140251, 40.679230>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.144798, 32.904640, 40.649494>,  <30.202621, 32.511955, 40.599934>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.144798, 32.904640, 40.649494> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.022258, -0.128410, 0.991471,
		0.989245, 0.140570, 0.040414,
		-0.144560, 0.981708, 0.123901,
		30.101431, 33.199154, 40.686665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.718023, 32.713932, 41.071083>,  <30.202621, 32.511955, 40.599934>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.718023, 32.713932, 41.071083> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416094, 32.976227, 41.064724>,  <30.234936, 33.133602, 41.060909>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.416094, 32.976227, 41.064724>,  <30.718023, 32.713932, 41.071083>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416094, 32.976227, 41.064724> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094980, 0.133246, 0.986521,
		0.649015, 0.743140, -0.162859,
		-0.754824, 0.655735, -0.015896,
		30.189648, 33.172947, 41.059956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.007088, 33.264786, 41.425270>,  <30.718023, 32.713932, 41.071083>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.007088, 33.264786, 41.425270> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609325, 33.307022, 41.426533>,  <30.370668, 33.332363, 41.427288>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.609325, 33.307022, 41.426533>,  <31.007088, 33.264786, 41.425270>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.609325, 33.307022, 41.426533> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039453, 0.343551, 0.938305,
		0.097991, 0.933180, -0.345794,
		-0.994405, 0.105588, 0.003152,
		30.311005, 33.338699, 41.427479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.917513, 33.851627, 41.868309>,  <31.007088, 33.264786, 41.425270>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.917513, 33.851627, 41.868309> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.540279, 33.718719, 41.862774>,  <30.313940, 33.638977, 41.859451>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.540279, 33.718719, 41.862774>,  <30.917513, 33.851627, 41.868309>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540279, 33.718719, 41.862774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063255, 0.138368, 0.988359,
		-0.326485, 0.932980, -0.151510,
		-0.943084, -0.332268, -0.013841,
		30.257355, 33.619038, 41.858620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.463135, 34.331280, 42.152367>,  <30.917513, 33.851627, 41.868309>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.463135, 34.331280, 42.152367> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241959, 34.001343, 42.199509>,  <30.109253, 33.803379, 42.227795>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.241959, 34.001343, 42.199509>,  <30.463135, 34.331280, 42.152367>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.241959, 34.001343, 42.199509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142394, 0.232911, 0.962017,
		-0.820964, 0.515155, -0.246238,
		-0.552939, -0.824844, 0.117856,
		30.076077, 33.753891, 42.234867>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.904301, 34.502754, 42.572750>,  <30.463135, 34.331280, 42.152367>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.904301, 34.502754, 42.572750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898602, 34.104362, 42.608109>,  <29.895182, 33.865326, 42.629326>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.898602, 34.104362, 42.608109>,  <29.904301, 34.502754, 42.572750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.898602, 34.104362, 42.608109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320887, 0.088286, 0.942994,
		-0.947010, -0.014929, -0.320857,
		-0.014250, -0.995983, 0.088398,
		29.894327, 33.805569, 42.634628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.424034, 34.468452, 42.996880>,  <29.904301, 34.502754, 42.572750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.424034, 34.468452, 42.996880> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605413, 34.114193, 43.036884>,  <29.714241, 33.901638, 43.060886>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.605413, 34.114193, 43.036884>,  <29.424034, 34.468452, 42.996880>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.605413, 34.114193, 43.036884> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.295437, -0.043494, 0.954372,
		-0.840892, -0.462306, -0.281377,
		0.453450, -0.885653, 0.100008,
		29.741449, 33.848495, 43.066887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.914127, 33.997406, 43.282780>,  <29.424034, 34.468452, 42.996880>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.914127, 33.997406, 43.282780> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266434, 33.826122, 43.363663>,  <29.477818, 33.723351, 43.412193>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.266434, 33.826122, 43.363663>,  <28.914127, 33.997406, 43.282780>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.266434, 33.826122, 43.363663> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246592, -0.050186, 0.967819,
		-0.404282, -0.902285, -0.149795,
		0.880766, -0.428210, 0.202207,
		29.530663, 33.697659, 43.424324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.756100, 33.374496, 43.594582>,  <28.914127, 33.997406, 43.282780>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.756100, 33.374496, 43.594582> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124220, 33.475403, 43.714191>,  <29.345091, 33.535946, 43.785957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.124220, 33.475403, 43.714191>,  <28.756100, 33.374496, 43.594582>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.124220, 33.475403, 43.714191> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311745, 0.011084, 0.950101,
		0.236362, -0.967595, 0.088843,
		0.920298, 0.252264, 0.299023,
		29.400309, 33.551083, 43.803898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<40.159611, 35.741726, 45.002293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798225, 35.608849, 45.110657>,  <39.581394, 35.529121, 45.175674>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.798225, 35.608849, 45.110657>,  <40.159611, 35.741726, 45.002293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.798225, 35.608849, 45.110657> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.192344, 0.250643, 0.948779,
		-0.383081, 0.909300, -0.162552,
		-0.903467, -0.332193, 0.270914,
		39.527184, 35.509190, 45.191933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.988834, 36.266808, 45.549942>,  <40.159611, 35.741726, 45.002293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.988834, 36.266808, 45.549942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769058, 35.935982, 45.597416>,  <39.637192, 35.737488, 45.625900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.769058, 35.935982, 45.597416>,  <39.988834, 36.266808, 45.549942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.769058, 35.935982, 45.597416> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169980, 0.028438, 0.985037,
		-0.818062, 0.561391, 0.124959,
		-0.549438, -0.827062, 0.118689,
		39.604225, 35.687862, 45.633022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648987, 36.397121, 46.118443>,  <39.988834, 36.266808, 45.549942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648987, 36.397121, 46.118443> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642502, 35.997517, 46.101852>,  <39.638611, 35.757755, 46.091896>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.642502, 35.997517, 46.101852>,  <39.648987, 36.397121, 46.118443>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.642502, 35.997517, 46.101852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235498, -0.044133, 0.970872,
		-0.971740, 0.005971, 0.235980,
		-0.016212, -0.999008, -0.041480,
		39.637638, 35.697815, 46.089409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.250530, 36.134609, 46.670979>,  <39.648987, 36.397121, 46.118443>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.250530, 36.134609, 46.670979> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458912, 35.816219, 46.547668>,  <39.583942, 35.625187, 46.473682>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.458912, 35.816219, 46.547668>,  <39.250530, 36.134609, 46.670979>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458912, 35.816219, 46.547668> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299940, -0.167424, 0.939151,
		-0.799150, -0.581721, 0.151523,
		0.520955, -0.795971, -0.308279,
		39.615200, 35.577427, 46.455185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.211735, 35.564579, 47.228100>,  <39.250530, 36.134609, 46.670979>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.211735, 35.564579, 47.228100> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507652, 35.414364, 47.004787>,  <39.685204, 35.324234, 46.870800>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.507652, 35.414364, 47.004787>,  <39.211735, 35.564579, 47.228100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.507652, 35.414364, 47.004787> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474375, -0.297316, 0.828596,
		-0.477157, -0.877823, -0.041805,
		0.739790, -0.375539, -0.558284,
		39.729588, 35.301701, 46.837303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.286236, 34.885250, 47.444836>,  <39.211735, 35.564579, 47.228100>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.286236, 34.885250, 47.444836> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.639698, 35.002415, 47.298763>,  <39.851776, 35.072712, 47.211121>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.639698, 35.002415, 47.298763>,  <39.286236, 34.885250, 47.444836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.639698, 35.002415, 47.298763> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439216, -0.248783, 0.863248,
		0.162003, -0.923207, -0.348489,
		0.883654, 0.292911, -0.365184,
		39.904793, 35.090286, 47.189209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.716358, 34.633602, 47.919983>,  <39.286236, 34.885250, 47.444836>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.716358, 34.633602, 47.919983> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986694, 34.868145, 47.741352>,  <40.148895, 35.008869, 47.634174>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.986694, 34.868145, 47.741352>,  <39.716358, 34.633602, 47.919983>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.986694, 34.868145, 47.741352> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559740, -0.014120, 0.828548,
		0.479516, -0.809933, -0.337748,
		0.675837, 0.586353, -0.446582,
		40.189445, 35.044052, 47.607376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.310677, 34.330460, 48.042656>,  <39.716358, 34.633602, 47.919983>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.310677, 34.330460, 48.042656> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.419601, 34.703442, 47.947674>,  <40.484955, 34.927231, 47.890686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.419601, 34.703442, 47.947674>,  <40.310677, 34.330460, 48.042656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.419601, 34.703442, 47.947674> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.538655, 0.056758, 0.840613,
		0.797307, -0.356811, -0.486813,
		0.272310, 0.932451, -0.237451,
		40.501293, 34.983177, 47.876438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109146, 34.366352, 48.032215>,  <40.310677, 34.330460, 48.042656>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109146, 34.366352, 48.032215> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.960114, 34.727299, 48.118862>,  <40.870693, 34.943867, 48.170849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.960114, 34.727299, 48.118862>,  <41.109146, 34.366352, 48.032215>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.960114, 34.727299, 48.118862> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580944, 0.044775, 0.812711,
		0.723664, 0.428639, -0.540906,
		-0.372579, 0.902366, 0.216613,
		40.848339, 34.998009, 48.183846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.626766, 34.728069, 48.432911>,  <41.109146, 34.366352, 48.032215>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.626766, 34.728069, 48.432911> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.311661, 34.958584, 48.519936>,  <41.122597, 35.096893, 48.572151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.311661, 34.958584, 48.519936>,  <41.626766, 34.728069, 48.432911>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.311661, 34.958584, 48.519936> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402055, 0.213447, 0.890389,
		0.466676, 0.788885, -0.399842,
		-0.787760, 0.576282, 0.217564,
		41.075333, 35.131470, 48.585205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.869198, 35.299671, 48.811329>,  <41.626766, 34.728069, 48.432911>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.869198, 35.299671, 48.811329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.480114, 35.328815, 48.899445>,  <41.246662, 35.346302, 48.952312>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.480114, 35.328815, 48.899445>,  <41.869198, 35.299671, 48.811329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.480114, 35.328815, 48.899445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231725, 0.256974, 0.938226,
		0.011755, 0.963668, -0.266845,
		-0.972710, 0.072864, 0.220285,
		41.188301, 35.350674, 48.965530>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.849228, 35.907688, 49.071777>,  <41.869198, 35.299671, 48.811329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.849228, 35.907688, 49.071777> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.530899, 35.716873, 49.220963>,  <41.339901, 35.602386, 49.310474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.530899, 35.716873, 49.220963>,  <41.849228, 35.907688, 49.071777>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.530899, 35.716873, 49.220963> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163188, 0.424176, 0.890755,
		-0.583122, 0.769748, -0.259723,
		-0.795825, -0.477035, 0.372960,
		41.292152, 35.573761, 49.332851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.216400, 36.316559, 49.228397>,  <41.849228, 35.907688, 49.071777>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.216400, 36.316559, 49.228397> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.268326, 36.002476, 49.470585>,  <41.299480, 35.814026, 49.615898>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.268326, 36.002476, 49.470585>,  <41.216400, 36.316559, 49.228397>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.268326, 36.002476, 49.470585> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135786, 0.618961, 0.773595,
		-0.982197, -0.018209, 0.186970,
		0.129814, -0.785211, 0.605469,
		41.307270, 35.766914, 49.652225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.613247, 36.134815, 49.775734>,  <41.216400, 36.316559, 49.228397>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.613247, 36.134815, 49.775734> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.002300, 36.075829, 49.847561>,  <41.235733, 36.040436, 49.890656>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.002300, 36.075829, 49.847561>,  <40.613247, 36.134815, 49.775734>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.002300, 36.075829, 49.847561> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046034, 0.635187, 0.770985,
		-0.227749, -0.758151, 0.611014,
		0.972631, -0.147463, 0.179564,
		41.294090, 36.031590, 49.901428>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227242, 36.768429, 50.168880>,  <40.613247, 36.134815, 49.775734>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227242, 36.768429, 50.168880> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018906, 37.105587, 50.222923>,  <39.893906, 37.307880, 50.255348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.018906, 37.105587, 50.222923>,  <40.227242, 36.768429, 50.168880>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.018906, 37.105587, 50.222923> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.219224, 0.020897, -0.975451,
		-0.825028, -0.537670, 0.173899,
		-0.520836, 0.842897, 0.135110,
		39.862656, 37.358456, 50.263458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.581684, 36.644325, 49.853470>,  <40.227242, 36.768429, 50.168880>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.581684, 36.644325, 49.853470> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.647182, 37.038326, 49.875244>,  <39.686481, 37.274727, 49.888309>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.647182, 37.038326, 49.875244>,  <39.581684, 36.644325, 49.853470>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.647182, 37.038326, 49.875244> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245557, 0.094136, -0.964801,
		-0.955453, 0.144614, 0.257287,
		0.163743, 0.985000, 0.054431,
		39.696304, 37.333828, 49.891575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.911644, 37.084896, 49.558189>,  <39.581684, 36.644325, 49.853470>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.911644, 37.084896, 49.558189> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223953, 37.334671, 49.566929>,  <39.411339, 37.484535, 49.572170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.223953, 37.334671, 49.566929>,  <38.911644, 37.084896, 49.558189>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.223953, 37.334671, 49.566929> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061426, 0.111505, -0.991864,
		-0.621790, 0.773077, 0.125416,
		0.780771, 0.624435, 0.021845,
		39.458183, 37.522003, 49.573483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787800, 37.476242, 48.962944>,  <38.911644, 37.084896, 49.558189>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787800, 37.476242, 48.962944> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161194, 37.594963, 49.043457>,  <39.385231, 37.666195, 49.091766>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.161194, 37.594963, 49.043457>,  <38.787800, 37.476242, 48.962944>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.161194, 37.594963, 49.043457> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.111086, 0.294353, -0.949219,
		-0.340984, 0.908439, 0.241802,
		0.933483, 0.296807, 0.201285,
		39.441238, 37.684006, 49.103844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784283, 38.244141, 48.810669>,  <38.787800, 37.476242, 48.962944>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784283, 38.244141, 48.810669> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150894, 38.085197, 48.792400>,  <39.370861, 37.989830, 48.781441>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.150894, 38.085197, 48.792400>,  <38.784283, 38.244141, 48.810669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150894, 38.085197, 48.792400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104743, 0.348641, -0.931385,
		0.386020, 0.848854, 0.361159,
		0.916525, -0.397362, -0.045671,
		39.425850, 37.965988, 48.778698>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.165276, 38.720165, 48.452881>,  <38.784283, 38.244141, 48.810669>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.165276, 38.720165, 48.452881> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429508, 38.421764, 48.419147>,  <39.588047, 38.242725, 48.398907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.429508, 38.421764, 48.419147>,  <39.165276, 38.720165, 48.452881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.429508, 38.421764, 48.419147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184251, 0.269993, -0.945069,
		0.727793, 0.608757, 0.315804,
		0.660583, -0.746001, -0.084335,
		39.627682, 38.197964, 48.393848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737705, 39.024166, 48.065277>,  <39.165276, 38.720165, 48.452881>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737705, 39.024166, 48.065277> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.751511, 38.626205, 48.027359>,  <39.759796, 38.387428, 48.004608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.751511, 38.626205, 48.027359>,  <39.737705, 39.024166, 48.065277>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.751511, 38.626205, 48.027359> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285793, 0.100720, -0.952984,
		0.957669, 0.005802, 0.287812,
		0.034517, -0.994898, -0.094798,
		39.761868, 38.327736, 47.998920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274406, 38.992088, 47.597317>,  <39.737705, 39.024166, 48.065277>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274406, 38.992088, 47.597317> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082413, 38.641273, 47.605484>,  <39.967216, 38.430782, 47.610386>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.082413, 38.641273, 47.605484>,  <40.274406, 38.992088, 47.597317>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.082413, 38.641273, 47.605484> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150151, -0.105066, -0.983064,
		0.864331, -0.468790, 0.182118,
		-0.479985, -0.877039, 0.020422,
		39.938416, 38.378162, 47.611610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.695709, 38.504654, 47.209370>,  <40.274406, 38.992088, 47.597317>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.695709, 38.504654, 47.209370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.311207, 38.395287, 47.223408>,  <40.080505, 38.329666, 47.231831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.311207, 38.395287, 47.223408>,  <40.695709, 38.504654, 47.209370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.311207, 38.395287, 47.223408> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.028803, -0.027004, -0.999220,
		0.274152, -0.961516, 0.018082,
		-0.961255, -0.273417, 0.035098,
		40.022831, 38.313263, 47.233936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.596409, 38.192127, 46.629826>,  <40.695709, 38.504654, 47.209370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.596409, 38.192127, 46.629826> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.204506, 38.185604, 46.709625>,  <39.969364, 38.181690, 46.757507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.204506, 38.185604, 46.709625>,  <40.596409, 38.192127, 46.629826>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204506, 38.185604, 46.709625> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196741, -0.105145, -0.974801,
		0.036875, -0.994323, 0.099808,
		-0.979762, -0.016309, 0.199501,
		39.910576, 38.180714, 46.769474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.279961, 37.682270, 46.285110>,  <40.596409, 38.192127, 46.629826>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.279961, 37.682270, 46.285110> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976727, 37.936245, 46.344650>,  <39.794785, 38.088631, 46.380375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.976727, 37.936245, 46.344650>,  <40.279961, 37.682270, 46.285110>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.976727, 37.936245, 46.344650> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229686, -0.046325, -0.972162,
		-0.610366, -0.771174, 0.180955,
		-0.758088, 0.634937, 0.148852,
		39.749298, 38.126724, 46.389305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.699951, 37.404728, 45.926487>,  <40.279961, 37.682270, 46.285110>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.699951, 37.404728, 45.926487> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606022, 37.792015, 45.960926>,  <39.549664, 38.024387, 45.981590>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.606022, 37.792015, 45.960926>,  <39.699951, 37.404728, 45.926487>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.606022, 37.792015, 45.960926> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297009, 0.012869, -0.954788,
		-0.925550, -0.249779, 0.284547,
		-0.234824, 0.968217, 0.086098,
		39.535576, 38.082481, 45.986755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.042007, 37.530655, 45.457893>,  <39.699951, 37.404728, 45.926487>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.042007, 37.530655, 45.457893> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228889, 37.874081, 45.542358>,  <39.341019, 38.080135, 45.593037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.228889, 37.874081, 45.542358>,  <39.042007, 37.530655, 45.457893>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.228889, 37.874081, 45.542358> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149448, 0.312080, -0.938228,
		-0.871425, 0.406790, 0.274117,
		0.467208, 0.858562, 0.211160,
		39.369053, 38.131649, 45.605705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505123, 38.033466, 45.290913>,  <39.042007, 37.530655, 45.457893>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505123, 38.033466, 45.290913> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867088, 38.200611, 45.258587>,  <39.084267, 38.300896, 45.239193>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.867088, 38.200611, 45.258587>,  <38.505123, 38.033466, 45.290913>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.867088, 38.200611, 45.258587> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.173800, 0.189484, -0.966379,
		-0.388496, 0.888533, 0.244090,
		0.904911, 0.417857, -0.080813,
		39.138561, 38.325970, 45.234344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.763351, 38.211689, 45.516148>,  <38.505123, 38.033466, 45.290913>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.763351, 38.211689, 45.516148> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392776, 38.061314, 45.523972>,  <37.170433, 37.971088, 45.528667>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.392776, 38.061314, 45.523972>,  <37.763351, 38.211689, 45.516148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.392776, 38.061314, 45.523972> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033095, -0.029572, 0.999015,
		-0.374991, 0.926172, 0.039839,
		-0.926437, -0.375940, 0.019562,
		37.114845, 37.948532, 45.529839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.174877, 38.526081, 46.047092>,  <37.763351, 38.211689, 45.516148>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.174877, 38.526081, 46.047092> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102242, 38.138111, 45.982258>,  <37.058662, 37.905331, 45.943356>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.102242, 38.138111, 45.982258>,  <37.174877, 38.526081, 46.047092>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.102242, 38.138111, 45.982258> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088987, -0.147942, 0.984984,
		-0.979341, 0.193282, -0.059447,
		-0.181585, -0.969925, -0.162085,
		37.047768, 37.847134, 45.933632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.673496, 38.443214, 46.507931>,  <37.174877, 38.526081, 46.047092>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.673496, 38.443214, 46.507931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800373, 38.072567, 46.427166>,  <36.876499, 37.850178, 46.378708>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.800373, 38.072567, 46.427166>,  <36.673496, 38.443214, 46.507931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.800373, 38.072567, 46.427166> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269917, -0.292312, 0.917441,
		-0.909138, -0.236508, -0.342829,
		0.317195, -0.926616, -0.201914,
		36.895531, 37.794582, 46.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.244408, 38.033104, 46.860950>,  <36.673496, 38.443214, 46.507931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.244408, 38.033104, 46.860950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536892, 37.765388, 46.808201>,  <36.712383, 37.604759, 46.776550>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.536892, 37.765388, 46.808201>,  <36.244408, 38.033104, 46.860950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536892, 37.765388, 46.808201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086914, -0.283150, 0.955130,
		-0.676593, -0.686938, -0.265212,
		0.731210, -0.669285, -0.131873,
		36.756256, 37.564602, 46.768639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.966125, 37.369923, 47.130051>,  <36.244408, 38.033104, 46.860950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.966125, 37.369923, 47.130051> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365410, 37.356998, 47.150150>,  <36.604980, 37.349243, 47.162209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.365410, 37.356998, 47.150150>,  <35.966125, 37.369923, 47.130051>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.365410, 37.356998, 47.150150> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059733, -0.532072, 0.844589,
		-0.000552, -0.846082, -0.533052,
		0.998214, -0.032307, 0.050245,
		36.664875, 37.347305, 47.165222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.072289, 36.769012, 47.484966>,  <35.966125, 37.369923, 47.130051>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.072289, 36.769012, 47.484966> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429241, 36.946632, 47.517143>,  <36.643414, 37.053204, 47.536449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.429241, 36.946632, 47.517143>,  <36.072289, 36.769012, 47.484966>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.429241, 36.946632, 47.517143> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031698, -0.239486, 0.970382,
		0.450160, -0.863405, -0.227789,
		0.892385, 0.444048, 0.080439,
		36.696957, 37.079845, 47.541275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.443130, 36.307335, 47.852348>,  <36.072289, 36.769012, 47.484966>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.443130, 36.307335, 47.852348> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629745, 36.659821, 47.882812>,  <36.741714, 36.871311, 47.901093>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.629745, 36.659821, 47.882812>,  <36.443130, 36.307335, 47.852348>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.629745, 36.659821, 47.882812> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184145, -0.180988, 0.966092,
		0.865119, -0.436696, -0.246710,
		0.466540, 0.881215, 0.076160,
		36.769707, 36.924187, 47.905659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.471706, 35.581043, 47.898613>,  <36.443130, 36.307335, 47.852348>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.471706, 35.581043, 47.898613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095345, 35.468140, 47.973476>,  <35.869526, 35.400398, 48.018394>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.095345, 35.468140, 47.973476>,  <36.471706, 35.581043, 47.898613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.095345, 35.468140, 47.973476> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.196660, 0.005449, -0.980457,
		0.275724, -0.959323, -0.060636,
		-0.940905, -0.282260, 0.187158,
		35.813072, 35.383461, 48.029625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.279652, 35.033203, 47.511623>,  <36.471706, 35.581043, 47.898613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.279652, 35.033203, 47.511623> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895271, 35.125698, 47.572422>,  <35.664642, 35.181194, 47.608902>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.895271, 35.125698, 47.572422>,  <36.279652, 35.033203, 47.511623>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.895271, 35.125698, 47.572422> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.157571, -0.005707, -0.987491,
		-0.227476, -0.972881, 0.041920,
		-0.960950, 0.231236, 0.152000,
		35.606987, 35.195068, 47.618023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922565, 34.489471, 47.205460>,  <36.279652, 35.033203, 47.511623>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922565, 34.489471, 47.205460> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680355, 34.807800, 47.205742>,  <35.535027, 34.998798, 47.205910>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.680355, 34.807800, 47.205742>,  <35.922565, 34.489471, 47.205460>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.680355, 34.807800, 47.205742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232871, -0.176345, -0.956386,
		-0.760989, -0.579284, 0.292106,
		-0.605530, 0.795822, 0.000702,
		35.498695, 35.046547, 47.205952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.443146, 34.264393, 46.721405>,  <35.922565, 34.489471, 47.205460>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.443146, 34.264393, 46.721405> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384819, 34.656796, 46.772579>,  <35.349823, 34.892239, 46.803284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.384819, 34.656796, 46.772579>,  <35.443146, 34.264393, 46.721405>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.384819, 34.656796, 46.772579> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.415906, 0.056548, -0.907648,
		-0.897642, -0.185554, 0.399761,
		-0.145812, 0.981006, 0.127933,
		35.341076, 34.951096, 46.810959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.761566, 34.501122, 46.570183>,  <35.443146, 34.264393, 46.721405>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.761566, 34.501122, 46.570183> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989391, 34.822487, 46.500748>,  <35.126087, 35.015305, 46.459087>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.989391, 34.822487, 46.500748>,  <34.761566, 34.501122, 46.570183>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.989391, 34.822487, 46.500748> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374804, 0.065904, -0.924759,
		-0.731521, 0.591767, 0.338658,
		0.569561, 0.803410, -0.173586,
		35.160259, 35.063511, 46.448673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.325207, 34.780697, 46.240448>,  <34.761566, 34.501122, 46.570183>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.325207, 34.780697, 46.240448> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670498, 34.963566, 46.154816>,  <34.877674, 35.073288, 46.103436>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.670498, 34.963566, 46.154816>,  <34.325207, 34.780697, 46.240448>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670498, 34.963566, 46.154816> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.299820, 0.123121, -0.946018,
		-0.406136, 0.880814, 0.243351,
		0.863228, 0.457173, -0.214082,
		34.929466, 35.100719, 46.090591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.211628, 35.195385, 45.687401>,  <34.325207, 34.780697, 46.240448>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.211628, 35.195385, 45.687401> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608227, 35.244911, 45.671413>,  <34.846188, 35.274628, 45.661819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.608227, 35.244911, 45.671413>,  <34.211628, 35.195385, 45.687401>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.608227, 35.244911, 45.671413> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081311, 0.349848, -0.933271,
		-0.101570, 0.928588, 0.356942,
		0.991500, 0.123815, -0.039970,
		34.905678, 35.282055, 45.659424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<39.245216, 32.943100, 50.092369> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.294147, 33.313641, 49.949871>,  <39.323505, 33.535965, 49.864372>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.294147, 33.313641, 49.949871>,  <39.245216, 32.943100, 50.092369>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.294147, 33.313641, 49.949871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051203, -0.364351, -0.929853,
		-0.991168, 0.095510, -0.092004,
		0.122332, 0.926351, -0.356243,
		39.330849, 33.591545, 49.842999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.664082, 33.176571, 49.784672>,  <39.245216, 32.943100, 50.092369>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.664082, 33.176571, 49.784672> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.999374, 33.336361, 49.636192>,  <39.200550, 33.432236, 49.547104>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.999374, 33.336361, 49.636192>,  <38.664082, 33.176571, 49.784672>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999374, 33.336361, 49.636192> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178461, -0.442259, -0.878953,
		-0.515287, 0.803009, -0.299424,
		0.838230, 0.399478, -0.371197,
		39.250843, 33.456203, 49.524834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492622, 33.589531, 49.188629>,  <38.664082, 33.176571, 49.784672>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492622, 33.589531, 49.188629> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.870815, 33.463638, 49.155144>,  <39.097733, 33.388103, 49.135052>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.870815, 33.463638, 49.155144>,  <38.492622, 33.589531, 49.188629>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.870815, 33.463638, 49.155144> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224761, -0.444558, -0.867094,
		0.235683, 0.838638, -0.491060,
		0.945482, -0.314731, -0.083718,
		39.154461, 33.369221, 49.130028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.755669, 33.875835, 48.473667>,  <38.492622, 33.589531, 49.188629>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.755669, 33.875835, 48.473667> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994862, 33.571468, 48.574398>,  <39.138378, 33.388847, 48.634838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.994862, 33.571468, 48.574398>,  <38.755669, 33.875835, 48.473667>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.994862, 33.571468, 48.574398> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228166, -0.462801, -0.856595,
		0.768348, 0.454769, -0.450363,
		0.597981, -0.760921, 0.251829,
		39.174255, 33.343193, 48.649948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.155159, 33.840546, 47.854446>,  <38.755669, 33.875835, 48.473667>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.155159, 33.840546, 47.854446> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.199020, 33.500469, 48.060417>,  <39.225338, 33.296425, 48.183998>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.199020, 33.500469, 48.060417>,  <39.155159, 33.840546, 47.854446>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.199020, 33.500469, 48.060417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131026, -0.525893, -0.840398,
		0.985296, 0.024684, -0.169063,
		0.109653, -0.850192, 0.514926,
		39.231915, 33.245411, 48.214893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.554283, 33.371822, 47.462864>,  <39.155159, 33.840546, 47.854446>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.554283, 33.371822, 47.462864> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.380508, 33.115219, 47.715763>,  <39.276245, 32.961258, 47.867500>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.380508, 33.115219, 47.715763>,  <39.554283, 33.371822, 47.462864>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.380508, 33.115219, 47.715763> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213495, -0.608600, -0.764216,
		0.875034, -0.466985, 0.127440,
		-0.434437, -0.641507, 0.632244,
		39.250175, 32.922768, 47.905437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.947205, 32.731709, 47.305309>,  <39.554283, 33.371822, 47.462864>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.947205, 32.731709, 47.305309> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.589622, 32.673950, 47.475014>,  <39.375072, 32.639294, 47.576836>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.589622, 32.673950, 47.475014>,  <39.947205, 32.731709, 47.305309>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.589622, 32.673950, 47.475014> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224278, -0.675449, -0.702473,
		0.388001, -0.723131, 0.571434,
		-0.893954, -0.144400, 0.424258,
		39.321438, 32.630630, 47.602291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.879295, 32.038933, 47.333775>,  <39.947205, 32.731709, 47.305309>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.879295, 32.038933, 47.333775> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.505505, 32.178642, 47.361382>,  <39.281231, 32.262470, 47.377945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.505505, 32.178642, 47.361382>,  <39.879295, 32.038933, 47.333775>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.505505, 32.178642, 47.361382> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300906, -0.671191, -0.677464,
		-0.190296, -0.653842, 0.732310,
		-0.934475, 0.349275, 0.069020,
		39.225163, 32.283424, 47.382088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.367550, 31.432722, 47.496628>,  <39.879295, 32.038933, 47.333775>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.367550, 31.432722, 47.496628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.162685, 31.733809, 47.331165>,  <39.039768, 31.914459, 47.231888>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<39.162685, 31.733809, 47.331165>,  <39.367550, 31.432722, 47.496628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<39.162685, 31.733809, 47.331165> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347809, -0.622122, -0.701422,
		-0.785315, -0.215368, 0.580428,
		-0.512161, 0.752715, -0.413655,
		39.009037, 31.959623, 47.207069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.886631, 31.075525, 47.140610>,  <39.367550, 31.432722, 47.496628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.886631, 31.075525, 47.140610> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.852116, 31.440529, 46.980671>,  <38.831406, 31.659531, 46.884708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.852116, 31.440529, 46.980671>,  <38.886631, 31.075525, 47.140610>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.852116, 31.440529, 46.980671> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160929, -0.408840, -0.898305,
		-0.983187, -0.013166, 0.182127,
		-0.086288, 0.912511, -0.399848,
		38.826229, 31.714283, 46.860718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.216270, 31.135164, 46.789593>,  <38.886631, 31.075525, 47.140610>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.216270, 31.135164, 46.789593> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.461971, 31.403900, 46.624031>,  <38.609394, 31.565142, 46.524693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.461971, 31.403900, 46.624031>,  <38.216270, 31.135164, 46.789593>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461971, 31.403900, 46.624031> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265291, -0.318177, -0.910156,
		-0.743176, 0.668875, -0.017209,
		0.614256, 0.671840, -0.413908,
		38.646248, 31.605452, 46.499859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916325, 31.250069, 46.198872>,  <38.216270, 31.135164, 46.789593>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.916325, 31.250069, 46.198872> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261642, 31.442524, 46.137909>,  <38.468834, 31.557997, 46.101330>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.261642, 31.442524, 46.137909>,  <37.916325, 31.250069, 46.198872>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.261642, 31.442524, 46.137909> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083146, -0.162274, -0.983236,
		-0.497807, 0.861494, -0.100085,
		0.863293, 0.481140, -0.152411,
		38.520630, 31.586866, 46.092186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159611, 31.543018, 45.837151>,  <37.916325, 31.250069, 46.198872>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159611, 31.543018, 45.837151> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847507, 31.301817, 45.903587>,  <36.660244, 31.157097, 45.943451>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.847507, 31.301817, 45.903587>,  <37.159611, 31.543018, 45.837151>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.847507, 31.301817, 45.903587> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.003002, 0.261937, 0.965080,
		-0.625452, 0.753509, -0.202568,
		-0.780257, -0.603003, 0.166090,
		36.613430, 31.120916, 45.953415>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.055832, 31.827415, 46.475479>,  <37.159611, 31.543018, 45.837151>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.055832, 31.827415, 46.475479> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797688, 31.522461, 46.456390>,  <36.642799, 31.339489, 46.444939>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.797688, 31.522461, 46.456390>,  <37.055832, 31.827415, 46.475479>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.797688, 31.522461, 46.456390> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132498, 0.050196, 0.989911,
		-0.752298, 0.645174, -0.133409,
		-0.645362, -0.762385, -0.047722,
		36.604080, 31.293745, 46.442074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.413410, 32.016209, 46.753185>,  <37.055832, 31.827415, 46.475479>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.413410, 32.016209, 46.753185> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.463711, 31.623487, 46.810112>,  <36.493893, 31.387856, 46.844269>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.463711, 31.623487, 46.810112>,  <36.413410, 32.016209, 46.753185>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.463711, 31.623487, 46.810112> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174882, 0.119271, 0.977338,
		-0.976526, -0.147790, -0.156701,
		0.125751, -0.981801, 0.142317,
		36.501434, 31.328947, 46.852806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.843227, 31.753901, 47.154625>,  <36.413410, 32.016209, 46.753185>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.843227, 31.753901, 47.154625> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.142479, 31.491301, 47.193214>,  <36.322029, 31.333740, 47.216366>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.142479, 31.491301, 47.193214>,  <35.843227, 31.753901, 47.154625>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142479, 31.491301, 47.193214> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168297, -0.047103, 0.984610,
		-0.641854, -0.752853, -0.145727,
		0.748131, -0.656501, 0.096469,
		36.366917, 31.294350, 47.222157>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589680, 31.337811, 47.689835>,  <35.843227, 31.753901, 47.154625>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589680, 31.337811, 47.689835> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978703, 31.245041, 47.682335>,  <36.212116, 31.189379, 47.677834>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.978703, 31.245041, 47.682335>,  <35.589680, 31.337811, 47.689835>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.978703, 31.245041, 47.682335> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.011920, -0.030808, 0.999454,
		-0.232377, -0.972246, -0.027198,
		0.972553, -0.231926, -0.018749,
		36.270470, 31.175463, 47.676712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.685230, 30.804409, 48.154343>,  <35.589680, 31.337811, 47.689835>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.685230, 30.804409, 48.154343> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060059, 30.938179, 48.114243>,  <36.284958, 31.018442, 48.090183>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.060059, 30.938179, 48.114243>,  <35.685230, 30.804409, 48.154343>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060059, 30.938179, 48.114243> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069759, 0.101995, 0.992336,
		0.342089, -0.936886, 0.072248,
		0.937074, 0.334427, -0.100248,
		36.341183, 31.038507, 48.084167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.089451, 30.418787, 48.614388>,  <35.685230, 30.804409, 48.154343>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.089451, 30.418787, 48.614388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259201, 30.774868, 48.548122>,  <36.361050, 30.988516, 48.508362>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.259201, 30.774868, 48.548122>,  <36.089451, 30.418787, 48.614388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.259201, 30.774868, 48.548122> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103072, 0.134278, 0.985569,
		0.899600, -0.435328, -0.034771,
		0.424376, 0.890202, -0.165667,
		36.386513, 31.041929, 48.498421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.551155, 30.449196, 49.152557>,  <36.089451, 30.418787, 48.614388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.551155, 30.449196, 49.152557> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536575, 30.828320, 49.025856>,  <36.527828, 31.055794, 48.949837>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.536575, 30.828320, 49.025856>,  <36.551155, 30.449196, 49.152557>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.536575, 30.828320, 49.025856> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159303, 0.307398, 0.938152,
		0.986557, 0.084650, 0.139786,
		-0.036445, 0.947809, -0.316751,
		36.525642, 31.112661, 48.930832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.021431, 30.831959, 49.595112>,  <36.551155, 30.449196, 49.152557>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.021431, 30.831959, 49.595112> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751122, 31.087275, 49.447639>,  <36.588936, 31.240463, 49.359158>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.751122, 31.087275, 49.447639>,  <37.021431, 30.831959, 49.595112>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751122, 31.087275, 49.447639> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008308, 0.506727, 0.862066,
		0.737066, 0.579495, -0.347734,
		-0.675769, 0.638289, -0.368677,
		36.548389, 31.278761, 49.337036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.322094, 31.496120, 49.733070>,  <37.021431, 30.831959, 49.595112>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.322094, 31.496120, 49.733070> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.931976, 31.552771, 49.665249>,  <36.697906, 31.586761, 49.624554>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.931976, 31.552771, 49.665249>,  <37.322094, 31.496120, 49.733070>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.931976, 31.552771, 49.665249> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066076, 0.545358, 0.835595,
		0.210811, 0.826152, -0.522525,
		-0.975291, 0.141626, -0.169556,
		36.639389, 31.595259, 49.614384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287327, 32.195480, 49.568726>,  <37.322094, 31.496120, 49.733070>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287327, 32.195480, 49.568726> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.919456, 32.100945, 49.694164>,  <36.698734, 32.044224, 49.769428>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.919456, 32.100945, 49.694164>,  <37.287327, 32.195480, 49.568726>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.919456, 32.100945, 49.694164> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008453, 0.786498, 0.617535,
		-0.392589, 0.570582, -0.721325,
		-0.919675, -0.236340, 0.313594,
		36.643555, 32.030041, 49.788242>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.030811, 32.790516, 49.793648>,  <37.287327, 32.195480, 49.568726>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.030811, 32.790516, 49.793648> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.730762, 32.565708, 49.933052>,  <36.550735, 32.430824, 50.016693>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.730762, 32.565708, 49.933052>,  <37.030811, 32.790516, 49.793648>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.730762, 32.565708, 49.933052> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300394, 0.759076, 0.577553,
		-0.589141, 0.328542, -0.738223,
		-0.750118, -0.562017, 0.348511,
		36.505726, 32.397102, 50.037605>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.359459, 33.113018, 49.728390>,  <37.030811, 32.790516, 49.793648>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.359459, 33.113018, 49.728390> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330616, 32.852989, 50.030968>,  <36.313309, 32.696972, 50.212513>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.330616, 32.852989, 50.030968>,  <36.359459, 33.113018, 49.728390>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.330616, 32.852989, 50.030968> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.231672, 0.748591, 0.621241,
		-0.970118, -0.130449, -0.204585,
		-0.072110, -0.650073, 0.756442,
		36.308983, 32.657967, 50.257900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.820755, 33.387642, 50.176437>,  <36.359459, 33.113018, 49.728390>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.820755, 33.387642, 50.176437> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.991753, 33.113754, 50.412540>,  <36.094353, 32.949421, 50.554203>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.991753, 33.113754, 50.412540>,  <35.820755, 33.387642, 50.176437>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.991753, 33.113754, 50.412540> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077795, 0.622643, 0.778630,
		-0.900663, -0.378782, 0.212910,
		0.427498, -0.684719, 0.590258,
		36.120003, 32.908337, 50.589619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.368313, 33.901249, 50.601357>,  <35.820755, 33.387642, 50.176437>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.368313, 33.901249, 50.601357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535496, 34.259754, 50.660725>,  <35.635807, 34.474857, 50.696346>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.535496, 34.259754, 50.660725>,  <35.368313, 33.901249, 50.601357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.535496, 34.259754, 50.660725> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319699, 0.298034, -0.899427,
		-0.850356, 0.328470, 0.411098,
		0.417956, 0.896261, 0.148424,
		35.660881, 34.528633, 50.705254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.943371, 34.248627, 50.165352>,  <35.368313, 33.901249, 50.601357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.943371, 34.248627, 50.165352> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.212170, 34.521618, 50.280346>,  <35.373447, 34.685413, 50.349342>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.212170, 34.521618, 50.280346>,  <34.943371, 34.248627, 50.165352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.212170, 34.521618, 50.280346> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085022, 0.456738, -0.885529,
		-0.735658, 0.570629, 0.364952,
		0.671996, 0.682475, 0.287487,
		35.413769, 34.726360, 50.366592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.613453, 34.940678, 50.044765>,  <34.943371, 34.248627, 50.165352>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.613453, 34.940678, 50.044765> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010540, 34.978184, 50.075008>,  <35.248795, 35.000687, 50.093155>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.010540, 34.978184, 50.075008>,  <34.613453, 34.940678, 50.044765>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010540, 34.978184, 50.075008> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022995, 0.468588, -0.883118,
		-0.118234, 0.878426, 0.463020,
		0.992719, 0.093768, 0.075603,
		35.308357, 35.006313, 50.097691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.745319, 35.648655, 49.847530>,  <34.613453, 34.940678, 50.044765>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.745319, 35.648655, 49.847530> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.069653, 35.420559, 49.794807>,  <35.264252, 35.283703, 49.763172>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.069653, 35.420559, 49.794807>,  <34.745319, 35.648655, 49.847530>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.069653, 35.420559, 49.794807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062267, 0.307974, -0.949355,
		0.581953, 0.761563, 0.285223,
		0.810835, -0.570240, -0.131806,
		35.312904, 35.249489, 49.755264>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.125957, 35.924042, 49.224804>,  <34.745319, 35.648655, 49.847530>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.125957, 35.924042, 49.224804> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347458, 35.591312, 49.239914>,  <35.480358, 35.391674, 49.248981>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.347458, 35.591312, 49.239914>,  <35.125957, 35.924042, 49.224804>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.347458, 35.591312, 49.239914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158308, 0.060628, -0.985527,
		0.817494, 0.551719, 0.165257,
		0.553753, -0.831823, 0.037779,
		35.513584, 35.341766, 49.251247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.676155, 36.088097, 48.816936>,  <35.125957, 35.924042, 49.224804>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.676155, 36.088097, 48.816936> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652634, 35.689495, 48.840698>,  <35.638523, 35.450336, 48.854954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.652634, 35.689495, 48.840698>,  <35.676155, 36.088097, 48.816936>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.652634, 35.689495, 48.840698> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224300, -0.071174, -0.971918,
		0.972745, -0.043825, 0.227700,
		-0.058800, -0.996501, 0.059405,
		35.634995, 35.390545, 48.858521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.347710, 35.801895, 48.552582>,  <35.676155, 36.088097, 48.816936>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.347710, 35.801895, 48.552582> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034119, 35.557125, 48.510769>,  <35.845963, 35.410263, 48.485680>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.034119, 35.557125, 48.510769>,  <36.347710, 35.801895, 48.552582>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.034119, 35.557125, 48.510769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010407, 0.181321, -0.983369,
		0.620703, -0.769851, -0.148520,
		-0.783977, -0.611925, -0.104535,
		35.798927, 35.373547, 48.479408>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.061172, 36.098644, 48.333740>,  <36.347710, 35.801895, 48.552582>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.061172, 36.098644, 48.333740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043076, 36.498226, 48.336403>,  <37.032215, 36.737976, 48.338001>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.043076, 36.498226, 48.336403>,  <37.061172, 36.098644, 48.333740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.043076, 36.498226, 48.336403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143957, -0.000071, 0.989584,
		0.988549, 0.045731, -0.143803,
		-0.045244, 0.998954, 0.006654,
		37.029503, 36.797913, 48.338398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.631218, 36.401814, 48.757225>,  <37.061172, 36.098644, 48.333740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.631218, 36.401814, 48.757225> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.366432, 36.699844, 48.724567>,  <37.207561, 36.878662, 48.704975>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.366432, 36.699844, 48.724567>,  <37.631218, 36.401814, 48.757225>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.366432, 36.699844, 48.724567> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179520, 0.263352, 0.947849,
		0.727720, 0.612786, -0.308085,
		-0.661964, 0.745077, -0.081639,
		37.167843, 36.923367, 48.700077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.006130, 36.967667, 49.027870>,  <37.631218, 36.401814, 48.757225>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.006130, 36.967667, 49.027870> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.613365, 37.039410, 49.052132>,  <37.377705, 37.082455, 49.066689>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.613365, 37.039410, 49.052132>,  <38.006130, 36.967667, 49.027870>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.613365, 37.039410, 49.052132> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.094164, 0.184669, 0.978279,
		0.164261, 0.966296, -0.198218,
		-0.981912, 0.179358, 0.060656,
		37.318790, 37.093216, 49.070328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.972614, 37.689274, 49.451893>,  <38.006130, 36.967667, 49.027870>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.972614, 37.689274, 49.451893> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.632595, 37.478645, 49.456779>,  <37.428585, 37.352268, 49.459709>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.632595, 37.478645, 49.456779>,  <37.972614, 37.689274, 49.451893>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.632595, 37.478645, 49.456779> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051579, 0.106295, 0.992996,
		-0.524180, 0.843461, -0.117515,
		-0.850044, -0.526570, 0.012213,
		37.377583, 37.320675, 49.460442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.493904, 38.076702, 49.892200>,  <37.972614, 37.689274, 49.451893>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.493904, 38.076702, 49.892200> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.324734, 37.714642, 49.875080>,  <37.223232, 37.497406, 49.864807>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.324734, 37.714642, 49.875080>,  <37.493904, 38.076702, 49.892200>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.324734, 37.714642, 49.875080> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220433, 0.056954, 0.973738,
		-0.878944, 0.421255, -0.223613,
		-0.422927, -0.905152, -0.042799,
		37.197857, 37.443096, 49.862240>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.903408, 38.100830, 50.336563>,  <37.493904, 38.076702, 49.892200>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.903408, 38.100830, 50.336563> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.965233, 37.706535, 50.309914>,  <37.002327, 37.469959, 50.293922>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.965233, 37.706535, 50.309914>,  <36.903408, 38.100830, 50.336563>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.965233, 37.706535, 50.309914> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101338, -0.082895, 0.991392,
		-0.982772, -0.146481, -0.112705,
		0.154563, -0.985734, -0.066623,
		37.011600, 37.410816, 50.289928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.483223, 37.808819, 50.808159>,  <36.903408, 38.100830, 50.336563>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.483223, 37.808819, 50.808159> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736881, 37.504349, 50.753807>,  <36.889076, 37.321667, 50.721195>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.736881, 37.504349, 50.753807>,  <36.483223, 37.808819, 50.808159>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.736881, 37.504349, 50.753807> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.021116, -0.158624, 0.987113,
		-0.772922, -0.628846, -0.084518,
		0.634149, -0.761177, -0.135883,
		36.927128, 37.275997, 50.713043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.327938, 37.197884, 51.374817>,  <36.483223, 37.808819, 50.808159>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.327938, 37.197884, 51.374817> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.708900, 37.178627, 51.254417>,  <36.937477, 37.167072, 51.182178>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.708900, 37.178627, 51.254417>,  <36.327938, 37.197884, 51.374817>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.708900, 37.178627, 51.254417> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261819, -0.376505, 0.888648,
		-0.156106, -0.925163, -0.345983,
		0.952408, -0.048139, -0.301000,
		36.994621, 37.164185, 51.164116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.640858, 36.645866, 51.773754>,  <36.327938, 37.197884, 51.374817>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.640858, 36.645866, 51.773754> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.983208, 36.798908, 51.634556>,  <37.188618, 36.890732, 51.551037>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.983208, 36.798908, 51.634556>,  <36.640858, 36.645866, 51.773754>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.983208, 36.798908, 51.634556> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415050, -0.106664, 0.903524,
		0.308571, -0.917736, -0.250090,
		0.855872, 0.382601, -0.347993,
		37.239971, 36.913689, 51.530159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<35.411495, 36.419262, 35.504532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803856, 36.345371, 35.528858>,  <36.039272, 36.301037, 35.543453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.803856, 36.345371, 35.528858>,  <35.411495, 36.419262, 35.504532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.803856, 36.345371, 35.528858> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031292, 0.458534, 0.888126,
		-0.191949, -0.869265, 0.455559,
		0.980906, -0.184730, 0.060814,
		36.098129, 36.289951, 35.547104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.478455, 36.069061, 36.111851>,  <35.411495, 36.419262, 35.504532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.478455, 36.069061, 36.111851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829411, 36.239594, 36.023823>,  <36.039986, 36.341911, 35.971004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.829411, 36.239594, 36.023823>,  <35.478455, 36.069061, 36.111851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.829411, 36.239594, 36.023823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030890, 0.407550, 0.912660,
		0.478786, -0.807555, 0.344410,
		0.877388, 0.426331, -0.220075,
		36.092628, 36.367493, 35.957802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838634, 35.817074, 36.639759>,  <35.478455, 36.069061, 36.111851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838634, 35.817074, 36.639759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044250, 36.134808, 36.510269>,  <36.167622, 36.325447, 36.432575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.044250, 36.134808, 36.510269>,  <35.838634, 35.817074, 36.639759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.044250, 36.134808, 36.510269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004208, 0.379730, 0.925088,
		0.857755, -0.474171, 0.198539,
		0.514041, 0.794334, -0.323721,
		36.198463, 36.373108, 36.413155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.539268, 35.858383, 36.925442>,  <35.838634, 35.817074, 36.639759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.539268, 35.858383, 36.925442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436977, 36.230503, 36.820267>,  <36.375603, 36.453777, 36.757160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.436977, 36.230503, 36.820267>,  <36.539268, 35.858383, 36.925442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.436977, 36.230503, 36.820267> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109003, 0.297997, 0.948323,
		0.960584, 0.213853, -0.177612,
		-0.255729, 0.930304, -0.262941,
		36.360260, 36.509594, 36.741386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.900578, 36.225159, 37.462463>,  <36.539268, 35.858383, 36.925442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.900578, 36.225159, 37.462463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646927, 36.493084, 37.307934>,  <36.494736, 36.653839, 37.215218>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646927, 36.493084, 37.307934>,  <36.900578, 36.225159, 37.462463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646927, 36.493084, 37.307934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186372, 0.352491, 0.917069,
		0.750436, 0.653533, -0.098689,
		-0.634122, 0.669809, -0.386323,
		36.456692, 36.694027, 37.192036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.080441, 36.810448, 37.746876>,  <36.900578, 36.225159, 37.462463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.080441, 36.810448, 37.746876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703053, 36.868858, 37.627857>,  <36.476620, 36.903904, 37.556446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.703053, 36.868858, 37.627857>,  <37.080441, 36.810448, 37.746876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.703053, 36.868858, 37.627857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186343, 0.508721, 0.840523,
		0.274112, 0.848456, -0.452753,
		-0.943472, 0.146030, -0.297550,
		36.420010, 36.912666, 37.538593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968914, 37.559769, 37.895790>,  <37.080441, 36.810448, 37.746876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968914, 37.559769, 37.895790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594978, 37.425930, 37.848255>,  <36.370617, 37.345627, 37.819733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.594978, 37.425930, 37.848255>,  <36.968914, 37.559769, 37.895790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.594978, 37.425930, 37.848255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274024, 0.466984, 0.840736,
		-0.225814, 0.818516, -0.528243,
		-0.934837, -0.334601, -0.118841,
		36.314526, 37.325550, 37.812603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.561661, 38.126266, 37.961662>,  <36.968914, 37.559769, 37.895790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.561661, 38.126266, 37.961662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314445, 37.828743, 38.063473>,  <36.166115, 37.650230, 38.124557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.314445, 37.828743, 38.063473>,  <36.561661, 38.126266, 37.961662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.314445, 37.828743, 38.063473> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.297232, 0.520815, 0.800253,
		-0.727793, 0.418933, -0.542966,
		-0.618038, -0.743805, 0.254525,
		36.129036, 37.605602, 38.139832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.942596, 38.525078, 38.181377>,  <36.561661, 38.126266, 37.961662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.942596, 38.525078, 38.181377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902527, 38.154213, 38.325783>,  <35.878487, 37.931694, 38.412426>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.902527, 38.154213, 38.325783>,  <35.942596, 38.525078, 38.181377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.902527, 38.154213, 38.325783> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242627, 0.374644, 0.894860,
		-0.964934, 0.002049, -0.262484,
		-0.100171, -0.927167, 0.361009,
		35.872475, 37.876064, 38.434086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.320705, 38.476612, 38.626778>,  <35.942596, 38.525078, 38.181377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.320705, 38.476612, 38.626778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572575, 38.180965, 38.722469>,  <35.723694, 38.003578, 38.779884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.572575, 38.180965, 38.722469>,  <35.320705, 38.476612, 38.626778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.572575, 38.180965, 38.722469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121267, 0.210654, 0.970010,
		-0.767341, -0.639795, 0.043012,
		0.629669, -0.739112, 0.239229,
		35.761475, 37.959232, 38.794239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.051079, 38.177925, 39.181885>,  <35.320705, 38.476612, 38.626778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.051079, 38.177925, 39.181885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432339, 38.063057, 39.219925>,  <35.661095, 37.994137, 39.242748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.432339, 38.063057, 39.219925>,  <35.051079, 38.177925, 39.181885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.432339, 38.063057, 39.219925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.083211, 0.053353, 0.995103,
		-0.290841, -0.956392, 0.026957,
		0.953147, -0.287174, 0.095099,
		35.718281, 37.976906, 39.248455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.106716, 37.735958, 39.770226>,  <35.051079, 38.177925, 39.181885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.106716, 37.735958, 39.770226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502884, 37.772705, 39.728992>,  <35.740585, 37.794754, 39.704250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502884, 37.772705, 39.728992>,  <35.106716, 37.735958, 39.770226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502884, 37.772705, 39.728992> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101752, 0.019118, 0.994626,
		0.093344, -0.995588, 0.009587,
		0.990421, 0.091867, -0.103087,
		35.800011, 37.800262, 39.698067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.809780, 37.064041, 39.718719>,  <35.106716, 37.735958, 39.770226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.809780, 37.064041, 39.718719> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481293, 36.917061, 39.893341>,  <34.284199, 36.828873, 39.998116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.481293, 36.917061, 39.893341>,  <34.809780, 37.064041, 39.718719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.481293, 36.917061, 39.893341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501049, 0.098272, -0.859821,
		0.273042, -0.924836, -0.264814,
		-0.821218, -0.367452, 0.436556,
		34.234928, 36.806824, 40.024307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.434872, 36.697445, 39.178692>,  <34.809780, 37.064041, 39.718719>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.434872, 36.697445, 39.178692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153557, 36.693153, 39.463020>,  <33.984768, 36.690578, 39.633617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.153557, 36.693153, 39.463020>,  <34.434872, 36.697445, 39.178692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153557, 36.693153, 39.463020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710885, 0.017781, -0.703084,
		-0.005091, -0.999784, -0.020138,
		-0.703290, -0.010736, 0.710822,
		33.942570, 36.689934, 39.676266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038208, 36.082726, 39.196457>,  <34.434872, 36.697445, 39.178692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038208, 36.082726, 39.196457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787224, 36.341904, 39.369179>,  <33.636635, 36.497410, 39.472813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.787224, 36.341904, 39.369179>,  <34.038208, 36.082726, 39.196457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.787224, 36.341904, 39.369179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.682870, -0.191444, -0.705009,
		-0.374142, -0.737234, 0.562587,
		-0.627461, 0.647947, 0.431807,
		33.598984, 36.536285, 39.498722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.266068, 35.766624, 39.313698>,  <34.038208, 36.082726, 39.196457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.266068, 35.766624, 39.313698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252724, 36.164581, 39.275585>,  <33.244717, 36.403355, 39.252716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.252724, 36.164581, 39.275585>,  <33.266068, 35.766624, 39.313698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.252724, 36.164581, 39.275585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649497, -0.094041, -0.754526,
		-0.759632, 0.036718, 0.649316,
		-0.033358, 0.994891, -0.095285,
		33.242718, 36.463047, 39.247002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577114, 35.872402, 39.315948>,  <33.266068, 35.766624, 39.313698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577114, 35.872402, 39.315948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755539, 36.204315, 39.181793>,  <32.862595, 36.403461, 39.101299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.755539, 36.204315, 39.181793>,  <32.577114, 35.872402, 39.315948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.755539, 36.204315, 39.181793> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751995, 0.144281, -0.643185,
		-0.485314, 0.539113, 0.688351,
		0.446066, 0.829783, -0.335389,
		32.889359, 36.453251, 39.081177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.972309, 36.277294, 39.234550>,  <32.577114, 35.872402, 39.315948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.972309, 36.277294, 39.234550> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259758, 36.461586, 39.026203>,  <32.432228, 36.572163, 38.901196>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.259758, 36.461586, 39.026203>,  <31.972309, 36.277294, 39.234550>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.259758, 36.461586, 39.026203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638610, 0.140767, -0.756546,
		-0.275243, 0.876305, 0.395386,
		0.718623, 0.460731, -0.520872,
		32.475346, 36.599804, 38.869942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.638950, 36.786362, 38.878151>,  <31.972309, 36.277294, 39.234550>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.638950, 36.786362, 38.878151> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984369, 36.724464, 38.686176>,  <32.191620, 36.687325, 38.570992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.984369, 36.724464, 38.686176>,  <31.638950, 36.786362, 38.878151>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.984369, 36.724464, 38.686176> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503771, -0.222426, -0.834710,
		0.022418, 0.962590, -0.270033,
		0.863546, -0.154747, -0.479938,
		32.243435, 36.678040, 38.542194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.426254, 36.977268, 38.208195>,  <31.638950, 36.786362, 38.878151>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.426254, 36.977268, 38.208195> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784485, 36.806232, 38.159031>,  <31.999424, 36.703609, 38.129532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.784485, 36.806232, 38.159031>,  <31.426254, 36.977268, 38.208195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.784485, 36.806232, 38.159031> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290486, -0.352730, -0.889494,
		0.336982, 0.832316, -0.440106,
		0.895579, -0.427588, -0.122913,
		32.053158, 36.677956, 38.122158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771570, 37.252819, 37.552158>,  <31.426254, 36.977268, 38.208195>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771570, 37.252819, 37.552158> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885881, 36.876968, 37.627449>,  <31.954468, 36.651459, 37.672623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885881, 36.876968, 37.627449>,  <31.771570, 37.252819, 37.552158>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885881, 36.876968, 37.627449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290804, -0.272193, -0.917248,
		0.913106, 0.207393, -0.351034,
		0.285780, -0.939627, 0.188231,
		31.971615, 36.595081, 37.683918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136765, 36.902817, 36.990955>,  <31.771570, 37.252819, 37.552158>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136765, 36.902817, 36.990955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997759, 36.571838, 37.167397>,  <31.914356, 36.373253, 37.273262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.997759, 36.571838, 37.167397>,  <32.136765, 36.902817, 36.990955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.997759, 36.571838, 37.167397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104866, -0.433179, -0.895187,
		0.931794, -0.357343, 0.063763,
		-0.347509, -0.827443, 0.441107,
		31.893505, 36.323605, 37.299728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.365009, 36.492855, 36.532566>,  <32.136765, 36.902817, 36.990955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.365009, 36.492855, 36.532566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114727, 36.264553, 36.745258>,  <31.964558, 36.127571, 36.872871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.114727, 36.264553, 36.745258>,  <32.365009, 36.492855, 36.532566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.114727, 36.264553, 36.745258> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212715, -0.530976, -0.820254,
		0.750498, -0.626343, 0.210826,
		-0.625704, -0.570753, 0.531729,
		31.927015, 36.093327, 36.904778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.604527, 35.956268, 36.278595>,  <32.365009, 36.492855, 36.532566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.604527, 35.956268, 36.278595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266415, 35.834347, 36.454140>,  <32.063549, 35.761192, 36.559467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266415, 35.834347, 36.454140>,  <32.604527, 35.956268, 36.278595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266415, 35.834347, 36.454140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110829, -0.703463, -0.702038,
		0.522710, -0.642055, 0.560839,
		-0.845276, -0.304805, 0.438865,
		32.012833, 35.742905, 36.585800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.621658, 35.183987, 36.399937>,  <32.604527, 35.956268, 36.278595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.621658, 35.183987, 36.399937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258308, 35.347912, 36.366703>,  <32.040298, 35.446266, 36.346764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.258308, 35.347912, 36.366703>,  <32.621658, 35.183987, 36.399937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.258308, 35.347912, 36.366703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208678, -0.616472, -0.759220,
		-0.362358, -0.672321, 0.645509,
		-0.908377, 0.409814, -0.083085,
		31.985796, 35.470856, 36.341778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.294479, 34.642620, 36.259422>,  <32.621658, 35.183987, 36.399937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.294479, 34.642620, 36.259422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055004, 34.939854, 36.139824>,  <31.911320, 35.118195, 36.068066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.055004, 34.939854, 36.139824>,  <32.294479, 34.642620, 36.259422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.055004, 34.939854, 36.139824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.207856, -0.504627, -0.837942,
		-0.773542, -0.439519, 0.456569,
		-0.598688, 0.743085, -0.298993,
		31.875397, 35.162781, 36.050125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.606876, 34.362553, 36.047432>,  <32.294479, 34.642620, 36.259422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.606876, 34.362553, 36.047432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695164, 34.711983, 35.873928>,  <31.748137, 34.921642, 35.769825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.695164, 34.711983, 35.873928>,  <31.606876, 34.362553, 36.047432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.695164, 34.711983, 35.873928> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160884, -0.406028, -0.899588,
		-0.961977, 0.268340, 0.050927,
		0.220718, 0.873576, -0.433761,
		31.761379, 34.974056, 35.743801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.501167, 33.707520, 36.514549>,  <31.606876, 34.362553, 36.047432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.501167, 33.707520, 36.514549> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896961, 33.697803, 36.457512>,  <32.134438, 33.691975, 36.423290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.896961, 33.697803, 36.457512>,  <31.501167, 33.707520, 36.514549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.896961, 33.697803, 36.457512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083205, -0.710797, 0.698458,
		-0.118317, -0.702977, -0.701302,
		0.989484, -0.024287, -0.142591,
		32.193806, 33.690517, 36.414734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.761263, 33.051868, 36.409729>,  <31.501167, 33.707520, 36.514549>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.761263, 33.051868, 36.409729> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078079, 33.235226, 36.570999>,  <32.268169, 33.345238, 36.667763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.078079, 33.235226, 36.570999>,  <31.761263, 33.051868, 36.409729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.078079, 33.235226, 36.570999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130095, -0.772007, 0.622158,
		0.596447, -0.440322, -0.671094,
		0.792039, 0.458390, 0.403178,
		32.315693, 33.372742, 36.691952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.079193, 32.456669, 36.803570>,  <31.761263, 33.051868, 36.409729>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.079193, 32.456669, 36.803570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333485, 32.735519, 36.936150>,  <32.486061, 32.902832, 37.015697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.333485, 32.735519, 36.936150>,  <32.079193, 32.456669, 36.803570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.333485, 32.735519, 36.936150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.330023, -0.633632, 0.699711,
		0.697806, -0.335441, -0.632888,
		0.635730, 0.697129, 0.331449,
		32.524204, 32.944656, 37.035583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.787846, 32.094715, 37.036880>,  <32.079193, 32.456669, 36.803570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.787846, 32.094715, 37.036880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766716, 32.452656, 37.214172>,  <32.754036, 32.667419, 37.320549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.766716, 32.452656, 37.214172>,  <32.787846, 32.094715, 37.036880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.766716, 32.452656, 37.214172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539857, -0.347807, 0.766540,
		0.840097, 0.279777, -0.464717,
		-0.052829, 0.894849, 0.443231,
		32.750866, 32.721111, 37.347141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.439419, 32.239449, 37.226170>,  <32.787846, 32.094715, 37.036880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.439419, 32.239449, 37.226170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214214, 32.475178, 37.457935>,  <33.079090, 32.616615, 37.596996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.214214, 32.475178, 37.457935>,  <33.439419, 32.239449, 37.226170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.214214, 32.475178, 37.457935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467918, -0.350591, 0.811258,
		0.681229, 0.727864, -0.078367,
		-0.563011, 0.589321, 0.579413,
		33.045311, 32.651974, 37.631760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853737, 32.355293, 37.761501>,  <33.439419, 32.239449, 37.226170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853737, 32.355293, 37.761501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520622, 32.488884, 37.938107>,  <33.320755, 32.569038, 38.044071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.520622, 32.488884, 37.938107>,  <33.853737, 32.355293, 37.761501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520622, 32.488884, 37.938107> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.241793, -0.498009, 0.832781,
		0.498006, 0.800280, 0.333980,
		-0.832782, 0.333976, 0.441513,
		33.270786, 32.589077, 38.070560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.091465, 32.627449, 38.342651>,  <33.853737, 32.355293, 37.761501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.091465, 32.627449, 38.342651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703144, 32.606007, 38.436180>,  <33.470150, 32.593140, 38.492298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.703144, 32.606007, 38.436180>,  <34.091465, 32.627449, 38.342651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.703144, 32.606007, 38.436180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.239865, -0.230091, 0.943145,
		0.003238, 0.971691, 0.236232,
		-0.970801, -0.053610, 0.233820,
		33.411903, 32.589924, 38.506325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.995724, 32.998631, 39.003277>,  <34.091465, 32.627449, 38.342651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.995724, 32.998631, 39.003277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680069, 32.757454, 38.956421>,  <33.490677, 32.612747, 38.928307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.680069, 32.757454, 38.956421>,  <33.995724, 32.998631, 39.003277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680069, 32.757454, 38.956421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042339, -0.243655, 0.968937,
		-0.612758, 0.759664, 0.217805,
		-0.789136, -0.602945, -0.117138,
		33.443329, 32.576569, 38.921280>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.570496, 33.313477, 39.397961>,  <33.995724, 32.998631, 39.003277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.570496, 33.313477, 39.397961> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451427, 32.933788, 39.357208>,  <33.379986, 32.705975, 39.332756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.451427, 32.933788, 39.357208>,  <33.570496, 33.313477, 39.397961>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.451427, 32.933788, 39.357208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.188583, -0.163080, 0.968422,
		-0.935856, 0.269062, 0.227551,
		-0.297674, -0.949216, -0.101878,
		33.362125, 32.649025, 39.326645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.317455, 33.128868, 40.045090>,  <33.570496, 33.313477, 39.397961>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.317455, 33.128868, 40.045090> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362450, 32.754818, 39.910694>,  <33.389446, 32.530388, 39.830055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.362450, 32.754818, 39.910694>,  <33.317455, 33.128868, 40.045090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.362450, 32.754818, 39.910694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069086, -0.329960, 0.941463,
		-0.991249, -0.129112, 0.027489,
		0.112484, -0.935124, -0.335992,
		33.396194, 32.474281, 39.809895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.015224, 32.649651, 40.457230>,  <33.317455, 33.128868, 40.045090>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.015224, 32.649651, 40.457230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310059, 32.449760, 40.275246>,  <33.486958, 32.329826, 40.166058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.310059, 32.449760, 40.275246>,  <33.015224, 32.649651, 40.457230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.310059, 32.449760, 40.275246> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256155, -0.416382, 0.872359,
		-0.625377, -0.759539, -0.178899,
		0.737080, -0.499728, -0.454955,
		33.531181, 32.299843, 40.138760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904934, 31.871168, 40.581654>,  <33.015224, 32.649651, 40.457230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904934, 31.871168, 40.581654> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285084, 31.968107, 40.503620>,  <33.513172, 32.026272, 40.456802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.285084, 31.968107, 40.503620>,  <32.904934, 31.871168, 40.581654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.285084, 31.968107, 40.503620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291603, -0.475354, 0.830064,
		0.108432, -0.845757, -0.522433,
		0.950374, 0.242349, -0.195081,
		33.570194, 32.040813, 40.445095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.332123, 31.390259, 40.952343>,  <32.904934, 31.871168, 40.581654>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.332123, 31.390259, 40.952343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643353, 31.609371, 40.829353>,  <33.830090, 31.740839, 40.755558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.643353, 31.609371, 40.829353>,  <33.332123, 31.390259, 40.952343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.643353, 31.609371, 40.829353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560484, -0.384357, 0.733571,
		0.283655, -0.743107, -0.606079,
		0.778073, 0.547779, -0.307475,
		33.876774, 31.773705, 40.737110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.942402, 30.996815, 41.053566>,  <33.332123, 31.390259, 40.952343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.942402, 30.996815, 41.053566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080250, 31.370930, 41.021393>,  <34.162960, 31.595400, 41.002090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.080250, 31.370930, 41.021393>,  <33.942402, 30.996815, 41.053566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.080250, 31.370930, 41.021393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533585, -0.124674, 0.836507,
		0.772349, -0.331195, -0.542022,
		0.344623, 0.935289, -0.080429,
		34.183636, 31.651516, 40.997265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.682278, 31.001099, 41.134666>,  <33.942402, 30.996815, 41.053566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.682278, 31.001099, 41.134666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570976, 31.367966, 41.248775>,  <34.504196, 31.588085, 41.317242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.570976, 31.367966, 41.248775>,  <34.682278, 31.001099, 41.134666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.570976, 31.367966, 41.248775> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526017, -0.103000, 0.844214,
		0.803668, 0.384961, -0.453786,
		-0.278250, 0.917167, 0.285274,
		34.487503, 31.643116, 41.334358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330395, 31.356575, 41.404041>,  <34.682278, 31.001099, 41.134666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330395, 31.356575, 41.404041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008701, 31.547459, 41.545731>,  <34.815685, 31.661989, 41.630745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.008701, 31.547459, 41.545731>,  <35.330395, 31.356575, 41.404041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008701, 31.547459, 41.545731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374344, -0.056166, 0.925588,
		0.461596, 0.876992, -0.133470,
		-0.804236, 0.477211, 0.354222,
		34.767429, 31.690622, 41.651997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564983, 31.814299, 41.762848>,  <35.330395, 31.356575, 41.404041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.564983, 31.814299, 41.762848> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189945, 31.813995, 41.901939>,  <34.964924, 31.813812, 41.985394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189945, 31.813995, 41.901939>,  <35.564983, 31.814299, 41.762848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189945, 31.813995, 41.901939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347699, -0.015739, 0.937474,
		0.004761, 0.999876, 0.015021,
		-0.937594, -0.000759, 0.347731,
		34.908669, 31.813768, 42.006260>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.525871, 32.394676, 42.189747>,  <35.564983, 31.814299, 41.762848>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.525871, 32.394676, 42.189747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231750, 32.148857, 42.304050>,  <35.055279, 32.001366, 42.372635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.231750, 32.148857, 42.304050>,  <35.525871, 32.394676, 42.189747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.231750, 32.148857, 42.304050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389721, -0.038442, 0.920130,
		-0.554479, 0.787942, 0.267769,
		-0.735303, -0.614548, 0.285762,
		35.011158, 31.964493, 42.389778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.390793, 32.650478, 42.775497>,  <35.525871, 32.394676, 42.189747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.390793, 32.650478, 42.775497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227283, 32.286945, 42.808792>,  <35.129177, 32.068825, 42.828770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.227283, 32.286945, 42.808792>,  <35.390793, 32.650478, 42.775497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.227283, 32.286945, 42.808792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261448, -0.029232, 0.964775,
		-0.874384, 0.416139, 0.249562,
		-0.408776, -0.908831, 0.083239,
		35.104652, 32.014297, 42.833763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.910664, 32.650337, 43.430733>,  <35.390793, 32.650478, 42.775497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.910664, 32.650337, 43.430733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007938, 32.274231, 43.335442>,  <35.066303, 32.048565, 43.278267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.007938, 32.274231, 43.335442>,  <34.910664, 32.650337, 43.430733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.007938, 32.274231, 43.335442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.125238, -0.213112, 0.968968,
		-0.961860, -0.265477, 0.065931,
		0.243188, -0.940269, -0.238232,
		35.080894, 31.992151, 43.263973>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578865, 32.174297, 43.948193>,  <34.910664, 32.650337, 43.430733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578865, 32.174297, 43.948193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865120, 31.945269, 43.788181>,  <35.036873, 31.807852, 43.692177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.865120, 31.945269, 43.788181>,  <34.578865, 32.174297, 43.948193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.865120, 31.945269, 43.788181> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252767, -0.321598, 0.912515,
		-0.651130, -0.754144, -0.085420,
		0.715639, -0.572574, -0.400025,
		35.079811, 31.773497, 43.668175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.565041, 31.526560, 44.295135>,  <34.578865, 32.174297, 43.948193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.565041, 31.526560, 44.295135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939285, 31.545956, 44.155262>,  <35.163834, 31.557592, 44.071339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939285, 31.545956, 44.155262>,  <34.565041, 31.526560, 44.295135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939285, 31.545956, 44.155262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327137, -0.491448, 0.807131,
		-0.132716, -0.869556, -0.475666,
		0.935611, 0.048489, -0.349687,
		35.219967, 31.560503, 44.050354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.886868, 30.957117, 44.683098>,  <34.565041, 31.526560, 44.295135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.886868, 30.957117, 44.683098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168396, 31.197193, 44.531090>,  <35.337311, 31.341238, 44.439884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.168396, 31.197193, 44.531090>,  <34.886868, 30.957117, 44.683098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.168396, 31.197193, 44.531090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599453, -0.214745, 0.771065,
		0.381177, -0.770492, -0.510926,
		0.703818, 0.600188, -0.380018,
		35.379543, 31.377249, 44.417084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.494759, 30.594362, 44.548492>,  <34.886868, 30.957117, 44.683098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.494759, 30.594362, 44.548492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613125, 30.976141, 44.563812>,  <35.684143, 31.205208, 44.573006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.613125, 30.976141, 44.563812>,  <35.494759, 30.594362, 44.548492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.613125, 30.976141, 44.563812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659564, -0.233164, 0.714570,
		0.690949, -0.186189, -0.698515,
		0.295913, 0.954447, 0.038301,
		35.701900, 31.262474, 44.575302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.182877, 30.487305, 44.572201>,  <35.494759, 30.594362, 44.548492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.182877, 30.487305, 44.572201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103359, 30.849731, 44.721611>,  <36.055649, 31.067188, 44.811256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103359, 30.849731, 44.721611>,  <36.182877, 30.487305, 44.572201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103359, 30.849731, 44.721611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434354, -0.260201, 0.862341,
		0.878532, 0.333668, -0.341828,
		-0.198792, 0.906069, 0.373525,
		36.043720, 31.121552, 44.833668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.721611, 30.675581, 44.892670>,  <36.182877, 30.487305, 44.572201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.721611, 30.675581, 44.892670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468906, 30.936382, 45.060368>,  <36.317284, 31.092863, 45.160988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.468906, 30.936382, 45.060368>,  <36.721611, 30.675581, 44.892670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.468906, 30.936382, 45.060368> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436156, -0.148116, 0.887598,
		0.640812, 0.743610, -0.190799,
		-0.631766, 0.652001, 0.419245,
		36.279377, 31.131983, 45.186142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237007, 31.103010, 45.268440>,  <36.721611, 30.675581, 44.892670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237007, 31.103010, 45.268440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859993, 31.114971, 45.401550>,  <36.633785, 31.122147, 45.481415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.859993, 31.114971, 45.401550>,  <37.237007, 31.103010, 45.268440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.859993, 31.114971, 45.401550> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326273, -0.132150, 0.935992,
		0.071963, 0.990779, 0.114800,
		-0.942532, 0.029900, 0.332775,
		36.577232, 31.123941, 45.501381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.793423, 31.574741, 45.511387>,  <37.237007, 31.103010, 45.268440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.793423, 31.574741, 45.511387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189556, 31.597822, 45.561848>,  <38.427235, 31.611670, 45.592125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.189556, 31.597822, 45.561848>,  <37.793423, 31.574741, 45.511387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.189556, 31.597822, 45.561848> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123020, 0.054949, -0.990882,
		-0.064106, 0.996821, 0.047319,
		0.990332, 0.057700, 0.126152,
		38.486656, 31.615131, 45.599693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.093269, 32.124107, 45.024044>,  <37.793423, 31.574741, 45.511387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.093269, 32.124107, 45.024044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375408, 31.849684, 45.095390>,  <38.544693, 31.685030, 45.138199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.375408, 31.849684, 45.095390>,  <38.093269, 32.124107, 45.024044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375408, 31.849684, 45.095390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.253969, 0.009661, -0.967164,
		0.661806, 0.727484, 0.181051,
		0.705346, -0.686056, 0.178365,
		38.587013, 31.643867, 45.148899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708431, 32.390236, 44.714458>,  <38.093269, 32.124107, 45.024044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708431, 32.390236, 44.714458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759617, 31.995897, 44.757797>,  <38.790329, 31.759295, 44.783802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759617, 31.995897, 44.757797>,  <38.708431, 32.390236, 44.714458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759617, 31.995897, 44.757797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285298, -0.068040, -0.956021,
		0.949858, 0.153252, 0.272551,
		0.127968, -0.985842, 0.108351,
		38.798008, 31.700144, 44.790302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.467758, 32.237000, 44.464714>,  <38.708431, 32.390236, 44.714458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.467758, 32.237000, 44.464714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241478, 31.907591, 44.447800>,  <39.105709, 31.709946, 44.437649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.241478, 31.907591, 44.447800>,  <39.467758, 32.237000, 44.464714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.241478, 31.907591, 44.447800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198491, -0.086213, -0.976304,
		0.800362, -0.560694, 0.212233,
		-0.565705, -0.823522, -0.042291,
		39.071766, 31.660534, 44.435112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.844063, 31.774782, 44.074863>,  <39.467758, 32.237000, 44.464714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.844063, 31.774782, 44.074863> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471893, 31.628323, 44.068588>,  <39.248592, 31.540447, 44.064823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.471893, 31.628323, 44.068588>,  <39.844063, 31.774782, 44.074863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.471893, 31.628323, 44.068588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063930, -0.120003, -0.990713,
		0.360866, -0.922786, 0.135061,
		-0.930424, -0.366149, -0.015689,
		39.192764, 31.518478, 44.063881>
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
