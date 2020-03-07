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
	<3.305631, 3.098161, 4.346524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.338470, 2.898684, 4.001371>,  <3.358174, 2.778997, 3.794280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.338470, 2.898684, 4.001371>,  <3.305631, 3.098161, 4.346524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.338470, 2.898684, 4.001371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911463, -0.312622, 0.267397,
		-0.403106, -0.808438, 0.428874,
		0.082099, -0.498693, -0.862882,
		3.363100, 2.749076, 3.742507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.479471, 2.387651, 4.497052>,  <3.305631, 3.098161, 4.346524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.479471, 2.387651, 4.497052> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656704, 2.511921, 4.160681>,  <3.763044, 2.586483, 3.958858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.656704, 2.511921, 4.160681>,  <3.479471, 2.387651, 4.497052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.656704, 2.511921, 4.160681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887294, -0.285924, 0.361879,
		-0.128015, -0.906492, -0.402348,
		0.443082, 0.310675, -0.840928,
		3.789629, 2.605123, 3.908402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.959423, 1.821496, 4.306916>,  <3.479471, 2.387651, 4.497052>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.959423, 1.821496, 4.306916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.078350, 2.191187, 4.211079>,  <4.149706, 2.413002, 4.153576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.078350, 2.191187, 4.211079>,  <3.959423, 1.821496, 4.306916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.078350, 2.191187, 4.211079> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.837949, -0.132304, 0.529469,
		0.457651, -0.358188, -0.813792,
		0.297317, 0.924228, -0.239594,
		4.167545, 2.468455, 4.139200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.756721, 1.852770, 4.043356>,  <3.959423, 1.821496, 4.306916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.756721, 1.852770, 4.043356> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609821, 2.169258, 4.238947>,  <4.521682, 2.359151, 4.356301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609821, 2.169258, 4.238947>,  <4.756721, 1.852770, 4.043356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.609821, 2.169258, 4.238947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766059, -0.040861, 0.641470,
		0.527525, 0.610165, -0.591115,
		-0.367249, 0.791220, 0.488977,
		4.499647, 2.406624, 4.385640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.364433, 2.181403, 4.125815>,  <4.756721, 1.852770, 4.043356>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.364433, 2.181403, 4.125815> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.111717, 2.311430, 4.407290>,  <4.960088, 2.389446, 4.576174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.111717, 2.311430, 4.407290>,  <5.364433, 2.181403, 4.125815>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.111717, 2.311430, 4.407290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694044, -0.167024, 0.700290,
		0.345174, 0.930824, -0.120088,
		-0.631789, 0.325068, 0.703685,
		4.922181, 2.408950, 4.618395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.672293, 2.658849, 4.427471>,  <5.364433, 2.181403, 4.125815>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.672293, 2.658849, 4.427471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.416927, 2.494125, 4.687576>,  <5.263708, 2.395291, 4.843639>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.416927, 2.494125, 4.687576>,  <5.672293, 2.658849, 4.427471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.416927, 2.494125, 4.687576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765615, -0.252902, 0.591502,
		-0.079132, 0.875473, 0.476743,
		-0.638414, -0.411809, 0.650263,
		5.225403, 2.370583, 4.882655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.981663, 2.683496, 5.050063>,  <5.672293, 2.658849, 4.427471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.981663, 2.683496, 5.050063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698986, 2.431021, 5.177931>,  <5.529380, 2.279536, 5.254652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.698986, 2.431021, 5.177931>,  <5.981663, 2.683496, 5.050063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.698986, 2.431021, 5.177931> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648018, -0.396061, 0.650545,
		-0.284006, 0.666888, 0.688913,
		-0.706692, -0.631187, 0.319671,
		5.486979, 2.241665, 5.273832>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<5.914773, 2.777214, 5.742695>,  <5.981663, 2.683496, 5.050063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<5.914773, 2.777214, 5.742695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.799507, 2.406071, 5.648003>,  <5.730348, 2.183385, 5.591187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<5.799507, 2.406071, 5.648003>,  <5.914773, 2.777214, 5.742695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.799507, 2.406071, 5.648003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672866, -0.372098, 0.639371,
		-0.681332, 0.024955, 0.731549,
		-0.288163, -0.927858, -0.236731,
		5.713058, 2.127713, 5.576983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<1.813502, 1.106353, -0.289869> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.836769, 0.828121, -0.576305>,  <1.850729, 0.661182, -0.748167>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.836769, 0.828121, -0.576305>,  <1.813502, 1.106353, -0.289869>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.836769, 0.828121, -0.576305> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.956837, -0.165752, 0.238727,
		-0.284746, -0.699068, 0.655914,
		0.058168, -0.695579, -0.716091,
		1.854219, 0.619448, -0.791133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<1.414213, 1.096883, 0.196011>,  <1.813502, 1.106353, -0.289869>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<1.414213, 1.096883, 0.196011> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.233078, 1.174679, 0.544060>,  <1.124397, 1.221356, 0.752889>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<1.233078, 1.174679, 0.544060>,  <1.414213, 1.096883, 0.196011>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.233078, 1.174679, 0.544060> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669945, 0.569731, -0.476004,
		-0.588314, -0.798486, -0.127698,
		-0.452837, 0.194489, 0.870122,
		1.097227, 1.233026, 0.805096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.739889, 0.855817, 0.121017>,  <1.414213, 1.096883, 0.196011>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.739889, 0.855817, 0.121017> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.751266, 1.143398, 0.398808>,  <0.758093, 1.315947, 0.565482>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.751266, 1.143398, 0.398808>,  <0.739889, 0.855817, 0.121017>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.751266, 1.143398, 0.398808> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727112, 0.491629, -0.479176,
		-0.685930, -0.491331, 0.536744,
		0.028445, 0.718954, 0.694475,
		0.759800, 1.359084, 0.607150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<0.100275, 0.995108, 0.311269>,  <0.739889, 0.855817, 0.121017>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<0.100275, 0.995108, 0.311269> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.283386, 1.333870, 0.419483>,  <0.393253, 1.537127, 0.484412>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<0.283386, 1.333870, 0.419483>,  <0.100275, 0.995108, 0.311269>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<0.283386, 1.333870, 0.419483> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.797287, 0.525703, -0.296596,
		-0.393410, -0.079920, 0.915883,
		0.457779, 0.846906, 0.270536,
		0.420720, 1.587942, 0.500644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.434874, 1.370735, 0.537324>,  <0.100275, 0.995108, 0.311269>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.434874, 1.370735, 0.537324> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.138947, 1.631584, 0.471107>,  <0.038610, 1.788093, 0.431377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.138947, 1.631584, 0.471107>,  <-0.434874, 1.370735, 0.537324>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.138947, 1.631584, 0.471107> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662798, 0.664130, -0.345876,
		-0.115612, 0.365607, 0.923561,
		0.739819, 0.652122, -0.165542,
		0.082999, 1.827221, 0.421445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.701526, 1.938338, 0.748847>,  <-0.434874, 1.370735, 0.537324>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.701526, 1.938338, 0.748847> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.423370, 2.018028, 0.472660>,  <-0.256477, 2.065842, 0.306948>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.423370, 2.018028, 0.472660>,  <-0.701526, 1.938338, 0.748847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.423370, 2.018028, 0.472660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644069, 0.598959, -0.475839,
		0.318762, 0.775601, 0.544824,
		0.695389, 0.199225, -0.690466,
		-0.214754, 2.077796, 0.265520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.976336, 2.662509, 0.560042>,  <-0.701526, 1.938338, 0.748847>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.976336, 2.662509, 0.560042> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.706764, 2.594139, 0.272541>,  <-0.545021, 2.553117, 0.100040>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.706764, 2.594139, 0.272541>,  <-0.976336, 2.662509, 0.560042>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.706764, 2.594139, 0.272541> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601828, 0.437268, -0.668281,
		0.428513, 0.882939, 0.191820,
		0.673928, -0.170925, -0.718753,
		-0.504586, 2.542862, 0.056915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<-0.828909, 3.235445, 0.255016>,  <-0.976336, 2.662509, 0.560042>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<-0.828909, 3.235445, 0.255016> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.741127, 2.967049, -0.028282>,  <-0.688458, 2.806011, -0.198261>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<-0.741127, 2.967049, -0.028282>,  <-0.828909, 3.235445, 0.255016>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<-0.741127, 2.967049, -0.028282> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524669, 0.530863, -0.665512,
		0.822533, 0.517645, -0.235547,
		0.219455, -0.670991, -0.708245,
		-0.675290, 2.765752, -0.240756>
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
