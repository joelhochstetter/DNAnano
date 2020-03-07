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
	<4.478223, 4.411891, 5.151642> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609055, 4.775635, 5.048817>,  <4.687553, 4.993881, 4.987121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.609055, 4.775635, 5.048817>,  <4.478223, 4.411891, 5.151642>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.609055, 4.775635, 5.048817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.394861, -0.115627, -0.911436,
		-0.858548, 0.399616, 0.321252,
		0.327079, 0.909361, -0.257064,
		4.707178, 5.048443, 4.971697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.993119, 5.027704, 4.795425>,  <4.478223, 4.411891, 5.151642>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.993119, 5.027704, 4.795425> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365593, 5.020504, 4.649784>,  <4.589077, 5.016184, 4.562400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.365593, 5.020504, 4.649784>,  <3.993119, 5.027704, 4.795425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.365593, 5.020504, 4.649784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360262, -0.198118, -0.911570,
		-0.055727, 0.980013, -0.190969,
		0.931185, -0.018000, -0.364102,
		4.644948, 5.015104, 4.540554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.945988, 5.556787, 4.187027>,  <3.993119, 5.027704, 4.795425>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.945988, 5.556787, 4.187027> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.208878, 5.256760, 4.157490>,  <4.366611, 5.076743, 4.139768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.208878, 5.256760, 4.157490>,  <3.945988, 5.556787, 4.187027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.208878, 5.256760, 4.157490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432107, -0.294712, -0.852308,
		0.617527, 0.592065, -0.517803,
		0.657224, -0.750069, -0.073843,
		4.406045, 5.031739, 4.135337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.153893, 5.533408, 3.519353>,  <3.945988, 5.556787, 4.187027>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.153893, 5.533408, 3.519353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.195427, 5.178474, 3.699066>,  <4.220347, 4.965514, 3.806894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.195427, 5.178474, 3.699066>,  <4.153893, 5.533408, 3.519353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.195427, 5.178474, 3.699066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.225324, -0.460967, -0.858335,
		0.968735, -0.012109, -0.247803,
		0.103835, -0.887335, 0.449283,
		4.226577, 4.912274, 3.833851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.597307, 5.192862, 3.116494>,  <4.153893, 5.533408, 3.519353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.597307, 5.192862, 3.116494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.406693, 4.916641, 3.334137>,  <4.292324, 4.750909, 3.464723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.406693, 4.916641, 3.334137>,  <4.597307, 5.192862, 3.116494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.406693, 4.916641, 3.334137> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228758, -0.500185, -0.835156,
		0.848872, -0.522450, 0.080387,
		-0.476535, -0.690551, 0.544107,
		4.263732, 4.709476, 3.497369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.880001, 4.541034, 3.053268>,  <4.597307, 5.192862, 3.116494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.880001, 4.541034, 3.053268> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501884, 4.460312, 3.155796>,  <4.275015, 4.411879, 3.217313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.501884, 4.460312, 3.155796>,  <4.880001, 4.541034, 3.053268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.501884, 4.460312, 3.155796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.101061, -0.565904, -0.818254,
		0.310181, -0.799391, 0.514550,
		-0.945291, -0.201806, 0.256320,
		4.218297, 4.399770, 3.232692>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.707952, 3.839660, 2.857919>,  <4.880001, 4.541034, 3.053268>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.707952, 3.839660, 2.857919> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.359421, 4.035484, 2.871288>,  <4.150302, 4.152979, 2.879310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<4.359421, 4.035484, 2.871288>,  <4.707952, 3.839660, 2.857919>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.359421, 4.035484, 2.871288> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220373, -0.329542, -0.918062,
		-0.438432, -0.807299, 0.395026,
		-0.871328, 0.489561, 0.033425,
		4.098022, 4.182353, 2.881316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.052102, 3.340846, 2.803765>,  <4.707952, 3.839660, 2.857919>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.052102, 3.340846, 2.803765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.959244, 3.710121, 2.681236>,  <3.903529, 3.931686, 2.607719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.959244, 3.710121, 2.681236>,  <4.052102, 3.340846, 2.803765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.959244, 3.710121, 2.681236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283573, -0.365481, -0.886572,
		-0.930427, -0.118949, 0.346635,
		-0.232146, 0.923187, -0.306323,
		3.889600, 3.987077, 2.589339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<3.029122, 3.795817, 1.295723> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.828430, 4.042446, 1.538410>,  <2.708015, 4.190423, 1.684023>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.828430, 4.042446, 1.538410>,  <3.029122, 3.795817, 1.295723>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.828430, 4.042446, 1.538410> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.804368, 0.074528, 0.589438,
		0.318213, 0.783763, -0.533344,
		-0.501729, 0.616572, 0.606719,
		2.677912, 4.227417, 1.720426>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.590502, 4.351659, 1.528758>,  <3.029122, 3.795817, 1.295723>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.590502, 4.351659, 1.528758> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.271500, 4.318489, 1.767792>,  <3.080098, 4.298587, 1.911212>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.271500, 4.318489, 1.767792>,  <3.590502, 4.351659, 1.528758>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.271500, 4.318489, 1.767792> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558117, 0.274735, 0.782960,
		-0.229105, 0.957937, -0.172821,
		-0.797507, -0.082925, 0.597584,
		3.032248, 4.293612, 1.947067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.499261, 4.940533, 1.993766>,  <3.590502, 4.351659, 1.528758>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.499261, 4.940533, 1.993766> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325729, 4.615471, 2.149399>,  <3.221611, 4.420434, 2.242779>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.325729, 4.615471, 2.149399>,  <3.499261, 4.940533, 1.993766>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.325729, 4.615471, 2.149399> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389950, 0.219945, 0.894183,
		-0.812239, 0.539645, 0.221476,
		-0.433829, -0.812654, 0.389083,
		3.195581, 4.371675, 2.266124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.310527, 5.188386, 2.622733>,  <3.499261, 4.940533, 1.993766>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.310527, 5.188386, 2.622733> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.431107, 4.807850, 2.597179>,  <3.503454, 4.579528, 2.581847>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.431107, 4.807850, 2.597179>,  <3.310527, 5.188386, 2.622733>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.431107, 4.807850, 2.597179> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.334903, 0.042911, 0.941275,
		-0.892731, -0.305141, 0.331542,
		0.301448, -0.951340, -0.063885,
		3.521541, 4.522448, 2.578014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.994812, 4.823317, 3.180307>,  <3.310527, 5.188386, 2.622733>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.994812, 4.823317, 3.180307> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.333405, 4.637318, 3.076580>,  <3.536560, 4.525718, 3.014344>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.333405, 4.637318, 3.076580>,  <2.994812, 4.823317, 3.180307>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.333405, 4.637318, 3.076580> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.353191, 0.125967, 0.927032,
		-0.398403, -0.876304, 0.270862,
		0.846482, -0.464999, -0.259317,
		3.587349, 4.497818, 2.998785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.021854, 4.243322, 3.669849>,  <2.994812, 4.823317, 3.180307>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.021854, 4.243322, 3.669849> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396423, 4.281712, 3.534851>,  <3.621165, 4.304745, 3.453852>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.396423, 4.281712, 3.534851>,  <3.021854, 4.243322, 3.669849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.396423, 4.281712, 3.534851> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326357, 0.115004, 0.938224,
		0.128863, -0.988717, 0.076369,
		0.936422, 0.095979, -0.337495,
		3.677350, 4.310503, 3.433603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.503935, 3.825996, 4.120649>,  <3.021854, 4.243322, 3.669849>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.503935, 3.825996, 4.120649> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.742111, 4.087433, 3.933773>,  <3.885017, 4.244295, 3.821648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.742111, 4.087433, 3.933773>,  <3.503935, 3.825996, 4.120649>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.742111, 4.087433, 3.933773> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407767, 0.255182, 0.876703,
		0.692225, -0.712529, -0.114568,
		0.595441, 0.653593, -0.467189,
		3.920744, 4.283511, 3.793616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.257498, 3.744543, 4.324972>,  <3.503935, 3.825996, 4.120649>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.257498, 3.744543, 4.324972> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.200867, 4.126785, 4.221611>,  <4.166888, 4.356131, 4.159595>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.200867, 4.126785, 4.221611>,  <4.257498, 3.744543, 4.324972>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.200867, 4.126785, 4.221611> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.429570, 0.294481, 0.853669,
		0.891866, 0.009860, -0.452192,
		-0.141579, 0.955606, -0.258402,
		4.158393, 4.413467, 4.144090>
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
