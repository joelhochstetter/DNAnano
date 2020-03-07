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
	<1.342306, 5.216552, 3.740289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423973, 5.174545, 4.129604>,  <1.472973, 5.149341, 4.363193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.423973, 5.174545, 4.129604>,  <1.342306, 5.216552, 3.740289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.423973, 5.174545, 4.129604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812494, -0.536401, -0.228314,
		0.546049, 0.837404, -0.024190,
		0.204167, -0.105017, 0.973287,
		1.485223, 5.143040, 4.421590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.106814, 5.232514, 3.768141>,  <1.342306, 5.216552, 3.740289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.106814, 5.232514, 3.768141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.932732, 5.039244, 4.072020>,  <1.828282, 4.923282, 4.254346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<1.932732, 5.039244, 4.072020>,  <2.106814, 5.232514, 3.768141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<1.932732, 5.039244, 4.072020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.710021, -0.703022, -0.040382,
		0.553594, 0.521826, 0.649023,
		-0.435205, -0.483176, 0.759696,
		1.802170, 4.894291, 4.299928>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.526306, 5.315851, 4.447382>,  <2.106814, 5.232514, 3.768141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.526306, 5.315851, 4.447382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.297462, 4.996658, 4.371574>,  <2.160156, 4.805143, 4.326090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.297462, 4.996658, 4.371574>,  <2.526306, 5.315851, 4.447382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.297462, 4.996658, 4.371574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819384, -0.545922, -0.174869,
		0.036080, -0.255333, 0.966180,
		-0.572108, -0.797982, -0.189519,
		2.125830, 4.757264, 4.314719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.746834, 4.839156, 4.882256>,  <2.526306, 5.315851, 4.447382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.746834, 4.839156, 4.882256> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.580444, 4.656219, 4.567854>,  <2.480611, 4.546457, 4.379212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.580444, 4.656219, 4.567854>,  <2.746834, 4.839156, 4.882256>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.580444, 4.656219, 4.567854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.863031, -0.470950, -0.182712,
		-0.286608, -0.754350, 0.590603,
		-0.415973, -0.457342, -0.786006,
		2.455652, 4.519017, 4.332052>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.945574, 4.168046, 4.962111>,  <2.746834, 4.839156, 4.882256>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.945574, 4.168046, 4.962111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.865715, 4.209061, 4.572315>,  <2.817800, 4.233670, 4.338438>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<2.865715, 4.209061, 4.572315>,  <2.945574, 4.168046, 4.962111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.865715, 4.209061, 4.572315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.845484, -0.484651, -0.224213,
		-0.495276, -0.868677, 0.010067,
		-0.199648, 0.102536, -0.974488,
		2.805821, 4.239822, 4.279969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.985440, 3.480195, 4.632594>,  <2.945574, 4.168046, 4.962111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.985440, 3.480195, 4.632594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023155, 3.745714, 4.335815>,  <3.045784, 3.905025, 4.157749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.023155, 3.745714, 4.335815>,  <2.985440, 3.480195, 4.632594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.023155, 3.745714, 4.335815> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.954171, -0.272873, -0.122872,
		-0.284019, -0.696357, -0.659105,
		0.094289, 0.663797, -0.741945,
		3.051442, 3.944853, 4.113232>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.180459, 3.104208, 4.058153>,  <2.985440, 3.480195, 4.632594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.180459, 3.104208, 4.058153> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.281166, 3.489777, 4.023592>,  <3.341590, 3.721118, 4.002855>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.281166, 3.489777, 4.023592>,  <3.180459, 3.104208, 4.058153>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.281166, 3.489777, 4.023592> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940540, -0.222667, 0.256521,
		0.228027, -0.145850, -0.962669,
		0.251768, 0.963923, -0.086403,
		3.356697, 3.778954, 3.997671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.844289, 3.080476, 3.860247>,  <3.180459, 3.104208, 4.058153>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.844289, 3.080476, 3.860247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826538, 3.447338, 4.018667>,  <3.815887, 3.667456, 4.113719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<3.826538, 3.447338, 4.018667>,  <3.844289, 3.080476, 3.860247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.826538, 3.447338, 4.018667> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963304, -0.065764, 0.260233,
		0.264720, 0.393064, -0.880581,
		-0.044377, 0.917156, 0.396050,
		3.813225, 3.722485, 4.137482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<5.369997, 4.431469, 5.389650> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.456192, 4.607815, 5.041121>,  <5.507909, 4.713622, 4.832003>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<5.456192, 4.607815, 5.041121>,  <5.369997, 4.431469, 5.389650>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<5.456192, 4.607815, 5.041121> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.906795, -0.240744, -0.346070,
		-0.362335, 0.864686, 0.347895,
		0.215488, 0.440863, -0.871323,
		5.520838, 4.740074, 4.779724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.781230, 4.891214, 5.104937>,  <5.369997, 4.431469, 5.389650>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.781230, 4.891214, 5.104937> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.996544, 4.735489, 4.805956>,  <5.125732, 4.642054, 4.626567>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.996544, 4.735489, 4.805956>,  <4.781230, 4.891214, 5.104937>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.996544, 4.735489, 4.805956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818762, -0.451736, -0.354350,
		-0.199698, 0.802726, -0.561917,
		0.538284, -0.389313, -0.747452,
		5.158029, 4.618695, 4.581720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.488638, 4.982207, 4.518841>,  <4.781230, 4.891214, 5.104937>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.488638, 4.982207, 4.518841> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.704201, 4.649673, 4.464485>,  <4.833538, 4.450153, 4.431871>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.704201, 4.649673, 4.464485>,  <4.488638, 4.982207, 4.518841>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.704201, 4.649673, 4.464485> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773647, -0.424641, -0.470266,
		0.333243, 0.358559, -0.872000,
		0.538906, -0.831333, -0.135890,
		4.865872, 4.400273, 4.423718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<4.495507, 4.762871, 3.759631>,  <4.488638, 4.982207, 4.518841>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<4.495507, 4.762871, 3.759631> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.574356, 4.429310, 3.965836>,  <4.621665, 4.229173, 4.089558>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<4.574356, 4.429310, 3.965836>,  <4.495507, 4.762871, 3.759631>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<4.574356, 4.429310, 3.965836> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586912, -0.521567, -0.619275,
		0.785288, -0.180486, -0.592239,
		0.197122, -0.833902, 0.515510,
		4.633492, 4.179139, 4.120489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.775697, 4.992845, 3.725103>,  <4.495507, 4.762871, 3.759631>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.775697, 4.992845, 3.725103> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.650124, 4.616314, 3.774660>,  <3.574780, 4.390396, 3.804394>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.650124, 4.616314, 3.774660>,  <3.775697, 4.992845, 3.725103>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.650124, 4.616314, 3.774660> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893343, 0.248668, -0.374303,
		0.321534, -0.228183, -0.918993,
		-0.313934, -0.941327, 0.123891,
		3.555943, 4.333916, 3.811828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<3.271370, 4.830940, 3.121499>,  <3.775697, 4.992845, 3.725103>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<3.271370, 4.830940, 3.121499> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.183022, 4.563141, 3.405186>,  <3.130013, 4.402462, 3.575398>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<3.183022, 4.563141, 3.405186>,  <3.271370, 4.830940, 3.121499>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<3.183022, 4.563141, 3.405186> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.960846, 0.274113, -0.040475,
		-0.167308, -0.690389, -0.703827,
		-0.220871, -0.669497, 0.709218,
		3.116760, 4.362292, 3.617951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.659832, 4.499937, 2.977018>,  <3.271370, 4.830940, 3.121499>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.659832, 4.499937, 2.977018> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702530, 4.459072, 3.372627>,  <2.728149, 4.434553, 3.609993>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.702530, 4.459072, 3.372627>,  <2.659832, 4.499937, 2.977018>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.702530, 4.459072, 3.372627> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971358, 0.201672, 0.125670,
		-0.212298, -0.974110, -0.077714,
		0.106744, -0.102168, 0.989023,
		2.734553, 4.428423, 3.669334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<2.001614, 4.218079, 3.137725>,  <2.659832, 4.499937, 2.977018>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<2.001614, 4.218079, 3.137725> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.186127, 4.373024, 3.457016>,  <2.296834, 4.465991, 3.648591>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<2.186127, 4.373024, 3.457016>,  <2.001614, 4.218079, 3.137725>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<2.186127, 4.373024, 3.457016> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811298, 0.548358, 0.202727,
		-0.359186, -0.741116, 0.567215,
		0.461282, 0.387364, 0.798228,
		2.324511, 4.489233, 3.696485>
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
