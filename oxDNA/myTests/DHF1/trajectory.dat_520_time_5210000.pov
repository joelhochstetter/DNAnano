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
	<3.358418, 0.685573, 2.240720> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.003950, 0.634361, 2.062592>,  <2.791269, 0.603634, 1.955715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.003950, 0.634361, 2.062592>,  <3.358418, 0.685573, 2.240720>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.003950, 0.634361, 2.062592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451717, -0.452785, -0.768724,
		-0.103215, -0.882380, 0.459078,
		-0.886171, -0.128030, -0.445320,
		2.738098, 0.595952, 1.928995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.040864, -0.042195, 2.033707>,  <3.358418, 0.685573, 2.240720>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.040864, -0.042195, 2.033707> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.896152, 0.190880, 1.742615>,  <2.809325, 0.330725, 1.567959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.896152, 0.190880, 1.742615>,  <3.040864, -0.042195, 2.033707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.896152, 0.190880, 1.742615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499368, -0.538053, -0.679067,
		-0.787240, -0.609078, -0.096318,
		-0.361780, 0.582687, -0.727731,
		2.787618, 0.365686, 1.524296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.603783, -0.411703, 1.561202>,  <3.040864, -0.042195, 2.033707>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.603783, -0.411703, 1.561202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.782995, -0.100067, 1.385799>,  <2.890522, 0.086915, 1.280558>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.782995, -0.100067, 1.385799>,  <2.603783, -0.411703, 1.561202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.782995, -0.100067, 1.385799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642507, -0.621655, -0.448029,
		-0.621655, -0.081015, -0.779090,
		0.448029, 0.779090, -0.438508,
		2.917403, 0.133660, 1.254247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.891575, -0.735810, 1.011716>,  <2.603783, -0.411703, 1.561202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.891575, -0.735810, 1.011716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.083457, -0.385117, 1.025707>,  <3.198586, -0.174701, 1.034102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.083457, -0.385117, 1.025707>,  <2.891575, -0.735810, 1.011716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.083457, -0.385117, 1.025707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.727099, -0.374886, -0.575142,
		-0.491132, 0.301332, -0.817306,
		0.479705, 0.876732, 0.034979,
		3.227368, -0.122097, 1.036201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.172941, -0.505050, 0.322274>,  <2.891575, -0.735810, 1.011716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.172941, -0.505050, 0.322274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.400082, -0.284771, 0.566986>,  <3.536367, -0.152603, 0.713813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.400082, -0.284771, 0.566986>,  <3.172941, -0.505050, 0.322274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.400082, -0.284771, 0.566986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797997, -0.186052, -0.573223,
		-0.201850, 0.813705, -0.545106,
		0.567853, 0.550698, 0.611780,
		3.570438, -0.119561, 0.750520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.494511, 0.021147, -0.091274>,  <3.172941, -0.505050, 0.322274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.494511, 0.021147, -0.091274> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.734692, -0.008568, 0.227207>,  <3.878801, -0.026396, 0.418296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.734692, -0.008568, 0.227207>,  <3.494511, 0.021147, -0.091274>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.734692, -0.008568, 0.227207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.797823, -0.011819, -0.602776,
		0.054188, 0.997167, 0.052170,
		0.600452, -0.074286, 0.796203,
		3.914828, -0.030854, 0.466068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.083982, 0.473426, -0.255646>,  <3.494511, 0.021147, -0.091274>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.083982, 0.473426, -0.255646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202279, 0.221565, 0.031708>,  <4.273256, 0.070449, 0.204120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.202279, 0.221565, 0.031708>,  <4.083982, 0.473426, -0.255646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.202279, 0.221565, 0.031708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.922426, -0.007264, -0.386105,
		0.248330, 0.776844, 0.578658,
		0.295740, -0.629651, 0.718385,
		4.291000, 0.032670, 0.247223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.657444, 0.732273, -0.119329>,  <4.083982, 0.473426, -0.255646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.657444, 0.732273, -0.119329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.641878, 0.347061, -0.012703>,  <4.632539, 0.115934, 0.051273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.641878, 0.347061, -0.012703>,  <4.657444, 0.732273, -0.119329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.641878, 0.347061, -0.012703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.879331, -0.159711, -0.448630,
		0.474619, 0.216942, 0.853038,
		-0.038913, -0.963031, 0.266566,
		4.630204, 0.058152, 0.067267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.488224, 4.735682, -0.851788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.554346, 4.454025, -0.575569>,  <5.594019, 4.285031, -0.409838>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.554346, 4.454025, -0.575569>,  <5.488224, 4.735682, -0.851788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.554346, 4.454025, -0.575569> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.918626, 0.144862, 0.367617,
		-0.358889, -0.695124, -0.622897,
		0.165306, -0.704143, 0.690548,
		5.603938, 4.242783, -0.368405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.960347, 4.282918, -0.831347>,  <5.488224, 4.735682, -0.851788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.960347, 4.282918, -0.831347> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.128981, 4.307415, -0.469460>,  <5.230161, 4.322113, -0.252327>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.128981, 4.307415, -0.469460>,  <4.960347, 4.282918, -0.831347>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.128981, 4.307415, -0.469460> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891689, 0.209323, 0.401342,
		-0.164800, -0.975927, 0.142855,
		0.421583, 0.061241, 0.904719,
		5.255455, 4.325788, -0.198044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.583287, 3.864534, -0.291802>,  <4.960347, 4.282918, -0.831347>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.583287, 3.864534, -0.291802> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.766163, 4.166920, -0.104401>,  <4.875888, 4.348351, 0.008040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.766163, 4.166920, -0.104401>,  <4.583287, 3.864534, -0.291802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.766163, 4.166920, -0.104401> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811924, 0.139772, 0.566784,
		0.362985, -0.639516, 0.677688,
		0.457189, 0.755965, 0.468503,
		4.903320, 4.393709, 0.036150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.575675, 3.839309, 0.518788>,  <4.583287, 3.864534, -0.291802>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.575675, 3.839309, 0.518788> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.600342, 4.209152, 0.368431>,  <4.615142, 4.431058, 0.278217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.600342, 4.209152, 0.368431>,  <4.575675, 3.839309, 0.518788>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.600342, 4.209152, 0.368431> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702155, 0.307845, 0.642036,
		0.709348, 0.224342, 0.668203,
		0.061667, 0.924609, -0.375892,
		4.618842, 4.486535, 0.255663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.679544, 4.116556, 1.087093>,  <4.575675, 3.839309, 0.518788>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.679544, 4.116556, 1.087093> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.572227, 4.430138, 0.863152>,  <4.507837, 4.618287, 0.728787>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.572227, 4.430138, 0.863152>,  <4.679544, 4.116556, 1.087093>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.572227, 4.430138, 0.863152> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654437, 0.278144, 0.703099,
		0.706917, 0.555025, 0.438424,
		-0.268293, 0.783953, -0.559854,
		4.491740, 4.665324, 0.695195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.601135, 4.760328, 1.532648>,  <4.679544, 4.116556, 1.087093>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.601135, 4.760328, 1.532648> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.397718, 4.849060, 1.199860>,  <4.275669, 4.902299, 1.000186>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.397718, 4.849060, 1.199860>,  <4.601135, 4.760328, 1.532648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.397718, 4.849060, 1.199860> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.791479, 0.260031, 0.553123,
		0.339038, 0.939774, 0.043337,
		-0.508542, 0.221830, -0.831972,
		4.245156, 4.915609, 0.950268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.359828, 5.522497, 1.574248>,  <4.601135, 4.760328, 1.532648>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.359828, 5.522497, 1.574248> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.109400, 5.321846, 1.335449>,  <3.959142, 5.201456, 1.192170>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.109400, 5.321846, 1.335449>,  <4.359828, 5.522497, 1.574248>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.109400, 5.321846, 1.335449> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745234, 0.159606, 0.647420,
		-0.229480, 0.850233, -0.473754,
		-0.626072, -0.501627, -0.596996,
		3.921578, 5.171358, 1.156350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.860536, 6.052404, 1.460143>,  <4.359828, 5.522497, 1.574248>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.860536, 6.052404, 1.460143> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718643, 5.683693, 1.397545>,  <3.633508, 5.462466, 1.359986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.718643, 5.683693, 1.397545>,  <3.860536, 6.052404, 1.460143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.718643, 5.683693, 1.397545> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.849597, 0.247916, 0.465536,
		-0.390323, 0.298098, -0.871083,
		-0.354731, -0.921778, -0.156495,
		3.612224, 5.407159, 1.350596>
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
