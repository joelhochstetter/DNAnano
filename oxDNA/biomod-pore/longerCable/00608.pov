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
	<24.297739, 35.435154, 34.894039> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253448, 35.128704, 34.640804>,  <24.226875, 34.944836, 34.488865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.253448, 35.128704, 34.640804>,  <24.297739, 35.435154, 34.894039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.253448, 35.128704, 34.640804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749097, 0.354295, -0.559758,
		0.653142, -0.536222, 0.534670,
		-0.110724, -0.766121, -0.633087,
		24.220232, 34.898869, 34.450878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.986507, 35.196529, 34.760674>,  <24.297739, 35.435154, 34.894039>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.986507, 35.196529, 34.760674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745636, 35.091228, 34.459190>,  <24.601114, 35.028049, 34.278301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.745636, 35.091228, 34.459190>,  <24.986507, 35.196529, 34.760674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.745636, 35.091228, 34.459190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632837, 0.418164, -0.651657,
		0.486725, -0.869389, -0.085213,
		-0.602177, -0.263252, -0.753712,
		24.564983, 35.012253, 34.233078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.324669, 35.182938, 34.193676>,  <24.986507, 35.196529, 34.760674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.324669, 35.182938, 34.193676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971907, 35.226757, 34.010265>,  <24.760250, 35.253048, 33.900219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.971907, 35.226757, 34.010265>,  <25.324669, 35.182938, 34.193676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.971907, 35.226757, 34.010265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.455136, 0.451347, -0.767553,
		0.122865, -0.885598, -0.447906,
		-0.881905, 0.109553, -0.458523,
		24.707335, 35.259624, 33.872707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.115316, 35.231815, 34.453957>,  <25.324669, 35.182938, 34.193676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.115316, 35.231815, 34.453957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277105, 35.540127, 34.650852>,  <26.374178, 35.725113, 34.768990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.277105, 35.540127, 34.650852>,  <26.115316, 35.231815, 34.453957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.277105, 35.540127, 34.650852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912728, -0.374175, -0.164079,
		0.057713, 0.515643, -0.854858,
		0.404472, 0.770782, 0.492236,
		26.398447, 35.771362, 34.798523>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.580215, 35.578148, 34.024670>,  <26.115316, 35.231815, 34.453957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.580215, 35.578148, 34.024670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698069, 35.604321, 34.406017>,  <26.768780, 35.620026, 34.634827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.698069, 35.604321, 34.406017>,  <26.580215, 35.578148, 34.024670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.698069, 35.604321, 34.406017> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.877776, -0.412908, -0.242933,
		0.377758, 0.908419, -0.179090,
		0.294633, 0.065431, 0.953368,
		26.786459, 35.623951, 34.692028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.217493, 35.926868, 34.073044>,  <26.580215, 35.578148, 34.024670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.217493, 35.926868, 34.073044> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162292, 35.630112, 34.335510>,  <27.129171, 35.452057, 34.492989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.162292, 35.630112, 34.335510>,  <27.217493, 35.926868, 34.073044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.162292, 35.630112, 34.335510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742837, -0.515726, -0.426872,
		0.655095, 0.428515, 0.622275,
		-0.138002, -0.741890, 0.656166,
		27.120892, 35.407543, 34.532360>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.807192, 35.736530, 34.568748>,  <27.217493, 35.926868, 34.073044>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.807192, 35.736530, 34.568748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584578, 35.436047, 34.426788>,  <27.451008, 35.255756, 34.341614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.584578, 35.436047, 34.426788>,  <27.807192, 35.736530, 34.568748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.584578, 35.436047, 34.426788> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813804, -0.406878, -0.414937,
		0.167302, -0.519748, 0.837778,
		-0.556537, -0.751207, -0.354901,
		27.417616, 35.210686, 34.320316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.030842, 35.053154, 34.887428>,  <27.807192, 35.736530, 34.568748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.030842, 35.053154, 34.887428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845865, 34.975880, 34.541290>,  <27.734880, 34.929516, 34.333607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.845865, 34.975880, 34.541290>,  <28.030842, 35.053154, 34.887428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.845865, 34.975880, 34.541290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.753046, -0.600779, -0.268302,
		-0.468050, -0.775721, 0.423304,
		-0.462440, -0.193189, -0.865348,
		27.707134, 34.917923, 34.281685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.336985, 34.443531, 34.572250>,  <28.030842, 35.053154, 34.887428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.336985, 34.443531, 34.572250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158960, 34.577641, 34.240101>,  <28.052145, 34.658104, 34.040813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.158960, 34.577641, 34.240101>,  <28.336985, 34.443531, 34.572250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.158960, 34.577641, 34.240101> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582012, -0.596423, -0.552759,
		-0.680575, -0.729297, 0.070315,
		-0.445062, 0.335270, -0.830370,
		28.025442, 34.678223, 33.990990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.241488, 33.747684, 34.700100>,  <28.336985, 34.443531, 34.572250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.241488, 33.747684, 34.700100> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318832, 33.932934, 34.354122>,  <28.365240, 34.044083, 34.146534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.318832, 33.932934, 34.354122>,  <28.241488, 33.747684, 34.700100>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.318832, 33.932934, 34.354122> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804578, 0.429667, 0.409927,
		0.561484, -0.775180, -0.289537,
		0.193363, 0.463122, -0.864944,
		28.376841, 34.071869, 34.094639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.974216, 33.556431, 34.388214>,  <28.241488, 33.747684, 34.700100>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.974216, 33.556431, 34.388214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856237, 33.931446, 34.314423>,  <28.785450, 34.156456, 34.270149>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.856237, 33.931446, 34.314423>,  <28.974216, 33.556431, 34.388214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.856237, 33.931446, 34.314423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878038, 0.342088, 0.334701,
		0.376901, -0.063256, -0.924091,
		-0.294948, 0.937536, -0.184475,
		28.767754, 34.212708, 34.259079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533524, 33.911594, 34.026840>,  <28.974216, 33.556431, 34.388214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533524, 33.911594, 34.026840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339788, 34.139000, 34.292835>,  <29.223547, 34.275444, 34.452431>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.339788, 34.139000, 34.292835>,  <29.533524, 33.911594, 34.026840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.339788, 34.139000, 34.292835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874798, 0.304324, 0.376982,
		0.011948, 0.764316, -0.644731,
		-0.484340, 0.568513, 0.664987,
		29.194487, 34.309555, 34.492332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.973118, 34.526180, 34.169838>,  <29.533524, 33.911594, 34.026840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.973118, 34.526180, 34.169838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741638, 34.436207, 34.483402>,  <29.602751, 34.382225, 34.671539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.741638, 34.436207, 34.483402>,  <29.973118, 34.526180, 34.169838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.741638, 34.436207, 34.483402> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810900, -0.056284, 0.582472,
		-0.086894, 0.972748, 0.214968,
		-0.578698, -0.224931, 0.783910,
		29.568029, 34.368729, 34.718575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.175756, 34.999619, 34.642765>,  <29.973118, 34.526180, 34.169838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.175756, 34.999619, 34.642765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045179, 34.664925, 34.818634>,  <29.966833, 34.464108, 34.924156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.045179, 34.664925, 34.818634>,  <30.175756, 34.999619, 34.642765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.045179, 34.664925, 34.818634> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821689, -0.021304, 0.569538,
		-0.467184, 0.547196, 0.694489,
		-0.326444, -0.836734, 0.439672,
		29.947247, 34.413906, 34.950535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.135935, 35.118790, 35.376957>,  <30.175756, 34.999619, 34.642765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.135935, 35.118790, 35.376957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168451, 34.721153, 35.348202>,  <30.187962, 34.482571, 35.330948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.168451, 34.721153, 35.348202>,  <30.135935, 35.118790, 35.376957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.168451, 34.721153, 35.348202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612437, -0.007081, 0.790488,
		-0.786329, -0.108285, 0.608244,
		0.081291, -0.994095, -0.071886,
		30.192839, 34.422924, 35.326637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.976452, 34.805393, 36.010132>,  <30.135935, 35.118790, 35.376957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.976452, 34.805393, 36.010132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236719, 34.568520, 35.820000>,  <30.392879, 34.426395, 35.705921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.236719, 34.568520, 35.820000>,  <29.976452, 34.805393, 36.010132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.236719, 34.568520, 35.820000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641896, 0.094495, 0.760947,
		-0.405707, -0.800240, 0.441608,
		0.650670, -0.592188, -0.475333,
		30.431921, 34.390862, 35.677399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230938, 34.166122, 36.472446>,  <29.976452, 34.805393, 36.010132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230938, 34.166122, 36.472446> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481092, 34.332600, 36.208424>,  <30.631186, 34.432487, 36.050011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.481092, 34.332600, 36.208424>,  <30.230938, 34.166122, 36.472446>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.481092, 34.332600, 36.208424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.621112, 0.246534, 0.743936,
		0.472347, -0.875217, -0.104323,
		0.625386, 0.416192, -0.660058,
		30.668709, 34.457458, 36.010406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.945641, 34.091778, 36.737209>,  <30.230938, 34.166122, 36.472446>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.945641, 34.091778, 36.737209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911966, 34.391212, 36.474140>,  <30.891762, 34.570873, 36.316299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.911966, 34.391212, 36.474140>,  <30.945641, 34.091778, 36.737209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.911966, 34.391212, 36.474140> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.618361, 0.556805, 0.554615,
		0.781372, -0.359989, -0.509770,
		-0.084187, 0.748583, -0.657675,
		30.886711, 34.615788, 36.276836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.585798, 34.245102, 36.599377>,  <30.945641, 34.091778, 36.737209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.585798, 34.245102, 36.599377> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365946, 34.571953, 36.529846>,  <31.234034, 34.768063, 36.488129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.365946, 34.571953, 36.529846>,  <31.585798, 34.245102, 36.599377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.365946, 34.571953, 36.529846> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668683, 0.555034, 0.494773,
		0.500768, 0.155711, -0.851461,
		-0.549632, 0.817124, -0.173822,
		31.201056, 34.817089, 36.477699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.945532, 34.764111, 36.269142>,  <31.585798, 34.245102, 36.599377>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.945532, 34.764111, 36.269142> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661779, 34.926456, 36.499638>,  <31.491528, 35.023865, 36.637936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.661779, 34.926456, 36.499638>,  <31.945532, 34.764111, 36.269142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.661779, 34.926456, 36.499638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.704056, 0.446231, 0.552434,
		-0.032926, 0.797593, -0.602297,
		-0.709381, 0.405861, 0.576242,
		31.448965, 35.048214, 36.672512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.964615, 35.457905, 36.216286>,  <31.945532, 34.764111, 36.269142>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.964615, 35.457905, 36.216286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795794, 35.386841, 36.571884>,  <31.694500, 35.344200, 36.785244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.795794, 35.386841, 36.571884>,  <31.964615, 35.457905, 36.216286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.795794, 35.386841, 36.571884> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662890, 0.608451, 0.436308,
		-0.618424, 0.773449, -0.139027,
		-0.422053, -0.177664, 0.888992,
		31.669178, 35.333542, 36.838581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.772499, 36.144238, 36.438423>,  <31.964615, 35.457905, 36.216286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.772499, 36.144238, 36.438423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796404, 35.874447, 36.732773>,  <31.810747, 35.712574, 36.909382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.796404, 35.874447, 36.732773>,  <31.772499, 36.144238, 36.438423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.796404, 35.874447, 36.732773> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589897, 0.618561, 0.519041,
		-0.805264, 0.403073, 0.434836,
		0.059761, -0.674473, 0.735876,
		31.814333, 35.672104, 36.953537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.521599, 36.381992, 37.027191>,  <31.772499, 36.144238, 36.438423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.521599, 36.381992, 37.027191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825172, 36.124401, 37.065792>,  <32.007317, 35.969845, 37.088955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.825172, 36.124401, 37.065792>,  <31.521599, 36.381992, 37.027191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.825172, 36.124401, 37.065792> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571447, 0.729719, 0.375444,
		-0.312200, -0.229789, 0.921807,
		0.758933, -0.643978, 0.096506,
		32.052853, 35.931210, 37.094746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.833693, 36.307999, 37.750404>,  <31.521599, 36.381992, 37.027191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.833693, 36.307999, 37.750404> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121338, 36.148979, 37.522430>,  <32.293926, 36.053566, 37.385647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.121338, 36.148979, 37.522430>,  <31.833693, 36.307999, 37.750404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.121338, 36.148979, 37.522430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665981, 0.628409, 0.401961,
		0.198353, -0.668622, 0.716660,
		0.719115, -0.397551, -0.569936,
		32.337070, 36.029713, 37.351448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.288708, 36.232635, 38.249866>,  <31.833693, 36.307999, 37.750404>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.288708, 36.232635, 38.249866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483608, 36.252495, 37.901127>,  <32.600548, 36.264412, 37.691883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.483608, 36.252495, 37.901127>,  <32.288708, 36.232635, 38.249866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.483608, 36.252495, 37.901127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625143, 0.677271, 0.387944,
		0.609737, -0.734057, 0.298967,
		0.487254, 0.049647, -0.871847,
		32.629784, 36.267387, 37.639572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000645, 36.452854, 38.880104>,  <32.288708, 36.232635, 38.249866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000645, 36.452854, 38.880104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194508, 36.779312, 39.005970>,  <32.310825, 36.975189, 39.081490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.194508, 36.779312, 39.005970>,  <32.000645, 36.452854, 38.880104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.194508, 36.779312, 39.005970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858846, 0.375822, 0.348052,
		0.165806, -0.438931, 0.883090,
		0.484656, 0.816148, 0.314661,
		32.339905, 37.024155, 39.100368>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.813810, 36.696926, 39.560989>,  <32.000645, 36.452854, 38.880104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.813810, 36.696926, 39.560989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898283, 37.000538, 39.314648>,  <31.948967, 37.182705, 39.166843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.898283, 37.000538, 39.314648>,  <31.813810, 36.696926, 39.560989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.898283, 37.000538, 39.314648> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.967877, 0.250336, -0.023361,
		0.136440, 0.601006, 0.787512,
		0.211183, 0.759028, -0.615856,
		31.961637, 37.228245, 39.129890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.283442, 37.148052, 39.763870>,  <31.813810, 36.696926, 39.560989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.283442, 37.148052, 39.763870> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345406, 37.227142, 39.376694>,  <31.382584, 37.274597, 39.144386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.345406, 37.227142, 39.376694>,  <31.283442, 37.148052, 39.763870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345406, 37.227142, 39.376694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.853632, 0.519990, -0.030396,
		0.497309, 0.830973, 0.249336,
		0.154910, 0.197725, -0.967940,
		31.391878, 37.286461, 39.086311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.392050, 37.823292, 39.820076>,  <31.283442, 37.148052, 39.763870>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.392050, 37.823292, 39.820076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493059, 38.164028, 40.003643>,  <31.553665, 38.368469, 40.113781>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.493059, 38.164028, 40.003643>,  <31.392050, 37.823292, 39.820076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.493059, 38.164028, 40.003643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695400, 0.170009, -0.698224,
		-0.672793, 0.495448, -0.549436,
		0.252525, 0.851838, 0.458915,
		31.568817, 38.419579, 40.141319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.440771, 38.354790, 39.372604>,  <31.392050, 37.823292, 39.820076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.440771, 38.354790, 39.372604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699654, 38.389420, 39.675556>,  <31.854982, 38.410198, 39.857327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.699654, 38.389420, 39.675556>,  <31.440771, 38.354790, 39.372604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.699654, 38.389420, 39.675556> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.762173, -0.092705, -0.640701,
		0.014743, 0.991923, -0.125985,
		0.647206, 0.086577, 0.757383,
		31.893816, 38.415394, 39.902771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.965719, 38.819138, 39.210285>,  <31.440771, 38.354790, 39.372604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.965719, 38.819138, 39.210285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118748, 38.572845, 39.485828>,  <32.210564, 38.425072, 39.651154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.118748, 38.572845, 39.485828>,  <31.965719, 38.819138, 39.210285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.118748, 38.572845, 39.485828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825002, -0.107998, -0.554715,
		0.415948, 0.780523, 0.466659,
		0.382569, -0.615727, 0.688855,
		32.233517, 38.388126, 39.692486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.580410, 39.176220, 39.402527>,  <31.965719, 38.819138, 39.210285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.580410, 39.176220, 39.402527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509407, 38.783630, 39.431355>,  <32.466805, 38.548077, 39.448650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.509407, 38.783630, 39.431355>,  <32.580410, 39.176220, 39.402527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509407, 38.783630, 39.431355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442408, -0.144999, -0.885015,
		0.879072, -0.125209, 0.459951,
		-0.177504, -0.981478, 0.072071,
		32.456158, 38.489185, 39.452976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.218460, 38.826630, 39.471436>,  <32.580410, 39.176220, 39.402527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.218460, 38.826630, 39.471436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933453, 38.593693, 39.314877>,  <32.762447, 38.453930, 39.220943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.933453, 38.593693, 39.314877>,  <33.218460, 38.826630, 39.471436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.933453, 38.593693, 39.314877> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545798, -0.109471, -0.830735,
		0.440925, -0.805540, 0.395842,
		-0.712523, -0.582342, -0.391394,
		32.719696, 38.418991, 39.197460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.404648, 38.116585, 39.330662>,  <33.218460, 38.826630, 39.471436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.404648, 38.116585, 39.330662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127090, 38.234512, 39.067879>,  <32.960556, 38.305271, 38.910210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127090, 38.234512, 39.067879>,  <33.404648, 38.116585, 39.330662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127090, 38.234512, 39.067879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644309, -0.153169, -0.749269,
		-0.321527, -0.943196, -0.083673,
		-0.693892, 0.294822, -0.656958,
		32.918922, 38.322960, 38.870792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.336658, 38.049236, 40.041733>,  <33.404648, 38.116585, 39.330662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.336658, 38.049236, 40.041733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686295, 38.163891, 39.884861>,  <33.896076, 38.232685, 39.790737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.686295, 38.163891, 39.884861>,  <33.336658, 38.049236, 40.041733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686295, 38.163891, 39.884861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462686, -0.245398, 0.851881,
		0.147939, -0.926078, -0.347123,
		0.874091, 0.286635, -0.392180,
		33.948521, 38.249882, 39.767208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.806042, 37.429081, 39.972900>,  <33.336658, 38.049236, 40.041733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.806042, 37.429081, 39.972900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989990, 37.780132, 40.026989>,  <34.100361, 37.990765, 40.059441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.989990, 37.780132, 40.026989>,  <33.806042, 37.429081, 39.972900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989990, 37.780132, 40.026989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578617, -0.411676, 0.704077,
		0.673586, -0.245545, -0.697130,
		0.459874, 0.877628, 0.135222,
		34.127953, 38.043419, 40.067554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595268, 37.326744, 39.961857>,  <33.806042, 37.429081, 39.972900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595268, 37.326744, 39.961857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537922, 37.661339, 40.173416>,  <34.503513, 37.862095, 40.300354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.537922, 37.661339, 40.173416>,  <34.595268, 37.326744, 39.961857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.537922, 37.661339, 40.173416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545822, -0.378964, 0.747305,
		0.825545, 0.395823, -0.402242,
		-0.143365, 0.836487, 0.528901,
		34.494911, 37.912285, 40.332085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.114399, 37.619270, 39.527824>,  <34.595268, 37.326744, 39.961857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.114399, 37.619270, 39.527824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352867, 37.599155, 39.848335>,  <35.495949, 37.587086, 40.040642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.352867, 37.599155, 39.848335>,  <35.114399, 37.619270, 39.527824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.352867, 37.599155, 39.848335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780177, -0.199260, -0.592975,
		0.189482, 0.978656, -0.079561,
		0.596172, -0.050287, 0.801281,
		35.531719, 37.584068, 40.088718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.815315, 37.881516, 39.418869>,  <35.114399, 37.619270, 39.527824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.815315, 37.881516, 39.418869> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913651, 37.698524, 39.760693>,  <35.972652, 37.588730, 39.965786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.913651, 37.698524, 39.760693>,  <35.815315, 37.881516, 39.418869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.913651, 37.698524, 39.760693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955023, -0.036498, -0.294277,
		0.165815, 0.888471, 0.427930,
		0.245838, -0.457478, 0.854563,
		35.987400, 37.561279, 40.017063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.481491, 38.012989, 39.472996>,  <35.815315, 37.881516, 39.418869>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.481491, 38.012989, 39.472996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453644, 37.690674, 39.708237>,  <36.436935, 37.497284, 39.849380>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.453644, 37.690674, 39.708237>,  <36.481491, 38.012989, 39.472996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.453644, 37.690674, 39.708237> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848190, -0.358125, -0.390282,
		0.525097, 0.471651, 0.708391,
		-0.069616, -0.805786, 0.588101,
		36.432758, 37.448936, 39.884666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233730, 38.082695, 39.692745>,  <36.481491, 38.012989, 39.472996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233730, 38.082695, 39.692745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026588, 37.740528, 39.696552>,  <36.902302, 37.535229, 39.698837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.026588, 37.740528, 39.696552>,  <37.233730, 38.082695, 39.692745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.026588, 37.740528, 39.696552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616385, -0.380815, -0.689238,
		0.593209, -0.351059, 0.724472,
		-0.517854, -0.855416, 0.009515,
		36.871231, 37.483902, 39.699406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.099781, 38.421803, 39.049328>,  <37.233730, 38.082695, 39.692745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.099781, 38.421803, 39.049328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371521, 38.215523, 38.840508>,  <37.534565, 38.091755, 38.715214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.371521, 38.215523, 38.840508>,  <37.099781, 38.421803, 39.049328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.371521, 38.215523, 38.840508> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.145244, -0.791845, 0.593200,
		-0.719293, -0.327168, -0.612845,
		0.679354, -0.515696, -0.522049,
		37.575325, 38.060814, 38.683891>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.796741, 37.854675, 38.739948>,  <37.099781, 38.421803, 39.049328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.796741, 37.854675, 38.739948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189400, 37.778900, 38.748753>,  <37.424995, 37.733433, 38.754036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.189400, 37.778900, 38.748753>,  <36.796741, 37.854675, 38.739948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.189400, 37.778900, 38.748753> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171397, -0.825698, 0.537444,
		-0.083641, -0.531352, -0.843012,
		0.981645, -0.189442, 0.022010,
		37.483894, 37.722069, 38.755356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.871246, 37.113861, 38.596859>,  <36.796741, 37.854675, 38.739948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.871246, 37.113861, 38.596859> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162960, 37.254818, 38.831451>,  <37.337990, 37.339394, 38.972206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.162960, 37.254818, 38.831451>,  <36.871246, 37.113861, 38.596859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.162960, 37.254818, 38.831451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.010957, -0.851040, 0.524986,
		0.684118, -0.389292, -0.616793,
		0.729289, 0.352394, 0.586478,
		37.381748, 37.360535, 39.007393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.531902, 36.772305, 38.674858>,  <36.871246, 37.113861, 38.596859>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.531902, 36.772305, 38.674858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406174, 36.920193, 39.024601>,  <37.330738, 37.008926, 39.234447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.406174, 36.920193, 39.024601>,  <37.531902, 36.772305, 38.674858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406174, 36.920193, 39.024601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051339, -0.913075, 0.404547,
		0.947927, 0.172046, 0.268019,
		-0.314322, 0.369721, 0.874362,
		37.311878, 37.031109, 39.286911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.827087, 36.304096, 39.068954>,  <37.531902, 36.772305, 38.674858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.827087, 36.304096, 39.068954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590496, 36.516590, 39.311588>,  <37.448544, 36.644085, 39.457169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.590496, 36.516590, 39.311588>,  <37.827087, 36.304096, 39.068954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.590496, 36.516590, 39.311588> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132115, -0.805973, 0.577021,
		0.795425, 0.261154, 0.546897,
		-0.591476, 0.531231, 0.606589,
		37.413052, 36.675961, 39.493565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.063454, 36.282406, 38.271786>,  <37.827087, 36.304096, 39.068954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.063454, 36.282406, 38.271786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429710, 36.439682, 38.238316>,  <38.649464, 36.534046, 38.218235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.429710, 36.439682, 38.238316>,  <38.063454, 36.282406, 38.271786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.429710, 36.439682, 38.238316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215264, 0.303785, -0.928104,
		-0.339503, 0.867822, 0.362798,
		0.915641, 0.393191, -0.083674,
		38.704403, 36.557640, 38.213215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.052345, 36.925636, 37.836235>,  <38.063454, 36.282406, 38.271786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.052345, 36.925636, 37.836235> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438107, 36.820866, 37.821697>,  <38.669563, 36.758003, 37.812973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.438107, 36.820866, 37.821697>,  <38.052345, 36.925636, 37.836235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.438107, 36.820866, 37.821697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.032563, 0.254036, -0.966646,
		0.262421, 0.931054, 0.253523,
		0.964404, -0.261923, -0.036347,
		38.727428, 36.742290, 37.810795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436817, 37.465878, 37.429245>,  <38.052345, 36.925636, 37.836235>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436817, 37.465878, 37.429245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679226, 37.150265, 37.388908>,  <38.824669, 36.960896, 37.364704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.679226, 37.150265, 37.388908>,  <38.436817, 37.465878, 37.429245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.679226, 37.150265, 37.388908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201131, 0.274656, -0.940272,
		0.769601, 0.549540, 0.325145,
		0.606020, -0.789031, -0.100846,
		38.861031, 36.913555, 37.358654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.987373, 37.716091, 37.071552>,  <38.436817, 37.465878, 37.429245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.987373, 37.716091, 37.071552> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030811, 37.323044, 37.011318>,  <39.056873, 37.087215, 36.975178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.030811, 37.323044, 37.011318>,  <38.987373, 37.716091, 37.071552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.030811, 37.323044, 37.011318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306392, 0.177191, -0.935269,
		0.945691, 0.055429, 0.320308,
		0.108597, -0.982614, -0.150584,
		39.063389, 37.028259, 36.966145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.703709, 37.360546, 37.004101>,  <38.987373, 37.716091, 37.071552>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.703709, 37.360546, 37.004101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428413, 37.172947, 36.782696>,  <39.263237, 37.060387, 36.649853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.428413, 37.172947, 36.782696>,  <39.703709, 37.360546, 37.004101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.428413, 37.172947, 36.782696> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365658, 0.434716, -0.822993,
		0.626601, -0.768808, -0.127694,
		-0.688233, -0.468996, -0.553514,
		39.221943, 37.032249, 36.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026814, 36.963131, 36.345097>,  <39.703709, 37.360546, 37.004101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026814, 36.963131, 36.345097> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644890, 37.065044, 36.283886>,  <39.415733, 37.126194, 36.247162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.644890, 37.065044, 36.283886>,  <40.026814, 36.963131, 36.345097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.644890, 37.065044, 36.283886> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247958, 0.399026, -0.882777,
		-0.163861, -0.880830, -0.444172,
		-0.954812, 0.254788, -0.153025,
		39.358448, 37.141479, 36.237980>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.748863, 36.860657, 36.070328>,  <40.026814, 36.963131, 36.345097>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.748863, 36.860657, 36.070328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513222, 37.170769, 36.161446>,  <40.371838, 37.356838, 36.216118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.513222, 37.170769, 36.161446>,  <40.748863, 36.860657, 36.070328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.513222, 37.170769, 36.161446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.591502, 0.605803, -0.532098,
		-0.550526, -0.178720, -0.815463,
		-0.589107, 0.775282, 0.227798,
		40.336491, 37.403355, 36.229786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.508812, 37.223984, 35.455532>,  <40.748863, 36.860657, 36.070328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.508812, 37.223984, 35.455532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539413, 37.451927, 35.782803>,  <40.557774, 37.588692, 35.979164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.539413, 37.451927, 35.782803>,  <40.508812, 37.223984, 35.455532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.539413, 37.451927, 35.782803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.583013, 0.640113, -0.500351,
		-0.808853, 0.515283, -0.283267,
		0.076499, 0.569859, 0.818174,
		40.562363, 37.622887, 36.028255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274078, 37.904133, 35.311436>,  <40.508812, 37.223984, 35.455532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274078, 37.904133, 35.311436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541409, 37.918709, 35.608627>,  <40.701805, 37.927456, 35.786942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.541409, 37.918709, 35.608627>,  <40.274078, 37.904133, 35.311436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.541409, 37.918709, 35.608627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519432, 0.692101, -0.501186,
		-0.532482, 0.720880, 0.443616,
		0.668322, 0.036444, 0.742979,
		40.741905, 37.929642, 35.831520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.886536, 38.046726, 35.029324>,  <40.274078, 37.904133, 35.311436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.886536, 38.046726, 35.029324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694386, 37.851883, 34.737579>,  <40.579098, 37.734978, 34.562534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.694386, 37.851883, 34.737579>,  <40.886536, 38.046726, 35.029324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694386, 37.851883, 34.737579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.846879, -0.473903, -0.241272,
		-0.228121, -0.733580, 0.640173,
		-0.480372, -0.487109, -0.729361,
		40.550274, 37.705750, 34.518772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.316319, 38.477707, 34.575752>,  <40.886536, 38.046726, 35.029324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.316319, 38.477707, 34.575752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237827, 38.656761, 34.226784>,  <40.190735, 38.764194, 34.017403>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.237827, 38.656761, 34.226784>,  <40.316319, 38.477707, 34.575752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.237827, 38.656761, 34.226784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525995, -0.798929, -0.291618,
		-0.827542, 0.401668, 0.392221,
		-0.196223, 0.447633, -0.872423,
		40.178959, 38.791050, 33.965057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.252449, 38.115368, 33.910984>,  <40.316319, 38.477707, 34.575752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.252449, 38.115368, 33.910984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898224, 38.268375, 33.805565>,  <39.685688, 38.360180, 33.742313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.898224, 38.268375, 33.805565>,  <40.252449, 38.115368, 33.910984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.898224, 38.268375, 33.805565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125332, -0.743077, -0.657364,
		-0.447292, -0.549106, 0.705983,
		-0.885563, 0.382516, -0.263552,
		39.632557, 38.383129, 33.726498>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.690884, 37.540245, 33.852547>,  <40.252449, 38.115368, 33.910984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.690884, 37.540245, 33.852547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616718, 37.844330, 33.603485>,  <39.572220, 38.026779, 33.454048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.616718, 37.844330, 33.603485>,  <39.690884, 37.540245, 33.852547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.616718, 37.844330, 33.603485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.129976, -0.647048, -0.751289,
		-0.974026, -0.058372, 0.218783,
		-0.185417, 0.760212, -0.622654,
		39.561092, 38.072392, 33.416687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.142471, 37.269501, 33.409470>,  <39.690884, 37.540245, 33.852547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.142471, 37.269501, 33.409470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309525, 37.576237, 33.214520>,  <39.409756, 37.760281, 33.097549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.309525, 37.576237, 33.214520>,  <39.142471, 37.269501, 33.409470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309525, 37.576237, 33.214520> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024271, -0.545620, -0.837681,
		-0.908293, 0.338011, -0.246479,
		0.417629, 0.766842, -0.487379,
		39.434814, 37.806290, 33.068306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.801506, 37.190231, 32.703529>,  <39.142471, 37.269501, 33.409470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.801506, 37.190231, 32.703529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112312, 37.438545, 32.661823>,  <39.298798, 37.587532, 32.636799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.112312, 37.438545, 32.661823>,  <38.801506, 37.190231, 32.703529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.112312, 37.438545, 32.661823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169060, -0.365358, -0.915386,
		-0.606349, 0.693646, -0.388839,
		0.777020, 0.620780, -0.104267,
		39.345417, 37.624779, 32.630543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.732445, 37.559017, 32.060295>,  <38.801506, 37.190231, 32.703529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.732445, 37.559017, 32.060295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121258, 37.560261, 32.154232>,  <39.354546, 37.561008, 32.210594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.121258, 37.560261, 32.154232>,  <38.732445, 37.559017, 32.060295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.121258, 37.560261, 32.154232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218682, -0.376687, -0.900158,
		0.085659, 0.926335, -0.366832,
		0.972029, 0.003113, 0.234839,
		39.412865, 37.561195, 32.224686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.089626, 37.957672, 31.523207>,  <38.732445, 37.559017, 32.060295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.089626, 37.957672, 31.523207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330956, 37.702251, 31.714310>,  <39.475754, 37.549000, 31.828972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.330956, 37.702251, 31.714310>,  <39.089626, 37.957672, 31.523207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.330956, 37.702251, 31.714310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212969, -0.448311, -0.868137,
		0.768533, 0.625516, -0.134485,
		0.603325, -0.638551, 0.477758,
		39.511951, 37.510685, 31.857637>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.737759, 37.832397, 31.131598>,  <39.089626, 37.957672, 31.523207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.737759, 37.832397, 31.131598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646053, 37.515659, 31.358021>,  <39.591030, 37.325619, 31.493876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.646053, 37.515659, 31.358021>,  <39.737759, 37.832397, 31.131598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.646053, 37.515659, 31.358021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049606, -0.590298, -0.805660,
		0.972100, -0.156628, 0.174614,
		-0.229263, -0.791844, 0.566059,
		39.577274, 37.278107, 31.527838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.270794, 37.352592, 31.043030>,  <39.737759, 37.832397, 31.131598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.270794, 37.352592, 31.043030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939915, 37.150276, 31.140945>,  <39.741386, 37.028889, 31.199696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.939915, 37.150276, 31.140945>,  <40.270794, 37.352592, 31.043030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.939915, 37.150276, 31.140945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098649, -0.559592, -0.822876,
		0.553184, -0.656533, 0.512789,
		-0.827198, -0.505788, 0.244791,
		39.691757, 36.998539, 31.214382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428478, 36.697453, 30.772188>,  <40.270794, 37.352592, 31.043030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428478, 36.697453, 30.772188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035851, 36.771259, 30.752275>,  <39.800274, 36.815544, 30.740328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.035851, 36.771259, 30.752275>,  <40.428478, 36.697453, 30.772188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.035851, 36.771259, 30.752275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041642, -0.460726, -0.886565,
		-0.186523, -0.868151, 0.459918,
		-0.981568, 0.184516, -0.049784,
		39.741379, 36.826614, 30.737341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.026367, 36.148224, 30.726048>,  <40.428478, 36.697453, 30.772188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.026367, 36.148224, 30.726048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816223, 36.437050, 30.545996>,  <39.690136, 36.610344, 30.437965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.816223, 36.437050, 30.545996>,  <40.026367, 36.148224, 30.726048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.816223, 36.437050, 30.545996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066280, -0.492682, -0.867682,
		-0.848293, -0.485682, 0.210978,
		-0.525362, 0.722065, -0.450129,
		39.658615, 36.653667, 30.410957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.264862, 36.269012, 30.520523>,  <40.026367, 36.148224, 30.726048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.264862, 36.269012, 30.520523> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399231, 35.999107, 30.257660>,  <39.479855, 35.837166, 30.099941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.399231, 35.999107, 30.257660>,  <39.264862, 36.269012, 30.520523>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.399231, 35.999107, 30.257660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.634684, 0.353353, -0.687254,
		0.695939, 0.647953, -0.309557,
		0.335925, -0.674758, -0.657157,
		39.500008, 35.796680, 30.060513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.297028, 36.618145, 29.938082>,  <39.264862, 36.269012, 30.520523>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.297028, 36.618145, 29.938082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305946, 36.239689, 29.808889>,  <39.311298, 36.012615, 29.731375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.305946, 36.239689, 29.808889>,  <39.297028, 36.618145, 29.938082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.305946, 36.239689, 29.808889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672982, 0.224700, -0.704702,
		0.739323, 0.233072, -0.631727,
		0.022297, -0.946143, -0.322979,
		39.312637, 35.955845, 29.711996>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.351421, 36.714188, 29.234465>,  <39.297028, 36.618145, 29.938082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.351421, 36.714188, 29.234465> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209251, 36.347588, 29.307898>,  <39.123951, 36.127628, 29.351957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.209251, 36.347588, 29.307898>,  <39.351421, 36.714188, 29.234465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.209251, 36.347588, 29.307898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710638, 0.137376, -0.690015,
		0.607179, -0.375708, -0.700127,
		-0.355425, -0.916499, 0.183581,
		39.102623, 36.072639, 29.362972>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.377090, 36.342472, 28.650139>,  <39.351421, 36.714188, 29.234465>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.377090, 36.342472, 28.650139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116932, 36.115681, 28.852337>,  <38.960838, 35.979607, 28.973656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.116932, 36.115681, 28.852337>,  <39.377090, 36.342472, 28.650139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.116932, 36.115681, 28.852337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599502, -0.025511, -0.799967,
		0.466458, -0.823339, -0.323310,
		-0.650396, -0.566976, 0.505493,
		38.921814, 35.945587, 29.003984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.021023, 35.915550, 28.128952>,  <39.377090, 36.342472, 28.650139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.021023, 35.915550, 28.128952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761505, 35.885437, 28.431843>,  <38.605793, 35.867367, 28.613577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.761505, 35.885437, 28.431843>,  <39.021023, 35.915550, 28.128952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.761505, 35.885437, 28.431843> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759480, 0.126109, -0.638191,
		-0.047447, -0.989155, -0.138998,
		-0.648798, -0.075286, 0.757227,
		38.566864, 35.862850, 28.659010>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.468891, 35.450993, 27.969921>,  <39.021023, 35.915550, 28.128952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.468891, 35.450993, 27.969921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312340, 35.673889, 28.262854>,  <38.218410, 35.807625, 28.438614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.312340, 35.673889, 28.262854>,  <38.468891, 35.450993, 27.969921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.312340, 35.673889, 28.262854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.817414, 0.155020, -0.554800,
		-0.422682, -0.815754, 0.394823,
		-0.391374, 0.557238, 0.732333,
		38.194927, 35.841061, 28.482553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667633, 35.272770, 28.023191>,  <38.468891, 35.450993, 27.969921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667633, 35.272770, 28.023191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731796, 35.638908, 28.170927>,  <37.770294, 35.858593, 28.259569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.731796, 35.638908, 28.170927>,  <37.667633, 35.272770, 28.023191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.731796, 35.638908, 28.170927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830634, 0.327322, -0.450453,
		-0.533213, -0.234529, 0.812823,
		0.160410, 0.915345, 0.369340,
		37.779919, 35.913513, 28.281729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.934208, 35.508266, 28.272005>,  <37.667633, 35.272770, 28.023191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.934208, 35.508266, 28.272005> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176411, 35.820774, 28.211370>,  <37.321732, 36.008278, 28.174990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.176411, 35.820774, 28.211370>,  <36.934208, 35.508266, 28.272005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.176411, 35.820774, 28.211370> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.652408, 0.378210, -0.656750,
		-0.455768, 0.496563, 0.738716,
		0.605507, 0.781270, -0.151586,
		37.358063, 36.055157, 28.165895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.401421, 36.016239, 28.265875>,  <36.934208, 35.508266, 28.272005>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.401421, 36.016239, 28.265875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734451, 36.176929, 28.113337>,  <36.934269, 36.273346, 28.021814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.734451, 36.176929, 28.113337>,  <36.401421, 36.016239, 28.265875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.734451, 36.176929, 28.113337> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552298, 0.549728, -0.626710,
		-0.042131, 0.732403, 0.679567,
		0.832581, 0.401727, -0.381344,
		36.984226, 36.297447, 27.998934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.311306, 36.666561, 28.284973>,  <36.401421, 36.016239, 28.265875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.311306, 36.666561, 28.284973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590824, 36.614132, 28.003689>,  <36.758533, 36.582672, 27.834917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.590824, 36.614132, 28.003689>,  <36.311306, 36.666561, 28.284973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.590824, 36.614132, 28.003689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.561286, 0.508956, -0.652626,
		0.443448, 0.850754, 0.282084,
		0.698793, -0.131076, -0.703212,
		36.800461, 36.574810, 27.792725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.405819, 37.284142, 28.029591>,  <36.311306, 36.666561, 28.284973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.405819, 37.284142, 28.029591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522732, 37.028522, 27.745005>,  <36.592880, 36.875149, 27.574253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.522732, 37.028522, 27.745005>,  <36.405819, 37.284142, 28.029591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.522732, 37.028522, 27.745005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625563, 0.434955, -0.647677,
		0.723354, 0.634372, -0.272636,
		0.292283, -0.639051, -0.711466,
		36.610416, 36.836807, 27.531565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.315781, 37.682304, 27.387899>,  <36.405819, 37.284142, 28.029591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.315781, 37.682304, 27.387899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374043, 37.323895, 27.220129>,  <36.409000, 37.108849, 27.119467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374043, 37.323895, 27.220129>,  <36.315781, 37.682304, 27.387899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374043, 37.323895, 27.220129> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441429, 0.320545, -0.838088,
		0.885395, 0.307218, -0.348844,
		0.145655, -0.896029, -0.419424,
		36.417740, 37.055084, 27.094301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301903, 37.852348, 26.709370>,  <36.315781, 37.682304, 27.387899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301903, 37.852348, 26.709370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241970, 37.457474, 26.731297>,  <36.206009, 37.220547, 26.744453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.241970, 37.457474, 26.731297>,  <36.301903, 37.852348, 26.709370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.241970, 37.457474, 26.731297> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555209, 0.038133, -0.830836,
		0.818103, -0.154921, -0.553811,
		-0.149832, -0.987191, 0.054817,
		36.197021, 37.161316, 26.747742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.571976, 37.518288, 25.968668>,  <36.301903, 37.852348, 26.709370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.571976, 37.518288, 25.968668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306103, 37.283794, 26.153934>,  <36.146580, 37.143097, 26.265095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.306103, 37.283794, 26.153934>,  <36.571976, 37.518288, 25.968668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.306103, 37.283794, 26.153934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385070, -0.262440, -0.884786,
		0.640246, -0.766455, -0.051302,
		-0.664685, -0.586235, 0.463165,
		36.106697, 37.107925, 26.292885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.606701, 36.887924, 25.630714>,  <36.571976, 37.518288, 25.968668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.606701, 36.887924, 25.630714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247910, 36.919487, 25.804708>,  <36.032635, 36.938427, 25.909105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.247910, 36.919487, 25.804708>,  <36.606701, 36.887924, 25.630714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247910, 36.919487, 25.804708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.441940, -0.185157, -0.877728,
		0.011282, -0.979536, 0.200953,
		-0.896974, 0.078907, 0.434985,
		35.978817, 36.943161, 25.935204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.282566, 36.276733, 25.399487>,  <36.606701, 36.887924, 25.630714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.282566, 36.276733, 25.399487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013535, 36.551064, 25.510679>,  <35.852116, 36.715660, 25.577394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.013535, 36.551064, 25.510679>,  <36.282566, 36.276733, 25.399487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.013535, 36.551064, 25.510679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.463604, -0.097706, -0.880639,
		-0.576804, -0.721177, 0.383667,
		-0.672583, 0.685826, 0.277984,
		35.811760, 36.756813, 25.594074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.650894, 35.916531, 25.201952>,  <36.282566, 36.276733, 25.399487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.650894, 35.916531, 25.201952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559666, 36.302395, 25.254728>,  <35.504929, 36.533913, 25.286394>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.559666, 36.302395, 25.254728>,  <35.650894, 35.916531, 25.201952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.559666, 36.302395, 25.254728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524816, -0.007658, -0.851182,
		-0.820093, -0.263374, 0.508017,
		-0.228070, 0.964664, 0.131943,
		35.491245, 36.591793, 25.294312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.879902, 36.011986, 25.176319>,  <35.650894, 35.916531, 25.201952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.879902, 36.011986, 25.176319> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993710, 36.377834, 25.061417>,  <35.061996, 36.597343, 24.992476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.993710, 36.377834, 25.061417>,  <34.879902, 36.011986, 25.176319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.993710, 36.377834, 25.061417> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.559273, -0.085008, -0.824613,
		-0.778627, 0.395275, 0.487336,
		0.284522, 0.914621, -0.287256,
		35.079067, 36.652222, 24.975239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.338589, 36.187965, 24.738262>,  <34.879902, 36.011986, 25.176319>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.338589, 36.187965, 24.738262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641701, 36.435444, 24.655336>,  <34.823570, 36.583931, 24.605581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.641701, 36.435444, 24.655336>,  <34.338589, 36.187965, 24.738262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.641701, 36.435444, 24.655336> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168860, -0.120956, -0.978190,
		-0.630279, 0.776262, 0.012815,
		0.757782, 0.618697, -0.207316,
		34.869034, 36.621052, 24.593142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.122051, 36.713615, 24.361046>,  <34.338589, 36.187965, 24.738262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.122051, 36.713615, 24.361046> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513393, 36.704353, 24.278791>,  <34.748199, 36.698795, 24.229439>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513393, 36.704353, 24.278791>,  <34.122051, 36.713615, 24.361046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513393, 36.704353, 24.278791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206469, -0.175804, -0.962530,
		-0.013865, 0.984153, -0.176780,
		0.978355, -0.023154, -0.205635,
		34.806900, 36.697407, 24.217100>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.198372, 37.191566, 23.880295>,  <34.122051, 36.713615, 24.361046>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.198372, 37.191566, 23.880295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520519, 36.959576, 23.831308>,  <34.713810, 36.820381, 23.801916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.520519, 36.959576, 23.831308>,  <34.198372, 37.191566, 23.880295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.520519, 36.959576, 23.831308> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273215, -0.179855, -0.944990,
		0.526050, 0.794528, -0.303310,
		0.805373, -0.579981, -0.122464,
		34.762131, 36.785580, 23.794569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.541599, 37.393883, 23.233932>,  <34.198372, 37.191566, 23.880295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.541599, 37.393883, 23.233932> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680714, 37.025928, 23.306429>,  <34.764183, 36.805157, 23.349926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.680714, 37.025928, 23.306429>,  <34.541599, 37.393883, 23.233932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.680714, 37.025928, 23.306429> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.201646, -0.262172, -0.943719,
		0.915631, 0.291670, -0.276673,
		0.347790, -0.919888, 0.181239,
		34.785049, 36.749962, 23.360800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.118999, 37.197365, 22.724335>,  <34.541599, 37.393883, 23.233932>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.118999, 37.197365, 22.724335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925812, 36.887871, 22.888323>,  <34.809898, 36.702175, 22.986715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.925812, 36.887871, 22.888323>,  <35.118999, 37.197365, 22.724335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.925812, 36.887871, 22.888323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285518, -0.303457, -0.909062,
		0.827783, -0.556100, -0.074356,
		-0.482965, -0.773736, 0.409972,
		34.780922, 36.655750, 23.011314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.284435, 36.693844, 22.294304>,  <35.118999, 37.197365, 22.724335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.284435, 36.693844, 22.294304> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973400, 36.539902, 22.493202>,  <34.786781, 36.447536, 22.612541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.973400, 36.539902, 22.493202>,  <35.284435, 36.693844, 22.294304>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.973400, 36.539902, 22.493202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275013, -0.502996, -0.819367,
		0.565447, -0.773876, 0.285282,
		-0.777584, -0.384852, 0.497244,
		34.740124, 36.424446, 22.642376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.263798, 36.066273, 21.987221>,  <35.284435, 36.693844, 22.294304>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.263798, 36.066273, 21.987221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912994, 36.120831, 22.171503>,  <34.702511, 36.153564, 22.282072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.912994, 36.120831, 22.171503>,  <35.263798, 36.066273, 21.987221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.912994, 36.120831, 22.171503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476155, -0.374952, -0.795417,
		0.064255, -0.916956, 0.393779,
		-0.877011, 0.136390, 0.460706,
		34.649891, 36.161747, 22.309715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.912300, 35.472260, 21.906914>,  <35.263798, 36.066273, 21.987221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.912300, 35.472260, 21.906914> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651035, 35.771187, 21.955734>,  <34.494278, 35.950542, 21.985027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.651035, 35.771187, 21.955734>,  <34.912300, 35.472260, 21.906914>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651035, 35.771187, 21.955734> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499821, -0.304417, -0.810869,
		-0.568821, -0.590634, 0.572358,
		-0.653162, 0.747316, 0.122053,
		34.455086, 35.995380, 21.992350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.200565, 35.140182, 21.886452>,  <34.912300, 35.472260, 21.906914>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.200565, 35.140182, 21.886452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165894, 35.535206, 21.833965>,  <34.145088, 35.772221, 21.802473>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.165894, 35.535206, 21.833965>,  <34.200565, 35.140182, 21.886452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.165894, 35.535206, 21.833965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749330, -0.151425, -0.644651,
		-0.656499, 0.042445, 0.753132,
		-0.086681, 0.987557, -0.131216,
		34.139889, 35.831474, 21.794601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534969, 35.244469, 21.827068>,  <34.200565, 35.140182, 21.886452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534969, 35.244469, 21.827068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634674, 35.609829, 21.698341>,  <33.694496, 35.829044, 21.621105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.634674, 35.609829, 21.698341>,  <33.534969, 35.244469, 21.827068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.634674, 35.609829, 21.698341> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.842682, 0.040814, -0.536863,
		-0.477237, 0.405009, 0.779880,
		0.249264, 0.913402, -0.321816,
		33.709454, 35.883850, 21.601797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.924435, 35.600342, 21.939346>,  <33.534969, 35.244469, 21.827068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.924435, 35.600342, 21.939346> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136509, 35.796772, 21.662870>,  <33.263756, 35.914631, 21.496984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.136509, 35.796772, 21.662870>,  <32.924435, 35.600342, 21.939346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.136509, 35.796772, 21.662870> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736811, -0.136509, -0.662174,
		-0.419532, 0.860353, 0.289456,
		0.530190, 0.491078, -0.691188,
		33.295567, 35.944096, 21.455515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.623138, 36.192299, 21.674816>,  <32.924435, 35.600342, 21.939346>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.623138, 36.192299, 21.674816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884590, 36.090343, 21.389776>,  <33.041462, 36.029171, 21.218752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.884590, 36.090343, 21.389776>,  <32.623138, 36.192299, 21.674816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.884590, 36.090343, 21.389776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747383, -0.069222, -0.660778,
		0.119095, 0.964491, -0.235742,
		0.653632, -0.254885, -0.712600,
		33.080681, 36.013878, 21.175997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.331039, 36.414993, 20.990120>,  <32.623138, 36.192299, 21.674816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.331039, 36.414993, 20.990120> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599133, 36.150185, 20.855946>,  <32.759987, 35.991299, 20.775440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.599133, 36.150185, 20.855946>,  <32.331039, 36.414993, 20.990120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.599133, 36.150185, 20.855946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712412, -0.447234, -0.540787,
		0.207994, 0.601421, -0.771382,
		0.670229, -0.662023, -0.335437,
		32.800201, 35.951576, 20.755314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.237511, 36.404972, 20.316242>,  <32.331039, 36.414993, 20.990120>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.237511, 36.404972, 20.316242> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413635, 36.057629, 20.407532>,  <32.519310, 35.849224, 20.462305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.413635, 36.057629, 20.407532>,  <32.237511, 36.404972, 20.316242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.413635, 36.057629, 20.407532> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677269, -0.488106, -0.550508,
		0.589433, 0.087828, -0.803029,
		0.440313, -0.868354, 0.228222,
		32.545731, 35.797123, 20.475998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.359688, 36.123505, 19.669580>,  <32.237511, 36.404972, 20.316242>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.359688, 36.123505, 19.669580> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388168, 35.811604, 19.918390>,  <32.405258, 35.624462, 20.067677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.388168, 35.811604, 19.918390>,  <32.359688, 36.123505, 19.669580>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.388168, 35.811604, 19.918390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493204, -0.569562, -0.657532,
		0.866995, -0.259967, -0.425131,
		0.071202, -0.779754, 0.622024,
		32.409531, 35.577679, 20.104998>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.625530, 35.518578, 19.219307>,  <32.359688, 36.123505, 19.669580>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.625530, 35.518578, 19.219307> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455879, 35.352482, 19.541225>,  <32.354088, 35.252827, 19.734377>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.455879, 35.352482, 19.541225>,  <32.625530, 35.518578, 19.219307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.455879, 35.352482, 19.541225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.442403, -0.680422, -0.584213,
		0.790186, -0.603825, 0.104885,
		-0.424128, -0.415236, 0.804795,
		32.328640, 35.227913, 19.782663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.684273, 34.830116, 19.180183>,  <32.625530, 35.518578, 19.219307>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.684273, 34.830116, 19.180183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375450, 34.820232, 19.434216>,  <32.190159, 34.814304, 19.586634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.375450, 34.820232, 19.434216>,  <32.684273, 34.830116, 19.180183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.375450, 34.820232, 19.434216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482132, -0.628303, -0.610560,
		0.414106, -0.777576, 0.473172,
		-0.772053, -0.024705, 0.635078,
		32.143833, 34.812820, 19.624739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.571434, 34.166843, 19.265753>,  <32.684273, 34.830116, 19.180183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.571434, 34.166843, 19.265753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220493, 34.322262, 19.378386>,  <32.009930, 34.415512, 19.445965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.220493, 34.322262, 19.378386>,  <32.571434, 34.166843, 19.265753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.220493, 34.322262, 19.378386> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472439, -0.596721, -0.648633,
		-0.083998, -0.702109, 0.707098,
		-0.877351, 0.388545, 0.281581,
		31.957289, 34.438824, 19.462860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.013565, 33.585224, 19.325966>,  <32.571434, 34.166843, 19.265753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.013565, 33.585224, 19.325966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814638, 33.931000, 19.296534>,  <31.695282, 34.138466, 19.278875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.814638, 33.931000, 19.296534>,  <32.013565, 33.585224, 19.325966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.814638, 33.931000, 19.296534> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607310, -0.407440, -0.682032,
		-0.619557, -0.294501, 0.727612,
		-0.497317, 0.864443, -0.073579,
		31.665443, 34.190334, 19.274460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.357412, 33.364498, 19.358244>,  <32.013565, 33.585224, 19.325966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.357412, 33.364498, 19.358244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354145, 33.724194, 19.183289>,  <31.352184, 33.940010, 19.078316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.354145, 33.724194, 19.183289>,  <31.357412, 33.364498, 19.358244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.354145, 33.724194, 19.183289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661764, -0.332779, -0.671808,
		-0.749668, 0.283961, 0.597800,
		-0.008168, 0.899235, -0.437389,
		31.351694, 33.993965, 19.052073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.805285, 33.423222, 19.157898>,  <31.357412, 33.364498, 19.358244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.805285, 33.423222, 19.157898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963459, 33.686363, 18.901506>,  <31.058363, 33.844250, 18.747671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.963459, 33.686363, 18.901506>,  <30.805285, 33.423222, 19.157898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.963459, 33.686363, 18.901506> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711531, -0.221895, -0.666698,
		-0.580822, 0.719713, 0.380340,
		0.395436, 0.657857, -0.640980,
		31.082090, 33.883720, 18.709213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.192345, 33.864895, 18.966320>,  <30.805285, 33.423222, 19.157898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.192345, 33.864895, 18.966320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484350, 33.915482, 18.697668>,  <30.659554, 33.945835, 18.536476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.484350, 33.915482, 18.697668>,  <30.192345, 33.864895, 18.966320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.484350, 33.915482, 18.697668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.618144, -0.296995, -0.727800,
		-0.291514, 0.946467, -0.138634,
		0.730012, 0.126468, -0.671631,
		30.703354, 33.953423, 18.496180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.889824, 34.169468, 18.414246>,  <30.192345, 33.864895, 18.966320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.889824, 34.169468, 18.414246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219250, 33.982979, 18.285019>,  <30.416906, 33.871086, 18.207483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.219250, 33.982979, 18.285019>,  <29.889824, 34.169468, 18.414246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.219250, 33.982979, 18.285019> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468115, -0.237005, -0.851291,
		0.320325, 0.852328, -0.413437,
		0.823566, -0.466226, -0.323068,
		30.466320, 33.843113, 18.188099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.020742, 34.571835, 17.742880>,  <29.889824, 34.169468, 18.414246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.020742, 34.571835, 17.742880> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174141, 34.204811, 17.700897>,  <30.266180, 33.984596, 17.675707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.174141, 34.204811, 17.700897>,  <30.020742, 34.571835, 17.742880>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.174141, 34.204811, 17.700897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.330190, -0.030086, -0.943435,
		0.862499, 0.396460, -0.314507,
		0.383497, -0.917558, -0.104958,
		30.289190, 33.929543, 17.669411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.554174, 34.478176, 17.217020>,  <30.020742, 34.571835, 17.742880>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.554174, 34.478176, 17.217020> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399954, 34.111805, 17.261599>,  <30.307421, 33.891983, 17.288345>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.399954, 34.111805, 17.261599>,  <30.554174, 34.478176, 17.217020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.399954, 34.111805, 17.261599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135016, -0.063478, -0.988808,
		0.912754, -0.396285, -0.099191,
		-0.385553, -0.915930, 0.111445,
		30.284288, 33.837025, 17.295033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.916826, 33.975498, 16.785721>,  <30.554174, 34.478176, 17.217020>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.916826, 33.975498, 16.785721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556486, 33.832203, 16.883808>,  <30.340282, 33.746227, 16.942661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.556486, 33.832203, 16.883808>,  <30.916826, 33.975498, 16.785721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.556486, 33.832203, 16.883808> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042460, -0.489444, -0.871000,
		0.432044, -0.795054, 0.425706,
		-0.900852, -0.358235, 0.245220,
		30.286230, 33.724731, 16.957375>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.657793, 33.816216, 16.159681>,  <30.916826, 33.975498, 16.785721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.657793, 33.816216, 16.159681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383696, 33.592773, 16.346619>,  <30.219238, 33.458710, 16.458780>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.383696, 33.592773, 16.346619>,  <30.657793, 33.816216, 16.159681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383696, 33.592773, 16.346619> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067929, -0.589860, -0.804643,
		0.725141, -0.583121, 0.366251,
		-0.685242, -0.558601, 0.467343,
		30.178123, 33.425194, 16.486822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.865402, 33.109505, 16.275890>,  <30.657793, 33.816216, 16.159681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.865402, 33.109505, 16.275890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486185, 33.197021, 16.183502>,  <30.258656, 33.249531, 16.128069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.486185, 33.197021, 16.183502>,  <30.865402, 33.109505, 16.275890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.486185, 33.197021, 16.183502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.080249, -0.538053, -0.839082,
		-0.307860, -0.814020, 0.492539,
		-0.948041, 0.218794, -0.230969,
		30.201773, 33.262661, 16.114212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333504, 32.555298, 16.158352>,  <30.865402, 33.109505, 16.275890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333504, 32.555298, 16.158352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203722, 32.859756, 15.933712>,  <30.125853, 33.042431, 15.798928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.203722, 32.859756, 15.933712>,  <30.333504, 32.555298, 16.158352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.203722, 32.859756, 15.933712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060770, -0.575717, -0.815387,
		-0.943947, -0.298683, 0.140539,
		-0.324454, 0.761142, -0.561598,
		30.106386, 33.088100, 15.765233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744940, 32.742493, 15.844515>,  <30.333504, 32.555298, 16.158352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744940, 32.742493, 15.844515> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843922, 33.058201, 15.619724>,  <29.903311, 33.247627, 15.484850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.843922, 33.058201, 15.619724>,  <29.744940, 32.742493, 15.844515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843922, 33.058201, 15.619724> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.581409, -0.343020, -0.737767,
		-0.775068, 0.509302, 0.374007,
		0.247454, 0.789271, -0.561976,
		29.918158, 33.294983, 15.451132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549759, 32.253277, 16.369009>,  <29.744940, 32.742493, 15.844515>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549759, 32.253277, 16.369009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569096, 31.874121, 16.243046>,  <29.580698, 31.646627, 16.167467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.569096, 31.874121, 16.243046>,  <29.549759, 32.253277, 16.369009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.569096, 31.874121, 16.243046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542856, -0.239714, 0.804888,
		-0.838433, -0.209861, 0.502979,
		0.048344, -0.947890, -0.314909,
		29.583599, 31.589754, 16.148573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.472113, 31.829456, 16.942173>,  <29.549759, 32.253277, 16.369009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.472113, 31.829456, 16.942173> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694149, 31.623575, 16.680807>,  <29.827372, 31.500046, 16.523987>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.694149, 31.623575, 16.680807>,  <29.472113, 31.829456, 16.942173>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694149, 31.623575, 16.680807> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604728, -0.289652, 0.741893,
		-0.571119, -0.806958, 0.150472,
		0.555092, -0.514704, -0.653416,
		29.860676, 31.469164, 16.484783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618738, 31.090443, 17.235590>,  <29.472113, 31.829456, 16.942173>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618738, 31.090443, 17.235590> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923237, 31.208996, 17.004883>,  <30.105936, 31.280127, 16.866459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.923237, 31.208996, 17.004883>,  <29.618738, 31.090443, 17.235590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.923237, 31.208996, 17.004883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647308, -0.294304, 0.703120,
		0.038647, -0.908594, -0.415889,
		0.761249, 0.296382, -0.576766,
		30.151611, 31.297911, 16.831854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.133205, 30.561041, 17.175627>,  <29.618738, 31.090443, 17.235590>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.133205, 30.561041, 17.175627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309963, 30.913980, 17.110899>,  <30.416018, 31.125744, 17.072062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.309963, 30.913980, 17.110899>,  <30.133205, 30.561041, 17.175627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.309963, 30.913980, 17.110899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734616, -0.252406, 0.629786,
		0.514848, -0.397175, -0.759726,
		0.441894, 0.882351, -0.161821,
		30.442532, 31.178686, 17.062353>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.907398, 30.448032, 17.394457>,  <30.133205, 30.561041, 17.175627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.907398, 30.448032, 17.394457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804832, 30.833467, 17.424778>,  <30.743292, 31.064730, 17.442970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.804832, 30.833467, 17.424778>,  <30.907398, 30.448032, 17.394457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.804832, 30.833467, 17.424778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653761, 0.115136, 0.747890,
		0.711932, 0.241327, -0.659480,
		-0.256417, 0.963589, 0.075801,
		30.727907, 31.122545, 17.447517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.546776, 30.748987, 17.431982>,  <30.907398, 30.448032, 17.394457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.546776, 30.748987, 17.431982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300127, 31.027870, 17.578232>,  <31.152138, 31.195200, 17.665981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.300127, 31.027870, 17.578232>,  <31.546776, 30.748987, 17.431982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.300127, 31.027870, 17.578232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.656792, 0.199530, 0.727195,
		0.434052, 0.688543, -0.580954,
		-0.616622, 0.697206, 0.365623,
		31.115141, 31.237032, 17.687920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.910124, 31.425320, 17.553335>,  <31.546776, 30.748987, 17.431982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.910124, 31.425320, 17.553335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603310, 31.429770, 17.809938>,  <31.419222, 31.432440, 17.963902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.603310, 31.429770, 17.809938>,  <31.910124, 31.425320, 17.553335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.603310, 31.429770, 17.809938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631772, 0.187482, 0.752140,
		-0.111904, 0.982205, -0.150834,
		-0.767034, 0.011125, 0.641510,
		31.373199, 31.433107, 18.002392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.022648, 32.083160, 17.965286>,  <31.910124, 31.425320, 17.553335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.022648, 32.083160, 17.965286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760139, 31.872650, 18.181562>,  <31.602634, 31.746346, 18.311329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.760139, 31.872650, 18.181562>,  <32.022648, 32.083160, 17.965286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.760139, 31.872650, 18.181562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544791, 0.165281, 0.822122,
		-0.522026, 0.834098, 0.178240,
		-0.656271, -0.526273, 0.540690,
		31.563259, 31.714767, 18.343769>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.844183, 32.549210, 18.646162>,  <32.022648, 32.083160, 17.965286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.844183, 32.549210, 18.646162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730814, 32.178265, 18.743876>,  <31.662792, 31.955698, 18.802504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.730814, 32.178265, 18.743876>,  <31.844183, 32.549210, 18.646162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.730814, 32.178265, 18.743876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287818, 0.160728, 0.944101,
		-0.914785, 0.337889, 0.221357,
		-0.283423, -0.927361, 0.244282,
		31.645786, 31.900057, 18.817160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.434340, 32.552940, 19.351452>,  <31.844183, 32.549210, 18.646162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.434340, 32.552940, 19.351452> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566084, 32.177666, 19.308876>,  <31.645130, 31.952501, 19.283331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.566084, 32.177666, 19.308876>,  <31.434340, 32.552940, 19.351452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.566084, 32.177666, 19.308876> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490834, 0.073825, 0.868120,
		-0.806599, -0.338170, 0.484809,
		0.329363, -0.938185, -0.106438,
		31.664892, 31.896210, 19.276945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.494072, 32.311649, 20.084366>,  <31.434340, 32.552940, 19.351452>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.494072, 32.311649, 20.084366> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703594, 32.047905, 19.868635>,  <31.829308, 31.889660, 19.739197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.703594, 32.047905, 19.868635>,  <31.494072, 32.311649, 20.084366>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.703594, 32.047905, 19.868635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708667, -0.014016, 0.705404,
		-0.472674, -0.751698, 0.459924,
		0.523804, -0.659359, -0.539328,
		31.860735, 31.850098, 19.706837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.618450, 31.759237, 20.484095>,  <31.494072, 32.311649, 20.084366>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.618450, 31.759237, 20.484095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915075, 31.721584, 20.218395>,  <32.093052, 31.698992, 20.058975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.915075, 31.721584, 20.218395>,  <31.618450, 31.759237, 20.484095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915075, 31.721584, 20.218395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.661019, -0.066644, 0.747403,
		-0.114623, -0.993326, 0.012802,
		0.741563, -0.094132, -0.664247,
		32.137543, 31.693344, 20.019121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.004784, 31.185127, 20.587519>,  <31.618450, 31.759237, 20.484095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.004784, 31.185127, 20.587519> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256710, 31.412428, 20.375698>,  <32.407864, 31.548809, 20.248606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.256710, 31.412428, 20.375698>,  <32.004784, 31.185127, 20.587519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.256710, 31.412428, 20.375698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.728833, -0.196595, 0.655861,
		0.268588, -0.799023, -0.537979,
		0.629812, 0.568254, -0.529551,
		32.445652, 31.582905, 20.216833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.651897, 30.786772, 20.661526>,  <32.004784, 31.185127, 20.587519>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.651897, 30.786772, 20.661526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756302, 31.146770, 20.521879>,  <32.818943, 31.362770, 20.438091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.756302, 31.146770, 20.521879>,  <32.651897, 30.786772, 20.661526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.756302, 31.146770, 20.521879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724273, 0.056519, 0.687193,
		0.638202, -0.432217, -0.637092,
		0.261009, 0.899997, -0.349114,
		32.834606, 31.416769, 20.417145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.338810, 30.812538, 20.537159>,  <32.651897, 30.786772, 20.661526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.338810, 30.812538, 20.537159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260300, 31.201767, 20.585503>,  <33.213196, 31.435305, 20.614508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.260300, 31.201767, 20.585503>,  <33.338810, 30.812538, 20.537159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.260300, 31.201767, 20.585503> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806393, 0.090059, 0.584483,
		0.557860, 0.212178, -0.802355,
		-0.196274, 0.973072, 0.120858,
		33.201416, 31.493689, 20.621759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.971237, 31.073431, 20.505211>,  <33.338810, 30.812538, 20.537159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.971237, 31.073431, 20.505211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765968, 31.365616, 20.685469>,  <33.642807, 31.540926, 20.793623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765968, 31.365616, 20.685469>,  <33.971237, 31.073431, 20.505211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765968, 31.365616, 20.685469> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775244, 0.169182, 0.608584,
		0.368307, 0.661666, -0.653106,
		-0.513173, 0.730462, 0.450642,
		33.612015, 31.584755, 20.820662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.460621, 31.457199, 20.668163>,  <33.971237, 31.073431, 20.505211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.460621, 31.457199, 20.668163> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161995, 31.591822, 20.897726>,  <33.982819, 31.672596, 21.035463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.161995, 31.591822, 20.897726>,  <34.460621, 31.457199, 20.668163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161995, 31.591822, 20.897726> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651304, 0.193650, 0.733691,
		0.135791, 0.921537, -0.363773,
		-0.746568, 0.336556, 0.573905,
		33.938026, 31.692789, 21.069897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.631355, 32.097584, 20.797947>,  <34.460621, 31.457199, 20.668163>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.631355, 32.097584, 20.797947> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367229, 31.995388, 21.080425>,  <34.208755, 31.934071, 21.249912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.367229, 31.995388, 21.080425>,  <34.631355, 32.097584, 20.797947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.367229, 31.995388, 21.080425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.676542, 0.205832, 0.707053,
		-0.326002, 0.944647, 0.036936,
		-0.660313, -0.255490, 0.706195,
		34.169136, 31.918741, 21.292284>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.611633, 32.622513, 21.368437>,  <34.631355, 32.097584, 20.797947>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.611633, 32.622513, 21.368437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498638, 32.274353, 21.529737>,  <34.430840, 32.065456, 21.626518>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.498638, 32.274353, 21.529737>,  <34.611633, 32.622513, 21.368437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.498638, 32.274353, 21.529737> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667677, 0.123433, 0.734147,
		-0.688774, 0.476628, 0.546275,
		-0.282487, -0.870396, 0.403251,
		34.413891, 32.013233, 21.650713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.698822, 32.766994, 22.018017>,  <34.611633, 32.622513, 21.368437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.698822, 32.766994, 22.018017> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668961, 32.368973, 21.991802>,  <34.651043, 32.130161, 21.976072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.668961, 32.368973, 21.991802>,  <34.698822, 32.766994, 22.018017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.668961, 32.368973, 21.991802> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779895, -0.099215, 0.617997,
		-0.621443, -0.004976, 0.783444,
		-0.074654, -0.995054, -0.065538,
		34.646564, 32.070457, 21.972141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.496277, 32.515617, 22.585606>,  <34.698822, 32.766994, 22.018017>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.496277, 32.515617, 22.585606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670799, 32.187897, 22.436811>,  <34.775513, 31.991264, 22.347534>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.670799, 32.187897, 22.436811>,  <34.496277, 32.515617, 22.585606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.670799, 32.187897, 22.436811> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.572146, -0.066460, 0.817454,
		-0.694467, -0.569493, 0.439766,
		0.436307, -0.819305, -0.371987,
		34.801693, 31.942104, 22.325214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587372, 32.153824, 23.226704>,  <34.496277, 32.515617, 22.585606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587372, 32.153824, 23.226704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828850, 31.982750, 22.957592>,  <34.973736, 31.880104, 22.796125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.828850, 31.982750, 22.957592>,  <34.587372, 32.153824, 23.226704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.828850, 31.982750, 22.957592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657379, -0.210360, 0.723603,
		-0.451003, -0.879108, 0.154160,
		0.603696, -0.427689, -0.672780,
		35.009960, 31.854443, 22.755758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.868130, 31.583012, 23.567648>,  <34.587372, 32.153824, 23.226704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.868130, 31.583012, 23.567648> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110016, 31.646490, 23.255461>,  <35.255150, 31.684578, 23.068148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.110016, 31.646490, 23.255461>,  <34.868130, 31.583012, 23.567648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.110016, 31.646490, 23.255461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787965, -0.261784, 0.557297,
		-0.115873, -0.951990, -0.283354,
		0.604718, 0.158697, -0.780469,
		35.291431, 31.694099, 23.021320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.325577, 31.030224, 23.539091>,  <34.868130, 31.583012, 23.567648>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.325577, 31.030224, 23.539091> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508480, 31.336069, 23.357418>,  <35.618221, 31.519577, 23.248413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.508480, 31.336069, 23.357418>,  <35.325577, 31.030224, 23.539091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.508480, 31.336069, 23.357418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826466, -0.176735, 0.534526,
		0.328435, -0.619784, -0.712740,
		0.457257, 0.764612, -0.454184,
		35.645657, 31.565453, 23.221163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.117249, 30.797132, 23.484571>,  <35.325577, 31.030224, 23.539091>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.117249, 30.797132, 23.484571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088562, 31.193214, 23.436657>,  <36.071350, 31.430864, 23.407907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.088562, 31.193214, 23.436657>,  <36.117249, 30.797132, 23.484571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.088562, 31.193214, 23.436657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882409, 0.118975, 0.455192,
		0.464985, -0.073057, -0.882299,
		-0.071716, 0.990206, -0.119787,
		36.067047, 31.490276, 23.400721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.848598, 30.962822, 23.307165>,  <36.117249, 30.797132, 23.484571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.848598, 30.962822, 23.307165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685856, 31.301565, 23.444160>,  <36.588211, 31.504810, 23.526358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.685856, 31.301565, 23.444160>,  <36.848598, 30.962822, 23.307165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.685856, 31.301565, 23.444160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821381, 0.175079, 0.542844,
		0.399750, 0.502173, -0.766826,
		-0.406857, 0.846858, 0.342488,
		36.563797, 31.555622, 23.546907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.272194, 31.461403, 23.134624>,  <36.848598, 30.962822, 23.307165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.272194, 31.461403, 23.134624> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061722, 31.610117, 23.440544>,  <36.935440, 31.699345, 23.624096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.061722, 31.610117, 23.440544>,  <37.272194, 31.461403, 23.134624>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061722, 31.610117, 23.440544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.847077, 0.150011, 0.509860,
		0.074829, 0.916119, -0.393861,
		-0.526176, 0.371783, 0.764798,
		36.903870, 31.721651, 23.669983>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.512928, 32.162247, 23.292637>,  <37.272194, 31.461403, 23.134624>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.512928, 32.162247, 23.292637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313511, 32.104683, 23.634571>,  <37.193859, 32.070145, 23.839731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.313511, 32.104683, 23.634571>,  <37.512928, 32.162247, 23.292637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.313511, 32.104683, 23.634571> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.773925, 0.370337, 0.513703,
		-0.390501, 0.917683, -0.073258,
		-0.498547, -0.143905, 0.854835,
		37.163948, 32.061512, 23.891022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.608097, 32.790134, 23.718494>,  <37.512928, 32.162247, 23.292637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.608097, 32.790134, 23.718494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533089, 32.490017, 23.972075>,  <37.488083, 32.309944, 24.124222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.533089, 32.490017, 23.972075>,  <37.608097, 32.790134, 23.718494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.533089, 32.490017, 23.972075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620991, 0.409499, 0.668342,
		-0.761057, 0.519003, 0.389139,
		-0.187520, -0.750298, 0.633948,
		37.476833, 32.264927, 24.162258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.398071, 33.057167, 24.259058>,  <37.608097, 32.790134, 23.718494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.398071, 33.057167, 24.259058> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460144, 32.693546, 24.413742>,  <37.497387, 32.475372, 24.506554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.460144, 32.693546, 24.413742>,  <37.398071, 33.057167, 24.259058>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.460144, 32.693546, 24.413742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485627, 0.411087, 0.771475,
		-0.860282, 0.068080, 0.505252,
		0.155180, -0.909050, 0.386712,
		37.506699, 32.420830, 24.529757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.309044, 33.134434, 24.974768>,  <37.398071, 33.057167, 24.259058>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.309044, 33.134434, 24.974768> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520256, 32.798676, 24.923216>,  <37.646984, 32.597221, 24.892284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.520256, 32.798676, 24.923216>,  <37.309044, 33.134434, 24.974768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.520256, 32.798676, 24.923216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624558, 0.281002, 0.728673,
		-0.575427, -0.465252, 0.672625,
		0.528026, -0.839392, -0.128881,
		37.678665, 32.546860, 24.884552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.382320, 32.900024, 25.617785>,  <37.309044, 33.134434, 24.974768>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.382320, 32.900024, 25.617785> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677822, 32.715820, 25.420938>,  <37.855122, 32.605297, 25.302832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.677822, 32.715820, 25.420938>,  <37.382320, 32.900024, 25.617785>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.677822, 32.715820, 25.420938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601086, 0.119903, 0.790139,
		-0.304860, -0.879520, 0.365384,
		0.738753, -0.460509, -0.492113,
		37.899448, 32.577667, 25.273304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.667160, 32.372177, 26.083111>,  <37.382320, 32.900024, 25.617785>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.667160, 32.372177, 26.083111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954350, 32.431725, 25.811125>,  <38.126663, 32.467453, 25.647934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.954350, 32.431725, 25.811125>,  <37.667160, 32.372177, 26.083111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.954350, 32.431725, 25.811125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679297, 0.063295, 0.731129,
		0.151883, -0.986829, -0.055684,
		0.717975, 0.148872, -0.679963,
		38.169743, 32.476387, 25.607136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.178577, 31.961544, 26.380030>,  <37.667160, 32.372177, 26.083111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.178577, 31.961544, 26.380030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370430, 32.199425, 26.121950>,  <38.485542, 32.342152, 25.967102>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.370430, 32.199425, 26.121950>,  <38.178577, 31.961544, 26.380030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.370430, 32.199425, 26.121950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751146, 0.101809, 0.652238,
		0.453576, -0.797473, -0.397878,
		0.479635, 0.594703, -0.645196,
		38.514320, 32.377834, 25.928391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957066, 31.751579, 26.341822>,  <38.178577, 31.961544, 26.380030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957066, 31.751579, 26.341822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932182, 32.134460, 26.228758>,  <38.917252, 32.364189, 26.160919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.932182, 32.134460, 26.228758>,  <38.957066, 31.751579, 26.341822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.932182, 32.134460, 26.228758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.779907, 0.223340, 0.584692,
		0.622797, -0.184078, -0.760421,
		-0.062204, 0.957201, -0.282659,
		38.913521, 32.421619, 26.143961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.661121, 31.994883, 26.390409>,  <38.957066, 31.751579, 26.341822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.661121, 31.994883, 26.390409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488331, 32.350025, 26.327023>,  <39.384659, 32.563110, 26.288990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.488331, 32.350025, 26.327023>,  <39.661121, 31.994883, 26.390409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.488331, 32.350025, 26.327023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625336, 0.421467, 0.656751,
		0.649887, 0.184605, -0.737270,
		-0.431974, 0.887855, -0.158466,
		39.358738, 32.616383, 26.279484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.257637, 32.470497, 26.367857>,  <39.661121, 31.994883, 26.390409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.257637, 32.470497, 26.367857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920570, 32.675472, 26.433971>,  <39.718330, 32.798458, 26.473640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.920570, 32.675472, 26.433971>,  <40.257637, 32.470497, 26.367857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920570, 32.675472, 26.433971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470807, 0.552316, 0.687959,
		0.261245, 0.657539, -0.706677,
		-0.842669, 0.512435, 0.165284,
		39.667770, 32.829201, 26.483557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.429783, 33.211502, 26.263451>,  <40.257637, 32.470497, 26.367857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.429783, 33.211502, 26.263451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121502, 33.169319, 26.514814>,  <39.936535, 33.144009, 26.665632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.121502, 33.169319, 26.514814>,  <40.429783, 33.211502, 26.263451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.121502, 33.169319, 26.514814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478953, 0.554587, 0.680468,
		-0.420265, 0.825417, -0.376914,
		-0.770701, -0.105453, 0.628410,
		39.890293, 33.137684, 26.703337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380459, 33.839958, 26.631836>,  <40.429783, 33.211502, 26.263451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380459, 33.839958, 26.631836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172890, 33.587288, 26.862211>,  <40.048347, 33.435688, 27.000437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.172890, 33.587288, 26.862211>,  <40.380459, 33.839958, 26.631836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.172890, 33.587288, 26.862211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347511, 0.459678, 0.817272,
		-0.780995, 0.624247, -0.019025,
		-0.518925, -0.631674, 0.575939,
		40.017212, 33.397785, 27.034992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.091244, 34.207150, 27.162191>,  <40.380459, 33.839958, 26.631836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.091244, 34.207150, 27.162191> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083244, 33.836716, 27.312902>,  <40.078445, 33.614456, 27.403330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.083244, 33.836716, 27.312902>,  <40.091244, 34.207150, 27.162191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083244, 33.836716, 27.312902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.196563, 0.365857, 0.909677,
		-0.980287, 0.092257, 0.174717,
		-0.020003, -0.926087, 0.376779,
		40.077244, 33.558891, 27.425936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.810638, 34.212097, 27.817627>,  <40.091244, 34.207150, 27.162191>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.810638, 34.212097, 27.817627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013927, 33.867943, 27.832863>,  <40.135902, 33.661449, 27.842005>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013927, 33.867943, 27.832863>,  <39.810638, 34.212097, 27.817627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013927, 33.867943, 27.832863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309733, 0.223870, 0.924093,
		-0.803601, -0.457848, 0.380265,
		0.508224, -0.860382, 0.038091,
		40.166393, 33.609829, 27.844290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.547321, 33.951080, 28.312826>,  <39.810638, 34.212097, 27.817627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.547321, 33.951080, 28.312826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897095, 33.762012, 28.269100>,  <40.106956, 33.648571, 28.242865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.897095, 33.762012, 28.269100>,  <39.547321, 33.951080, 28.312826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.897095, 33.762012, 28.269100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238726, 0.223055, 0.945122,
		-0.422351, -0.852541, 0.307886,
		0.874431, -0.472674, -0.109316,
		40.159424, 33.620209, 28.236305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.561375, 33.639805, 28.833385>,  <39.547321, 33.951080, 28.312826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.561375, 33.639805, 28.833385> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945278, 33.651951, 28.721712>,  <40.175621, 33.659237, 28.654709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.945278, 33.651951, 28.721712>,  <39.561375, 33.639805, 28.833385>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.945278, 33.651951, 28.721712> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.258852, 0.289886, 0.921391,
		0.108903, -0.956580, 0.270362,
		0.959758, 0.030359, -0.279182,
		40.233204, 33.661060, 28.637957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.924717, 33.177753, 29.264111>,  <39.561375, 33.639805, 28.833385>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.924717, 33.177753, 29.264111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204903, 33.432274, 29.134823>,  <40.373016, 33.584984, 29.057249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.204903, 33.432274, 29.134823>,  <39.924717, 33.177753, 29.264111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.204903, 33.432274, 29.134823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.114218, 0.347106, 0.930845,
		0.704487, -0.688942, 0.170460,
		0.700466, 0.636299, -0.323221,
		40.415043, 33.623165, 29.037857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353180, 33.299694, 29.900854>,  <39.924717, 33.177753, 29.264111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353180, 33.299694, 29.900854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453838, 33.591320, 29.646250>,  <40.514233, 33.766296, 29.493488>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.453838, 33.591320, 29.646250>,  <40.353180, 33.299694, 29.900854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.453838, 33.591320, 29.646250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.162888, 0.616387, 0.770412,
		0.954013, -0.297552, 0.036358,
		0.251648, 0.729061, -0.636509,
		40.529331, 33.810040, 29.455297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.650322, 33.094105, 30.137674>,  <40.353180, 33.299694, 29.900854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.650322, 33.094105, 30.137674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334869, 33.307240, 30.260406>,  <39.145599, 33.435120, 30.334045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.334869, 33.307240, 30.260406>,  <39.650322, 33.094105, 30.137674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.334869, 33.307240, 30.260406> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574043, -0.459238, -0.677920,
		-0.220315, -0.710761, 0.668042,
		-0.788629, 0.532841, 0.306830,
		39.098282, 33.467091, 30.352455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.136204, 32.579903, 30.323095>,  <39.650322, 33.094105, 30.137674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.136204, 32.579903, 30.323095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936119, 32.922089, 30.269472>,  <38.816067, 33.127399, 30.237299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936119, 32.922089, 30.269472>,  <39.136204, 32.579903, 30.323095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936119, 32.922089, 30.269472> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628638, -0.465241, -0.623189,
		-0.595485, -0.227452, 0.770495,
		-0.500212, 0.855462, -0.134059,
		38.786057, 33.178726, 30.229254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.366703, 32.353157, 30.355770>,  <39.136204, 32.579903, 30.323095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.366703, 32.353157, 30.355770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340214, 32.707748, 30.172567>,  <38.324322, 32.920502, 30.062645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.340214, 32.707748, 30.172567>,  <38.366703, 32.353157, 30.355770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.340214, 32.707748, 30.172567> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754168, -0.345015, -0.558744,
		-0.653334, 0.308414, 0.691401,
		-0.066220, 0.886479, -0.458007,
		38.320347, 32.973694, 30.035166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.684765, 32.551357, 30.308960>,  <38.366703, 32.353157, 30.355770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.684765, 32.551357, 30.308960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822777, 32.816833, 30.043489>,  <37.905586, 32.976120, 29.884207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.822777, 32.816833, 30.043489>,  <37.684765, 32.551357, 30.308960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.822777, 32.816833, 30.043489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749204, -0.231181, -0.620684,
		-0.565372, 0.711385, 0.417475,
		0.345033, 0.663691, -0.663676,
		37.926285, 33.015942, 29.844387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.039795, 32.828949, 30.002783>,  <37.684765, 32.551357, 30.308960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.039795, 32.828949, 30.002783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336136, 32.927902, 29.753002>,  <37.513939, 32.987274, 29.603134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.336136, 32.927902, 29.753002>,  <37.039795, 32.828949, 30.002783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.336136, 32.927902, 29.753002> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630015, -0.066362, -0.773742,
		-0.232850, 0.966642, 0.106690,
		0.740852, 0.247383, -0.624452,
		37.558392, 33.002117, 29.565666>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.772209, 33.309021, 29.615791>,  <37.039795, 32.828949, 30.002783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.772209, 33.309021, 29.615791> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065544, 33.144848, 29.398991>,  <37.241543, 33.046345, 29.268909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.065544, 33.144848, 29.398991>,  <36.772209, 33.309021, 29.615791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065544, 33.144848, 29.398991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639664, -0.146441, -0.754576,
		0.230329, 0.900057, -0.369928,
		0.733334, -0.410430, -0.542004,
		37.285545, 33.021717, 29.236389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.784546, 33.632648, 28.924112>,  <36.772209, 33.309021, 29.615791>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.784546, 33.632648, 28.924112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956985, 33.273037, 28.893394>,  <37.060452, 33.057270, 28.874964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.956985, 33.273037, 28.893394>,  <36.784546, 33.632648, 28.924112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.956985, 33.273037, 28.893394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619254, -0.232895, -0.749856,
		0.656258, 0.370820, -0.657129,
		0.431103, -0.899029, -0.076793,
		37.086315, 33.003326, 28.870358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.665455, 33.454845, 28.278074>,  <36.784546, 33.632648, 28.924112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.665455, 33.454845, 28.278074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821243, 33.104397, 28.391716>,  <36.914719, 32.894127, 28.459902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821243, 33.104397, 28.391716>,  <36.665455, 33.454845, 28.278074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821243, 33.104397, 28.391716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484771, -0.457275, -0.745585,
		0.783139, 0.152661, -0.602817,
		0.389475, -0.876124, 0.284104,
		36.938087, 32.841560, 28.476948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.858536, 33.024250, 27.610886>,  <36.665455, 33.454845, 28.278074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.858536, 33.024250, 27.610886> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798298, 32.768639, 27.912605>,  <36.762154, 32.615273, 28.093637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.798298, 32.768639, 27.912605>,  <36.858536, 33.024250, 27.610886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.798298, 32.768639, 27.912605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611293, -0.539453, -0.579060,
		0.776943, -0.548304, -0.309390,
		-0.150599, -0.639025, 0.754299,
		36.753117, 32.576931, 28.138895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.959278, 32.366013, 27.282896>,  <36.858536, 33.024250, 27.610886>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.959278, 32.366013, 27.282896> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751343, 32.276680, 27.612719>,  <36.626583, 32.223080, 27.810612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.751343, 32.276680, 27.612719>,  <36.959278, 32.366013, 27.282896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.751343, 32.276680, 27.612719> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.701894, -0.438530, -0.561280,
		0.486946, -0.870525, 0.071207,
		-0.519835, -0.223334, 0.824557,
		36.595394, 32.209679, 27.860086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.817951, 31.704777, 27.260674>,  <36.959278, 32.366013, 27.282896>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.817951, 31.704777, 27.260674> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543762, 31.844866, 27.516008>,  <36.379250, 31.928919, 27.669209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.543762, 31.844866, 27.516008>,  <36.817951, 31.704777, 27.260674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.543762, 31.844866, 27.516008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722644, -0.434380, -0.537680,
		0.088974, -0.829854, 0.550841,
		-0.685470, 0.350222, 0.638337,
		36.338120, 31.949932, 27.707510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.278324, 31.084150, 27.451700>,  <36.817951, 31.704777, 27.260674>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.278324, 31.084150, 27.451700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103733, 31.440536, 27.501760>,  <35.998978, 31.654369, 27.531797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.103733, 31.440536, 27.501760>,  <36.278324, 31.084150, 27.451700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.103733, 31.440536, 27.501760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711152, -0.256439, -0.654601,
		-0.551134, -0.374722, 0.745543,
		-0.436480, 0.890967, 0.125152,
		35.972790, 31.707827, 27.539307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.563637, 30.912720, 27.405035>,  <36.278324, 31.084150, 27.451700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.563637, 30.912720, 27.405035> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570110, 31.309656, 27.356056>,  <35.573994, 31.547819, 27.326670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.570110, 31.309656, 27.356056>,  <35.563637, 30.912720, 27.405035>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.570110, 31.309656, 27.356056> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.752929, -0.068487, -0.654528,
		-0.657902, 0.102784, 0.746056,
		0.016180, 0.992343, -0.122447,
		35.574963, 31.607359, 27.319323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814228, 31.256069, 27.509966>,  <35.563637, 30.912720, 27.405035>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814228, 31.256069, 27.509966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025822, 31.513231, 27.288391>,  <35.152779, 31.667528, 27.155447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.025822, 31.513231, 27.288391>,  <34.814228, 31.256069, 27.509966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.025822, 31.513231, 27.288391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.562992, -0.222553, -0.795934,
		-0.634990, 0.732900, 0.244223,
		0.528987, 0.642905, -0.553936,
		35.184517, 31.706102, 27.122210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.347157, 31.578306, 27.071770>,  <34.814228, 31.256069, 27.509966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.347157, 31.578306, 27.071770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689774, 31.670401, 26.887018>,  <34.895344, 31.725657, 26.776167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.689774, 31.670401, 26.887018>,  <34.347157, 31.578306, 27.071770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.689774, 31.670401, 26.887018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458746, -0.070324, -0.885780,
		-0.236419, 0.970591, 0.045384,
		0.856538, 0.230235, -0.461881,
		34.946735, 31.739471, 26.748453>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.171772, 32.143265, 26.681328>,  <34.347157, 31.578306, 27.071770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.171772, 32.143265, 26.681328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487469, 31.961689, 26.515900>,  <34.676888, 31.852743, 26.416643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.487469, 31.961689, 26.515900>,  <34.171772, 32.143265, 26.681328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.487469, 31.961689, 26.515900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499498, -0.082783, -0.862351,
		0.357217, 0.887179, -0.292076,
		0.789239, -0.453938, -0.413573,
		34.724239, 31.825508, 26.391829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257275, 32.435318, 26.024015>,  <34.171772, 32.143265, 26.681328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257275, 32.435318, 26.024015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437607, 32.080120, 25.987766>,  <34.545807, 31.867001, 25.966017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.437607, 32.080120, 25.987766>,  <34.257275, 32.435318, 26.024015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437607, 32.080120, 25.987766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505671, -0.170418, -0.845727,
		0.735558, 0.427109, -0.525864,
		0.450834, -0.887995, -0.090625,
		34.572857, 31.813721, 25.960579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.493553, 32.467300, 25.314873>,  <34.257275, 32.435318, 26.024015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.493553, 32.467300, 25.314873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510494, 32.082333, 25.422174>,  <34.520660, 31.851353, 25.486555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510494, 32.082333, 25.422174>,  <34.493553, 32.467300, 25.314873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510494, 32.082333, 25.422174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435164, -0.259458, -0.862156,
		0.899354, -0.080220, -0.429798,
		0.042353, -0.962417, 0.268254,
		34.523201, 31.793608, 25.502651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.766502, 32.171043, 24.794516>,  <34.493553, 32.467300, 25.314873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.766502, 32.171043, 24.794516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568153, 31.873941, 24.974483>,  <34.449142, 31.695681, 25.082464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.568153, 31.873941, 24.974483>,  <34.766502, 32.171043, 24.794516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.568153, 31.873941, 24.974483> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401772, -0.263089, -0.877133,
		0.769861, -0.615715, -0.167957,
		-0.495876, -0.742751, 0.449919,
		34.419392, 31.651115, 25.109459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.829639, 31.584908, 24.324245>,  <34.766502, 32.171043, 24.794516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.829639, 31.584908, 24.324245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510338, 31.526028, 24.557871>,  <34.318756, 31.490700, 24.698046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.510338, 31.526028, 24.557871>,  <34.829639, 31.584908, 24.324245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.510338, 31.526028, 24.557871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535419, -0.270762, -0.800009,
		0.275903, -0.951326, 0.137322,
		-0.798251, -0.147200, 0.584062,
		34.270863, 31.481869, 24.733089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.505859, 31.012434, 24.089315>,  <34.829639, 31.584908, 24.324245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.505859, 31.012434, 24.089315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211502, 31.174631, 24.306219>,  <34.034889, 31.271950, 24.436361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.211502, 31.174631, 24.306219>,  <34.505859, 31.012434, 24.089315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.211502, 31.174631, 24.306219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.616815, -0.071119, -0.783888,
		-0.279297, -0.911327, 0.302451,
		-0.735889, 0.405494, 0.542257,
		33.990734, 31.296280, 24.468897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.938393, 30.591328, 24.064762>,  <34.505859, 31.012434, 24.089315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.938393, 30.591328, 24.064762> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770763, 30.937271, 24.175325>,  <33.670185, 31.144836, 24.241663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.770763, 30.937271, 24.175325>,  <33.938393, 30.591328, 24.064762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.770763, 30.937271, 24.175325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.665642, -0.085606, -0.741345,
		-0.617496, -0.494664, 0.611561,
		-0.419069, 0.864858, 0.276408,
		33.645042, 31.196728, 24.258247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310146, 30.500731, 23.944841>,  <33.938393, 30.591328, 24.064762>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310146, 30.500731, 23.944841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313526, 30.898216, 23.989491>,  <33.315552, 31.136707, 24.016279>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.313526, 30.898216, 23.989491>,  <33.310146, 30.500731, 23.944841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.313526, 30.898216, 23.989491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769361, 0.077761, -0.634064,
		-0.638759, -0.080522, 0.765182,
		0.008445, 0.993715, 0.111621,
		33.316059, 31.196331, 24.022976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.670845, 30.742344, 24.018831>,  <33.310146, 30.500731, 23.944841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.670845, 30.742344, 24.018831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871548, 31.062469, 23.887537>,  <32.991970, 31.254545, 23.808760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.871548, 31.062469, 23.887537>,  <32.670845, 30.742344, 24.018831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.871548, 31.062469, 23.887537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737581, 0.197603, -0.645699,
		-0.451901, 0.566085, 0.689444,
		0.501757, 0.800313, -0.328236,
		33.022076, 31.302563, 23.789066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.243481, 31.375660, 23.982563>,  <32.670845, 30.742344, 24.018831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.243481, 31.375660, 23.982563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545837, 31.425291, 23.725430>,  <32.727249, 31.455070, 23.571150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.545837, 31.425291, 23.725430>,  <32.243481, 31.375660, 23.982563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.545837, 31.425291, 23.725430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654538, 0.121375, -0.746222,
		-0.014566, 0.984821, 0.172959,
		0.755888, 0.124078, -0.642835,
		32.772602, 31.462515, 23.532579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.017204, 32.041000, 23.461287>,  <32.243481, 31.375660, 23.982563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.017204, 32.041000, 23.461287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266613, 31.767429, 23.309776>,  <32.416256, 31.603287, 23.218870>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.266613, 31.767429, 23.309776>,  <32.017204, 32.041000, 23.461287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.266613, 31.767429, 23.309776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591986, -0.096563, -0.800142,
		0.510663, 0.723133, -0.465083,
		0.623519, -0.683926, -0.378774,
		32.453671, 31.562252, 23.196144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.154217, 32.345089, 22.711927>,  <32.017204, 32.041000, 23.461287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.154217, 32.345089, 22.711927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219994, 31.951721, 22.742500>,  <32.259460, 31.715700, 22.760843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.219994, 31.951721, 22.742500>,  <32.154217, 32.345089, 22.711927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.219994, 31.951721, 22.742500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626756, -0.164008, -0.761760,
		0.761666, 0.077361, -0.643335,
		0.164443, -0.983421, 0.076433,
		32.269325, 31.656694, 22.765430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.998304, 32.116707, 22.076529>,  <32.154217, 32.345089, 22.711927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.998304, 32.116707, 22.076529> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980825, 31.763500, 22.263447>,  <31.970339, 31.551575, 22.375597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.980825, 31.763500, 22.263447>,  <31.998304, 32.116707, 22.076529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.980825, 31.763500, 22.263447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.763435, -0.272190, -0.585730,
		0.644405, -0.382345, -0.662235,
		-0.043697, -0.883020, 0.467296,
		31.967716, 31.498594, 22.403635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.832388, 31.617594, 21.429695>,  <31.998304, 32.116707, 22.076529>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.832388, 31.617594, 21.429695> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761621, 31.452137, 21.786930>,  <31.719162, 31.352863, 22.001270>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.761621, 31.452137, 21.786930>,  <31.832388, 31.617594, 21.429695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.761621, 31.452137, 21.786930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.854555, -0.385627, -0.347891,
		0.488300, -0.824738, -0.285256,
		-0.176917, -0.413642, 0.893085,
		31.708546, 31.328045, 22.054855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.485636, 31.060331, 21.207272>,  <31.832388, 31.617594, 21.429695>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.485636, 31.060331, 21.207272> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389372, 31.027966, 21.594164>,  <31.331614, 31.008547, 21.826300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.389372, 31.027966, 21.594164>,  <31.485636, 31.060331, 21.207272>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.389372, 31.027966, 21.594164> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.948405, -0.192331, -0.252063,
		0.206425, -0.977988, -0.030454,
		-0.240658, -0.080915, 0.967232,
		31.317175, 31.003691, 21.884333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.118866, 30.368670, 21.335148>,  <31.485636, 31.060331, 21.207272>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.118866, 30.368670, 21.335148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012486, 30.635954, 21.613071>,  <30.948658, 30.796326, 21.779825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.012486, 30.635954, 21.613071>,  <31.118866, 30.368670, 21.335148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.012486, 30.635954, 21.613071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960349, -0.246209, -0.130807,
		0.083661, -0.702049, 0.707197,
		-0.265951, 0.668213, 0.694811,
		30.932701, 30.836418, 21.821514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.736853, 29.949444, 21.892679>,  <31.118866, 30.368670, 21.335148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.736853, 29.949444, 21.892679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622532, 30.330067, 21.938026>,  <30.553940, 30.558441, 21.965235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.622532, 30.330067, 21.938026>,  <30.736853, 29.949444, 21.892679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.622532, 30.330067, 21.938026> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.954536, -0.293142, 0.054111,
		0.084723, -0.092750, 0.992078,
		-0.285801, 0.951559, 0.113369,
		30.536791, 30.615534, 21.972036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.166958, 29.971739, 22.419115>,  <30.736853, 29.949444, 21.892679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.166958, 29.971739, 22.419115> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107336, 30.294798, 22.190908>,  <30.071564, 30.488632, 22.053984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.107336, 30.294798, 22.190908>,  <30.166958, 29.971739, 22.419115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.107336, 30.294798, 22.190908> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.968521, -0.235574, -0.080454,
		-0.199378, 0.540567, 0.817334,
		-0.149052, 0.807646, -0.570519,
		30.062620, 30.537092, 22.019753>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.439615, 30.062096, 22.549013>,  <30.166958, 29.971739, 22.419115>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.439615, 30.062096, 22.549013> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502432, 30.338617, 22.266897>,  <29.540121, 30.504530, 22.097628>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.502432, 30.338617, 22.266897>,  <29.439615, 30.062096, 22.549013>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.502432, 30.338617, 22.266897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.977811, 0.008578, -0.209313,
		-0.138650, 0.722511, 0.677314,
		0.157041, 0.691306, -0.705290,
		29.549543, 30.546009, 22.055309>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.947649, 30.642418, 22.636921>,  <29.439615, 30.062096, 22.549013>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.947649, 30.642418, 22.636921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064915, 30.657564, 22.254797>,  <29.135275, 30.666653, 22.025522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.064915, 30.657564, 22.254797>,  <28.947649, 30.642418, 22.636921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.064915, 30.657564, 22.254797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.952958, 0.092037, -0.288793,
		0.076988, 0.995035, 0.063068,
		0.293164, 0.037868, -0.955312,
		29.152864, 30.668924, 21.968203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.672560, 31.210094, 22.279942>,  <28.947649, 30.642418, 22.636921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.672560, 31.210094, 22.279942> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742714, 30.952072, 21.982449>,  <28.784805, 30.797258, 21.803953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.742714, 30.952072, 21.982449>,  <28.672560, 31.210094, 22.279942>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.742714, 30.952072, 21.982449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960360, 0.054167, -0.273449,
		0.216676, 0.762211, -0.609988,
		0.175384, -0.645058, -0.743734,
		28.795330, 30.758554, 21.759329>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.389521, 31.484528, 21.667383>,  <28.672560, 31.210094, 22.279942>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.389521, 31.484528, 21.667383> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432341, 31.097971, 21.573891>,  <28.458033, 30.866037, 21.517796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.432341, 31.097971, 21.573891>,  <28.389521, 31.484528, 21.667383>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.432341, 31.097971, 21.573891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.901600, 0.004740, -0.432544,
		0.419114, 0.257037, -0.870790,
		0.107052, -0.966390, -0.233731,
		28.464457, 30.808054, 21.503771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.744947, 31.836933, 21.500908>,  <28.389521, 31.484528, 21.667383>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.744947, 31.836933, 21.500908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410177, 31.935749, 21.696264>,  <27.209314, 31.995039, 21.813478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.410177, 31.935749, 21.696264>,  <27.744947, 31.836933, 21.500908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.410177, 31.935749, 21.696264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547251, 0.364200, 0.753575,
		0.008290, 0.897959, -0.440001,
		-0.836927, 0.247038, 0.488390,
		27.159100, 32.009861, 21.842781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.869213, 32.517437, 21.781979>,  <27.744947, 31.836933, 21.500908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.869213, 32.517437, 21.781979> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571568, 32.381275, 22.011906>,  <27.392981, 32.299580, 22.149862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.571568, 32.381275, 22.011906>,  <27.869213, 32.517437, 21.781979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.571568, 32.381275, 22.011906> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559980, 0.151390, 0.814557,
		-0.364299, 0.928012, 0.077967,
		-0.744116, -0.340402, 0.574820,
		27.348333, 32.279156, 22.184351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.722265, 33.077404, 22.226027>,  <27.869213, 32.517437, 21.781979>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.722265, 33.077404, 22.226027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608793, 32.731365, 22.391500>,  <27.540710, 32.523743, 22.490786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.608793, 32.731365, 22.391500>,  <27.722265, 33.077404, 22.226027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.608793, 32.731365, 22.391500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573171, 0.192888, 0.796410,
		-0.768766, 0.463038, 0.441129,
		-0.283679, -0.865095, 0.413686,
		27.523689, 32.471836, 22.515606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.505465, 33.243702, 22.961765>,  <27.722265, 33.077404, 22.226027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.505465, 33.243702, 22.961765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561695, 32.847778, 22.970913>,  <27.595434, 32.610226, 22.976402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.561695, 32.847778, 22.970913>,  <27.505465, 33.243702, 22.961765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.561695, 32.847778, 22.970913> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421866, 0.080780, 0.903052,
		-0.895694, -0.117300, 0.428921,
		0.140576, -0.989806, 0.022869,
		27.603868, 32.550838, 22.977774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.206532, 33.014160, 23.640884>,  <27.505465, 33.243702, 22.961765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.206532, 33.014160, 23.640884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468044, 32.739914, 23.512821>,  <27.624952, 32.575367, 23.435984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.468044, 32.739914, 23.512821>,  <27.206532, 33.014160, 23.640884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.468044, 32.739914, 23.512821> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483791, 0.053407, 0.873553,
		-0.581821, -0.726003, 0.366610,
		0.653782, -0.685614, -0.320160,
		27.664179, 32.534229, 23.416773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.296114, 32.476204, 24.195288>,  <27.206532, 33.014160, 23.640884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.296114, 32.476204, 24.195288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619274, 32.402531, 23.971369>,  <27.813169, 32.358326, 23.837017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.619274, 32.402531, 23.971369>,  <27.296114, 32.476204, 24.195288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.619274, 32.402531, 23.971369> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544714, -0.129141, 0.828619,
		-0.224914, -0.974371, -0.004004,
		0.807899, -0.184187, -0.559799,
		27.861645, 32.347275, 23.803429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.718306, 32.258961, 24.684853>,  <27.296114, 32.476204, 24.195288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.718306, 32.258961, 24.684853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962894, 32.274124, 24.368710>,  <28.109648, 32.283222, 24.179024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.962894, 32.274124, 24.368710>,  <27.718306, 32.258961, 24.684853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.962894, 32.274124, 24.368710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780728, 0.133575, 0.610427,
		0.128715, -0.990313, 0.052076,
		0.611470, 0.037914, -0.790358,
		28.146336, 32.285496, 24.131601>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.243578, 31.701166, 24.736456>,  <27.718306, 32.258961, 24.684853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.243578, 31.701166, 24.736456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385443, 31.978548, 24.485590>,  <28.470562, 32.144978, 24.335070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.385443, 31.978548, 24.485590>,  <28.243578, 31.701166, 24.736456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.385443, 31.978548, 24.485590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.855931, 0.029160, 0.516268,
		0.376296, -0.719910, -0.583207,
		0.354660, 0.693454, -0.627166,
		28.491840, 32.186584, 24.297440>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.847965, 31.471897, 24.495222>,  <28.243578, 31.701166, 24.736456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.847965, 31.471897, 24.495222> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843781, 31.871487, 24.477612>,  <28.841270, 32.111240, 24.467045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.843781, 31.871487, 24.477612>,  <28.847965, 31.471897, 24.495222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.843781, 31.871487, 24.477612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901346, 0.028483, 0.432161,
		0.432973, -0.035161, -0.900721,
		-0.010460, 0.998976, -0.044024,
		28.840643, 32.171181, 24.464405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422348, 31.615356, 24.299421>,  <28.847965, 31.471897, 24.495222>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422348, 31.615356, 24.299421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331135, 31.987715, 24.413565>,  <29.276407, 32.211132, 24.482052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.331135, 31.987715, 24.413565>,  <29.422348, 31.615356, 24.299421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.331135, 31.987715, 24.413565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.924868, 0.115489, 0.362329,
		0.304335, 0.346543, -0.887292,
		-0.228035, 0.930897, 0.285359,
		29.262724, 32.266983, 24.499172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.933155, 32.108349, 23.961517>,  <29.422348, 31.615356, 24.299421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.933155, 32.108349, 23.961517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790176, 32.284512, 24.290947>,  <29.704390, 32.390209, 24.488604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790176, 32.284512, 24.290947>,  <29.933155, 32.108349, 23.961517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790176, 32.284512, 24.290947> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910860, -0.030408, 0.411593,
		0.206312, 0.897282, -0.390282,
		-0.357448, 0.440409, 0.823572,
		29.682941, 32.416634, 24.538019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.379007, 32.656677, 24.148285>,  <29.933155, 32.108349, 23.961517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.379007, 32.656677, 24.148285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179712, 32.549751, 24.478207>,  <30.060135, 32.485596, 24.676159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.179712, 32.549751, 24.478207>,  <30.379007, 32.656677, 24.148285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.179712, 32.549751, 24.478207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834879, 0.108779, 0.539578,
		-0.233961, 0.957449, 0.168981,
		-0.498236, -0.267319, 0.824804,
		30.030241, 32.469555, 24.725647>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.485847, 33.150181, 24.675953>,  <30.379007, 32.656677, 24.148285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.485847, 33.150181, 24.675953> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386301, 32.817154, 24.873898>,  <30.326572, 32.617336, 24.992664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.386301, 32.817154, 24.873898>,  <30.485847, 33.150181, 24.675953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386301, 32.817154, 24.873898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761992, 0.147082, 0.630663,
		-0.597857, 0.534034, 0.597809,
		-0.248868, -0.832571, 0.494863,
		30.311640, 32.567383, 25.022356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.336535, 33.337357, 25.453434>,  <30.485847, 33.150181, 24.675953>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.336535, 33.337357, 25.453434> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425522, 32.948227, 25.427759>,  <30.478914, 32.714748, 25.412354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.425522, 32.948227, 25.427759>,  <30.336535, 33.337357, 25.453434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.425522, 32.948227, 25.427759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590290, 0.082007, 0.803015,
		-0.775929, -0.216535, 0.592493,
		0.222470, -0.972824, -0.064186,
		30.492262, 32.656380, 25.408503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389854, 33.080513, 26.056793>,  <30.336535, 33.337357, 25.453434>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389854, 33.080513, 26.056793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589191, 32.789661, 25.867929>,  <30.708794, 32.615150, 25.754612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.589191, 32.789661, 25.867929>,  <30.389854, 33.080513, 26.056793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.589191, 32.789661, 25.867929> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729862, 0.057919, 0.681137,
		-0.467930, -0.684049, 0.559570,
		0.498341, -0.727133, -0.472159,
		30.738693, 32.571522, 25.726282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.461332, 32.511768, 26.548206>,  <30.389854, 33.080513, 26.056793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.461332, 32.511768, 26.548206> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749331, 32.477699, 26.272713>,  <30.922129, 32.457256, 26.107416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.749331, 32.477699, 26.272713>,  <30.461332, 32.511768, 26.548206>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.749331, 32.477699, 26.272713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689272, -0.027624, 0.723976,
		-0.080695, -0.995983, 0.038824,
		0.719995, -0.085181, -0.688732,
		30.965328, 32.452145, 26.066093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.845039, 31.795044, 26.666050>,  <30.461332, 32.511768, 26.548206>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.845039, 31.795044, 26.666050> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080624, 32.055489, 26.474558>,  <31.221973, 32.211754, 26.359663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.080624, 32.055489, 26.474558>,  <30.845039, 31.795044, 26.666050>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.080624, 32.055489, 26.474558> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733488, -0.181962, 0.654893,
		0.339299, -0.736847, -0.584751,
		0.588958, 0.651112, -0.478729,
		31.257311, 32.250824, 26.330938>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.497986, 31.480312, 26.809263>,  <30.845039, 31.795044, 26.666050>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.497986, 31.480312, 26.809263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587481, 31.830969, 26.638878>,  <31.641178, 32.041363, 26.536648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.587481, 31.830969, 26.638878>,  <31.497986, 31.480312, 26.809263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.587481, 31.830969, 26.638878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850564, 0.037778, 0.524512,
		0.475900, -0.479661, -0.737186,
		0.223739, 0.876640, -0.425961,
		31.654602, 32.093960, 26.511089>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.151600, 31.464720, 26.552559>,  <31.497986, 31.480312, 26.809263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.151600, 31.464720, 26.552559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065746, 31.844446, 26.644411>,  <32.014233, 32.072281, 26.699522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.065746, 31.844446, 26.644411>,  <32.151600, 31.464720, 26.552559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.065746, 31.844446, 26.644411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803346, 0.037875, 0.594307,
		0.555488, 0.312034, -0.770758,
		-0.214637, 0.949316, 0.229632,
		32.001354, 32.129242, 26.713301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.854313, 31.769934, 26.476288>,  <32.151600, 31.464720, 26.552559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.854313, 31.769934, 26.476288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664539, 32.067955, 26.663822>,  <32.550674, 32.246769, 26.776342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.664539, 32.067955, 26.663822>,  <32.854313, 31.769934, 26.476288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.664539, 32.067955, 26.663822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.733437, 0.040033, 0.678578,
		0.486807, 0.665803, -0.565442,
		-0.474436, 0.745052, 0.468837,
		32.522209, 32.291470, 26.804474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.382336, 32.368649, 26.527203>,  <32.854313, 31.769934, 26.476288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.382336, 32.368649, 26.527203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100739, 32.413288, 26.807758>,  <32.931782, 32.440071, 26.976091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.100739, 32.413288, 26.807758>,  <33.382336, 32.368649, 26.527203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.100739, 32.413288, 26.807758> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.709593, 0.151674, 0.688093,
		-0.029591, 0.982110, -0.185967,
		-0.703990, 0.111599, 0.701387,
		32.889542, 32.446770, 27.018175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602642, 32.911472, 26.933022>,  <33.382336, 32.368649, 26.527203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602642, 32.911472, 26.933022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317070, 32.757122, 27.166739>,  <33.145725, 32.664513, 27.306969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.317070, 32.757122, 27.166739>,  <33.602642, 32.911472, 26.933022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317070, 32.757122, 27.166739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.546081, 0.215470, 0.809548,
		-0.438284, 0.897034, 0.056889,
		-0.713935, -0.385878, 0.584291,
		33.102890, 32.641357, 27.342026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.347836, 33.385742, 27.447332>,  <33.602642, 32.911472, 26.933022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.347836, 33.385742, 27.447332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294292, 33.025925, 27.613659>,  <33.262169, 32.810036, 27.713455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.294292, 33.025925, 27.613659>,  <33.347836, 33.385742, 27.447332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.294292, 33.025925, 27.613659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.534358, 0.287856, 0.794733,
		-0.834593, 0.328574, 0.442147,
		-0.133854, -0.899543, 0.415819,
		33.254135, 32.756062, 27.738405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072884, 33.343262, 28.066210>,  <33.347836, 33.385742, 27.447332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072884, 33.343262, 28.066210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257900, 32.990986, 28.107075>,  <33.368912, 32.779621, 28.131594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.257900, 32.990986, 28.107075>,  <33.072884, 33.343262, 28.066210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.257900, 32.990986, 28.107075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492900, 0.351220, 0.796049,
		-0.736955, -0.317851, 0.596546,
		0.462544, -0.880690, 0.102165,
		33.396664, 32.726780, 28.137724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170868, 33.331772, 28.778078>,  <33.072884, 33.343262, 28.066210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170868, 33.331772, 28.778078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395817, 33.026943, 28.649708>,  <33.530785, 32.844048, 28.572685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.395817, 33.026943, 28.649708>,  <33.170868, 33.331772, 28.778078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.395817, 33.026943, 28.649708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547652, 0.052476, 0.835059,
		-0.619533, -0.645365, 0.446860,
		0.562367, -0.762070, -0.320925,
		33.564526, 32.798321, 28.553431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.176117, 32.826477, 29.285458>,  <33.170868, 33.331772, 28.778078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.176117, 32.826477, 29.285458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516045, 32.738300, 29.093950>,  <33.720001, 32.685394, 28.979046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.516045, 32.738300, 29.093950>,  <33.176117, 32.826477, 29.285458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.516045, 32.738300, 29.093950> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.473774, -0.078580, 0.877133,
		-0.230975, -0.972231, 0.037659,
		0.849816, -0.220438, -0.478768,
		33.770988, 32.672169, 28.950319>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.511089, 32.347015, 29.673349>,  <33.176117, 32.826477, 29.285458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.511089, 32.347015, 29.673349> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812439, 32.501366, 29.460361>,  <33.993248, 32.593975, 29.332569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.812439, 32.501366, 29.460361>,  <33.511089, 32.347015, 29.673349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.812439, 32.501366, 29.460361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547519, 0.080378, 0.832924,
		0.364204, -0.919042, -0.150719,
		0.753378, 0.385876, -0.532468,
		34.038452, 32.617126, 29.300621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.107018, 32.049278, 29.979536>,  <33.511089, 32.347015, 29.673349>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.107018, 32.049278, 29.979536> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266918, 32.359646, 29.784330>,  <34.362858, 32.545864, 29.667208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.266918, 32.359646, 29.784330>,  <34.107018, 32.049278, 29.979536>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.266918, 32.359646, 29.784330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.628824, 0.155229, 0.761896,
		0.666920, -0.611440, -0.425862,
		0.399747, 0.775916, -0.488013,
		34.386841, 32.592419, 29.637926>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.772606, 31.839081, 29.926617>,  <34.107018, 32.049278, 29.979536>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.772606, 31.839081, 29.926617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775032, 32.238449, 29.904276>,  <34.776485, 32.478069, 29.890871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.775032, 32.238449, 29.904276>,  <34.772606, 31.839081, 29.926617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.775032, 32.238449, 29.904276> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772164, 0.030815, 0.634676,
		0.635395, -0.046973, -0.770758,
		0.006061, 0.998421, -0.055851,
		34.776852, 32.537975, 29.887520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.387554, 31.957462, 30.155970>,  <34.772606, 31.839081, 29.926617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.387554, 31.957462, 30.155970> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233814, 32.324532, 30.196268>,  <35.141571, 32.544773, 30.220448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.233814, 32.324532, 30.196268>,  <35.387554, 31.957462, 30.155970>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.233814, 32.324532, 30.196268> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722110, 0.230850, 0.652124,
		0.575179, 0.323395, -0.751389,
		-0.384351, 0.917673, 0.100747,
		35.118507, 32.599834, 30.226492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974586, 32.496258, 30.060789>,  <35.387554, 31.957462, 30.155970>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974586, 32.496258, 30.060789> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683857, 32.667164, 30.275887>,  <35.509418, 32.769707, 30.404945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.683857, 32.667164, 30.275887>,  <35.974586, 32.496258, 30.060789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.683857, 32.667164, 30.275887> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686819, 0.451505, 0.569581,
		0.000566, 0.783321, -0.621618,
		-0.726828, 0.427261, 0.537744,
		35.465809, 32.795341, 30.437210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.114841, 33.217796, 30.077133>,  <35.974586, 32.496258, 30.060789>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.114841, 33.217796, 30.077133> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878941, 33.140846, 30.390869>,  <35.737400, 33.094677, 30.579111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878941, 33.140846, 30.390869>,  <36.114841, 33.217796, 30.077133>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878941, 33.140846, 30.390869> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.616263, 0.520484, 0.591029,
		-0.521934, 0.831919, -0.188403,
		-0.589750, -0.192372, 0.784339,
		35.702015, 33.083134, 30.626171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.000206, 33.863411, 30.483316>,  <36.114841, 33.217796, 30.077133>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.000206, 33.863411, 30.483316> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929058, 33.574551, 30.750708>,  <35.886372, 33.401234, 30.911142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.929058, 33.574551, 30.750708>,  <36.000206, 33.863411, 30.483316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.929058, 33.574551, 30.750708> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485729, 0.526362, 0.697862,
		-0.855822, 0.448825, 0.257147,
		-0.177866, -0.722149, 0.668480,
		35.875698, 33.357906, 30.951252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777084, 34.236240, 31.044416>,  <36.000206, 33.863411, 30.483316>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777084, 34.236240, 31.044416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843971, 33.887878, 31.229269>,  <35.884102, 33.678860, 31.340179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.843971, 33.887878, 31.229269>,  <35.777084, 34.236240, 31.044416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.843971, 33.887878, 31.229269> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356763, 0.490415, 0.795118,
		-0.919108, 0.031913, 0.392712,
		0.167217, -0.870904, 0.462130,
		35.894138, 33.626606, 31.367908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.566891, 34.279186, 31.827084>,  <35.777084, 34.236240, 31.044416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.566891, 34.279186, 31.827084> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830013, 33.977951, 31.822180>,  <35.987888, 33.797211, 31.819237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.830013, 33.977951, 31.822180>,  <35.566891, 34.279186, 31.827084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.830013, 33.977951, 31.822180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356153, 0.296668, 0.886083,
		-0.663659, -0.587239, 0.463365,
		0.657808, -0.753086, -0.012260,
		36.027355, 33.752026, 31.818502>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.577389, 33.947079, 32.558559>,  <35.566891, 34.279186, 31.827084>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.577389, 33.947079, 32.558559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925026, 33.861874, 32.379986>,  <36.133610, 33.810749, 32.272842>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.925026, 33.861874, 32.379986>,  <35.577389, 33.947079, 32.558559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.925026, 33.861874, 32.379986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.494178, 0.413167, 0.764906,
		0.021513, -0.885392, 0.464348,
		0.869094, -0.213015, -0.446430,
		36.185753, 33.797970, 32.246056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.974079, 33.553391, 33.054249>,  <35.577389, 33.947079, 32.558559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.974079, 33.553391, 33.054249> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221069, 33.734379, 32.796879>,  <36.369263, 33.842972, 32.642456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.221069, 33.734379, 32.796879>,  <35.974079, 33.553391, 33.054249>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.221069, 33.734379, 32.796879> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480317, 0.430883, 0.763960,
		0.622911, -0.780774, 0.048730,
		0.617477, 0.452473, -0.643421,
		36.406311, 33.870121, 32.603851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.543533, 33.664589, 33.432793>,  <35.974079, 33.553391, 33.054249>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.543533, 33.664589, 33.432793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640617, 33.882210, 33.111519>,  <36.698868, 34.012783, 32.918755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.640617, 33.882210, 33.111519>,  <36.543533, 33.664589, 33.432793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.640617, 33.882210, 33.111519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.512566, 0.631014, 0.582320,
		0.823630, -0.553020, -0.125706,
		0.242712, 0.544050, -0.803182,
		36.713432, 34.045425, 32.870564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.149494, 33.777878, 33.561916>,  <36.543533, 33.664589, 33.432793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.149494, 33.777878, 33.561916> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064449, 34.050468, 33.281803>,  <37.013424, 34.214024, 33.113735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.064449, 34.050468, 33.281803>,  <37.149494, 33.777878, 33.561916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.064449, 34.050468, 33.281803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327737, 0.724884, 0.605914,
		0.920536, -0.100686, -0.377460,
		-0.212608, 0.681473, -0.700281,
		37.000668, 34.254910, 33.071720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740208, 34.189629, 33.483448>,  <37.149494, 33.777878, 33.561916>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740208, 34.189629, 33.483448> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411270, 34.390884, 33.377163>,  <37.213909, 34.511639, 33.313393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.411270, 34.390884, 33.377163>,  <37.740208, 34.189629, 33.483448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.411270, 34.390884, 33.377163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165491, 0.658291, 0.734347,
		0.544398, 0.559911, -0.624605,
		-0.822340, 0.503144, -0.265712,
		37.164570, 34.541828, 33.297451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.189907, 33.826912, 33.088200>,  <37.740208, 34.189629, 33.483448>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.189907, 33.826912, 33.088200> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845459, 33.688374, 32.939331>,  <37.638790, 33.605251, 32.850010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.845459, 33.688374, 32.939331>,  <38.189907, 33.826912, 33.088200>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.845459, 33.688374, 32.939331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493423, -0.745728, -0.447687,
		-0.122485, -0.569152, 0.813059,
		-0.861122, -0.346347, -0.372172,
		37.587124, 33.584469, 32.827679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.032051, 33.163727, 33.326645>,  <38.189907, 33.826912, 33.088200>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.032051, 33.163727, 33.326645> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871006, 33.193974, 32.961750>,  <37.774380, 33.212120, 32.742813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.871006, 33.193974, 32.961750>,  <38.032051, 33.163727, 33.326645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.871006, 33.193974, 32.961750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576065, -0.753554, -0.316709,
		-0.711370, -0.653023, 0.259834,
		-0.402618, 0.075616, -0.912240,
		37.750221, 33.216660, 32.688080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.517639, 32.604687, 33.221455>,  <38.032051, 33.163727, 33.326645>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.517639, 32.604687, 33.221455> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764713, 32.717899, 32.927963>,  <37.912960, 32.785828, 32.751869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.764713, 32.717899, 32.927963>,  <37.517639, 32.604687, 33.221455>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.764713, 32.717899, 32.927963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.303634, -0.946477, -0.109487,
		-0.725442, -0.155155, -0.670567,
		0.617689, 0.283033, -0.733725,
		37.950020, 32.802811, 32.707848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.414391, 32.284691, 32.639606>,  <37.517639, 32.604687, 33.221455>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.414391, 32.284691, 32.639606> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791962, 32.408409, 32.593422>,  <38.018505, 32.482639, 32.565712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.791962, 32.408409, 32.593422>,  <37.414391, 32.284691, 32.639606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.791962, 32.408409, 32.593422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296327, -0.947930, -0.116699,
		-0.145540, 0.075943, -0.986433,
		0.943932, 0.309292, -0.115458,
		38.075142, 32.501198, 32.558784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.851395, 32.199303, 31.889261>,  <37.414391, 32.284691, 32.639606>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.851395, 32.199303, 31.889261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051071, 32.130978, 32.229057>,  <38.170876, 32.089985, 32.432934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051071, 32.130978, 32.229057>,  <37.851395, 32.199303, 31.889261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051071, 32.130978, 32.229057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223033, -0.922016, -0.316452,
		0.837298, 0.347434, -0.422163,
		0.499188, -0.170809, 0.849491,
		38.200829, 32.079735, 32.483906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.581387, 31.959126, 31.843508>,  <37.851395, 32.199303, 31.889261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.581387, 31.959126, 31.843508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461079, 31.832424, 32.203331>,  <38.388893, 31.756403, 32.419224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.461079, 31.832424, 32.203331>,  <38.581387, 31.959126, 31.843508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.461079, 31.832424, 32.203331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233553, -0.938976, -0.252542,
		0.924658, 0.134139, 0.356390,
		-0.300766, -0.316751, 0.899560,
		38.370850, 31.737398, 32.473198>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.135845, 31.624687, 32.144478>,  <38.581387, 31.959126, 31.843508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.135845, 31.624687, 32.144478> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818165, 31.440859, 32.303493>,  <38.627556, 31.330561, 32.398903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.818165, 31.440859, 32.303493>,  <39.135845, 31.624687, 32.144478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.818165, 31.440859, 32.303493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365121, -0.883866, -0.292348,
		0.485730, -0.087031, 0.869766,
		-0.794200, -0.459572, 0.397543,
		38.579906, 31.302988, 32.422756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273632, 32.108047, 32.713116>,  <39.135845, 31.624687, 32.144478>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273632, 32.108047, 32.713116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948727, 32.181568, 32.491688>,  <38.753784, 32.225681, 32.358829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.948727, 32.181568, 32.491688>,  <39.273632, 32.108047, 32.713116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.948727, 32.181568, 32.491688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184591, 0.819271, 0.542882,
		0.553310, 0.543148, -0.631537,
		-0.812265, 0.183806, -0.553571,
		38.705048, 32.236710, 32.325615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.372166, 32.794701, 32.493324>,  <39.273632, 32.108047, 32.713116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.372166, 32.794701, 32.493324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978550, 32.725594, 32.510403>,  <38.742382, 32.684128, 32.520649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.978550, 32.725594, 32.510403>,  <39.372166, 32.794701, 32.493324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.978550, 32.725594, 32.510403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.151437, 0.938901, 0.309082,
		-0.093485, 0.297683, -0.950076,
		-0.984036, -0.172771, 0.042693,
		38.683338, 32.673763, 32.523209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.952835, 33.301010, 32.063244>,  <39.372166, 32.794701, 32.493324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.952835, 33.301010, 32.063244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707401, 33.185963, 32.357395>,  <38.560139, 33.116936, 32.533886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.707401, 33.185963, 32.357395>,  <38.952835, 33.301010, 32.063244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.707401, 33.185963, 32.357395> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212527, 0.957091, 0.197000,
		-0.760487, -0.035412, -0.648386,
		-0.613589, -0.287615, 0.735382,
		38.523323, 33.099678, 32.578011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.003571, 33.853817, 32.479965>,  <38.952835, 33.301010, 32.063244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.003571, 33.853817, 32.479965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004543, 33.665901, 32.833073>,  <39.005127, 33.553150, 33.044937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004543, 33.665901, 32.833073>,  <39.003571, 33.853817, 32.479965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004543, 33.665901, 32.833073> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653933, 0.667117, 0.356827,
		-0.756548, -0.578142, -0.305592,
		0.002431, -0.469793, 0.882773,
		39.005272, 33.524963, 33.097904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.478058, 34.438347, 32.652603>,  <39.003571, 33.853817, 32.479965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.478058, 34.438347, 32.652603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625465, 34.756203, 32.845577>,  <38.713909, 34.946915, 32.961361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.625465, 34.756203, 32.845577>,  <38.478058, 34.438347, 32.652603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.625465, 34.756203, 32.845577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866736, -0.106073, -0.487358,
		-0.336098, 0.597748, -0.727829,
		0.368521, 0.794635, 0.482439,
		38.736023, 34.994595, 32.990311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797638, 34.951820, 32.113747>,  <38.478058, 34.438347, 32.652603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.797638, 34.951820, 32.113747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960686, 34.961445, 32.478882>,  <39.058514, 34.967220, 32.697964>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960686, 34.961445, 32.478882>,  <38.797638, 34.951820, 32.113747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960686, 34.961445, 32.478882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903205, -0.157783, -0.399155,
		0.134424, 0.987181, -0.086050,
		0.407615, 0.024064, 0.912837,
		39.082970, 34.968666, 32.752731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.348995, 35.551270, 32.296021>,  <38.797638, 34.951820, 32.113747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.348995, 35.551270, 32.296021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412651, 35.232307, 32.528851>,  <39.450844, 35.040928, 32.668549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412651, 35.232307, 32.528851>,  <39.348995, 35.551270, 32.296021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412651, 35.232307, 32.528851> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904354, -0.118747, -0.409930,
		0.396002, 0.591640, 0.702243,
		0.159141, -0.797409, 0.582076,
		39.460392, 34.993084, 32.703472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672215, 35.632439, 31.899929>,  <39.348995, 35.551270, 32.296021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672215, 35.632439, 31.899929> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646194, 35.584927, 31.503614>,  <38.630585, 35.556419, 31.265825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.646194, 35.584927, 31.503614>,  <38.672215, 35.632439, 31.899929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.646194, 35.584927, 31.503614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.713775, 0.699398, -0.036985,
		0.697348, 0.704793, -0.130276,
		-0.065048, -0.118779, -0.990788,
		38.626678, 35.549294, 31.206379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.672050, 36.308060, 31.613285>,  <38.672215, 35.632439, 31.899929>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.672050, 36.308060, 31.613285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999920, 36.499691, 31.487671>,  <39.196644, 36.614670, 31.412302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.999920, 36.499691, 31.487671>,  <38.672050, 36.308060, 31.613285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.999920, 36.499691, 31.487671> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023867, 0.519177, 0.854333,
		0.572333, -0.707770, 0.414122,
		0.819674, 0.479079, -0.314034,
		39.245823, 36.643414, 31.393461>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.170341, 36.246841, 32.188313>,  <38.672050, 36.308060, 31.613285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.170341, 36.246841, 32.188313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297939, 36.562515, 31.978388>,  <39.374500, 36.751919, 31.852434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.297939, 36.562515, 31.978388>,  <39.170341, 36.246841, 32.188313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.297939, 36.562515, 31.978388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171745, 0.496434, 0.850915,
		0.932065, -0.361573, 0.022822,
		0.318997, 0.789188, -0.524807,
		39.393639, 36.799271, 31.820946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.792320, 36.420944, 32.453125>,  <39.170341, 36.246841, 32.188313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.792320, 36.420944, 32.453125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631584, 36.750523, 32.293301>,  <39.535145, 36.948269, 32.197407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.631584, 36.750523, 32.293301>,  <39.792320, 36.420944, 32.453125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.631584, 36.750523, 32.293301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324551, 0.536161, 0.779229,
		0.856267, 0.183446, -0.482860,
		-0.401837, 0.823941, -0.399559,
		39.511032, 36.997704, 32.173431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324593, 36.950165, 32.404865>,  <39.792320, 36.420944, 32.453125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324593, 36.950165, 32.404865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951614, 37.062550, 32.495739>,  <39.727829, 37.129978, 32.550262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.951614, 37.062550, 32.495739>,  <40.324593, 36.950165, 32.404865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951614, 37.062550, 32.495739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.338934, 0.462283, 0.819401,
		0.125197, 0.841045, -0.526279,
		-0.932443, 0.280960, 0.227182,
		39.671883, 37.146839, 32.563892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597309, 37.709743, 32.563705>,  <40.324593, 36.950165, 32.404865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597309, 37.709743, 32.563705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224995, 37.696915, 32.418045>,  <40.001606, 37.689217, 32.330650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.224995, 37.696915, 32.418045>,  <40.597309, 37.709743, 32.563705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.224995, 37.696915, 32.418045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290340, 0.670122, 0.683110,
		0.222117, 0.741558, -0.633053,
		-0.930788, -0.032070, -0.364150,
		39.945759, 37.687294, 32.308800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.426670, 38.350136, 32.466808>,  <40.597309, 37.709743, 32.563705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.426670, 38.350136, 32.466808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085560, 38.144711, 32.504818>,  <39.880894, 38.021458, 32.527626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.085560, 38.144711, 32.504818>,  <40.426670, 38.350136, 32.466808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.085560, 38.144711, 32.504818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337046, 0.680130, 0.651017,
		-0.398967, 0.523143, -0.753092,
		-0.852775, -0.513561, 0.095026,
		39.829727, 37.990643, 32.533325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.849213, 38.774586, 32.330490>,  <40.426670, 38.350136, 32.466808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.849213, 38.774586, 32.330490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738071, 38.468906, 32.563316>,  <39.671387, 38.285500, 32.703011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.738071, 38.468906, 32.563316>,  <39.849213, 38.774586, 32.330490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.738071, 38.468906, 32.563316> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279636, 0.644027, 0.712062,
		-0.919021, 0.035084, -0.392644,
		-0.277856, -0.764198, 0.582064,
		39.654716, 38.239647, 32.737934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.294823, 39.031689, 32.590092>,  <39.849213, 38.774586, 32.330490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.294823, 39.031689, 32.590092> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414085, 38.740902, 32.837521>,  <39.485641, 38.566429, 32.985977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.414085, 38.740902, 32.837521>,  <39.294823, 39.031689, 32.590092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.414085, 38.740902, 32.837521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090293, 0.623656, 0.776466,
		-0.950238, -0.287357, 0.120305,
		0.298152, -0.726965, 0.618568,
		39.503532, 38.522812, 33.023090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.782688, 38.988575, 33.128014>,  <39.294823, 39.031689, 32.590092>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.782688, 38.988575, 33.128014> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140686, 38.851589, 33.242348>,  <39.355484, 38.769398, 33.310947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140686, 38.851589, 33.242348>,  <38.782688, 38.988575, 33.128014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140686, 38.851589, 33.242348> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010787, 0.657208, 0.753632,
		-0.445946, -0.671413, 0.591892,
		0.894995, -0.342464, 0.285837,
		39.409184, 38.748852, 33.328098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685795, 38.736729, 33.862553>,  <38.782688, 38.988575, 33.128014>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685795, 38.736729, 33.862553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051376, 38.863052, 33.760605>,  <39.270725, 38.938847, 33.699436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.051376, 38.863052, 33.760605>,  <38.685795, 38.736729, 33.862553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.051376, 38.863052, 33.760605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031335, 0.681075, 0.731543,
		0.404616, -0.660607, 0.632364,
		0.913950, 0.315809, -0.254874,
		39.325562, 38.957794, 33.684143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820526, 38.616779, 34.626957>,  <38.685795, 38.736729, 33.862553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820526, 38.616779, 34.626957> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775543, 38.707317, 35.013969>,  <38.748554, 38.761642, 35.246178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.775543, 38.707317, 35.013969>,  <38.820526, 38.616779, 34.626957>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.775543, 38.707317, 35.013969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915569, 0.354760, -0.189416,
		-0.386116, -0.907145, 0.167341,
		-0.112462, 0.226349, 0.967532,
		38.741806, 38.775223, 35.304230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.274651, 38.014519, 34.999950>,  <38.820526, 38.616779, 34.626957>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.274651, 38.014519, 34.999950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987793, 37.817181, 34.803043>,  <38.815678, 37.698780, 34.684898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.987793, 37.817181, 34.803043>,  <39.274651, 38.014519, 34.999950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.987793, 37.817181, 34.803043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437242, -0.231539, 0.869028,
		-0.542705, 0.838454, -0.049663,
		-0.717140, -0.493341, -0.492264,
		38.772652, 37.669178, 34.655365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627045, 37.344490, 34.721985>,  <39.274651, 38.014519, 34.999950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627045, 37.344490, 34.721985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838310, 37.093651, 34.951000>,  <39.965069, 36.943150, 35.088409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.838310, 37.093651, 34.951000>,  <39.627045, 37.344490, 34.721985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.838310, 37.093651, 34.951000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730602, 0.008015, 0.682756,
		-0.432741, -0.778902, -0.453923,
		0.528163, -0.627094, 0.572536,
		39.996758, 36.905521, 35.122761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.387455, 37.496185, 35.514076>,  <39.627045, 37.344490, 34.721985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.387455, 37.496185, 35.514076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458946, 37.108444, 35.446655>,  <39.501842, 36.875801, 35.406204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.458946, 37.108444, 35.446655>,  <39.387455, 37.496185, 35.514076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.458946, 37.108444, 35.446655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703519, -0.245670, 0.666864,
		-0.687834, -0.000612, -0.725868,
		0.178732, -0.969353, -0.168550,
		39.512566, 36.817638, 35.396091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.680954, 37.093834, 35.670284>,  <39.387455, 37.496185, 35.514076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.680954, 37.093834, 35.670284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027847, 36.899632, 35.714458>,  <39.235981, 36.783112, 35.740963>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.027847, 36.899632, 35.714458>,  <38.680954, 37.093834, 35.670284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.027847, 36.899632, 35.714458> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.351670, -0.440240, 0.826146,
		-0.352479, -0.755296, -0.552527,
		0.867229, -0.485506, 0.110440,
		39.288017, 36.753979, 35.747589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.605312, 36.427906, 35.776276>,  <38.680954, 37.093834, 35.670284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.605312, 36.427906, 35.776276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927784, 36.544785, 35.982071>,  <39.121265, 36.614910, 36.105549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.927784, 36.544785, 35.982071>,  <38.605312, 36.427906, 35.776276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.927784, 36.544785, 35.982071> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406114, -0.359104, 0.840307,
		0.430290, -0.886378, -0.170836,
		0.806178, 0.292198, 0.514489,
		39.169636, 36.632442, 36.136417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.729362, 35.919594, 36.278889>,  <38.605312, 36.427906, 35.776276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.729362, 35.919594, 36.278889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970638, 36.217293, 36.393612>,  <39.115402, 36.395912, 36.462444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.970638, 36.217293, 36.393612>,  <38.729362, 35.919594, 36.278889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.970638, 36.217293, 36.393612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160700, -0.238808, 0.957677,
		0.781245, -0.623746, -0.024444,
		0.603185, 0.744252, 0.286804,
		39.151592, 36.440567, 36.479652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.111511, 35.694576, 36.818245>,  <38.729362, 35.919594, 36.278889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.111511, 35.694576, 36.818245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123619, 36.093338, 36.847286>,  <39.130882, 36.332596, 36.864712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.123619, 36.093338, 36.847286>,  <39.111511, 35.694576, 36.818245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.123619, 36.093338, 36.847286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096429, -0.075209, 0.992494,
		0.994880, -0.023040, -0.098407,
		0.030268, 0.996902, 0.072602,
		39.132698, 36.392410, 36.869068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644753, 35.899212, 37.339245>,  <39.111511, 35.694576, 36.818245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644753, 35.899212, 37.339245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389210, 36.206676, 37.326439>,  <39.235886, 36.391155, 37.318756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.389210, 36.206676, 37.326439>,  <39.644753, 35.899212, 37.339245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.389210, 36.206676, 37.326439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035855, 0.011824, 0.999287,
		0.768492, 0.639546, 0.020006,
		-0.638854, 0.768662, -0.032018,
		39.197556, 36.437275, 37.316833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.923740, 36.503613, 37.739265>,  <39.644753, 35.899212, 37.339245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.923740, 36.503613, 37.739265> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523804, 36.509590, 37.742935>,  <39.283840, 36.513176, 37.745136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.523804, 36.509590, 37.742935>,  <39.923740, 36.503613, 37.739265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.523804, 36.509590, 37.742935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.008901, -0.018500, 0.999789,
		0.015107, 0.999717, 0.018364,
		-0.999846, 0.014940, 0.009178,
		39.223850, 36.514072, 37.745689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.687309, 37.031197, 38.108990>,  <39.923740, 36.503613, 37.739265>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.687309, 37.031197, 38.108990> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412769, 36.740368, 38.115685>,  <39.248043, 36.565868, 38.119701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412769, 36.740368, 38.115685>,  <39.687309, 37.031197, 38.108990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412769, 36.740368, 38.115685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174916, -0.142693, 0.974189,
		-0.705920, 0.671566, 0.225115,
		-0.686354, -0.727075, 0.016738,
		39.206863, 36.522247, 38.120705>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.851601, 37.814014, 38.155930>,  <39.687309, 37.031197, 38.108990>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.851601, 37.814014, 38.155930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687416, 38.176559, 38.115871>,  <39.588905, 38.394085, 38.091835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.687416, 38.176559, 38.115871>,  <39.851601, 37.814014, 38.155930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.687416, 38.176559, 38.115871> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.715522, 0.252049, -0.651536,
		-0.565284, -0.339092, -0.751978,
		-0.410466, 0.906360, -0.100149,
		39.564278, 38.448467, 38.085827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.774567, 38.047470, 37.450176>,  <39.851601, 37.814014, 38.155930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.774567, 38.047470, 37.450176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811920, 38.367348, 37.687416>,  <39.834332, 38.559273, 37.829762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.811920, 38.367348, 37.687416>,  <39.774567, 38.047470, 37.450176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.811920, 38.367348, 37.687416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812744, 0.282858, -0.509351,
		-0.575088, 0.529606, -0.623531,
		0.093384, 0.799693, 0.593102,
		39.839935, 38.607254, 37.865345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.864666, 38.623528, 37.070240>,  <39.774567, 38.047470, 37.450176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.864666, 38.623528, 37.070240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049255, 38.723602, 37.410698>,  <40.160007, 38.783649, 37.614971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.049255, 38.723602, 37.410698>,  <39.864666, 38.623528, 37.070240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.049255, 38.723602, 37.410698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804997, 0.285140, -0.520265,
		-0.372861, 0.925257, -0.069818,
		0.461471, 0.250189, 0.851146,
		40.187698, 38.798660, 37.666042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178886, 39.353832, 37.077042>,  <39.864666, 38.623528, 37.070240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178886, 39.353832, 37.077042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382931, 39.102478, 37.311962>,  <40.505356, 38.951664, 37.452915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.382931, 39.102478, 37.311962>,  <40.178886, 39.353832, 37.077042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.382931, 39.102478, 37.311962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.839307, 0.214397, -0.499597,
		0.188023, 0.747775, 0.636773,
		0.510108, -0.628384, 0.587301,
		40.535965, 38.913963, 37.488152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.727749, 39.657284, 37.595459>,  <40.178886, 39.353832, 37.077042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.727749, 39.657284, 37.595459> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807888, 39.281990, 37.482616>,  <40.855972, 39.056816, 37.414913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.807888, 39.281990, 37.482616>,  <40.727749, 39.657284, 37.595459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807888, 39.281990, 37.482616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.724740, 0.335683, -0.601722,
		0.659252, -0.083897, 0.747227,
		0.200349, -0.938231, -0.282104,
		40.867992, 39.000519, 37.397984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.314926, 39.436283, 37.884689>,  <40.727749, 39.657284, 37.595459>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.314926, 39.436283, 37.884689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242203, 39.300903, 37.515388>,  <41.198570, 39.219677, 37.293808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.242203, 39.300903, 37.515388>,  <41.314926, 39.436283, 37.884689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.242203, 39.300903, 37.515388> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677232, 0.637642, -0.367111,
		0.712953, -0.692001, 0.113281,
		-0.181809, -0.338450, -0.923253,
		41.187660, 39.199368, 37.238411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.023396, 39.349457, 37.637501>,  <41.314926, 39.436283, 37.884689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.023396, 39.349457, 37.637501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783188, 39.316551, 37.319351>,  <41.639065, 39.296810, 37.128464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.783188, 39.316551, 37.319351>,  <42.023396, 39.349457, 37.637501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783188, 39.316551, 37.319351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691473, 0.446099, -0.568208,
		0.401554, -0.891196, -0.211009,
		-0.600516, -0.082260, -0.795371,
		41.603035, 39.291874, 37.080738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.272762, 38.882992, 37.075825>,  <42.023396, 39.349457, 37.637501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.272762, 38.882992, 37.075825> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055325, 39.172142, 36.905205>,  <41.924862, 39.345634, 36.802834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.055325, 39.172142, 36.905205>,  <42.272762, 38.882992, 37.075825>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055325, 39.172142, 36.905205> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743274, 0.178492, -0.644736,
		-0.389930, -0.667522, -0.634326,
		-0.543597, 0.722880, -0.426552,
		41.892246, 39.389008, 36.777241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.973732, 39.229584, 36.904522>,  <42.272762, 38.882992, 37.075825>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.973732, 39.229584, 36.904522> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223351, 39.542114, 36.908539>,  <43.373119, 39.729633, 36.910950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.223351, 39.542114, 36.908539>,  <42.973732, 39.229584, 36.904522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.223351, 39.542114, 36.908539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.313247, -0.238369, -0.919270,
		-0.715854, 0.576811, -0.393500,
		0.624043, 0.781326, 0.010046,
		43.410564, 39.776512, 36.911552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934521, 39.596161, 36.312340>,  <42.973732, 39.229584, 36.904522>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934521, 39.596161, 36.312340> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299744, 39.657555, 36.463482>,  <43.518875, 39.694389, 36.554169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.299744, 39.657555, 36.463482>,  <42.934521, 39.596161, 36.312340>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.299744, 39.657555, 36.463482> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407097, -0.287118, -0.867085,
		-0.024593, 0.945519, -0.324637,
		0.913054, 0.153483, 0.377857,
		43.573658, 39.703598, 36.576839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.369217, 39.232464, 36.130783>,  <42.934521, 39.596161, 36.312340>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.369217, 39.232464, 36.130783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317097, 39.593620, 35.966927>,  <42.285824, 39.810314, 35.868614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317097, 39.593620, 35.966927>,  <42.369217, 39.232464, 36.130783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317097, 39.593620, 35.966927> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.660082, -0.229292, -0.715344,
		-0.739807, -0.363603, -0.566108,
		-0.130297, 0.902894, -0.409640,
		42.278008, 39.864487, 35.844036>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.237198, 38.993313, 35.394375>,  <42.369217, 39.232464, 36.130783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.237198, 38.993313, 35.394375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128677, 38.608513, 35.382050>,  <42.063564, 38.377632, 35.374653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.128677, 38.608513, 35.382050>,  <42.237198, 38.993313, 35.394375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.128677, 38.608513, 35.382050> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383071, 0.137293, -0.913459,
		0.882978, -0.236022, -0.405763,
		-0.271305, -0.962000, -0.030814,
		42.047287, 38.319912, 35.372807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.626801, 38.670963, 34.758579>,  <42.237198, 38.993313, 35.394375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.626801, 38.670963, 34.758579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275589, 38.523411, 34.880562>,  <42.064861, 38.434879, 34.953751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.275589, 38.523411, 34.880562>,  <42.626801, 38.670963, 34.758579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.275589, 38.523411, 34.880562> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432637, 0.339228, -0.835314,
		0.204681, -0.865363, -0.457442,
		-0.878026, -0.368879, 0.304955,
		42.012180, 38.412746, 34.972050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.590485, 37.942253, 34.484627>,  <42.626801, 38.670963, 34.758579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.590485, 37.942253, 34.484627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252689, 37.922970, 34.697987>,  <42.050011, 37.911400, 34.826004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.252689, 37.922970, 34.697987>,  <42.590485, 37.942253, 34.484627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.252689, 37.922970, 34.697987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444476, -0.492547, -0.748224,
		0.298798, -0.868950, 0.394521,
		-0.844488, -0.048213, 0.533399,
		41.999344, 37.908504, 34.858006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.264137, 37.623764, 34.451633>,  <42.590485, 37.942253, 34.484627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.264137, 37.623764, 34.451633> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391232, 37.421104, 34.772221>,  <43.467487, 37.299511, 34.964573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.391232, 37.421104, 34.772221>,  <43.264137, 37.623764, 34.451633>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.391232, 37.421104, 34.772221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.858128, -0.205892, -0.470345,
		0.403315, 0.837209, 0.369349,
		0.317731, -0.506646, 0.801472,
		43.486549, 37.269112, 35.012661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.895115, 37.624447, 34.363819>,  <43.264137, 37.623764, 34.451633>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.895115, 37.624447, 34.363819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917622, 37.357155, 34.660549>,  <43.931126, 37.196781, 34.838589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.917622, 37.357155, 34.660549>,  <43.895115, 37.624447, 34.363819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.917622, 37.357155, 34.660549> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804505, -0.409669, -0.430050,
		0.591275, 0.621001, 0.514541,
		0.056271, -0.668228, 0.741825,
		43.934502, 37.156685, 34.883099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.599106, 37.571373, 34.607441>,  <43.895115, 37.624447, 34.363819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.599106, 37.571373, 34.607441> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422203, 37.235538, 34.733620>,  <44.316059, 37.034039, 34.809326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.422203, 37.235538, 34.733620>,  <44.599106, 37.571373, 34.607441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.422203, 37.235538, 34.733620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826509, -0.518090, -0.220150,
		0.348263, 0.163356, 0.923054,
		-0.442262, -0.839582, 0.315447,
		44.289524, 36.983665, 34.828255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.006615, 37.073421, 35.067837>,  <44.599106, 37.571373, 34.607441>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.006615, 37.073421, 35.067837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735222, 36.885757, 34.841721>,  <44.572388, 36.773159, 34.706051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.735222, 36.885757, 34.841721>,  <45.006615, 37.073421, 35.067837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.735222, 36.885757, 34.841721> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722480, -0.565452, -0.397853,
		-0.132986, -0.678345, 0.722609,
		-0.678482, -0.469161, -0.565288,
		44.531677, 36.745010, 34.672134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.297665, 36.428295, 34.991997>,  <45.006615, 37.073421, 35.067837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.297665, 36.428295, 34.991997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032799, 36.471748, 34.695419>,  <44.873878, 36.497822, 34.517471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.032799, 36.471748, 34.695419>,  <45.297665, 36.428295, 34.991997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.032799, 36.471748, 34.695419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522824, -0.641856, -0.560961,
		-0.536841, -0.759091, 0.368215,
		-0.662161, 0.108635, -0.741445,
		44.834152, 36.504341, 34.472984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.186058, 35.804565, 34.860161>,  <45.297665, 36.428295, 34.991997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.186058, 35.804565, 34.860161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101952, 36.020611, 34.534199>,  <45.051487, 36.150238, 34.338623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.101952, 36.020611, 34.534199>,  <45.186058, 35.804565, 34.860161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.101952, 36.020611, 34.534199> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465095, -0.677909, -0.569321,
		-0.859927, -0.498715, -0.108664,
		-0.210265, 0.540114, -0.814902,
		45.038872, 36.182644, 34.289726>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.669128, 35.454956, 34.280220>,  <45.186058, 35.804565, 34.860161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.669128, 35.454956, 34.280220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928818, 35.723919, 34.138023>,  <45.084633, 35.885296, 34.052704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.928818, 35.723919, 34.138023>,  <44.669128, 35.454956, 34.280220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.928818, 35.723919, 34.138023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.548832, -0.737734, -0.393105,
		-0.526586, 0.060107, -0.847994,
		0.649223, 0.672410, -0.355492,
		45.123585, 35.925640, 34.031376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.871716, 35.301487, 33.508015>,  <44.669128, 35.454956, 34.280220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.871716, 35.301487, 33.508015> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164391, 35.519337, 33.671978>,  <45.339996, 35.650047, 33.770355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.164391, 35.519337, 33.671978>,  <44.871716, 35.301487, 33.508015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.164391, 35.519337, 33.671978> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681512, -0.572651, -0.455645,
		-0.013423, 0.612744, -0.790168,
		0.731684, 0.544625, 0.409906,
		45.383896, 35.682724, 33.794949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.394711, 35.325703, 33.018311>,  <44.871716, 35.301487, 33.508015>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.394711, 35.325703, 33.018311> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575954, 35.362705, 33.372967>,  <45.684700, 35.384907, 33.585762>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.575954, 35.362705, 33.372967>,  <45.394711, 35.325703, 33.018311>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.575954, 35.362705, 33.372967> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692016, -0.663489, -0.284422,
		0.561966, 0.742445, -0.364651,
		0.453110, 0.092509, 0.886642,
		45.711887, 35.390457, 33.638958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.004940, 35.558979, 32.851795>,  <45.394711, 35.325703, 33.018311>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.004940, 35.558979, 32.851795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005150, 35.339333, 33.186092>,  <46.005276, 35.207546, 33.386673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.005150, 35.339333, 33.186092>,  <46.004940, 35.558979, 32.851795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.005150, 35.339333, 33.186092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672735, -0.618160, -0.406578,
		0.739883, 0.562449, 0.369086,
		0.000525, -0.549117, 0.835745,
		46.005306, 35.174599, 33.436817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.697952, 35.383553, 33.030613>,  <46.004940, 35.558979, 32.851795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.697952, 35.383553, 33.030613> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432602, 35.115803, 33.164394>,  <46.273392, 34.955151, 33.244663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.432602, 35.115803, 33.164394>,  <46.697952, 35.383553, 33.030613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.432602, 35.115803, 33.164394> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553879, -0.739787, -0.382012,
		0.503137, -0.068171, 0.861514,
		-0.663379, -0.669379, 0.334455,
		46.233589, 34.914989, 33.264732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.187252, 35.816685, 32.633690>,  <46.697952, 35.383553, 33.030613>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.187252, 35.816685, 32.633690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280079, 35.899769, 33.013794>,  <47.335777, 35.949619, 33.241856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.280079, 35.899769, 33.013794>,  <47.187252, 35.816685, 32.633690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.280079, 35.899769, 33.013794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311782, -0.909503, 0.274948,
		0.921377, -0.360082, -0.146308,
		0.232072, 0.207714, 0.950262,
		47.349701, 35.962082, 33.298874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.843372, 35.589241, 33.041576>,  <47.187252, 35.816685, 32.633690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.843372, 35.589241, 33.041576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522038, 35.623734, 33.277275>,  <47.329235, 35.644428, 33.418694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.522038, 35.623734, 33.277275>,  <47.843372, 35.589241, 33.041576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.522038, 35.623734, 33.277275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004465, -0.988561, 0.150756,
		0.595505, 0.123739, 0.793764,
		-0.803339, 0.086232, 0.589246,
		47.281036, 35.649605, 33.454048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.930016, 35.358906, 33.742428>,  <47.843372, 35.589241, 33.041576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.930016, 35.358906, 33.742428> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536636, 35.310993, 33.688057>,  <47.300610, 35.282246, 33.655434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.536636, 35.310993, 33.688057>,  <47.930016, 35.358906, 33.742428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.536636, 35.310993, 33.688057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075293, -0.952612, 0.294722,
		-0.164790, 0.279610, 0.945866,
		-0.983451, -0.119785, -0.135928,
		47.241600, 35.275059, 33.647278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.552170, 35.194611, 34.366386>,  <47.930016, 35.358906, 33.742428>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.552170, 35.194611, 34.366386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375797, 34.990757, 34.070862>,  <47.269974, 34.868446, 33.893547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.375797, 34.990757, 34.070862>,  <47.552170, 35.194611, 34.366386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.375797, 34.990757, 34.070862> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121084, -0.849409, 0.513656,
		-0.889334, 0.137031, 0.436243,
		-0.440935, -0.509634, -0.738816,
		47.243515, 34.837868, 33.849216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.024078, 34.830307, 34.576122>,  <47.552170, 35.194611, 34.366386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.024078, 34.830307, 34.576122> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166592, 34.633667, 34.258282>,  <47.252098, 34.515682, 34.067577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.166592, 34.633667, 34.258282>,  <47.024078, 34.830307, 34.576122>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.166592, 34.633667, 34.258282> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.036425, -0.842456, 0.537533,
		-0.933668, -0.220458, -0.282247,
		0.356283, -0.491596, -0.794604,
		47.273476, 34.486187, 34.019901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.446938, 35.025013, 35.217907>,  <47.024078, 34.830307, 34.576122>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.446938, 35.025013, 35.217907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714851, 34.901680, 34.947704>,  <47.875599, 34.827679, 34.785583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.714851, 34.901680, 34.947704>,  <47.446938, 35.025013, 35.217907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.714851, 34.901680, 34.947704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662841, -0.161779, 0.731074,
		-0.334701, -0.937420, 0.096021,
		0.669789, -0.308338, -0.675508,
		47.915787, 34.809177, 34.745052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<30.951551, 37.009129, 25.275110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269699, 36.980785, 25.034323>,  <31.460588, 36.963779, 24.889851>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.269699, 36.980785, 25.034323>,  <30.951551, 37.009129, 25.275110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269699, 36.980785, 25.034323> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605537, 0.049227, 0.794293,
		-0.026651, -0.996271, 0.082063,
		0.795370, -0.070861, -0.601967,
		31.508310, 36.959526, 24.853733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459721, 36.456501, 25.481056>,  <30.951551, 37.009129, 25.275110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459721, 36.456501, 25.481056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.668201, 36.715019, 25.258112>,  <31.793291, 36.870129, 25.124346>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.668201, 36.715019, 25.258112>,  <31.459721, 36.456501, 25.481056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.668201, 36.715019, 25.258112> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.778644, -0.092759, 0.620572,
		0.349370, -0.757431, -0.551578,
		0.521204, 0.646293, -0.557362,
		31.824562, 36.908909, 25.090904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.078335, 36.156574, 25.412159>,  <31.459721, 36.456501, 25.481056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.078335, 36.156574, 25.412159> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.132034, 36.550514, 25.368263>,  <32.164253, 36.786880, 25.341927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.132034, 36.550514, 25.368263>,  <32.078335, 36.156574, 25.412159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.132034, 36.550514, 25.368263> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630096, 0.000635, 0.776517,
		0.764825, -0.173391, -0.620467,
		0.134247, 0.984853, -0.109738,
		32.172310, 36.845970, 25.335342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.793732, 36.286861, 25.606319>,  <32.078335, 36.156574, 25.412159>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.793732, 36.286861, 25.606319> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.674797, 36.668449, 25.590647>,  <32.603436, 36.897400, 25.581244>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.674797, 36.668449, 25.590647>,  <32.793732, 36.286861, 25.606319>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.674797, 36.668449, 25.590647> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781738, 0.266809, 0.563648,
		0.548156, 0.136966, -0.825085,
		-0.297341, 0.953967, -0.039181,
		32.585594, 36.954639, 25.578892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.471703, 36.623516, 25.648293>,  <32.793732, 36.286861, 25.606319>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.471703, 36.623516, 25.648293> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194786, 36.896286, 25.742712>,  <33.028637, 37.059948, 25.799364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.194786, 36.896286, 25.742712>,  <33.471703, 36.623516, 25.648293>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.194786, 36.896286, 25.742712> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595177, 0.354605, 0.721124,
		0.408048, 0.639715, -0.651354,
		-0.692287, 0.681923, 0.236048,
		32.987099, 37.100864, 25.813526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.808125, 37.306126, 25.712799>,  <33.471703, 36.623516, 25.648293>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.808125, 37.306126, 25.712799> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470295, 37.346046, 25.923222>,  <33.267597, 37.369999, 26.049475>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.470295, 37.346046, 25.923222>,  <33.808125, 37.306126, 25.712799>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.470295, 37.346046, 25.923222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489994, 0.540173, 0.684192,
		-0.215876, 0.835615, -0.505119,
		-0.844573, 0.099804, 0.526057,
		33.216923, 37.375988, 26.081039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.817299, 38.029533, 25.977112>,  <33.808125, 37.306126, 25.712799>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.817299, 38.029533, 25.977112> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594391, 37.805077, 26.221920>,  <33.460648, 37.670403, 26.368805>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.594391, 37.805077, 26.221920>,  <33.817299, 38.029533, 25.977112>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.594391, 37.805077, 26.221920> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540691, 0.314151, 0.780361,
		-0.630161, 0.765785, 0.128338,
		-0.557271, -0.561144, 0.612018,
		33.427208, 37.636734, 26.405525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.831234, 38.416988, 26.579790>,  <33.817299, 38.029533, 25.977112>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.831234, 38.416988, 26.579790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.723198, 38.056152, 26.714422>,  <33.658379, 37.839649, 26.795200>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.723198, 38.056152, 26.714422>,  <33.831234, 38.416988, 26.579790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.723198, 38.056152, 26.714422> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614247, 0.107762, 0.781721,
		-0.741454, 0.417874, 0.525002,
		-0.270086, -0.902091, 0.336579,
		33.642174, 37.785526, 26.815395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.889946, 38.503521, 27.247797>,  <33.831234, 38.416988, 26.579790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.889946, 38.503521, 27.247797> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870937, 38.104198, 27.234400>,  <33.859531, 37.864605, 27.226362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.870937, 38.104198, 27.234400>,  <33.889946, 38.503521, 27.247797>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.870937, 38.104198, 27.234400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.560024, -0.054391, 0.826689,
		-0.827112, 0.020527, 0.561662,
		-0.047519, -0.998309, -0.033492,
		33.856682, 37.804707, 27.224352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.804684, 38.362980, 27.891523>,  <33.889946, 38.503521, 27.247797>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.804684, 38.362980, 27.891523> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.937515, 38.027481, 27.718910>,  <34.017216, 37.826183, 27.615341>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.937515, 38.027481, 27.718910>,  <33.804684, 38.362980, 27.891523>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937515, 38.027481, 27.718910> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537628, -0.207600, 0.817226,
		-0.775034, -0.503392, 0.381994,
		0.332083, -0.838748, -0.431534,
		34.037140, 37.775856, 27.589451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.658699, 37.808224, 28.402285>,  <33.804684, 38.362980, 27.891523>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.658699, 37.808224, 28.402285> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944214, 37.672882, 28.157001>,  <34.115524, 37.591679, 28.009832>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.944214, 37.672882, 28.157001>,  <33.658699, 37.808224, 28.402285>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.944214, 37.672882, 28.157001> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.636631, -0.051466, 0.769450,
		-0.291907, -0.939610, 0.178673,
		0.713787, -0.338356, -0.613207,
		34.158348, 37.571377, 27.973040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.771412, 37.232552, 28.754564>,  <33.658699, 37.808224, 28.402285>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.771412, 37.232552, 28.754564> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.083241, 37.289406, 28.510574>,  <34.270336, 37.323517, 28.364182>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.083241, 37.289406, 28.510574>,  <33.771412, 37.232552, 28.754564>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083241, 37.289406, 28.510574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613990, -0.365678, 0.699496,
		-0.123633, -0.919825, -0.372340,
		0.779571, 0.142133, -0.609973,
		34.317112, 37.332047, 28.327581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140907, 36.600231, 28.805391>,  <33.771412, 37.232552, 28.754564>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140907, 36.600231, 28.805391> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391239, 36.888695, 28.686548>,  <34.541439, 37.061771, 28.615242>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.391239, 36.888695, 28.686548>,  <34.140907, 36.600231, 28.805391>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.391239, 36.888695, 28.686548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587262, -0.185001, 0.787971,
		0.513285, -0.667615, -0.539286,
		0.625830, 0.721156, -0.297106,
		34.578987, 37.105042, 28.597416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.846867, 36.385548, 28.808781>,  <34.140907, 36.600231, 28.805391>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.846867, 36.385548, 28.808781> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857620, 36.784088, 28.841179>,  <34.864071, 37.023212, 28.860619>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.857620, 36.784088, 28.841179>,  <34.846867, 36.385548, 28.808781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857620, 36.784088, 28.841179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.401214, -0.084965, 0.912035,
		0.915590, 0.007981, -0.402034,
		0.026880, 0.996352, 0.080996,
		34.865685, 37.082993, 28.865479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.583332, 36.591545, 28.985334>,  <34.846867, 36.385548, 28.808781>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.583332, 36.591545, 28.985334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388855, 36.925163, 29.089626>,  <35.272171, 37.125336, 29.152203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.388855, 36.925163, 29.089626>,  <35.583332, 36.591545, 28.985334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.388855, 36.925163, 29.089626> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.519011, 0.035570, 0.854027,
		0.703026, 0.550542, -0.450175,
		-0.486191, 0.834049, 0.260731,
		35.242996, 37.175377, 29.167845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.134216, 37.109131, 29.168232>,  <35.583332, 36.591545, 28.985334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.134216, 37.109131, 29.168232> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797836, 37.215137, 29.356939>,  <35.596008, 37.278744, 29.470163>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.797836, 37.215137, 29.356939>,  <36.134216, 37.109131, 29.168232>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.797836, 37.215137, 29.356939> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.530682, 0.233596, 0.814745,
		0.105720, 0.935520, -0.337084,
		-0.840952, 0.265019, 0.471768,
		35.545551, 37.294643, 29.498470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.309521, 37.653191, 29.549515>,  <36.134216, 37.109131, 29.168232>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.309521, 37.653191, 29.549515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957077, 37.548866, 29.707310>,  <35.745609, 37.486271, 29.801987>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.957077, 37.548866, 29.707310>,  <36.309521, 37.653191, 29.549515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.957077, 37.548866, 29.707310> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.381069, 0.102414, 0.918857,
		-0.280046, 0.959943, 0.009147,
		-0.881113, -0.260808, 0.394486,
		35.692741, 37.470623, 29.825655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.131100, 38.120983, 30.097912>,  <36.309521, 37.653191, 29.549515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.131100, 38.120983, 30.097912> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898933, 37.804821, 30.176264>,  <35.759632, 37.615124, 30.223276>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.898933, 37.804821, 30.176264>,  <36.131100, 38.120983, 30.097912>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.898933, 37.804821, 30.176264> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421937, -0.086176, 0.902521,
		-0.696478, 0.606491, 0.383520,
		-0.580420, -0.790407, 0.195881,
		35.724808, 37.567699, 30.235027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.906033, 38.353455, 30.705774>,  <36.131100, 38.120983, 30.097912>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.906033, 38.353455, 30.705774> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834808, 37.959866, 30.709587>,  <35.792076, 37.723713, 30.711874>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.834808, 37.959866, 30.709587>,  <35.906033, 38.353455, 30.705774>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834808, 37.959866, 30.709587> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289442, -0.043115, 0.956224,
		-0.940489, 0.173021, 0.292481,
		-0.178057, -0.983974, 0.009531,
		35.781391, 37.664673, 30.712446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549385, 38.206089, 31.406054>,  <35.906033, 38.353455, 30.705774>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549385, 38.206089, 31.406054> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669544, 37.852123, 31.263681>,  <35.741638, 37.639744, 31.178257>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.669544, 37.852123, 31.263681>,  <35.549385, 38.206089, 31.406054>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.669544, 37.852123, 31.263681> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147605, -0.325542, 0.933935,
		-0.942325, -0.333085, 0.032828,
		0.300393, -0.884916, -0.355932,
		35.759663, 37.586647, 31.156902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.177063, 37.678665, 31.730879>,  <35.549385, 38.206089, 31.406054>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.177063, 37.678665, 31.730879> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523613, 37.517960, 31.612232>,  <35.731544, 37.421535, 31.541044>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.523613, 37.517960, 31.612232>,  <35.177063, 37.678665, 31.730879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.523613, 37.517960, 31.612232> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.257105, -0.150352, 0.954616,
		-0.428124, -0.903318, -0.026966,
		0.866376, -0.401760, -0.296616,
		35.783527, 37.397430, 31.523247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.549145, 37.023041, 31.985487>,  <35.177063, 37.678665, 31.730879>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.549145, 37.023041, 31.985487> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424610, 36.735706, 32.234344>,  <35.349892, 36.563305, 32.383659>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.424610, 36.735706, 32.234344>,  <35.549145, 37.023041, 31.985487>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.424610, 36.735706, 32.234344> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848339, -0.084938, -0.522595,
		0.428244, -0.690491, -0.582949,
		-0.311333, -0.718337, 0.622145,
		35.331211, 36.520206, 32.420986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.395954, 36.376751, 31.549746>,  <35.549145, 37.023041, 31.985487>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.395954, 36.376751, 31.549746> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182606, 36.323727, 31.883917>,  <35.054596, 36.291912, 32.084419>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.182606, 36.323727, 31.883917>,  <35.395954, 36.376751, 31.549746>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.182606, 36.323727, 31.883917> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.735259, -0.415654, -0.535375,
		0.418220, -0.899810, 0.124230,
		-0.533373, -0.132564, 0.835428,
		35.022594, 36.283958, 32.134544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.873013, 35.926418, 31.356256>,  <35.395954, 36.376751, 31.549746>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.873013, 35.926418, 31.356256> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699924, 36.018990, 31.704784>,  <34.596073, 36.074532, 31.913900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.699924, 36.018990, 31.704784>,  <34.873013, 35.926418, 31.356256>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.699924, 36.018990, 31.704784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.891627, -0.252725, -0.375675,
		0.133263, -0.939453, 0.315704,
		-0.432716, 0.231426, 0.871320,
		34.570110, 36.088417, 31.966181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.383492, 35.459225, 31.358438>,  <34.873013, 35.926418, 31.356256>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.383492, 35.459225, 31.358438> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.277828, 35.765232, 31.593376>,  <34.214428, 35.948837, 31.734339>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.277828, 35.765232, 31.593376>,  <34.383492, 35.459225, 31.358438>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.277828, 35.765232, 31.593376> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933298, -0.049163, -0.355723,
		-0.243257, -0.642133, 0.726974,
		-0.264162, 0.765015, 0.587342,
		34.198578, 35.994736, 31.769579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.620132, 35.250107, 31.644312>,  <34.383492, 35.459225, 31.358438>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.620132, 35.250107, 31.644312> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699245, 35.638710, 31.696537>,  <33.746712, 35.871872, 31.727871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.699245, 35.638710, 31.696537>,  <33.620132, 35.250107, 31.644312>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.699245, 35.638710, 31.696537> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.924223, 0.229199, -0.305417,
		-0.326641, -0.060262, 0.943226,
		0.197782, 0.971512, 0.130562,
		33.758579, 35.930164, 31.735706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.137074, 35.494087, 32.016151>,  <33.620132, 35.250107, 31.644312>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.137074, 35.494087, 32.016151> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258873, 35.819775, 31.818434>,  <33.331951, 36.015186, 31.699802>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.258873, 35.819775, 31.818434>,  <33.137074, 35.494087, 32.016151>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.258873, 35.819775, 31.818434> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.934621, 0.155291, -0.319950,
		-0.183749, 0.559405, 0.808271,
		0.304499, 0.814217, -0.494297,
		33.350224, 36.064041, 31.670145>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.476055, 35.823715, 31.986162>,  <33.137074, 35.494087, 32.016151>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.476055, 35.823715, 31.986162> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700756, 36.042191, 31.737608>,  <32.835575, 36.173275, 31.588474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.700756, 36.042191, 31.737608>,  <32.476055, 35.823715, 31.986162>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.700756, 36.042191, 31.737608> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.815785, 0.240774, -0.525854,
		-0.137599, 0.802316, 0.580823,
		0.561748, 0.546184, -0.621387,
		32.869282, 36.206047, 31.551191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.067207, 36.437714, 31.898455>,  <32.476055, 35.823715, 31.986162>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.067207, 36.437714, 31.898455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334869, 36.415810, 31.602013>,  <32.495464, 36.402668, 31.424147>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334869, 36.415810, 31.602013>,  <32.067207, 36.437714, 31.898455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334869, 36.415810, 31.602013> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697604, 0.297399, -0.651846,
		0.256099, 0.953182, 0.160804,
		0.669151, -0.054760, -0.741106,
		32.535614, 36.399384, 31.379681>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.123886, 37.134438, 31.483612>,  <32.067207, 36.437714, 31.898455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.123886, 37.134438, 31.483612> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244781, 36.839676, 31.241743>,  <32.317318, 36.662819, 31.096622>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.244781, 36.839676, 31.241743>,  <32.123886, 37.134438, 31.483612>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.244781, 36.839676, 31.241743> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783125, 0.169711, -0.598259,
		0.543477, 0.654351, -0.525792,
		0.302239, -0.736901, -0.604673,
		32.335453, 36.618607, 31.060341>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.046715, 37.402992, 30.763145>,  <32.123886, 37.134438, 31.483612>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.046715, 37.402992, 30.763145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.060982, 37.005802, 30.718006>,  <32.069542, 36.767490, 30.690922>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.060982, 37.005802, 30.718006>,  <32.046715, 37.402992, 30.763145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.060982, 37.005802, 30.718006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827441, 0.033978, -0.560524,
		0.560419, 0.113371, -0.820413,
		0.035671, -0.992971, -0.112849,
		32.071682, 36.707912, 30.684151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.100418, 37.230206, 29.991463>,  <32.046715, 37.402992, 30.763145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.100418, 37.230206, 29.991463> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929308, 36.931091, 30.194572>,  <31.826643, 36.751625, 30.316439>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.929308, 36.931091, 30.194572>,  <32.100418, 37.230206, 29.991463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.929308, 36.931091, 30.194572> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.653314, -0.132436, -0.745414,
		0.624654, -0.650603, -0.431884,
		-0.427771, -0.747781, 0.507775,
		31.800976, 36.706757, 30.346905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.890484, 36.742912, 29.461334>,  <32.100418, 37.230206, 29.991463>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.890484, 36.742912, 29.461334> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.675436, 36.621258, 29.775906>,  <31.546408, 36.548264, 29.964649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.675436, 36.621258, 29.775906>,  <31.890484, 36.742912, 29.461334>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.675436, 36.621258, 29.775906> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.734541, -0.289038, -0.613927,
		0.414025, -0.907721, -0.068009,
		-0.537618, -0.304136, 0.786428,
		31.514151, 36.530018, 30.011833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.510645, 36.119560, 29.305515>,  <31.890484, 36.742912, 29.461334>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.510645, 36.119560, 29.305515> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321838, 36.272133, 29.623436>,  <31.208555, 36.363678, 29.814188>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<31.321838, 36.272133, 29.623436>,  <31.510645, 36.119560, 29.305515>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.321838, 36.272133, 29.623436> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.872612, -0.330490, -0.359618,
		0.125505, -0.863300, 0.488837,
		-0.472014, 0.381431, 0.794804,
		31.180235, 36.386562, 29.861877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.994736, 35.605461, 29.444723>,  <31.510645, 36.119560, 29.305515>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.994736, 35.605461, 29.444723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.854441, 35.941963, 29.609293>,  <30.770264, 36.143864, 29.708035>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.854441, 35.941963, 29.609293>,  <30.994736, 35.605461, 29.444723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.854441, 35.941963, 29.609293> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.897745, -0.177010, -0.403388,
		-0.266525, -0.510840, 0.817316,
		-0.350740, 0.841255, 0.411427,
		30.749218, 36.194340, 29.732721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.271484, 35.452118, 29.650087>,  <30.994736, 35.605461, 29.444723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.271484, 35.452118, 29.650087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.317968, 35.845360, 29.593506>,  <30.345860, 36.081303, 29.559557>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<30.317968, 35.845360, 29.593506>,  <30.271484, 35.452118, 29.650087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.317968, 35.845360, 29.593506> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672669, -0.026882, -0.739455,
		-0.730761, 0.181085, 0.658177,
		0.116211, 0.983100, -0.141454,
		30.352831, 36.140289, 29.551069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.574038, 35.764259, 29.497377>,  <30.271484, 35.452118, 29.650087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.574038, 35.764259, 29.497377> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.821526, 36.038242, 29.343481>,  <29.970018, 36.202633, 29.251143>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.821526, 36.038242, 29.343481>,  <29.574038, 35.764259, 29.497377>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.821526, 36.038242, 29.343481> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591552, 0.083926, -0.801887,
		-0.516965, 0.723737, 0.457111,
		0.618719, 0.684953, -0.384741,
		30.007141, 36.243729, 29.228058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.132019, 36.275280, 29.197058>,  <29.574038, 35.764259, 29.497377>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.132019, 36.275280, 29.197058> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.484686, 36.340050, 29.019770>,  <29.696285, 36.378910, 28.913397>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.484686, 36.340050, 29.019770>,  <29.132019, 36.275280, 29.197058>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.484686, 36.340050, 29.019770> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467225, 0.168035, -0.868024,
		-0.066077, 0.972391, 0.223806,
		0.881666, 0.161924, -0.443222,
		29.749186, 36.388626, 28.886803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.011871, 36.893169, 28.789942>,  <29.132019, 36.275280, 29.197058>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.011871, 36.893169, 28.789942> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.349583, 36.729324, 28.651716>,  <29.552210, 36.631020, 28.568781>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.349583, 36.729324, 28.651716>,  <29.011871, 36.893169, 28.789942>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.349583, 36.729324, 28.651716> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304771, 0.163399, -0.938304,
		0.440803, 0.897508, 0.013117,
		0.844279, -0.409610, -0.345562,
		29.602867, 36.606441, 28.548048>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.168114, 37.396282, 28.305744>,  <29.011871, 36.893169, 28.789942>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.168114, 37.396282, 28.305744> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.380096, 37.071812, 28.206844>,  <29.507286, 36.877129, 28.147505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<29.380096, 37.071812, 28.206844>,  <29.168114, 37.396282, 28.305744>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.380096, 37.071812, 28.206844> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365896, 0.044299, -0.929601,
		0.765026, 0.583118, -0.273330,
		0.529958, -0.811179, -0.247250,
		29.539083, 36.828457, 28.132669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<30.012220, 37.535648, 27.145452> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928179, 37.179745, 27.307528>,  <29.877754, 36.966202, 27.404774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.928179, 37.179745, 27.307528>,  <30.012220, 37.535648, 27.145452>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.928179, 37.179745, 27.307528> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058557, -0.425147, -0.903228,
		0.975924, -0.166043, 0.141426,
		-0.210102, -0.889764, 0.405189,
		29.865149, 36.912815, 27.429085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.455114, 36.979584, 26.770464>,  <30.012220, 37.535648, 27.145452>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.455114, 36.979584, 26.770464> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153320, 36.784157, 26.945759>,  <29.972244, 36.666901, 27.050936>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.153320, 36.784157, 26.945759>,  <30.455114, 36.979584, 26.770464>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.153320, 36.784157, 26.945759> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247166, -0.407047, -0.879331,
		0.607999, -0.771758, 0.186352,
		-0.754485, -0.488572, 0.438236,
		29.926975, 36.637585, 27.077230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.532602, 36.318054, 26.545816>,  <30.455114, 36.979584, 26.770464>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.532602, 36.318054, 26.545816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146128, 36.348236, 26.644440>,  <29.914244, 36.366344, 26.703613>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.146128, 36.348236, 26.644440>,  <30.532602, 36.318054, 26.545816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146128, 36.348236, 26.644440> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251358, -0.488761, -0.835423,
		0.057472, -0.869149, 0.491200,
		-0.966186, 0.075453, 0.246557,
		29.856272, 36.370872, 26.718407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.198141, 35.615753, 26.341938>,  <30.532602, 36.318054, 26.545816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.198141, 35.615753, 26.341938> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879589, 35.851452, 26.396442>,  <29.688457, 35.992870, 26.429146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.879589, 35.851452, 26.396442>,  <30.198141, 35.615753, 26.341938>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.879589, 35.851452, 26.396442> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447800, -0.423060, -0.787716,
		-0.406514, -0.688338, 0.600781,
		-0.796381, 0.589247, 0.136258,
		29.640675, 36.028225, 26.437321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.499046, 35.194405, 26.254431>,  <30.198141, 35.615753, 26.341938>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.499046, 35.194405, 26.254431> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421642, 35.582012, 26.193048>,  <29.375200, 35.814579, 26.156219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.421642, 35.582012, 26.193048>,  <29.499046, 35.194405, 26.254431>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.421642, 35.582012, 26.193048> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546899, -0.236401, -0.803129,
		-0.814527, -0.071489, 0.575704,
		-0.193512, 0.969022, -0.153458,
		29.363588, 35.872719, 26.147011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.955338, 35.126461, 25.803619>,  <29.499046, 35.194405, 26.254431>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.955338, 35.126461, 25.803619> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021042, 35.511307, 25.716578>,  <29.060465, 35.742214, 25.664352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.021042, 35.511307, 25.716578>,  <28.955338, 35.126461, 25.803619>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.021042, 35.511307, 25.716578> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423937, -0.130335, -0.896265,
		-0.890672, 0.239474, 0.386467,
		0.164262, 0.962115, -0.217607,
		29.070320, 35.799942, 25.651295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.399328, 35.325478, 25.352869>,  <28.955338, 35.126461, 25.803619>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.399328, 35.325478, 25.352869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.661964, 35.619694, 25.286091>,  <28.819546, 35.796223, 25.246023>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.661964, 35.619694, 25.286091>,  <28.399328, 35.325478, 25.352869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.661964, 35.619694, 25.286091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.429737, 0.182916, -0.884233,
		-0.619850, 0.652323, 0.436189,
		0.656591, 0.735538, -0.166947,
		28.858942, 35.840355, 25.236006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.006371, 35.783672, 25.185740>,  <28.399328, 35.325478, 25.352869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.006371, 35.783672, 25.185740> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.358717, 35.908127, 25.043037>,  <28.570124, 35.982800, 24.957417>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.358717, 35.908127, 25.043037>,  <28.006371, 35.783672, 25.185740>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.358717, 35.908127, 25.043037> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.453172, 0.336482, -0.825479,
		-0.136792, 0.888806, 0.437392,
		0.880865, 0.311133, -0.356753,
		28.622976, 36.001465, 24.936012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.957943, 36.539902, 25.098331>,  <28.006371, 35.783672, 25.185740>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.957943, 36.539902, 25.098331> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.228289, 36.362988, 24.862505>,  <28.390495, 36.256840, 24.721008>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.228289, 36.362988, 24.862505>,  <27.957943, 36.539902, 25.098331>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.228289, 36.362988, 24.862505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548401, 0.232646, -0.803201,
		0.492406, 0.866174, -0.085314,
		0.675864, -0.442287, -0.589567,
		28.431047, 36.230301, 24.685635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.834555, 36.787678, 24.536352>,  <27.957943, 36.539902, 25.098331>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.834555, 36.787678, 24.536352> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.058929, 36.485966, 24.399874>,  <28.193554, 36.304939, 24.317987>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.058929, 36.485966, 24.399874>,  <27.834555, 36.787678, 24.536352>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.058929, 36.485966, 24.399874> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553361, -0.035075, -0.832203,
		0.615745, 0.655617, -0.437063,
		0.560936, -0.754279, -0.341196,
		28.227211, 36.259682, 24.297516>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.856760, 36.847073, 23.755960>,  <27.834555, 36.787678, 24.536352>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.856760, 36.847073, 23.755960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983265, 36.470684, 23.804203>,  <28.059168, 36.244850, 23.833149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.983265, 36.470684, 23.804203>,  <27.856760, 36.847073, 23.755960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.983265, 36.470684, 23.804203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574566, -0.291154, -0.764920,
		0.754886, 0.172618, -0.632733,
		0.316261, -0.940974, 0.120608,
		28.078144, 36.188393, 23.840385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.935152, 36.645233, 23.146921>,  <27.856760, 36.847073, 23.755960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.935152, 36.645233, 23.146921> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.908783, 36.291237, 23.331287>,  <27.892962, 36.078838, 23.441908>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.908783, 36.291237, 23.331287>,  <27.935152, 36.645233, 23.146921>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.908783, 36.291237, 23.331287> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749849, -0.260817, -0.608030,
		0.658317, -0.385700, -0.646417,
		-0.065921, -0.884992, 0.460917,
		27.889008, 36.025738, 23.469563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.010006, 36.104836, 22.673220>,  <27.935152, 36.645233, 23.146921>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.010006, 36.104836, 22.673220> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.818897, 35.904957, 22.962227>,  <27.704231, 35.785030, 23.135632>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.818897, 35.904957, 22.962227>,  <28.010006, 36.104836, 22.673220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.818897, 35.904957, 22.962227> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608176, -0.405349, -0.682506,
		0.633921, -0.765501, -0.110242,
		-0.477772, -0.499701, 0.722518,
		27.675566, 35.755047, 23.178982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.058149, 35.363281, 22.429531>,  <28.010006, 36.104836, 22.673220>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.058149, 35.363281, 22.429531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.781719, 35.421352, 22.712753>,  <27.615862, 35.456196, 22.882687>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.781719, 35.421352, 22.712753>,  <28.058149, 35.363281, 22.429531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.781719, 35.421352, 22.712753> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677704, -0.470700, -0.564942,
		0.251266, -0.870268, 0.423673,
		-0.691074, 0.145174, 0.708055,
		27.574398, 35.464905, 22.925169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.791309, 34.681820, 22.487492>,  <28.058149, 35.363281, 22.429531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.791309, 34.681820, 22.487492> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.506935, 34.933300, 22.613544>,  <27.336309, 35.084187, 22.689177>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.506935, 34.933300, 22.613544>,  <27.791309, 34.681820, 22.487492>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.506935, 34.933300, 22.613544> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658257, -0.437185, -0.612834,
		-0.247517, -0.643124, 0.724656,
		-0.710938, 0.628697, 0.315131,
		27.293653, 35.121910, 22.708084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.189550, 34.295296, 22.602472>,  <27.791309, 34.681820, 22.487492>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.189550, 34.295296, 22.602472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.067255, 34.675377, 22.578329>,  <26.993877, 34.903423, 22.563843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.067255, 34.675377, 22.578329>,  <27.189550, 34.295296, 22.602472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.067255, 34.675377, 22.578329> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.625895, -0.248351, -0.739309,
		-0.717481, -0.188259, 0.670656,
		-0.305740, 0.950200, -0.060357,
		26.975533, 34.960438, 22.560223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.564022, 34.150265, 22.439249>,  <27.189550, 34.295296, 22.602472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.564022, 34.150265, 22.439249> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.608360, 34.535698, 22.341902>,  <26.634964, 34.766956, 22.283493>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.608360, 34.535698, 22.341902>,  <26.564022, 34.150265, 22.439249>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.608360, 34.535698, 22.341902> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.591532, -0.132811, -0.795268,
		-0.798625, 0.232114, 0.555266,
		0.110848, 0.963579, -0.243369,
		26.641615, 34.824772, 22.268890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.936583, 34.464890, 22.350763>,  <26.564022, 34.150265, 22.439249>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.936583, 34.464890, 22.350763> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.184185, 34.703651, 22.146593>,  <26.332747, 34.846909, 22.024092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.184185, 34.703651, 22.146593>,  <25.936583, 34.464890, 22.350763>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.184185, 34.703651, 22.146593> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.334346, -0.387796, -0.858969,
		-0.710665, 0.702365, -0.040475,
		0.619005, 0.596907, -0.510426,
		26.369886, 34.882725, 21.993465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.480381, 34.910255, 21.882002>,  <25.936583, 34.464890, 22.350763>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.480381, 34.910255, 21.882002> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.852770, 34.851311, 21.748392>,  <26.076204, 34.815945, 21.668226>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.852770, 34.851311, 21.748392>,  <25.480381, 34.910255, 21.882002>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.852770, 34.851311, 21.748392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.357327, -0.180191, -0.916433,
		0.074861, 0.972530, -0.220410,
		0.930974, -0.147363, -0.334022,
		26.132063, 34.807102, 21.648186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.484591, 35.092896, 21.243818>,  <25.480381, 34.910255, 21.882002>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.484591, 35.092896, 21.243818> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.828436, 34.889160, 21.227636>,  <26.034742, 34.766918, 21.217926>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.828436, 34.889160, 21.227636>,  <25.484591, 35.092896, 21.243818>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.828436, 34.889160, 21.227636> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.262608, -0.372502, -0.890101,
		0.438294, 0.775767, -0.453965,
		0.859613, -0.509341, -0.040457,
		26.086319, 34.736359, 21.215500>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.620249, 35.094536, 20.538893>,  <25.484591, 35.092896, 21.243818>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.620249, 35.094536, 20.538893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.847193, 34.801632, 20.689573>,  <25.983358, 34.625889, 20.779982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<25.847193, 34.801632, 20.689573>,  <25.620249, 35.094536, 20.538893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.847193, 34.801632, 20.689573> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121762, -0.527026, -0.841081,
		0.814419, 0.431327, -0.388174,
		0.567359, -0.732257, 0.376701,
		26.017401, 34.581955, 20.802584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.131290, 34.952251, 20.005772>,  <25.620249, 35.094536, 20.538893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.131290, 34.952251, 20.005772> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.067867, 34.626736, 20.229418>,  <26.029814, 34.431427, 20.363605>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.067867, 34.626736, 20.229418>,  <26.131290, 34.952251, 20.005772>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.067867, 34.626736, 20.229418> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150339, -0.539777, -0.828274,
		0.975837, -0.215384, -0.036759,
		-0.158556, -0.813787, 0.559115,
		26.020300, 34.382599, 20.397152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.726126, 34.697201, 19.741508>,  <26.131290, 34.952251, 20.005772>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.726126, 34.697201, 19.741508> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.764454, 35.094959, 19.723648>,  <26.787451, 35.333614, 19.712933>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.764454, 35.094959, 19.723648>,  <26.726126, 34.697201, 19.741508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.764454, 35.094959, 19.723648> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649785, -0.096470, -0.753972,
		-0.754054, 0.043235, -0.655387,
		0.095823, 0.994396, -0.044650,
		26.793201, 35.393280, 19.710253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.387781, 34.941330, 19.035202>,  <26.726126, 34.697201, 19.741508>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.387781, 34.941330, 19.035202> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.683754, 35.174633, 19.169256>,  <26.861338, 35.314613, 19.249689>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<26.683754, 35.174633, 19.169256>,  <26.387781, 34.941330, 19.035202>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.683754, 35.174633, 19.169256> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.602201, -0.352336, -0.716389,
		-0.299756, 0.731898, -0.611941,
		0.739933, 0.583253, 0.335135,
		26.905733, 35.349609, 19.269796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.057991, 34.978806, 18.857044>,  <26.387781, 34.941330, 19.035202>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.057991, 34.978806, 18.857044> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.282433, 35.143547, 18.569839>,  <27.417097, 35.242390, 18.397516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.282433, 35.143547, 18.569839>,  <27.057991, 34.978806, 18.857044>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.282433, 35.143547, 18.569839> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.803564, -0.062885, 0.591887,
		0.198616, -0.909079, -0.366234,
		0.561102, 0.411851, -0.718013,
		27.450764, 35.267101, 18.354435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.626623, 34.762676, 19.020754>,  <27.057991, 34.978806, 18.857044>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.626623, 34.762676, 19.020754> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755085, 35.048286, 18.771906>,  <27.832163, 35.219650, 18.622597>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<27.755085, 35.048286, 18.771906>,  <27.626623, 34.762676, 19.020754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.755085, 35.048286, 18.771906> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.794756, 0.154028, 0.587059,
		0.514997, -0.682969, -0.518007,
		0.321156, 0.714023, -0.622118,
		27.851431, 35.262493, 18.585270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276630, 34.595200, 18.920549>,  <27.626623, 34.762676, 19.020754>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276630, 34.595200, 18.920549> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.264288, 34.982674, 18.822008>,  <28.256884, 35.215160, 18.762884>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.264288, 34.982674, 18.822008>,  <28.276630, 34.595200, 18.920549>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.264288, 34.982674, 18.822008> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868419, 0.148008, 0.473225,
		0.494870, -0.199335, -0.845795,
		-0.030854, 0.968689, -0.246351,
		28.255032, 35.273281, 18.748102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.957041, 34.793251, 18.603268>,  <28.276630, 34.595200, 18.920549>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.957041, 34.793251, 18.603268> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.786224, 35.136444, 18.717457>,  <28.683735, 35.342361, 18.785971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<28.786224, 35.136444, 18.717457>,  <28.957041, 34.793251, 18.603268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.786224, 35.136444, 18.717457> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874318, 0.311261, 0.372404,
		0.230660, 0.408627, -0.883074,
		-0.427041, 0.857986, 0.285475,
		28.658112, 35.393841, 18.803099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.456688, 35.359711, 18.647970>,  <28.957041, 34.793251, 18.603268>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.456688, 35.359711, 18.647970> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.154409, 35.460621, 18.889725>,  <28.973043, 35.521168, 19.034777>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.154409, 35.460621, 18.889725>,  <29.456688, 35.359711, 18.647970>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.154409, 35.460621, 18.889725> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653850, 0.343457, 0.674179,
		-0.037503, 0.904651, -0.424498,
		-0.755694, 0.252275, 0.604387,
		28.927702, 35.536304, 19.071041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.706753, 35.906353, 18.955313>,  <29.456688, 35.359711, 18.647970>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.706753, 35.906353, 18.955313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391441, 35.850155, 19.194937>,  <29.202253, 35.816437, 19.338711>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.391441, 35.850155, 19.194937>,  <29.706753, 35.906353, 18.955313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.391441, 35.850155, 19.194937> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529165, 0.342039, 0.776527,
		-0.314004, 0.929123, -0.195276,
		-0.788280, -0.140499, 0.599061,
		29.154957, 35.808006, 19.374655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.590193, 36.590137, 19.390089>,  <29.706753, 35.906353, 18.955313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.590193, 36.590137, 19.390089> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.451254, 36.260845, 19.569710>,  <29.367891, 36.063271, 19.677483>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.451254, 36.260845, 19.569710>,  <29.590193, 36.590137, 19.390089>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.451254, 36.260845, 19.569710> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514549, 0.233019, 0.825192,
		-0.783958, 0.517687, 0.342652,
		-0.347346, -0.823227, 0.449052,
		29.347050, 36.013878, 19.704426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.461790, 36.784100, 20.104410>,  <29.590193, 36.590137, 19.390089>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.461790, 36.784100, 20.104410> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.464554, 36.384109, 20.105301>,  <29.466211, 36.144115, 20.105835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.464554, 36.384109, 20.105301>,  <29.461790, 36.784100, 20.104410>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.464554, 36.384109, 20.105301> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462179, 0.005168, 0.886772,
		-0.886760, -0.005096, 0.462202,
		0.006908, -0.999974, 0.002228,
		29.466627, 36.084118, 20.105968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.244598, 36.637436, 20.755911>,  <29.461790, 36.784100, 20.104410>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.244598, 36.637436, 20.755911> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405600, 36.279209, 20.680077>,  <29.502201, 36.064274, 20.634577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.405600, 36.279209, 20.680077>,  <29.244598, 36.637436, 20.755911>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.405600, 36.279209, 20.680077> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.260262, -0.086602, 0.961647,
		-0.877642, -0.436408, 0.198225,
		0.402504, -0.895571, -0.189586,
		29.526350, 36.010536, 20.623201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.978973, 36.180019, 21.271307>,  <29.244598, 36.637436, 20.755911>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.978973, 36.180019, 21.271307> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310102, 36.007233, 21.128134>,  <29.508780, 35.903561, 21.042231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.310102, 36.007233, 21.128134>,  <28.978973, 36.180019, 21.271307>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.310102, 36.007233, 21.128134> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329121, -0.142726, 0.933439,
		-0.454297, -0.890526, 0.024016,
		0.827824, -0.431962, -0.357931,
		29.558451, 35.877644, 21.020754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070765, 35.556850, 21.650360>,  <28.978973, 36.180019, 21.271307>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070765, 35.556850, 21.650360> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432327, 35.666306, 21.518860>,  <29.649265, 35.731979, 21.439960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.432327, 35.666306, 21.518860>,  <29.070765, 35.556850, 21.650360>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.432327, 35.666306, 21.518860> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392444, -0.224858, 0.891867,
		0.170129, -0.935179, -0.310639,
		0.903905, 0.273641, -0.328750,
		29.703499, 35.748398, 21.420235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.524836, 35.082020, 21.959576>,  <29.070765, 35.556850, 21.650360>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.524836, 35.082020, 21.959576> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763279, 35.385426, 21.854273>,  <29.906345, 35.567471, 21.791092>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.763279, 35.385426, 21.854273>,  <29.524836, 35.082020, 21.959576>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.763279, 35.385426, 21.854273> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441486, -0.035794, 0.896554,
		0.670630, -0.650668, -0.356212,
		0.596109, 0.758519, -0.263256,
		29.942112, 35.612980, 21.775295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.167440, 34.925983, 22.219971>,  <29.524836, 35.082020, 21.959576>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.167440, 34.925983, 22.219971> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232100, 35.314125, 22.148094>,  <30.270895, 35.547009, 22.104969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.232100, 35.314125, 22.148094>,  <30.167440, 34.925983, 22.219971>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.232100, 35.314125, 22.148094> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559812, 0.059787, 0.826460,
		0.812699, -0.234190, -0.533549,
		0.161650, 0.970350, -0.179692,
		30.280594, 35.605228, 22.094187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.880030, 35.082581, 22.464170>,  <30.167440, 34.925983, 22.219971>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.880030, 35.082581, 22.464170> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670248, 35.423016, 22.454433>,  <30.544380, 35.627277, 22.448591>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.670248, 35.423016, 22.454433>,  <30.880030, 35.082581, 22.464170>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.670248, 35.423016, 22.454433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488256, 0.324044, 0.810310,
		0.697536, 0.413084, -0.585496,
		-0.524453, 0.851092, -0.024342,
		30.512913, 35.678345, 22.447130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334867, 35.526535, 22.673723>,  <30.880030, 35.082581, 22.464170>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334867, 35.526535, 22.673723> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.999352, 35.739662, 22.718521>,  <30.798042, 35.867538, 22.745399>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.999352, 35.739662, 22.718521>,  <31.334867, 35.526535, 22.673723>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.999352, 35.739662, 22.718521> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446476, 0.555406, 0.701558,
		0.311596, 0.638463, -0.703756,
		-0.838789, 0.532813, 0.111996,
		30.747715, 35.899506, 22.752119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574167, 36.162941, 22.688667>,  <31.334867, 35.526535, 22.673723>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574167, 36.162941, 22.688667> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.205381, 36.182907, 22.842285>,  <30.984110, 36.194885, 22.934456>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.205381, 36.182907, 22.842285>,  <31.574167, 36.162941, 22.688667>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.205381, 36.182907, 22.842285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333204, 0.607639, 0.720937,
		-0.197378, 0.792643, -0.576852,
		-0.921964, 0.049913, 0.384046,
		30.928793, 36.197880, 22.957499>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.574455, 36.854248, 22.886553>,  <31.574167, 36.162941, 22.688667>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.574455, 36.854248, 22.886553> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269657, 36.673363, 23.071966>,  <31.086779, 36.564831, 23.183214>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.269657, 36.673363, 23.071966>,  <31.574455, 36.854248, 22.886553>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.269657, 36.673363, 23.071966> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164598, 0.557034, 0.814015,
		-0.626316, 0.696572, -0.350023,
		-0.761995, -0.452217, 0.463534,
		31.041059, 36.537697, 23.211027>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.168417, 37.417103, 23.151031>,  <31.574455, 36.854248, 22.886553>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.168417, 37.417103, 23.151031> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119568, 37.076790, 23.355486>,  <31.090260, 36.872604, 23.478159>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.119568, 37.076790, 23.355486>,  <31.168417, 37.417103, 23.151031>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.119568, 37.076790, 23.355486> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296045, 0.460324, 0.836934,
		-0.947335, 0.253527, 0.195654,
		-0.122122, -0.850780, 0.511136,
		31.082932, 36.821556, 23.508827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.876432, 37.678730, 23.786757>,  <31.168417, 37.417103, 23.151031>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.876432, 37.678730, 23.786757> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.036139, 37.319351, 23.859844>,  <31.131962, 37.103725, 23.903696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.036139, 37.319351, 23.859844>,  <30.876432, 37.678730, 23.786757>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.036139, 37.319351, 23.859844> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499503, 0.380278, 0.778386,
		-0.768821, -0.219512, 0.600607,
		0.399263, -0.898445, 0.182719,
		31.155918, 37.049816, 23.914660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.813782, 37.638638, 24.512983>,  <30.876432, 37.678730, 23.786757>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.813782, 37.638638, 24.512983> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090765, 37.378494, 24.388063>,  <31.256954, 37.222408, 24.313112>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.090765, 37.378494, 24.388063>,  <30.813782, 37.638638, 24.512983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.090765, 37.378494, 24.388063> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.598149, 0.275500, 0.752541,
		-0.403386, -0.707904, 0.579785,
		0.692458, -0.650362, -0.312300,
		31.298502, 37.183384, 24.294374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<30.444056, 36.804012, 30.859613> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.669950, 36.666859, 30.559347>,  <30.805489, 36.584564, 30.379187>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<30.669950, 36.666859, 30.559347>,  <30.444056, 36.804012, 30.859613>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.669950, 36.666859, 30.559347> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745500, -0.178188, 0.642245,
		-0.353977, -0.922322, 0.154992,
		0.564739, -0.342886, -0.750665,
		30.839373, 36.563992, 30.334148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.831797, 36.253986, 31.100698>,  <30.444056, 36.804012, 30.859613>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.831797, 36.253986, 31.100698> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024019, 36.320599, 30.756296>,  <31.139353, 36.360565, 30.549654>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.024019, 36.320599, 30.756296>,  <30.831797, 36.253986, 31.100698>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.024019, 36.320599, 30.756296> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.869718, -0.216453, 0.443552,
		-0.112503, -0.961985, -0.248852,
		0.480555, 0.166530, -0.861008,
		31.168186, 36.370556, 30.497993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.348293, 35.622395, 30.909105>,  <30.831797, 36.253986, 31.100698>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.348293, 35.622395, 30.909105> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.495413, 35.947277, 30.727980>,  <31.583685, 36.142208, 30.619305>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<31.495413, 35.947277, 30.727980>,  <31.348293, 35.622395, 30.909105>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.495413, 35.947277, 30.727980> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.856344, -0.106015, 0.505406,
		0.362491, -0.573652, -0.734523,
		0.367798, 0.812209, -0.452814,
		31.605753, 36.190941, 30.592134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.001431, 35.442570, 30.608906>,  <31.348293, 35.622395, 30.909105>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.001431, 35.442570, 30.608906> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.010906, 35.840820, 30.645046>,  <32.016594, 36.079773, 30.666731>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.010906, 35.840820, 30.645046>,  <32.001431, 35.442570, 30.608906>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.010906, 35.840820, 30.645046> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861830, -0.066141, 0.502866,
		0.506643, 0.065953, -0.859629,
		0.023691, 0.995628, 0.090350,
		32.018013, 36.139507, 30.672152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.750111, 35.580116, 30.462215>,  <32.001431, 35.442570, 30.608906>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.750111, 35.580116, 30.462215> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.630867, 35.931805, 30.610863>,  <32.559319, 36.142818, 30.700050>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<32.630867, 35.931805, 30.610863>,  <32.750111, 35.580116, 30.462215>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.630867, 35.931805, 30.610863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.824825, 0.041338, 0.563875,
		0.480409, 0.474617, -0.737527,
		-0.298112, 0.879221, 0.371617,
		32.541435, 36.195572, 30.722347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.249901, 36.139481, 30.274082>,  <32.750111, 35.580116, 30.462215>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.249901, 36.139481, 30.274082> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.046368, 36.193169, 30.614216>,  <32.924248, 36.225384, 30.818296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.046368, 36.193169, 30.614216>,  <33.249901, 36.139481, 30.274082>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046368, 36.193169, 30.614216> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.860728, 0.096926, 0.499753,
		-0.015342, 0.986200, -0.164849,
		-0.508834, 0.134223, 0.850337,
		32.893719, 36.233437, 30.869316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.657146, 36.654137, 30.605879>,  <33.249901, 36.139481, 30.274082>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.657146, 36.654137, 30.605879> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.411285, 36.528015, 30.895094>,  <33.263767, 36.452343, 31.068623>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.411285, 36.528015, 30.895094>,  <33.657146, 36.654137, 30.605879>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.411285, 36.528015, 30.895094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747572, 0.059601, 0.661501,
		-0.251671, 0.947116, 0.199082,
		-0.614653, -0.315308, 0.723037,
		33.226891, 36.433422, 31.112005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.798096, 37.113911, 31.128670>,  <33.657146, 36.654137, 30.605879>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.798096, 37.113911, 31.128670> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.673897, 36.771416, 31.293812>,  <33.599377, 36.565918, 31.392897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.673897, 36.771416, 31.293812>,  <33.798096, 37.113911, 31.128670>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.673897, 36.771416, 31.293812> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687833, 0.097400, 0.719305,
		-0.656107, 0.507319, 0.558705,
		-0.310499, -0.856236, 0.412855,
		33.580746, 36.514545, 31.417667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863728, 37.187866, 31.885607>,  <33.798096, 37.113911, 31.128670>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863728, 37.187866, 31.885607> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.841839, 36.791252, 31.838505>,  <33.828705, 36.553284, 31.810244>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<33.841839, 36.791252, 31.838505>,  <33.863728, 37.187866, 31.885607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.841839, 36.791252, 31.838505> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647031, -0.125033, 0.752142,
		-0.760497, -0.035032, 0.648395,
		-0.054722, -0.991534, -0.117754,
		33.825424, 36.493793, 31.803179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.004543, 36.965858, 32.575119>,  <33.863728, 37.187866, 31.885607>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.004543, 36.965858, 32.575119> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.055824, 36.660698, 32.321651>,  <34.086594, 36.477600, 32.169571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.055824, 36.660698, 32.321651>,  <34.004543, 36.965858, 32.575119>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055824, 36.660698, 32.321651> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.751588, -0.342133, 0.563968,
		-0.647054, -0.548565, 0.529526,
		0.128205, -0.762904, -0.633673,
		34.094284, 36.431828, 32.131550>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985947, 36.353329, 33.037525>,  <34.004543, 36.965858, 32.575119>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985947, 36.353329, 33.037525> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.173790, 36.294712, 32.689274>,  <34.286495, 36.259541, 32.480324>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.173790, 36.294712, 32.689274>,  <33.985947, 36.353329, 33.037525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.173790, 36.294712, 32.689274> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789912, -0.370724, 0.488470,
		-0.394344, -0.917109, -0.058340,
		0.469608, -0.146542, -0.870628,
		34.314671, 36.250748, 32.428085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.364273, 35.772354, 33.114307>,  <33.985947, 36.353329, 33.037525>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.364273, 35.772354, 33.114307> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.560398, 35.957470, 32.818897>,  <34.678074, 36.068539, 32.641651>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.560398, 35.957470, 32.818897>,  <34.364273, 35.772354, 33.114307>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560398, 35.957470, 32.818897> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.870305, -0.305244, 0.386518,
		-0.046555, -0.832258, -0.552431,
		0.490309, 0.462788, -0.738528,
		34.707489, 36.096306, 32.597340>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.884640, 35.359665, 32.920330>,  <34.364273, 35.772354, 33.114307>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.884640, 35.359665, 32.920330> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.013725, 35.718800, 32.800499>,  <35.091179, 35.934280, 32.728600>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.013725, 35.718800, 32.800499>,  <34.884640, 35.359665, 32.920330>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.013725, 35.718800, 32.800499> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.912813, -0.211545, 0.349315,
		0.250252, -0.386190, -0.887824,
		0.322717, 0.897834, -0.299580,
		35.110538, 35.988152, 32.710625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529354, 35.432575, 33.202480>,  <34.884640, 35.359665, 32.920330>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529354, 35.432575, 33.202480> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.507210, 35.770485, 32.989578>,  <35.493923, 35.973228, 32.861835>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.507210, 35.770485, 32.989578>,  <35.529354, 35.432575, 33.202480>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.507210, 35.770485, 32.989578> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943059, 0.219350, 0.250050,
		0.327986, -0.488106, -0.808813,
		-0.055362, 0.844771, -0.532256,
		35.490601, 36.023914, 32.829903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.172066, 35.287720, 32.795395>,  <35.529354, 35.432575, 33.202480>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.172066, 35.287720, 32.795395> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475044, 35.078194, 32.951290>,  <36.656830, 34.952477, 33.044827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.475044, 35.078194, 32.951290>,  <36.172066, 35.287720, 32.795395>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.475044, 35.078194, 32.951290> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058651, -0.649106, -0.758433,
		0.650259, 0.551613, -0.522385,
		0.757445, -0.523816, 0.389734,
		36.702278, 34.921047, 33.068211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.589874, 35.098679, 32.191364>,  <36.172066, 35.287720, 32.795395>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.589874, 35.098679, 32.191364> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733459, 34.852051, 32.471649>,  <36.819611, 34.704075, 32.639820>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.733459, 34.852051, 32.471649>,  <36.589874, 35.098679, 32.191364>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.733459, 34.852051, 32.471649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191809, -0.685990, -0.701874,
		0.913431, 0.386347, -0.127980,
		0.358960, -0.616566, 0.700710,
		36.841148, 34.667080, 32.681862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.095020, 34.824486, 31.878059>,  <36.589874, 35.098679, 32.191364>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.095020, 34.824486, 31.878059> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.960896, 34.580204, 32.165005>,  <36.880421, 34.433636, 32.337173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.960896, 34.580204, 32.165005>,  <37.095020, 34.824486, 31.878059>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.960896, 34.580204, 32.165005> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025043, -0.766955, -0.641212,
		0.941776, -0.197038, 0.272460,
		-0.335308, -0.610702, 0.717365,
		36.860302, 34.396992, 32.380215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284985, 34.163235, 31.593756>,  <37.095020, 34.824486, 31.878059>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284985, 34.163235, 31.593756> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040611, 34.084785, 31.900558>,  <36.893990, 34.037716, 32.084641>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.040611, 34.084785, 31.900558>,  <37.284985, 34.163235, 31.593756>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.040611, 34.084785, 31.900558> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313764, -0.829513, -0.462018,
		0.726854, -0.522921, 0.445238,
		-0.610929, -0.196120, 0.767009,
		36.857334, 34.025951, 32.130661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.299103, 33.514267, 31.728619>,  <37.284985, 34.163235, 31.593756>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.299103, 33.514267, 31.728619> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946568, 33.590290, 31.901649>,  <36.735046, 33.635906, 32.005466>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.946568, 33.590290, 31.901649>,  <37.299103, 33.514267, 31.728619>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.946568, 33.590290, 31.901649> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469024, -0.462615, -0.752333,
		0.057129, -0.865947, 0.496862,
		-0.881336, 0.190060, 0.432578,
		36.682167, 33.647308, 32.031422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.926849, 32.857334, 31.795012>,  <37.299103, 33.514267, 31.728619>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.926849, 32.857334, 31.795012> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.642979, 33.139004, 31.803869>,  <36.472656, 33.308006, 31.809183>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.642979, 33.139004, 31.803869>,  <36.926849, 32.857334, 31.795012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.642979, 33.139004, 31.803869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502724, -0.484132, -0.716159,
		-0.493592, -0.519366, 0.697586,
		-0.709673, 0.704184, 0.022134,
		36.430077, 33.350258, 31.810513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.346291, 32.472263, 31.793390>,  <36.926849, 32.857334, 31.795012>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.346291, 32.472263, 31.793390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207066, 32.823662, 31.662487>,  <36.123531, 33.034500, 31.583944>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.207066, 32.823662, 31.662487>,  <36.346291, 32.472263, 31.793390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.207066, 32.823662, 31.662487> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.590441, -0.476575, -0.651349,
		-0.728171, -0.033482, 0.684578,
		-0.348062, 0.878496, -0.327259,
		36.102646, 33.087212, 31.564310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.518223, 32.434097, 31.806639>,  <36.346291, 32.472263, 31.793390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.518223, 32.434097, 31.806639> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614693, 32.729088, 31.554300>,  <35.672573, 32.906082, 31.402897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.614693, 32.729088, 31.554300>,  <35.518223, 32.434097, 31.806639>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.614693, 32.729088, 31.554300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.746049, -0.274851, -0.606521,
		-0.620682, 0.616920, 0.483905,
		0.241173, 0.737473, -0.630848,
		35.687046, 32.950329, 31.365046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.908714, 32.748154, 31.562073>,  <35.518223, 32.434097, 31.806639>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.908714, 32.748154, 31.562073> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169502, 32.840256, 31.273098>,  <35.325977, 32.895515, 31.099712>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.169502, 32.840256, 31.273098>,  <34.908714, 32.748154, 31.562073>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.169502, 32.840256, 31.273098> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714266, -0.133259, -0.687070,
		-0.254472, 0.963963, 0.077580,
		0.651972, 0.230253, -0.722437,
		35.365093, 32.909332, 31.056366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532009, 33.272964, 31.159126>,  <34.908714, 32.748154, 31.562073>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532009, 33.272964, 31.159126> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.825489, 33.122383, 30.932863>,  <35.001575, 33.032036, 30.797106>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.825489, 33.122383, 30.932863>,  <34.532009, 33.272964, 31.159126>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.825489, 33.122383, 30.932863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.661896, -0.207836, -0.720207,
		0.153561, 0.902821, -0.401662,
		0.733698, -0.376454, -0.565658,
		35.045597, 33.009445, 30.763166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.542175, 33.722034, 30.480404>,  <34.532009, 33.272964, 31.159126>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.542175, 33.722034, 30.480404> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.738228, 33.386322, 30.386278>,  <34.855858, 33.184895, 30.329802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.738228, 33.386322, 30.386278>,  <34.542175, 33.722034, 30.480404>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.738228, 33.386322, 30.386278> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545668, -0.084916, -0.833688,
		0.679720, 0.537019, -0.499591,
		0.490130, -0.839285, -0.235315,
		34.885265, 33.134537, 30.315683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.787487, 33.809216, 29.738422>,  <34.542175, 33.722034, 30.480404>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.787487, 33.809216, 29.738422> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.793087, 33.412273, 29.787460>,  <34.796448, 33.174107, 29.816883>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.793087, 33.412273, 29.787460>,  <34.787487, 33.809216, 29.738422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.793087, 33.412273, 29.787460> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286728, -0.121441, -0.950284,
		0.957910, -0.021847, -0.286237,
		0.014000, -0.992358, 0.122593,
		34.797287, 33.114567, 29.824238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.814175, 33.680523, 29.051489>,  <34.787487, 33.809216, 29.738422>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.814175, 33.680523, 29.051489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.711315, 33.330395, 29.215292>,  <34.649597, 33.120319, 29.313574>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.711315, 33.330395, 29.215292>,  <34.814175, 33.680523, 29.051489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.711315, 33.330395, 29.215292> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369667, -0.302428, -0.878569,
		0.892872, -0.377306, -0.245806,
		-0.257151, -0.875316, 0.409507,
		34.634171, 33.067799, 29.338144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.027863, 33.067764, 28.535742>,  <34.814175, 33.680523, 29.051489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.027863, 33.067764, 28.535742> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.721096, 32.950672, 28.764177>,  <34.537037, 32.880417, 28.901237>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<34.721096, 32.950672, 28.764177>,  <35.027863, 33.067764, 28.535742>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.721096, 32.950672, 28.764177> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477216, -0.334838, -0.812495,
		0.429066, -0.895651, 0.117097,
		-0.766921, -0.292733, 0.571087,
		34.491020, 32.862854, 28.935503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451931, 32.430756, 28.472326>,  <35.027863, 33.067764, 28.535742>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451931, 32.430756, 28.472326> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.723812, 32.305866, 28.206839>,  <35.886940, 32.230934, 28.047546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.723812, 32.305866, 28.206839>,  <35.451931, 32.430756, 28.472326>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.723812, 32.305866, 28.206839> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.711825, 0.062488, 0.699571,
		-0.176949, -0.947951, 0.264722,
		0.679701, -0.312224, -0.663718,
		35.927723, 32.212200, 28.007723>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.818058, 31.978989, 28.870443>,  <35.451931, 32.430756, 28.472326>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.818058, 31.978989, 28.870443> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.060818, 32.065769, 28.564604>,  <36.206474, 32.117836, 28.381100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.060818, 32.065769, 28.564604>,  <35.818058, 31.978989, 28.870443>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.060818, 32.065769, 28.564604> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764516, 0.103600, 0.636225,
		0.217241, -0.970670, -0.102988,
		0.606895, 0.216950, -0.764599,
		36.242886, 32.130856, 28.335224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.447292, 31.713852, 29.060390>,  <35.818058, 31.978989, 28.870443>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.447292, 31.713852, 29.060390> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539585, 31.993830, 28.790030>,  <36.594963, 32.161816, 28.627813>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.539585, 31.993830, 28.790030>,  <36.447292, 31.713852, 29.060390>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.539585, 31.993830, 28.790030> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686887, 0.374829, 0.622647,
		0.689164, -0.607934, -0.394295,
		0.230735, 0.699943, -0.675901,
		36.608807, 32.203812, 28.587259>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.159382, 31.667759, 28.912785>,  <36.447292, 31.713852, 29.060390>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.159382, 31.667759, 28.912785> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069660, 32.038971, 28.793819>,  <37.015827, 32.261696, 28.722441>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.069660, 32.038971, 28.793819>,  <37.159382, 31.667759, 28.912785>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.069660, 32.038971, 28.793819> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.793841, 0.351014, 0.496595,
		0.565249, -0.124711, -0.815439,
		-0.224300, 0.928028, -0.297411,
		37.002369, 32.317379, 28.704596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843697, 31.973717, 28.855028>,  <37.159382, 31.667759, 28.912785>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843697, 31.973717, 28.855028> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610165, 32.298218, 28.842310>,  <37.470047, 32.492920, 28.834679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.610165, 32.298218, 28.842310>,  <37.843697, 31.973717, 28.855028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.610165, 32.298218, 28.842310> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736218, 0.545524, 0.400484,
		0.342239, 0.210405, -0.915752,
		-0.583828, 0.811254, -0.031795,
		37.435017, 32.541595, 28.832771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.325851, 32.475693, 28.598049>,  <37.843697, 31.973717, 28.855028>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.325851, 32.475693, 28.598049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.010838, 32.653267, 28.769032>,  <37.821831, 32.759811, 28.871620>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.010838, 32.653267, 28.769032>,  <38.325851, 32.475693, 28.598049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.010838, 32.653267, 28.769032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606327, 0.434019, 0.666330,
		0.110281, 0.783934, -0.610971,
		-0.787531, 0.443932, 0.427457,
		37.774578, 32.786446, 28.897268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.463154, 33.232716, 28.579763>,  <38.325851, 32.475693, 28.598049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.463154, 33.232716, 28.579763> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.198383, 33.151207, 28.868299>,  <38.039520, 33.102303, 29.041422>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.198383, 33.151207, 28.868299>,  <38.463154, 33.232716, 28.579763>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198383, 33.151207, 28.868299> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540201, 0.537473, 0.647538,
		-0.519655, 0.818289, -0.245686,
		-0.661923, -0.203776, 0.721341,
		37.999805, 33.090073, 29.084702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.451385, 33.809921, 28.957968>,  <38.463154, 33.232716, 28.579763>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.451385, 33.809921, 28.957968> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294910, 33.565651, 29.233370>,  <38.201023, 33.419086, 29.398611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.294910, 33.565651, 29.233370>,  <38.451385, 33.809921, 28.957968>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.294910, 33.565651, 29.233370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.454478, 0.522350, 0.721526,
		-0.800262, 0.595165, 0.073202,
		-0.391190, -0.610678, 0.688507,
		38.177555, 33.382446, 29.439922>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.229134, 34.216946, 29.564192>,  <38.451385, 33.809921, 28.957968>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.229134, 34.216946, 29.564192> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274872, 33.844887, 29.703762>,  <38.302315, 33.621651, 29.787504>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.274872, 33.844887, 29.703762>,  <38.229134, 34.216946, 29.564192>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274872, 33.844887, 29.703762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486770, 0.358636, 0.796515,
		-0.866014, 0.078766, 0.493778,
		0.114349, -0.930149, 0.348924,
		38.309177, 33.565842, 29.808439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.130733, 34.277927, 30.239298>,  <38.229134, 34.216946, 29.564192>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.130733, 34.277927, 30.239298> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328480, 33.930817, 30.219032>,  <38.447128, 33.722549, 30.206873>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.328480, 33.930817, 30.219032>,  <38.130733, 34.277927, 30.239298>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.328480, 33.930817, 30.219032> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467052, 0.216015, 0.857438,
		-0.733119, -0.447552, 0.512087,
		0.494367, -0.867776, -0.050665,
		38.476791, 33.670483, 30.203833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.054131, 34.003716, 30.909719>,  <38.130733, 34.277927, 30.239298>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.054131, 34.003716, 30.909719> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375355, 33.843353, 30.733368>,  <38.568089, 33.747135, 30.627556>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.375355, 33.843353, 30.733368>,  <38.054131, 34.003716, 30.909719>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.375355, 33.843353, 30.733368> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559509, 0.252681, 0.789368,
		-0.205058, -0.880584, 0.427226,
		0.803057, -0.400903, -0.440881,
		38.616272, 33.723083, 30.601103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.454239, 33.515373, 31.294182>,  <38.054131, 34.003716, 30.909719>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.454239, 33.515373, 31.294182> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.705517, 33.717720, 31.057716>,  <38.856285, 33.839127, 30.915836>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.705517, 33.717720, 31.057716>,  <38.454239, 33.515373, 31.294182>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.705517, 33.717720, 31.057716> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442157, 0.393080, 0.806216,
		0.640210, -0.767848, 0.023260,
		0.628194, 0.505863, -0.591164,
		38.893974, 33.869480, 30.880367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<33.211575, 31.289078, 25.509029> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536194, 31.355421, 25.284927>,  <33.730965, 31.395227, 25.150465>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.536194, 31.355421, 25.284927>,  <33.211575, 31.289078, 25.509029>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.536194, 31.355421, 25.284927> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570962, -0.021467, 0.820695,
		0.124094, -0.985915, -0.112122,
		0.811543, 0.165861, -0.560257,
		33.779655, 31.405178, 25.116850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.797039, 30.738724, 25.773445>,  <33.211575, 31.289078, 25.509029>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.797039, 30.738724, 25.773445> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980522, 31.035109, 25.577255>,  <34.090611, 31.212940, 25.459541>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.980522, 31.035109, 25.577255>,  <33.797039, 30.738724, 25.773445>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.980522, 31.035109, 25.577255> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599403, 0.149462, 0.786370,
		0.655978, -0.654703, -0.375575,
		0.458705, 0.740962, -0.490475,
		34.118134, 31.257397, 25.430113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.536335, 30.551809, 25.901222>,  <33.797039, 30.738724, 25.773445>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.536335, 30.551809, 25.901222> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534927, 30.925470, 25.758480>,  <34.534081, 31.149668, 25.672834>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.534927, 30.925470, 25.758480>,  <34.536335, 30.551809, 25.901222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.534927, 30.925470, 25.758480> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.595826, 0.288557, 0.749484,
		0.803106, -0.209986, -0.557608,
		-0.003521, 0.934152, -0.356857,
		34.533871, 31.205715, 25.651423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.223156, 30.738653, 25.758980>,  <34.536335, 30.551809, 25.901222>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.223156, 30.738653, 25.758980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029980, 31.082609, 25.825148>,  <34.914074, 31.288982, 25.864847>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.029980, 31.082609, 25.825148>,  <35.223156, 30.738653, 25.758980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.029980, 31.082609, 25.825148> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700549, 0.266071, 0.662145,
		0.525358, 0.435659, -0.730890,
		-0.482939, 0.859888, 0.165418,
		34.885098, 31.340576, 25.874773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.829849, 31.249041, 25.958408>,  <35.223156, 30.738653, 25.758980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.829849, 31.249041, 25.958408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489517, 31.409967, 26.093603>,  <35.285320, 31.506523, 26.174721>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.489517, 31.409967, 26.093603>,  <35.829849, 31.249041, 25.958408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.489517, 31.409967, 26.093603> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.484183, 0.350418, 0.801731,
		0.204113, 0.845782, -0.492940,
		-0.850825, 0.402318, 0.337989,
		35.234268, 31.530663, 26.195000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067551, 31.941566, 26.195446>,  <35.829849, 31.249041, 25.958408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067551, 31.941566, 26.195446> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713932, 31.872389, 26.369141>,  <35.501762, 31.830883, 26.473356>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.713932, 31.872389, 26.369141>,  <36.067551, 31.941566, 26.195446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.713932, 31.872389, 26.369141> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327833, 0.432772, 0.839782,
		-0.333159, 0.884759, -0.325893,
		-0.884042, -0.172942, 0.434235,
		35.448719, 31.820507, 26.499411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.839931, 32.608524, 26.474890>,  <36.067551, 31.941566, 26.195446>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.839931, 32.608524, 26.474890> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639458, 32.334908, 26.686892>,  <35.519173, 32.170738, 26.814093>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.639458, 32.334908, 26.686892>,  <35.839931, 32.608524, 26.474890>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639458, 32.334908, 26.686892> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.412929, 0.349195, 0.841161,
		-0.760461, 0.640432, 0.107448,
		-0.501187, -0.684039, 0.530002,
		35.489101, 32.129696, 26.845892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.589260, 32.920155, 27.169065>,  <35.839931, 32.608524, 26.474890>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.589260, 32.920155, 27.169065> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564735, 32.525723, 27.230896>,  <35.550018, 32.289062, 27.267994>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.564735, 32.525723, 27.230896>,  <35.589260, 32.920155, 27.169065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.564735, 32.525723, 27.230896> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597507, 0.087793, 0.797043,
		-0.799516, 0.141231, 0.583805,
		-0.061314, -0.986076, 0.154578,
		35.546341, 32.229900, 27.277269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.363949, 32.847206, 27.769184>,  <35.589260, 32.920155, 27.169065>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.363949, 32.847206, 27.769184> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539577, 32.494854, 27.698460>,  <35.644955, 32.283443, 27.656025>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.539577, 32.494854, 27.698460>,  <35.363949, 32.847206, 27.769184>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.539577, 32.494854, 27.698460> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.505671, 0.079620, 0.859044,
		-0.742641, -0.466587, 0.480397,
		0.439068, -0.880885, -0.176810,
		35.671299, 32.230587, 27.645416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.769222, 32.459415, 28.202084>,  <35.363949, 32.847206, 27.769184>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.769222, 32.459415, 28.202084> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458832, 32.508995, 28.449469>,  <34.272598, 32.538742, 28.597900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.458832, 32.508995, 28.449469>,  <34.769222, 32.459415, 28.202084>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.458832, 32.508995, 28.449469> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609878, -0.397648, -0.685511,
		0.160963, -0.909128, 0.384159,
		-0.775977, 0.123948, 0.618464,
		34.226040, 32.546181, 28.635008>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.320492, 31.782112, 28.088829>,  <34.769222, 32.459415, 28.202084>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.320492, 31.782112, 28.088829> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109676, 32.091953, 28.228666>,  <33.983185, 32.277859, 28.312569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.109676, 32.091953, 28.228666>,  <34.320492, 31.782112, 28.088829>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.109676, 32.091953, 28.228666> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753224, -0.235272, -0.614249,
		-0.393548, -0.587059, 0.707447,
		-0.527043, 0.774602, 0.349596,
		33.951565, 32.324333, 28.333546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.645195, 31.500538, 28.288559>,  <34.320492, 31.782112, 28.088829>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.645195, 31.500538, 28.288559> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569271, 31.889793, 28.236439>,  <33.523716, 32.123344, 28.205168>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.569271, 31.889793, 28.236439>,  <33.645195, 31.500538, 28.288559>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569271, 31.889793, 28.236439> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.861439, -0.228733, -0.453435,
		-0.471059, 0.026180, 0.881713,
		-0.189806, 0.973137, -0.130299,
		33.512329, 32.181736, 28.197350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.973141, 31.573853, 28.224049>,  <33.645195, 31.500538, 28.288559>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.973141, 31.573853, 28.224049> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052822, 31.936300, 28.074776>,  <33.100632, 32.153770, 27.985212>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.052822, 31.936300, 28.074776>,  <32.973141, 31.573853, 28.224049>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.052822, 31.936300, 28.074776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.848610, -0.030939, -0.528112,
		-0.490079, 0.421887, 0.762780,
		0.199204, 0.906121, -0.373180,
		33.112583, 32.208138, 27.962822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.374744, 31.942453, 28.166662>,  <32.973141, 31.573853, 28.224049>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.374744, 31.942453, 28.166662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587505, 32.167839, 27.913811>,  <32.715164, 32.303070, 27.762100>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.587505, 32.167839, 27.913811>,  <32.374744, 31.942453, 28.166662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.587505, 32.167839, 27.913811> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821034, 0.160403, -0.547881,
		-0.207316, 0.810419, 0.547943,
		0.531905, 0.563465, -0.632127,
		32.747078, 32.336880, 27.724173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.040787, 32.646687, 28.008776>,  <32.374744, 31.942453, 28.166662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.040787, 32.646687, 28.008776> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279053, 32.557877, 27.700001>,  <32.422012, 32.504589, 27.514736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.279053, 32.557877, 27.700001>,  <32.040787, 32.646687, 28.008776>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.279053, 32.557877, 27.700001> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723262, 0.269778, -0.635698,
		0.349395, 0.936976, 0.000113,
		0.595664, -0.222028, -0.771938,
		32.457752, 32.491268, 27.468420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819807, 33.117146, 27.517338>,  <32.040787, 32.646687, 28.008776>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819807, 33.117146, 27.517338> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034489, 32.856880, 27.302456>,  <32.163300, 32.700722, 27.173527>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.034489, 32.856880, 27.302456>,  <31.819807, 33.117146, 27.517338>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.034489, 32.856880, 27.302456> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595730, 0.158667, -0.787357,
		0.597538, 0.742607, -0.302461,
		0.536706, -0.650661, -0.537203,
		32.195499, 32.661682, 27.141294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.800451, 33.373032, 26.941071>,  <31.819807, 33.117146, 27.517338>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.800451, 33.373032, 26.941071> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860929, 32.982399, 26.879841>,  <31.897217, 32.748020, 26.843103>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.860929, 32.982399, 26.879841>,  <31.800451, 33.373032, 26.941071>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.860929, 32.982399, 26.879841> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.683990, 0.008442, -0.729443,
		0.713652, 0.214988, -0.666694,
		0.151193, -0.976580, -0.153075,
		31.906288, 32.689426, 26.833918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.682608, 33.350437, 26.189260>,  <31.800451, 33.373032, 26.941071>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.682608, 33.350437, 26.189260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711302, 32.965546, 26.294306>,  <31.728518, 32.734612, 26.357334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.711302, 32.965546, 26.294306>,  <31.682608, 33.350437, 26.189260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.711302, 32.965546, 26.294306> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.595002, -0.252598, -0.762998,
		0.800516, -0.101522, -0.590650,
		0.071736, -0.962231, 0.262615,
		31.732822, 32.676876, 26.373091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.908298, 33.032215, 25.602766>,  <31.682608, 33.350437, 26.189260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.908298, 33.032215, 25.602766> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720623, 32.751411, 25.817074>,  <31.608019, 32.582928, 25.945658>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.720623, 32.751411, 25.817074>,  <31.908298, 33.032215, 25.602766>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.720623, 32.751411, 25.817074> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565667, -0.226981, -0.792780,
		0.678147, -0.675029, -0.290607,
		-0.469187, -0.702008, 0.535768,
		31.579866, 32.540810, 25.977804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846628, 32.378418, 25.156403>,  <31.908298, 33.032215, 25.602766>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846628, 32.378418, 25.156403> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575632, 32.366940, 25.450392>,  <31.413034, 32.360050, 25.626785>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.575632, 32.366940, 25.450392>,  <31.846628, 32.378418, 25.156403>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.575632, 32.366940, 25.450392> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.717450, -0.194422, -0.668929,
		0.162094, -0.980498, 0.111127,
		-0.677489, -0.028701, 0.734973,
		31.372385, 32.358330, 25.670883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.414608, 31.859653, 24.927509>,  <31.846628, 32.378418, 25.156403>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.414608, 31.859653, 24.927509> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195765, 32.057308, 25.197769>,  <31.064459, 32.175900, 25.359926>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.195765, 32.057308, 25.197769>,  <31.414608, 31.859653, 24.927509>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.195765, 32.057308, 25.197769> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.812386, -0.118899, -0.570870,
		-0.201751, -0.861217, 0.466478,
		-0.547107, 0.494134, 0.675652,
		31.031633, 32.205547, 25.400465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.827333, 31.407297, 25.154127>,  <31.414608, 31.859653, 24.927509>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.827333, 31.407297, 25.154127> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716246, 31.782860, 25.235445>,  <30.649593, 32.008198, 25.284235>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.716246, 31.782860, 25.235445>,  <30.827333, 31.407297, 25.154127>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.716246, 31.782860, 25.235445> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.767311, -0.089471, -0.635003,
		-0.578020, -0.332340, 0.745281,
		-0.277718, 0.938906, 0.203292,
		30.632931, 32.064533, 25.296432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.117085, 31.358250, 25.446880>,  <30.827333, 31.407297, 25.154127>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.117085, 31.358250, 25.446880> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165550, 31.735222, 25.322208>,  <30.194630, 31.961405, 25.247406>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.165550, 31.735222, 25.322208>,  <30.117085, 31.358250, 25.446880>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.165550, 31.735222, 25.322208> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.900753, -0.027546, -0.433457,
		-0.417089, 0.333266, 0.845560,
		0.121165, 0.942431, -0.311679,
		30.201900, 32.017952, 25.228704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<33.997677, 37.016491, 21.061676> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932098, 36.658703, 21.228073>,  <33.892750, 36.444031, 21.327911>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.932098, 36.658703, 21.228073>,  <33.997677, 37.016491, 21.061676>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.932098, 36.658703, 21.228073> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589903, 0.249095, 0.768093,
		-0.790656, 0.371320, 0.486811,
		-0.163946, -0.894468, 0.415991,
		33.882915, 36.390362, 21.352871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.686295, 37.116867, 21.712513>,  <33.997677, 37.016491, 21.061676>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.686295, 37.116867, 21.712513> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822193, 36.741829, 21.742128>,  <33.903732, 36.516804, 21.759897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822193, 36.741829, 21.742128>,  <33.686295, 37.116867, 21.712513>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822193, 36.741829, 21.742128> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378442, 0.208347, 0.901872,
		-0.861019, -0.278389, 0.425612,
		0.339746, -0.937599, 0.074037,
		33.924118, 36.460548, 21.764339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.550762, 36.906116, 22.405809>,  <33.686295, 37.116867, 21.712513>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.550762, 36.906116, 22.405809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793751, 36.600574, 22.318619>,  <33.939545, 36.417252, 22.266304>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.793751, 36.600574, 22.318619>,  <33.550762, 36.906116, 22.405809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.793751, 36.600574, 22.318619> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508836, 0.163474, 0.845199,
		-0.609973, -0.624346, 0.487980,
		0.607469, -0.763851, -0.217975,
		33.975990, 36.371418, 22.253225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.461143, 36.282398, 22.859430>,  <33.550762, 36.906116, 22.405809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.461143, 36.282398, 22.859430> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822517, 36.205368, 22.706211>,  <34.039341, 36.159149, 22.614281>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.822517, 36.205368, 22.706211>,  <33.461143, 36.282398, 22.859430>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822517, 36.205368, 22.706211> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385194, -0.027689, 0.922420,
		-0.188247, -0.980890, 0.049166,
		0.903431, -0.192581, -0.383045,
		34.093548, 36.147594, 22.591297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.827042, 35.761143, 23.217194>,  <33.461143, 36.282398, 22.859430>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.827042, 35.761143, 23.217194> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123531, 35.956406, 23.032892>,  <34.301426, 36.073563, 22.922312>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.123531, 35.956406, 23.032892>,  <33.827042, 35.761143, 23.217194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.123531, 35.956406, 23.032892> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474434, 0.104606, 0.874054,
		0.474870, -0.866466, -0.154061,
		0.741222, 0.488154, -0.460755,
		34.345898, 36.102852, 22.894665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440948, 35.499931, 23.556313>,  <33.827042, 35.761143, 23.217194>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440948, 35.499931, 23.556313> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.541687, 35.845119, 23.381105>,  <34.602131, 36.052231, 23.275982>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.541687, 35.845119, 23.381105>,  <34.440948, 35.499931, 23.556313>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.541687, 35.845119, 23.381105> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.421186, 0.309753, 0.852441,
		0.871306, -0.399172, -0.285460,
		0.251849, 0.862968, -0.438016,
		34.617241, 36.104012, 23.249701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.309513, 35.600735, 23.530910>,  <34.440948, 35.499931, 23.556313>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.309513, 35.600735, 23.530910> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115955, 35.950058, 23.508369>,  <34.999821, 36.159653, 23.494844>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.115955, 35.950058, 23.508369>,  <35.309513, 35.600735, 23.530910>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.115955, 35.950058, 23.508369> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561556, 0.359251, 0.745382,
		0.671196, 0.329037, -0.664252,
		-0.483891, 0.873312, -0.056355,
		34.970787, 36.212051, 23.491463>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.868744, 36.092159, 23.752020>,  <35.309513, 35.600735, 23.530910>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.868744, 36.092159, 23.752020> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537247, 36.315346, 23.734753>,  <35.338348, 36.449257, 23.724392>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.537247, 36.315346, 23.734753>,  <35.868744, 36.092159, 23.752020>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.537247, 36.315346, 23.734753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247478, 0.434568, 0.865971,
		0.501944, 0.706980, -0.498228,
		-0.828738, 0.557969, -0.043167,
		35.288624, 36.482735, 23.721802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.104599, 36.741577, 24.095919>,  <35.868744, 36.092159, 23.752020>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.104599, 36.741577, 24.095919> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705582, 36.726051, 24.119230>,  <35.466171, 36.716736, 24.133217>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.705582, 36.726051, 24.119230>,  <36.104599, 36.741577, 24.095919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.705582, 36.726051, 24.119230> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049201, 0.203712, 0.977794,
		-0.049825, 0.978261, -0.201302,
		-0.997545, -0.038814, 0.058281,
		35.406319, 36.714409, 24.136715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.859581, 37.380634, 24.373758>,  <36.104599, 36.741577, 24.095919>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.859581, 37.380634, 24.373758> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.532654, 37.160629, 24.442438>,  <35.336498, 37.028625, 24.483646>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.532654, 37.160629, 24.442438>,  <35.859581, 37.380634, 24.373758>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.532654, 37.160629, 24.442438> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044946, 0.357942, 0.932661,
		-0.574437, 0.754560, -0.317272,
		-0.817314, -0.550015, 0.171701,
		35.287460, 36.995625, 24.493948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512619, 37.837921, 24.828558>,  <35.859581, 37.380634, 24.373758>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512619, 37.837921, 24.828558> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.342690, 37.479549, 24.880449>,  <35.240730, 37.264526, 24.911585>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.342690, 37.479549, 24.880449>,  <35.512619, 37.837921, 24.828558>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.342690, 37.479549, 24.880449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060953, 0.114669, 0.991532,
		-0.903222, 0.429133, 0.005896,
		-0.424823, -0.895933, 0.129729,
		35.215244, 37.210770, 24.919369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.103249, 37.861427, 25.418827>,  <35.512619, 37.837921, 24.828558>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.103249, 37.861427, 25.418827> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198208, 37.473595, 25.394978>,  <35.255184, 37.240894, 25.380667>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.198208, 37.473595, 25.394978>,  <35.103249, 37.861427, 25.418827>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.198208, 37.473595, 25.394978> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447270, 0.054612, 0.892730,
		-0.862318, -0.238600, 0.446630,
		0.237397, -0.969581, -0.059625,
		35.269428, 37.182720, 25.377090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.832672, 37.552444, 26.017815>,  <35.103249, 37.861427, 25.418827>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.832672, 37.552444, 26.017815> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130093, 37.316502, 25.891832>,  <35.308544, 37.174934, 25.816242>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.130093, 37.316502, 25.891832>,  <34.832672, 37.552444, 26.017815>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.130093, 37.316502, 25.891832> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391926, 0.002809, 0.919993,
		-0.541783, -0.807500, 0.233270,
		0.743549, -0.589861, -0.314958,
		35.353157, 37.139542, 25.797344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.840565, 37.109085, 26.539385>,  <34.832672, 37.552444, 26.017815>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.840565, 37.109085, 26.539385> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.187840, 37.077641, 26.343395>,  <35.396206, 37.058773, 26.225801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.187840, 37.077641, 26.343395>,  <34.840565, 37.109085, 26.539385>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187840, 37.077641, 26.343395> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488647, -0.036616, 0.871713,
		-0.086467, -0.996233, 0.006624,
		0.868186, -0.078611, -0.489973,
		35.448296, 37.054058, 26.196404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.516247, 36.614830, 27.133656>,  <34.840565, 37.109085, 26.539385>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.516247, 36.614830, 27.133656> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.349545, 36.951050, 27.272097>,  <34.249523, 37.152782, 27.355162>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<34.349545, 36.951050, 27.272097>,  <34.516247, 36.614830, 27.133656>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.349545, 36.951050, 27.272097> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.724290, -0.076982, -0.685184,
		-0.549288, -0.536235, 0.640886,
		-0.416757, 0.840551, 0.346105,
		34.224518, 37.203217, 27.375929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.815399, 36.526909, 27.329592>,  <34.516247, 36.614830, 27.133656>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.815399, 36.526909, 27.329592> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818432, 36.924641, 27.287157>,  <33.820251, 37.163280, 27.261696>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.818432, 36.924641, 27.287157>,  <33.815399, 36.526909, 27.329592>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.818432, 36.924641, 27.287157> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818380, -0.054793, -0.572059,
		-0.574627, 0.091159, 0.813323,
		0.007584, 0.994328, -0.106088,
		33.820705, 37.222939, 27.255331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.196262, 36.692768, 27.321636>,  <33.815399, 36.526909, 27.329592>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.196262, 36.692768, 27.321636> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.342812, 37.030598, 27.165447>,  <33.430740, 37.233295, 27.071733>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<33.342812, 37.030598, 27.165447>,  <33.196262, 36.692768, 27.321636>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.342812, 37.030598, 27.165447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695570, -0.030142, -0.717826,
		-0.618025, 0.534593, 0.576416,
		0.366370, 0.844572, -0.390475,
		33.452724, 37.283970, 27.048306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.584518, 37.005817, 27.144369>,  <33.196262, 36.692768, 27.321636>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.584518, 37.005817, 27.144369> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.854523, 37.182552, 26.908018>,  <33.016525, 37.288593, 26.766207>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.854523, 37.182552, 26.908018>,  <32.584518, 37.005817, 27.144369>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854523, 37.182552, 26.908018> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681473, 0.066448, -0.728821,
		-0.282756, 0.894632, 0.345952,
		0.675014, 0.441835, -0.590879,
		33.057026, 37.315102, 26.730755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.168530, 37.601948, 26.783010>,  <32.584518, 37.005817, 27.144369>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.168530, 37.601948, 26.783010> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.499256, 37.531158, 26.569447>,  <32.697693, 37.488686, 26.441309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.499256, 37.531158, 26.569447>,  <32.168530, 37.601948, 26.783010>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.499256, 37.531158, 26.569447> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536026, 0.039737, -0.843266,
		0.170449, 0.983414, -0.062005,
		0.826815, -0.176970, -0.533908,
		32.747299, 37.478069, 26.409275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.115246, 37.982395, 26.252331>,  <32.168530, 37.601948, 26.783010>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.115246, 37.982395, 26.252331> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.356003, 37.694050, 26.114883>,  <32.500458, 37.521042, 26.032415>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.356003, 37.694050, 26.114883>,  <32.115246, 37.982395, 26.252331>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.356003, 37.694050, 26.114883> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508769, -0.014491, -0.860781,
		0.615530, 0.692921, -0.375478,
		0.601894, -0.720868, -0.343617,
		32.536572, 37.477791, 26.011799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.268536, 38.214787, 25.673031>,  <32.115246, 37.982395, 26.252331>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.268536, 38.214787, 25.673031> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353306, 37.824738, 25.647053>,  <32.404167, 37.590706, 25.631466>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.353306, 37.824738, 25.647053>,  <32.268536, 38.214787, 25.673031>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.353306, 37.824738, 25.647053> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.324311, -0.007483, -0.945921,
		0.921905, 0.221528, -0.317829,
		0.211926, -0.975125, -0.064946,
		32.416885, 37.532200, 25.627569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.650871, 38.031590, 25.038248>,  <32.268536, 38.214787, 25.673031>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.650871, 38.031590, 25.038248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.486732, 37.681000, 25.138968>,  <32.388248, 37.470646, 25.199398>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.486732, 37.681000, 25.138968>,  <32.650871, 38.031590, 25.038248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.486732, 37.681000, 25.138968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440717, -0.051123, -0.896189,
		0.798361, -0.478724, -0.365300,
		-0.410352, -0.876476, 0.251797,
		32.363628, 37.418056, 25.214506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.550808, 37.691334, 24.385195>,  <32.650871, 38.031590, 25.038248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.550808, 37.691334, 24.385195> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.309879, 37.475037, 24.620075>,  <32.165321, 37.345257, 24.761003>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.309879, 37.475037, 24.620075>,  <32.550808, 37.691334, 24.385195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.309879, 37.475037, 24.620075> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396582, -0.435697, -0.808017,
		0.692775, -0.719556, 0.047977,
		-0.602317, -0.540747, 0.587203,
		32.129185, 37.312813, 24.796236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.468365, 37.071167, 24.067785>,  <32.550808, 37.691334, 24.385195>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.468365, 37.071167, 24.067785> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.152699, 37.027561, 24.309557>,  <31.963299, 37.001400, 24.454620>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<32.152699, 37.027561, 24.309557>,  <32.468365, 37.071167, 24.067785>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.152699, 37.027561, 24.309557> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478127, -0.508659, -0.716003,
		0.385501, -0.854038, 0.349295,
		-0.789167, -0.109013, 0.604427,
		31.915949, 36.994858, 24.490885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.213142, 36.334316, 24.036142>,  <32.468365, 37.071167, 24.067785>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.213142, 36.334316, 24.036142> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.915358, 36.581470, 24.137329>,  <31.736687, 36.729763, 24.198042>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.915358, 36.581470, 24.137329>,  <32.213142, 36.334316, 24.036142>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.915358, 36.581470, 24.137329> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629152, -0.522401, -0.575556,
		-0.223476, -0.587636, 0.777652,
		-0.744464, 0.617884, 0.252968,
		31.692019, 36.766834, 24.213219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.747892, 35.889950, 24.208038>,  <32.213142, 36.334316, 24.036142>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.747892, 35.889950, 24.208038> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.578712, 36.238239, 24.107677>,  <31.477203, 36.447212, 24.047461>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.578712, 36.238239, 24.107677>,  <31.747892, 35.889950, 24.208038>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.578712, 36.238239, 24.107677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709192, -0.490432, -0.506480,
		-0.564056, -0.036276, 0.824939,
		-0.422950, 0.870724, -0.250904,
		31.451828, 36.499458, 24.032406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.071560, 35.768101, 24.284744>,  <31.747892, 35.889950, 24.208038>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.071560, 35.768101, 24.284744> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.066401, 36.088196, 24.044926>,  <31.063305, 36.280251, 23.901033>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<31.066401, 36.088196, 24.044926>,  <31.071560, 35.768101, 24.284744>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.066401, 36.088196, 24.044926> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.644169, -0.465246, -0.607118,
		-0.764774, 0.378378, 0.521488,
		-0.012900, 0.800235, -0.599548,
		31.062531, 36.328266, 23.865061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.389690, 35.752346, 23.981709>,  <31.071560, 35.768101, 24.284744>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.389690, 35.752346, 23.981709> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.572563, 36.018387, 23.745533>,  <30.682287, 36.178013, 23.603828>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.572563, 36.018387, 23.745533>,  <30.389690, 35.752346, 23.981709>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.572563, 36.018387, 23.745533> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614684, -0.243498, -0.750249,
		-0.642766, 0.705933, 0.297507,
		0.457183, 0.665107, -0.590438,
		30.709719, 36.217918, 23.568401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.844625, 36.195641, 24.376677>,  <30.389690, 35.752346, 23.981709>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.844625, 36.195641, 24.376677> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.486755, 36.137817, 24.545750>,  <29.272034, 36.103123, 24.647194>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.486755, 36.137817, 24.545750>,  <29.844625, 36.195641, 24.376677>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.486755, 36.137817, 24.545750> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410808, 0.105460, 0.905602,
		-0.175485, 0.983861, -0.034968,
		-0.894674, -0.144555, 0.422684,
		29.218353, 36.094452, 24.672554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.683641, 36.744221, 24.857248>,  <29.844625, 36.195641, 24.376677>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.683641, 36.744221, 24.857248> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.452627, 36.437572, 24.969492>,  <29.314018, 36.253582, 25.036839>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.452627, 36.437572, 24.969492>,  <29.683641, 36.744221, 24.857248>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.452627, 36.437572, 24.969492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420319, 0.015437, 0.907245,
		-0.699848, 0.641911, 0.313311,
		-0.577534, -0.766624, 0.280610,
		29.279367, 36.207584, 25.053675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.476078, 36.993309, 25.527433>,  <29.683641, 36.744221, 24.857248>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.476078, 36.993309, 25.527433> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.290222, 36.640968, 25.563673>,  <29.178709, 36.429565, 25.585417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.290222, 36.640968, 25.563673>,  <29.476078, 36.993309, 25.527433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290222, 36.640968, 25.563673> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184400, 0.003818, 0.982844,
		-0.866086, 0.473376, 0.160656,
		-0.464641, -0.880852, 0.090597,
		29.150829, 36.376713, 25.590853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.942614, 37.073658, 26.011324>,  <29.476078, 36.993309, 25.527433>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.942614, 37.073658, 26.011324> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.091000, 36.702438, 26.024611>,  <29.180031, 36.479706, 26.032581>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.091000, 36.702438, 26.024611>,  <28.942614, 37.073658, 26.011324>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.091000, 36.702438, 26.024611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195039, 0.112830, 0.974284,
		-0.907935, -0.354946, 0.222862,
		0.370963, -0.928053, 0.033214,
		29.202290, 36.424023, 26.034575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.669487, 36.865509, 26.592854>,  <28.942614, 37.073658, 26.011324>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.669487, 36.865509, 26.592854> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.976408, 36.611408, 26.557753>,  <29.160561, 36.458946, 26.536692>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<28.976408, 36.611408, 26.557753>,  <28.669487, 36.865509, 26.592854>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.976408, 36.611408, 26.557753> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.172101, 0.072164, 0.982432,
		-0.617763, -0.768923, 0.164699,
		0.767300, -0.635255, -0.087752,
		29.206598, 36.420830, 26.531427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.663595, 36.451847, 27.143341>,  <28.669487, 36.865509, 26.592854>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.663595, 36.451847, 27.143341> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038448, 36.420067, 27.007416>,  <29.263359, 36.400997, 26.925861>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.038448, 36.420067, 27.007416>,  <28.663595, 36.451847, 27.143341>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.038448, 36.420067, 27.007416> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348978, 0.212610, 0.912694,
		-0.000270, -0.973901, 0.226972,
		0.937131, -0.079455, -0.339813,
		29.319588, 36.396229, 26.905472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.886612, 35.963634, 27.497292>,  <28.663595, 36.451847, 27.143341>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.886612, 35.963634, 27.497292> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.189117, 36.190788, 27.367325>,  <29.370621, 36.327080, 27.289345>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.189117, 36.190788, 27.367325>,  <28.886612, 35.963634, 27.497292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.189117, 36.190788, 27.367325> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382377, 0.019343, 0.923804,
		0.530902, -0.822879, -0.202519,
		0.756261, 0.567888, -0.324919,
		29.415997, 36.361153, 27.269850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.422705, 35.788960, 27.906128>,  <28.886612, 35.963634, 27.497292>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.422705, 35.788960, 27.906128> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.553045, 36.139389, 27.763962>,  <29.631248, 36.349648, 27.678663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<29.553045, 36.139389, 27.763962>,  <29.422705, 35.788960, 27.906128>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553045, 36.139389, 27.763962> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336708, 0.243745, 0.909514,
		0.883431, -0.416035, -0.215556,
		0.325849, 0.876072, -0.355415,
		29.650801, 36.402210, 27.657337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.226965, 35.866844, 27.691309>,  <29.422705, 35.788960, 27.906128>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.226965, 35.866844, 27.691309> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.024668, 36.174736, 27.847120>,  <29.903290, 36.359474, 27.940607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.024668, 36.174736, 27.847120>,  <30.226965, 35.866844, 27.691309>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.024668, 36.174736, 27.847120> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.588588, -0.022231, 0.808128,
		0.630703, 0.637977, -0.441813,
		-0.505745, 0.769734, 0.389527,
		29.872944, 36.405655, 27.963978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.748470, 36.213284, 28.036121>,  <30.226965, 35.866844, 27.691309>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.748470, 36.213284, 28.036121> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.402834, 36.347736, 28.185980>,  <30.195452, 36.428410, 28.275896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.402834, 36.347736, 28.185980>,  <30.748470, 36.213284, 28.036121>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.402834, 36.347736, 28.185980> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404435, 0.020569, 0.914335,
		0.299634, 0.941589, -0.153719,
		-0.864090, 0.336135, 0.374648,
		30.143606, 36.448578, 28.298374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.965147, 36.643879, 28.506887>,  <30.748470, 36.213284, 28.036121>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.965147, 36.643879, 28.506887> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.584642, 36.565556, 28.602184>,  <30.356340, 36.518562, 28.659363>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.584642, 36.565556, 28.602184>,  <30.965147, 36.643879, 28.506887>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.584642, 36.565556, 28.602184> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.234323, 0.043281, 0.971195,
		-0.200483, 0.979686, 0.004712,
		-0.951262, -0.195812, 0.238240,
		30.299263, 36.506813, 28.673656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.802500, 37.202057, 28.874464>,  <30.965147, 36.643879, 28.506887>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.802500, 37.202057, 28.874464> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536903, 36.923332, 28.982960>,  <30.377546, 36.756096, 29.048058>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.536903, 36.923332, 28.982960>,  <30.802500, 37.202057, 28.874464>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.536903, 36.923332, 28.982960> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331036, 0.051324, 0.942221,
		-0.670471, 0.715416, 0.196591,
		-0.663991, -0.696811, 0.271240,
		30.337706, 36.714291, 29.064331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.439329, 37.431831, 29.532738>,  <30.802500, 37.202057, 28.874464>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.439329, 37.431831, 29.532738> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.387581, 37.035397, 29.545406>,  <30.356533, 36.797535, 29.553007>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.387581, 37.035397, 29.545406>,  <30.439329, 37.431831, 29.532738>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387581, 37.035397, 29.545406> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527732, -0.041777, 0.848383,
		-0.839502, 0.126467, 0.528434,
		-0.129369, -0.991091, 0.031669,
		30.348770, 36.738068, 29.554907>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265474, 37.246727, 30.255699>,  <30.439329, 37.431831, 29.532738>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265474, 37.246727, 30.255699> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.431757, 36.920498, 30.094685>,  <30.531527, 36.724762, 29.998075>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<30.431757, 36.920498, 30.094685>,  <30.265474, 37.246727, 30.255699>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.431757, 36.920498, 30.094685> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669632, -0.025035, 0.742271,
		-0.615450, -0.578119, 0.535724,
		0.415708, -0.815569, -0.402535,
		30.556469, 36.675827, 29.973925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.344397, 32.357296, 25.802841> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.553085, 32.421978, 25.467781>,  <29.678299, 32.460785, 25.266745>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.553085, 32.421978, 25.467781>,  <29.344397, 32.357296, 25.802841>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553085, 32.421978, 25.467781> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814214, 0.387497, -0.432322,
		0.254680, 0.907578, 0.333825,
		0.521722, 0.161702, -0.837651,
		29.709602, 32.470490, 25.216486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.080383, 32.963459, 25.506756>,  <29.344397, 32.357296, 25.802841>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.080383, 32.963459, 25.506756> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.290684, 32.807667, 25.204262>,  <29.416864, 32.714191, 25.022766>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.290684, 32.807667, 25.204262>,  <29.080383, 32.963459, 25.506756>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.290684, 32.807667, 25.204262> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697801, 0.310952, -0.645278,
		0.486477, 0.866956, -0.108298,
		0.525751, -0.389483, -0.756233,
		29.448410, 32.690823, 24.977392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.001215, 33.421421, 24.997955>,  <29.080383, 32.963459, 25.506756>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.001215, 33.421421, 24.997955> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103632, 33.072861, 24.830574>,  <29.165083, 32.863724, 24.730145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.103632, 33.072861, 24.830574>,  <29.001215, 33.421421, 24.997955>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.103632, 33.072861, 24.830574> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675835, 0.148137, -0.722013,
		0.691151, 0.467671, -0.550994,
		0.256042, -0.871401, -0.418453,
		29.180445, 32.811440, 24.705038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.893967, 33.489483, 24.339060>,  <29.001215, 33.421421, 24.997955>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.893967, 33.489483, 24.339060> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.910736, 33.090061, 24.352501>,  <28.920797, 32.850407, 24.360565>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.910736, 33.090061, 24.352501>,  <28.893967, 33.489483, 24.339060>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.910736, 33.090061, 24.352501> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.610742, -0.052231, -0.790105,
		0.790719, 0.012603, -0.612049,
		0.041926, -0.998555, 0.033603,
		28.923313, 32.790493, 24.362581>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.895067, 33.270767, 23.750990>,  <28.893967, 33.489483, 24.339060>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.895067, 33.270767, 23.750990> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.775761, 32.928314, 23.919788>,  <28.704178, 32.722843, 24.021069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.775761, 32.928314, 23.919788>,  <28.895067, 33.270767, 23.750990>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.775761, 32.928314, 23.919788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.462218, -0.257269, -0.848627,
		0.835100, -0.448171, -0.318984,
		-0.298265, -0.856128, 0.421998,
		28.686281, 32.671474, 24.046389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.058207, 32.660908, 23.361303>,  <28.895067, 33.270767, 23.750990>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.058207, 32.660908, 23.361303> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.758430, 32.538113, 23.595943>,  <28.578566, 32.464436, 23.736727>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.758430, 32.538113, 23.595943>,  <29.058207, 32.660908, 23.361303>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.758430, 32.538113, 23.595943> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476301, -0.365410, -0.799758,
		0.459868, -0.878767, 0.127631,
		-0.749439, -0.306993, 0.586598,
		28.533598, 32.446014, 23.771923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.861002, 32.077087, 23.076828>,  <29.058207, 32.660908, 23.361303>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.861002, 32.077087, 23.076828> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.551264, 32.157646, 23.316771>,  <28.365421, 32.205982, 23.460737>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.551264, 32.157646, 23.316771>,  <28.861002, 32.077087, 23.076828>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.551264, 32.157646, 23.316771> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.617601, -0.446837, -0.647229,
		0.137689, -0.871652, 0.470388,
		-0.774345, 0.201396, 0.599858,
		28.318960, 32.218063, 23.496727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.481073, 31.520456, 23.086365>,  <28.861002, 32.077087, 23.076828>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.481073, 31.520456, 23.086365> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.217861, 31.802195, 23.192869>,  <28.059935, 31.971237, 23.256773>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.217861, 31.802195, 23.192869>,  <28.481073, 31.520456, 23.086365>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.217861, 31.802195, 23.192869> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636340, -0.331111, -0.696733,
		-0.402579, -0.627903, 0.666084,
		-0.658029, 0.704346, 0.266261,
		28.020452, 32.013496, 23.272749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.789352, 31.223755, 23.152546>,  <28.481073, 31.520456, 23.086365>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.789352, 31.223755, 23.152546> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.730247, 31.614864, 23.093046>,  <27.694784, 31.849529, 23.057346>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.730247, 31.614864, 23.093046>,  <27.789352, 31.223755, 23.152546>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.730247, 31.614864, 23.093046> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630312, -0.208998, -0.747681,
		-0.762151, -0.016720, 0.647184,
		-0.147762, 0.977773, -0.148749,
		27.685919, 31.908195, 23.048422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.046473, 31.361471, 23.081095>,  <27.789352, 31.223755, 23.152546>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.046473, 31.361471, 23.081095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.215712, 31.682993, 22.913818>,  <27.317255, 31.875906, 22.813454>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.215712, 31.682993, 22.913818>,  <27.046473, 31.361471, 23.081095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.215712, 31.682993, 22.913818> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557657, -0.132762, -0.819386,
		-0.714147, 0.579887, 0.392077,
		0.423098, 0.803806, -0.418190,
		27.342642, 31.924135, 22.788361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.450165, 31.745461, 22.965199>,  <27.046473, 31.361471, 23.081095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.450165, 31.745461, 22.965199> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.728020, 31.892807, 22.718042>,  <26.894732, 31.981215, 22.569750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.728020, 31.892807, 22.718042>,  <26.450165, 31.745461, 22.965199>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.728020, 31.892807, 22.718042> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680844, 0.059367, -0.730018,
		-0.232232, 0.927783, 0.292039,
		0.694636, 0.368366, -0.617889,
		26.936411, 32.003319, 22.532675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.164352, 32.414902, 22.617916>,  <26.450165, 31.745461, 22.965199>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.164352, 32.414902, 22.617916> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.429764, 32.213318, 22.396734>,  <26.589010, 32.092369, 22.264025>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.429764, 32.213318, 22.396734>,  <26.164352, 32.414902, 22.617916>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.429764, 32.213318, 22.396734> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.552651, 0.168027, -0.816299,
		0.504291, 0.847227, -0.167022,
		0.663526, -0.503957, -0.552956,
		26.628822, 32.062130, 22.230848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.340826, 32.760025, 21.945732>,  <26.164352, 32.414902, 22.617916>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.340826, 32.760025, 21.945732> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.414364, 32.371300, 21.886698>,  <26.458487, 32.138065, 21.851278>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.414364, 32.371300, 21.886698>,  <26.340826, 32.760025, 21.945732>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.414364, 32.371300, 21.886698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607408, 0.005729, -0.794370,
		0.772824, 0.235685, -0.589233,
		0.183845, -0.971813, -0.147585,
		26.469517, 32.079758, 21.842422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.388350, 32.650200, 21.212729>,  <26.340826, 32.760025, 21.945732>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.388350, 32.650200, 21.212729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.286608, 32.297398, 21.371412>,  <26.225563, 32.085716, 21.466623>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.286608, 32.297398, 21.371412>,  <26.388350, 32.650200, 21.212729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.286608, 32.297398, 21.371412> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.669474, -0.135450, -0.730382,
		0.697932, -0.451362, -0.556025,
		-0.254353, -0.882001, 0.396709,
		26.210302, 32.032799, 21.490425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.039381, 33.327877, 21.168056>,  <26.388350, 32.650200, 21.212729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.039381, 33.327877, 21.168056> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.061083, 33.646324, 20.926971>,  <26.074104, 33.837391, 20.782320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.061083, 33.646324, 20.926971>,  <26.039381, 33.327877, 21.168056>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.061083, 33.646324, 20.926971> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369713, 0.544685, 0.752749,
		0.927561, -0.263669, -0.264782,
		0.054253, 0.796114, -0.602710,
		26.077358, 33.885159, 20.746159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.759018, 33.576458, 21.217480>,  <26.039381, 33.327877, 21.168056>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.759018, 33.576458, 21.217480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.529364, 33.880260, 21.095152>,  <26.391571, 34.062542, 21.021755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.529364, 33.880260, 21.095152>,  <26.759018, 33.576458, 21.217480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.529364, 33.880260, 21.095152> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342253, 0.561940, 0.753052,
		0.743797, 0.327686, -0.582571,
		-0.574134, 0.759504, -0.305817,
		26.357124, 34.108112, 21.003407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.176710, 34.097363, 21.290751>,  <26.759018, 33.576458, 21.217480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.176710, 34.097363, 21.290751> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.839510, 34.309612, 21.255453>,  <26.637190, 34.436962, 21.234276>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.839510, 34.309612, 21.255453>,  <27.176710, 34.097363, 21.290751>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839510, 34.309612, 21.255453> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.314017, 0.618646, 0.720187,
		0.436738, 0.579411, -0.688145,
		-0.843003, 0.530622, -0.088241,
		26.586609, 34.468800, 21.228981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.376804, 34.753021, 21.177366>,  <27.176710, 34.097363, 21.290751>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.376804, 34.753021, 21.177366> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.003336, 34.767426, 21.319891>,  <26.779255, 34.776066, 21.405405>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.003336, 34.767426, 21.319891>,  <27.376804, 34.753021, 21.177366>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.003336, 34.767426, 21.319891> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290112, 0.659390, 0.693570,
		-0.209976, 0.750938, -0.626100,
		-0.933673, 0.036006, 0.356313,
		26.723234, 34.778229, 21.426785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.264259, 35.513336, 21.337824>,  <27.376804, 34.753021, 21.177366>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.264259, 35.513336, 21.337824> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.973854, 35.324116, 21.537476>,  <26.799610, 35.210583, 21.657267>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.973854, 35.324116, 21.537476>,  <27.264259, 35.513336, 21.337824>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.973854, 35.324116, 21.537476> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180847, 0.568931, 0.802254,
		-0.663474, 0.672714, -0.327503,
		-0.726014, -0.473047, 0.499129,
		26.756050, 35.182201, 21.687214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020426, 35.991661, 21.801502>,  <27.264259, 35.513336, 21.337824>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020426, 35.991661, 21.801502> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.901449, 35.639366, 21.948919>,  <26.830063, 35.427990, 22.037369>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.901449, 35.639366, 21.948919>,  <27.020426, 35.991661, 21.801502>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.901449, 35.639366, 21.948919> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126463, 0.346267, 0.929573,
		-0.946328, 0.323100, 0.008387,
		-0.297441, -0.880742, 0.368542,
		26.812218, 35.375145, 22.059483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.684488, 36.197445, 22.456804>,  <27.020426, 35.991661, 21.801502>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.684488, 36.197445, 22.456804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.779800, 35.809361, 22.474281>,  <26.836988, 35.576508, 22.484768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.779800, 35.809361, 22.474281>,  <26.684488, 36.197445, 22.456804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.779800, 35.809361, 22.474281> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337391, 0.124881, 0.933045,
		-0.910708, -0.207585, 0.357098,
		0.238281, -0.970213, 0.043693,
		26.851284, 35.518295, 22.487389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.369736, 35.932922, 23.062563>,  <26.684488, 36.197445, 22.456804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.369736, 35.932922, 23.062563> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.670656, 35.691189, 22.957630>,  <26.851208, 35.546146, 22.894670>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.670656, 35.691189, 22.957630>,  <26.369736, 35.932922, 23.062563>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.670656, 35.691189, 22.957630> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404599, 0.109550, 0.907909,
		-0.519945, -0.789161, 0.326928,
		0.752301, -0.604337, -0.262334,
		26.896347, 35.509888, 22.878929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.546326, 35.480648, 23.740442>,  <26.369736, 35.932922, 23.062563>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.546326, 35.480648, 23.740442> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.864967, 35.461704, 23.499384>,  <27.056152, 35.450340, 23.354750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<26.864967, 35.461704, 23.499384>,  <26.546326, 35.480648, 23.740442>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.864967, 35.461704, 23.499384> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601029, 0.168761, 0.781207,
		0.064708, -0.984519, 0.162898,
		0.796603, -0.047356, -0.602644,
		27.103949, 35.447498, 23.318590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.020584, 35.106491, 24.070488>,  <26.546326, 35.480648, 23.740442>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.020584, 35.106491, 24.070488> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.243023, 35.316429, 23.812714>,  <27.376486, 35.442390, 23.658049>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.243023, 35.316429, 23.812714>,  <27.020584, 35.106491, 24.070488>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.243023, 35.316429, 23.812714> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657126, 0.197089, 0.727558,
		0.508865, -0.828068, -0.235287,
		0.556095, 0.524842, -0.644437,
		27.409851, 35.473881, 23.619383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.755157, 34.964935, 24.223793>,  <27.020584, 35.106491, 24.070488>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.755157, 34.964935, 24.223793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.802065, 35.279289, 23.980930>,  <27.830210, 35.467899, 23.835213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<27.802065, 35.279289, 23.980930>,  <27.755157, 34.964935, 24.223793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.802065, 35.279289, 23.980930> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759761, 0.322720, 0.564459,
		0.639540, -0.527486, -0.559238,
		0.117267, 0.785882, -0.607156,
		27.837244, 35.515053, 23.798784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418520, 34.939426, 24.062130>,  <27.755157, 34.964935, 24.223793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418520, 34.939426, 24.062130> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.319183, 35.324226, 24.016739>,  <28.259583, 35.555107, 23.989504>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.319183, 35.324226, 24.016739>,  <28.418520, 34.939426, 24.062130>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.319183, 35.324226, 24.016739> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786390, 0.268622, 0.556267,
		0.565613, 0.048907, -0.823219,
		-0.248340, 0.962003, -0.113477,
		28.244680, 35.612827, 23.982697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.993393, 35.238842, 23.853880>,  <28.418520, 34.939426, 24.062130>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.993393, 35.238842, 23.853880> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.772476, 35.539932, 23.997198>,  <28.639927, 35.720589, 24.083189>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<28.772476, 35.539932, 23.997198>,  <28.993393, 35.238842, 23.853880>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.772476, 35.539932, 23.997198> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759387, 0.276928, 0.588763,
		0.343956, 0.597253, -0.724557,
		-0.552291, 0.752728, 0.358295,
		28.606789, 35.765751, 24.104687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.540756, 35.591942, 24.043589>,  <28.993393, 35.238842, 23.853880>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.540756, 35.591942, 24.043589> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.222984, 35.761086, 24.217979>,  <29.032322, 35.862572, 24.322613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.222984, 35.761086, 24.217979>,  <29.540756, 35.591942, 24.043589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.222984, 35.761086, 24.217979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.577107, 0.301826, 0.758847,
		0.189296, 0.854454, -0.483814,
		-0.794427, 0.422859, 0.435976,
		28.984655, 35.887943, 24.348772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830690, 36.122185, 23.633547>,  <29.540756, 35.591942, 24.043589>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830690, 36.122185, 23.633547> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164089, 36.169868, 23.417742>,  <30.364128, 36.198479, 23.288260>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.164089, 36.169868, 23.417742>,  <29.830690, 36.122185, 23.633547>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.164089, 36.169868, 23.417742> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.533052, -0.083451, -0.841957,
		-0.145391, 0.989356, -0.006012,
		0.833497, 0.119208, -0.539512,
		30.414139, 36.205631, 23.255888>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772482, 36.680061, 23.104616>,  <29.830690, 36.122185, 23.633547>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772482, 36.680061, 23.104616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.040863, 36.407249, 22.988232>,  <30.201893, 36.243565, 22.918402>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.040863, 36.407249, 22.988232>,  <29.772482, 36.680061, 23.104616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.040863, 36.407249, 22.988232> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.406059, -0.009630, -0.913796,
		0.620432, 0.731263, -0.283404,
		0.670955, -0.682027, -0.290961,
		30.242149, 36.202641, 22.900944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.814447, 36.795055, 22.345726>,  <29.772482, 36.680061, 23.104616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.814447, 36.795055, 22.345726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.033131, 36.461029, 22.370298>,  <30.164341, 36.260612, 22.385042>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.033131, 36.461029, 22.370298>,  <29.814447, 36.795055, 22.345726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.033131, 36.461029, 22.370298> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067727, -0.117226, -0.990793,
		0.834578, 0.537516, -0.120645,
		0.546710, -0.835066, 0.061430,
		30.197144, 36.210510, 22.388727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.309177, 36.835884, 21.890980>,  <29.814447, 36.795055, 22.345726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.309177, 36.835884, 21.890980> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.320501, 36.439030, 21.939741>,  <30.327295, 36.200916, 21.968998>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.320501, 36.439030, 21.939741>,  <30.309177, 36.835884, 21.890980>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.320501, 36.439030, 21.939741> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087851, -0.123949, -0.988392,
		0.995731, 0.017274, -0.090669,
		0.028312, -0.992138, 0.121903,
		30.328995, 36.141388, 21.976313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.798250, 36.567055, 21.412069>,  <30.309177, 36.835884, 21.890980>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.798250, 36.567055, 21.412069> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.538946, 36.280331, 21.514788>,  <30.383364, 36.108295, 21.576418>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.538946, 36.280331, 21.514788>,  <30.798250, 36.567055, 21.412069>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.538946, 36.280331, 21.514788> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174496, -0.188423, -0.966462,
		0.741153, -0.671329, -0.002933,
		-0.648261, -0.716808, 0.256794,
		30.344467, 36.065289, 21.591825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842999, 36.036087, 20.900755>,  <30.798250, 36.567055, 21.412069>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842999, 36.036087, 20.900755> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491613, 35.968422, 21.079502>,  <30.280783, 35.927822, 21.186750>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.491613, 35.968422, 21.079502>,  <30.842999, 36.036087, 20.900755>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.491613, 35.968422, 21.079502> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.388592, -0.291269, -0.874162,
		0.278031, -0.941567, 0.190134,
		-0.878462, -0.169159, 0.446867,
		30.228075, 35.917675, 21.213562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.717379, 35.417679, 20.600574>,  <30.842999, 36.036087, 20.900755>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.717379, 35.417679, 20.600574> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371395, 35.575726, 20.724335>,  <30.163805, 35.670551, 20.798592>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.371395, 35.575726, 20.724335>,  <30.717379, 35.417679, 20.600574>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.371395, 35.575726, 20.724335> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428628, -0.261003, -0.864960,
		-0.261003, -0.880774, 0.395114,
		0.864960, -0.395114, -0.309402,
		30.111908, 35.694260, 20.817156>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271936, 34.913475, 20.546412>,  <30.717379, 35.417679, 20.600574>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271936, 34.913475, 20.546412> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534655, 34.885422, 20.246092>,  <31.692286, 34.868587, 20.065901>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.534655, 34.885422, 20.246092>,  <31.271936, 34.913475, 20.546412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.534655, 34.885422, 20.246092> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687090, 0.465888, 0.557544,
		0.310683, -0.882060, 0.354185,
		0.656798, -0.070138, -0.750798,
		31.731693, 34.864380, 20.020853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830633, 34.695004, 20.867064>,  <31.271936, 34.913475, 20.546412>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830633, 34.695004, 20.867064> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971943, 34.861759, 20.532064>,  <32.056728, 34.961815, 20.331066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.971943, 34.861759, 20.532064>,  <31.830633, 34.695004, 20.867064>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.971943, 34.861759, 20.532064> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695710, 0.481432, 0.533114,
		0.625448, -0.770989, -0.119958,
		0.353274, 0.416892, -0.837496,
		32.077927, 34.986828, 20.280815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.447781, 34.462631, 20.675854>,  <31.830633, 34.695004, 20.867064>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.447781, 34.462631, 20.675854> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.482479, 34.818428, 20.496397>,  <32.503300, 35.031906, 20.388723>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.482479, 34.818428, 20.496397>,  <32.447781, 34.462631, 20.675854>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.482479, 34.818428, 20.496397> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667712, 0.282307, 0.688813,
		0.739348, -0.359317, -0.569435,
		0.086747, 0.889491, -0.448643,
		32.508503, 35.085274, 20.361803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.150654, 34.609032, 20.687752>,  <32.447781, 34.462631, 20.675854>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.150654, 34.609032, 20.687752> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999584, 34.968952, 20.600363>,  <32.908943, 35.184902, 20.547930>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.999584, 34.968952, 20.600363>,  <33.150654, 34.609032, 20.687752>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.999584, 34.968952, 20.600363> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722153, 0.433911, 0.538718,
		0.579534, 0.045687, -0.813666,
		-0.377671, 0.899797, -0.218473,
		32.886284, 35.238892, 20.534821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.699806, 35.039288, 20.521635>,  <33.150654, 34.609032, 20.687752>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.699806, 35.039288, 20.521635> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415939, 35.316620, 20.571699>,  <33.245621, 35.483021, 20.601738>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.415939, 35.316620, 20.571699>,  <33.699806, 35.039288, 20.521635>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.415939, 35.316620, 20.571699> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638167, 0.557317, 0.531170,
		0.298520, 0.456829, -0.837970,
		-0.709668, 0.693329, 0.125163,
		33.203037, 35.524620, 20.609247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.969013, 35.691040, 20.329046>,  <33.699806, 35.039288, 20.521635>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.969013, 35.691040, 20.329046> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680332, 35.756424, 20.598097>,  <33.507122, 35.795654, 20.759527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.680332, 35.756424, 20.598097>,  <33.969013, 35.691040, 20.329046>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.680332, 35.756424, 20.598097> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.641983, 0.521436, 0.562105,
		-0.258853, 0.837488, -0.481257,
		-0.721702, 0.163457, 0.672628,
		33.463821, 35.805462, 20.799885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.990902, 36.381718, 20.476376>,  <33.969013, 35.691040, 20.329046>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.990902, 36.381718, 20.476376> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805725, 36.226219, 20.795013>,  <33.694618, 36.132919, 20.986197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.805725, 36.226219, 20.795013>,  <33.990902, 36.381718, 20.476376>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805725, 36.226219, 20.795013> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.688646, 0.408086, 0.599359,
		-0.558078, 0.826040, 0.078788,
		-0.462942, -0.388746, 0.796593,
		33.666843, 36.109596, 21.033991>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.677980, 29.584032, 21.169073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.620068, 29.966717, 21.270061>,  <28.585320, 30.196327, 21.330654>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.620068, 29.966717, 21.270061>,  <28.677980, 29.584032, 21.169073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.620068, 29.966717, 21.270061> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988023, 0.126018, 0.089052,
		0.053382, 0.262340, -0.963498,
		-0.144781, 0.956712, 0.252471,
		28.576633, 30.253731, 21.345802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.196587, 30.000877, 20.803919>,  <28.677980, 29.584032, 21.169073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.196587, 30.000877, 20.803919> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069227, 30.230082, 21.105986>,  <28.992811, 30.367605, 21.287226>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.069227, 30.230082, 21.105986>,  <29.196587, 30.000877, 20.803919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.069227, 30.230082, 21.105986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939949, 0.294169, 0.173093,
		-0.122963, 0.764932, -0.632265,
		-0.318397, 0.573013, 0.755169,
		28.973709, 30.401985, 21.332537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.534977, 30.651106, 20.727530>,  <29.196587, 30.000877, 20.803919>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.534977, 30.651106, 20.727530> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423292, 30.654840, 21.111603>,  <29.356281, 30.657082, 21.342047>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.423292, 30.654840, 21.111603>,  <29.534977, 30.651106, 20.727530>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.423292, 30.654840, 21.111603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.899296, 0.353080, 0.258074,
		-0.336612, 0.935547, -0.106982,
		-0.279214, 0.009338, 0.960184,
		29.339527, 30.657642, 21.399658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.742714, 31.297760, 20.992348>,  <29.534977, 30.651106, 20.727530>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.742714, 31.297760, 20.992348> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.694454, 31.053848, 21.305681>,  <29.665499, 30.907501, 21.493681>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.694454, 31.053848, 21.305681>,  <29.742714, 31.297760, 20.992348>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.694454, 31.053848, 21.305681> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.901524, 0.263034, 0.343610,
		-0.415570, 0.747651, 0.517996,
		-0.120650, -0.609779, 0.783334,
		29.658258, 30.870914, 21.540682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.896648, 31.699387, 21.459324>,  <29.742714, 31.297760, 20.992348>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.896648, 31.699387, 21.459324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.954081, 31.336164, 21.616711>,  <29.988541, 31.118231, 21.711143>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.954081, 31.336164, 21.616711>,  <29.896648, 31.699387, 21.459324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.954081, 31.336164, 21.616711> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940365, 0.249077, 0.231676,
		-0.308379, 0.336740, 0.889668,
		0.143581, -0.908057, 0.393469,
		29.997154, 31.063747, 21.734751>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.266491, 31.840872, 22.104204>,  <29.896648, 31.699387, 21.459324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.266491, 31.840872, 22.104204> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.325285, 31.445333, 22.094557>,  <30.360561, 31.208012, 22.088768>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.325285, 31.445333, 22.094557>,  <30.266491, 31.840872, 22.104204>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.325285, 31.445333, 22.094557> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.925488, 0.128881, 0.356177,
		-0.349095, -0.074674, 0.934107,
		0.146985, -0.988845, -0.024118,
		30.369381, 31.148680, 22.087322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.513123, 31.676119, 22.746374>,  <30.266491, 31.840872, 22.104204>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.513123, 31.676119, 22.746374> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647398, 31.406069, 22.483612>,  <30.727962, 31.244040, 22.325954>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.647398, 31.406069, 22.483612>,  <30.513123, 31.676119, 22.746374>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.647398, 31.406069, 22.483612> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.927665, 0.115853, 0.354985,
		-0.163555, -0.728550, 0.665180,
		0.335688, -0.675124, -0.656903,
		30.748104, 31.203531, 22.286541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.890657, 31.197937, 23.077808>,  <30.513123, 31.676119, 22.746374>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.890657, 31.197937, 23.077808> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.039169, 31.130896, 22.712500>,  <31.128277, 31.090670, 22.493315>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.039169, 31.130896, 22.712500>,  <30.890657, 31.197937, 23.077808>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.039169, 31.130896, 22.712500> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.926404, 0.133267, 0.352160,
		0.062685, -0.976805, 0.204749,
		0.371278, -0.167606, -0.913270,
		31.150553, 31.080614, 22.438519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.336496, 30.580799, 23.115421>,  <30.890657, 31.197937, 23.077808>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.336496, 30.580799, 23.115421> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444538, 30.810192, 22.806057>,  <31.509363, 30.947828, 22.620440>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.444538, 30.810192, 22.806057>,  <31.336496, 30.580799, 23.115421>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444538, 30.810192, 22.806057> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875391, 0.188203, 0.445275,
		0.400915, -0.797307, -0.451187,
		0.270106, 0.573482, -0.773409,
		31.525570, 30.982237, 22.574034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.981895, 30.381536, 22.999449>,  <31.336496, 30.580799, 23.115421>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.981895, 30.381536, 22.999449> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959013, 30.733999, 22.811710>,  <31.945284, 30.945477, 22.699066>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.959013, 30.733999, 22.811710>,  <31.981895, 30.381536, 22.999449>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959013, 30.733999, 22.811710> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.911663, 0.237726, 0.335195,
		0.406936, -0.408711, -0.816920,
		-0.057205, 0.881159, -0.469347,
		31.941851, 30.998346, 22.670906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.658241, 30.457003, 22.652025>,  <31.981895, 30.381536, 22.999449>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.658241, 30.457003, 22.652025> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.509590, 30.826399, 22.690088>,  <32.420399, 31.048037, 22.712927>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.509590, 30.826399, 22.690088>,  <32.658241, 30.457003, 22.652025>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.509590, 30.826399, 22.690088> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.850511, 0.297571, 0.433685,
		0.372188, 0.242102, -0.896026,
		-0.371627, 0.923492, 0.095158,
		32.398102, 31.103447, 22.718636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.287243, 30.849609, 22.594955>,  <32.658241, 30.457003, 22.652025>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.287243, 30.849609, 22.594955> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.015167, 31.058702, 22.800518>,  <32.851921, 31.184158, 22.923857>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.015167, 31.058702, 22.800518>,  <33.287243, 30.849609, 22.594955>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.015167, 31.058702, 22.800518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.669512, 0.157523, 0.725907,
		0.298502, 0.837818, -0.457119,
		-0.680185, 0.522731, 0.513908,
		32.811111, 31.215521, 22.954691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.260311, 31.373543, 22.073877>,  <33.287243, 30.849609, 22.594955>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.260311, 31.373543, 22.073877> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.539349, 31.565556, 21.861113>,  <33.706772, 31.680763, 21.733454>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.539349, 31.565556, 21.861113>,  <33.260311, 31.373543, 22.073877>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.539349, 31.565556, 21.861113> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.657562, 0.134093, -0.741371,
		-0.284558, 0.866941, 0.409195,
		0.697595, 0.480034, -0.531910,
		33.748627, 31.709566, 21.701540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933792, 31.991089, 21.795523>,  <33.260311, 31.373543, 22.073877>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933792, 31.991089, 21.795523> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.263245, 31.911293, 21.583168>,  <33.460915, 31.863417, 21.455755>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.263245, 31.911293, 21.583168>,  <32.933792, 31.991089, 21.795523>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.263245, 31.911293, 21.583168> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506818, 0.161176, -0.846851,
		0.254503, 0.966554, 0.031645,
		0.823628, -0.199488, -0.530887,
		33.510334, 31.851446, 21.423903>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.921837, 32.559677, 21.343327>,  <32.933792, 31.991089, 21.795523>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.921837, 32.559677, 21.343327> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127724, 32.261745, 21.173483>,  <33.251255, 32.082985, 21.071577>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.127724, 32.261745, 21.173483>,  <32.921837, 32.559677, 21.343327>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127724, 32.261745, 21.173483> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.649073, -0.014956, -0.760579,
		0.560151, 0.667087, -0.491147,
		0.514718, -0.744830, -0.424610,
		33.282139, 32.038296, 21.046101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.004642, 32.754086, 20.652044>,  <32.921837, 32.559677, 21.343327>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.004642, 32.754086, 20.652044> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.046795, 32.356537, 20.665358>,  <33.072086, 32.118008, 20.673346>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.046795, 32.356537, 20.665358>,  <33.004642, 32.754086, 20.652044>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.046795, 32.356537, 20.665358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726964, -0.099833, -0.679380,
		0.678541, 0.047397, -0.733032,
		0.105381, -0.993875, 0.033285,
		33.078411, 32.058376, 20.675343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.071831, 32.622162, 20.011192>,  <33.004642, 32.754086, 20.652044>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.071831, 32.622162, 20.011192> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.003475, 32.254120, 20.152161>,  <32.962463, 32.033295, 20.236742>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.003475, 32.254120, 20.152161>,  <33.071831, 32.622162, 20.011192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.003475, 32.254120, 20.152161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.609646, -0.182254, -0.771437,
		0.774035, -0.346679, -0.529795,
		-0.170884, -0.920107, 0.352423,
		32.952209, 31.978088, 20.257887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.250156, 32.258629, 19.468845>,  <33.071831, 32.622162, 20.011192>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.250156, 32.258629, 19.468845> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.994900, 32.049946, 19.695330>,  <32.841743, 31.924736, 19.831221>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.994900, 32.049946, 19.695330>,  <33.250156, 32.258629, 19.468845>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.994900, 32.049946, 19.695330> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.539613, -0.221496, -0.812254,
		0.549169, -0.823872, -0.140172,
		-0.638146, -0.521703, 0.566211,
		32.803455, 31.893435, 19.865192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144871, 31.590034, 19.120470>,  <33.250156, 32.258629, 19.468845>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144871, 31.590034, 19.120470> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.852791, 31.657061, 19.385418>,  <32.677544, 31.697275, 19.544386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.852791, 31.657061, 19.385418>,  <33.144871, 31.590034, 19.120470>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.852791, 31.657061, 19.385418> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681952, -0.119375, -0.721589,
		-0.041839, -0.978608, 0.201436,
		-0.730199, 0.167561, 0.662369,
		32.633732, 31.707329, 19.584129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.712761, 31.050695, 19.114113>,  <33.144871, 31.590034, 19.120470>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.712761, 31.050695, 19.114113> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.480213, 31.349089, 19.244049>,  <32.340683, 31.528124, 19.322010>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.480213, 31.349089, 19.244049>,  <32.712761, 31.050695, 19.114113>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.480213, 31.349089, 19.244049> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727765, -0.298248, -0.617581,
		-0.363821, -0.595451, 0.716291,
		-0.581371, 0.745980, 0.324840,
		32.305801, 31.572884, 19.341501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087685, 30.726728, 19.190731>,  <32.712761, 31.050695, 19.114113>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087685, 30.726728, 19.190731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.956083, 31.104443, 19.187109>,  <31.877121, 31.331070, 19.184937>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.956083, 31.104443, 19.187109>,  <32.087685, 30.726728, 19.190731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.956083, 31.104443, 19.187109> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774574, -0.275337, -0.569407,
		-0.540175, -0.180326, 0.822006,
		-0.329008, 0.944284, -0.009055,
		31.857382, 31.387728, 19.184393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.394308, 30.640949, 18.996330>,  <32.087685, 30.726728, 19.190731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.394308, 30.640949, 18.996330> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.441826, 31.037409, 18.972635>,  <31.470337, 31.275286, 18.958418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.441826, 31.037409, 18.972635>,  <31.394308, 30.640949, 18.996330>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.441826, 31.037409, 18.972635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.753013, 0.051046, -0.656022,
		-0.647193, 0.122538, 0.752413,
		0.118795, 0.991150, -0.059236,
		31.477465, 31.334753, 18.954865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.708410, 31.012417, 19.061905>,  <31.394308, 30.640949, 18.996330>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.708410, 31.012417, 19.061905> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967289, 31.218401, 18.837067>,  <31.122616, 31.341991, 18.702164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.967289, 31.218401, 18.837067>,  <30.708410, 31.012417, 19.061905>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.967289, 31.218401, 18.837067> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632461, -0.048933, -0.773045,
		-0.425594, 0.855816, 0.294023,
		0.647197, 0.514961, -0.562095,
		31.161448, 31.372889, 18.668438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.352165, 31.493011, 18.766068>,  <30.708410, 31.012417, 19.061905>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.352165, 31.493011, 18.766068> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.681614, 31.511276, 18.539949>,  <30.879284, 31.522234, 18.404278>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.681614, 31.511276, 18.539949>,  <30.352165, 31.493011, 18.766068>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.681614, 31.511276, 18.539949> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567137, 0.067711, -0.820836,
		0.000797, 0.996660, 0.081664,
		0.823623, 0.045660, -0.565296,
		30.928701, 31.524975, 18.370361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.230299, 31.951128, 18.357933>,  <30.352165, 31.493011, 18.766068>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.230299, 31.951128, 18.357933> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503860, 31.751123, 18.145420>,  <30.667997, 31.631121, 18.017912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.503860, 31.751123, 18.145420>,  <30.230299, 31.951128, 18.357933>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.503860, 31.751123, 18.145420> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576411, 0.076091, -0.813609,
		0.447241, 0.862668, -0.236175,
		0.683905, -0.500013, -0.531282,
		30.709032, 31.601120, 17.986034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.300243, 32.316597, 17.668833>,  <30.230299, 31.951128, 18.357933>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.300243, 32.316597, 17.668833> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448290, 31.951778, 17.598200>,  <30.537117, 31.732887, 17.555820>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.448290, 31.951778, 17.598200>,  <30.300243, 32.316597, 17.668833>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.448290, 31.951778, 17.598200> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550173, -0.062034, -0.832744,
		0.748548, 0.405364, -0.524744,
		0.370116, -0.912048, -0.176584,
		30.559324, 31.678164, 17.545225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.954660, 32.767517, 17.913147>,  <30.300243, 32.316597, 17.668833>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.954660, 32.767517, 17.913147> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748209, 33.092297, 17.804079>,  <30.624338, 33.287163, 17.738638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.748209, 33.092297, 17.804079>,  <30.954660, 32.767517, 17.913147>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.748209, 33.092297, 17.804079> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744297, 0.582706, 0.326307,
		0.423830, -0.034529, -0.905083,
		-0.516130, 0.811949, -0.272668,
		30.593370, 33.335880, 17.722279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.532829, 33.307064, 17.790926>,  <30.954660, 32.767517, 17.913147>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.532829, 33.307064, 17.790926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188147, 33.491119, 17.876471>,  <30.981337, 33.601551, 17.927797>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.188147, 33.491119, 17.876471>,  <31.532829, 33.307064, 17.790926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.188147, 33.491119, 17.876471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.502545, 0.715729, 0.484954,
		0.070076, 0.525364, -0.847987,
		-0.861706, 0.460136, 0.213863,
		30.929634, 33.629162, 17.940630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.599621, 34.095543, 17.523958>,  <31.532829, 33.307064, 17.790926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.599621, 34.095543, 17.523958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.345282, 34.035450, 17.826778>,  <31.192678, 33.999393, 18.008471>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.345282, 34.035450, 17.826778>,  <31.599621, 34.095543, 17.523958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.345282, 34.035450, 17.826778> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594399, 0.530369, 0.604481,
		-0.492328, 0.834350, -0.247938,
		-0.635848, -0.150229, 0.757053,
		31.154528, 33.990383, 18.053894>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.697563, 34.680584, 17.868666>,  <31.599621, 34.095543, 17.523958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.697563, 34.680584, 17.868666> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.497622, 34.460213, 18.135986>,  <31.377657, 34.327991, 18.296379>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.497622, 34.460213, 18.135986>,  <31.697563, 34.680584, 17.868666>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.497622, 34.460213, 18.135986> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506943, 0.439526, 0.741502,
		-0.702248, 0.709435, 0.059588,
		-0.499856, -0.550926, 0.668299,
		31.347664, 34.294933, 18.336475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.415451, 35.119362, 18.440741>,  <31.697563, 34.680584, 17.868666>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.415451, 35.119362, 18.440741> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.376265, 34.775398, 18.641121>,  <31.352753, 34.569019, 18.761349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.376265, 34.775398, 18.641121>,  <31.415451, 35.119362, 18.440741>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.376265, 34.775398, 18.641121> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.267376, 0.462121, 0.845550,
		-0.958599, 0.216779, 0.184647,
		-0.097969, -0.859913, 0.500950,
		31.346874, 34.517426, 18.791407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.039593, 35.319504, 19.044155>,  <31.415451, 35.119362, 18.440741>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.039593, 35.319504, 19.044155> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220451, 34.972679, 19.127840>,  <31.328966, 34.764584, 19.178051>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.220451, 34.972679, 19.127840>,  <31.039593, 35.319504, 19.044155>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.220451, 34.972679, 19.127840> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.402794, 0.407768, 0.819440,
		-0.795815, -0.286236, 0.533618,
		0.452146, -0.867060, 0.209214,
		31.356094, 34.712563, 19.190603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.855364, 35.051350, 19.805014>,  <31.039593, 35.319504, 19.044155>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.855364, 35.051350, 19.805014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.196367, 34.866821, 19.706701>,  <31.400969, 34.756104, 19.647713>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.196367, 34.866821, 19.706701>,  <30.855364, 35.051350, 19.805014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.196367, 34.866821, 19.706701> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.436439, 0.369440, 0.820387,
		-0.287663, -0.806656, 0.516291,
		0.852508, -0.461325, -0.245782,
		31.452120, 34.728424, 19.632967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.206625, 34.945370, 20.249920>,  <30.855364, 35.051350, 19.805014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.206625, 34.945370, 20.249920> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004372, 35.270935, 20.364378>,  <29.883020, 35.466274, 20.433052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.004372, 35.270935, 20.364378>,  <30.206625, 34.945370, 20.249920>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.004372, 35.270935, 20.364378> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.607159, -0.100066, -0.788254,
		-0.612938, -0.572302, 0.544773,
		-0.505632, 0.813915, 0.286144,
		29.852682, 35.515110, 20.450222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.484884, 34.779491, 20.230009>,  <30.206625, 34.945370, 20.249920>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.484884, 34.779491, 20.230009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489685, 35.176552, 20.181829>,  <29.492565, 35.414787, 20.152922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.489685, 35.176552, 20.181829>,  <29.484884, 34.779491, 20.230009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.489685, 35.176552, 20.181829> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737040, -0.072622, -0.671936,
		-0.675742, 0.096841, 0.730749,
		0.012003, 0.992647, -0.120450,
		29.493286, 35.474346, 20.145695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.746710, 35.009525, 20.276178>,  <29.484884, 34.779491, 20.230009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.746710, 35.009525, 20.276178> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941223, 35.310909, 20.099169>,  <29.057932, 35.491737, 19.992962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.941223, 35.310909, 20.099169>,  <28.746710, 35.009525, 20.276178>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.941223, 35.310909, 20.099169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723150, 0.062740, -0.687836,
		-0.490491, 0.654497, 0.575372,
		0.486285, 0.753457, -0.442526,
		29.087109, 35.536945, 19.966412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.201273, 35.514088, 20.221350>,  <28.746710, 35.009525, 20.276178>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.201273, 35.514088, 20.221350> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496094, 35.563210, 19.955515>,  <28.672987, 35.592682, 19.796015>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.496094, 35.563210, 19.955515>,  <28.201273, 35.514088, 20.221350>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.496094, 35.563210, 19.955515> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.675706, 0.153232, -0.721069,
		0.013283, 0.980530, 0.195922,
		0.737051, 0.122808, -0.664585,
		28.717209, 35.600052, 19.756140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.003143, 36.002831, 19.818893>,  <28.201273, 35.514088, 20.221350>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.003143, 36.002831, 19.818893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292912, 35.854622, 19.586369>,  <28.466772, 35.765697, 19.446854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.292912, 35.854622, 19.586369>,  <28.003143, 36.002831, 19.818893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.292912, 35.854622, 19.586369> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601989, 0.070864, -0.795354,
		0.335893, 0.926115, -0.171716,
		0.724421, -0.370525, -0.581314,
		28.510239, 35.743465, 19.411974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.105862, 36.551922, 19.280785>,  <28.003143, 36.002831, 19.818893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.105862, 36.551922, 19.280785> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245895, 36.206085, 19.136606>,  <28.329916, 35.998585, 19.050100>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.245895, 36.206085, 19.136606>,  <28.105862, 36.551922, 19.280785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.245895, 36.206085, 19.136606> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548037, 0.123013, -0.827359,
		0.759667, 0.487184, -0.430763,
		0.350086, -0.864592, -0.360444,
		28.350922, 35.946709, 19.028473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.082952, 36.540897, 18.553457>,  <28.105862, 36.551922, 19.280785>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.082952, 36.540897, 18.553457> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137701, 36.147972, 18.604570>,  <28.170549, 35.912216, 18.635239>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.137701, 36.147972, 18.604570>,  <28.082952, 36.540897, 18.553457>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.137701, 36.147972, 18.604570> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.668967, -0.186795, -0.719437,
		0.730582, 0.012988, -0.682702,
		0.136869, -0.982313, 0.127781,
		28.178762, 35.853279, 18.642904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.123814, 36.335472, 17.921171>,  <28.082952, 36.540897, 18.553457>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.123814, 36.335472, 17.921171> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030720, 36.012348, 18.137791>,  <27.974863, 35.818474, 18.267763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.030720, 36.012348, 18.137791>,  <28.123814, 36.335472, 17.921171>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.030720, 36.012348, 18.137791> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645013, -0.288539, -0.707604,
		0.727869, -0.513989, -0.453897,
		-0.232734, -0.807812, 0.541548,
		27.960899, 35.770004, 18.300255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.177540, 35.749527, 17.415854>,  <28.123814, 36.335472, 17.921171>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.177540, 35.749527, 17.415854> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940945, 35.651432, 17.723101>,  <27.798988, 35.592575, 17.907450>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.940945, 35.651432, 17.723101>,  <28.177540, 35.749527, 17.415854>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940945, 35.651432, 17.723101> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685265, -0.349134, -0.639153,
		0.424919, -0.904414, 0.038456,
		-0.591486, -0.245235, 0.768117,
		27.763498, 35.577862, 17.953535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.084049, 37.234901, 31.409086> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716141, 37.205437, 31.563274>,  <36.495396, 37.187756, 31.655788>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.716141, 37.205437, 31.563274>,  <37.084049, 37.234901, 31.409086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716141, 37.205437, 31.563274> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383738, -0.036969, -0.922702,
		0.082221, -0.996598, 0.005735,
		-0.919774, -0.073665, 0.385472,
		36.440208, 37.183338, 31.678917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.746460, 36.642017, 31.128109>,  <37.084049, 37.234901, 31.409086>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.746460, 36.642017, 31.128109> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457310, 36.882755, 31.263887>,  <36.283817, 37.027199, 31.345354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.457310, 36.882755, 31.263887>,  <36.746460, 36.642017, 31.128109>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.457310, 36.882755, 31.263887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426741, -0.002486, -0.904371,
		-0.543449, -0.798607, 0.258630,
		-0.722880, 0.601847, 0.339447,
		36.240444, 37.063309, 31.365721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.343655, 36.529896, 30.639364>,  <36.746460, 36.642017, 31.128109>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.343655, 36.529896, 30.639364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162437, 36.837257, 30.820169>,  <36.053707, 37.021675, 30.928652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.162437, 36.837257, 30.820169>,  <36.343655, 36.529896, 30.639364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162437, 36.837257, 30.820169> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593848, 0.118046, -0.795870,
		-0.664907, -0.628986, 0.402834,
		-0.453039, 0.768402, 0.452012,
		36.026527, 37.067780, 30.955772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511135, 36.365299, 30.716599>,  <36.343655, 36.529896, 30.639364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511135, 36.365299, 30.716599> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604595, 36.754093, 30.706366>,  <35.660671, 36.987370, 30.700226>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.604595, 36.754093, 30.706366>,  <35.511135, 36.365299, 30.716599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.604595, 36.754093, 30.706366> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600795, 0.123632, -0.789785,
		-0.764496, 0.199901, 0.612850,
		0.233646, 0.971985, -0.025584,
		35.674690, 37.045689, 30.698690>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.919437, 36.578491, 30.453905>,  <35.511135, 36.365299, 30.716599>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.919437, 36.578491, 30.453905> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165947, 36.887329, 30.391840>,  <35.313850, 37.072632, 30.354601>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.165947, 36.887329, 30.391840>,  <34.919437, 36.578491, 30.453905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.165947, 36.887329, 30.391840> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.489254, 0.220963, -0.843686,
		-0.617124, 0.595852, 0.513925,
		0.616270, 0.772098, -0.155161,
		35.350826, 37.118958, 30.345291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.543106, 37.217541, 30.367256>,  <34.919437, 36.578491, 30.453905>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.543106, 37.217541, 30.367256> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894760, 37.284008, 30.188591>,  <35.105751, 37.323891, 30.081392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.894760, 37.284008, 30.188591>,  <34.543106, 37.217541, 30.367256>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.894760, 37.284008, 30.188591> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476495, 0.289407, -0.830179,
		-0.008684, 0.942672, 0.333607,
		0.879134, 0.166171, -0.446665,
		35.158501, 37.333858, 30.054592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.449226, 37.821091, 30.004974>,  <34.543106, 37.217541, 30.367256>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.449226, 37.821091, 30.004974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767212, 37.638638, 29.844990>,  <34.958004, 37.529167, 29.748999>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.767212, 37.638638, 29.844990>,  <34.449226, 37.821091, 30.004974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.767212, 37.638638, 29.844990> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343764, 0.204519, -0.916514,
		0.499852, 0.866092, 0.005784,
		0.794968, -0.456133, -0.399960,
		35.005703, 37.501797, 29.725002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.668697, 38.267242, 29.405287>,  <34.449226, 37.821091, 30.004974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.668697, 38.267242, 29.405287> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862835, 37.924679, 29.334856>,  <34.979317, 37.719139, 29.292599>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.862835, 37.924679, 29.334856>,  <34.668697, 38.267242, 29.405287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.862835, 37.924679, 29.334856> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.185158, 0.096141, -0.977995,
		0.854495, 0.507262, -0.111910,
		0.485341, -0.856412, -0.176075,
		35.008438, 37.667755, 29.282034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.088512, 38.361519, 28.902977>,  <34.668697, 38.267242, 29.405287>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.088512, 38.361519, 28.902977> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018227, 37.967899, 28.891838>,  <34.976055, 37.731728, 28.885155>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.018227, 37.967899, 28.891838>,  <35.088512, 38.361519, 28.902977>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.018227, 37.967899, 28.891838> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251579, 0.072234, -0.965137,
		0.951753, -0.162581, -0.260258,
		-0.175713, -0.984048, -0.027847,
		34.965511, 37.672684, 28.883484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.361614, 38.067490, 28.212513>,  <35.088512, 38.361519, 28.902977>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.361614, 38.067490, 28.212513> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097683, 37.795631, 28.340710>,  <34.939323, 37.632515, 28.417627>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.097683, 37.795631, 28.340710>,  <35.361614, 38.067490, 28.212513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.097683, 37.795631, 28.340710> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371857, -0.075285, -0.925232,
		0.652958, -0.729667, -0.203056,
		-0.659824, -0.679646, 0.320490,
		34.899734, 37.591736, 28.436857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.381493, 37.557903, 27.620831>,  <35.361614, 38.067490, 28.212513>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.381493, 37.557903, 27.620831> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039200, 37.491962, 27.817013>,  <34.833824, 37.452400, 27.934723>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039200, 37.491962, 27.817013>,  <35.381493, 37.557903, 27.620831>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039200, 37.491962, 27.817013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469810, -0.149621, -0.869995,
		0.216800, -0.974904, 0.050588,
		-0.855731, -0.164848, 0.490458,
		34.782482, 37.442509, 27.964149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.108978, 37.054115, 27.258883>,  <35.381493, 37.557903, 27.620831>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.108978, 37.054115, 27.258883> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810234, 37.213017, 27.472197>,  <34.630989, 37.308357, 27.600185>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.810234, 37.213017, 27.472197>,  <35.108978, 37.054115, 27.258883>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.810234, 37.213017, 27.472197> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599892, -0.056463, -0.798086,
		-0.286930, -0.915971, 0.280478,
		-0.746861, 0.397252, 0.533283,
		34.586174, 37.332191, 27.632181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.111927, 36.440784, 26.749514>,  <35.108978, 37.054115, 27.258883>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.111927, 36.440784, 26.749514> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430527, 36.649288, 26.626957>,  <35.621685, 36.774391, 26.553423>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.430527, 36.649288, 26.626957>,  <35.111927, 36.440784, 26.749514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.430527, 36.649288, 26.626957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.511290, -0.310147, 0.801494,
		0.322762, -0.795043, -0.513548,
		0.796497, 0.521264, -0.306394,
		35.669476, 36.805668, 26.535038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.699913, 35.957733, 26.966719>,  <35.111927, 36.440784, 26.749514>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.699913, 35.957733, 26.966719> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866692, 36.311443, 26.882612>,  <35.966759, 36.523670, 26.832148>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.866692, 36.311443, 26.882612>,  <35.699913, 35.957733, 26.966719>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.866692, 36.311443, 26.882612> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.695815, -0.161683, 0.699786,
		0.584808, -0.438078, -0.682706,
		0.416942, 0.884278, -0.210268,
		35.991776, 36.576725, 26.819532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.441288, 35.801991, 26.752655>,  <35.699913, 35.957733, 26.966719>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.441288, 35.801991, 26.752655> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473488, 36.188789, 26.849354>,  <36.492805, 36.420868, 26.907373>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.473488, 36.188789, 26.849354>,  <36.441288, 35.801991, 26.752655>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.473488, 36.188789, 26.849354> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848262, -0.193819, 0.492835,
		0.523424, 0.165392, -0.835866,
		0.080496, 0.966995, 0.241745,
		36.497635, 36.478889, 26.921877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.161278, 35.960705, 26.749809>,  <36.441288, 35.801991, 26.752655>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.161278, 35.960705, 26.749809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995548, 36.255100, 26.963974>,  <36.896111, 36.431736, 27.092472>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.995548, 36.255100, 26.963974>,  <37.161278, 35.960705, 26.749809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.995548, 36.255100, 26.963974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764488, -0.037786, 0.643529,
		0.493858, 0.675944, -0.546996,
		-0.414321, 0.735984, 0.535412,
		36.871250, 36.475895, 27.124598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.854168, 36.278355, 27.098936>,  <37.161278, 35.960705, 26.749809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.854168, 36.278355, 27.098936> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523647, 36.398224, 27.289690>,  <37.325333, 36.470146, 27.404142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.523647, 36.398224, 27.289690>,  <37.854168, 36.278355, 27.098936>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.523647, 36.398224, 27.289690> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483820, -0.055799, 0.873387,
		0.288342, 0.952408, -0.098883,
		-0.826303, 0.299675, 0.476884,
		37.275757, 36.488125, 27.432755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.122330, 36.830063, 27.483400>,  <37.854168, 36.278355, 27.098936>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.122330, 36.830063, 27.483400> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787388, 36.674576, 27.637144>,  <37.586422, 36.581284, 27.729389>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.787388, 36.674576, 27.637144>,  <38.122330, 36.830063, 27.483400>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.787388, 36.674576, 27.637144> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434954, -0.047863, 0.899180,
		-0.331130, 0.920113, 0.209153,
		-0.837358, -0.388718, 0.384358,
		37.536182, 36.557961, 27.752451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.984997, 37.211239, 28.137852>,  <38.122330, 36.830063, 27.483400>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.984997, 37.211239, 28.137852> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835258, 36.840328, 28.136145>,  <37.745415, 36.617783, 28.135120>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.835258, 36.840328, 28.136145>,  <37.984997, 37.211239, 28.137852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.835258, 36.840328, 28.136145> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403461, -0.167020, 0.899624,
		-0.834915, 0.335051, 0.436644,
		-0.374348, -0.927278, -0.004268,
		37.722954, 36.562145, 28.134865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945843, 37.059753, 28.857645>,  <37.984997, 37.211239, 28.137852>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945843, 37.059753, 28.857645> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888203, 36.702587, 28.687029>,  <37.853619, 36.488289, 28.584660>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.888203, 36.702587, 28.687029>,  <37.945843, 37.059753, 28.857645>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.888203, 36.702587, 28.687029> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638659, -0.413166, 0.649160,
		-0.755877, -0.178870, 0.629806,
		-0.144099, -0.892916, -0.426540,
		37.844975, 36.434711, 28.559067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732990, 36.459393, 29.462557>,  <37.945843, 37.059753, 28.857645>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732990, 36.459393, 29.462557> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909241, 36.296326, 29.142643>,  <38.014992, 36.198486, 28.950695>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.909241, 36.296326, 29.142643>,  <37.732990, 36.459393, 29.462557>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.909241, 36.296326, 29.142643> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685918, -0.421856, 0.592920,
		-0.579108, -0.809843, 0.093745,
		0.440625, -0.407666, -0.799786,
		38.041428, 36.174026, 28.902706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.815220, 35.760986, 29.714500>,  <37.732990, 36.459393, 29.462557>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.815220, 35.760986, 29.714500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038994, 35.792126, 29.384417>,  <38.173260, 35.810810, 29.186367>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.038994, 35.792126, 29.384417>,  <37.815220, 35.760986, 29.714500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.038994, 35.792126, 29.384417> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.775829, -0.399606, 0.488266,
		-0.291748, -0.913375, -0.283951,
		0.559439, 0.077847, -0.825208,
		38.206825, 35.815479, 29.136854>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.206158, 35.236198, 29.799274>,  <37.815220, 35.760986, 29.714500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.206158, 35.236198, 29.799274> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.415375, 35.439301, 29.525452>,  <38.540905, 35.561161, 29.361158>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.415375, 35.439301, 29.525452>,  <38.206158, 35.236198, 29.799274>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.415375, 35.439301, 29.525452> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.852041, -0.331645, 0.405017,
		-0.021381, -0.795109, -0.606090,
		0.523039, 0.507753, -0.684556,
		38.572285, 35.591625, 29.320086>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714851, 34.755032, 29.522455>,  <38.206158, 35.236198, 29.799274>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.714851, 34.755032, 29.522455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.835995, 35.133755, 29.478954>,  <38.908680, 35.360989, 29.452854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.835995, 35.133755, 29.478954>,  <38.714851, 34.755032, 29.522455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835995, 35.133755, 29.478954> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.689383, -0.138854, 0.710965,
		0.658047, -0.290298, -0.694767,
		0.302863, 0.946809, -0.108755,
		38.926853, 35.417797, 29.446327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.440121, 34.769844, 29.291327>,  <38.714851, 34.755032, 29.522455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.440121, 34.769844, 29.291327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.411869, 35.149559, 29.413877>,  <39.394917, 35.377388, 29.487408>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.411869, 35.149559, 29.413877>,  <39.440121, 34.769844, 29.291327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.411869, 35.149559, 29.413877> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.842007, -0.107939, 0.528558,
		0.534823, 0.295305, -0.791681,
		-0.070633, 0.949286, 0.306377,
		39.390678, 35.434345, 29.505791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.080540, 35.067982, 29.132452>,  <39.440121, 34.769844, 29.291327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.080540, 35.067982, 29.132452> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920074, 35.298573, 29.417196>,  <39.823795, 35.436928, 29.588043>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.920074, 35.298573, 29.417196>,  <40.080540, 35.067982, 29.132452>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.920074, 35.298573, 29.417196> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822297, -0.115772, 0.557157,
		0.403600, 0.808872, -0.427589,
		-0.401166, 0.576474, 0.711859,
		39.799725, 35.471516, 29.630754>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.597763, 35.132816, 29.557697>,  <40.080540, 35.067982, 29.132452>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.597763, 35.132816, 29.557697> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.329102, 35.294109, 29.806305>,  <40.167904, 35.390884, 29.955469>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.329102, 35.294109, 29.806305>,  <40.597763, 35.132816, 29.557697>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329102, 35.294109, 29.806305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.627837, -0.135585, 0.766445,
		0.393321, 0.904999, -0.162096,
		-0.671654, 0.403229, 0.621520,
		40.127605, 35.415077, 29.992762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.785652, 34.808079, 28.816845>,  <40.597763, 35.132816, 29.557697>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.785652, 34.808079, 28.816845> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.807686, 34.455479, 29.004427>,  <40.820904, 34.243919, 29.116976>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.807686, 34.455479, 29.004427>,  <40.785652, 34.808079, 28.816845>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.807686, 34.455479, 29.004427> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.153607, -0.471558, -0.868353,
		0.986596, -0.024204, -0.161379,
		0.055082, -0.881503, 0.468955,
		40.824211, 34.191029, 29.145113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.345112, 34.348923, 28.487329>,  <40.785652, 34.808079, 28.816845>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.345112, 34.348923, 28.487329> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.066521, 34.125767, 28.667852>,  <40.899368, 33.991871, 28.776167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.066521, 34.125767, 28.667852>,  <41.345112, 34.348923, 28.487329>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.066521, 34.125767, 28.667852> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073736, -0.569960, -0.818357,
		0.713783, -0.603243, 0.355826,
		-0.696475, -0.557892, 0.451308,
		40.857578, 33.958401, 28.803246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.442635, 33.684029, 28.228653>,  <41.345112, 34.348923, 28.487329>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.442635, 33.684029, 28.228653> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071018, 33.650215, 28.372725>,  <40.848049, 33.629929, 28.459167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.071018, 33.650215, 28.372725>,  <41.442635, 33.684029, 28.228653>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.071018, 33.650215, 28.372725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242332, -0.596587, -0.765087,
		0.279555, -0.798084, 0.533771,
		-0.929045, -0.084534, 0.360180,
		40.792305, 33.624855, 28.480778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.280746, 32.954922, 28.037350>,  <41.442635, 33.684029, 28.228653>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.280746, 32.954922, 28.037350> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944530, 33.155773, 28.118702>,  <40.742802, 33.276283, 28.167513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.944530, 33.155773, 28.118702>,  <41.280746, 32.954922, 28.037350>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.944530, 33.155773, 28.118702> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421162, -0.369511, -0.828302,
		-0.340761, -0.781876, 0.522065,
		-0.840538, 0.502127, 0.203382,
		40.692368, 33.306412, 28.179716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.784000, 32.479614, 27.896194>,  <41.280746, 32.954922, 28.037350>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.784000, 32.479614, 27.896194> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.585468, 32.826065, 27.872602>,  <40.466351, 33.033936, 27.858446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.585468, 32.826065, 27.872602>,  <40.784000, 32.479614, 27.896194>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.585468, 32.826065, 27.872602> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502802, -0.342180, -0.793790,
		-0.707708, -0.364322, 0.605325,
		-0.496326, 0.866130, -0.058982,
		40.436569, 33.085903, 27.854908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.094578, 32.310776, 27.782396>,  <40.784000, 32.479614, 27.896194>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.094578, 32.310776, 27.782396> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120720, 32.697411, 27.683256>,  <40.136406, 32.929394, 27.623772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.120720, 32.697411, 27.683256>,  <40.094578, 32.310776, 27.782396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.120720, 32.697411, 27.683256> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.576601, -0.166133, -0.799957,
		-0.814408, 0.195193, 0.546479,
		0.065358, 0.966592, -0.247849,
		40.140327, 32.987389, 27.608902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403446, 32.532726, 27.801813>,  <40.094578, 32.310776, 27.782396>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.403446, 32.532726, 27.801813> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572357, 32.798515, 27.555185>,  <39.673706, 32.957989, 27.407209>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.572357, 32.798515, 27.555185>,  <39.403446, 32.532726, 27.801813>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.572357, 32.798515, 27.555185> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749948, -0.125974, -0.649391,
		-0.509173, 0.736619, 0.445123,
		0.422280, 0.664472, -0.616569,
		39.699039, 32.997856, 27.370214>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.837025, 33.040012, 27.519751>,  <39.403446, 32.532726, 27.801813>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.837025, 33.040012, 27.519751> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147404, 33.071445, 27.269400>,  <39.333633, 33.090305, 27.119188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.147404, 33.071445, 27.269400>,  <38.837025, 33.040012, 27.519751>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.147404, 33.071445, 27.269400> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608148, -0.170265, -0.775349,
		-0.167498, 0.982259, -0.084325,
		0.775952, 0.078587, -0.625878,
		39.380188, 33.095020, 27.081636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.544743, 33.411255, 26.911634>,  <38.837025, 33.040012, 27.519751>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.544743, 33.411255, 26.911634> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894890, 33.263733, 26.786594>,  <39.104977, 33.175220, 26.711571>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.894890, 33.263733, 26.786594>,  <38.544743, 33.411255, 26.911634>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.894890, 33.263733, 26.786594> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.368465, -0.090316, -0.925244,
		0.313001, 0.925109, -0.214951,
		0.875365, -0.368804, -0.312601,
		39.157501, 33.153091, 26.692814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836823, 33.792854, 26.359781>,  <38.544743, 33.411255, 26.911634>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836823, 33.792854, 26.359781> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969357, 33.415737, 26.345045>,  <39.048878, 33.189468, 26.336205>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.969357, 33.415737, 26.345045>,  <38.836823, 33.792854, 26.359781>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.969357, 33.415737, 26.345045> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509951, -0.146093, -0.847706,
		0.793830, 0.299661, -0.529185,
		0.331335, -0.942794, -0.036839,
		39.068756, 33.132900, 26.333994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.968700, 33.638348, 25.702320>,  <38.836823, 33.792854, 26.359781>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.968700, 33.638348, 25.702320> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937820, 33.258362, 25.823381>,  <38.919292, 33.030369, 25.896019>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.937820, 33.258362, 25.823381>,  <38.968700, 33.638348, 25.702320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.937820, 33.258362, 25.823381> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535022, -0.216678, -0.816580,
		0.841304, -0.224967, -0.491526,
		-0.077201, -0.949969, 0.302654,
		38.914661, 32.973370, 25.914177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983627, 33.338608, 25.102337>,  <38.968700, 33.638348, 25.702320>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983627, 33.338608, 25.102337> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854172, 33.049694, 25.346817>,  <38.776501, 32.876347, 25.493505>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.854172, 33.049694, 25.346817>,  <38.983627, 33.338608, 25.102337>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.854172, 33.049694, 25.346817> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.624959, -0.321825, -0.711235,
		0.710414, -0.612155, -0.347244,
		-0.323635, -0.722284, 0.611200,
		38.757080, 32.833008, 25.530178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.105862, 32.755165, 24.764267>,  <38.983627, 33.338608, 25.102337>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.105862, 32.755165, 24.764267> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824329, 32.651440, 25.028805>,  <38.655411, 32.589207, 25.187529>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.824329, 32.651440, 25.028805>,  <39.105862, 32.755165, 24.764267>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824329, 32.651440, 25.028805> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553662, -0.383039, -0.739418,
		0.445060, -0.886589, 0.126024,
		-0.703832, -0.259311, 0.661346,
		38.613178, 32.573647, 25.227209>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.940784, 32.109745, 24.680370>,  <39.105862, 32.755165, 24.764267>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.940784, 32.109745, 24.680370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608372, 32.235817, 24.863697>,  <38.408924, 32.311459, 24.973692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.608372, 32.235817, 24.863697>,  <38.940784, 32.109745, 24.680370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.608372, 32.235817, 24.863697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555341, -0.423632, -0.715634,
		-0.031396, -0.849234, 0.527082,
		-0.831030, 0.315178, 0.458315,
		38.359062, 32.330372, 25.001192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471809, 31.514248, 24.742105>,  <38.940784, 32.109745, 24.680370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.471809, 31.514248, 24.742105> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212475, 31.809408, 24.817116>,  <38.056873, 31.986504, 24.862122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.212475, 31.809408, 24.817116>,  <38.471809, 31.514248, 24.742105>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.212475, 31.809408, 24.817116> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.681729, -0.452984, -0.574502,
		-0.338977, -0.500313, 0.796732,
		-0.648337, 0.737898, 0.187527,
		38.017975, 32.030777, 24.873373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.825920, 31.255016, 24.880541>,  <38.471809, 31.514248, 24.742105>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.825920, 31.255016, 24.880541> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712605, 31.631424, 24.806536>,  <37.644615, 31.857267, 24.762133>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.712605, 31.631424, 24.806536>,  <37.825920, 31.255016, 24.880541>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.712605, 31.631424, 24.806536> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.809166, -0.338085, -0.480571,
		-0.514776, 0.013565, 0.857217,
		-0.283293, 0.941018, -0.185014,
		37.627617, 31.913729, 24.751032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.140667, 31.317469, 24.959379>,  <37.825920, 31.255016, 24.880541>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.140667, 31.317469, 24.959379> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228527, 31.631235, 24.727364>,  <37.281242, 31.819494, 24.588154>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.228527, 31.631235, 24.727364>,  <37.140667, 31.317469, 24.959379>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.228527, 31.631235, 24.727364> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.814714, -0.179573, -0.551358,
		-0.536653, 0.593671, 0.599632,
		0.219647, 0.784416, -0.580040,
		37.294422, 31.866560, 24.553352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.540165, 31.767956, 24.902420>,  <37.140667, 31.317469, 24.959379>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.540165, 31.767956, 24.902420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773445, 31.830879, 24.583639>,  <36.913414, 31.868633, 24.392370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.773445, 31.830879, 24.583639>,  <36.540165, 31.767956, 24.902420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.773445, 31.830879, 24.583639> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773905, -0.190575, -0.603947,
		-0.246887, 0.968986, 0.010601,
		0.583197, 0.157311, -0.796954,
		36.948402, 31.878073, 24.344553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.075275, 32.127033, 24.593582>,  <36.540165, 31.767956, 24.902420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.075275, 32.127033, 24.593582> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.342037, 32.033638, 24.310534>,  <36.502094, 31.977602, 24.140703>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.342037, 32.033638, 24.310534>,  <36.075275, 32.127033, 24.593582>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.342037, 32.033638, 24.310534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741625, -0.115756, -0.660752,
		0.072364, 0.965446, -0.250355,
		0.666900, -0.233484, -0.707622,
		36.542107, 31.963593, 24.098248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.003277, 32.614677, 24.038521>,  <36.075275, 32.127033, 24.593582>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.003277, 32.614677, 24.038521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151955, 32.263561, 23.917641>,  <36.241161, 32.052891, 23.845114>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.151955, 32.263561, 23.917641>,  <36.003277, 32.614677, 24.038521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.151955, 32.263561, 23.917641> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.615181, 0.010900, -0.788311,
		0.695267, 0.478918, -0.535949,
		0.371694, -0.877792, -0.302199,
		36.263462, 32.000225, 23.826981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094406, 32.763126, 23.391241>,  <36.003277, 32.614677, 24.038521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094406, 32.763126, 23.391241> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063145, 32.364349, 23.390734>,  <36.044388, 32.125084, 23.390429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.063145, 32.364349, 23.390734>,  <36.094406, 32.763126, 23.391241>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.063145, 32.364349, 23.390734> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.447385, 0.036212, -0.893608,
		0.890920, -0.069274, -0.448846,
		-0.078158, -0.996940, -0.001270,
		36.039696, 32.065266, 23.390352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.192860, 32.588165, 22.669477>,  <36.094406, 32.763126, 23.391241>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.192860, 32.588165, 22.669477> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028770, 32.262749, 22.834337>,  <35.930317, 32.067497, 22.933252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.028770, 32.262749, 22.834337>,  <36.192860, 32.588165, 22.669477>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.028770, 32.262749, 22.834337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.626914, -0.076661, -0.775307,
		0.662340, -0.576431, -0.478573,
		-0.410224, -0.813541, 0.412149,
		35.905704, 32.018684, 22.957981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.226250, 31.980770, 22.165684>,  <36.192860, 32.588165, 22.669477>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.226250, 31.980770, 22.165684> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937809, 31.872066, 22.420609>,  <35.764744, 31.806845, 22.573563>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.937809, 31.872066, 22.420609>,  <36.226250, 31.980770, 22.165684>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.937809, 31.872066, 22.420609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633632, -0.113377, -0.765282,
		0.280228, -0.955664, -0.090439,
		-0.721099, -0.271758, 0.637310,
		35.721478, 31.790539, 22.611801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908817, 31.292028, 21.930292>,  <36.226250, 31.980770, 22.165684>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908817, 31.292028, 21.930292> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639214, 31.475309, 22.162073>,  <35.477451, 31.585278, 22.301142>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.639214, 31.475309, 22.162073>,  <35.908817, 31.292028, 21.930292>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.639214, 31.475309, 22.162073> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.685854, -0.096724, -0.721283,
		-0.274446, -0.883570, 0.379452,
		-0.674006, 0.458202, 0.579454,
		35.437012, 31.612770, 22.335909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.296997, 30.945892, 21.720879>,  <35.908817, 31.292028, 21.930292>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.296997, 30.945892, 21.720879> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144695, 31.252306, 21.928040>,  <35.053314, 31.436153, 22.052336>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.144695, 31.252306, 21.928040>,  <35.296997, 30.945892, 21.720879>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.144695, 31.252306, 21.928040> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.765851, 0.052612, -0.640862,
		-0.518170, -0.640644, 0.566636,
		-0.380752, 0.766034, 0.517900,
		35.030468, 31.482117, 22.083410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.532063, 30.811445, 21.950657>,  <35.296997, 30.945892, 21.720879>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.532063, 30.811445, 21.950657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556450, 31.210501, 21.963305>,  <34.571083, 31.449934, 21.970894>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.556450, 31.210501, 21.963305>,  <34.532063, 30.811445, 21.950657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.556450, 31.210501, 21.963305> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.856299, 0.068560, -0.511910,
		-0.512869, 0.004135, 0.858457,
		0.060973, 0.997638, 0.031621,
		34.574741, 31.509792, 21.972792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.873173, 30.977079, 22.196339>,  <34.532063, 30.811445, 21.950657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.873173, 30.977079, 22.196339> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064720, 31.282150, 22.022440>,  <34.179649, 31.465193, 21.918100>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.064720, 31.282150, 22.022440>,  <33.873173, 30.977079, 22.196339>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064720, 31.282150, 22.022440> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.826007, 0.223724, -0.517359,
		-0.297314, 0.606853, 0.737112,
		0.478870, 0.762677, -0.434749,
		34.208382, 31.510954, 21.892015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.765316, 31.538496, 22.668020>,  <33.873173, 30.977079, 22.196339>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.765316, 31.538496, 22.668020> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449913, 31.534225, 22.913992>,  <33.260670, 31.531664, 23.061575>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.449913, 31.534225, 22.913992>,  <33.765316, 31.538496, 22.668020>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.449913, 31.534225, 22.913992> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.608891, 0.127273, 0.782977,
		-0.086624, 0.991810, -0.093855,
		-0.788510, -0.010677, 0.614929,
		33.213360, 31.531023, 23.098471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.783318, 32.151119, 23.209688>,  <33.765316, 31.538496, 22.668020>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.783318, 32.151119, 23.209688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548569, 31.877090, 23.382324>,  <33.407719, 31.712675, 23.485905>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.548569, 31.877090, 23.382324>,  <33.783318, 32.151119, 23.209688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.548569, 31.877090, 23.382324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452011, 0.165042, 0.876611,
		-0.671768, 0.709538, 0.212801,
		-0.586867, -0.685068, 0.431589,
		33.372509, 31.671570, 23.511801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.530560, 32.469826, 23.918907>,  <33.783318, 32.151119, 23.209688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.530560, 32.469826, 23.918907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471214, 32.075619, 23.951761>,  <33.435608, 31.839094, 23.971474>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.471214, 32.075619, 23.951761>,  <33.530560, 32.469826, 23.918907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.471214, 32.075619, 23.951761> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507195, -0.004525, 0.861819,
		-0.848966, 0.169518, 0.500521,
		-0.148359, -0.985517, 0.082138,
		33.426708, 31.779964, 23.976402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.045017, 32.320435, 24.568167>,  <33.530560, 32.469826, 23.918907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.045017, 32.320435, 24.568167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225121, 31.973469, 24.483437>,  <33.333183, 31.765289, 24.432598>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.225121, 31.973469, 24.483437>,  <33.045017, 32.320435, 24.568167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.225121, 31.973469, 24.483437> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.372107, -0.033367, 0.927590,
		-0.811669, -0.496473, 0.307746,
		0.450255, -0.867410, -0.211824,
		33.360199, 31.713245, 24.419889>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024117, 31.879513, 25.159023>,  <33.045017, 32.320435, 24.568167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024117, 31.879513, 25.159023> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320477, 31.718996, 24.943605>,  <33.498291, 31.622686, 24.814354>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.320477, 31.718996, 24.943605>,  <33.024117, 31.879513, 25.159023>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320477, 31.718996, 24.943605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558803, -0.076493, 0.825765,
		-0.372570, -0.912750, 0.167570,
		0.740899, -0.401294, -0.538546,
		33.542747, 31.598608, 24.782042>
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
