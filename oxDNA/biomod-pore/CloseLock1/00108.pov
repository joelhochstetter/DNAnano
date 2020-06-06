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
	<24.141014, 35.284275, 34.789993> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.204521, 35.111366, 35.145058>,  <24.242626, 35.007622, 35.358097>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.204521, 35.111366, 35.145058>,  <24.141014, 35.284275, 34.789993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.204521, 35.111366, 35.145058> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495304, -0.742872, -0.450350,
		0.854088, 0.511162, 0.096160,
		0.158767, -0.432267, 0.887659,
		24.252151, 34.981686, 35.411354>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.944523, 35.186565, 34.815994>,  <24.141014, 35.284275, 34.789993>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.944523, 35.186565, 34.815994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725122, 34.972904, 35.073315>,  <24.593483, 34.844707, 35.227707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.725122, 34.972904, 35.073315>,  <24.944523, 35.186565, 34.815994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.725122, 34.972904, 35.073315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.456381, -0.835898, -0.304944,
		0.700618, 0.126328, 0.702265,
		-0.548499, -0.534150, 0.643299,
		24.560574, 34.812660, 35.266304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.384361, 34.797626, 35.238670>,  <24.944523, 35.186565, 34.815994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.384361, 34.797626, 35.238670> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027809, 34.646870, 35.137959>,  <24.813879, 34.556416, 35.077530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.027809, 34.646870, 35.137959>,  <25.384361, 34.797626, 35.238670>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.027809, 34.646870, 35.137959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453204, -0.732390, -0.508144,
		0.007114, -0.567057, 0.823647,
		-0.891378, -0.376895, -0.251782,
		24.760395, 34.533802, 35.062424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.539841, 34.098183, 35.155685>,  <25.384361, 34.797626, 35.238670>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.539841, 34.098183, 35.155685> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225414, 34.157665, 34.915691>,  <25.036758, 34.193356, 34.771694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.225414, 34.157665, 34.915691>,  <25.539841, 34.098183, 35.155685>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.225414, 34.157665, 34.915691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362896, -0.674737, -0.642679,
		-0.500408, -0.722921, 0.476421,
		-0.786065, 0.148711, -0.599989,
		24.989595, 34.202278, 34.735695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.531404, 33.361012, 34.935070>,  <25.539841, 34.098183, 35.155685>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.531404, 33.361012, 34.935070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328537, 33.598785, 34.685452>,  <25.206816, 33.741447, 34.535683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.328537, 33.598785, 34.685452>,  <25.531404, 33.361012, 34.935070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.328537, 33.598785, 34.685452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297143, -0.559077, -0.774041,
		-0.809002, -0.578000, 0.106916,
		-0.507170, 0.594431, -0.624043,
		25.176386, 33.777115, 34.498238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.074947, 32.950905, 34.489040>,  <25.531404, 33.361012, 34.935070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.074947, 32.950905, 34.489040> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193588, 33.279175, 34.293686>,  <25.264772, 33.476135, 34.176472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.193588, 33.279175, 34.293686>,  <25.074947, 32.950905, 34.489040>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.193588, 33.279175, 34.293686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152753, -0.545582, -0.824018,
		-0.942706, 0.169802, -0.287181,
		0.296601, 0.820675, -0.488386,
		25.282568, 33.525375, 34.147171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.629738, 33.133259, 33.908070>,  <25.074947, 32.950905, 34.489040>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.629738, 33.133259, 33.908070> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989864, 33.285027, 33.822777>,  <25.205940, 33.376087, 33.771603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.989864, 33.285027, 33.822777>,  <24.629738, 33.133259, 33.908070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.989864, 33.285027, 33.822777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021351, -0.450828, -0.892356,
		-0.434707, 0.807957, -0.397788,
		0.900319, 0.379420, -0.213229,
		25.259960, 33.398853, 33.758808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.599939, 33.433388, 33.305569>,  <24.629738, 33.133259, 33.908070>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.599939, 33.433388, 33.305569> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978039, 33.320366, 33.370892>,  <25.204899, 33.252552, 33.410084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.978039, 33.320366, 33.370892>,  <24.599939, 33.433388, 33.305569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.978039, 33.320366, 33.370892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.051440, -0.365139, -0.929531,
		0.322275, 0.887037, -0.330612,
		0.945248, -0.282557, 0.163304,
		25.261614, 33.235600, 33.419884>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.923229, 33.547504, 32.660782>,  <24.599939, 33.433388, 33.305569>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.923229, 33.547504, 32.660782> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161602, 33.280365, 32.839149>,  <25.304626, 33.120083, 32.946171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.161602, 33.280365, 32.839149>,  <24.923229, 33.547504, 32.660782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.161602, 33.280365, 32.839149> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.249037, -0.374212, -0.893278,
		0.763441, 0.643385, -0.056687,
		0.595934, -0.667848, 0.445916,
		25.340382, 33.080009, 32.972923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.649385, 33.502018, 32.293774>,  <24.923229, 33.547504, 32.660782>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.649385, 33.502018, 32.293774> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614098, 33.160084, 32.498314>,  <25.592926, 32.954922, 32.621037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.614098, 33.160084, 32.498314>,  <25.649385, 33.502018, 32.293774>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.614098, 33.160084, 32.498314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424168, -0.496719, -0.757200,
		0.901276, 0.150098, 0.406413,
		-0.088219, -0.854834, 0.511347,
		25.587631, 32.903633, 32.651718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.361158, 33.199131, 32.502449>,  <25.649385, 33.502018, 32.293774>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.361158, 33.199131, 32.502449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089394, 32.905807, 32.492119>,  <25.926334, 32.729813, 32.485920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.089394, 32.905807, 32.492119>,  <26.361158, 33.199131, 32.502449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.089394, 32.905807, 32.492119> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.503287, -0.440109, -0.743644,
		0.533951, -0.518237, 0.668077,
		-0.679410, -0.733304, -0.025825,
		25.885571, 32.685818, 32.484371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.769253, 32.588783, 32.448631>,  <26.361158, 33.199131, 32.502449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.769253, 32.588783, 32.448631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410500, 32.482098, 32.307510>,  <26.195248, 32.418087, 32.222839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.410500, 32.482098, 32.307510>,  <26.769253, 32.588783, 32.448631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.410500, 32.482098, 32.307510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439196, -0.443220, -0.781449,
		0.052055, -0.855815, 0.514655,
		-0.896882, -0.266713, -0.352799,
		26.141436, 32.402084, 32.201672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.913012, 32.029404, 32.292088>,  <26.769253, 32.588783, 32.448631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.913012, 32.029404, 32.292088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581362, 32.108440, 32.082893>,  <26.382372, 32.155865, 31.957378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.581362, 32.108440, 32.082893>,  <26.913012, 32.029404, 32.292088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.581362, 32.108440, 32.082893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425086, -0.384774, -0.819299,
		-0.363123, -0.901612, 0.235029,
		-0.829122, 0.197599, -0.522983,
		26.332624, 32.167721, 31.925999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.871931, 31.421957, 31.819960>,  <26.913012, 32.029404, 32.292088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.871931, 31.421957, 31.819960> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627209, 31.710245, 31.689573>,  <26.480375, 31.883219, 31.611341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.627209, 31.710245, 31.689573>,  <26.871931, 31.421957, 31.819960>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.627209, 31.710245, 31.689573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294562, -0.174866, -0.939498,
		-0.734117, -0.670806, -0.105313,
		-0.611805, 0.720723, -0.325966,
		26.443666, 31.926462, 31.591784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.568834, 31.153183, 31.210400>,  <26.871931, 31.421957, 31.819960>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.568834, 31.153183, 31.210400> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532534, 31.549297, 31.168253>,  <26.510754, 31.786966, 31.142965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.532534, 31.549297, 31.168253>,  <26.568834, 31.153183, 31.210400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.532534, 31.549297, 31.168253> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.415403, -0.058518, -0.907753,
		-0.905099, -0.126148, -0.406057,
		-0.090750, 0.990284, -0.105367,
		26.505308, 31.846382, 31.136642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.682508, 31.198311, 30.532454>,  <26.568834, 31.153183, 31.210400>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.682508, 31.198311, 30.532454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717213, 31.589743, 30.607132>,  <26.738035, 31.824602, 30.651939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.717213, 31.589743, 30.607132>,  <26.682508, 31.198311, 30.532454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.717213, 31.589743, 30.607132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.492299, 0.120808, -0.862002,
		-0.866091, 0.166699, -0.471272,
		0.086761, 0.978579, 0.186696,
		26.743240, 31.883316, 30.663141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.532618, 31.431396, 29.940109>,  <26.682508, 31.198311, 30.532454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.532618, 31.431396, 29.940109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746653, 31.723824, 30.109446>,  <26.875074, 31.899281, 30.211048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.746653, 31.723824, 30.109446>,  <26.532618, 31.431396, 29.940109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.746653, 31.723824, 30.109446> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493534, 0.136190, -0.858997,
		-0.685641, 0.668574, -0.287933,
		0.535089, 0.731069, 0.423342,
		26.907179, 31.943144, 30.236448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.594799, 31.979294, 29.441442>,  <26.532618, 31.431396, 29.940109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.594799, 31.979294, 29.441442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895132, 32.047623, 29.696650>,  <27.075333, 32.088619, 29.849773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.895132, 32.047623, 29.696650>,  <26.594799, 31.979294, 29.441442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.895132, 32.047623, 29.696650> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643126, 0.030952, -0.765134,
		-0.150451, 0.984815, -0.086621,
		0.750835, 0.170823, 0.638018,
		27.120382, 32.098869, 29.888054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.951305, 32.502522, 29.210388>,  <26.594799, 31.979294, 29.441442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.951305, 32.502522, 29.210388> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219435, 32.335213, 29.455572>,  <27.380312, 32.234829, 29.602682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.219435, 32.335213, 29.455572>,  <26.951305, 32.502522, 29.210388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.219435, 32.335213, 29.455572> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735375, 0.263721, -0.624240,
		0.099450, 0.869197, 0.484362,
		0.670323, -0.418269, 0.612958,
		27.420532, 32.209732, 29.639460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.529707, 32.982063, 29.305128>,  <26.951305, 32.502522, 29.210388>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.529707, 32.982063, 29.305128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683495, 32.628139, 29.410421>,  <27.775766, 32.415783, 29.473597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.683495, 32.628139, 29.410421>,  <27.529707, 32.982063, 29.305128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.683495, 32.628139, 29.410421> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859009, 0.238480, -0.453024,
		0.338065, 0.400293, 0.851750,
		0.384468, -0.884812, 0.263233,
		27.798836, 32.362698, 29.489391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.220854, 33.156445, 29.540371>,  <27.529707, 32.982063, 29.305128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.220854, 33.156445, 29.540371> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208735, 32.771034, 29.434013>,  <28.201464, 32.539787, 29.370199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.208735, 32.771034, 29.434013>,  <28.220854, 33.156445, 29.540371>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.208735, 32.771034, 29.434013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939398, 0.063432, -0.336909,
		0.341487, -0.259987, 0.903213,
		-0.030299, -0.963526, -0.265892,
		28.199644, 32.481976, 29.354246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.919298, 33.034542, 29.535393>,  <28.220854, 33.156445, 29.540371>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.919298, 33.034542, 29.535393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750967, 32.732704, 29.334000>,  <28.649969, 32.551601, 29.213163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750967, 32.732704, 29.334000>,  <28.919298, 33.034542, 29.535393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750967, 32.732704, 29.334000> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.783986, -0.023315, -0.620340,
		0.456366, -0.655778, 0.601403,
		-0.420827, -0.754593, -0.503481,
		28.624720, 32.506325, 29.182955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.368290, 32.508293, 29.427973>,  <28.919298, 33.034542, 29.535393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.368290, 32.508293, 29.427973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101847, 32.454369, 29.134544>,  <28.941980, 32.422012, 28.958487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.101847, 32.454369, 29.134544>,  <29.368290, 32.508293, 29.427973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.101847, 32.454369, 29.134544> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714338, 0.167586, -0.679438,
		0.214533, -0.976596, -0.015328,
		-0.666105, -0.134812, -0.733573,
		28.902016, 32.413925, 28.914473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.793787, 32.086346, 28.978865>,  <29.368290, 32.508293, 29.427973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.793787, 32.086346, 28.978865> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477707, 32.224384, 28.776285>,  <29.288059, 32.307209, 28.654737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.477707, 32.224384, 28.776285>,  <29.793787, 32.086346, 28.978865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.477707, 32.224384, 28.776285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594347, 0.230011, -0.770615,
		-0.149452, -0.909945, -0.386864,
		-0.790200, 0.345101, -0.506447,
		29.240646, 32.327915, 28.624352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.830141, 31.746149, 28.310856>,  <29.793787, 32.086346, 28.978865>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.830141, 31.746149, 28.310856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622183, 32.085930, 28.274757>,  <29.497408, 32.289799, 28.253098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.622183, 32.085930, 28.274757>,  <29.830141, 31.746149, 28.310856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.622183, 32.085930, 28.274757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646361, 0.322106, -0.691712,
		-0.558506, -0.417950, -0.716512,
		-0.519894, 0.849450, -0.090248,
		29.466215, 32.340763, 28.247683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.492090, 31.676903, 27.685638>,  <29.830141, 31.746149, 28.310856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.492090, 31.676903, 27.685638> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642273, 32.026184, 27.809925>,  <29.732384, 32.235752, 27.884497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.642273, 32.026184, 27.809925>,  <29.492090, 31.676903, 27.685638>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.642273, 32.026184, 27.809925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719925, -0.063625, -0.691129,
		-0.583728, 0.483183, -0.652531,
		0.375459, 0.873205, 0.310716,
		29.754911, 32.288147, 27.903139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.724422, 32.236187, 27.204317>,  <29.492090, 31.676903, 27.685638>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.724422, 32.236187, 27.204317> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946518, 32.198830, 27.534889>,  <30.079775, 32.176414, 27.733232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.946518, 32.198830, 27.534889>,  <29.724422, 32.236187, 27.204317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.946518, 32.198830, 27.534889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.736263, -0.406954, -0.540652,
		0.386813, 0.908661, -0.157194,
		0.555240, -0.093395, 0.826429,
		30.113091, 32.170811, 27.782818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.365496, 32.221134, 26.979893>,  <29.724422, 32.236187, 27.204317>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.365496, 32.221134, 26.979893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427307, 32.098801, 27.355677>,  <30.464394, 32.025398, 27.581146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.427307, 32.098801, 27.355677>,  <30.365496, 32.221134, 26.979893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.427307, 32.098801, 27.355677> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.875727, -0.397829, -0.273558,
		0.457409, 0.864983, 0.206353,
		0.154529, -0.305837, 0.939460,
		30.473665, 32.007050, 27.637514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.103189, 32.351250, 27.126562>,  <30.365496, 32.221134, 26.979893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.103189, 32.351250, 27.126562> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910078, 32.077240, 27.344797>,  <30.794212, 31.912834, 27.475739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.910078, 32.077240, 27.344797>,  <31.103189, 32.351250, 27.126562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.910078, 32.077240, 27.344797> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.698201, -0.677137, -0.232379,
		0.528622, 0.268741, 0.805194,
		-0.482777, -0.685028, 0.545585,
		30.765245, 31.871731, 27.508472>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.356344, 32.266388, 27.804585>,  <31.103189, 32.351250, 27.126562>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.356344, 32.266388, 27.804585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215458, 31.955601, 27.595865>,  <31.130926, 31.769129, 27.470634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.215458, 31.955601, 27.595865>,  <31.356344, 32.266388, 27.804585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.215458, 31.955601, 27.595865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.934144, -0.257517, -0.247103,
		0.057618, -0.574467, 0.816497,
		-0.352214, -0.776964, -0.521798,
		31.109793, 31.722511, 27.439325>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459728, 32.656494, 28.543379>,  <31.356344, 32.266388, 27.804585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459728, 32.656494, 28.543379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828455, 32.596462, 28.400419>,  <32.049690, 32.560444, 28.314644>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.828455, 32.596462, 28.400419>,  <31.459728, 32.656494, 28.543379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.828455, 32.596462, 28.400419> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176479, 0.983398, 0.042235,
		0.345127, -0.102007, 0.932997,
		0.921815, -0.150078, -0.357399,
		32.105000, 32.551437, 28.293200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.950033, 33.049126, 28.916054>,  <31.459728, 32.656494, 28.543379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.950033, 33.049126, 28.916054> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110352, 32.973804, 28.557411>,  <32.206543, 32.928612, 28.342226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.110352, 32.973804, 28.557411>,  <31.950033, 33.049126, 28.916054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.110352, 32.973804, 28.557411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296983, 0.952509, -0.067285,
		0.866697, -0.239310, 0.437683,
		0.400795, -0.188300, -0.896608,
		32.230591, 32.917313, 28.288429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.768421, 33.181126, 28.845797>,  <31.950033, 33.049126, 28.916054>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.768421, 33.181126, 28.845797> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564190, 33.247581, 28.508345>,  <32.441650, 33.287453, 28.305874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.564190, 33.247581, 28.508345>,  <32.768421, 33.181126, 28.845797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.564190, 33.247581, 28.508345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427566, 0.900305, -0.081474,
		0.745986, -0.402306, -0.530711,
		-0.510580, 0.166136, -0.843628,
		32.411015, 33.297421, 28.255257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202686, 33.414654, 28.207373>,  <32.768421, 33.181126, 28.845797>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202686, 33.414654, 28.207373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828800, 33.555733, 28.224861>,  <32.604469, 33.640381, 28.235353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.828800, 33.555733, 28.224861>,  <33.202686, 33.414654, 28.207373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.828800, 33.555733, 28.224861> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354171, 0.934623, 0.032301,
		-0.029468, 0.045676, -0.998522,
		-0.934716, 0.352695, 0.043719,
		32.548386, 33.661541, 28.237976>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.104206, 33.955231, 27.708954>,  <33.202686, 33.414654, 28.207373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.104206, 33.955231, 27.708954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901756, 34.010628, 28.049461>,  <32.780289, 34.043865, 28.253767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.901756, 34.010628, 28.049461>,  <33.104206, 33.955231, 27.708954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.901756, 34.010628, 28.049461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302535, 0.952814, 0.024862,
		-0.807658, 0.270122, -0.524139,
		-0.506123, 0.138490, 0.851270,
		32.749920, 34.052174, 28.304842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.905025, 34.764729, 27.539068>,  <33.104206, 33.955231, 27.708954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.905025, 34.764729, 27.539068> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554440, 34.695827, 27.359228>,  <32.344090, 34.654488, 27.251324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.554440, 34.695827, 27.359228>,  <32.905025, 34.764729, 27.539068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.554440, 34.695827, 27.359228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444774, -0.067903, 0.893065,
		-0.184366, 0.982709, -0.017102,
		-0.876462, -0.172257, -0.449602,
		32.291500, 34.644150, 27.224348>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.407917, 35.217350, 27.712883>,  <32.905025, 34.764729, 27.539068>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.407917, 35.217350, 27.712883> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200581, 34.896126, 27.595295>,  <32.076180, 34.703392, 27.524742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.200581, 34.896126, 27.595295>,  <32.407917, 35.217350, 27.712883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.200581, 34.896126, 27.595295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455522, -0.031651, 0.889662,
		-0.723759, 0.595053, -0.349407,
		-0.518337, -0.803063, -0.293968,
		32.045078, 34.655209, 27.507105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.723162, 35.421112, 27.759676>,  <32.407917, 35.217350, 27.712883>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.723162, 35.421112, 27.759676> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731377, 35.021835, 27.737095>,  <31.736305, 34.782269, 27.723547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.731377, 35.021835, 27.737095>,  <31.723162, 35.421112, 27.759676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.731377, 35.021835, 27.737095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614344, -0.057147, 0.786966,
		-0.788771, 0.018517, -0.614408,
		0.020540, -0.998194, -0.056452,
		31.737539, 34.722378, 27.720160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.052313, 35.267689, 27.558819>,  <31.723162, 35.421112, 27.759676>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.052313, 35.267689, 27.558819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200628, 34.938641, 27.731239>,  <31.289618, 34.741211, 27.834692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.200628, 34.938641, 27.731239>,  <31.052313, 35.267689, 27.558819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.200628, 34.938641, 27.731239> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730549, 0.028226, 0.682277,
		-0.573425, -0.567884, -0.590502,
		0.370787, -0.822624, 0.431052,
		31.311865, 34.691853, 27.860556>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.474154, 34.900356, 27.823921>,  <31.052313, 35.267689, 27.558819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.474154, 34.900356, 27.823921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758221, 34.673607, 27.990923>,  <30.928661, 34.537556, 28.091124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.758221, 34.673607, 27.990923>,  <30.474154, 34.900356, 27.823921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.758221, 34.673607, 27.990923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557526, -0.090700, 0.825190,
		-0.429912, -0.818795, -0.380461,
		0.710169, -0.566876, 0.417506,
		30.971272, 34.503544, 28.116175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.121124, 34.462925, 28.160271>,  <30.474154, 34.900356, 27.823921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.121124, 34.462925, 28.160271> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476835, 34.470097, 28.343077>,  <30.690262, 34.474400, 28.452761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.476835, 34.470097, 28.343077>,  <30.121124, 34.462925, 28.160271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.476835, 34.470097, 28.343077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457136, 0.066624, 0.886898,
		-0.014551, -0.997617, 0.067441,
		0.889278, 0.017924, 0.457016,
		30.743618, 34.475475, 28.480181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.148685, 33.921257, 28.676117>,  <30.121124, 34.462925, 28.160271>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.148685, 33.921257, 28.676117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416868, 34.189342, 28.803427>,  <30.577778, 34.350193, 28.879812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.416868, 34.189342, 28.803427>,  <30.148685, 33.921257, 28.676117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.416868, 34.189342, 28.803427> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444678, 0.019589, 0.895476,
		0.593926, -0.741909, 0.311163,
		0.670457, 0.670214, 0.318277,
		30.618006, 34.390408, 28.898911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224663, 33.671852, 29.234034>,  <30.148685, 33.921257, 28.676117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224663, 33.671852, 29.234034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367405, 34.042171, 29.283918>,  <30.453051, 34.264362, 29.313848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.367405, 34.042171, 29.283918>,  <30.224663, 33.671852, 29.234034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.367405, 34.042171, 29.283918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314274, -0.006740, 0.949308,
		0.879708, -0.377959, 0.288549,
		0.356854, 0.925798, 0.124712,
		30.474461, 34.319912, 29.321331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322369, 33.734196, 29.910332>,  <30.224663, 33.671852, 29.234034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322369, 33.734196, 29.910332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350266, 34.124546, 29.827585>,  <30.367004, 34.358757, 29.777937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.350266, 34.124546, 29.827585>,  <30.322369, 33.734196, 29.910332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.350266, 34.124546, 29.827585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234505, 0.217600, 0.947448,
		0.969610, -0.017565, 0.244025,
		0.069742, 0.975880, -0.206868,
		30.371187, 34.417309, 29.765524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.829229, 33.901272, 30.273705>,  <30.322369, 33.734196, 29.910332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.829229, 33.901272, 30.273705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575697, 34.202694, 30.203945>,  <30.423578, 34.383549, 30.162090>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.575697, 34.202694, 30.203945>,  <30.829229, 33.901272, 30.273705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.575697, 34.202694, 30.203945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213166, 0.046559, 0.975906,
		0.743518, 0.655735, 0.131122,
		-0.633831, 0.753554, -0.174398,
		30.385548, 34.428761, 30.151627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.016768, 34.477077, 30.703951>,  <30.829229, 33.901272, 30.273705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.016768, 34.477077, 30.703951> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638849, 34.562096, 30.604204>,  <30.412098, 34.613106, 30.544355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.638849, 34.562096, 30.604204>,  <31.016768, 34.477077, 30.703951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.638849, 34.562096, 30.604204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241694, 0.061778, 0.968384,
		0.221227, 0.975197, -0.006998,
		-0.944798, 0.212541, -0.249366,
		30.355410, 34.625858, 30.529394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.761187, 34.914116, 31.190369>,  <31.016768, 34.477077, 30.703951>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.761187, 34.914116, 31.190369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397179, 34.831814, 31.046408>,  <30.178774, 34.782433, 30.960030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.397179, 34.831814, 31.046408>,  <30.761187, 34.914116, 31.190369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.397179, 34.831814, 31.046408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395327, 0.169279, 0.902808,
		-0.124833, 0.963852, -0.235387,
		-0.910019, -0.205755, -0.359905,
		30.124172, 34.770088, 30.938437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233894, 35.450008, 31.460247>,  <30.761187, 34.914116, 31.190369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233894, 35.450008, 31.460247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036390, 35.113483, 31.372248>,  <29.917889, 34.911568, 31.319448>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.036390, 35.113483, 31.372248>,  <30.233894, 35.450008, 31.460247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.036390, 35.113483, 31.372248> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469813, 0.045192, 0.881609,
		-0.731764, 0.538660, -0.417572,
		-0.493758, -0.841310, -0.219999,
		29.888264, 34.861092, 31.306248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.552526, 35.614899, 31.692331>,  <30.233894, 35.450008, 31.460247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.552526, 35.614899, 31.692331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571260, 35.217232, 31.653465>,  <29.582500, 34.978630, 31.630146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571260, 35.217232, 31.653465>,  <29.552526, 35.614899, 31.692331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571260, 35.217232, 31.653465> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712055, -0.101447, 0.694756,
		-0.700560, 0.036646, -0.712652,
		0.046836, -0.994166, -0.097164,
		29.585312, 34.918983, 31.624315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888945, 35.499474, 31.595232>,  <29.552526, 35.614899, 31.692331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888945, 35.499474, 31.595232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065111, 35.167282, 31.731663>,  <29.170811, 34.967968, 31.813520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.065111, 35.167282, 31.731663>,  <28.888945, 35.499474, 31.595232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.065111, 35.167282, 31.731663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666645, -0.048044, 0.743826,
		-0.601348, -0.554967, -0.574797,
		0.440414, -0.830483, 0.341075,
		29.197235, 34.918137, 31.833986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.372601, 35.053429, 31.581387>,  <28.888945, 35.499474, 31.595232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.372601, 35.053429, 31.581387> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641251, 34.888649, 31.827709>,  <28.802441, 34.789780, 31.975504>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.641251, 34.888649, 31.827709>,  <28.372601, 35.053429, 31.581387>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.641251, 34.888649, 31.827709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.733700, -0.254272, 0.630103,
		-0.102988, -0.875010, -0.473022,
		0.671623, -0.411950, 0.615809,
		28.842737, 34.765064, 32.012451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.087605, 34.348213, 31.803236>,  <28.372601, 35.053429, 31.581387>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.087605, 34.348213, 31.803236> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380795, 34.445805, 32.057236>,  <28.556707, 34.504360, 32.209637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.380795, 34.445805, 32.057236>,  <28.087605, 34.348213, 31.803236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.380795, 34.445805, 32.057236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529240, -0.381939, 0.757646,
		0.427382, -0.891401, -0.150826,
		0.732973, 0.243981, 0.634999,
		28.600687, 34.518997, 32.247734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.388960, 33.772179, 32.025211>,  <28.087605, 34.348213, 31.803236>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.388960, 33.772179, 32.025211> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465940, 34.036758, 32.315163>,  <28.512129, 34.195507, 32.489132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.465940, 34.036758, 32.315163>,  <28.388960, 33.772179, 32.025211>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.465940, 34.036758, 32.315163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538843, -0.546123, 0.641403,
		0.820128, -0.514033, 0.251317,
		0.192452, 0.661453, 0.724874,
		28.523676, 34.235195, 32.532623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.667250, 33.425365, 32.665718>,  <28.388960, 33.772179, 32.025211>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.667250, 33.425365, 32.665718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512602, 33.776146, 32.779900>,  <28.419813, 33.986614, 32.848408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.512602, 33.776146, 32.779900>,  <28.667250, 33.425365, 32.665718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.512602, 33.776146, 32.779900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.611870, -0.475500, 0.632072,
		0.690028, 0.069712, 0.720417,
		-0.386621, 0.876949, 0.285454,
		28.396616, 34.039230, 32.865536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.147661, 33.179661, 33.033688>,  <28.667250, 33.425365, 32.665718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.147661, 33.179661, 33.033688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126106, 33.560963, 33.152615>,  <28.113174, 33.789745, 33.223972>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.126106, 33.560963, 33.152615>,  <28.147661, 33.179661, 33.033688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.126106, 33.560963, 33.152615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670778, -0.255125, 0.696397,
		0.739698, -0.161910, 0.653170,
		-0.053886, 0.953256, 0.297321,
		28.109940, 33.846939, 33.241810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.314625, 33.131130, 33.705006>,  <28.147661, 33.179661, 33.033688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.314625, 33.131130, 33.705006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147339, 33.494396, 33.697643>,  <28.046967, 33.712357, 33.693226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.147339, 33.494396, 33.697643>,  <28.314625, 33.131130, 33.705006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.147339, 33.494396, 33.697643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528587, -0.226841, 0.818009,
		0.738709, 0.351833, 0.574911,
		-0.418216, 0.908161, -0.018405,
		28.021873, 33.766846, 33.692123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.402262, 33.363613, 34.365875>,  <28.314625, 33.131130, 33.705006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.402262, 33.363613, 34.365875> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100058, 33.561653, 34.194256>,  <27.918736, 33.680477, 34.091286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.100058, 33.561653, 34.194256>,  <28.402262, 33.363613, 34.365875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.100058, 33.561653, 34.194256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547808, -0.118221, 0.828209,
		0.359322, 0.860756, 0.360536,
		-0.755509, 0.495098, -0.429050,
		27.873405, 33.710182, 34.065540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.885712, 32.884636, 34.609402>,  <28.402262, 33.363613, 34.365875>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.885712, 32.884636, 34.609402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265533, 32.780308, 34.679047>,  <29.493427, 32.717712, 34.720833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.265533, 32.780308, 34.679047>,  <28.885712, 32.884636, 34.609402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.265533, 32.780308, 34.679047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184303, 0.913353, 0.363069,
		-0.253723, -0.312665, 0.915350,
		0.949556, -0.260821, 0.174114,
		29.550400, 32.702061, 34.731281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.075346, 32.864128, 35.328220>,  <28.885712, 32.884636, 34.609402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.075346, 32.864128, 35.328220> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371460, 32.990101, 35.090633>,  <29.549129, 33.065685, 34.948082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.371460, 32.990101, 35.090633>,  <29.075346, 32.864128, 35.328220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.371460, 32.990101, 35.090633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109567, 0.815160, 0.568778,
		0.663303, -0.486137, 0.568946,
		0.740286, 0.314935, -0.593963,
		29.593546, 33.084583, 34.912445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.673519, 33.035557, 35.856483>,  <29.075346, 32.864128, 35.328220>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.673519, 33.035557, 35.856483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739101, 33.201645, 35.498554>,  <29.778450, 33.301296, 35.283794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.739101, 33.201645, 35.498554>,  <29.673519, 33.035557, 35.856483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.739101, 33.201645, 35.498554> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439106, 0.781560, 0.443114,
		0.883349, -0.465573, -0.054185,
		0.163954, 0.415217, -0.894826,
		29.788288, 33.326210, 35.230106>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377520, 33.132675, 35.823006>,  <29.673519, 33.035557, 35.856483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377520, 33.132675, 35.823006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113901, 33.374893, 35.644581>,  <29.955730, 33.520222, 35.537525>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.113901, 33.374893, 35.644581>,  <30.377520, 33.132675, 35.823006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.113901, 33.374893, 35.644581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215892, 0.720449, 0.659048,
		0.720449, 0.338042, -0.605542,
		-0.659048, 0.605542, -0.446065,
		29.916187, 33.556557, 35.510761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.778852, 33.674908, 35.546139>,  <30.377520, 33.132675, 35.823006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.778852, 33.674908, 35.546139> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409863, 33.776409, 35.662514>,  <30.188469, 33.837311, 35.732338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.409863, 33.776409, 35.662514>,  <30.778852, 33.674908, 35.546139>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.409863, 33.776409, 35.662514> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383425, 0.689989, 0.613922,
		-0.044964, 0.677883, -0.733794,
		-0.922477, 0.253751, 0.290942,
		30.133120, 33.852535, 35.749798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.630459, 34.303944, 35.536018>,  <30.778852, 33.674908, 35.546139>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.630459, 34.303944, 35.536018> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379610, 34.200249, 35.829823>,  <30.229101, 34.138031, 36.006107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.379610, 34.200249, 35.829823>,  <30.630459, 34.303944, 35.536018>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.379610, 34.200249, 35.829823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513443, 0.571539, 0.640093,
		-0.585742, 0.778549, -0.225320,
		-0.627123, -0.259240, 0.734514,
		30.191473, 34.122478, 36.050179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.391800, 34.912037, 36.007103>,  <30.630459, 34.303944, 35.536018>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.391800, 34.912037, 36.007103> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405579, 34.561707, 36.199661>,  <30.413845, 34.351509, 36.315197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.405579, 34.561707, 36.199661>,  <30.391800, 34.912037, 36.007103>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.405579, 34.561707, 36.199661> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.604880, 0.401712, 0.687567,
		-0.795571, 0.267504, 0.543606,
		0.034446, -0.875825, 0.481398,
		30.415913, 34.298958, 36.344082>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.390614, 35.055138, 36.728668>,  <30.391800, 34.912037, 36.007103>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.390614, 35.055138, 36.728668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540466, 34.686016, 36.692722>,  <30.630379, 34.464542, 36.671154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.540466, 34.686016, 36.692722>,  <30.390614, 35.055138, 36.728668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540466, 34.686016, 36.692722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.615946, 0.175259, 0.768046,
		-0.693010, -0.343087, 0.634057,
		0.374631, -0.922809, -0.089867,
		30.652855, 34.409172, 36.665764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.212839, 34.605469, 37.346367>,  <30.390614, 35.055138, 36.728668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.212839, 34.605469, 37.346367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171068, 34.628624, 37.743507>,  <30.146006, 34.642517, 37.981792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.171068, 34.628624, 37.743507>,  <30.212839, 34.605469, 37.346367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.171068, 34.628624, 37.743507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462539, -0.880940, 0.100011,
		0.880427, 0.469674, 0.065220,
		-0.104427, 0.057885, 0.992847,
		30.139740, 34.645988, 38.041363>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.978624, 34.571552, 37.734184>,  <30.212839, 34.605469, 37.346367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.978624, 34.571552, 37.734184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679329, 34.410633, 37.945198>,  <30.499752, 34.314079, 38.071808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.679329, 34.410633, 37.945198>,  <30.978624, 34.571552, 37.734184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.679329, 34.410633, 37.945198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.506624, -0.859875, 0.062831,
		0.428338, 0.314275, 0.847206,
		-0.748237, -0.402302, 0.527537,
		30.454857, 34.289944, 38.103458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.569086, 34.931484, 37.465832>,  <30.978624, 34.571552, 37.734184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.569086, 34.931484, 37.465832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931082, 35.073097, 37.560196>,  <32.148277, 35.158066, 37.616814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.931082, 35.073097, 37.560196>,  <31.569086, 34.931484, 37.465832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.931082, 35.073097, 37.560196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229800, -0.059879, 0.971394,
		0.358035, -0.933313, 0.027168,
		0.904988, 0.354036, 0.235914,
		32.202579, 35.179310, 37.630970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856606, 34.461201, 37.982288>,  <31.569086, 34.931484, 37.465832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856606, 34.461201, 37.982288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046425, 34.811462, 38.018162>,  <32.160316, 35.021618, 38.039684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.046425, 34.811462, 38.018162>,  <31.856606, 34.461201, 37.982288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.046425, 34.811462, 38.018162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042903, -0.078757, 0.995970,
		0.879184, -0.476482, 0.000194,
		0.474546, 0.875650, 0.089684,
		32.188789, 35.074158, 38.045067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271339, 34.327366, 38.545692>,  <31.856606, 34.461201, 37.982288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271339, 34.327366, 38.545692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291649, 34.726444, 38.527733>,  <32.303833, 34.965893, 38.516956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.291649, 34.726444, 38.527733>,  <32.271339, 34.327366, 38.545692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.291649, 34.726444, 38.527733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019694, 0.045945, 0.998750,
		0.998516, -0.049827, 0.021981,
		0.050775, 0.997701, -0.044895,
		32.306881, 35.025753, 38.514263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.904705, 34.542358, 38.897900>,  <32.271339, 34.327366, 38.545692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.904705, 34.542358, 38.897900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651371, 34.851791, 38.889355>,  <32.499371, 35.037453, 38.884228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.651371, 34.851791, 38.889355>,  <32.904705, 34.542358, 38.897900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.651371, 34.851791, 38.889355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.002799, 0.025312, 0.999676,
		0.773875, 0.633186, -0.013866,
		-0.633332, 0.773585, -0.021361,
		32.461372, 35.083866, 38.882946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.219379, 35.158630, 39.327579>,  <32.904705, 34.542358, 38.897900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.219379, 35.158630, 39.327579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824425, 35.205475, 39.284966>,  <32.587452, 35.233582, 39.259396>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.824425, 35.205475, 39.284966>,  <33.219379, 35.158630, 39.327579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.824425, 35.205475, 39.284966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072804, 0.261660, 0.962410,
		0.140587, 0.958028, -0.249834,
		-0.987388, 0.117114, -0.106534,
		32.528210, 35.240608, 39.253006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.068874, 35.782055, 39.622921>,  <33.219379, 35.158630, 39.327579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.068874, 35.782055, 39.622921> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712914, 35.599667, 39.617714>,  <32.499336, 35.490234, 39.614590>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.712914, 35.599667, 39.617714>,  <33.068874, 35.782055, 39.622921>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.712914, 35.599667, 39.617714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137392, 0.240712, 0.960823,
		-0.434973, 0.856825, -0.276856,
		-0.889900, -0.455970, -0.013018,
		32.445942, 35.462875, 39.613808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.528519, 36.244156, 40.109310>,  <33.068874, 35.782055, 39.622921>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.528519, 36.244156, 40.109310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359341, 35.885384, 40.057720>,  <32.257835, 35.670120, 40.026764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.359341, 35.885384, 40.057720>,  <32.528519, 36.244156, 40.109310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.359341, 35.885384, 40.057720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341586, 0.025974, 0.939492,
		-0.839310, 0.441406, -0.317365,
		-0.422940, -0.896932, -0.128977,
		32.232460, 35.616302, 40.019028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.856483, 36.293556, 40.266193>,  <32.528519, 36.244156, 40.109310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.856483, 36.293556, 40.266193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941008, 35.906693, 40.322697>,  <31.991722, 35.674576, 40.356598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.941008, 35.906693, 40.322697>,  <31.856483, 36.293556, 40.266193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.941008, 35.906693, 40.322697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411134, 0.043168, 0.910552,
		-0.886745, -0.250487, -0.388510,
		0.211310, -0.967157, 0.141263,
		32.004402, 35.616547, 40.365074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.242241, 36.009354, 40.452843>,  <31.856483, 36.293556, 40.266193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.242241, 36.009354, 40.452843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509756, 35.737217, 40.572746>,  <31.670265, 35.573933, 40.644688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.509756, 35.737217, 40.572746>,  <31.242241, 36.009354, 40.452843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.509756, 35.737217, 40.572746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456895, -0.058048, 0.887625,
		-0.586489, -0.730591, -0.349668,
		0.668788, -0.680344, 0.299758,
		31.710392, 35.533115, 40.662674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.842854, 35.541370, 40.766884>,  <31.242241, 36.009354, 40.452843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.842854, 35.541370, 40.766884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203135, 35.446400, 40.912407>,  <31.419304, 35.389416, 40.999722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.203135, 35.446400, 40.912407>,  <30.842854, 35.541370, 40.766884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.203135, 35.446400, 40.912407> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428107, -0.342713, 0.836225,
		-0.073863, -0.908942, -0.410328,
		0.900705, -0.237430, 0.363811,
		31.473347, 35.375172, 41.021549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.773405, 34.864197, 41.042137>,  <30.842854, 35.541370, 40.766884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.773405, 34.864197, 41.042137> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092010, 35.020370, 41.226799>,  <31.283175, 35.114075, 41.337597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.092010, 35.020370, 41.226799>,  <30.773405, 34.864197, 41.042137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.092010, 35.020370, 41.226799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354207, -0.317471, 0.879630,
		0.490002, -0.864159, -0.114574,
		0.796515, 0.390438, 0.461652,
		31.330965, 35.137501, 41.365295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.024754, 34.323586, 41.467110>,  <30.773405, 34.864197, 41.042137>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.024754, 34.323586, 41.467110> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157022, 34.667133, 41.623573>,  <31.236383, 34.873260, 41.717453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.157022, 34.667133, 41.623573>,  <31.024754, 34.323586, 41.467110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.157022, 34.667133, 41.623573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353842, -0.271415, 0.895059,
		0.874902, -0.434378, 0.214154,
		0.330670, 0.858865, 0.391163,
		31.256224, 34.924793, 41.740921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.380638, 34.180786, 42.026047>,  <31.024754, 34.323586, 41.467110>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.380638, 34.180786, 42.026047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319511, 34.571316, 42.087280>,  <31.282835, 34.805634, 42.124020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.319511, 34.571316, 42.087280>,  <31.380638, 34.180786, 42.026047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.319511, 34.571316, 42.087280> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233640, -0.186201, 0.954328,
		0.960239, 0.110071, 0.256563,
		-0.152816, 0.976327, 0.153081,
		31.273666, 34.864212, 42.133205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.819109, 34.450657, 42.591045>,  <31.380638, 34.180786, 42.026047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.819109, 34.450657, 42.591045> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524961, 34.720806, 42.568741>,  <31.348473, 34.882896, 42.555359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.524961, 34.720806, 42.568741>,  <31.819109, 34.450657, 42.591045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.524961, 34.720806, 42.568741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147482, -0.079189, 0.985890,
		0.661423, 0.733217, 0.157838,
		-0.735370, 0.675368, -0.055759,
		31.304350, 34.923416, 42.552013>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.789267, 34.767094, 43.146370>,  <31.819109, 34.450657, 42.591045>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.789267, 34.767094, 43.146370> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444370, 34.932926, 43.029980>,  <31.237432, 35.032425, 42.960148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.444370, 34.932926, 43.029980>,  <31.789267, 34.767094, 43.146370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.444370, 34.932926, 43.029980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236647, 0.178172, 0.955119,
		0.447815, 0.892401, -0.055518,
		-0.862241, 0.414579, -0.290972,
		31.185698, 35.057301, 42.942688>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.688675, 35.392513, 43.578278>,  <31.789267, 34.767094, 43.146370>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.688675, 35.392513, 43.578278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316910, 35.305195, 43.459255>,  <31.093851, 35.252804, 43.387844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.316910, 35.305195, 43.459255>,  <31.688675, 35.392513, 43.578278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.316910, 35.305195, 43.459255> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343193, 0.214822, 0.914369,
		-0.135682, 0.951945, -0.274576,
		-0.929413, -0.218296, -0.297554,
		31.038086, 35.239708, 43.369987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.266148, 36.003166, 43.688450>,  <31.688675, 35.392513, 43.578278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.266148, 36.003166, 43.688450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011671, 35.694569, 43.685440>,  <30.858984, 35.509411, 43.683636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.011671, 35.694569, 43.685440>,  <31.266148, 36.003166, 43.688450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.011671, 35.694569, 43.685440> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423132, 0.340735, 0.839559,
		-0.645150, 0.537305, -0.543217,
		-0.636193, -0.771494, -0.007526,
		30.820814, 35.463120, 43.683182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.632929, 36.277580, 43.787533>,  <31.266148, 36.003166, 43.688450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.632929, 36.277580, 43.787533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588865, 35.888084, 43.867226>,  <30.562428, 35.654385, 43.915043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.588865, 35.888084, 43.867226>,  <30.632929, 36.277580, 43.787533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.588865, 35.888084, 43.867226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515017, 0.227363, 0.826477,
		-0.850072, -0.011564, -0.526539,
		-0.110158, -0.973742, 0.199231,
		30.555819, 35.595963, 43.926994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.939823, 36.158455, 44.087051>,  <30.632929, 36.277580, 43.787533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.939823, 36.158455, 44.087051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146591, 35.828991, 44.180325>,  <30.270653, 35.631313, 44.236286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.146591, 35.828991, 44.180325>,  <29.939823, 36.158455, 44.087051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.146591, 35.828991, 44.180325> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405615, 0.004205, 0.914034,
		-0.753837, -0.567064, -0.331916,
		0.516920, -0.823663, 0.233180,
		30.301668, 35.581894, 44.250278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.420898, 35.615627, 44.409698>,  <29.939823, 36.158455, 44.087051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.420898, 35.615627, 44.409698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790161, 35.571835, 44.557102>,  <30.011719, 35.545559, 44.645542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.790161, 35.571835, 44.557102>,  <29.420898, 35.615627, 44.409698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.790161, 35.571835, 44.557102> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.361941, 0.075481, 0.929140,
		-0.129544, -0.991118, 0.030053,
		0.923156, -0.109487, 0.368505,
		30.067108, 35.538990, 44.667652>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.287165, 35.390408, 45.079350>,  <29.420898, 35.615627, 44.409698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.287165, 35.390408, 45.079350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680676, 35.444077, 45.126980>,  <29.916782, 35.476276, 45.155560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.680676, 35.444077, 45.126980>,  <29.287165, 35.390408, 45.079350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.680676, 35.444077, 45.126980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094212, -0.178456, 0.979427,
		0.152660, -0.974757, -0.162921,
		0.983778, 0.134170, 0.119077,
		29.975809, 35.484325, 45.162704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.449085, 34.858387, 45.582302>,  <29.287165, 35.390408, 45.079350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.449085, 34.858387, 45.582302> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760128, 35.108646, 45.607227>,  <29.946754, 35.258804, 45.622181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.760128, 35.108646, 45.607227>,  <29.449085, 34.858387, 45.582302>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.760128, 35.108646, 45.607227> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034916, -0.055978, 0.997821,
		0.627778, -0.778090, -0.021683,
		0.777609, 0.625654, 0.062310,
		29.993410, 35.296341, 45.625919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.868324, 34.509480, 46.061413>,  <29.449085, 34.858387, 45.582302>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.868324, 34.509480, 46.061413> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950003, 34.900425, 46.039238>,  <29.999010, 35.134991, 46.025932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.950003, 34.900425, 46.039238>,  <29.868324, 34.509480, 46.061413>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.950003, 34.900425, 46.039238> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096780, 0.076503, 0.992361,
		0.974135, -0.197270, 0.110211,
		0.204195, 0.977359, -0.055433,
		30.011261, 35.193634, 46.022610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.332731, 34.658192, 46.508553>,  <29.868324, 34.509480, 46.061413>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.332731, 34.658192, 46.508553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167641, 35.020885, 46.473923>,  <30.068586, 35.238503, 46.453144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.167641, 35.020885, 46.473923>,  <30.332731, 34.658192, 46.508553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.167641, 35.020885, 46.473923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088307, 0.054763, 0.994587,
		0.906563, 0.418139, 0.057468,
		-0.412729, 0.906731, -0.086570,
		30.043821, 35.292904, 46.447952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.623510, 35.043228, 47.052368>,  <30.332731, 34.658192, 46.508553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.623510, 35.043228, 47.052368> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280182, 35.214516, 46.939289>,  <30.074184, 35.317287, 46.871441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.280182, 35.214516, 46.939289>,  <30.623510, 35.043228, 47.052368>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280182, 35.214516, 46.939289> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.244284, 0.143488, 0.959029,
		0.451234, 0.892213, -0.018553,
		-0.858320, 0.428215, -0.282700,
		30.022686, 35.342979, 46.854481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.599102, 35.787308, 47.297962>,  <30.623510, 35.043228, 47.052368>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.599102, 35.787308, 47.297962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231836, 35.640484, 47.238312>,  <30.011477, 35.552387, 47.202522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.231836, 35.640484, 47.238312>,  <30.599102, 35.787308, 47.297962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.231836, 35.640484, 47.238312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246187, 0.233650, 0.940638,
		-0.310431, 0.900373, -0.304895,
		-0.918164, -0.367064, -0.149128,
		29.956387, 35.530365, 47.193573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.196642, 36.299976, 47.561668>,  <30.599102, 35.787308, 47.297962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.196642, 36.299976, 47.561668> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962824, 35.975441, 47.564259>,  <29.822533, 35.780720, 47.565811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.962824, 35.975441, 47.564259>,  <30.196642, 36.299976, 47.561668>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.962824, 35.975441, 47.564259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264237, 0.197909, 0.943934,
		-0.767128, 0.550062, -0.330072,
		-0.584546, -0.811335, 0.006475,
		29.787460, 35.732040, 47.566200>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.618437, 36.496567, 47.881836>,  <30.196642, 36.299976, 47.561668>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.618437, 36.496567, 47.881836> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576490, 36.099117, 47.898361>,  <29.551323, 35.860645, 47.908276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.576490, 36.099117, 47.898361>,  <29.618437, 36.496567, 47.881836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.576490, 36.099117, 47.898361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.469629, 0.086098, 0.878656,
		-0.876614, 0.072741, -0.475665,
		-0.104868, -0.993628, 0.041313,
		29.545031, 35.801029, 47.910755>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.888470, 36.323563, 47.887295>,  <29.618437, 36.496567, 47.881836>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.888470, 36.323563, 47.887295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121290, 36.044136, 48.053772>,  <29.260983, 35.876480, 48.153660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.121290, 36.044136, 48.053772>,  <28.888470, 36.323563, 47.887295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.121290, 36.044136, 48.053772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395231, 0.204265, 0.895582,
		-0.710639, -0.685769, -0.157203,
		0.582051, -0.698568, 0.416196,
		29.295906, 35.834564, 48.178631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493935, 35.927895, 48.327450>,  <28.888470, 36.323563, 47.887295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493935, 35.927895, 48.327450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857136, 35.815662, 48.451900>,  <29.075056, 35.748322, 48.526573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.857136, 35.815662, 48.451900>,  <28.493935, 35.927895, 48.327450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.857136, 35.815662, 48.451900> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338316, -0.053004, 0.939539,
		-0.247129, -0.958365, -0.143054,
		0.908003, -0.280584, 0.311131,
		29.129538, 35.731487, 48.545238>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.291492, 35.489525, 48.805901>,  <28.493935, 35.927895, 48.327450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.291492, 35.489525, 48.805901> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683708, 35.526394, 48.875240>,  <28.919037, 35.548515, 48.916843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.683708, 35.526394, 48.875240>,  <28.291492, 35.489525, 48.805901>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.683708, 35.526394, 48.875240> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.135611, -0.320491, 0.937494,
		0.141973, -0.942756, -0.301753,
		0.980537, 0.092178, 0.173349,
		28.977869, 35.554047, 48.927246>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.591208, 34.892452, 48.977306>,  <28.291492, 35.489525, 48.805901>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.591208, 34.892452, 48.977306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838533, 35.147522, 49.161072>,  <28.986929, 35.300564, 49.271332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.838533, 35.147522, 49.161072>,  <28.591208, 34.892452, 48.977306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.838533, 35.147522, 49.161072> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.205173, -0.433314, 0.877578,
		0.758679, -0.636878, -0.137091,
		0.618313, 0.637672, 0.459416,
		29.024027, 35.338825, 49.298897>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.050335, 34.425087, 49.460499>,  <28.591208, 34.892452, 48.977306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.050335, 34.425087, 49.460499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083281, 34.810699, 49.561584>,  <29.103048, 35.042065, 49.622234>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.083281, 34.810699, 49.561584>,  <29.050335, 34.425087, 49.460499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.083281, 34.810699, 49.561584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.042410, -0.249954, 0.967328,
		0.995700, -0.090389, 0.020298,
		0.082362, 0.964029, 0.252713,
		29.107988, 35.099907, 49.637398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.603386, 34.556919, 49.795868>,  <29.050335, 34.425087, 49.460499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.603386, 34.556919, 49.795868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359869, 34.852375, 49.911652>,  <29.213758, 35.029648, 49.981121>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.359869, 34.852375, 49.911652>,  <29.603386, 34.556919, 49.795868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359869, 34.852375, 49.911652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138348, -0.260426, 0.955530,
		0.781173, 0.621766, 0.056357,
		-0.608793, 0.738637, 0.289458,
		29.177231, 35.073967, 49.998489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.986450, 34.891705, 50.351395>,  <29.603386, 34.556919, 49.795868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.986450, 34.891705, 50.351395> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596140, 34.974377, 50.380096>,  <29.361954, 35.023979, 50.397316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596140, 34.974377, 50.380096>,  <29.986450, 34.891705, 50.351395>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596140, 34.974377, 50.380096> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.077852, 0.021529, 0.996732,
		0.204459, 0.978172, -0.037098,
		-0.975774, 0.206679, 0.071751,
		29.303408, 35.036381, 50.401623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.789755, 35.066753, 51.099262>,  <29.986450, 34.891705, 50.351395>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.789755, 35.066753, 51.099262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415537, 34.986389, 50.983059>,  <29.191006, 34.938171, 50.913338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.415537, 34.986389, 50.983059>,  <29.789755, 35.066753, 51.099262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.415537, 34.986389, 50.983059> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.238689, -0.246667, 0.939246,
		-0.260360, 0.948046, 0.182813,
		-0.935543, -0.200907, -0.290511,
		29.134874, 34.926117, 50.895905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.443426, 35.290485, 51.663998>,  <29.789755, 35.066753, 51.099262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.443426, 35.290485, 51.663998> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196972, 35.053444, 51.456463>,  <29.049099, 34.911217, 51.331940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.196972, 35.053444, 51.456463>,  <29.443426, 35.290485, 51.663998>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.196972, 35.053444, 51.456463> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373243, -0.360396, 0.854871,
		-0.693590, 0.720369, 0.000866,
		-0.616135, -0.592607, -0.518839,
		29.012131, 34.875660, 51.300812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.749531, 35.484772, 51.811749>,  <29.443426, 35.290485, 51.663998>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.749531, 35.484772, 51.811749> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747793, 35.107147, 51.679852>,  <28.746750, 34.880573, 51.600716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.747793, 35.107147, 51.679852>,  <28.749531, 35.484772, 51.811749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.747793, 35.107147, 51.679852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509533, -0.281635, 0.813055,
		-0.860440, 0.171545, -0.479807,
		-0.004345, -0.944063, -0.329739,
		28.746490, 34.823929, 51.580929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.116903, 35.320393, 51.842384>,  <28.749531, 35.484772, 51.811749>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.116903, 35.320393, 51.842384> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307220, 34.968594, 51.838230>,  <28.421410, 34.757515, 51.835739>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.307220, 34.968594, 51.838230>,  <28.116903, 35.320393, 51.842384>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.307220, 34.968594, 51.838230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403534, -0.228766, 0.885904,
		-0.781526, -0.417315, -0.463751,
		0.475791, -0.879497, -0.010386,
		28.449959, 34.704746, 51.835114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.662113, 34.869812, 52.017010>,  <28.116903, 35.320393, 51.842384>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.662113, 34.869812, 52.017010> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019312, 34.710567, 52.100971>,  <28.233631, 34.615021, 52.151348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.019312, 34.710567, 52.100971>,  <27.662113, 34.869812, 52.017010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.019312, 34.710567, 52.100971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325221, -0.248416, 0.912426,
		-0.311109, -0.883058, -0.351310,
		0.892996, -0.398117, 0.209905,
		28.287210, 34.591133, 52.163944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.464016, 34.044453, 52.196453>,  <27.662113, 34.869812, 52.017010>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.464016, 34.044453, 52.196453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777300, 34.229046, 52.363121>,  <27.965269, 34.339802, 52.463123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.777300, 34.229046, 52.363121>,  <27.464016, 34.044453, 52.196453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.777300, 34.229046, 52.363121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316123, -0.281508, 0.905991,
		0.535398, -0.841299, -0.074593,
		0.783208, 0.461486, 0.416672,
		28.012262, 34.367493, 52.488121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.070614, 34.043095, 52.798161>,  <27.464016, 34.044453, 52.196453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.070614, 34.043095, 52.798161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463562, 33.975483, 52.830109>,  <27.699331, 33.934914, 52.849277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.463562, 33.975483, 52.830109>,  <27.070614, 34.043095, 52.798161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.463562, 33.975483, 52.830109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.183279, -0.955026, 0.233099,
		0.036876, -0.243628, -0.969168,
		0.982369, -0.169032, 0.079869,
		27.758272, 33.924774, 52.854069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.247963, 33.340076, 52.407913>,  <27.070614, 34.043095, 52.798161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.247963, 33.340076, 52.407913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483431, 33.482079, 52.698414>,  <27.624712, 33.567280, 52.872715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.483431, 33.482079, 52.698414>,  <27.247963, 33.340076, 52.407913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.483431, 33.482079, 52.698414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058400, -0.877388, 0.476214,
		0.806262, -0.322746, -0.495759,
		0.588669, 0.355001, 0.726253,
		27.660032, 33.588577, 52.916290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.750139, 32.907028, 52.625706>,  <27.247963, 33.340076, 52.407913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.750139, 32.907028, 52.625706> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721012, 33.145073, 52.945839>,  <27.703535, 33.287899, 53.137920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.721012, 33.145073, 52.945839>,  <27.750139, 32.907028, 52.625706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.721012, 33.145073, 52.945839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002323, -0.802364, 0.596830,
		0.997343, 0.045320, 0.057045,
		-0.072819, 0.595112, 0.800337,
		27.699167, 33.323605, 53.185940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.027872, 32.217247, 52.802162>,  <27.750139, 32.907028, 52.625706>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.027872, 32.217247, 52.802162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176622, 31.864401, 52.686516>,  <28.265873, 31.652695, 52.617126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.176622, 31.864401, 52.686516>,  <28.027872, 32.217247, 52.802162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.176622, 31.864401, 52.686516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.497735, 0.452373, -0.740013,
		0.783562, 0.131289, 0.607284,
		0.371874, -0.882112, -0.289115,
		28.288185, 31.599768, 52.599781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.688883, 32.381157, 52.569008>,  <28.027872, 32.217247, 52.802162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.688883, 32.381157, 52.569008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546926, 32.039627, 52.416668>,  <28.461752, 31.834711, 52.325264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.546926, 32.039627, 52.416668>,  <28.688883, 32.381157, 52.569008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.546926, 32.039627, 52.416668> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540214, 0.145193, -0.828908,
		0.763034, -0.499910, 0.409718,
		-0.354892, -0.853820, -0.380846,
		28.440458, 31.783482, 52.302414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.258387, 32.046680, 52.183002>,  <28.688883, 32.381157, 52.569008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.258387, 32.046680, 52.183002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908714, 31.917496, 52.037952>,  <28.698910, 31.839983, 51.950924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.908714, 31.917496, 52.037952>,  <29.258387, 32.046680, 52.183002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.908714, 31.917496, 52.037952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324299, 0.167534, -0.931001,
		0.361434, -0.931464, -0.041717,
		-0.874183, -0.322967, -0.362625,
		28.646460, 31.820606, 51.929165>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.379951, 31.389992, 51.843128>,  <29.258387, 32.046680, 52.183002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.379951, 31.389992, 51.843128> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076956, 31.609579, 51.701794>,  <28.895159, 31.741331, 51.616993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.076956, 31.609579, 51.701794>,  <29.379951, 31.389992, 51.843128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.076956, 31.609579, 51.701794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.474873, 0.091909, -0.875242,
		-0.448004, -0.830775, -0.330309,
		-0.757488, 0.548967, -0.353337,
		28.849709, 31.774269, 51.595791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.070217, 31.076654, 51.210930>,  <29.379951, 31.389992, 51.843128>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.070217, 31.076654, 51.210930> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026516, 31.474228, 51.216053>,  <29.000296, 31.712772, 51.219128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.026516, 31.474228, 51.216053>,  <29.070217, 31.076654, 51.210930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.026516, 31.474228, 51.216053> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316164, 0.046966, -0.947542,
		-0.942393, -0.099470, -0.319376,
		-0.109252, 0.993932, 0.012811,
		28.993740, 31.772408, 51.219898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.552153, 31.207176, 50.769451>,  <29.070217, 31.076654, 51.210930>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.552153, 31.207176, 50.769451> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806944, 31.514677, 50.792351>,  <28.959820, 31.699177, 50.806091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.806944, 31.514677, 50.792351>,  <28.552153, 31.207176, 50.769451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.806944, 31.514677, 50.792351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179399, -0.075608, -0.980867,
		-0.749715, 0.635062, -0.186074,
		0.636980, 0.768752, 0.057245,
		28.998037, 31.745302, 50.809525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.410049, 31.600142, 50.156738>,  <28.552153, 31.207176, 50.769451>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.410049, 31.600142, 50.156738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782251, 31.703732, 50.260349>,  <29.005571, 31.765884, 50.322517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.782251, 31.703732, 50.260349>,  <28.410049, 31.600142, 50.156738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.782251, 31.703732, 50.260349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299311, -0.129964, -0.945263,
		-0.211133, 0.957101, -0.198445,
		0.930503, 0.258973, 0.259031,
		29.061401, 31.781424, 50.338058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.634995, 31.758743, 49.444107>,  <28.410049, 31.600142, 50.156738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.634995, 31.758743, 49.444107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957615, 31.766930, 49.680431>,  <29.151188, 31.771841, 49.822227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957615, 31.766930, 49.680431>,  <28.634995, 31.758743, 49.444107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957615, 31.766930, 49.680431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589541, 0.046151, -0.806419,
		-0.043771, 0.998725, 0.025157,
		0.806551, 0.020467, 0.590810,
		29.199581, 31.773069, 49.857674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.002359, 32.204063, 49.130104>,  <28.634995, 31.758743, 49.444107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.002359, 32.204063, 49.130104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289116, 32.024590, 49.343552>,  <29.461170, 31.916904, 49.471619>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.289116, 32.024590, 49.343552>,  <29.002359, 32.204063, 49.130104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.289116, 32.024590, 49.343552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647647, 0.145234, -0.747971,
		0.258105, 0.881809, 0.394708,
		0.716892, -0.448686, 0.533616,
		29.504183, 31.889984, 49.503635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.561590, 32.658470, 49.269245>,  <29.002359, 32.204063, 49.130104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.561590, 32.658470, 49.269245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708765, 32.288269, 49.305172>,  <29.797070, 32.066147, 49.326729>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.708765, 32.288269, 49.305172>,  <29.561590, 32.658470, 49.269245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.708765, 32.288269, 49.305172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668245, 0.196018, -0.717652,
		0.646585, 0.324068, 0.690585,
		0.367935, -0.925504, 0.089815,
		29.819145, 32.010616, 49.332115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.233566, 32.757355, 49.130310>,  <29.561590, 32.658470, 49.269245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.233566, 32.757355, 49.130310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235041, 32.357365, 49.128174>,  <30.235926, 32.117371, 49.126892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.235041, 32.357365, 49.128174>,  <30.233566, 32.757355, 49.130310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.235041, 32.357365, 49.128174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811451, 0.006110, -0.584389,
		0.584409, -0.002180, 0.811456,
		0.003684, -0.999979, -0.005340,
		30.236145, 32.057369, 49.126572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.982079, 32.542156, 49.218544>,  <30.233566, 32.757355, 49.130310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.982079, 32.542156, 49.218544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747885, 32.287098, 49.018295>,  <30.607368, 32.134064, 48.898148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.747885, 32.287098, 49.018295>,  <30.982079, 32.542156, 49.218544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.747885, 32.287098, 49.018295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.637251, 0.019729, -0.770404,
		0.501118, -0.770080, 0.394787,
		-0.585484, -0.637642, -0.500621,
		30.572239, 32.095806, 48.868111>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.473122, 32.202347, 48.755547>,  <30.982079, 32.542156, 49.218544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.473122, 32.202347, 48.755547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131174, 32.082397, 48.586182>,  <30.926006, 32.010429, 48.484562>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.131174, 32.082397, 48.586182>,  <31.473122, 32.202347, 48.755547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.131174, 32.082397, 48.586182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450611, -0.024575, -0.892382,
		0.257198, -0.953662, 0.156135,
		-0.854868, -0.299875, -0.423410,
		30.874714, 31.992435, 48.459160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.595623, 31.606005, 48.295101>,  <31.473122, 32.202347, 48.755547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.595623, 31.606005, 48.295101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262306, 31.778698, 48.156979>,  <31.062317, 31.882313, 48.074104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.262306, 31.778698, 48.156979>,  <31.595623, 31.606005, 48.295101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.262306, 31.778698, 48.156979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.374997, -0.017532, -0.926860,
		-0.406208, -0.901832, -0.147289,
		-0.833290, 0.431731, -0.345306,
		31.012320, 31.908216, 48.053387>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.541214, 31.335915, 47.598873>,  <31.595623, 31.606005, 48.295101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.541214, 31.335915, 47.598873> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275749, 31.634939, 47.588264>,  <31.116470, 31.814354, 47.581898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.275749, 31.634939, 47.588264>,  <31.541214, 31.335915, 47.598873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.275749, 31.634939, 47.588264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266928, 0.203548, -0.941975,
		-0.698786, -0.632233, -0.334632,
		-0.663662, 0.747562, -0.026524,
		31.076651, 31.859207, 47.580307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.172333, 31.321751, 46.942101>,  <31.541214, 31.335915, 47.598873>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.172333, 31.321751, 46.942101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120487, 31.700006, 47.061409>,  <31.089380, 31.926960, 47.132992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.120487, 31.700006, 47.061409>,  <31.172333, 31.321751, 46.942101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.120487, 31.700006, 47.061409> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242164, 0.321886, -0.915285,
		-0.961539, -0.046405, -0.270721,
		-0.129615, 0.945641, 0.298268,
		31.081602, 31.983698, 47.150890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.555027, 31.684757, 46.522011>,  <31.172333, 31.321751, 46.942101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.555027, 31.684757, 46.522011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796515, 31.966181, 46.671959>,  <30.941408, 32.135036, 46.761929>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.796515, 31.966181, 46.671959>,  <30.555027, 31.684757, 46.522011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.796515, 31.966181, 46.671959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311225, 0.224910, -0.923339,
		-0.733936, 0.674106, -0.083183,
		0.603720, 0.703560, 0.374868,
		30.977631, 32.177250, 46.784420>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.386536, 32.371971, 46.231895>,  <30.555027, 31.684757, 46.522011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.386536, 32.371971, 46.231895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766748, 32.414497, 46.348644>,  <30.994877, 32.440014, 46.418694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.766748, 32.414497, 46.348644>,  <30.386536, 32.371971, 46.231895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.766748, 32.414497, 46.348644> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235869, 0.364376, -0.900886,
		-0.202127, 0.925163, 0.321274,
		0.950532, 0.106314, 0.291868,
		31.051908, 32.446392, 46.436203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.562162, 33.089108, 46.017704>,  <30.386536, 32.371971, 46.231895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.562162, 33.089108, 46.017704> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905035, 32.886940, 46.057285>,  <31.110758, 32.765640, 46.081032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.905035, 32.886940, 46.057285>,  <30.562162, 33.089108, 46.017704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.905035, 32.886940, 46.057285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.301366, 0.336438, -0.892182,
		0.417636, 0.794581, 0.440705,
		0.857180, -0.505421, 0.098951,
		31.162189, 32.735313, 46.086971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.061596, 33.470234, 45.649193>,  <30.562162, 33.089108, 46.017704>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.061596, 33.470234, 45.649193> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282438, 33.139389, 45.691277>,  <31.414944, 32.940884, 45.716526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.282438, 33.139389, 45.691277>,  <31.061596, 33.470234, 45.649193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.282438, 33.139389, 45.691277> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467858, 0.202882, -0.860202,
		0.690138, 0.524144, 0.498982,
		0.552104, -0.827111, 0.105208,
		31.448069, 32.891254, 45.722839>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.662849, 33.719376, 45.519802>,  <31.061596, 33.470234, 45.649193>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.662849, 33.719376, 45.519802> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677696, 33.321148, 45.485222>,  <31.686605, 33.082211, 45.464474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.677696, 33.321148, 45.485222>,  <31.662849, 33.719376, 45.519802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.677696, 33.321148, 45.485222> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516283, 0.093175, -0.851335,
		0.855613, -0.013031, 0.517452,
		0.037119, -0.995565, -0.086450,
		31.688831, 33.022480, 45.459286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.364719, 33.561146, 45.332905>,  <31.662849, 33.719376, 45.519802>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.364719, 33.561146, 45.332905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158962, 33.230682, 45.240932>,  <32.035507, 33.032406, 45.185749>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.158962, 33.230682, 45.240932>,  <32.364719, 33.561146, 45.332905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.158962, 33.230682, 45.240932> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326014, 0.059592, -0.943485,
		0.793166, -0.560283, 0.238685,
		-0.514395, -0.826155, -0.229926,
		32.004642, 32.982838, 45.171955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890888, 33.007210, 45.120499>,  <32.364719, 33.561146, 45.332905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890888, 33.007210, 45.120499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525108, 32.919094, 44.984699>,  <32.305641, 32.866226, 44.903221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.525108, 32.919094, 44.984699>,  <32.890888, 33.007210, 45.120499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525108, 32.919094, 44.984699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388534, -0.243106, -0.888786,
		0.113256, -0.944655, 0.307897,
		-0.914448, -0.220289, -0.339497,
		32.250774, 32.853008, 44.882851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.970261, 32.401733, 44.782471>,  <32.890888, 33.007210, 45.120499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.970261, 32.401733, 44.782471> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625168, 32.536297, 44.631466>,  <32.418110, 32.617035, 44.540863>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.625168, 32.536297, 44.631466>,  <32.970261, 32.401733, 44.782471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.625168, 32.536297, 44.631466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315996, -0.224162, -0.921899,
		-0.394760, -0.914648, 0.087088,
		-0.862735, 0.336409, -0.377515,
		32.366348, 32.637218, 44.518211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.716465, 31.907822, 44.314373>,  <32.970261, 32.401733, 44.782471>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.716465, 31.907822, 44.314373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524960, 32.244553, 44.214684>,  <32.410057, 32.446590, 44.154869>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.524960, 32.244553, 44.214684>,  <32.716465, 31.907822, 44.314373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.524960, 32.244553, 44.214684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336503, -0.086242, -0.937725,
		-0.810896, -0.532813, -0.241988,
		-0.478763, 0.841827, -0.249227,
		32.381332, 32.497101, 44.139915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.541393, 31.775681, 43.632492>,  <32.716465, 31.907822, 44.314373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.541393, 31.775681, 43.632492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530132, 32.174717, 43.657864>,  <32.523376, 32.414139, 43.673088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.530132, 32.174717, 43.657864>,  <32.541393, 31.775681, 43.632492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.530132, 32.174717, 43.657864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384294, 0.069381, -0.920600,
		-0.922781, -0.001539, -0.385321,
		-0.028151, 0.997589, 0.063432,
		32.521687, 32.473995, 43.676895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.260704, 31.924767, 42.989937>,  <32.541393, 31.775681, 43.632492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.260704, 31.924767, 42.989937> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414616, 32.270878, 43.118462>,  <32.506962, 32.478546, 43.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.414616, 32.270878, 43.118462>,  <32.260704, 31.924767, 42.989937>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.414616, 32.270878, 43.118462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250085, 0.237362, -0.938678,
		-0.888485, 0.441535, -0.125062,
		0.384774, 0.865278, 0.321314,
		32.530048, 32.530460, 43.214855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.087822, 32.442909, 42.483028>,  <32.260704, 31.924767, 42.989937>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.087822, 32.442909, 42.483028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390583, 32.596321, 42.694691>,  <32.572239, 32.688366, 42.821686>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.390583, 32.596321, 42.694691>,  <32.087822, 32.442909, 42.483028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.390583, 32.596321, 42.694691> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356433, 0.436397, -0.826144,
		-0.547769, 0.813920, 0.193609,
		0.756905, 0.383527, 0.529153,
		32.617653, 32.711380, 42.853436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.019421, 33.140301, 42.393230>,  <32.087822, 32.442909, 42.483028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.019421, 33.140301, 42.393230> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398861, 33.057732, 42.489182>,  <32.626526, 33.008190, 42.546753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398861, 33.057732, 42.489182>,  <32.019421, 33.140301, 42.393230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398861, 33.057732, 42.489182> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306353, 0.408854, -0.859643,
		0.079374, 0.888948, 0.451078,
		0.948603, -0.206422, 0.239880,
		32.683441, 32.995804, 42.561146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.537872, 33.829788, 42.210857>,  <32.019421, 33.140301, 42.393230>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.537872, 33.829788, 42.210857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771530, 33.507259, 42.248013>,  <32.911724, 33.313744, 42.270306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.771530, 33.507259, 42.248013>,  <32.537872, 33.829788, 42.210857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.771530, 33.507259, 42.248013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373734, 0.165622, -0.912629,
		0.720486, 0.567820, 0.398095,
		0.584143, -0.806319, 0.092885,
		32.946774, 33.265366, 42.275879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.204563, 34.034184, 42.001945>,  <32.537872, 33.829788, 42.210857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.204563, 34.034184, 42.001945> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233051, 33.635384, 41.989857>,  <33.250145, 33.396103, 41.982605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.233051, 33.635384, 41.989857>,  <33.204563, 34.034184, 42.001945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.233051, 33.635384, 41.989857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493372, 0.061545, -0.867638,
		0.866897, 0.046887, 0.496277,
		0.071225, -0.997002, -0.030221,
		33.254417, 33.336285, 41.980789>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882816, 33.912006, 42.018284>,  <33.204563, 34.034184, 42.001945>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882816, 33.912006, 42.018284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700989, 33.592880, 41.859863>,  <33.591892, 33.401405, 41.764812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.700989, 33.592880, 41.859863>,  <33.882816, 33.912006, 42.018284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.700989, 33.592880, 41.859863> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593881, 0.059912, -0.802319,
		0.663830, -0.599918, 0.446573,
		-0.454571, -0.797815, -0.396052,
		33.564617, 33.353535, 41.741047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380260, 33.608337, 41.671734>,  <33.882816, 33.912006, 42.018284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380260, 33.608337, 41.671734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057663, 33.417923, 41.531475>,  <33.864105, 33.303673, 41.447319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.057663, 33.417923, 41.531475>,  <34.380260, 33.608337, 41.671734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.057663, 33.417923, 41.531475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380235, 0.036548, -0.924167,
		0.452757, -0.878663, 0.151532,
		-0.806493, -0.476041, -0.350646,
		33.815716, 33.275112, 41.426281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.540482, 32.892513, 41.343262>,  <34.380260, 33.608337, 41.671734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.540482, 32.892513, 41.343262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214920, 33.054234, 41.176357>,  <34.019585, 33.151264, 41.076214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.214920, 33.054234, 41.176357>,  <34.540482, 32.892513, 41.343262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.214920, 33.054234, 41.176357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.424340, -0.076903, -0.902231,
		-0.396859, -0.911388, -0.108969,
		-0.813903, 0.404299, -0.417258,
		33.970749, 33.175522, 41.051178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.407616, 32.475616, 40.731579>,  <34.540482, 32.892513, 41.343262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.407616, 32.475616, 40.731579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180454, 32.793415, 40.645546>,  <34.044159, 32.984097, 40.593925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.180454, 32.793415, 40.645546>,  <34.407616, 32.475616, 40.731579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.180454, 32.793415, 40.645546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445692, 0.077137, -0.891857,
		-0.691988, -0.602346, -0.397908,
		-0.567900, 0.794499, -0.215083,
		34.010086, 33.031765, 40.581020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.131218, 32.336834, 40.095295>,  <34.407616, 32.475616, 40.731579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.131218, 32.336834, 40.095295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079975, 32.732819, 40.119148>,  <34.049229, 32.970409, 40.133461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.079975, 32.732819, 40.119148>,  <34.131218, 32.336834, 40.095295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.079975, 32.732819, 40.119148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238759, 0.089149, -0.966978,
		-0.962592, -0.109636, -0.247783,
		-0.128105, 0.989966, 0.059637,
		34.041542, 33.029808, 40.137039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.891651, 32.464176, 39.453712>,  <34.131218, 32.336834, 40.095295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.891651, 32.464176, 39.453712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005947, 32.821747, 39.591839>,  <34.074524, 33.036289, 39.674713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.005947, 32.821747, 39.591839>,  <33.891651, 32.464176, 39.453712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.005947, 32.821747, 39.591839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127158, 0.321783, -0.938236,
		-0.949835, 0.311997, -0.021726,
		0.285736, 0.893931, 0.345314,
		34.091667, 33.089928, 39.695435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.553593, 32.994545, 39.074055>,  <33.891651, 32.464176, 39.453712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.553593, 32.994545, 39.074055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881760, 33.171703, 39.218697>,  <34.078659, 33.278000, 39.305481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.881760, 33.171703, 39.218697>,  <33.553593, 32.994545, 39.074055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.881760, 33.171703, 39.218697> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285002, 0.231501, -0.930151,
		-0.495672, 0.866170, 0.063702,
		0.820417, 0.442895, 0.361608,
		34.127884, 33.304573, 39.327179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.534836, 33.580822, 38.749542>,  <33.553593, 32.994545, 39.074055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.534836, 33.580822, 38.749542> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915573, 33.546841, 38.867367>,  <34.144016, 33.526451, 38.938061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.915573, 33.546841, 38.867367>,  <33.534836, 33.580822, 38.749542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.915573, 33.546841, 38.867367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306190, 0.215557, -0.927245,
		0.015280, 0.972789, 0.231191,
		0.951848, -0.084956, 0.294564,
		34.201126, 33.521355, 38.955734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.829651, 34.107101, 38.461788>,  <33.534836, 33.580822, 38.749542>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.829651, 34.107101, 38.461788> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146172, 33.867718, 38.511890>,  <34.336082, 33.724087, 38.541950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.146172, 33.867718, 38.511890>,  <33.829651, 34.107101, 38.461788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.146172, 33.867718, 38.511890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269349, 0.157290, -0.950111,
		0.548900, 0.785562, 0.285658,
		0.791303, -0.598458, 0.125254,
		34.383564, 33.688179, 38.549465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436607, 34.471684, 38.116489>,  <33.829651, 34.107101, 38.461788>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436607, 34.471684, 38.116489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527245, 34.084282, 38.157787>,  <34.581627, 33.851841, 38.182564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.527245, 34.084282, 38.157787>,  <34.436607, 34.471684, 38.116489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.527245, 34.084282, 38.157787> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447744, 0.009443, -0.894112,
		0.864975, 0.248823, 0.435781,
		0.226591, -0.968503, 0.103241,
		34.595222, 33.793732, 38.188759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.176262, 34.441891, 38.005680>,  <34.436607, 34.471684, 38.116489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.176262, 34.441891, 38.005680> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037460, 34.070293, 37.954224>,  <34.954178, 33.847336, 37.923351>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.037460, 34.070293, 37.954224>,  <35.176262, 34.441891, 38.005680>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037460, 34.070293, 37.954224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679907, -0.154708, -0.716792,
		0.645997, -0.336197, 0.685317,
		-0.347008, -0.928998, -0.128642,
		34.933357, 33.791595, 37.915630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777195, 33.920780, 37.995457>,  <35.176262, 34.441891, 38.005680>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.777195, 33.920780, 37.995457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487198, 33.734486, 37.792492>,  <35.313198, 33.622707, 37.670712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.487198, 33.734486, 37.792492>,  <35.777195, 33.920780, 37.995457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.487198, 33.734486, 37.792492> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667255, -0.292315, -0.685071,
		0.170740, -0.835248, 0.522694,
		-0.724996, -0.465739, -0.507414,
		35.269699, 33.594765, 37.640266>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.067066, 33.297371, 37.913597>,  <35.777195, 33.920780, 37.995457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.067066, 33.297371, 37.913597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772884, 33.310852, 37.642902>,  <35.596375, 33.318939, 37.480484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.772884, 33.310852, 37.642902>,  <36.067066, 33.297371, 37.913597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.772884, 33.310852, 37.642902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.659316, -0.194727, -0.726212,
		-0.156249, -0.980279, 0.120996,
		-0.735451, 0.033695, -0.676739,
		35.552250, 33.320961, 37.439880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.145672, 32.622917, 37.459183>,  <36.067066, 33.297371, 37.913597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.145672, 32.622917, 37.459183> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000469, 32.956623, 37.293179>,  <35.913349, 33.156845, 37.193577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.000469, 32.956623, 37.293179>,  <36.145672, 32.622917, 37.459183>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.000469, 32.956623, 37.293179> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823492, 0.078837, -0.561823,
		-0.435991, -0.545701, -0.715627,
		-0.363005, 0.834263, -0.415008,
		35.891567, 33.206902, 37.168674>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.132366, 32.154469, 38.015617>,  <36.145672, 32.622917, 37.459183>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.132366, 32.154469, 38.015617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483337, 32.330521, 37.939304>,  <36.693920, 32.436153, 37.893517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.483337, 32.330521, 37.939304>,  <36.132366, 32.154469, 38.015617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483337, 32.330521, 37.939304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206976, 0.011442, 0.978279,
		0.432756, -0.897860, -0.081057,
		0.877430, 0.440133, -0.190787,
		36.746567, 32.462559, 37.882069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.681110, 31.808298, 38.368076>,  <36.132366, 32.154469, 38.015617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.681110, 31.808298, 38.368076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821873, 32.179638, 38.320198>,  <36.906330, 32.402443, 38.291470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.821873, 32.179638, 38.320198>,  <36.681110, 31.808298, 38.368076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.821873, 32.179638, 38.320198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273217, 0.020433, 0.961736,
		0.895273, -0.371144, -0.246450,
		0.351906, 0.928351, -0.119696,
		36.927444, 32.458141, 38.284290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.325535, 31.917103, 38.533169>,  <36.681110, 31.808298, 38.368076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.325535, 31.917103, 38.533169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124817, 32.256264, 38.601601>,  <37.004387, 32.459759, 38.642658>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.124817, 32.256264, 38.601601>,  <37.325535, 31.917103, 38.533169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.124817, 32.256264, 38.601601> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306662, -0.010546, 0.951760,
		0.808804, 0.530047, -0.254728,
		-0.501791, 0.847902, 0.171075,
		36.974281, 32.510635, 38.652924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.666424, 32.166096, 39.171852>,  <37.325535, 31.917103, 38.533169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.666424, 32.166096, 39.171852> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355003, 32.415386, 39.142338>,  <37.168152, 32.564960, 39.124630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.355003, 32.415386, 39.142338>,  <37.666424, 32.166096, 39.171852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.355003, 32.415386, 39.142338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038353, 0.070100, 0.996802,
		0.626407, 0.778892, -0.030674,
		-0.778552, 0.623228, -0.073785,
		37.121437, 32.602356, 39.120201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914925, 32.764099, 39.605106>,  <37.666424, 32.166096, 39.171852>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.914925, 32.764099, 39.605106> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518803, 32.723118, 39.567574>,  <37.281132, 32.698528, 39.545055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.518803, 32.723118, 39.567574>,  <37.914925, 32.764099, 39.605106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.518803, 32.723118, 39.567574> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.100446, 0.061450, 0.993043,
		-0.095973, 0.992838, -0.071144,
		-0.990303, -0.102451, -0.093829,
		37.221710, 32.692383, 39.539425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.702137, 33.287319, 39.945866>,  <37.914925, 32.764099, 39.605106>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.702137, 33.287319, 39.945866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403095, 33.021996, 39.932552>,  <37.223671, 32.862801, 39.924564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.403095, 33.021996, 39.932552>,  <37.702137, 33.287319, 39.945866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.403095, 33.021996, 39.932552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.054794, 0.011661, 0.998430,
		-0.661877, 0.748257, -0.045063,
		-0.747607, -0.663307, -0.033282,
		37.178814, 32.823002, 39.922569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.346725, 33.542435, 40.504147>,  <37.702137, 33.287319, 39.945866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.346725, 33.542435, 40.504147> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174129, 33.193558, 40.411976>,  <37.070572, 32.984230, 40.356674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.174129, 33.193558, 40.411976>,  <37.346725, 33.542435, 40.504147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.174129, 33.193558, 40.411976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344893, -0.076527, 0.935517,
		-0.833585, 0.483138, -0.267792,
		-0.431491, -0.872193, -0.230423,
		37.044682, 32.931900, 40.342850>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.676651, 33.620071, 40.771793>,  <37.346725, 33.542435, 40.504147>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.676651, 33.620071, 40.771793> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786095, 33.235550, 40.758930>,  <36.851761, 33.004837, 40.751213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.786095, 33.235550, 40.758930>,  <36.676651, 33.620071, 40.771793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.786095, 33.235550, 40.758930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335721, -0.126780, 0.933390,
		-0.901349, -0.244584, -0.357418,
		0.273606, -0.961304, -0.032161,
		36.868176, 32.947159, 40.749283>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.136700, 33.369858, 41.045162>,  <36.676651, 33.620071, 40.771793>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.136700, 33.369858, 41.045162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416721, 33.086899, 41.084160>,  <36.584736, 32.917122, 41.107559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.416721, 33.086899, 41.084160>,  <36.136700, 33.369858, 41.045162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.416721, 33.086899, 41.084160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.355062, -0.226373, 0.907020,
		-0.619557, -0.669582, -0.409646,
		0.700057, -0.707400, 0.097492,
		36.626740, 32.874680, 41.113407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.788849, 32.712765, 41.162048>,  <36.136700, 33.369858, 41.045162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.788849, 32.712765, 41.162048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162594, 32.676395, 41.299854>,  <36.386841, 32.654575, 41.382538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.162594, 32.676395, 41.299854>,  <35.788849, 32.712765, 41.162048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.162594, 32.676395, 41.299854> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338451, -0.528760, 0.778373,
		0.111396, -0.843888, -0.524828,
		0.934367, -0.090921, 0.344516,
		36.442905, 32.649120, 41.403210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.780231, 32.045990, 41.510738>,  <35.788849, 32.712765, 41.162048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.780231, 32.045990, 41.510738> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107784, 32.208111, 41.673302>,  <36.304317, 32.305382, 41.770840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.107784, 32.208111, 41.673302>,  <35.780231, 32.045990, 41.510738>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.107784, 32.208111, 41.673302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.300122, -0.301193, 0.905102,
		0.489245, -0.863142, -0.125001,
		0.818881, 0.405301, 0.406405,
		36.353447, 32.329700, 41.795223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.141968, 31.491920, 41.845123>,  <35.780231, 32.045990, 41.510738>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.141968, 31.491920, 41.845123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257248, 31.838600, 42.007984>,  <36.326416, 32.046608, 42.105701>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.257248, 31.838600, 42.007984>,  <36.141968, 31.491920, 41.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.257248, 31.838600, 42.007984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390128, -0.282029, 0.876504,
		0.874495, -0.411448, 0.256844,
		0.288199, 0.866701, 0.407151,
		36.343708, 32.098610, 42.130131>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.330040, 31.261375, 42.424587>,  <36.141968, 31.491920, 41.845123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.330040, 31.261375, 42.424587> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317451, 31.655672, 42.490704>,  <36.309898, 31.892250, 42.530373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.317451, 31.655672, 42.490704>,  <36.330040, 31.261375, 42.424587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.317451, 31.655672, 42.490704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.224708, -0.168116, 0.959814,
		0.973918, -0.006939, 0.226794,
		-0.031468, 0.985743, 0.165290,
		36.308010, 31.951395, 42.540291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732067, 31.400265, 43.058819>,  <36.330040, 31.261375, 42.424587>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.732067, 31.400265, 43.058819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534931, 31.748150, 43.069462>,  <36.416649, 31.956881, 43.075848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.534931, 31.748150, 43.069462>,  <36.732067, 31.400265, 43.058819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.534931, 31.748150, 43.069462> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.123550, -0.100220, 0.987265,
		0.861304, 0.483275, 0.156845,
		-0.492840, 0.869713, 0.026611,
		36.387081, 32.009064, 43.077446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.922512, 31.767742, 43.728447>,  <36.732067, 31.400265, 43.058819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.922512, 31.767742, 43.728447> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578472, 31.923429, 43.596546>,  <36.372047, 32.016842, 43.517406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.578472, 31.923429, 43.596546>,  <36.922512, 31.767742, 43.728447>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.578472, 31.923429, 43.596546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391868, -0.090271, 0.915582,
		0.326596, 0.916711, 0.230165,
		-0.860102, 0.389220, -0.329747,
		36.320442, 32.040195, 43.497623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.780170, 32.434628, 44.197819>,  <36.922512, 31.767742, 43.728447>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.780170, 32.434628, 44.197819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439243, 32.296989, 44.040260>,  <36.234688, 32.214405, 43.945724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.439243, 32.296989, 44.040260>,  <36.780170, 32.434628, 44.197819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.439243, 32.296989, 44.040260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416562, -0.008828, 0.909064,
		-0.316284, 0.938893, -0.135813,
		-0.852315, -0.344097, -0.393899,
		36.183548, 32.193760, 43.922092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.234138, 32.895821, 44.268612>,  <36.780170, 32.434628, 44.197819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.234138, 32.895821, 44.268612> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058556, 32.536945, 44.249165>,  <35.953205, 32.321621, 44.237495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.058556, 32.536945, 44.249165>,  <36.234138, 32.895821, 44.268612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.058556, 32.536945, 44.249165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.483936, 0.190482, 0.854121,
		-0.757048, 0.398452, -0.517797,
		-0.438957, -0.897192, -0.048621,
		35.926868, 32.267788, 44.234577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.655796, 33.038982, 44.706696>,  <36.234138, 32.895821, 44.268612>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.655796, 33.038982, 44.706696> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607471, 32.648380, 44.635315>,  <35.578476, 32.414021, 44.592487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.607471, 32.648380, 44.635315>,  <35.655796, 33.038982, 44.706696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.607471, 32.648380, 44.635315> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.796552, -0.011913, 0.604453,
		-0.592377, 0.215171, -0.776396,
		-0.120812, -0.976504, -0.178452,
		35.571228, 32.355431, 44.581779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.937634, 32.886921, 44.539043>,  <35.655796, 33.038982, 44.706696>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.937634, 32.886921, 44.539043> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076271, 32.528111, 44.648750>,  <35.159454, 32.312824, 44.714577>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.076271, 32.528111, 44.648750>,  <34.937634, 32.886921, 44.539043>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.076271, 32.528111, 44.648750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.811821, -0.140377, 0.566782,
		-0.469915, -0.419101, -0.776875,
		0.346595, -0.897022, 0.274270,
		35.180248, 32.259003, 44.731030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.437870, 32.525135, 44.441273>,  <34.937634, 32.886921, 44.539043>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.437870, 32.525135, 44.441273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673183, 32.339935, 44.706470>,  <34.814373, 32.228817, 44.865589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.673183, 32.339935, 44.706470>,  <34.437870, 32.525135, 44.441273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673183, 32.339935, 44.706470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807866, -0.300260, 0.507146,
		-0.035738, -0.833952, -0.550678,
		0.588282, -0.462998, 0.662990,
		34.849667, 32.201035, 44.905369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.913792, 32.027676, 44.802837>,  <34.437870, 32.525135, 44.441273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.913792, 32.027676, 44.802837> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254971, 31.986229, 45.007481>,  <34.459679, 31.961361, 45.130268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.254971, 31.986229, 45.007481>,  <33.913792, 32.027676, 44.802837>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.254971, 31.986229, 45.007481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.521978, -0.176983, 0.834396,
		0.004091, -0.978745, -0.205042,
		0.852949, -0.103613, 0.511607,
		34.510857, 31.955145, 45.160961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.927498, 31.363298, 45.220066>,  <33.913792, 32.027676, 44.802837>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.927498, 31.363298, 45.220066> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160210, 31.647638, 45.378166>,  <34.299835, 31.818243, 45.473026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.160210, 31.647638, 45.378166>,  <33.927498, 31.363298, 45.220066>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.160210, 31.647638, 45.378166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443553, -0.130051, 0.886762,
		0.681759, -0.691215, 0.239639,
		0.581778, 0.710851, 0.395254,
		34.334743, 31.860893, 45.496742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.239075, 31.004890, 45.861637>,  <33.927498, 31.363298, 45.220066>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.239075, 31.004890, 45.861637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249325, 31.402514, 45.903961>,  <34.255474, 31.641087, 45.929356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.249325, 31.402514, 45.903961>,  <34.239075, 31.004890, 45.861637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.249325, 31.402514, 45.903961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.286161, -0.094126, 0.953547,
		0.957839, -0.054713, 0.282048,
		0.025623, 0.994056, 0.105814,
		34.257011, 31.700729, 45.935707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481880, 31.120373, 46.609646>,  <34.239075, 31.004890, 45.861637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481880, 31.120373, 46.609646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326614, 31.472105, 46.499294>,  <34.233456, 31.683144, 46.433083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.326614, 31.472105, 46.499294>,  <34.481880, 31.120373, 46.609646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.326614, 31.472105, 46.499294> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.215962, 0.204223, 0.954805,
		0.895929, 0.430201, 0.110630,
		-0.388165, 0.879330, -0.275876,
		34.210163, 31.735905, 46.416531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.690163, 31.646494, 47.031109>,  <34.481880, 31.120373, 46.609646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.690163, 31.646494, 47.031109> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360630, 31.800795, 46.864979>,  <34.162910, 31.893375, 46.765301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360630, 31.800795, 46.864979>,  <34.690163, 31.646494, 47.031109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360630, 31.800795, 46.864979> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341164, 0.247689, 0.906784,
		0.452665, 0.888733, -0.072449,
		-0.823833, 0.385752, -0.415324,
		34.113480, 31.916521, 46.740383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.711468, 32.351177, 47.316769>,  <34.690163, 31.646494, 47.031109>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.711468, 32.351177, 47.316769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331066, 32.299595, 47.204365>,  <34.102825, 32.268646, 47.136925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.331066, 32.299595, 47.204365>,  <34.711468, 32.351177, 47.316769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.331066, 32.299595, 47.204365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306863, 0.282574, 0.908838,
		-0.037793, 0.950538, -0.308300,
		-0.951003, -0.128953, -0.281006,
		34.045765, 32.260910, 47.120064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.440823, 32.946285, 47.441227>,  <34.711468, 32.351177, 47.316769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.440823, 32.946285, 47.441227> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139381, 32.683517, 47.450542>,  <33.958515, 32.525856, 47.456131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.139381, 32.683517, 47.450542>,  <34.440823, 32.946285, 47.441227>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.139381, 32.683517, 47.450542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274991, 0.347241, 0.896551,
		-0.597046, 0.669240, -0.442328,
		-0.753602, -0.656918, 0.023284,
		33.913300, 32.486443, 47.457527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.861671, 33.282803, 47.716713>,  <34.440823, 32.946285, 47.441227>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.861671, 33.282803, 47.716713> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752918, 32.901150, 47.766853>,  <33.687664, 32.672157, 47.796936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.752918, 32.901150, 47.766853>,  <33.861671, 33.282803, 47.716713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.752918, 32.901150, 47.766853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366535, 0.223111, 0.903257,
		-0.889792, 0.199641, -0.410384,
		-0.271888, -0.954131, 0.125347,
		33.671352, 32.614910, 47.804459>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.310951, 33.375401, 48.118164>,  <33.861671, 33.282803, 47.716713>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.310951, 33.375401, 48.118164> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393829, 32.988457, 48.176529>,  <33.443558, 32.756290, 48.211548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.393829, 32.988457, 48.176529>,  <33.310951, 33.375401, 48.118164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.393829, 32.988457, 48.176529> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170935, 0.111061, 0.979003,
		-0.963250, -0.227786, -0.142344,
		0.207195, -0.967356, 0.145916,
		33.455986, 32.698250, 48.220303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.656330, 33.127541, 48.346363>,  <33.310951, 33.375401, 48.118164>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.656330, 33.127541, 48.346363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972027, 32.906944, 48.454403>,  <33.161446, 32.774586, 48.519226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.972027, 32.906944, 48.454403>,  <32.656330, 33.127541, 48.346363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.972027, 32.906944, 48.454403> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275791, 0.074656, 0.958314,
		-0.548669, -0.830832, -0.093175,
		0.789242, -0.551494, 0.270098,
		33.208797, 32.741497, 48.535431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.513268, 32.803616, 49.044369>,  <32.656330, 33.127541, 48.346363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.513268, 32.803616, 49.044369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902863, 32.729053, 48.992836>,  <33.136620, 32.684315, 48.961918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.902863, 32.729053, 48.992836>,  <32.513268, 32.803616, 49.044369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.902863, 32.729053, 48.992836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161139, 0.170097, 0.972163,
		-0.159304, -0.967636, 0.195710,
		0.973990, -0.186406, -0.128827,
		33.195061, 32.673134, 48.954189>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.811935, 32.138863, 49.434887>,  <32.513268, 32.803616, 49.044369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.811935, 32.138863, 49.434887> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086414, 32.426212, 49.389153>,  <33.251102, 32.598621, 49.361713>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.086414, 32.426212, 49.389153>,  <32.811935, 32.138863, 49.434887>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.086414, 32.426212, 49.389153> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158054, 0.006178, 0.987411,
		0.710038, -0.695628, -0.109302,
		0.686196, 0.718375, -0.114334,
		33.292274, 32.641724, 49.354851>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.318962, 32.061687, 50.005611>,  <32.811935, 32.138863, 49.434887>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.318962, 32.061687, 50.005611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462349, 32.403782, 49.855907>,  <33.548382, 32.609039, 49.766083>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.462349, 32.403782, 49.855907>,  <33.318962, 32.061687, 50.005611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.462349, 32.403782, 49.855907> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397312, 0.223021, 0.890171,
		0.844775, -0.467795, -0.259850,
		0.358466, 0.855236, -0.374264,
		33.569889, 32.660355, 49.743629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.037151, 32.122650, 50.286655>,  <33.318962, 32.061687, 50.005611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.037151, 32.122650, 50.286655> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911209, 32.486076, 50.176834>,  <33.835644, 32.704132, 50.110943>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.911209, 32.486076, 50.176834>,  <34.037151, 32.122650, 50.286655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.911209, 32.486076, 50.176834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378195, 0.385407, 0.841683,
		0.870536, 0.161176, -0.464962,
		-0.314859, 0.908562, -0.274554,
		33.816753, 32.758644, 50.094467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.610844, 32.564224, 50.498028>,  <34.037151, 32.122650, 50.286655>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.610844, 32.564224, 50.498028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267437, 32.764908, 50.455627>,  <34.061394, 32.885319, 50.430187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.267437, 32.764908, 50.455627>,  <34.610844, 32.564224, 50.498028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.267437, 32.764908, 50.455627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020380, 0.239939, 0.970574,
		0.512377, 0.831096, -0.216217,
		-0.858519, 0.501706, -0.106001,
		34.009880, 32.915421, 50.423828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.755924, 33.160305, 50.888042>,  <34.610844, 32.564224, 50.498028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.755924, 33.160305, 50.888042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360573, 33.197582, 50.840015>,  <34.123360, 33.219948, 50.811199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.360573, 33.197582, 50.840015>,  <34.755924, 33.160305, 50.888042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.360573, 33.197582, 50.840015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081284, 0.343400, 0.935665,
		0.128426, 0.934555, -0.331835,
		-0.988382, 0.093191, -0.120066,
		34.064056, 33.225540, 50.803997>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.519020, 33.856674, 51.094753>,  <34.755924, 33.160305, 50.888042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.519020, 33.856674, 51.094753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205936, 33.608414, 51.113358>,  <34.018085, 33.459457, 51.124519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.205936, 33.608414, 51.113358>,  <34.519020, 33.856674, 51.094753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.205936, 33.608414, 51.113358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279438, 0.417204, 0.864786,
		-0.556133, 0.663878, -0.499982,
		-0.782707, -0.620650, 0.046508,
		33.971123, 33.422218, 51.127312>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.953377, 34.354206, 51.212543>,  <34.519020, 33.856674, 51.094753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.953377, 34.354206, 51.212543> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872589, 33.988125, 51.352036>,  <33.824116, 33.768475, 51.435730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.872589, 33.988125, 51.352036>,  <33.953377, 34.354206, 51.212543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.872589, 33.988125, 51.352036> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343509, 0.399643, 0.849875,
		-0.917176, 0.051853, -0.395094,
		-0.201965, -0.915203, 0.348731,
		33.812000, 33.713562, 51.456654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.430847, 34.558559, 51.779320>,  <33.953377, 34.354206, 51.212543>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.430847, 34.558559, 51.779320> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784084, 34.741798, 51.819912>,  <34.996025, 34.851742, 51.844265>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.784084, 34.741798, 51.819912>,  <34.430847, 34.558559, 51.779320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.784084, 34.741798, 51.819912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.067186, 0.337511, -0.938921,
		-0.464364, 0.822336, 0.328831,
		0.883092, 0.458094, 0.101478,
		35.049011, 34.879227, 51.850357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.357342, 35.209236, 51.379185>,  <34.430847, 34.558559, 51.779320>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.357342, 35.209236, 51.379185> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752228, 35.189796, 51.439903>,  <34.989159, 35.178131, 51.476334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.752228, 35.189796, 51.439903>,  <34.357342, 35.209236, 51.379185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.752228, 35.189796, 51.439903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158113, 0.418861, -0.894179,
		-0.020124, 0.906749, 0.421191,
		0.987216, -0.048601, 0.151798,
		35.048393, 35.175217, 51.485443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.649052, 35.906872, 51.088154>,  <34.357342, 35.209236, 51.379185>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.649052, 35.906872, 51.088154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933411, 35.625557, 51.088612>,  <35.104027, 35.456768, 51.088886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.933411, 35.625557, 51.088612>,  <34.649052, 35.906872, 51.088154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933411, 35.625557, 51.088612> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283534, 0.285115, -0.915597,
		0.643605, 0.651223, 0.402095,
		0.710901, -0.703291, 0.001142,
		35.146683, 35.414570, 51.088955>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.220146, 36.210648, 50.749409>,  <34.649052, 35.906872, 51.088154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.220146, 36.210648, 50.749409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288948, 35.817345, 50.725349>,  <35.330231, 35.581364, 50.710915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.288948, 35.817345, 50.725349>,  <35.220146, 36.210648, 50.749409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.288948, 35.817345, 50.725349> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397594, 0.125157, -0.908986,
		0.901295, 0.132434, 0.412465,
		0.172004, -0.983258, -0.060149,
		35.340549, 35.522366, 50.707306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.792057, 36.127308, 50.435341>,  <35.220146, 36.210648, 50.749409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.792057, 36.127308, 50.435341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643169, 35.765388, 50.352596>,  <35.553837, 35.548237, 50.302948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.643169, 35.765388, 50.352596>,  <35.792057, 36.127308, 50.435341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.643169, 35.765388, 50.352596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459014, 0.014263, -0.888315,
		0.806698, -0.425597, 0.410007,
		-0.372216, -0.904801, -0.206861,
		35.531506, 35.493950, 50.290539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.344364, 35.764290, 50.090225>,  <35.792057, 36.127308, 50.435341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.344364, 35.764290, 50.090225> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037384, 35.527924, 49.990761>,  <35.853195, 35.386105, 49.931080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.037384, 35.527924, 49.990761>,  <36.344364, 35.764290, 50.090225>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.037384, 35.527924, 49.990761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.379145, -0.105565, -0.919296,
		0.516976, -0.799797, 0.305059,
		-0.767454, -0.590915, -0.248664,
		35.807148, 35.350651, 49.916161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.626183, 35.180515, 49.644161>,  <36.344364, 35.764290, 50.090225>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.626183, 35.180515, 49.644161> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232937, 35.175720, 49.571125>,  <35.996990, 35.172844, 49.527306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232937, 35.175720, 49.571125>,  <36.626183, 35.180515, 49.644161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232937, 35.175720, 49.571125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182530, -0.134137, -0.974007,
		-0.012816, -0.990890, 0.134060,
		-0.983117, -0.011987, -0.182586,
		35.938004, 35.172123, 49.516350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.491287, 34.675682, 49.156586>,  <36.626183, 35.180515, 49.644161>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.491287, 34.675682, 49.156586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193428, 34.937996, 49.106865>,  <36.014713, 35.095383, 49.077030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.193428, 34.937996, 49.106865>,  <36.491287, 34.675682, 49.156586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.193428, 34.937996, 49.106865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130669, -0.039403, -0.990643,
		-0.654543, -0.753922, -0.056349,
		-0.744647, 0.655781, -0.124306,
		35.970036, 35.134731, 49.069572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213085, 34.409592, 48.586475>,  <36.491287, 34.675682, 49.156586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213085, 34.409592, 48.586475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053467, 34.775959, 48.603714>,  <35.957695, 34.995777, 48.614059>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.053467, 34.775959, 48.603714>,  <36.213085, 34.409592, 48.586475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.053467, 34.775959, 48.603714> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006056, 0.044370, -0.998997,
		-0.916910, -0.398910, -0.012159,
		-0.399049, 0.915916, 0.043099,
		35.933750, 35.050735, 48.616642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.568066, 34.460567, 48.168827>,  <36.213085, 34.409592, 48.586475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.568066, 34.460567, 48.168827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682728, 34.843212, 48.189716>,  <35.751526, 35.072800, 48.202248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.682728, 34.843212, 48.189716>,  <35.568066, 34.460567, 48.168827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.682728, 34.843212, 48.189716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032975, 0.064325, -0.997384,
		-0.957466, 0.284183, 0.049983,
		0.286654, 0.956610, 0.052218,
		35.768723, 35.130196, 48.205383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240917, 34.800922, 47.592682>,  <35.568066, 34.460567, 48.168827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240917, 34.800922, 47.592682> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502964, 35.079445, 47.709969>,  <35.660194, 35.246559, 47.780342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.502964, 35.079445, 47.709969>,  <35.240917, 34.800922, 47.592682>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.502964, 35.079445, 47.709969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.049465, 0.347733, -0.936288,
		-0.753903, 0.627886, 0.193364,
		0.655121, 0.696305, 0.293215,
		35.699501, 35.288338, 47.797932>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.007988, 35.491814, 47.376301>,  <35.240917, 34.800922, 47.592682>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.007988, 35.491814, 47.376301> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403595, 35.496593, 47.435215>,  <35.640961, 35.499462, 47.470566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.403595, 35.496593, 47.435215>,  <35.007988, 35.491814, 47.376301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.403595, 35.496593, 47.435215> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137963, 0.282436, -0.949314,
		-0.052946, 0.959212, 0.277686,
		0.989021, 0.011952, 0.147289,
		35.700302, 35.500179, 47.479401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.091228, 35.997246, 46.890858>,  <35.007988, 35.491814, 47.376301>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.091228, 35.997246, 46.890858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433567, 35.802208, 46.959881>,  <35.638969, 35.685184, 47.001293>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.433567, 35.802208, 46.959881>,  <35.091228, 35.997246, 46.890858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.433567, 35.802208, 46.959881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310971, 0.218492, -0.924964,
		0.413306, 0.845289, 0.338623,
		0.855848, -0.487595, 0.172556,
		35.690323, 35.655930, 47.011646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.643497, 36.451317, 46.734737>,  <35.091228, 35.997246, 46.890858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.643497, 36.451317, 46.734737> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777340, 36.075329, 46.707935>,  <35.857647, 35.849735, 46.691856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.777340, 36.075329, 46.707935>,  <35.643497, 36.451317, 46.734737>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777340, 36.075329, 46.707935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304009, 0.174971, -0.936463,
		0.891973, 0.292978, 0.344307,
		0.334607, -0.939973, -0.067002,
		35.877724, 35.793339, 46.687836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.158146, 36.568497, 46.299858>,  <35.643497, 36.451317, 46.734737>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.158146, 36.568497, 46.299858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105431, 36.172199, 46.286850>,  <36.073799, 35.934422, 46.279045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.105431, 36.172199, 46.286850>,  <36.158146, 36.568497, 46.299858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105431, 36.172199, 46.286850> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.382321, -0.020537, -0.923801,
		0.914582, -0.134183, 0.381489,
		-0.131793, -0.990744, -0.032518,
		36.065891, 35.874977, 46.277096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.730297, 36.310452, 45.982136>,  <36.158146, 36.568497, 46.299858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.730297, 36.310452, 45.982136> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443302, 36.042023, 45.907433>,  <36.271107, 35.880966, 45.862610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.443302, 36.042023, 45.907433>,  <36.730297, 36.310452, 45.982136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.443302, 36.042023, 45.907433> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340621, -0.104140, -0.934415,
		0.607610, -0.734043, 0.303300,
		-0.717487, -0.671071, -0.186754,
		36.228058, 35.840702, 45.851406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.090645, 35.738743, 45.663094>,  <36.730297, 36.310452, 45.982136>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.090645, 35.738743, 45.663094> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709606, 35.664394, 45.566746>,  <36.480984, 35.619785, 45.508938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.709606, 35.664394, 45.566746>,  <37.090645, 35.738743, 45.663094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.709606, 35.664394, 45.566746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289780, -0.313101, -0.904431,
		0.092691, -0.931354, 0.352119,
		-0.952594, -0.185870, -0.240866,
		36.423828, 35.608635, 45.494484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.139683, 35.100128, 45.300900>,  <37.090645, 35.738743, 45.663094>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.139683, 35.100128, 45.300900> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806862, 35.283943, 45.176632>,  <36.607170, 35.394230, 45.102070>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.806862, 35.283943, 45.176632>,  <37.139683, 35.100128, 45.300900>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806862, 35.283943, 45.176632> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247789, -0.193166, -0.949362,
		-0.496275, -0.866900, 0.046857,
		-0.832053, 0.459534, -0.310672,
		36.557247, 35.421803, 45.083431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.830303, 34.614925, 44.904617>,  <37.139683, 35.100128, 45.300900>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.830303, 34.614925, 44.904617> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634048, 34.946053, 44.795818>,  <36.516296, 35.144730, 44.730537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.634048, 34.946053, 44.795818>,  <36.830303, 34.614925, 44.904617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.634048, 34.946053, 44.795818> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.179621, -0.209365, -0.961198,
		-0.852649, -0.520458, -0.045972,
		-0.490638, 0.827822, -0.272000,
		36.486858, 35.194401, 44.714218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.326168, 34.401165, 44.333282>,  <36.830303, 34.614925, 44.904617>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.326168, 34.401165, 44.333282> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417088, 34.788128, 44.288651>,  <36.471642, 35.020306, 44.261871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.417088, 34.788128, 44.288651>,  <36.326168, 34.401165, 44.333282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417088, 34.788128, 44.288651> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.154132, -0.148871, -0.976771,
		-0.961549, 0.204826, -0.182947,
		0.227304, 0.967411, -0.111576,
		36.485279, 35.078350, 44.255177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.911758, 34.679935, 43.678871>,  <36.326168, 34.401165, 44.333282>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.911758, 34.679935, 43.678871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232193, 34.907028, 43.754711>,  <36.424454, 35.043282, 43.800217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.232193, 34.907028, 43.754711>,  <35.911758, 34.679935, 43.678871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.232193, 34.907028, 43.754711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.367975, -0.217291, -0.904090,
		-0.472079, 0.794021, -0.382978,
		0.801084, 0.567729, 0.189601,
		36.472519, 35.077347, 43.811592>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.151634, 34.857399, 42.988716>,  <35.911758, 34.679935, 43.678871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.151634, 34.857399, 42.988716> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461208, 34.926472, 43.232422>,  <36.646954, 34.967915, 43.378647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.461208, 34.926472, 43.232422>,  <36.151634, 34.857399, 42.988716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.461208, 34.926472, 43.232422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.632197, -0.154860, -0.759174,
		-0.036747, 0.972727, -0.229023,
		0.773936, 0.172685, 0.609265,
		36.693390, 34.978279, 43.415203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.565308, 35.289368, 42.618649>,  <36.151634, 34.857399, 42.988716>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.565308, 35.289368, 42.618649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785912, 35.118931, 42.905502>,  <36.918274, 35.016666, 43.077614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.785912, 35.118931, 42.905502>,  <36.565308, 35.289368, 42.618649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.785912, 35.118931, 42.905502> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.633786, -0.344919, -0.692348,
		0.542359, 0.836346, 0.079826,
		0.551509, -0.426094, 0.717135,
		36.951363, 34.991104, 43.120644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.285053, 35.478481, 42.400055>,  <36.565308, 35.289368, 42.618649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.285053, 35.478481, 42.400055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299576, 35.176392, 42.661839>,  <37.308289, 34.995136, 42.818909>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.299576, 35.176392, 42.661839>,  <37.285053, 35.478481, 42.400055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.299576, 35.176392, 42.661839> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806696, -0.364392, -0.465252,
		0.589850, 0.544840, 0.596009,
		0.036307, -0.755227, 0.654457,
		37.310467, 34.949825, 42.858177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.871773, 35.559883, 42.804520>,  <37.285053, 35.478481, 42.400055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.871773, 35.559883, 42.804520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798748, 35.167946, 42.836945>,  <37.754932, 34.932781, 42.856400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.798748, 35.167946, 42.836945>,  <37.871773, 35.559883, 42.804520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798748, 35.167946, 42.836945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787679, -0.195102, -0.584377,
		0.588416, -0.042833, 0.807423,
		-0.182560, -0.979847, 0.081062,
		37.743980, 34.873993, 42.861263>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492111, 35.153809, 43.093056>,  <37.871773, 35.559883, 42.804520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.492111, 35.153809, 43.093056> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278564, 34.882420, 42.891201>,  <38.150436, 34.719585, 42.770088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.278564, 34.882420, 42.891201>,  <38.492111, 35.153809, 43.093056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.278564, 34.882420, 42.891201> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.825178, -0.287758, -0.486083,
		0.184581, -0.675920, 0.713486,
		-0.533864, -0.678475, -0.504640,
		38.118404, 34.678879, 42.739807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860737, 34.541229, 43.151691>,  <38.492111, 35.153809, 43.093056>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860737, 34.541229, 43.151691> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630466, 34.491772, 42.828381>,  <38.492306, 34.462097, 42.634392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.630466, 34.491772, 42.828381>,  <38.860737, 34.541229, 43.151691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.630466, 34.491772, 42.828381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801121, -0.283214, -0.527252,
		-0.163727, -0.951054, 0.262088,
		-0.575672, -0.123639, -0.808280,
		38.457764, 34.454681, 42.585896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998356, 33.926186, 42.883663>,  <38.860737, 34.541229, 43.151691>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998356, 33.926186, 42.883663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849777, 34.099194, 42.555042>,  <38.760628, 34.202999, 42.357868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.849777, 34.099194, 42.555042>,  <38.998356, 33.926186, 42.883663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.849777, 34.099194, 42.555042> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823780, -0.254628, -0.506509,
		-0.428266, -0.864922, -0.261721,
		-0.371449, 0.432521, -0.821554,
		38.738342, 34.228951, 42.308575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.383633, 33.629635, 42.403934>,  <38.998356, 33.926186, 42.883663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.383633, 33.629635, 42.403934> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227314, 33.931183, 42.192669>,  <39.133522, 34.112114, 42.065910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.227314, 33.931183, 42.192669>,  <39.383633, 33.629635, 42.403934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.227314, 33.931183, 42.192669> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830482, 0.041323, -0.555511,
		-0.396959, -0.655720, -0.642226,
		-0.390799, 0.753872, -0.528160,
		39.110073, 34.157345, 42.034222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.397179, 33.427116, 41.746853>,  <39.383633, 33.629635, 42.403934>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.397179, 33.427116, 41.746853> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387432, 33.826988, 41.749397>,  <39.381584, 34.066914, 41.750923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.387432, 33.826988, 41.749397>,  <39.397179, 33.427116, 41.746853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.387432, 33.826988, 41.749397> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.776523, 0.022934, -0.629671,
		-0.629617, -0.010409, -0.776836,
		-0.024370, 0.999683, 0.006357,
		39.380119, 34.126892, 41.751305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.483482, 33.623177, 41.113827>,  <39.397179, 33.427116, 41.746853>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.483482, 33.623177, 41.113827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567513, 33.978260, 41.277699>,  <39.617931, 34.191311, 41.376022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.567513, 33.978260, 41.277699>,  <39.483482, 33.623177, 41.113827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.567513, 33.978260, 41.277699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744319, 0.126483, -0.655737,
		-0.633922, 0.442691, -0.634167,
		0.210077, 0.887709, 0.409684,
		39.630535, 34.244572, 41.400604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.522018, 34.026245, 40.488029>,  <39.483482, 33.623177, 41.113827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.522018, 34.026245, 40.488029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725124, 34.182915, 40.794956>,  <39.846989, 34.276917, 40.979111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.725124, 34.182915, 40.794956>,  <39.522018, 34.026245, 40.488029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.725124, 34.182915, 40.794956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723492, 0.289661, -0.626622,
		-0.467692, 0.873320, -0.136294,
		0.507763, 0.391674, 0.767312,
		39.877453, 34.300415, 41.025150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.552914, 34.788342, 40.340908>,  <39.522018, 34.026245, 40.488029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.552914, 34.788342, 40.340908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840126, 34.685074, 40.599453>,  <40.012451, 34.623112, 40.754581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.840126, 34.685074, 40.599453>,  <39.552914, 34.788342, 40.340908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.840126, 34.685074, 40.599453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668818, 0.512992, -0.538072,
		-0.192667, 0.818650, 0.541010,
		0.718027, -0.258168, 0.646364,
		40.055534, 34.607624, 40.793362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.932232, 35.390415, 40.425457>,  <39.552914, 34.788342, 40.340908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.932232, 35.390415, 40.425457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168968, 35.090202, 40.543049>,  <40.311012, 34.910076, 40.613605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.168968, 35.090202, 40.543049>,  <39.932232, 35.390415, 40.425457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.168968, 35.090202, 40.543049> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722347, 0.332010, -0.606616,
		0.357677, 0.571381, 0.738641,
		0.591845, -0.750528, 0.293983,
		40.346523, 34.865044, 40.631245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.535854, 35.724834, 40.442055>,  <39.932232, 35.390415, 40.425457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.535854, 35.724834, 40.442055> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614162, 35.334019, 40.408432>,  <40.661148, 35.099529, 40.388260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.614162, 35.334019, 40.408432>,  <40.535854, 35.724834, 40.442055>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.614162, 35.334019, 40.408432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.766341, 0.205905, -0.608543,
		0.611879, 0.054722, 0.789056,
		0.195771, -0.977041, -0.084053,
		40.672894, 35.040905, 40.383217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.175404, 35.587128, 40.681023>,  <40.535854, 35.724834, 40.442055>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.175404, 35.587128, 40.681023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101612, 35.287292, 40.426750>,  <41.057339, 35.107391, 40.274185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.101612, 35.287292, 40.426750>,  <41.175404, 35.587128, 40.681023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.101612, 35.287292, 40.426750> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.801965, 0.259095, -0.538258,
		0.568172, -0.609091, 0.553343,
		-0.184479, -0.749586, -0.635680,
		41.046268, 35.062416, 40.236046>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.760662, 35.572918, 40.419971>,  <41.175404, 35.587128, 40.681023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.760662, 35.572918, 40.419971> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602226, 35.284378, 40.192722>,  <41.507164, 35.111252, 40.056374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.602226, 35.284378, 40.192722>,  <41.760662, 35.572918, 40.419971>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.602226, 35.284378, 40.192722> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.702150, 0.160760, -0.693643,
		0.591694, -0.673651, 0.442823,
		-0.396085, -0.721353, -0.568125,
		41.483402, 35.067974, 40.022285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.320515, 35.182655, 40.260868>,  <41.760662, 35.572918, 40.419971>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.320515, 35.182655, 40.260868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023529, 35.116310, 40.001259>,  <41.845337, 35.076504, 39.845493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.023529, 35.116310, 40.001259>,  <42.320515, 35.182655, 40.260868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.023529, 35.116310, 40.001259> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.665532, -0.072363, -0.742853,
		0.076245, -0.983491, 0.164113,
		-0.742465, -0.165861, -0.649027,
		41.800789, 35.066551, 39.806549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.467003, 34.551044, 39.961285>,  <42.320515, 35.182655, 40.260868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.467003, 34.551044, 39.961285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256668, 34.778927, 39.708641>,  <42.130466, 34.915657, 39.557056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256668, 34.778927, 39.708641>,  <42.467003, 34.551044, 39.961285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256668, 34.778927, 39.708641> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629664, -0.238500, -0.739352,
		-0.571851, -0.786481, -0.233311,
		-0.525841, 0.569706, -0.631606,
		42.098915, 34.949841, 39.519161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.361916, 34.319584, 39.280174>,  <42.467003, 34.551044, 39.961285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.361916, 34.319584, 39.280174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318089, 34.712345, 39.218391>,  <42.291794, 34.948002, 39.181320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.318089, 34.712345, 39.218391>,  <42.361916, 34.319584, 39.280174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.318089, 34.712345, 39.218391> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.515691, -0.076688, -0.853335,
		-0.849740, -0.173151, -0.497957,
		-0.109569, 0.981905, -0.154457,
		42.285217, 35.006916, 39.172054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.130123, 34.392456, 38.597603>,  <42.361916, 34.319584, 39.280174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.130123, 34.392456, 38.597603> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277885, 34.757198, 38.669212>,  <42.366543, 34.976044, 38.712177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.277885, 34.757198, 38.669212>,  <42.130123, 34.392456, 38.597603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.277885, 34.757198, 38.669212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359002, 0.037656, -0.932577,
		-0.857121, 0.408770, -0.313449,
		0.369407, 0.911860, 0.179025,
		42.388706, 35.030758, 38.722919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.887859, 34.895325, 38.141548>,  <42.130123, 34.392456, 38.597603>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.887859, 34.895325, 38.141548> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256912, 35.010693, 38.243969>,  <42.478344, 35.079914, 38.305424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.256912, 35.010693, 38.243969>,  <41.887859, 34.895325, 38.141548>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.256912, 35.010693, 38.243969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287003, -0.069931, -0.955374,
		-0.257642, 0.954947, -0.147298,
		0.922632, 0.288419, 0.256055,
		42.533703, 35.097218, 38.320786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.248783, 35.303768, 37.541595>,  <41.887859, 34.895325, 38.141548>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.248783, 35.303768, 37.541595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538620, 35.160568, 37.777157>,  <42.712521, 35.074650, 37.918495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.538620, 35.160568, 37.777157>,  <42.248783, 35.303768, 37.541595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.538620, 35.160568, 37.777157> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.614253, -0.052005, -0.787394,
		0.312514, 0.932272, 0.182221,
		0.724589, -0.358001, 0.588903,
		42.755997, 35.053169, 37.953827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.925533, 35.720097, 37.671928>,  <42.248783, 35.303768, 37.541595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.925533, 35.720097, 37.671928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988811, 35.325386, 37.686043>,  <43.026779, 35.088558, 37.694511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.988811, 35.325386, 37.686043>,  <42.925533, 35.720097, 37.671928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.988811, 35.325386, 37.686043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626874, 0.072757, -0.775716,
		0.762892, 0.144830, 0.630095,
		0.158191, -0.986778, 0.035284,
		43.036270, 35.029354, 37.696629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.019436, 35.288769, 37.124325>,  <42.925533, 35.720097, 37.671928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.019436, 35.288769, 37.124325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886246, 35.035168, 37.403511>,  <42.806332, 34.883007, 37.571022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.886246, 35.035168, 37.403511>,  <43.019436, 35.288769, 37.124325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.886246, 35.035168, 37.403511> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264440, -0.647718, -0.714515,
		0.905095, -0.422490, 0.048020,
		-0.332979, -0.634006, 0.697970,
		42.786350, 34.844967, 37.612904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.243469, 34.611210, 36.997429>,  <43.019436, 35.288769, 37.124325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.243469, 34.611210, 36.997429> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930183, 34.542042, 37.236317>,  <42.742210, 34.500542, 37.379650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.930183, 34.542042, 37.236317>,  <43.243469, 34.611210, 36.997429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.930183, 34.542042, 37.236317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347641, -0.674567, -0.651233,
		0.515478, -0.717674, 0.468217,
		-0.783217, -0.172925, 0.597217,
		42.695217, 34.490166, 37.415482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.759396, 34.441425, 36.580341>,  <43.243469, 34.611210, 36.997429>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.759396, 34.441425, 36.580341> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912991, 34.235058, 36.274040>,  <44.005146, 34.111237, 36.090260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.912991, 34.235058, 36.274040>,  <43.759396, 34.441425, 36.580341>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.912991, 34.235058, 36.274040> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213044, -0.856460, 0.470201,
		-0.898425, -0.017411, -0.438782,
		0.383986, -0.515920, -0.765756,
		44.028187, 34.080280, 36.044315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.224369, 34.088093, 36.390541>,  <43.759396, 34.441425, 36.580341>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.224369, 34.088093, 36.390541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557133, 33.897560, 36.276676>,  <43.756790, 33.783241, 36.208355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.557133, 33.897560, 36.276676>,  <43.224369, 34.088093, 36.390541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.557133, 33.897560, 36.276676> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232147, -0.764694, 0.601124,
		-0.504014, -0.433998, -0.746736,
		0.831912, -0.476328, -0.284665,
		43.806705, 33.754662, 36.191277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.015892, 33.462509, 36.066635>,  <43.224369, 34.088093, 36.390541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.015892, 33.462509, 36.066635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394379, 33.396912, 36.178196>,  <43.621471, 33.357552, 36.245132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.394379, 33.396912, 36.178196>,  <43.015892, 33.462509, 36.066635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.394379, 33.396912, 36.178196> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268941, -0.877881, 0.396228,
		0.179862, -0.449924, -0.874767,
		0.946214, -0.163994, 0.278901,
		43.678242, 33.347713, 36.261868>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.052734, 32.738285, 35.910667>,  <43.015892, 33.462509, 36.066635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.052734, 32.738285, 35.910667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363621, 32.816463, 36.149914>,  <43.550152, 32.863373, 36.293461>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.363621, 32.816463, 36.149914>,  <43.052734, 32.738285, 35.910667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.363621, 32.816463, 36.149914> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190701, -0.832670, 0.519898,
		0.599645, -0.518133, -0.609889,
		0.777212, 0.195448, 0.598115,
		43.596783, 32.875099, 36.329350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.449379, 32.108601, 35.919891>,  <43.052734, 32.738285, 35.910667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.449379, 32.108601, 35.919891> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566223, 32.307697, 36.246555>,  <43.636330, 32.427155, 36.442554>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.566223, 32.307697, 36.246555>,  <43.449379, 32.108601, 35.919891>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.566223, 32.307697, 36.246555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025027, -0.849630, 0.526785,
		0.956057, -0.174319, -0.235730,
		0.292112, 0.497737, 0.816657,
		43.653858, 32.457020, 36.491554>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.022106, 31.683413, 36.177689>,  <43.449379, 32.108601, 35.919891>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.022106, 31.683413, 36.177689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840336, 31.891634, 36.466831>,  <43.731274, 32.016567, 36.640316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.840336, 31.891634, 36.466831>,  <44.022106, 31.683413, 36.177689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.840336, 31.891634, 36.466831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158378, -0.845768, 0.509503,
		0.876592, 0.117048, 0.466784,
		-0.454427, 0.520555, 0.722855,
		43.704006, 32.047802, 36.683689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.344181, 31.478168, 36.815811>,  <44.022106, 31.683413, 36.177689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.344181, 31.478168, 36.815811> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995056, 31.643164, 36.920162>,  <43.785583, 31.742161, 36.982773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.995056, 31.643164, 36.920162>,  <44.344181, 31.478168, 36.815811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.995056, 31.643164, 36.920162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233578, -0.822358, 0.518814,
		0.428537, 0.391891, 0.814111,
		-0.872810, 0.412490, 0.260874,
		43.733212, 31.766911, 36.998425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.346012, 31.349449, 37.537868>,  <44.344181, 31.478168, 36.815811>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.346012, 31.349449, 37.537868> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967857, 31.439318, 37.443401>,  <43.740967, 31.493238, 37.386723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.967857, 31.439318, 37.443401>,  <44.346012, 31.349449, 37.537868>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.967857, 31.439318, 37.443401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308796, -0.849308, 0.428160,
		-0.104381, 0.477701, 0.872299,
		-0.945383, 0.224670, -0.236164,
		43.684242, 31.506720, 37.372551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.980797, 31.331415, 38.154335>,  <44.346012, 31.349449, 37.537868>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.980797, 31.331415, 38.154335> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660675, 31.305122, 37.915943>,  <43.468601, 31.289347, 37.772907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.660675, 31.305122, 37.915943>,  <43.980797, 31.331415, 38.154335>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.660675, 31.305122, 37.915943> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348285, -0.758131, 0.551303,
		-0.488071, 0.648780, 0.583841,
		-0.800303, -0.065732, -0.595982,
		43.420586, 31.285402, 37.737148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.329227, 31.271051, 38.586758>,  <43.980797, 31.331415, 38.154335>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.329227, 31.271051, 38.586758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215847, 31.115961, 38.235912>,  <43.147820, 31.022907, 38.025406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.215847, 31.115961, 38.235912>,  <43.329227, 31.271051, 38.586758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.215847, 31.115961, 38.235912> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.366557, -0.801367, 0.472701,
		-0.886167, 0.455499, 0.085025,
		-0.283451, -0.387725, -0.877111,
		43.130814, 30.999643, 37.972778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.679790, 31.034985, 38.737064>,  <43.329227, 31.271051, 38.586758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.679790, 31.034985, 38.737064> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826672, 30.844742, 38.417324>,  <42.914799, 30.730597, 38.225479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.826672, 30.844742, 38.417324>,  <42.679790, 31.034985, 38.737064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.826672, 30.844742, 38.417324> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248525, -0.878309, 0.408422,
		-0.896324, 0.048684, -0.440720,
		0.367204, -0.475608, -0.799348,
		42.936832, 30.702059, 38.177521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.143429, 30.590195, 38.471069>,  <42.679790, 31.034985, 38.737064>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.143429, 30.590195, 38.471069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464851, 30.431000, 38.294029>,  <42.657707, 30.335484, 38.187805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.464851, 30.431000, 38.294029>,  <42.143429, 30.590195, 38.471069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.464851, 30.431000, 38.294029> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272393, -0.907038, 0.321069,
		-0.529240, -0.137436, -0.837267,
		0.803559, -0.397988, -0.442604,
		42.705917, 30.311604, 38.161247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921055, 30.001135, 38.274078>,  <42.143429, 30.590195, 38.471069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921055, 30.001135, 38.274078> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317104, 29.945074, 38.275414>,  <42.554733, 29.911438, 38.276215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317104, 29.945074, 38.275414>,  <41.921055, 30.001135, 38.274078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317104, 29.945074, 38.275414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132832, -0.930268, 0.341991,
		-0.044823, -0.339057, -0.939698,
		0.990125, -0.140151, 0.003340,
		42.614143, 29.903028, 38.276417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.033043, 29.270826, 38.076496>,  <41.921055, 30.001135, 38.274078>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.033043, 29.270826, 38.076496> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399048, 29.360458, 38.210682>,  <42.618652, 29.414238, 38.291195>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.399048, 29.360458, 38.210682>,  <42.033043, 29.270826, 38.076496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.399048, 29.360458, 38.210682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190008, -0.972921, 0.131610,
		0.355873, -0.056684, -0.932814,
		0.915014, 0.224078, 0.335466,
		42.673553, 29.427681, 38.311321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.495293, 28.832417, 37.713501>,  <42.033043, 29.270826, 38.076496>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.495293, 28.832417, 37.713501> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658554, 28.928574, 38.065777>,  <42.756512, 28.986267, 38.277142>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.658554, 28.928574, 38.065777>,  <42.495293, 28.832417, 37.713501>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.658554, 28.928574, 38.065777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.110135, -0.970628, 0.213899,
		0.906245, 0.009692, -0.422642,
		0.408154, 0.240392, 0.880694,
		42.781002, 29.000690, 38.329987>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.996181, 28.448233, 37.654224>,  <42.495293, 28.832417, 37.713501>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.996181, 28.448233, 37.654224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974148, 28.557642, 38.038338>,  <42.960926, 28.623287, 38.268806>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.974148, 28.557642, 38.038338>,  <42.996181, 28.448233, 37.654224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.974148, 28.557642, 38.038338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094358, -0.958868, 0.267709,
		0.994013, -0.075864, 0.078628,
		-0.055084, 0.273526, 0.960286,
		42.957623, 28.639700, 38.326424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.512291, 27.987108, 38.047760>,  <42.996181, 28.448233, 37.654224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.512291, 27.987108, 38.047760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255493, 28.132641, 38.317711>,  <43.101414, 28.219961, 38.479683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.255493, 28.132641, 38.317711>,  <43.512291, 27.987108, 38.047760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255493, 28.132641, 38.317711> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241737, -0.931392, 0.272161,
		0.727600, 0.011583, 0.685904,
		-0.641998, 0.363833, 0.674881,
		43.062893, 28.241791, 38.520176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.656475, 27.573606, 38.582832>,  <43.512291, 27.987108, 38.047760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.656475, 27.573606, 38.582832> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301727, 27.738338, 38.666603>,  <43.088879, 27.837177, 38.716866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.301727, 27.738338, 38.666603>,  <43.656475, 27.573606, 38.582832>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.301727, 27.738338, 38.666603> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.347134, -0.893085, 0.286178,
		0.304896, 0.181102, 0.935008,
		-0.886869, 0.411828, 0.209431,
		43.035667, 27.861887, 38.729431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.546127, 27.359659, 39.318497>,  <43.656475, 27.573606, 38.582832>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.546127, 27.359659, 39.318497> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187733, 27.460258, 39.172092>,  <42.972698, 27.520618, 39.084251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.187733, 27.460258, 39.172092>,  <43.546127, 27.359659, 39.318497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.187733, 27.460258, 39.172092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.362173, -0.890769, 0.274519,
		-0.256987, 0.378523, 0.889201,
		-0.895985, 0.251497, -0.366007,
		42.918938, 27.535707, 39.062290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.058472, 27.001732, 39.713844>,  <43.546127, 27.359659, 39.318497>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.058472, 27.001732, 39.713844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861301, 27.083389, 39.375530>,  <42.743000, 27.132383, 39.172543>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.861301, 27.083389, 39.375530>,  <43.058472, 27.001732, 39.713844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.861301, 27.083389, 39.375530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506464, -0.857745, 0.088135,
		-0.707477, 0.471803, 0.526192,
		-0.492922, 0.204144, -0.845786,
		42.713425, 27.144632, 39.121796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.456333, 26.627115, 39.720467>,  <43.058472, 27.001732, 39.713844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.456333, 26.627115, 39.720467> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434067, 26.735353, 39.336033>,  <42.420708, 26.800297, 39.105373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.434067, 26.735353, 39.336033>,  <42.456333, 26.627115, 39.720467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.434067, 26.735353, 39.336033> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501433, -0.839959, -0.207448,
		-0.863404, 0.470369, 0.182446,
		-0.055670, 0.270596, -0.961082,
		42.417366, 26.816532, 39.047707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.764229, 26.654072, 39.515240>,  <42.456333, 26.627115, 39.720467>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.764229, 26.654072, 39.515240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015537, 26.567833, 39.216228>,  <42.166321, 26.516090, 39.036823>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.015537, 26.567833, 39.216228>,  <41.764229, 26.654072, 39.515240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.015537, 26.567833, 39.216228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.390105, -0.918617, -0.062931,
		-0.673121, 0.331151, -0.661247,
		0.628273, -0.215596, -0.747524,
		42.204018, 26.503155, 38.991970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.655399, 26.030687, 39.268520>,  <41.764229, 26.654072, 39.515240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.655399, 26.030687, 39.268520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978092, 25.999187, 39.034260>,  <42.171707, 25.980288, 38.893703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.978092, 25.999187, 39.034260>,  <41.655399, 26.030687, 39.268520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.978092, 25.999187, 39.034260> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202210, -0.968038, -0.148371,
		-0.555249, 0.238120, -0.796867,
		0.806728, -0.078752, -0.585652,
		42.220112, 25.975561, 38.858562>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.382679, 25.583675, 38.763397>,  <41.655399, 26.030687, 39.268520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.382679, 25.583675, 38.763397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780708, 25.548218, 38.745621>,  <42.019524, 25.526943, 38.734955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.780708, 25.548218, 38.745621>,  <41.382679, 25.583675, 38.763397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.780708, 25.548218, 38.745621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094594, -0.983022, -0.157225,
		-0.029753, 0.160655, -0.986562,
		0.995071, -0.088645, -0.044445,
		42.079231, 25.521624, 38.732288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.527519, 25.220140, 38.188892>,  <41.382679, 25.583675, 38.763397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.527519, 25.220140, 38.188892> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803658, 25.181421, 38.475681>,  <41.969341, 25.158190, 38.647755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.803658, 25.181421, 38.475681>,  <41.527519, 25.220140, 38.188892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.803658, 25.181421, 38.475681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026755, -0.986915, -0.159007,
		0.722982, 0.128954, -0.678726,
		0.690349, -0.096800, 0.716971,
		42.010761, 25.152382, 38.690773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.961231, 25.189093, 37.630283>,  <41.527519, 25.220140, 38.188892>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.961231, 25.189093, 37.630283> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200504, 24.871086, 37.670540>,  <42.344067, 24.680283, 37.694695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.200504, 24.871086, 37.670540>,  <41.961231, 25.189093, 37.630283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.200504, 24.871086, 37.670540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.197847, 0.024814, -0.979919,
		0.776553, 0.606081, 0.172134,
		0.598182, -0.795016, 0.100642,
		42.379959, 24.632582, 37.700733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.608154, 25.384405, 37.335476>,  <41.961231, 25.189093, 37.630283>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.608154, 25.384405, 37.335476> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556149, 24.987988, 37.347630>,  <42.524944, 24.750137, 37.354923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.556149, 24.987988, 37.347630>,  <42.608154, 25.384405, 37.335476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.556149, 24.987988, 37.347630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.195882, -0.055717, -0.979043,
		0.971971, -0.121337, 0.201372,
		-0.130014, -0.991046, 0.030387,
		42.517143, 24.690674, 37.356747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.167797, 24.797300, 37.100758>,  <42.608154, 25.384405, 37.335476>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.167797, 24.797300, 37.100758> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776634, 24.750311, 37.031593>,  <42.541935, 24.722116, 36.990093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.776634, 24.750311, 37.031593>,  <43.167797, 24.797300, 37.100758>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.776634, 24.750311, 37.031593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143824, 0.222161, -0.964344,
		0.151697, -0.967908, -0.200357,
		-0.977907, -0.117472, -0.172909,
		42.483261, 24.715069, 36.979721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.896557, 25.356674, 36.584244>,  <43.167797, 24.797300, 37.100758>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.896557, 25.356674, 36.584244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123955, 25.207991, 36.290672>,  <43.260395, 25.118780, 36.114529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.123955, 25.207991, 36.290672>,  <42.896557, 25.356674, 36.584244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.123955, 25.207991, 36.290672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.121031, 0.920188, -0.372297,
		0.813736, 0.122820, 0.568109,
		0.568493, -0.371711, -0.733925,
		43.294502, 25.096478, 36.070496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.197670, 25.925085, 36.395634>,  <42.896557, 25.356674, 36.584244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.197670, 25.925085, 36.395634> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237114, 25.676477, 36.084766>,  <43.260780, 25.527313, 35.898247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.237114, 25.676477, 36.084766>,  <43.197670, 25.925085, 36.395634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.237114, 25.676477, 36.084766> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113358, 0.782905, -0.611727,
		0.988649, -0.027776, 0.147655,
		0.098609, -0.621521, -0.777167,
		43.266697, 25.490021, 35.851616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.914391, 25.983816, 36.059734>,  <43.197670, 25.925085, 36.395634>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.914391, 25.983816, 36.059734> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602753, 25.897081, 35.824448>,  <43.415771, 25.845041, 35.683277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.602753, 25.897081, 35.824448>,  <43.914391, 25.983816, 36.059734>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.602753, 25.897081, 35.824448> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048009, 0.914887, -0.400846,
		0.625070, -0.340535, -0.702370,
		-0.779091, -0.216837, -0.588217,
		43.369026, 25.832029, 35.647984>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094818, 26.161222, 35.361790>,  <43.914391, 25.983816, 36.059734>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094818, 26.161222, 35.361790> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694927, 26.163904, 35.370674>,  <43.454990, 26.165512, 35.376007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.694927, 26.163904, 35.370674>,  <44.094818, 26.161222, 35.361790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.694927, 26.163904, 35.370674> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.003996, 0.893323, -0.449397,
		-0.022855, -0.449365, -0.893056,
		-0.999731, 0.006702, 0.022213,
		43.395008, 26.165915, 35.377338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.869667, 26.124949, 34.739124>,  <44.094818, 26.161222, 35.361790>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.869667, 26.124949, 34.739124> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559055, 26.311483, 34.908611>,  <43.372688, 26.423405, 35.010303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.559055, 26.311483, 34.908611>,  <43.869667, 26.124949, 34.739124>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.559055, 26.311483, 34.908611> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194053, 0.816793, -0.543316,
		-0.599461, -0.339674, -0.724754,
		-0.776525, 0.466337, 0.423721,
		43.326099, 26.451384, 35.035728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.518341, 26.484409, 34.194637>,  <43.869667, 26.124949, 34.739124>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.518341, 26.484409, 34.194637> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373669, 26.669510, 34.518375>,  <43.286865, 26.780571, 34.712620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.373669, 26.669510, 34.518375>,  <43.518341, 26.484409, 34.194637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373669, 26.669510, 34.518375> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061324, 0.878048, -0.474628,
		-0.930282, -0.122033, -0.345952,
		-0.361683, 0.462753, 0.809349,
		43.265163, 26.808336, 34.761181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.905235, 26.921890, 33.902950>,  <43.518341, 26.484409, 34.194637>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.905235, 26.921890, 33.902950> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001663, 27.070589, 34.261543>,  <43.059521, 27.159809, 34.476700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.001663, 27.070589, 34.261543>,  <42.905235, 26.921890, 33.902950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.001663, 27.070589, 34.261543> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.075515, 0.928114, -0.364558,
		-0.967565, 0.020186, 0.251813,
		0.241070, 0.371749, 0.896486,
		43.073986, 27.182114, 34.530491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.459415, 27.614317, 33.935001>,  <42.905235, 26.921890, 33.902950>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.459415, 27.614317, 33.935001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774902, 27.626177, 34.180618>,  <42.964195, 27.633293, 34.327988>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.774902, 27.626177, 34.180618>,  <42.459415, 27.614317, 33.935001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.774902, 27.626177, 34.180618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040048, 0.994237, -0.099448,
		-0.613449, 0.103028, 0.782985,
		0.788718, 0.029650, 0.614040,
		43.011517, 27.635071, 34.364830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.443550, 28.264418, 34.337246>,  <42.459415, 27.614317, 33.935001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.443550, 28.264418, 34.337246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819195, 28.149742, 34.413021>,  <43.044582, 28.080936, 34.458485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.819195, 28.149742, 34.413021>,  <42.443550, 28.264418, 34.337246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819195, 28.149742, 34.413021> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289108, 0.957173, 0.015354,
		-0.185724, 0.040348, 0.981773,
		0.939107, -0.286690, 0.189435,
		43.100925, 28.063734, 34.469852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.670441, 28.771242, 34.789082>,  <42.443550, 28.264418, 34.337246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.670441, 28.771242, 34.789082> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000889, 28.613155, 34.628418>,  <43.199158, 28.518303, 34.532021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.000889, 28.613155, 34.628418>,  <42.670441, 28.771242, 34.789082>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.000889, 28.613155, 34.628418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.441487, 0.896905, 0.025518,
		0.350168, -0.198410, 0.915432,
		0.826118, -0.395216, -0.401663,
		43.248726, 28.494591, 34.507919>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.248428, 28.769508, 35.279846>,  <42.670441, 28.771242, 34.789082>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.248428, 28.769508, 35.279846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389389, 28.787062, 34.905918>,  <43.473965, 28.797594, 34.681561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.389389, 28.787062, 34.905918>,  <43.248428, 28.769508, 35.279846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.389389, 28.787062, 34.905918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431112, 0.878986, 0.203778,
		0.830637, -0.474824, 0.290836,
		0.352400, 0.043883, -0.934820,
		43.495110, 28.800226, 34.625473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.939022, 29.016876, 35.315510>,  <43.248428, 28.769508, 35.279846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.939022, 29.016876, 35.315510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860001, 29.093174, 34.930889>,  <43.812588, 29.138952, 34.700115>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.860001, 29.093174, 34.930889>,  <43.939022, 29.016876, 35.315510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.860001, 29.093174, 34.930889> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.531285, 0.845171, 0.058500,
		0.823837, -0.499303, -0.268308,
		-0.197557, 0.190742, -0.961555,
		43.800732, 29.150396, 34.642422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.643543, 29.134478, 34.971996>,  <43.939022, 29.016876, 35.315510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.643543, 29.134478, 34.971996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336433, 29.288248, 34.766964>,  <44.152168, 29.380510, 34.643944>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.336433, 29.288248, 34.766964>,  <44.643543, 29.134478, 34.971996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.336433, 29.288248, 34.766964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500936, 0.858952, -0.106140,
		0.399476, -0.338259, -0.852056,
		-0.767778, 0.384425, -0.512576,
		44.106102, 29.403576, 34.613190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.044109, 29.445068, 34.358337>,  <44.643543, 29.134478, 34.971996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.044109, 29.445068, 34.358337> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679317, 29.603584, 34.400761>,  <44.460442, 29.698694, 34.426216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.679317, 29.603584, 34.400761>,  <45.044109, 29.445068, 34.358337>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.679317, 29.603584, 34.400761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.389906, 0.917692, -0.076250,
		-0.127545, -0.028187, -0.991432,
		-0.911979, 0.396291, 0.106057,
		44.405724, 29.722471, 34.432579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.989250, 29.995111, 33.863773>,  <45.044109, 29.445068, 34.358337>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.989250, 29.995111, 33.863773> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695923, 30.058981, 34.128120>,  <44.519924, 30.097301, 34.286728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.695923, 30.058981, 34.128120>,  <44.989250, 29.995111, 33.863773>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.695923, 30.058981, 34.128120> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242700, 0.969467, 0.035077,
		-0.635087, 0.186115, -0.749684,
		-0.733322, 0.159672, 0.660866,
		44.475925, 30.106882, 34.326382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.685436, 30.565891, 33.678135>,  <44.989250, 29.995111, 33.863773>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.685436, 30.565891, 33.678135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553928, 30.569738, 34.055878>,  <44.475021, 30.572046, 34.282524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.553928, 30.569738, 34.055878>,  <44.685436, 30.565891, 33.678135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.553928, 30.569738, 34.055878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118076, 0.992521, 0.030998,
		-0.936999, 0.121697, -0.327448,
		-0.328771, 0.009619, 0.944361,
		44.455296, 30.572624, 34.339188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.094002, 30.993397, 33.654247>,  <44.685436, 30.565891, 33.678135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.094002, 30.993397, 33.654247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245823, 30.960297, 34.022831>,  <44.336918, 30.940437, 34.243980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.245823, 30.960297, 34.022831>,  <44.094002, 30.993397, 33.654247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.245823, 30.960297, 34.022831> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092016, 0.994430, 0.051400,
		-0.920582, 0.065280, 0.385055,
		0.379555, -0.082749, 0.921461,
		44.359688, 30.935472, 34.299271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888058, 31.531265, 34.101589>,  <44.094002, 30.993397, 33.654247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888058, 31.531265, 34.101589> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183872, 31.397156, 34.335060>,  <44.361362, 31.316690, 34.475143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.183872, 31.397156, 34.335060>,  <43.888058, 31.531265, 34.101589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.183872, 31.397156, 34.335060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358027, 0.930218, 0.080698,
		-0.570002, 0.149292, 0.807966,
		0.739537, -0.335272, 0.583677,
		44.405735, 31.296574, 34.510162>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.946995, 32.041145, 34.643822>,  <43.888058, 31.531265, 34.101589>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.946995, 32.041145, 34.643822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308372, 31.869799, 34.636883>,  <44.525200, 31.766991, 34.632721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.308372, 31.869799, 34.636883>,  <43.946995, 32.041145, 34.643822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308372, 31.869799, 34.636883> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414706, 0.883462, -0.217979,
		0.108697, 0.189738, 0.975799,
		0.903440, -0.428363, -0.017344,
		44.579403, 31.741289, 34.631680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.278873, 32.378197, 35.191048>,  <43.946995, 32.041145, 34.643822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.278873, 32.378197, 35.191048> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580292, 32.230026, 34.973812>,  <44.761143, 32.141125, 34.843472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.580292, 32.230026, 34.973812>,  <44.278873, 32.378197, 35.191048>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.580292, 32.230026, 34.973812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.488158, 0.868619, 0.084862,
		0.440305, -0.329063, 0.835373,
		0.753547, -0.370429, -0.543093,
		44.806355, 32.118896, 34.810883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.876797, 32.508926, 35.551308>,  <44.278873, 32.378197, 35.191048>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.876797, 32.508926, 35.551308> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002617, 32.480785, 35.172657>,  <45.078110, 32.463902, 34.945465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.002617, 32.480785, 35.172657>,  <44.876797, 32.508926, 35.551308>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.002617, 32.480785, 35.172657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672752, 0.720065, 0.170033,
		0.669674, -0.690332, 0.273825,
		0.314551, -0.070350, -0.946630,
		45.096981, 32.459682, 34.888668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.491524, 32.518646, 35.658146>,  <44.876797, 32.508926, 35.551308>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.491524, 32.518646, 35.658146> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476204, 32.642490, 35.278111>,  <45.467010, 32.716797, 35.050087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.476204, 32.642490, 35.278111>,  <45.491524, 32.518646, 35.658146>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.476204, 32.642490, 35.278111> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410128, 0.871887, 0.267595,
		0.911223, -0.379410, -0.160376,
		-0.038301, 0.309614, -0.950091,
		45.464714, 32.735374, 34.993084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.076488, 33.000992, 35.588348>,  <45.491524, 32.518646, 35.658146>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.076488, 33.000992, 35.588348> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822330, 33.065052, 35.286190>,  <45.669834, 33.103489, 35.104893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.822330, 33.065052, 35.286190>,  <46.076488, 33.000992, 35.588348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.822330, 33.065052, 35.286190> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.208573, 0.977490, 0.031792,
		0.743486, -0.137355, -0.654494,
		-0.635394, 0.160147, -0.755398,
		45.631714, 33.113094, 35.059570>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.362469, 33.402107, 35.014629>,  <46.076488, 33.000992, 35.588348>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.362469, 33.402107, 35.014629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972317, 33.488834, 34.998489>,  <45.738228, 33.540871, 34.988808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.972317, 33.488834, 34.998489>,  <46.362469, 33.402107, 35.014629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.972317, 33.488834, 34.998489> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.212917, 0.973456, 0.083961,
		0.057479, 0.073303, -0.995652,
		-0.975378, 0.216818, -0.040346,
		45.679703, 33.553879, 34.986385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.854565, 33.576694, 34.451889>,  <46.362469, 33.402107, 35.014629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.854565, 33.576694, 34.451889> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928978, 33.920666, 34.261768>,  <46.973625, 34.127048, 34.147694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.928978, 33.920666, 34.261768>,  <46.854565, 33.576694, 34.451889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.928978, 33.920666, 34.261768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.553432, 0.308003, 0.773852,
		0.811853, -0.407008, -0.418615,
		0.186029, 0.859930, -0.475305,
		46.984787, 34.178646, 34.119179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.514019, 33.823067, 34.737263>,  <46.854565, 33.576694, 34.451889>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.514019, 33.823067, 34.737263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361343, 34.157604, 34.579865>,  <47.269737, 34.358326, 34.485424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.361343, 34.157604, 34.579865>,  <47.514019, 33.823067, 34.737263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.361343, 34.157604, 34.579865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510747, 0.545670, 0.664366,
		0.770360, 0.052601, -0.635436,
		-0.381685, 0.836348, -0.393496,
		47.246838, 34.408508, 34.461815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.029442, 34.321323, 34.672165>,  <47.514019, 33.823067, 34.737263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.029442, 34.321323, 34.672165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679825, 34.472382, 34.794437>,  <47.470055, 34.563015, 34.867802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.679825, 34.472382, 34.794437>,  <48.029442, 34.321323, 34.672165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.679825, 34.472382, 34.794437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.452597, 0.404072, 0.794910,
		0.176672, 0.833134, -0.524095,
		-0.874038, 0.377642, 0.305685,
		47.417614, 34.585674, 34.886143>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<48.012222, 35.084431, 34.797890>,  <48.029442, 34.321323, 34.672165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<48.012222, 35.084431, 34.797890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719799, 34.924843, 35.019295>,  <47.544346, 34.829090, 35.152138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.719799, 34.924843, 35.019295>,  <48.012222, 35.084431, 34.797890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.719799, 34.924843, 35.019295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318007, 0.518501, 0.793743,
		-0.603674, 0.756295, -0.252182,
		-0.731061, -0.398966, 0.553512,
		47.500481, 34.805153, 35.185349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.162228, 37.911343, 45.535919> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795746, 37.832623, 45.396294>,  <32.575859, 37.785389, 45.312519>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.795746, 37.832623, 45.396294>,  <33.162228, 37.911343, 45.535919>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.795746, 37.832623, 45.396294> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399373, -0.377048, -0.835665,
		0.032845, -0.905044, 0.424048,
		-0.916200, -0.196801, -0.349066,
		32.520885, 37.773582, 45.291573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170223, 37.223949, 45.238789>,  <33.162228, 37.911343, 45.535919>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170223, 37.223949, 45.238789> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849960, 37.397781, 45.073822>,  <32.657803, 37.502079, 44.974842>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.849960, 37.397781, 45.073822>,  <33.170223, 37.223949, 45.238789>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.849960, 37.397781, 45.073822> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219853, -0.427228, -0.877007,
		-0.557327, -0.792853, 0.246519,
		-0.800657, 0.434581, -0.412417,
		32.609764, 37.528156, 44.950096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.794704, 36.659954, 44.953434>,  <33.170223, 37.223949, 45.238789>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.794704, 36.659954, 44.953434> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.689007, 36.990269, 44.754131>,  <32.625587, 37.188457, 44.634552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.689007, 36.990269, 44.754131>,  <32.794704, 36.659954, 44.953434>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.689007, 36.990269, 44.754131> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.247258, -0.441347, -0.862598,
		-0.932222, -0.351135, -0.087558,
		-0.264245, 0.825782, -0.498255,
		32.609734, 37.238003, 44.604656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.490749, 36.431332, 44.416367>,  <32.794704, 36.659954, 44.953434>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.490749, 36.431332, 44.416367> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.552502, 36.804653, 44.286682>,  <32.589554, 37.028645, 44.208870>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.552502, 36.804653, 44.286682>,  <32.490749, 36.431332, 44.416367>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.552502, 36.804653, 44.286682> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.056242, -0.335915, -0.940212,
		-0.986410, 0.126915, -0.104349,
		0.154379, 0.933303, -0.324212,
		32.598816, 37.084644, 44.189419>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080048, 36.444939, 43.802299>,  <32.490749, 36.431332, 44.416367>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080048, 36.444939, 43.802299> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334324, 36.753304, 43.786346>,  <32.486889, 36.938324, 43.776775>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.334324, 36.753304, 43.786346>,  <32.080048, 36.444939, 43.802299>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.334324, 36.753304, 43.786346> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224290, -0.233885, -0.946040,
		-0.738644, 0.592442, -0.321586,
		0.635688, 0.770916, -0.039879,
		32.525032, 36.984577, 43.774384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.939978, 36.708900, 43.125137>,  <32.080048, 36.444939, 43.802299>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.939978, 36.708900, 43.125137> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294048, 36.850708, 43.245655>,  <32.506489, 36.935795, 43.317966>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.294048, 36.850708, 43.245655>,  <31.939978, 36.708900, 43.125137>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.294048, 36.850708, 43.245655> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385212, -0.195281, -0.901930,
		-0.260917, 0.914428, -0.309424,
		0.885175, 0.354522, 0.301297,
		32.559601, 36.957066, 43.336044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.245548, 37.062092, 42.569752>,  <31.939978, 36.708900, 43.125137>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.245548, 37.062092, 42.569752> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.565025, 36.984756, 42.797684>,  <32.756714, 36.938354, 42.934444>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.565025, 36.984756, 42.797684>,  <32.245548, 37.062092, 42.569752>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.565025, 36.984756, 42.797684> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550636, -0.147059, -0.821689,
		0.242662, 0.970049, -0.010997,
		0.798696, -0.193337, 0.569829,
		32.804634, 36.926754, 42.968632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.798496, 37.406498, 42.290691>,  <32.245548, 37.062092, 42.569752>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.798496, 37.406498, 42.290691> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973888, 37.103127, 42.483574>,  <33.079124, 36.921104, 42.599304>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.973888, 37.103127, 42.483574>,  <32.798496, 37.406498, 42.290691>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.973888, 37.103127, 42.483574> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686342, -0.063818, -0.724474,
		0.580232, 0.648629, 0.492555,
		0.438481, -0.758424, 0.482211,
		33.105434, 36.875599, 42.628239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.481472, 37.403160, 42.068714>,  <32.798496, 37.406498, 42.290691>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.481472, 37.403160, 42.068714> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.448406, 37.039276, 42.231491>,  <33.428566, 36.820946, 42.329159>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.448406, 37.039276, 42.231491>,  <33.481472, 37.403160, 42.068714>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.448406, 37.039276, 42.231491> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.791941, -0.307850, -0.527313,
		0.604976, 0.278683, 0.745882,
		-0.082666, -0.909706, 0.406942,
		33.423607, 36.766365, 42.353573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105789, 37.217617, 42.253815>,  <33.481472, 37.403160, 42.068714>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105789, 37.217617, 42.253815> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.912975, 36.869892, 42.210114>,  <33.797287, 36.661259, 42.183895>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.912975, 36.869892, 42.210114>,  <34.105789, 37.217617, 42.253815>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.912975, 36.869892, 42.210114> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821876, -0.405440, -0.400173,
		0.303581, -0.282688, 0.909904,
		-0.482036, -0.869313, -0.109250,
		33.768364, 36.609097, 42.177338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547035, 36.716888, 42.471252>,  <34.105789, 37.217617, 42.253815>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547035, 36.716888, 42.471252> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294643, 36.528046, 42.225006>,  <34.143208, 36.414742, 42.077259>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.294643, 36.528046, 42.225006>,  <34.547035, 36.716888, 42.471252>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.294643, 36.528046, 42.225006> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.765967, -0.253146, -0.590942,
		0.123145, -0.844413, 0.521345,
		-0.630976, -0.472104, -0.615619,
		34.105350, 36.386414, 42.040321>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.890114, 36.117767, 42.228020>,  <34.547035, 36.716888, 42.471252>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.890114, 36.117767, 42.228020> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611118, 36.135799, 41.941948>,  <34.443722, 36.146618, 41.770306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.611118, 36.135799, 41.941948>,  <34.890114, 36.117767, 42.228020>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.611118, 36.135799, 41.941948> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.672450, -0.303706, -0.674962,
		-0.247632, -0.951698, 0.181517,
		-0.697488, 0.045081, -0.715177,
		34.401871, 36.149323, 41.727394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.135311, 35.593510, 41.801380>,  <34.890114, 36.117767, 42.228020>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.135311, 35.593510, 41.801380> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870731, 35.778622, 41.565304>,  <34.711983, 35.889687, 41.423660>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.870731, 35.778622, 41.565304>,  <35.135311, 35.593510, 41.801380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.870731, 35.778622, 41.565304> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458618, -0.373074, -0.806527,
		-0.593427, -0.804147, 0.034530,
		-0.661448, 0.462778, -0.590188,
		34.672298, 35.917454, 41.388248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.165340, 35.221180, 41.267643>,  <35.135311, 35.593510, 41.801380>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.165340, 35.221180, 41.267643> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000599, 35.548771, 41.107815>,  <34.901752, 35.745327, 41.011917>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.000599, 35.548771, 41.107815>,  <35.165340, 35.221180, 41.267643>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.000599, 35.548771, 41.107815> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513433, -0.153699, -0.844253,
		-0.752837, -0.552860, -0.357188,
		-0.411854, 0.818977, -0.399567,
		34.877041, 35.794464, 40.987946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805164, 35.026894, 40.732574>,  <35.165340, 35.221180, 41.267643>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805164, 35.026894, 40.732574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.896786, 35.407364, 40.649826>,  <34.951759, 35.635647, 40.600178>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.896786, 35.407364, 40.649826>,  <34.805164, 35.026894, 40.732574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.896786, 35.407364, 40.649826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540451, -0.301022, -0.785683,
		-0.809596, 0.068165, -0.583016,
		0.229057, 0.951178, -0.206867,
		34.965504, 35.692719, 40.587765>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637787, 35.210968, 39.983936>,  <34.805164, 35.026894, 40.732574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637787, 35.210968, 39.983936> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900608, 35.490623, 40.096710>,  <35.058300, 35.658417, 40.164375>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.900608, 35.490623, 40.096710>,  <34.637787, 35.210968, 39.983936>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.900608, 35.490623, 40.096710> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557187, -0.198494, -0.806314,
		-0.507762, 0.686882, -0.519972,
		0.657054, 0.699137, 0.281934,
		35.097725, 35.700363, 40.181290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.844635, 35.597576, 39.401455>,  <34.637787, 35.210968, 39.983936>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.844635, 35.597576, 39.401455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139038, 35.703220, 39.650784>,  <35.315681, 35.766609, 39.800381>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.139038, 35.703220, 39.650784>,  <34.844635, 35.597576, 39.401455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.139038, 35.703220, 39.650784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638942, 0.033237, -0.768536,
		-0.223699, 0.963919, -0.144291,
		0.736011, 0.264114, 0.623323,
		35.359840, 35.782455, 39.837780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.256142, 36.048317, 38.965000>,  <34.844635, 35.597576, 39.401455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.256142, 36.048317, 38.965000> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520596, 35.970284, 39.254784>,  <35.679268, 35.923462, 39.428654>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.520596, 35.970284, 39.254784>,  <35.256142, 36.048317, 38.965000>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.520596, 35.970284, 39.254784> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732579, -0.040564, -0.679472,
		0.161944, 0.979946, 0.116099,
		0.661136, -0.195088, 0.724458,
		35.718937, 35.911758, 39.472122>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.779331, 36.603699, 38.956844>,  <35.256142, 36.048317, 38.965000>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.779331, 36.603699, 38.956844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926994, 36.265030, 39.110134>,  <36.015591, 36.061829, 39.202110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.926994, 36.265030, 39.110134>,  <35.779331, 36.603699, 38.956844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.926994, 36.265030, 39.110134> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.723136, 0.002663, -0.690701,
		0.583779, 0.532103, 0.613244,
		0.369157, -0.846676, 0.383228,
		36.037743, 36.011028, 39.225101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.367741, 36.811501, 39.102451>,  <35.779331, 36.603699, 38.956844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.367741, 36.811501, 39.102451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384762, 36.411861, 39.102718>,  <36.394974, 36.172077, 39.102879>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.384762, 36.411861, 39.102718>,  <36.367741, 36.811501, 39.102451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.384762, 36.411861, 39.102718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851179, 0.035908, -0.523646,
		0.523148, 0.022850, 0.851936,
		0.042557, -0.999094, 0.000664,
		36.397530, 36.112133, 39.102917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.014935, 36.624058, 39.336002>,  <36.367741, 36.811501, 39.102451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.014935, 36.624058, 39.336002> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900265, 36.311512, 39.114269>,  <36.831463, 36.123985, 38.981228>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.900265, 36.311512, 39.114269>,  <37.014935, 36.624058, 39.336002>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.900265, 36.311512, 39.114269> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.819399, 0.099826, -0.564465,
		0.496391, -0.616036, 0.611633,
		-0.286674, -0.781367, -0.554332,
		36.814262, 36.077103, 38.947971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.641716, 36.155205, 39.302410>,  <37.014935, 36.624058, 39.336002>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.641716, 36.155205, 39.302410> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406631, 36.051147, 38.995964>,  <37.265583, 35.988712, 38.812096>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.406631, 36.051147, 38.995964>,  <37.641716, 36.155205, 39.302410>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.406631, 36.051147, 38.995964> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.807709, -0.133681, -0.574226,
		0.046967, -0.956271, 0.288686,
		-0.587707, -0.260144, -0.766111,
		37.230320, 35.973103, 38.766132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999470, 35.848392, 39.955158>,  <37.641716, 36.155205, 39.302410>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999470, 35.848392, 39.955158> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341408, 35.977505, 39.792652>,  <38.546570, 36.054970, 39.695148>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.341408, 35.977505, 39.792652>,  <37.999470, 35.848392, 39.955158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.341408, 35.977505, 39.792652> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.100524, 0.665110, 0.739949,
		0.509049, -0.673383, 0.536120,
		0.854847, 0.322777, -0.406264,
		38.597862, 36.074337, 39.670773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.448956, 35.878632, 40.463100>,  <37.999470, 35.848392, 39.955158>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.448956, 35.878632, 40.463100> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595295, 36.131512, 40.189903>,  <38.683098, 36.283241, 40.025986>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.595295, 36.131512, 40.189903>,  <38.448956, 35.878632, 40.463100>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.595295, 36.131512, 40.189903> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.004623, 0.735091, 0.677952,
		0.930664, -0.244869, 0.271853,
		0.365846, 0.632203, -0.682991,
		38.705048, 36.321171, 39.985004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.998009, 36.231236, 40.873226>,  <38.448956, 35.878632, 40.463100>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.998009, 36.231236, 40.873226> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882763, 36.435760, 40.549362>,  <38.813614, 36.558475, 40.355045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.882763, 36.435760, 40.549362>,  <38.998009, 36.231236, 40.873226>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.882763, 36.435760, 40.549362> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060427, 0.834121, 0.548262,
		0.955688, 0.206886, -0.209424,
		-0.288113, 0.511313, -0.809660,
		38.796329, 36.589153, 40.306465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.320885, 36.873913, 40.772373>,  <38.998009, 36.231236, 40.873226>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.320885, 36.873913, 40.772373> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995697, 36.977173, 40.563591>,  <38.800583, 37.039131, 40.438320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.995697, 36.977173, 40.563591>,  <39.320885, 36.873913, 40.772373>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.995697, 36.977173, 40.563591> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229816, 0.681358, 0.694936,
		0.535039, 0.684915, -0.494595,
		-0.812969, 0.258152, -0.521957,
		38.751808, 37.054619, 40.407005>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.254272, 37.558338, 40.983585>,  <39.320885, 36.873913, 40.772373>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.254272, 37.558338, 40.983585> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905930, 37.515568, 40.791676>,  <38.696926, 37.489906, 40.676529>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.905930, 37.515568, 40.791676>,  <39.254272, 37.558338, 40.983585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.905930, 37.515568, 40.791676> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.398665, 0.724611, 0.562143,
		0.287540, 0.680813, -0.673658,
		-0.870854, -0.106926, -0.479770,
		38.644672, 37.483490, 40.647743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.995148, 38.169884, 40.728138>,  <39.254272, 37.558338, 40.983585>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.995148, 38.169884, 40.728138> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682617, 37.925556, 40.779404>,  <38.495098, 37.778961, 40.810165>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.682617, 37.925556, 40.779404>,  <38.995148, 38.169884, 40.728138>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682617, 37.925556, 40.779404> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323964, 0.572448, 0.753227,
		-0.533452, 0.546997, -0.645153,
		-0.781330, -0.610817, 0.128167,
		38.448219, 37.742310, 40.817852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.336792, 38.597572, 40.793457>,  <38.995148, 38.169884, 40.728138>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.336792, 38.597572, 40.793457> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252506, 38.236946, 40.944599>,  <38.201935, 38.020569, 41.035286>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.252506, 38.236946, 40.944599>,  <38.336792, 38.597572, 40.793457>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.252506, 38.236946, 40.944599> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585052, 0.425974, 0.690116,
		-0.783144, -0.075651, -0.617222,
		-0.210712, -0.901567, 0.377858,
		38.189293, 37.966476, 41.057957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.715595, 38.773571, 41.057110>,  <38.336792, 38.597572, 40.793457>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.715595, 38.773571, 41.057110> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815372, 38.423271, 41.222446>,  <37.875237, 38.213093, 41.321648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.815372, 38.423271, 41.222446>,  <37.715595, 38.773571, 41.057110>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.815372, 38.423271, 41.222446> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632629, 0.175798, 0.754239,
		-0.733185, -0.449628, -0.510170,
		0.249440, -0.875745, 0.413340,
		37.890205, 38.160549, 41.346447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.079556, 38.421844, 41.327751>,  <37.715595, 38.773571, 41.057110>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.079556, 38.421844, 41.327751> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364372, 38.241863, 41.543358>,  <37.535263, 38.133873, 41.672722>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.364372, 38.241863, 41.543358>,  <37.079556, 38.421844, 41.327751>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.364372, 38.241863, 41.543358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567158, 0.083976, 0.819317,
		-0.413921, -0.889094, -0.195402,
		0.712041, -0.449956, 0.539016,
		37.577984, 38.106876, 41.705063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.752514, 38.004467, 41.769066>,  <37.079556, 38.421844, 41.327751>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.752514, 38.004467, 41.769066> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099850, 38.008938, 41.967403>,  <37.308250, 38.011620, 42.086407>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099850, 38.008938, 41.967403>,  <36.752514, 38.004467, 41.769066>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099850, 38.008938, 41.967403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495156, 0.076857, 0.865398,
		-0.028441, -0.996980, 0.072270,
		0.868339, 0.011172, 0.495846,
		37.360352, 38.012291, 42.116158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.631596, 37.608032, 42.326630>,  <36.752514, 38.004467, 41.769066>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.631596, 37.608032, 42.326630> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975868, 37.785976, 42.425678>,  <37.182434, 37.892742, 42.485107>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.975868, 37.785976, 42.425678>,  <36.631596, 37.608032, 42.326630>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.975868, 37.785976, 42.425678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321210, 0.097094, 0.942018,
		0.395025, -0.890321, 0.226461,
		0.860686, 0.444862, 0.247625,
		37.234074, 37.919434, 42.499966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.012550, 37.185036, 42.813637>,  <36.631596, 37.608032, 42.326630>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.012550, 37.185036, 42.813637> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099365, 37.570713, 42.874588>,  <37.151455, 37.802120, 42.911160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.099365, 37.570713, 42.874588>,  <37.012550, 37.185036, 42.813637>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.099365, 37.570713, 42.874588> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.486736, -0.028412, 0.873087,
		0.846157, -0.263662, 0.463143,
		0.217041, 0.964197, 0.152375,
		37.164478, 37.859974, 42.920300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.209305, 37.272469, 43.489464>,  <37.012550, 37.185036, 42.813637>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.209305, 37.272469, 43.489464> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098873, 37.644577, 43.392826>,  <37.032612, 37.867844, 43.334843>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.098873, 37.644577, 43.392826>,  <37.209305, 37.272469, 43.489464>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.098873, 37.644577, 43.392826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.594393, 0.032274, 0.803527,
		0.755298, 0.365439, 0.544039,
		-0.276081, 0.930276, -0.241591,
		37.016048, 37.923660, 43.320351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.306889, 37.608738, 44.093826>,  <37.209305, 37.272469, 43.489464>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.306889, 37.608738, 44.093826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048946, 37.824558, 43.877289>,  <36.894180, 37.954048, 43.747368>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.048946, 37.824558, 43.877289>,  <37.306889, 37.608738, 44.093826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.048946, 37.824558, 43.877289> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632744, 0.020431, 0.774091,
		0.428719, 0.841707, 0.328221,
		-0.644852, 0.539547, -0.541345,
		36.855492, 37.986423, 43.714886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.051434, 38.012341, 44.571114>,  <37.306889, 37.608738, 44.093826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.051434, 38.012341, 44.571114> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792347, 38.060699, 44.270222>,  <36.636894, 38.089714, 44.089687>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.792347, 38.060699, 44.270222>,  <37.051434, 38.012341, 44.571114>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792347, 38.060699, 44.270222> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757630, 0.001960, 0.652681,
		0.080382, 0.992663, 0.090326,
		-0.647715, 0.120897, -0.752229,
		36.598034, 38.096970, 44.044552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.844433, 38.600742, 44.645763>,  <37.051434, 38.012341, 44.571114>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.844433, 38.600742, 44.645763> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553329, 38.419033, 44.440239>,  <36.378666, 38.310009, 44.316925>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.553329, 38.419033, 44.440239>,  <36.844433, 38.600742, 44.645763>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.553329, 38.419033, 44.440239> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684943, 0.443282, 0.578234,
		-0.034913, 0.772746, -0.633754,
		-0.727760, -0.454273, -0.513811,
		36.335003, 38.282753, 44.286095>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.303131, 39.078732, 44.561844>,  <36.844433, 38.600742, 44.645763>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.303131, 39.078732, 44.561844> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134842, 38.717258, 44.529961>,  <36.033871, 38.500374, 44.510830>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.134842, 38.717258, 44.529961>,  <36.303131, 39.078732, 44.561844>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.134842, 38.717258, 44.529961> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.810355, 0.334861, 0.480826,
		-0.407823, 0.266883, -0.873186,
		-0.420720, -0.903682, -0.079706,
		36.008625, 38.446156, 44.506050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.630829, 39.177757, 44.352524>,  <36.303131, 39.078732, 44.561844>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.630829, 39.177757, 44.352524> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612717, 38.805882, 44.498741>,  <35.601849, 38.582756, 44.586472>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.612717, 38.805882, 44.498741>,  <35.630829, 39.177757, 44.352524>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.612717, 38.805882, 44.498741> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.821126, 0.243042, 0.516413,
		-0.568948, -0.276774, -0.774399,
		-0.045282, -0.929692, 0.365545,
		35.599133, 38.526974, 44.608406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.761967, 38.864899, 44.345821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950634, 38.625477, 44.604820>,  <35.063835, 38.481823, 44.760220>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.950634, 38.625477, 44.604820>,  <34.761967, 38.864899, 44.345821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.950634, 38.625477, 44.604820> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.801803, 0.014433, 0.597414,
		-0.366931, -0.800952, -0.473115,
		0.471671, -0.598555, 0.647502,
		35.092136, 38.445911, 44.799072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.250225, 38.505054, 44.607010>,  <34.761967, 38.864899, 44.345821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.250225, 38.505054, 44.607010> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560051, 38.429390, 44.848431>,  <34.745945, 38.383991, 44.993282>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.560051, 38.429390, 44.848431>,  <34.250225, 38.505054, 44.607010>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.560051, 38.429390, 44.848431> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627258, -0.107169, 0.771403,
		-0.081235, -0.976081, -0.201660,
		0.774563, -0.189158, 0.603548,
		34.792419, 38.372643, 45.029495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.975899, 37.908016, 45.083702>,  <34.250225, 38.505054, 44.607010>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.975899, 37.908016, 45.083702> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282227, 38.109085, 45.244122>,  <34.466022, 38.229725, 45.340374>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.282227, 38.109085, 45.244122>,  <33.975899, 37.908016, 45.083702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.282227, 38.109085, 45.244122> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.515554, 0.107179, 0.850127,
		0.384352, -0.857807, 0.341235,
		0.765818, 0.502673, 0.401052,
		34.511971, 38.259888, 45.364437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.868839, 37.675743, 45.687275>,  <33.975899, 37.908016, 45.083702>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.868839, 37.675743, 45.687275> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124035, 37.973316, 45.766808>,  <34.277153, 38.151859, 45.814529>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.124035, 37.973316, 45.766808>,  <33.868839, 37.675743, 45.687275>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.124035, 37.973316, 45.766808> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.336961, 0.037527, 0.940770,
		0.692410, -0.667198, 0.274619,
		0.637986, 0.743935, 0.198835,
		34.315430, 38.196495, 45.826458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.454784, 37.424137, 46.220638>,  <33.868839, 37.675743, 45.687275>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.454784, 37.424137, 46.220638> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409801, 37.821457, 46.231243>,  <34.382812, 38.059849, 46.237606>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.409801, 37.821457, 46.231243>,  <34.454784, 37.424137, 46.220638>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.409801, 37.821457, 46.231243> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126472, -0.040769, 0.991132,
		0.985575, 0.108106, 0.130210,
		-0.112456, 0.993303, 0.026508,
		34.376064, 38.119450, 46.239197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.801216, 37.673122, 46.723675>,  <34.454784, 37.424137, 46.220638>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.801216, 37.673122, 46.723675> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549858, 37.981796, 46.684433>,  <34.399044, 38.167000, 46.660889>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.549858, 37.981796, 46.684433>,  <34.801216, 37.673122, 46.723675>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.549858, 37.981796, 46.684433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163005, -0.007308, 0.986598,
		0.760628, 0.635961, 0.130381,
		-0.628391, 0.771687, -0.098107,
		34.361340, 38.213303, 46.655003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.927071, 38.016712, 47.283337>,  <34.801216, 37.673122, 46.723675>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.927071, 38.016712, 47.283337> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582874, 38.192425, 47.180115>,  <34.376358, 38.297852, 47.118183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.582874, 38.192425, 47.180115>,  <34.927071, 38.016712, 47.283337>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.582874, 38.192425, 47.180115> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.273234, 0.029594, 0.961492,
		0.430003, 0.897862, 0.094562,
		-0.860489, 0.439282, -0.258052,
		34.324726, 38.324211, 47.102699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.818283, 38.549488, 47.773960>,  <34.927071, 38.016712, 47.283337>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.818283, 38.549488, 47.773960> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467339, 38.433762, 47.620842>,  <34.256771, 38.364326, 47.528969>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.467339, 38.433762, 47.620842>,  <34.818283, 38.549488, 47.773960>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.467339, 38.433762, 47.620842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.428057, 0.111462, 0.896852,
		-0.216808, 0.950722, -0.221636,
		-0.877361, -0.289317, -0.382797,
		34.204132, 38.346966, 47.506004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.354069, 39.045506, 47.991863>,  <34.818283, 38.549488, 47.773960>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.354069, 39.045506, 47.991863> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140724, 38.718136, 47.906342>,  <34.012718, 38.521713, 47.855030>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.140724, 38.718136, 47.906342>,  <34.354069, 39.045506, 47.991863>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.140724, 38.718136, 47.906342> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320508, -0.038378, 0.946468,
		-0.782815, 0.573335, -0.241842,
		-0.533362, -0.818422, -0.213801,
		33.980717, 38.472610, 47.842201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.740662, 39.147762, 48.473312>,  <34.354069, 39.045506, 47.991863>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.740662, 39.147762, 48.473312> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718605, 38.773304, 48.334412>,  <33.705372, 38.548630, 48.251072>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718605, 38.773304, 48.334412>,  <33.740662, 39.147762, 48.473312>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718605, 38.773304, 48.334412> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411171, -0.295637, 0.862286,
		-0.909889, 0.190324, -0.368617,
		-0.055137, -0.936149, -0.347253,
		33.702065, 38.492458, 48.230236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.998653, 38.933350, 48.314117>,  <33.740662, 39.147762, 48.473312>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.998653, 38.933350, 48.314117> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250175, 38.636627, 48.407352>,  <33.401089, 38.458595, 48.463291>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.250175, 38.636627, 48.407352>,  <32.998653, 38.933350, 48.314117>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.250175, 38.636627, 48.407352> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471323, -0.125211, 0.873027,
		-0.618433, -0.658822, -0.428363,
		0.628805, -0.741806, 0.233084,
		33.438816, 38.414085, 48.477276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.641827, 38.486362, 48.759171>,  <32.998653, 38.933350, 48.314117>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.641827, 38.486362, 48.759171> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017349, 38.354485, 48.799053>,  <33.242664, 38.275356, 48.822983>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.017349, 38.354485, 48.799053>,  <32.641827, 38.486362, 48.759171>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017349, 38.354485, 48.799053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223676, -0.363401, 0.904383,
		-0.261938, -0.871343, -0.414909,
		0.938806, -0.329697, 0.099710,
		33.298992, 38.255577, 48.828968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620575, 38.041355, 49.227612>,  <32.641827, 38.486362, 48.759171>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620575, 38.041355, 49.227612> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019115, 38.007500, 49.232162>,  <33.258240, 37.987186, 49.234894>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.019115, 38.007500, 49.232162>,  <32.620575, 38.041355, 49.227612>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019115, 38.007500, 49.232162> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.048291, -0.448462, 0.892497,
		-0.070433, -0.889786, -0.450911,
		0.996347, -0.084636, 0.011382,
		33.318020, 37.982109, 49.235577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.801952, 37.344002, 49.506477>,  <32.620575, 38.041355, 49.227612>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.801952, 37.344002, 49.506477> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122784, 37.578983, 49.549503>,  <33.315281, 37.719975, 49.575321>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.122784, 37.578983, 49.549503>,  <32.801952, 37.344002, 49.506477>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.122784, 37.578983, 49.549503> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085272, -0.290915, 0.952942,
		0.591105, -0.755158, -0.283429,
		0.802075, 0.587457, 0.107567,
		33.363407, 37.755219, 49.581772>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.340961, 36.944427, 49.726883>,  <32.801952, 37.344002, 49.506477>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.340961, 36.944427, 49.726883> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417137, 37.318478, 49.846397>,  <33.462841, 37.542908, 49.918106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.417137, 37.318478, 49.846397>,  <33.340961, 36.944427, 49.726883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417137, 37.318478, 49.846397> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029710, -0.309708, 0.950367,
		0.981249, -0.172110, -0.086764,
		0.190439, 0.935125, 0.298788,
		33.474270, 37.599014, 49.936035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.846653, 36.851330, 50.188923>,  <33.340961, 36.944427, 49.726883>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.846653, 36.851330, 50.188923> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727211, 37.219200, 50.290924>,  <33.655544, 37.439922, 50.352123>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.727211, 37.219200, 50.290924>,  <33.846653, 36.851330, 50.188923>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.727211, 37.219200, 50.290924> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093929, -0.237577, 0.966816,
		0.949743, 0.312648, -0.015443,
		-0.298604, 0.919678, 0.255004,
		33.637630, 37.495102, 50.367424>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.318913, 36.991512, 50.700661>,  <33.846653, 36.851330, 50.188923>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.318913, 36.991512, 50.700661> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989857, 37.214951, 50.743050>,  <33.792423, 37.349014, 50.768482>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.989857, 37.214951, 50.743050>,  <34.318913, 36.991512, 50.700661>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.989857, 37.214951, 50.743050> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020612, -0.215565, 0.976272,
		0.568189, 0.800936, 0.188846,
		-0.822640, 0.558599, 0.105972,
		33.743065, 37.382530, 50.774841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.280746, 37.180500, 51.343166>,  <34.318913, 36.991512, 50.700661>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.280746, 37.180500, 51.343166> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914406, 37.300674, 51.236618>,  <33.694599, 37.372780, 51.172688>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.914406, 37.300674, 51.236618>,  <34.280746, 37.180500, 51.343166>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.914406, 37.300674, 51.236618> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.285724, -0.021569, 0.958069,
		0.282089, 0.953559, 0.105595,
		-0.915853, 0.300432, -0.266371,
		33.639648, 37.390804, 51.156708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.146286, 37.674507, 51.902962>,  <34.280746, 37.180500, 51.343166>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.146286, 37.674507, 51.902962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803955, 37.541664, 51.744335>,  <33.598557, 37.461960, 51.649158>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.803955, 37.541664, 51.744335>,  <34.146286, 37.674507, 51.902962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.803955, 37.541664, 51.744335> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337466, -0.222553, 0.914651,
		-0.392020, 0.916611, 0.078392,
		-0.855825, -0.332107, -0.396570,
		33.547207, 37.442032, 51.625362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529091, 38.044357, 52.238503>,  <34.146286, 37.674507, 51.902962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529091, 38.044357, 52.238503> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.385864, 37.699905, 52.094143>,  <33.299927, 37.493237, 52.007526>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.385864, 37.699905, 52.094143>,  <33.529091, 38.044357, 52.238503>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385864, 37.699905, 52.094143> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.404647, -0.205222, 0.891148,
		-0.841455, 0.465130, -0.274969,
		-0.358070, -0.861126, -0.360898,
		33.278442, 37.441566, 51.985874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.874924, 38.000309, 52.484715>,  <33.529091, 38.044357, 52.238503>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.874924, 38.000309, 52.484715> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961479, 37.621696, 52.389000>,  <33.013412, 37.394531, 52.331570>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.961479, 37.621696, 52.389000>,  <32.874924, 38.000309, 52.484715>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.961479, 37.621696, 52.389000> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245466, -0.289967, 0.925022,
		-0.944946, -0.141426, -0.295086,
		0.216388, -0.946529, -0.239287,
		33.026394, 37.337738, 52.317215>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.315960, 37.806320, 52.945099>,  <32.874924, 38.000309, 52.484715>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.315960, 37.806320, 52.945099> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280949, 37.614380, 53.294289>,  <32.259941, 37.499218, 53.503803>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.280949, 37.614380, 53.294289>,  <32.315960, 37.806320, 52.945099>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.280949, 37.614380, 53.294289> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.893556, -0.425190, -0.144122,
		0.440337, 0.767437, 0.465988,
		-0.087529, -0.479848, 0.872974,
		32.254688, 37.470425, 53.556183>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.707230, 37.831249, 53.379101>,  <32.315960, 37.806320, 52.945099>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.707230, 37.831249, 53.379101> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.876900, 38.152176, 53.211121>,  <31.978701, 38.344734, 53.110332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.876900, 38.152176, 53.211121>,  <31.707230, 37.831249, 53.379101>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.876900, 38.152176, 53.211121> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599666, -0.596350, -0.533637,
		-0.678585, -0.025476, -0.734080,
		0.424174, 0.802320, -0.419951,
		32.004150, 38.392872, 53.085136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.550220, 37.820381, 52.701893>,  <31.707230, 37.831249, 53.379101>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.550220, 37.820381, 52.701893> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881027, 38.045204, 52.706455>,  <32.079514, 38.180099, 52.709194>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.881027, 38.045204, 52.706455>,  <31.550220, 37.820381, 52.701893>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.881027, 38.045204, 52.706455> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414437, -0.595847, -0.687901,
		-0.379845, 0.573634, -0.725715,
		0.827019, 0.562059, 0.011406,
		32.129131, 38.213821, 52.709877>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.870468, 38.092648, 52.539562>,  <31.550220, 37.820381, 52.701893>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.870468, 38.092648, 52.539562> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.478188, 38.170841, 52.537998>,  <30.242819, 38.217758, 52.537060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.478188, 38.170841, 52.537998>,  <30.870468, 38.092648, 52.539562>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.478188, 38.170841, 52.537998> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142146, -0.726583, -0.672214,
		-0.134248, -0.658684, 0.740347,
		-0.980700, 0.195481, -0.003913,
		30.183977, 38.229485, 52.536823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.552744, 37.519943, 52.632786>,  <30.870468, 38.092648, 52.539562>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.552744, 37.519943, 52.632786> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.279093, 37.747707, 52.450466>,  <30.114902, 37.884365, 52.341076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.279093, 37.747707, 52.450466>,  <30.552744, 37.519943, 52.632786>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.279093, 37.747707, 52.450466> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.091487, -0.686977, -0.720897,
		-0.723602, -0.451486, 0.522073,
		-0.684127, 0.569405, -0.455793,
		30.073854, 37.918530, 52.313728>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.128672, 37.021427, 52.361774>,  <30.552744, 37.519943, 52.632786>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.128672, 37.021427, 52.361774> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.100592, 37.359921, 52.150505>,  <30.083744, 37.563015, 52.023743>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.100592, 37.359921, 52.150505>,  <30.128672, 37.021427, 52.361774>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.100592, 37.359921, 52.150505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058542, -0.532058, -0.844682,
		-0.995813, -0.028378, 0.086892,
		-0.070202, 0.846232, -0.528169,
		30.079531, 37.613789, 51.992054>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.677057, 36.882599, 51.756599>,  <30.128672, 37.021427, 52.361774>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.677057, 36.882599, 51.756599> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885313, 37.208767, 51.655392>,  <30.010267, 37.404469, 51.594669>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.885313, 37.208767, 51.655392>,  <29.677057, 36.882599, 51.756599>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.885313, 37.208767, 51.655392> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.138430, -0.373053, -0.917425,
		-0.842480, 0.442622, -0.307105,
		0.520639, 0.815425, -0.253017,
		30.041504, 37.453396, 51.579487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.570467, 36.961872, 51.085712>,  <29.677057, 36.882599, 51.756599>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.570467, 36.961872, 51.085712> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.871553, 37.222576, 51.122875>,  <30.052206, 37.378998, 51.145172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.871553, 37.222576, 51.122875>,  <29.570467, 36.961872, 51.085712>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.871553, 37.222576, 51.122875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174710, -0.061694, -0.982685,
		-0.634740, 0.755915, -0.160306,
		0.752717, 0.651756, 0.092906,
		30.097368, 37.418102, 51.150745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.579853, 37.370060, 50.513313>,  <29.570467, 36.961872, 51.085712>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.579853, 37.370060, 50.513313> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941359, 37.459213, 50.659481>,  <30.158262, 37.512707, 50.747181>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<29.941359, 37.459213, 50.659481>,  <29.579853, 37.370060, 50.513313>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.941359, 37.459213, 50.659481> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318822, 0.219079, -0.922148,
		-0.285588, 0.949909, 0.126935,
		0.903765, 0.222885, 0.365418,
		30.212488, 37.526077, 50.769108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.744402, 38.016472, 50.129501>,  <29.579853, 37.370060, 50.513313>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.744402, 38.016472, 50.129501> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.077496, 37.833183, 50.253811>,  <30.277351, 37.723209, 50.328396>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.077496, 37.833183, 50.253811>,  <29.744402, 38.016472, 50.129501>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.077496, 37.833183, 50.253811> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.439217, 0.204964, -0.874687,
		0.337107, 0.864881, 0.371942,
		0.832735, -0.458226, 0.310776,
		30.327316, 37.695717, 50.347042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.306883, 38.471371, 49.872967>,  <29.744402, 38.016472, 50.129501>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.306883, 38.471371, 49.872967> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.474962, 38.116928, 49.951199>,  <30.575809, 37.904263, 49.998138>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.474962, 38.116928, 49.951199>,  <30.306883, 38.471371, 49.872967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.474962, 38.116928, 49.951199> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.426404, 0.002557, -0.904529,
		0.801007, 0.463480, 0.378913,
		0.420199, -0.886104, 0.195582,
		30.601023, 37.851097, 50.009872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.885029, 38.503471, 49.548725>,  <30.306883, 38.471371, 49.872967>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.885029, 38.503471, 49.548725> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.849756, 38.106720, 49.585400>,  <30.828592, 37.868671, 49.607403>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.849756, 38.106720, 49.585400>,  <30.885029, 38.503471, 49.548725>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.849756, 38.106720, 49.585400> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.356450, -0.117370, -0.926913,
		0.930144, -0.049054, 0.363904,
		-0.088180, -0.991876, 0.091686,
		30.823303, 37.809158, 49.612904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511152, 38.222141, 49.271660>,  <30.885029, 38.503471, 49.548725>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511152, 38.222141, 49.271660> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245638, 37.923023, 49.266136>,  <31.086329, 37.743553, 49.262821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.245638, 37.923023, 49.266136>,  <31.511152, 38.222141, 49.271660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.245638, 37.923023, 49.266136> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218250, -0.176004, -0.959890,
		0.715369, -0.640177, 0.280035,
		-0.663787, -0.747794, -0.013811,
		31.046501, 37.698685, 49.261993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.877249, 37.588398, 49.062462>,  <31.511152, 38.222141, 49.271660>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.877249, 37.588398, 49.062462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492315, 37.507774, 48.989487>,  <31.261354, 37.459400, 48.945702>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.492315, 37.507774, 48.989487>,  <31.877249, 37.588398, 49.062462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.492315, 37.507774, 48.989487> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.204637, -0.095273, -0.974190,
		0.178981, -0.974831, 0.132932,
		-0.962336, -0.201564, -0.182434,
		31.203615, 37.447304, 48.934757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.865587, 37.103378, 48.518776>,  <31.877249, 37.588398, 49.062462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.865587, 37.103378, 48.518776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487165, 37.230747, 48.494816>,  <31.260113, 37.307167, 48.480442>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.487165, 37.230747, 48.494816>,  <31.865587, 37.103378, 48.518776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.487165, 37.230747, 48.494816> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054719, -0.025195, -0.998184,
		-0.319352, -0.947614, 0.006412,
		-0.946055, 0.318422, -0.059898,
		31.203348, 37.326275, 48.476845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.591717, 36.705273, 48.017761>,  <31.865587, 37.103378, 48.518776>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.591717, 36.705273, 48.017761> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363585, 37.033169, 48.038715>,  <31.226706, 37.229908, 48.051289>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.363585, 37.033169, 48.038715>,  <31.591717, 36.705273, 48.017761>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.363585, 37.033169, 48.038715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.025285, 0.081265, -0.996372,
		-0.821025, -0.566938, -0.067075,
		-0.570331, 0.819742, 0.052385,
		31.192486, 37.279091, 48.054432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.171246, 36.594875, 47.479824>,  <31.591717, 36.705273, 48.017761>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.171246, 36.594875, 47.479824> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129534, 36.983013, 47.567059>,  <31.104506, 37.215897, 47.619400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.129534, 36.983013, 47.567059>,  <31.171246, 36.594875, 47.479824>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.129534, 36.983013, 47.567059> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.006425, 0.218616, -0.975790,
		-0.994527, -0.103158, -0.016564,
		-0.104282, 0.970343, 0.218082,
		31.098249, 37.274117, 47.632484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.729900, 36.924740, 46.951416>,  <31.171246, 36.594875, 47.479824>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.729900, 36.924740, 46.951416> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.933661, 37.223621, 47.122154>,  <31.055916, 37.402950, 47.224598>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<30.933661, 37.223621, 47.122154>,  <30.729900, 36.924740, 46.951416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.933661, 37.223621, 47.122154> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130594, 0.423160, -0.896594,
		-0.850564, 0.512468, 0.117977,
		0.509398, 0.747203, 0.426850,
		31.086479, 37.447781, 47.250210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.667627, 37.445469, 46.527298>,  <30.729900, 36.924740, 46.951416>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.667627, 37.445469, 46.527298> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003500, 37.546112, 46.719810>,  <31.205023, 37.606499, 46.835316>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.003500, 37.546112, 46.719810>,  <30.667627, 37.445469, 46.527298>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.003500, 37.546112, 46.719810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406823, 0.295649, -0.864342,
		-0.359767, 0.921566, 0.145890,
		0.839680, 0.251611, 0.481279,
		31.255404, 37.621593, 46.864193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.800840, 38.047016, 46.301968>,  <30.667627, 37.445469, 46.527298>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.800840, 38.047016, 46.301968> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142023, 37.896664, 46.446842>,  <31.346733, 37.806450, 46.533768>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.142023, 37.896664, 46.446842>,  <30.800840, 38.047016, 46.301968>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.142023, 37.896664, 46.446842> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478358, 0.285205, -0.830561,
		0.208898, 0.881686, 0.423074,
		0.852957, -0.375884, 0.362183,
		31.397911, 37.783897, 46.555496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.343321, 38.564823, 46.182400>,  <30.800840, 38.047016, 46.301968>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.343321, 38.564823, 46.182400> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531103, 38.213779, 46.221203>,  <31.643772, 38.003155, 46.244484>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.531103, 38.213779, 46.221203>,  <31.343321, 38.564823, 46.182400>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.531103, 38.213779, 46.221203> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479018, 0.160849, -0.862942,
		0.741722, 0.451585, 0.495903,
		0.469457, -0.877609, 0.097012,
		31.671940, 37.950497, 46.250305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952366, 38.673061, 45.816357>,  <31.343321, 38.564823, 46.182400>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952366, 38.673061, 45.816357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949360, 38.277370, 45.874836>,  <31.947557, 38.039955, 45.909924>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<31.949360, 38.277370, 45.874836>,  <31.952366, 38.673061, 45.816357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.949360, 38.277370, 45.874836> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516768, -0.129006, -0.846350,
		0.856093, 0.069191, 0.512170,
		-0.007513, -0.989227, 0.146196,
		31.947105, 37.980602, 45.918694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.620613, 38.477329, 45.920383>,  <31.952366, 38.673061, 45.816357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.620613, 38.477329, 45.920383> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395443, 38.186840, 45.762535>,  <32.260342, 38.012547, 45.667828>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.395443, 38.186840, 45.762535>,  <32.620613, 38.477329, 45.920383>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.395443, 38.186840, 45.762535> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691152, -0.151793, -0.706589,
		0.453238, -0.670496, 0.587376,
		-0.562925, -0.726219, -0.394616,
		32.226566, 37.968975, 45.644150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.485817, 26.903400, 37.737545> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462677, 26.890116, 38.136654>,  <42.448792, 26.882145, 38.376118>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.462677, 26.890116, 38.136654>,  <42.485817, 26.903400, 37.737545>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.462677, 26.890116, 38.136654> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.209658, 0.976754, 0.044669,
		-0.976062, 0.211775, -0.049546,
		-0.057854, -0.033212, 0.997772,
		42.445320, 26.880152, 38.435986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.081249, 27.387684, 37.981865>,  <42.485817, 26.903400, 37.737545>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.081249, 27.387684, 37.981865> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265377, 27.316618, 38.329784>,  <42.375854, 27.273979, 38.538536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.265377, 27.316618, 38.329784>,  <42.081249, 27.387684, 37.981865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.265377, 27.316618, 38.329784> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184669, 0.977501, 0.101932,
		-0.868334, 0.113702, 0.482772,
		0.460320, -0.177664, 0.869794,
		42.403473, 27.263319, 38.590721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.739422, 27.747213, 38.546074>,  <42.081249, 27.387684, 37.981865>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.739422, 27.747213, 38.546074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099804, 27.695679, 38.711811>,  <42.316032, 27.664759, 38.811253>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.099804, 27.695679, 38.711811>,  <41.739422, 27.747213, 38.546074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.099804, 27.695679, 38.711811> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.117181, 0.991666, 0.053547,
		-0.417786, 0.000309, 0.908546,
		0.900957, -0.128836, 0.414340,
		42.370090, 27.657028, 38.836113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.827774, 28.206711, 39.091583>,  <41.739422, 27.747213, 38.546074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.827774, 28.206711, 39.091583> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205841, 28.118301, 38.995411>,  <42.432682, 28.065256, 38.937706>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.205841, 28.118301, 38.995411>,  <41.827774, 28.206711, 39.091583>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.205841, 28.118301, 38.995411> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.202624, 0.974234, -0.099055,
		0.256134, 0.044905, 0.965598,
		0.945166, -0.221024, -0.240435,
		42.489391, 28.051994, 38.923279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.141388, 28.810358, 39.247101>,  <41.827774, 28.206711, 39.091583>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.141388, 28.810358, 39.247101> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433964, 28.609724, 39.062317>,  <42.609509, 28.489344, 38.951447>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.433964, 28.609724, 39.062317>,  <42.141388, 28.810358, 39.247101>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.433964, 28.609724, 39.062317> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513194, 0.851008, -0.111436,
		0.449026, -0.155566, 0.879872,
		0.731442, -0.501583, -0.461960,
		42.653397, 28.459249, 38.923729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.735214, 28.841318, 39.625694>,  <42.141388, 28.810358, 39.247101>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.735214, 28.841318, 39.625694> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801079, 28.802353, 39.233082>,  <42.840599, 28.778975, 38.997517>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.801079, 28.802353, 39.233082>,  <42.735214, 28.841318, 39.625694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.801079, 28.802353, 39.233082> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.403668, 0.914615, -0.023051,
		0.899966, -0.392416, 0.189923,
		0.164661, -0.097411, -0.981528,
		42.850475, 28.773130, 38.938622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.094170, 29.283970, 39.553738>,  <42.735214, 28.841318, 39.625694>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.094170, 29.283970, 39.553738> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030186, 29.196560, 39.168686>,  <42.991795, 29.144114, 38.937653>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.030186, 29.196560, 39.168686>,  <43.094170, 29.283970, 39.553738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.030186, 29.196560, 39.168686> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277403, 0.925939, -0.256292,
		0.947344, -0.308033, -0.087491,
		-0.159958, -0.218526, -0.962632,
		42.982197, 29.131002, 38.879898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.678757, 29.685129, 39.139191>,  <43.094170, 29.283970, 39.553738>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.678757, 29.685129, 39.139191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383919, 29.610744, 38.879311>,  <43.207016, 29.566114, 38.723385>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.383919, 29.610744, 38.879311>,  <43.678757, 29.685129, 39.139191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.383919, 29.610744, 38.879311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155864, 0.888691, -0.431201,
		0.657567, -0.419101, -0.626067,
		-0.737098, -0.185962, -0.649697,
		43.162788, 29.554956, 38.684402>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.888084, 29.735960, 38.379673>,  <43.678757, 29.685129, 39.139191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.888084, 29.735960, 38.379673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494572, 29.780197, 38.323200>,  <43.258465, 29.806740, 38.289314>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.494572, 29.780197, 38.323200>,  <43.888084, 29.735960, 38.379673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.494572, 29.780197, 38.323200> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173159, 0.790700, -0.587205,
		0.046692, -0.602131, -0.797031,
		-0.983786, 0.110595, -0.141184,
		43.199436, 29.813375, 38.280846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.792683, 29.759174, 37.615223>,  <43.888084, 29.735960, 38.379673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.792683, 29.759174, 37.615223> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464108, 29.923443, 37.773510>,  <43.266964, 30.022005, 37.868481>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.464108, 29.923443, 37.773510>,  <43.792683, 29.759174, 37.615223>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.464108, 29.923443, 37.773510> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070161, 0.761375, -0.644505,
		-0.565970, -0.501654, -0.654233,
		-0.821435, 0.410672, 0.395719,
		43.217678, 30.046644, 37.892227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.376095, 30.095322, 37.060158>,  <43.792683, 29.759174, 37.615223>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.376095, 30.095322, 37.060158> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253696, 30.259691, 37.403671>,  <43.180260, 30.358313, 37.609779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.253696, 30.259691, 37.403671>,  <43.376095, 30.095322, 37.060158>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.253696, 30.259691, 37.403671> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052930, 0.907999, -0.415616,
		-0.950561, -0.081720, -0.299592,
		-0.305994, 0.410925, 0.858783,
		43.161900, 30.382969, 37.661304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.755253, 30.477398, 36.883972>,  <43.376095, 30.095322, 37.060158>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.755253, 30.477398, 36.883972> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.909420, 30.641556, 37.214554>,  <43.001919, 30.740051, 37.412903>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.909420, 30.641556, 37.214554>,  <42.755253, 30.477398, 36.883972>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.909420, 30.641556, 37.214554> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187347, 0.842195, -0.505578,
		-0.903524, 0.349692, 0.247710,
		0.385416, 0.410394, 0.826457,
		43.025043, 30.764673, 37.462490>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.420322, 31.136627, 36.898331>,  <42.755253, 30.477398, 36.883972>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.420322, 31.136627, 36.898331> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729301, 31.184210, 37.147865>,  <42.914688, 31.212759, 37.297588>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.729301, 31.184210, 37.147865>,  <42.420322, 31.136627, 36.898331>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.729301, 31.184210, 37.147865> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207085, 0.881435, -0.424487,
		-0.600370, 0.457081, 0.656227,
		0.772446, 0.118954, 0.623841,
		42.961037, 31.219896, 37.335018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.477470, 31.855740, 36.941849>,  <42.420322, 31.136627, 36.898331>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.477470, 31.855740, 36.941849> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824463, 31.735376, 37.100311>,  <43.032658, 31.663158, 37.195389>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.824463, 31.735376, 37.100311>,  <42.477470, 31.855740, 36.941849>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.824463, 31.735376, 37.100311> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418248, 0.872308, -0.253271,
		-0.269356, 0.385397, 0.882562,
		0.867477, -0.300910, 0.396153,
		43.084705, 31.645103, 37.219158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.689526, 32.451653, 37.376736>,  <42.477470, 31.855740, 36.941849>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.689526, 32.451653, 37.376736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010815, 32.226532, 37.298668>,  <43.203587, 32.091461, 37.251827>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.010815, 32.226532, 37.298668>,  <42.689526, 32.451653, 37.376736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.010815, 32.226532, 37.298668> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507120, 0.817953, -0.271629,
		0.312511, 0.119204, 0.942405,
		0.803222, -0.562800, -0.195169,
		43.251781, 32.057693, 37.240116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.259235, 32.762112, 37.627800>,  <42.689526, 32.451653, 37.376736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.259235, 32.762112, 37.627800> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.373272, 32.537296, 37.317230>,  <43.441696, 32.402409, 37.130890>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.373272, 32.537296, 37.317230>,  <43.259235, 32.762112, 37.627800>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.373272, 32.537296, 37.317230> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.483455, 0.783771, -0.389839,
		0.827643, -0.264225, 0.495169,
		0.285094, -0.562039, -0.776423,
		43.458801, 32.368683, 37.084305>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.900677, 33.043392, 37.620728>,  <43.259235, 32.762112, 37.627800>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.900677, 33.043392, 37.620728> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823299, 32.859684, 37.273937>,  <43.776875, 32.749458, 37.065865>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.823299, 32.859684, 37.273937>,  <43.900677, 33.043392, 37.620728>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823299, 32.859684, 37.273937> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.207308, 0.844582, -0.493664,
		0.958959, -0.275227, -0.068168,
		-0.193443, -0.459272, -0.866977,
		43.765266, 32.721901, 37.013844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.558342, 33.108780, 37.160141>,  <43.900677, 33.043392, 37.620728>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.558342, 33.108780, 37.160141> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258606, 33.042603, 36.903667>,  <44.078766, 33.002895, 36.749783>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.258606, 33.042603, 36.903667>,  <44.558342, 33.108780, 37.160141>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.258606, 33.042603, 36.903667> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.339671, 0.735160, -0.586654,
		0.568431, -0.657396, -0.494689,
		-0.749339, -0.165441, -0.641186,
		44.033806, 32.992970, 36.711311>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.902981, 33.065277, 36.548462>,  <44.558342, 33.108780, 37.160141>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.902981, 33.065277, 36.548462> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525856, 33.161221, 36.455875>,  <44.299583, 33.218788, 36.400322>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.525856, 33.161221, 36.455875>,  <44.902981, 33.065277, 36.548462>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.525856, 33.161221, 36.455875> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.332570, 0.629974, -0.701804,
		-0.022518, -0.738647, -0.673716,
		-0.942809, 0.239861, -0.231466,
		44.243011, 33.233177, 36.386436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.887260, 33.168423, 35.882427>,  <44.902981, 33.065277, 36.548462>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.887260, 33.168423, 35.882427> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544376, 33.356068, 35.967403>,  <44.338646, 33.468655, 36.018391>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.544376, 33.356068, 35.967403>,  <44.887260, 33.168423, 35.882427>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.544376, 33.356068, 35.967403> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227083, 0.714589, -0.661662,
		-0.462203, -0.518938, -0.719077,
		-0.857206, 0.469112, 0.212443,
		44.287216, 33.496799, 36.031136>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.488476, 33.226776, 35.242916>,  <44.887260, 33.168423, 35.882427>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.488476, 33.226776, 35.242916> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382622, 33.516693, 35.497360>,  <44.319111, 33.690643, 35.650028>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.382622, 33.516693, 35.497360>,  <44.488476, 33.226776, 35.242916>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.382622, 33.516693, 35.497360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282815, 0.688956, -0.667350,
		-0.921945, 0.003297, -0.387306,
		-0.264636, 0.724796, 0.636112,
		44.303230, 33.734131, 35.688194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.697403, 33.729454, 34.831818>,  <44.488476, 33.226776, 35.242916>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.697403, 33.729454, 34.831818> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075535, 33.650646, 34.727863>,  <45.302414, 33.603359, 34.665489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.075535, 33.650646, 34.727863>,  <44.697403, 33.729454, 34.831818>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.075535, 33.650646, 34.727863> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263914, -0.930312, -0.254694,
		-0.191599, 0.309357, -0.931444,
		0.945325, -0.197022, -0.259890,
		45.359131, 33.591541, 34.649895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.807693, 33.466850, 34.128685>,  <44.697403, 33.729454, 34.831818>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.807693, 33.466850, 34.128685> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086174, 33.340675, 34.386616>,  <45.253262, 33.264973, 34.541374>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.086174, 33.340675, 34.386616>,  <44.807693, 33.466850, 34.128685>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.086174, 33.340675, 34.386616> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162639, -0.944236, -0.286299,
		0.699180, 0.094447, -0.708680,
		0.696201, -0.315434, 0.644830,
		45.295033, 33.246044, 34.580063>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.341557, 33.051086, 33.741726>,  <44.807693, 33.466850, 34.128685>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.341557, 33.051086, 33.741726> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366581, 32.954182, 34.129002>,  <45.381596, 32.896038, 34.361366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.366581, 32.954182, 34.129002>,  <45.341557, 33.051086, 33.741726>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.366581, 32.954182, 34.129002> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053891, -0.967857, -0.245659,
		0.996585, 0.067544, -0.047490,
		0.062557, -0.242261, 0.968192,
		45.385349, 32.881504, 34.419460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.508091, 32.381847, 33.684250>,  <45.341557, 33.051086, 33.741726>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.508091, 32.381847, 33.684250> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373989, 32.403400, 34.060486>,  <45.293530, 32.416332, 34.286228>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.373989, 32.403400, 34.060486>,  <45.508091, 32.381847, 33.684250>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.373989, 32.403400, 34.060486> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.276448, -0.960042, -0.043539,
		0.900656, -0.274620, 0.336754,
		-0.335255, 0.053882, 0.940585,
		45.273411, 32.419563, 34.342663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.716663, 31.686104, 34.022549>,  <45.508091, 32.381847, 33.684250>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.716663, 31.686104, 34.022549> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459850, 31.820114, 34.298389>,  <45.305763, 31.900520, 34.463894>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.459850, 31.820114, 34.298389>,  <45.716663, 31.686104, 34.022549>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459850, 31.820114, 34.298389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403159, -0.912599, 0.068012,
		0.652116, -0.234354, 0.720988,
		-0.642034, 0.335025, 0.689602,
		45.267239, 31.920622, 34.505272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.743172, 31.205149, 34.642673>,  <45.716663, 31.686104, 34.022549>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.743172, 31.205149, 34.642673> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387203, 31.387047, 34.656845>,  <45.173622, 31.496185, 34.665348>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.387203, 31.387047, 34.656845>,  <45.743172, 31.205149, 34.642673>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.387203, 31.387047, 34.656845> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.425997, -0.856393, 0.291749,
		0.163014, 0.244539, 0.955839,
		-0.889917, 0.454743, 0.035432,
		45.120228, 31.523470, 34.667473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.368439, 31.020311, 35.325260>,  <45.743172, 31.205149, 34.642673>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.368439, 31.020311, 35.325260> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114807, 31.092813, 35.024570>,  <44.962627, 31.136314, 34.844154>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.114807, 31.092813, 35.024570>,  <45.368439, 31.020311, 35.325260>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.114807, 31.092813, 35.024570> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528660, -0.811073, 0.250358,
		-0.564328, 0.556154, 0.610103,
		-0.634076, 0.181253, -0.751728,
		44.924583, 31.147190, 34.799053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730564, 30.712980, 35.573498>,  <45.368439, 31.020311, 35.325260>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730564, 30.712980, 35.573498> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650913, 30.757072, 35.183994>,  <44.603123, 30.783527, 34.950294>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.650913, 30.757072, 35.183994>,  <44.730564, 30.712980, 35.573498>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.650913, 30.757072, 35.183994> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549510, -0.835297, 0.017817,
		-0.811410, 0.538636, 0.226903,
		-0.199129, 0.110228, -0.973754,
		44.591175, 30.790140, 34.891869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.023960, 30.565174, 35.507866>,  <44.730564, 30.712980, 35.573498>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.023960, 30.565174, 35.507866> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164841, 30.546648, 35.133953>,  <44.249367, 30.535532, 34.909607>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.164841, 30.546648, 35.133953>,  <44.023960, 30.565174, 35.507866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164841, 30.546648, 35.133953> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.568249, -0.804194, -0.174256,
		-0.743674, 0.592560, -0.309552,
		0.352197, -0.046313, -0.934779,
		44.270500, 30.532755, 34.853519>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.426781, 30.507566, 35.006454>,  <44.023960, 30.565174, 35.507866>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.426781, 30.507566, 35.006454> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749245, 30.352587, 34.827576>,  <43.942722, 30.259598, 34.720249>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.749245, 30.352587, 34.827576>,  <43.426781, 30.507566, 35.006454>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.749245, 30.352587, 34.827576> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547607, -0.774824, -0.315869,
		-0.224113, 0.499529, -0.836806,
		0.806163, -0.387451, -0.447194,
		43.991093, 30.236351, 34.693417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.158920, 30.202318, 34.372616>,  <43.426781, 30.507566, 35.006454>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.158920, 30.202318, 34.372616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526699, 30.052361, 34.420052>,  <43.747368, 29.962385, 34.448513>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.526699, 30.052361, 34.420052>,  <43.158920, 30.202318, 34.372616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.526699, 30.052361, 34.420052> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.326710, -0.896210, -0.300114,
		0.218793, 0.237195, -0.946503,
		0.919451, -0.374895, 0.118590,
		43.802536, 29.939892, 34.455627>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.209057, 29.841730, 33.801281>,  <43.158920, 30.202318, 34.372616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.209057, 29.841730, 33.801281> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489212, 29.713499, 34.056370>,  <43.657307, 29.636560, 34.209423>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.489212, 29.713499, 34.056370>,  <43.209057, 29.841730, 33.801281>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.489212, 29.713499, 34.056370> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.321070, -0.939468, -0.119644,
		0.637471, -0.120955, -0.760921,
		0.700389, -0.320578, 0.637719,
		43.699329, 29.617325, 34.247684>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.436951, 29.362688, 33.423828>,  <43.209057, 29.841730, 33.801281>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.436951, 29.362688, 33.423828> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568909, 29.287474, 33.793869>,  <43.648083, 29.242344, 34.015892>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.568909, 29.287474, 33.793869>,  <43.436951, 29.362688, 33.423828>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.568909, 29.287474, 33.793869> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102824, -0.981288, -0.162790,
		0.938400, -0.041418, -0.343061,
		0.329899, -0.188037, 0.925099,
		43.667877, 29.231062, 34.071400>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.084305, 28.728401, 33.462772>,  <43.436951, 29.362688, 33.423828>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.084305, 28.728401, 33.462772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901764, 28.756113, 33.817612>,  <43.792240, 28.772739, 34.030518>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.901764, 28.756113, 33.817612>,  <44.084305, 28.728401, 33.462772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901764, 28.756113, 33.817612> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073707, -0.996481, 0.039905,
		0.886743, -0.047175, 0.459849,
		-0.456348, 0.069280, 0.887100,
		43.764858, 28.776897, 34.083740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.290241, 28.094446, 33.880035>,  <44.084305, 28.728401, 33.462772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.290241, 28.094446, 33.880035> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961655, 28.206709, 34.078598>,  <43.764503, 28.274067, 34.197735>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.961655, 28.206709, 34.078598>,  <44.290241, 28.094446, 33.880035>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.961655, 28.206709, 34.078598> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068587, -0.912809, 0.402586,
		0.566113, 0.296665, 0.769095,
		-0.821470, 0.280658, 0.496406,
		43.715214, 28.290907, 34.227520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.315182, 27.731798, 34.557316>,  <44.290241, 28.094446, 33.880035>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.315182, 27.731798, 34.557316> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934765, 27.846371, 34.510891>,  <43.706512, 27.915113, 34.483036>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.934765, 27.846371, 34.510891>,  <44.315182, 27.731798, 34.557316>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.934765, 27.846371, 34.510891> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294388, -0.725323, 0.622287,
		0.094062, 0.625990, 0.774137,
		-0.951046, 0.286431, -0.116059,
		43.649452, 27.932301, 34.476074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.974892, 27.798943, 35.240490>,  <44.315182, 27.731798, 34.557316>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.974892, 27.798943, 35.240490> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.701084, 27.715681, 34.961033>,  <43.536800, 27.665724, 34.793358>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.701084, 27.715681, 34.961033>,  <43.974892, 27.798943, 35.240490>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.701084, 27.715681, 34.961033> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.365714, -0.730989, 0.576115,
		-0.630620, 0.649866, 0.424254,
		-0.684523, -0.208154, -0.698642,
		43.495728, 27.653234, 34.751442>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.462807, 27.601562, 35.732571>,  <43.974892, 27.798943, 35.240490>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.462807, 27.601562, 35.732571> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341022, 27.484234, 35.370075>,  <43.267952, 27.413836, 35.152576>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.341022, 27.484234, 35.370075>,  <43.462807, 27.601562, 35.732571>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.341022, 27.484234, 35.370075> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342140, -0.854236, 0.391436,
		-0.888958, 0.429236, 0.159721,
		-0.304458, -0.293323, -0.906238,
		43.249683, 27.396236, 35.098206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.803699, 27.358429, 35.810871>,  <43.462807, 27.601562, 35.732571>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.803699, 27.358429, 35.810871> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952122, 27.196026, 35.476810>,  <43.041176, 27.098585, 35.276375>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.952122, 27.196026, 35.476810>,  <42.803699, 27.358429, 35.810871>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.952122, 27.196026, 35.476810> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343895, -0.895490, 0.282549,
		-0.862587, 0.182365, -0.471896,
		0.371052, -0.406006, -0.835153,
		43.063438, 27.074224, 35.226265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.276924, 26.932442, 35.623489>,  <42.803699, 27.358429, 35.810871>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.276924, 26.932442, 35.623489> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607277, 26.789862, 35.448742>,  <42.805489, 26.704313, 35.343891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.607277, 26.789862, 35.448742>,  <42.276924, 26.932442, 35.623489>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.607277, 26.789862, 35.448742> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251425, -0.926338, 0.280505,
		-0.504678, -0.121824, -0.854669,
		0.825885, -0.356450, -0.436873,
		42.855042, 26.682926, 35.317680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.064247, 26.327492, 35.322155>,  <42.276924, 26.932442, 35.623489>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.064247, 26.327492, 35.322155> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459843, 26.287739, 35.366009>,  <42.697201, 26.263887, 35.392323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.459843, 26.287739, 35.366009>,  <42.064247, 26.327492, 35.322155>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.459843, 26.287739, 35.366009> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.133904, -0.916391, 0.377222,
		0.062979, -0.387750, -0.919611,
		0.988991, -0.099382, 0.109635,
		42.756538, 26.257923, 35.398899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<37.542175, 39.117138, 43.072300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416130, 38.742001, 43.014118>,  <37.340504, 38.516918, 42.979210>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.416130, 38.742001, 43.014118>,  <37.542175, 39.117138, 43.072300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.416130, 38.742001, 43.014118> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.613551, -0.084385, -0.785133,
		0.724056, -0.336650, 0.602005,
		-0.315115, -0.937841, -0.145453,
		37.321594, 38.460648, 42.970482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.134815, 38.743523, 42.828934>,  <37.542175, 39.117138, 43.072300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.134815, 38.743523, 42.828934> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873821, 38.457531, 42.728481>,  <37.717224, 38.285934, 42.668209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.873821, 38.457531, 42.728481>,  <38.134815, 38.743523, 42.828934>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.873821, 38.457531, 42.728481> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.514769, -0.174980, -0.839282,
		0.556130, -0.676890, 0.482223,
		-0.652481, -0.714984, -0.251130,
		37.678078, 38.243034, 42.653141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.505379, 38.122993, 42.705109>,  <38.134815, 38.743523, 42.828934>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.505379, 38.122993, 42.705109> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157990, 38.116707, 42.506912>,  <37.949558, 38.112934, 42.387993>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157990, 38.116707, 42.506912>,  <38.505379, 38.122993, 42.705109>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.157990, 38.116707, 42.506912> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472234, -0.330355, -0.817227,
		-0.150841, -0.943726, 0.294327,
		-0.868471, -0.015719, -0.495491,
		37.897449, 38.111992, 42.358265>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.436584, 37.497280, 42.443996>,  <38.505379, 38.122993, 42.705109>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.436584, 37.497280, 42.443996> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182415, 37.693367, 42.205360>,  <38.029911, 37.811020, 42.062180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.182415, 37.693367, 42.205360>,  <38.436584, 37.497280, 42.443996>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.182415, 37.693367, 42.205360> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.309068, -0.546565, -0.778295,
		-0.707609, -0.678936, 0.195792,
		-0.635426, 0.490216, -0.596592,
		37.991787, 37.840431, 42.026382>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.447769, 37.086452, 41.826015>,  <38.436584, 37.497280, 42.443996>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.447769, 37.086452, 41.826015> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235676, 37.400852, 41.698856>,  <38.108418, 37.589493, 41.622562>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.235676, 37.400852, 41.698856>,  <38.447769, 37.086452, 41.826015>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.235676, 37.400852, 41.698856> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079217, -0.327376, -0.941567,
		-0.844142, -0.524435, 0.111322,
		-0.530235, 0.785998, -0.317896,
		38.076607, 37.636650, 41.603489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832882, 36.839535, 41.483852>,  <38.447769, 37.086452, 41.826015>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832882, 36.839535, 41.483852> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916332, 37.197987, 41.327171>,  <37.966404, 37.413055, 41.233162>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.916332, 37.197987, 41.327171>,  <37.832882, 36.839535, 41.483852>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.916332, 37.197987, 41.327171> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.166058, -0.427159, -0.888797,
		-0.963794, 0.120385, -0.237927,
		0.208630, 0.896126, -0.391703,
		37.978920, 37.466824, 41.209660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.447250, 36.875008, 40.876133>,  <37.832882, 36.839535, 41.483852>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.447250, 36.875008, 40.876133> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734108, 37.153206, 40.858292>,  <37.906223, 37.320126, 40.847588>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.734108, 37.153206, 40.858292>,  <37.447250, 36.875008, 40.876133>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.734108, 37.153206, 40.858292> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359542, -0.424043, -0.831214,
		-0.597017, 0.580067, -0.554160,
		0.717147, 0.695493, -0.044602,
		37.949253, 37.361855, 40.844910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430431, 37.192715, 40.187241>,  <37.447250, 36.875008, 40.876133>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430431, 37.192715, 40.187241> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802410, 37.241020, 40.326164>,  <38.025597, 37.270004, 40.409519>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802410, 37.241020, 40.326164>,  <37.430431, 37.192715, 40.187241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.802410, 37.241020, 40.326164> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359643, -0.495397, -0.790721,
		0.076564, 0.860232, -0.504122,
		0.929943, 0.120763, 0.347306,
		38.081394, 37.277248, 40.430355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.816936, 37.402660, 39.617905>,  <37.430431, 37.192715, 40.187241>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.816936, 37.402660, 39.617905> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099289, 37.281860, 39.874195>,  <38.268700, 37.209381, 40.027969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.099289, 37.281860, 39.874195>,  <37.816936, 37.402660, 39.617905>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.099289, 37.281860, 39.874195> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405320, -0.569621, -0.715016,
		0.580908, 0.764414, -0.279675,
		0.705877, -0.302000, 0.640729,
		38.311050, 37.191261, 40.066414>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363430, 37.362572, 39.293060>,  <37.816936, 37.402660, 39.617905>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363430, 37.362572, 39.293060> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492371, 37.129745, 39.591667>,  <38.569736, 36.990051, 39.770832>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.492371, 37.129745, 39.591667>,  <38.363430, 37.362572, 39.293060>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.492371, 37.129745, 39.591667> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.407259, -0.626627, -0.664439,
		0.854535, 0.518209, 0.035058,
		0.322350, -0.582064, 0.746520,
		38.589077, 36.955128, 39.815624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.175945, 37.133316, 39.122234>,  <38.363430, 37.362572, 39.293060>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.175945, 37.133316, 39.122234> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008457, 36.885006, 39.387356>,  <38.907967, 36.736019, 39.546429>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.008457, 36.885006, 39.387356>,  <39.175945, 37.133316, 39.122234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008457, 36.885006, 39.387356> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354332, -0.783699, -0.510162,
		0.836137, 0.021241, 0.548109,
		-0.418716, -0.620778, 0.662806,
		38.882843, 36.698772, 39.586197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.636082, 36.593616, 39.057213>,  <39.175945, 37.133316, 39.122234>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.636082, 36.593616, 39.057213> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309776, 36.441753, 39.231747>,  <39.113991, 36.350636, 39.336468>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.309776, 36.441753, 39.231747>,  <39.636082, 36.593616, 39.057213>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.309776, 36.441753, 39.231747> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168453, -0.877657, -0.448712,
		0.553309, -0.292541, 0.779916,
		-0.815765, -0.379656, 0.436336,
		39.065048, 36.327858, 39.362648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.840820, 35.936432, 39.339554>,  <39.636082, 36.593616, 39.057213>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.840820, 35.936432, 39.339554> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456257, 35.933918, 39.229534>,  <39.225517, 35.932407, 39.163525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.456257, 35.933918, 39.229534>,  <39.840820, 35.936432, 39.339554>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.456257, 35.933918, 39.229534> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.182055, -0.764084, -0.618895,
		-0.206265, -0.645086, 0.735743,
		-0.961410, -0.006289, -0.275045,
		39.167835, 35.932030, 39.147022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525475, 35.785648, 38.957134>,  <39.840820, 35.936432, 39.339554>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525475, 35.785648, 38.957134> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377663, 36.145927, 39.048523>,  <40.288975, 36.362095, 39.103355>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.377663, 36.145927, 39.048523>,  <40.525475, 35.785648, 38.957134>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.377663, 36.145927, 39.048523> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.746571, 0.141391, 0.650108,
		0.553244, 0.410805, -0.724680,
		-0.369530, 0.900693, 0.228471,
		40.266804, 36.416134, 39.117065>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.326759, 35.634338, 38.788971>,  <40.525475, 35.785648, 38.957134>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.326759, 35.634338, 38.788971> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595764, 35.424320, 38.997608>,  <41.757168, 35.298309, 39.122791>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.595764, 35.424320, 38.997608>,  <41.326759, 35.634338, 38.788971>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.595764, 35.424320, 38.997608> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677850, -0.154095, 0.718870,
		-0.297067, -0.837006, -0.459534,
		0.672511, -0.525048, 0.521588,
		41.797516, 35.266808, 39.154083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035126, 34.953972, 38.804214>,  <41.326759, 35.634338, 38.788971>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035126, 34.953972, 38.804214> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273331, 35.028561, 39.116776>,  <41.416256, 35.073315, 39.304314>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.273331, 35.028561, 39.116776>,  <41.035126, 34.953972, 38.804214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.273331, 35.028561, 39.116776> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.703362, -0.348916, 0.619306,
		0.388127, -0.918415, -0.076628,
		0.595516, 0.186472, 0.781402,
		41.451984, 35.084503, 39.351196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990276, 34.363258, 39.129662>,  <41.035126, 34.953972, 38.804214>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.990276, 34.363258, 39.129662> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126522, 34.620174, 39.404308>,  <41.208267, 34.774323, 39.569096>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.126522, 34.620174, 39.404308>,  <40.990276, 34.363258, 39.129662>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.126522, 34.620174, 39.404308> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705155, -0.308524, 0.638412,
		0.621884, -0.701624, 0.347826,
		0.340612, 0.642290, 0.686620,
		41.228706, 34.812862, 39.610294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.959465, 33.934475, 39.659904>,  <40.990276, 34.363258, 39.129662>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.959465, 33.934475, 39.659904> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990215, 34.300354, 39.818607>,  <41.008667, 34.519882, 39.913830>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.990215, 34.300354, 39.818607>,  <40.959465, 33.934475, 39.659904>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.990215, 34.300354, 39.818607> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.586650, -0.280263, 0.759799,
		0.806183, -0.291170, 0.515062,
		0.076877, 0.914698, 0.396758,
		41.013279, 34.574764, 39.937634>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938606, 33.771885, 40.400249>,  <40.959465, 33.934475, 39.659904>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938606, 33.771885, 40.400249> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869133, 34.165695, 40.409500>,  <40.827450, 34.401981, 40.415051>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869133, 34.165695, 40.409500>,  <40.938606, 33.771885, 40.400249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.869133, 34.165695, 40.409500> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.499793, -0.108358, 0.859340,
		0.848552, 0.137693, 0.510881,
		-0.173683, 0.984530, 0.023130,
		40.817028, 34.461056, 40.416439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.086338, 33.894367, 41.108475>,  <40.938606, 33.771885, 40.400249>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.086338, 33.894367, 41.108475> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860161, 34.186901, 40.955933>,  <40.724457, 34.362423, 40.864407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.860161, 34.186901, 40.955933>,  <41.086338, 33.894367, 41.108475>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.860161, 34.186901, 40.955933> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621435, -0.073748, 0.779987,
		0.542307, 0.678021, 0.496176,
		-0.565439, 0.731334, -0.381352,
		40.690529, 34.406300, 40.841526>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.983913, 34.391331, 41.687988>,  <41.086338, 33.894367, 41.108475>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.983913, 34.391331, 41.687988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712479, 34.432552, 41.397087>,  <40.549618, 34.457283, 41.222546>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.712479, 34.432552, 41.397087>,  <40.983913, 34.391331, 41.687988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.712479, 34.432552, 41.397087> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.730764, 0.005294, 0.682609,
		0.074193, 0.994662, 0.071712,
		-0.678586, 0.103050, -0.727256,
		40.508904, 34.463467, 41.178909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.525036, 34.849121, 42.031849>,  <40.983913, 34.391331, 41.687988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.525036, 34.849121, 42.031849> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328709, 34.688602, 41.722511>,  <40.210911, 34.592289, 41.536911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.328709, 34.688602, 41.722511>,  <40.525036, 34.849121, 42.031849>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.328709, 34.688602, 41.722511> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.830020, -0.054489, 0.555065,
		-0.264886, 0.914324, -0.306343,
		-0.490817, -0.401300, -0.773341,
		40.181465, 34.568211, 41.490509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.959999, 35.333050, 41.983257>,  <40.525036, 34.849121, 42.031849>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.959999, 35.333050, 41.983257> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857384, 34.990448, 41.804108>,  <39.795815, 34.784885, 41.696617>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.857384, 34.990448, 41.804108>,  <39.959999, 35.333050, 41.983257>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.857384, 34.990448, 41.804108> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847365, -0.023593, 0.530486,
		-0.464930, 0.515601, -0.719719,
		-0.256539, -0.856504, -0.447871,
		39.780422, 34.733498, 41.669746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.222000, 35.400036, 41.791523>,  <39.959999, 35.333050, 41.983257>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.222000, 35.400036, 41.791523> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270210, 35.004047, 41.762070>,  <39.299137, 34.766453, 41.744396>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.270210, 35.004047, 41.762070>,  <39.222000, 35.400036, 41.791523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270210, 35.004047, 41.762070> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.937031, -0.137946, 0.320848,
		-0.327789, 0.030326, -0.944264,
		0.120527, -0.989975, -0.073634,
		39.306370, 34.707054, 41.739979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618687, 35.209103, 41.410660>,  <39.222000, 35.400036, 41.791523>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618687, 35.209103, 41.410660> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797031, 34.922401, 41.625122>,  <38.904037, 34.750381, 41.753799>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.797031, 34.922401, 41.625122>,  <38.618687, 35.209103, 41.410660>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.797031, 34.922401, 41.625122> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.829244, -0.105251, 0.548887,
		-0.336987, -0.689335, -0.641293,
		0.445863, -0.716756, 0.536159,
		38.930790, 34.707375, 41.785969>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.105930, 34.802395, 41.345158>,  <38.618687, 35.209103, 41.410660>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.105930, 34.802395, 41.345158> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326714, 34.619263, 41.623936>,  <38.459183, 34.509384, 41.791203>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326714, 34.619263, 41.623936>,  <38.105930, 34.802395, 41.345158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326714, 34.619263, 41.623936> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.818301, -0.136645, 0.558311,
		-0.160382, -0.878472, -0.450072,
		0.551961, -0.457838, 0.696939,
		38.492302, 34.481915, 41.833019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.720249, 34.167320, 41.576900>,  <38.105930, 34.802395, 41.345158>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.720249, 34.167320, 41.576900> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928493, 34.261200, 41.905262>,  <38.053440, 34.317528, 42.102280>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928493, 34.261200, 41.905262>,  <37.720249, 34.167320, 41.576900>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928493, 34.261200, 41.905262> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834739, -0.062079, 0.547136,
		0.179373, -0.970084, 0.163592,
		0.520612, 0.234698, 0.820902,
		38.084679, 34.331608, 42.151531>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.366005, 33.799461, 42.147377>,  <37.720249, 34.167320, 41.576900>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.366005, 33.799461, 42.147377> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605900, 34.066711, 42.323524>,  <37.749836, 34.227062, 42.429214>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.605900, 34.066711, 42.323524>,  <37.366005, 33.799461, 42.147377>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.605900, 34.066711, 42.323524> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629625, 0.054371, 0.774994,
		0.493846, -0.742064, 0.453274,
		0.599740, 0.668120, 0.440371,
		37.785820, 34.267147, 42.455635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437752, 32.950653, 42.142929>,  <37.366005, 33.799461, 42.147377>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437752, 32.950653, 42.142929> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121861, 32.731647, 42.032257>,  <36.932323, 32.600243, 41.965855>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.121861, 32.731647, 42.032257>,  <37.437752, 32.950653, 42.142929>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.121861, 32.731647, 42.032257> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262323, 0.106304, -0.959107,
		0.554539, -0.830016, 0.059675,
		-0.789730, -0.547516, -0.276682,
		36.884941, 32.567394, 41.949253>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.698246, 32.554958, 41.670055>,  <37.437752, 32.950653, 42.142929>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.698246, 32.554958, 41.670055> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304699, 32.575447, 41.601501>,  <37.068569, 32.587742, 41.560371>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304699, 32.575447, 41.601501>,  <37.698246, 32.554958, 41.670055>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304699, 32.575447, 41.601501> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170906, -0.013541, -0.985194,
		-0.052794, -0.998595, 0.004567,
		-0.983872, 0.051232, -0.171381,
		37.009537, 32.590813, 41.550087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.601570, 32.015362, 41.237732>,  <37.698246, 32.554958, 41.670055>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.601570, 32.015362, 41.237732> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304802, 32.280384, 41.196598>,  <37.126740, 32.439396, 41.171917>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.304802, 32.280384, 41.196598>,  <37.601570, 32.015362, 41.237732>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.304802, 32.280384, 41.196598> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206223, 0.079556, -0.975266,
		-0.637987, -0.744776, -0.195658,
		-0.741920, 0.662556, -0.102834,
		37.082226, 32.479149, 41.165749>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.135529, 31.661186, 40.666916>,  <37.601570, 32.015362, 41.237732>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.135529, 31.661186, 40.666916> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054768, 32.051502, 40.700562>,  <37.006313, 32.285690, 40.720749>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.054768, 32.051502, 40.700562>,  <37.135529, 31.661186, 40.666916>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.054768, 32.051502, 40.700562> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.131052, 0.058193, -0.989666,
		-0.970599, -0.210836, 0.116130,
		-0.201899, 0.975788, 0.084113,
		36.994198, 32.344238, 40.725796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.600346, 31.750345, 40.259441>,  <37.135529, 31.661186, 40.666916>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.600346, 31.750345, 40.259441> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738594, 32.125629, 40.266426>,  <36.821541, 32.350800, 40.270618>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.738594, 32.125629, 40.266426>,  <36.600346, 31.750345, 40.259441>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.738594, 32.125629, 40.266426> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060192, -0.003594, -0.998181,
		-0.936443, 0.346041, -0.057715,
		0.345619, 0.938213, 0.017463,
		36.842281, 32.407093, 40.271664>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.120758, 32.111851, 39.754311>,  <36.600346, 31.750345, 40.259441>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.120758, 32.111851, 39.754311> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446125, 32.336185, 39.816032>,  <36.641346, 32.470787, 39.853065>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.446125, 32.336185, 39.816032>,  <36.120758, 32.111851, 39.754311>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.446125, 32.336185, 39.816032> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.068917, 0.356325, -0.931817,
		-0.577579, 0.747325, 0.328494,
		0.813421, 0.560836, 0.154302,
		36.690151, 32.504436, 39.862324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.860741, 32.825550, 39.447803>,  <36.120758, 32.111851, 39.754311>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.860741, 32.825550, 39.447803> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256950, 32.771282, 39.456280>,  <36.494678, 32.738724, 39.461365>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.256950, 32.771282, 39.456280>,  <35.860741, 32.825550, 39.447803>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.256950, 32.771282, 39.456280> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061819, 0.302794, -0.951049,
		0.122609, 0.943351, 0.308313,
		0.990528, -0.135666, 0.021191,
		36.554108, 32.730583, 39.462639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198265, 33.398518, 39.124302>,  <35.860741, 32.825550, 39.447803>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198265, 33.398518, 39.124302> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474888, 33.110649, 39.099590>,  <36.640862, 32.937927, 39.084763>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474888, 33.110649, 39.099590>,  <36.198265, 33.398518, 39.124302>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.474888, 33.110649, 39.099590> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152347, 0.228929, -0.961448,
		0.706072, 0.655485, 0.267957,
		0.691558, -0.719674, -0.061779,
		36.682354, 32.894749, 39.081055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.751450, 33.742939, 38.785408>,  <36.198265, 33.398518, 39.124302>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.751450, 33.742939, 38.785408> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806496, 33.349243, 38.740982>,  <36.839523, 33.113026, 38.714325>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.806496, 33.349243, 38.740982>,  <36.751450, 33.742939, 38.785408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.806496, 33.349243, 38.740982> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284764, 0.146716, -0.947304,
		0.948669, 0.098732, 0.300465,
		0.137612, -0.984239, -0.111069,
		36.847778, 33.053970, 38.707661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.233570, 33.731194, 38.222874>,  <36.751450, 33.742939, 38.785408>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.233570, 33.731194, 38.222874> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169609, 33.336964, 38.245083>,  <37.131233, 33.100426, 38.258408>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.169609, 33.336964, 38.245083>,  <37.233570, 33.731194, 38.222874>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.169609, 33.336964, 38.245083> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.237126, -0.092953, -0.967022,
		0.958229, -0.141462, 0.248567,
		-0.159902, -0.985570, 0.055526,
		37.121639, 33.041294, 38.261742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.792393, 33.325512, 37.928253>,  <37.233570, 33.731194, 38.222874>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.792393, 33.325512, 37.928253> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454815, 33.114426, 37.889732>,  <37.252270, 32.987774, 37.866619>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.454815, 33.114426, 37.889732>,  <37.792393, 33.325512, 37.928253>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.454815, 33.114426, 37.889732> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161351, -0.078516, -0.983769,
		0.511592, -0.845783, 0.151411,
		-0.843943, -0.527718, -0.096299,
		37.201633, 32.956112, 37.860844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.945045, 32.617100, 37.768551>,  <37.792393, 33.325512, 37.928253>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.945045, 32.617100, 37.768551> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600800, 32.739674, 37.605854>,  <37.394253, 32.813217, 37.508236>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.600800, 32.739674, 37.605854>,  <37.945045, 32.617100, 37.768551>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.600800, 32.739674, 37.605854> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.357682, -0.204809, -0.911107,
		-0.362503, -0.929596, 0.066653,
		-0.860613, 0.306438, -0.406744,
		37.342617, 32.831604, 37.483829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<35.566895, 31.395638, 45.653355> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361221, 31.663116, 45.438519>,  <35.237820, 31.823605, 45.309616>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.361221, 31.663116, 45.438519>,  <35.566895, 31.395638, 45.653355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.361221, 31.663116, 45.438519> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609061, -0.156220, -0.777586,
		-0.603874, -0.726938, -0.326952,
		-0.514180, 0.668698, -0.537087,
		35.206966, 31.863726, 45.277393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.746563, 31.165068, 45.088047>,  <35.566895, 31.395638, 45.653355>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.746563, 31.165068, 45.088047> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550339, 31.491285, 44.965256>,  <35.432602, 31.687016, 44.891582>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.550339, 31.491285, 44.965256>,  <35.746563, 31.165068, 45.088047>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.550339, 31.491285, 44.965256> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645774, 0.103708, -0.756452,
		-0.585083, -0.569328, -0.577532,
		-0.490564, 0.815543, -0.306979,
		35.403168, 31.735949, 44.873161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.653179, 31.067692, 44.454407>,  <35.746563, 31.165068, 45.088047>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.653179, 31.067692, 44.454407> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.589611, 31.460516, 44.495014>,  <35.551472, 31.696211, 44.519379>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.589611, 31.460516, 44.495014>,  <35.653179, 31.067692, 44.454407>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.589611, 31.460516, 44.495014> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.547039, 0.173189, -0.818996,
		-0.821884, -0.074617, -0.564747,
		-0.158919, 0.982058, 0.101522,
		35.541935, 31.755133, 44.525471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.264755, 31.231264, 43.886597>,  <35.653179, 31.067692, 44.454407>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.264755, 31.231264, 43.886597> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454395, 31.558485, 44.016842>,  <35.568180, 31.754818, 44.094990>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.454395, 31.558485, 44.016842>,  <35.264755, 31.231264, 43.886597>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454395, 31.558485, 44.016842> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397370, 0.131208, -0.908230,
		-0.785702, 0.559978, -0.262864,
		0.474099, 0.818052, 0.325609,
		35.596626, 31.803900, 44.114525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.057182, 31.796093, 43.420185>,  <35.264755, 31.231264, 43.886597>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.057182, 31.796093, 43.420185> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414875, 31.894855, 43.569527>,  <35.629490, 31.954113, 43.659130>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.414875, 31.894855, 43.569527>,  <35.057182, 31.796093, 43.420185>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.414875, 31.894855, 43.569527> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263352, 0.384252, -0.884871,
		-0.361941, 0.889600, 0.278586,
		0.894228, 0.246904, 0.373355,
		35.683144, 31.968927, 43.681534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151482, 32.490906, 43.175934>,  <35.057182, 31.796093, 43.420185>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151482, 32.490906, 43.175934> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521809, 32.379070, 43.277676>,  <35.744003, 32.311970, 43.338722>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.521809, 32.379070, 43.277676>,  <35.151482, 32.490906, 43.175934>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.521809, 32.379070, 43.277676> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322431, 0.233025, -0.917463,
		0.197242, 0.931413, 0.305886,
		0.925815, -0.279589, 0.254354,
		35.799553, 32.295193, 43.353981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.595963, 32.993370, 43.000259>,  <35.151482, 32.490906, 43.175934>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.595963, 32.993370, 43.000259> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.838615, 32.675533, 43.010204>,  <35.984207, 32.484829, 43.016171>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.838615, 32.675533, 43.010204>,  <35.595963, 32.993370, 43.000259>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.838615, 32.675533, 43.010204> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.342514, 0.233011, -0.910159,
		0.717415, 0.560646, 0.413512,
		0.606630, -0.794595, 0.024864,
		36.020603, 32.437153, 43.017662>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.225231, 33.257751, 42.689838>,  <35.595963, 32.993370, 43.000259>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.225231, 33.257751, 42.689838> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254509, 32.859543, 42.665932>,  <36.272076, 32.620617, 42.651588>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.254509, 32.859543, 42.665932>,  <36.225231, 33.257751, 42.689838>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.254509, 32.859543, 42.665932> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526129, 0.089458, -0.845686,
		0.847248, 0.030455, 0.530323,
		0.073197, -0.995525, -0.059770,
		36.276466, 32.560886, 42.648003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.946144, 33.134842, 42.607441>,  <36.225231, 33.257751, 42.689838>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.946144, 33.134842, 42.607441> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752216, 32.814571, 42.466663>,  <36.635860, 32.622410, 42.382195>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.752216, 32.814571, 42.466663>,  <36.946144, 33.134842, 42.607441>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752216, 32.814571, 42.466663> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541477, 0.041232, -0.839704,
		0.686843, -0.597675, 0.413558,
		-0.484818, -0.800677, -0.351948,
		36.606770, 32.574368, 42.361080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442230, 33.619061, 42.879211>,  <36.946144, 33.134842, 42.607441>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442230, 33.619061, 42.879211> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542744, 34.006222, 42.877167>,  <37.603050, 34.238518, 42.875938>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.542744, 34.006222, 42.877167>,  <37.442230, 33.619061, 42.879211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.542744, 34.006222, 42.877167> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.557153, 0.148960, 0.816941,
		0.791479, -0.202435, 0.576699,
		0.251282, 0.967900, -0.005112,
		37.618130, 34.296593, 42.875633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.316296, 33.933590, 43.641384>,  <37.442230, 33.619061, 42.879211>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.316296, 33.933590, 43.641384> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343029, 34.255951, 43.406078>,  <37.359070, 34.449368, 43.264896>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.343029, 34.255951, 43.406078>,  <37.316296, 33.933590, 43.641384>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.343029, 34.255951, 43.406078> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.512478, 0.533596, 0.672786,
		0.856095, 0.256506, 0.448671,
		0.066835, 0.805903, -0.588263,
		37.363079, 34.497723, 43.229599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.620037, 34.452705, 44.095444>,  <37.316296, 33.933590, 43.641384>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.620037, 34.452705, 44.095444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441223, 34.633522, 43.786686>,  <37.333935, 34.742012, 43.601433>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441223, 34.633522, 43.786686>,  <37.620037, 34.452705, 44.095444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441223, 34.633522, 43.786686> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.421653, 0.654548, 0.627515,
		0.788902, 0.605994, -0.102005,
		-0.447037, 0.452037, -0.771894,
		37.307114, 34.769135, 43.555119>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.773087, 35.078789, 44.190556>,  <37.620037, 34.452705, 44.095444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.773087, 35.078789, 44.190556> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441936, 35.055038, 43.967449>,  <37.243248, 35.040787, 43.833584>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.441936, 35.055038, 43.967449>,  <37.773087, 35.078789, 44.190556>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441936, 35.055038, 43.967449> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.526534, 0.425062, 0.736264,
		0.193365, 0.903215, -0.383162,
		-0.827872, -0.059380, -0.557766,
		37.193577, 35.037224, 43.800121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451096, 35.842136, 44.075401>,  <37.773087, 35.078789, 44.190556>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451096, 35.842136, 44.075401> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133659, 35.617565, 43.981579>,  <36.943199, 35.482822, 43.925285>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.133659, 35.617565, 43.981579>,  <37.451096, 35.842136, 44.075401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.133659, 35.617565, 43.981579> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.528340, 0.444633, 0.723296,
		-0.301790, 0.697923, -0.649482,
		-0.793586, -0.561431, -0.234555,
		36.895584, 35.449135, 43.911213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.770378, 36.304863, 44.204411>,  <37.451096, 35.842136, 44.075401>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.770378, 36.304863, 44.204411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667179, 35.918495, 44.212700>,  <36.605259, 35.686672, 44.217674>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.667179, 35.918495, 44.212700>,  <36.770378, 36.304863, 44.204411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.667179, 35.918495, 44.212700> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542542, 0.162591, 0.824143,
		-0.799428, 0.201388, -0.566002,
		-0.257999, -0.965923, 0.020719,
		36.589779, 35.628719, 44.218914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101509, 36.369846, 44.494675>,  <36.770378, 36.304863, 44.204411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101509, 36.369846, 44.494675> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218712, 35.988422, 44.522617>,  <36.289032, 35.759567, 44.539383>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.218712, 35.988422, 44.522617>,  <36.101509, 36.369846, 44.494675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.218712, 35.988422, 44.522617> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434268, -0.067630, 0.898242,
		-0.851799, -0.293525, -0.433914,
		0.293003, -0.953556, 0.069861,
		36.306614, 35.702354, 44.543575>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.451748, 35.994560, 44.675381>,  <36.101509, 36.369846, 44.494675>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.451748, 35.994560, 44.675381> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.798405, 35.845646, 44.808243>,  <36.006401, 35.756298, 44.887959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.798405, 35.845646, 44.808243>,  <35.451748, 35.994560, 44.675381>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.798405, 35.845646, 44.808243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.399777, -0.119855, 0.908743,
		-0.298505, -0.920345, -0.252705,
		0.866645, -0.372289, 0.332155,
		36.058399, 35.733959, 44.907890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.228287, 35.436012, 45.167793>,  <35.451748, 35.994560, 44.675381>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.228287, 35.436012, 45.167793> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602459, 35.503342, 45.292141>,  <35.826962, 35.543739, 45.366749>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.602459, 35.503342, 45.292141>,  <35.228287, 35.436012, 45.167793>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.602459, 35.503342, 45.292141> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296517, -0.105206, 0.949215,
		0.192479, -0.980102, -0.048502,
		0.935430, 0.168322, 0.310867,
		35.883087, 35.553837, 45.385403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.376156, 34.877708, 45.667542>,  <35.228287, 35.436012, 45.167793>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.376156, 34.877708, 45.667542> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629986, 35.182133, 45.721363>,  <35.782284, 35.364788, 45.753658>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.629986, 35.182133, 45.721363>,  <35.376156, 34.877708, 45.667542>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.629986, 35.182133, 45.721363> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021595, -0.156576, 0.987430,
		0.772561, -0.629503, -0.082924,
		0.634574, 0.761059, 0.134559,
		35.820358, 35.410450, 45.761730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.727692, 34.617790, 46.223057>,  <35.376156, 34.877708, 45.667542>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.727692, 34.617790, 46.223057> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845615, 34.999916, 46.231609>,  <35.916370, 35.229191, 46.236740>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<35.845615, 34.999916, 46.231609>,  <35.727692, 34.617790, 46.223057>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.845615, 34.999916, 46.231609> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034474, -0.011727, 0.999337,
		0.954934, -0.295353, 0.029476,
		0.294811, 0.955316, 0.021381,
		35.934059, 35.286510, 46.238022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.306187, 34.544109, 46.583927>,  <35.727692, 34.617790, 46.223057>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.306187, 34.544109, 46.583927> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.169125, 34.919044, 46.609196>,  <36.086887, 35.144005, 46.624355>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.169125, 34.919044, 46.609196>,  <36.306187, 34.544109, 46.583927>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.169125, 34.919044, 46.609196> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045467, -0.083705, 0.995453,
		0.938359, 0.338227, 0.071299,
		-0.342657, 0.937334, 0.063167,
		36.066326, 35.200245, 46.628147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.692635, 34.783260, 47.134708>,  <36.306187, 34.544109, 46.583927>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.692635, 34.783260, 47.134708> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395271, 35.049641, 47.109886>,  <36.216854, 35.209469, 47.094994>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.395271, 35.049641, 47.109886>,  <36.692635, 34.783260, 47.134708>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.395271, 35.049641, 47.109886> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088158, -0.005590, 0.996091,
		0.663005, 0.745971, 0.062865,
		-0.743406, 0.665955, -0.062057,
		36.172249, 35.249428, 47.091270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.977703, 35.238937, 47.622417>,  <36.692635, 34.783260, 47.134708>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.977703, 35.238937, 47.622417> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591858, 35.338352, 47.587208>,  <36.360352, 35.398003, 47.566082>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<36.591858, 35.338352, 47.587208>,  <36.977703, 35.238937, 47.622417>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.591858, 35.338352, 47.587208> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077966, 0.050044, 0.995699,
		0.251872, 0.967329, -0.028895,
		-0.964615, 0.248536, -0.088024,
		36.302475, 35.412914, 47.560802>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<29.784601, 36.523224, 46.312347> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842667, 36.128880, 46.345825>,  <29.877506, 35.892273, 46.365910>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<29.842667, 36.128880, 46.345825>,  <29.784601, 36.523224, 46.312347>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.842667, 36.128880, 46.345825> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.423770, -0.014483, -0.905654,
		0.894062, 0.166935, 0.415676,
		0.145165, -0.985862, 0.083691,
		29.886215, 35.833122, 46.370934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.419498, 36.481655, 46.063400>,  <29.784601, 36.523224, 46.312347>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.419498, 36.481655, 46.063400> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.280815, 36.107998, 46.029522>,  <30.197605, 35.883804, 46.009197>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.280815, 36.107998, 46.029522>,  <30.419498, 36.481655, 46.063400>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.280815, 36.107998, 46.029522> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366246, -0.051701, -0.929081,
		0.863514, -0.353138, 0.360051,
		-0.346708, -0.934142, -0.084691,
		30.176802, 35.827755, 46.004116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.878435, 36.257431, 45.649071>,  <30.419498, 36.481655, 46.063400>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.878435, 36.257431, 45.649071> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.592215, 35.978317, 45.635883>,  <30.420483, 35.810848, 45.627972>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.592215, 35.978317, 45.635883>,  <30.878435, 36.257431, 45.649071>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.592215, 35.978317, 45.635883> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328201, -0.294149, -0.897642,
		0.616660, -0.653129, 0.439491,
		-0.715551, -0.697782, -0.032968,
		30.377548, 35.768982, 45.625992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.248985, 35.621010, 45.382519>,  <30.878435, 36.257431, 45.649071>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.248985, 35.621010, 45.382519> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859982, 35.566250, 45.307175>,  <30.626579, 35.533394, 45.261967>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.859982, 35.566250, 45.307175>,  <31.248985, 35.621010, 45.382519>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.859982, 35.566250, 45.307175> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.227446, -0.385128, -0.894396,
		0.049900, -0.912652, 0.405679,
		-0.972512, -0.136900, -0.188361,
		30.568228, 35.525181, 45.250668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.198196, 35.040089, 45.019989>,  <31.248985, 35.621010, 45.382519>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.198196, 35.040089, 45.019989> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845242, 35.202908, 44.925579>,  <30.633469, 35.300598, 44.868935>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.845242, 35.202908, 44.925579>,  <31.198196, 35.040089, 45.019989>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.845242, 35.202908, 44.925579> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084023, -0.357239, -0.930226,
		-0.462961, -0.840651, 0.281022,
		-0.882387, 0.407046, -0.236022,
		30.580524, 35.325020, 44.854774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.719830, 34.491516, 44.793304>,  <31.198196, 35.040089, 45.019989>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.719830, 34.491516, 44.793304> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.598795, 34.828304, 44.614632>,  <30.526175, 35.030376, 44.507427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.598795, 34.828304, 44.614632>,  <30.719830, 34.491516, 44.793304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.598795, 34.828304, 44.614632> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031650, -0.477269, -0.878187,
		-0.952596, -0.251590, 0.171064,
		-0.302587, 0.841972, -0.446682,
		30.508018, 35.080894, 44.480625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265600, 34.314869, 44.108711>,  <30.719830, 34.491516, 44.793304>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265600, 34.314869, 44.108711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387295, 34.693203, 44.063404>,  <30.460312, 34.920204, 44.036221>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.387295, 34.693203, 44.063404>,  <30.265600, 34.314869, 44.108711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.387295, 34.693203, 44.063404> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072521, -0.095561, -0.992778,
		-0.949832, 0.310253, 0.039520,
		0.304236, 0.945839, -0.113267,
		30.478565, 34.976955, 44.029423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.909145, 34.520023, 43.599651>,  <30.265600, 34.314869, 44.108711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.909145, 34.520023, 43.599651> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.196831, 34.797165, 43.620361>,  <30.369442, 34.963451, 43.632786>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.196831, 34.797165, 43.620361>,  <29.909145, 34.520023, 43.599651>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.196831, 34.797165, 43.620361> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.044513, 0.028414, -0.998605,
		-0.693359, 0.720517, -0.010405,
		0.719216, 0.692855, 0.051774,
		30.412596, 35.005020, 43.635895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.832180, 34.937828, 42.968979>,  <29.909145, 34.520023, 43.599651>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.832180, 34.937828, 42.968979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.201460, 35.034992, 43.088104>,  <30.423027, 35.093292, 43.159580>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.201460, 35.034992, 43.088104>,  <29.832180, 34.937828, 42.968979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.201460, 35.034992, 43.088104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.271068, 0.137767, -0.952650,
		-0.272441, 0.960215, 0.061341,
		0.923200, 0.242913, 0.297817,
		30.478420, 35.107864, 43.177448>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.018822, 35.290611, 42.501968>,  <29.832180, 34.937828, 42.968979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.018822, 35.290611, 42.501968> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.383768, 35.262386, 42.663265>,  <30.602736, 35.245453, 42.760044>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.383768, 35.262386, 42.663265>,  <30.018822, 35.290611, 42.501968>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.383768, 35.262386, 42.663265> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.404809, 0.302160, -0.863035,
		-0.060945, 0.950642, 0.304246,
		0.912368, -0.070564, 0.403244,
		30.657478, 35.241219, 42.784237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.399044, 35.820900, 42.364803>,  <30.018822, 35.290611, 42.501968>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.399044, 35.820900, 42.364803> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684738, 35.549335, 42.432858>,  <30.856155, 35.386398, 42.473690>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<30.684738, 35.549335, 42.432858>,  <30.399044, 35.820900, 42.364803>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.684738, 35.549335, 42.432858> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.383998, 0.176880, -0.906234,
		0.585160, 0.712595, 0.387035,
		0.714236, -0.678912, 0.170132,
		30.899010, 35.345661, 42.483898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.964815, 36.146313, 42.113823>,  <30.399044, 35.820900, 42.364803>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.964815, 36.146313, 42.113823> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089920, 35.768208, 42.151031>,  <31.164984, 35.541344, 42.173359>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.089920, 35.768208, 42.151031>,  <30.964815, 36.146313, 42.113823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.089920, 35.768208, 42.151031> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471372, 0.069443, -0.879196,
		0.824613, 0.318830, 0.467291,
		0.312765, -0.945264, 0.093024,
		31.183750, 35.484627, 42.178940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.734978, 36.125835, 42.166470>,  <30.964815, 36.146313, 42.113823>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.734978, 36.125835, 42.166470> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.576452, 35.791328, 42.014896>,  <31.481337, 35.590622, 41.923954>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.576452, 35.791328, 42.014896>,  <31.734978, 36.125835, 42.166470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.576452, 35.791328, 42.014896> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.599091, 0.077200, -0.796950,
		0.695719, -0.542856, 0.470406,
		-0.396314, -0.836270, -0.378930,
		31.457558, 35.540447, 41.901218>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.316265, 35.744961, 41.930309>,  <31.734978, 36.125835, 42.166470>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.316265, 35.744961, 41.930309> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015022, 35.546635, 41.757339>,  <31.834276, 35.427639, 41.653557>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.015022, 35.546635, 41.757339>,  <32.316265, 35.744961, 41.930309>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.015022, 35.546635, 41.757339> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570376, -0.164511, -0.804740,
		0.327866, -0.852702, 0.406698,
		-0.753110, -0.495817, -0.432423,
		31.789089, 35.397888, 41.627613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.107021, 35.526302, 42.155087>,  <32.316265, 35.744961, 41.930309>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.107021, 35.526302, 42.155087> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326221, 35.860451, 42.172314>,  <33.457741, 36.060940, 42.182648>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.326221, 35.860451, 42.172314>,  <33.107021, 35.526302, 42.155087>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.326221, 35.860451, 42.172314> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504544, 0.289036, 0.813568,
		0.667184, -0.467561, 0.579872,
		0.547997, 0.835371, 0.043065,
		33.490620, 36.111061, 42.185234>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.202080, 35.628746, 42.926586>,  <33.107021, 35.526302, 42.155087>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.202080, 35.628746, 42.926586> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271210, 35.975765, 42.740040>,  <33.312687, 36.183975, 42.628113>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.271210, 35.975765, 42.740040>,  <33.202080, 35.628746, 42.926586>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.271210, 35.975765, 42.740040> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.257672, 0.496826, 0.828716,
		0.950651, -0.023052, 0.309405,
		0.172824, 0.867544, -0.466368,
		33.323055, 36.236027, 42.600128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.604507, 35.940380, 43.366383>,  <33.202080, 35.628746, 42.926586>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.604507, 35.940380, 43.366383> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426792, 36.220730, 43.143177>,  <33.320164, 36.388939, 43.009254>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.426792, 36.220730, 43.143177>,  <33.604507, 35.940380, 43.366383>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.426792, 36.220730, 43.143177> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250070, 0.501085, 0.828480,
		0.860274, 0.507627, -0.047359,
		-0.444290, 0.700877, -0.558012,
		33.293507, 36.430992, 42.975773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.781986, 36.547455, 43.714066>,  <33.604507, 35.940380, 43.366383>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.781986, 36.547455, 43.714066> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.469406, 36.656548, 43.489586>,  <33.281857, 36.722004, 43.354897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.469406, 36.656548, 43.489586>,  <33.781986, 36.547455, 43.714066>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.469406, 36.656548, 43.489586> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369388, 0.522658, 0.768362,
		0.502872, 0.807741, -0.307690,
		-0.781455, 0.272731, -0.561201,
		33.234970, 36.738365, 43.321224>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.762714, 37.340267, 43.778976>,  <33.781986, 36.547455, 43.714066>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.762714, 37.340267, 43.778976> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409233, 37.228756, 43.628590>,  <33.197144, 37.161850, 43.538357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.409233, 37.228756, 43.628590>,  <33.762714, 37.340267, 43.778976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.409233, 37.228756, 43.628590> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.467779, 0.553117, 0.689380,
		0.015770, 0.785076, -0.619198,
		-0.883705, -0.278776, -0.375965,
		33.144123, 37.145123, 43.515800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.352802, 37.980976, 43.506168>,  <33.762714, 37.340267, 43.778976>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.352802, 37.980976, 43.506168> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125217, 37.678082, 43.634468>,  <32.988667, 37.496346, 43.711449>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.125217, 37.678082, 43.634468>,  <33.352802, 37.980976, 43.506168>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.125217, 37.678082, 43.634468> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.426276, 0.605109, 0.672407,
		-0.703255, 0.245850, -0.667076,
		-0.568965, -0.757232, 0.320746,
		32.954529, 37.450912, 43.730694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.764977, 38.336510, 43.794411>,  <33.352802, 37.980976, 43.506168>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.764977, 38.336510, 43.794411> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716984, 37.954502, 43.902889>,  <32.688190, 37.725300, 43.967976>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.716984, 37.954502, 43.902889>,  <32.764977, 38.336510, 43.794411>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.716984, 37.954502, 43.902889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457810, 0.295615, 0.838463,
		-0.880917, -0.023561, -0.472684,
		-0.119978, -0.955016, 0.271198,
		32.680992, 37.667995, 43.984249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.215000, 38.417915, 44.135204>,  <32.764977, 38.336510, 43.794411>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.215000, 38.417915, 44.135204> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329441, 38.055519, 44.259995>,  <32.398106, 37.838081, 44.334869>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.329441, 38.055519, 44.259995>,  <32.215000, 38.417915, 44.135204>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.329441, 38.055519, 44.259995> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.472228, 0.149988, 0.868622,
		-0.833756, -0.395836, -0.384922,
		0.286098, -0.905990, 0.311978,
		32.415272, 37.783722, 44.353588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.578503, 37.927288, 44.343979>,  <32.215000, 38.417915, 44.135204>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.578503, 37.927288, 44.343979> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916389, 37.824238, 44.531631>,  <32.119122, 37.762405, 44.644222>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.916389, 37.824238, 44.531631>,  <31.578503, 37.927288, 44.343979>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.916389, 37.824238, 44.531631> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449031, 0.135841, 0.883130,
		-0.291247, -0.956648, -0.000936,
		0.844717, -0.257629, 0.469127,
		32.169804, 37.746948, 44.672371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.367838, 37.409557, 44.776348>,  <31.578503, 37.927288, 44.343979>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.367838, 37.409557, 44.776348> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713139, 37.528828, 44.939266>,  <31.920319, 37.600388, 45.037018>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.713139, 37.528828, 44.939266>,  <31.367838, 37.409557, 44.776348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713139, 37.528828, 44.939266> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.448477, 0.082749, 0.889956,
		0.231658, -0.950918, 0.205158,
		0.863251, 0.298174, 0.407295,
		31.972115, 37.618279, 45.061455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.626896, 36.927162, 45.267391>,  <31.367838, 37.409557, 44.776348>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.626896, 36.927162, 45.267391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812197, 37.264103, 45.377552>,  <31.923378, 37.466267, 45.443649>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.812197, 37.264103, 45.377552>,  <31.626896, 36.927162, 45.267391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.812197, 37.264103, 45.377552> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339510, -0.118361, 0.933126,
		0.818614, -0.525774, 0.231155,
		0.463254, 0.842349, 0.275398,
		31.951174, 37.516808, 45.460171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.787767, 36.728874, 45.925423>,  <31.626896, 36.927162, 45.267391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.787767, 36.728874, 45.925423> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.888029, 37.115791, 45.941002>,  <31.948187, 37.347942, 45.950348>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<31.888029, 37.115791, 45.941002>,  <31.787767, 36.728874, 45.925423>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.888029, 37.115791, 45.941002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139709, -0.003668, 0.990186,
		0.957942, -0.253636, 0.134220,
		0.250655, 0.967293, 0.038949,
		31.963226, 37.405979, 45.952686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.319439, 36.804638, 46.534733>,  <31.787767, 36.728874, 45.925423>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.319439, 36.804638, 46.534733> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140869, 37.150684, 46.443279>,  <32.033726, 37.358315, 46.388409>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.140869, 37.150684, 46.443279>,  <32.319439, 36.804638, 46.534733>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.140869, 37.150684, 46.443279> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229512, 0.136255, 0.963721,
		0.864886, 0.482705, 0.137727,
		-0.446427, 0.865119, -0.228632,
		32.006943, 37.410221, 46.374691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577255, 37.389999, 46.993320>,  <32.319439, 36.804638, 46.534733>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577255, 37.389999, 46.993320> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212040, 37.493374, 46.867104>,  <31.992910, 37.555397, 46.791374>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.212040, 37.493374, 46.867104>,  <32.577255, 37.389999, 46.993320>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.212040, 37.493374, 46.867104> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268732, 0.200811, 0.942050,
		0.306826, 0.944926, -0.113898,
		-0.913039, 0.258437, -0.315546,
		31.938128, 37.570904, 46.772438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.024853, 38.083473, 46.986458>,  <32.577255, 37.389999, 46.993320>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.024853, 38.083473, 46.986458> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385876, 38.137535, 47.149979>,  <33.602489, 38.169971, 47.248093>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.385876, 38.137535, 47.149979>,  <33.024853, 38.083473, 46.986458>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.385876, 38.137535, 47.149979> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363773, 0.268570, -0.891930,
		-0.230339, 0.953732, 0.193235,
		0.902559, 0.135153, 0.408804,
		33.656643, 38.178082, 47.272621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.148277, 38.718021, 46.780579>,  <33.024853, 38.083473, 46.986458>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.148277, 38.718021, 46.780579> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504505, 38.546833, 46.842186>,  <33.718243, 38.444118, 46.879150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.504505, 38.546833, 46.842186>,  <33.148277, 38.718021, 46.780579>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.504505, 38.546833, 46.842186> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362367, 0.462924, -0.808945,
		0.274909, 0.776234, 0.567350,
		0.890570, -0.427975, 0.154020,
		33.771675, 38.418442, 46.888393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.551311, 39.240658, 46.569569>,  <33.148277, 38.718021, 46.780579>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.551311, 39.240658, 46.569569> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788979, 38.919827, 46.593685>,  <33.931580, 38.727325, 46.608154>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.788979, 38.919827, 46.593685>,  <33.551311, 39.240658, 46.569569>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788979, 38.919827, 46.593685> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464232, 0.280754, -0.840039,
		0.656853, 0.527110, 0.539166,
		0.594166, -0.802080, 0.060287,
		33.967228, 38.679203, 46.611771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.260757, 39.397144, 46.268497>,  <33.551311, 39.240658, 46.569569>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.260757, 39.397144, 46.268497> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291039, 38.998486, 46.280857>,  <34.309208, 38.759289, 46.288273>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.291039, 38.998486, 46.280857>,  <34.260757, 39.397144, 46.268497>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.291039, 38.998486, 46.280857> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605088, 0.021285, -0.795874,
		0.792551, 0.078948, 0.604673,
		0.075703, -0.996651, 0.030901,
		34.313751, 38.699490, 46.290127>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.958046, 39.304810, 46.210514>,  <34.260757, 39.397144, 46.268497>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.958046, 39.304810, 46.210514> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.772591, 38.979965, 46.068798>,  <34.661320, 38.785057, 45.983768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.772591, 38.979965, 46.068798>,  <34.958046, 39.304810, 46.210514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.772591, 38.979965, 46.068798> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.563870, 0.037991, -0.824989,
		0.683442, -0.582267, 0.440310,
		-0.463636, -0.812109, -0.354288,
		34.633499, 38.736332, 45.962513>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.480274, 38.890045, 45.956001>,  <34.958046, 39.304810, 46.210514>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.480274, 38.890045, 45.956001> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.187317, 38.686359, 45.775204>,  <35.011543, 38.564148, 45.666725>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.187317, 38.686359, 45.775204>,  <35.480274, 38.890045, 45.956001>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.187317, 38.686359, 45.775204> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.644309, -0.303678, -0.701887,
		0.220150, -0.805283, 0.550503,
		-0.732393, -0.509214, -0.451996,
		34.967598, 38.533596, 45.639606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.770218, 38.253117, 45.872791>,  <35.480274, 38.890045, 45.956001>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.770218, 38.253117, 45.872791> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.467068, 38.270870, 45.612434>,  <35.285179, 38.281521, 45.456219>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.467068, 38.270870, 45.612434>,  <35.770218, 38.253117, 45.872791>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.467068, 38.270870, 45.612434> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643072, -0.117316, -0.756766,
		-0.109943, -0.992103, 0.060373,
		-0.757873, 0.044377, -0.650892,
		35.239708, 38.284184, 45.417168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.667404, 37.609962, 45.577099>,  <35.770218, 38.253117, 45.872791>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.667404, 37.609962, 45.577099> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.512199, 37.870186, 45.315956>,  <35.419075, 38.026318, 45.159271>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.512199, 37.870186, 45.315956>,  <35.667404, 37.609962, 45.577099>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.512199, 37.870186, 45.315956> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.606530, -0.353113, -0.712343,
		-0.693951, -0.672376, -0.257570,
		-0.388011, 0.650555, -0.652859,
		35.395798, 38.065353, 45.120098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.581650, 37.294437, 44.916603>,  <35.667404, 37.609962, 45.577099>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.581650, 37.294437, 44.916603> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568710, 37.681347, 44.815929>,  <35.560947, 37.913490, 44.755527>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.568710, 37.681347, 44.815929>,  <35.581650, 37.294437, 44.916603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.568710, 37.681347, 44.815929> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482197, -0.205467, -0.851628,
		-0.875466, -0.148906, -0.459769,
		-0.032345, 0.967270, -0.251681,
		35.559006, 37.971527, 44.740425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.365631, 37.299782, 44.273098>,  <35.581650, 37.294437, 44.916603>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.365631, 37.299782, 44.273098> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582664, 37.626484, 44.351597>,  <35.712883, 37.822506, 44.398697>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.582664, 37.626484, 44.351597>,  <35.365631, 37.299782, 44.273098>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.582664, 37.626484, 44.351597> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571602, -0.187801, -0.798750,
		-0.615528, 0.545564, -0.568757,
		0.542583, 0.816756, 0.196248,
		35.745438, 37.871510, 44.410473>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.379536, 37.678013, 43.654137>,  <35.365631, 37.299782, 44.273098>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.379536, 37.678013, 43.654137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674835, 37.853313, 43.859241>,  <35.852016, 37.958492, 43.982304>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.674835, 37.853313, 43.859241>,  <35.379536, 37.678013, 43.654137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674835, 37.853313, 43.859241> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581934, -0.029399, -0.812705,
		-0.341092, 0.898373, -0.276736,
		0.738247, 0.438249, 0.512765,
		35.896309, 37.984787, 44.013073>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.613232, 38.287659, 43.244797>,  <35.379536, 37.678013, 43.654137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.613232, 38.287659, 43.244797> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933529, 38.251877, 43.481716>,  <36.125706, 38.230408, 43.623867>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.933529, 38.251877, 43.481716>,  <35.613232, 38.287659, 43.244797>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.933529, 38.251877, 43.481716> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597076, 0.039718, -0.801201,
		0.048146, 0.995199, 0.085215,
		0.800739, -0.089455, 0.592296,
		36.173752, 38.225040, 43.659405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.106697, 38.711353, 42.958145>,  <35.613232, 38.287659, 43.244797>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.106697, 38.711353, 42.958145> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338272, 38.489876, 43.197563>,  <36.477219, 38.356987, 43.341213>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.338272, 38.489876, 43.197563>,  <36.106697, 38.711353, 42.958145>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.338272, 38.489876, 43.197563> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734651, 0.035769, -0.677501,
		0.353721, 0.831949, 0.427482,
		0.578938, -0.553697, 0.598540,
		36.511955, 38.323765, 43.377125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.689342, 39.148376, 43.115765>,  <36.106697, 38.711353, 42.958145>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.689342, 39.148376, 43.115765> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788441, 38.762497, 43.151482>,  <36.847900, 38.530968, 43.172913>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<36.788441, 38.762497, 43.151482>,  <36.689342, 39.148376, 43.115765>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788441, 38.762497, 43.151482> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.634656, 0.091965, -0.767304,
		0.732008, 0.246762, 0.635038,
		0.247742, -0.964703, 0.089290,
		36.862762, 38.473087, 43.178268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<28.601580, 33.264893, 27.956770> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841431, 32.951717, 28.023054>,  <28.985342, 32.763813, 28.062824>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.841431, 32.951717, 28.023054>,  <28.601580, 33.264893, 27.956770>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.841431, 32.951717, 28.023054> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.603297, -0.306186, 0.736399,
		-0.525814, -0.541537, -0.655940,
		0.599627, -0.782935, 0.165710,
		29.021318, 32.716835, 28.072767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.225273, 32.697735, 27.873110>,  <28.601580, 33.264893, 27.956770>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.225273, 32.697735, 27.873110> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526258, 32.594292, 28.115406>,  <28.706850, 32.532227, 28.260784>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.526258, 32.594292, 28.115406>,  <28.225273, 32.697735, 27.873110>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.526258, 32.594292, 28.115406> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.656743, -0.364256, 0.660308,
		0.049888, -0.894674, -0.443925,
		0.752463, -0.258603, 0.605743,
		28.751997, 32.516712, 28.297129>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.158440, 31.959860, 28.021317>,  <28.225273, 32.697735, 27.873110>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.158440, 31.959860, 28.021317> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407335, 32.089474, 28.306362>,  <28.556673, 32.167240, 28.477390>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.407335, 32.089474, 28.306362>,  <28.158440, 31.959860, 28.021317>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.407335, 32.089474, 28.306362> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.614412, -0.361942, 0.701068,
		0.485095, -0.874071, -0.026124,
		0.622238, 0.324034, 0.712616,
		28.594007, 32.186684, 28.520147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.169233, 31.432714, 28.571966>,  <28.158440, 31.959860, 28.021317>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.169233, 31.432714, 28.571966> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279919, 31.772930, 28.750856>,  <28.346331, 31.977060, 28.858191>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.279919, 31.772930, 28.750856>,  <28.169233, 31.432714, 28.571966>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.279919, 31.772930, 28.750856> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.638836, -0.184846, 0.746807,
		0.717857, -0.492356, 0.492206,
		0.276712, 0.850540, 0.447228,
		28.362932, 32.028091, 28.885025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.247360, 31.236095, 29.256592>,  <28.169233, 31.432714, 28.571966>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.247360, 31.236095, 29.256592> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234526, 31.631599, 29.315008>,  <28.226826, 31.868902, 29.350058>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.234526, 31.631599, 29.315008>,  <28.247360, 31.236095, 29.256592>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.234526, 31.631599, 29.315008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.747333, -0.120757, 0.653385,
		0.663675, -0.088174, 0.742806,
		-0.032087, 0.988758, 0.146039,
		28.224899, 31.928226, 29.358820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.352774, 31.328104, 29.926655>,  <28.247360, 31.236095, 29.256592>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.352774, 31.328104, 29.926655> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185684, 31.668661, 29.799759>,  <28.085430, 31.872995, 29.723621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.185684, 31.668661, 29.799759>,  <28.352774, 31.328104, 29.926655>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.185684, 31.668661, 29.799759> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732660, -0.109156, 0.671784,
		0.537322, 0.513049, 0.669377,
		-0.417725, 0.851390, -0.317239,
		28.060368, 31.924078, 29.704588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320711, 31.814087, 30.414993>,  <28.352774, 31.328104, 29.926655>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320711, 31.814087, 30.414993> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025946, 31.913456, 30.163519>,  <27.849087, 31.973078, 30.012634>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.025946, 31.913456, 30.163519>,  <28.320711, 31.814087, 30.414993>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.025946, 31.913456, 30.163519> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.585892, 0.229171, 0.777310,
		0.337179, 0.941152, -0.023329,
		-0.736913, 0.248424, -0.628685,
		27.804873, 31.987984, 29.974913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039019, 32.321365, 30.784231>,  <28.320711, 31.814087, 30.414993>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039019, 32.321365, 30.784231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766790, 32.262291, 30.497173>,  <27.603453, 32.226845, 30.324940>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.766790, 32.262291, 30.497173>,  <28.039019, 32.321365, 30.784231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.766790, 32.262291, 30.497173> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731948, 0.180887, 0.656911,
		0.032795, 0.972352, -0.231205,
		-0.680571, -0.147687, -0.717643,
		27.562618, 32.217983, 30.281879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.570955, 32.775612, 30.923229>,  <28.039019, 32.321365, 30.784231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.570955, 32.775612, 30.923229> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357489, 32.527187, 30.693624>,  <27.229408, 32.378132, 30.555862>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.357489, 32.527187, 30.693624>,  <27.570955, 32.775612, 30.923229>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.357489, 32.527187, 30.693624> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.708715, -0.041913, 0.704249,
		-0.461438, 0.782643, -0.417785,
		-0.533665, -0.621058, -0.574011,
		27.197390, 32.340870, 30.521421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.949602, 33.151852, 30.786589>,  <27.570955, 32.775612, 30.923229>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.949602, 33.151852, 30.786589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876682, 32.758816, 30.772249>,  <26.832930, 32.522995, 30.763645>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.876682, 32.758816, 30.772249>,  <26.949602, 33.151852, 30.786589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.876682, 32.758816, 30.772249> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.790324, 0.124744, 0.599855,
		-0.584939, 0.137687, -0.799305,
		-0.182301, -0.982589, -0.035849,
		26.821993, 32.464039, 30.761494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.284737, 33.076424, 30.957935>,  <26.949602, 33.151852, 30.786589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.284737, 33.076424, 30.957935> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344616, 32.684460, 31.010662>,  <26.380543, 32.449284, 31.042299>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.344616, 32.684460, 31.010662>,  <26.284737, 33.076424, 30.957935>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.344616, 32.684460, 31.010662> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.748850, -0.025313, 0.662256,
		-0.645611, -0.197851, -0.737591,
		0.149699, -0.979905, 0.131819,
		26.389526, 32.390488, 31.050207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.680676, 32.865311, 31.071501>,  <26.284737, 33.076424, 30.957935>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.680676, 32.865311, 31.071501> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.916166, 32.583958, 31.230824>,  <26.057461, 32.415146, 31.326418>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.916166, 32.583958, 31.230824>,  <25.680676, 32.865311, 31.071501>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.916166, 32.583958, 31.230824> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.593429, -0.041519, 0.803815,
		-0.548854, -0.709596, -0.441852,
		0.588729, -0.703385, 0.398307,
		26.092785, 32.372944, 31.350315>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.235699, 32.243748, 31.275839>,  <25.680676, 32.865311, 31.071501>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.235699, 32.243748, 31.275839> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.569736, 32.235180, 31.495716>,  <25.770159, 32.230042, 31.627642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.569736, 32.235180, 31.495716>,  <25.235699, 32.243748, 31.275839>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.569736, 32.235180, 31.495716> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549914, -0.005827, 0.835201,
		-0.014699, -0.999753, -0.016653,
		0.835092, -0.021435, 0.549693,
		25.820265, 32.228756, 31.660624>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.997036, 31.948967, 31.932014>,  <25.235699, 32.243748, 31.275839>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.997036, 31.948967, 31.932014> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.357826, 32.098549, 32.018364>,  <25.574301, 32.188297, 32.070175>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.357826, 32.098549, 32.018364>,  <24.997036, 31.948967, 31.932014>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.357826, 32.098549, 32.018364> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323156, 0.253036, 0.911890,
		0.286391, -0.892258, 0.349080,
		0.901970, 0.373964, 0.215871,
		25.628418, 32.210735, 32.083126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.946793, 31.771040, 32.581543>,  <24.997036, 31.948967, 31.932014>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.946793, 31.771040, 32.581543> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.243855, 32.036613, 32.546547>,  <25.422092, 32.195957, 32.525547>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.243855, 32.036613, 32.546547>,  <24.946793, 31.771040, 32.581543>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.243855, 32.036613, 32.546547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313703, 0.460336, 0.830470,
		0.591656, -0.589304, 0.550149,
		0.742653, 0.663936, -0.087494,
		25.466650, 32.235794, 32.520298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.166372, 31.829338, 33.198009>,  <24.946793, 31.771040, 32.581543>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.166372, 31.829338, 33.198009> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.355631, 32.146278, 33.043964>,  <25.469187, 32.336445, 32.951538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.355631, 32.146278, 33.043964>,  <25.166372, 31.829338, 33.198009>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.355631, 32.146278, 33.043964> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004917, 0.434756, 0.900535,
		0.880971, -0.427978, 0.201807,
		0.473146, 0.792353, -0.385111,
		25.497574, 32.383984, 32.928432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.808838, 32.028130, 33.584343>,  <25.166372, 31.829338, 33.198009>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.808838, 32.028130, 33.584343> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712111, 32.366081, 33.393471>,  <25.654074, 32.568851, 33.278946>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.712111, 32.366081, 33.393471>,  <25.808838, 32.028130, 33.584343>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.712111, 32.366081, 33.393471> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324333, 0.533873, 0.780889,
		0.914511, 0.034069, -0.403123,
		-0.241821, 0.844878, -0.477184,
		25.639565, 32.619545, 33.250317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.336254, 32.569073, 33.701962>,  <25.808838, 32.028130, 33.584343>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.336254, 32.569073, 33.701962> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.994102, 32.759220, 33.619648>,  <25.788811, 32.873310, 33.570259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.994102, 32.759220, 33.619648>,  <26.336254, 32.569073, 33.701962>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.994102, 32.759220, 33.619648> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150701, 0.608461, 0.779144,
		0.495595, 0.635452, -0.592104,
		-0.855380, 0.475370, -0.205787,
		25.737488, 32.901833, 33.557911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.317287, 33.397896, 33.496731>,  <26.336254, 32.569073, 33.701962>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.317287, 33.397896, 33.496731> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.971014, 33.296417, 33.669350>,  <25.763250, 33.235531, 33.772919>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<25.971014, 33.296417, 33.669350>,  <26.317287, 33.397896, 33.496731>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<25.971014, 33.296417, 33.669350> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173178, 0.657063, 0.733674,
		-0.469682, 0.709864, -0.524874,
		-0.865684, -0.253696, 0.431543,
		25.711309, 33.220310, 33.798813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.019861, 33.576721, 33.243114>,  <26.317287, 33.397896, 33.496731>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.019861, 33.576721, 33.243114> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089035, 33.684082, 33.622177>,  <27.130539, 33.748497, 33.849613>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.089035, 33.684082, 33.622177>,  <27.019861, 33.576721, 33.243114>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.089035, 33.684082, 33.622177> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638554, 0.701999, -0.315350,
		-0.749895, 0.659666, -0.049987,
		0.172935, 0.268399, 0.947658,
		27.140915, 33.764603, 33.906475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.864281, 34.272842, 33.448605>,  <27.019861, 33.576721, 33.243114>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.864281, 34.272842, 33.448605> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172684, 34.121788, 33.653717>,  <27.357725, 34.031155, 33.776783>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.172684, 34.121788, 33.653717>,  <26.864281, 34.272842, 33.448605>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.172684, 34.121788, 33.653717> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631554, 0.556821, -0.539527,
		-0.081781, 0.739826, 0.667810,
		0.771006, -0.377635, 0.512777,
		27.403986, 34.008499, 33.807549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.305822, 34.825054, 33.618286>,  <26.864281, 34.272842, 33.448605>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.305822, 34.825054, 33.618286> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538811, 34.500881, 33.643341>,  <27.678604, 34.306377, 33.658375>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.538811, 34.500881, 33.643341>,  <27.305822, 34.825054, 33.618286>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.538811, 34.500881, 33.643341> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674374, 0.438780, -0.593879,
		0.453817, 0.388157, 0.802112,
		0.582469, -0.810436, 0.062637,
		27.713551, 34.257751, 33.662132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.966049, 34.982357, 33.859924>,  <27.305822, 34.825054, 33.618286>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.966049, 34.982357, 33.859924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020224, 34.659325, 33.630329>,  <28.052729, 34.465504, 33.492573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.020224, 34.659325, 33.630329>,  <27.966049, 34.982357, 33.859924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.020224, 34.659325, 33.630329> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.499826, 0.555898, -0.664192,
		0.855471, -0.196941, 0.478939,
		0.135435, -0.807583, -0.573991,
		28.060854, 34.417049, 33.458130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.270824, 35.223225, 33.225098>,  <27.966049, 34.982357, 33.859924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.270824, 35.223225, 33.225098> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349998, 34.834023, 33.177635>,  <28.397503, 34.600502, 33.149158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.349998, 34.834023, 33.177635>,  <28.270824, 35.223225, 33.225098>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349998, 34.834023, 33.177635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587623, 0.214672, -0.780138,
		0.784552, 0.084693, 0.614252,
		0.197935, -0.973007, -0.118653,
		28.409378, 34.542122, 33.142040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.972038, 35.121429, 33.348553>,  <28.270824, 35.223225, 33.225098>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.972038, 35.121429, 33.348553> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875238, 34.800594, 33.130161>,  <28.817160, 34.608093, 32.999126>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.875238, 34.800594, 33.130161>,  <28.972038, 35.121429, 33.348553>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.875238, 34.800594, 33.130161> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.679864, 0.261298, -0.685207,
		0.692259, -0.537010, 0.482077,
		-0.241997, -0.802087, -0.545979,
		28.802639, 34.559967, 32.966366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.503925, 34.724762, 33.207924>,  <28.972038, 35.121429, 33.348553>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.503925, 34.724762, 33.207924> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.237827, 34.668003, 32.914715>,  <29.078169, 34.633949, 32.738789>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.237827, 34.668003, 32.914715>,  <29.503925, 34.724762, 33.207924>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.237827, 34.668003, 32.914715> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717436, 0.150350, -0.680206,
		0.206729, -0.978397, 0.001782,
		-0.665243, -0.141897, -0.733019,
		29.038254, 34.625435, 32.694809>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.860268, 34.378380, 32.720943>,  <29.503925, 34.724762, 33.207924>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.860268, 34.378380, 32.720943> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538700, 34.480003, 32.505844>,  <29.345760, 34.540977, 32.376785>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.538700, 34.480003, 32.505844>,  <29.860268, 34.378380, 32.720943>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.538700, 34.480003, 32.505844> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.556855, 0.003993, -0.830600,
		-0.208872, -0.967181, -0.144683,
		-0.803918, 0.254056, -0.537746,
		29.297525, 34.556221, 32.344521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.692472, 33.794960, 32.197224>,  <29.860268, 34.378380, 32.720943>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.692472, 33.794960, 32.197224> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553146, 34.148746, 32.073029>,  <29.469551, 34.361019, 31.998510>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.553146, 34.148746, 32.073029>,  <29.692472, 33.794960, 32.197224>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.553146, 34.148746, 32.073029> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445843, -0.135050, -0.884865,
		-0.824561, -0.446641, -0.347291,
		-0.348316, 0.884462, -0.310489,
		29.448652, 34.414085, 31.979881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.533705, 33.642170, 31.487455>,  <29.692472, 33.794960, 32.197224>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.533705, 33.642170, 31.487455> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.520138, 34.039856, 31.528214>,  <29.511997, 34.278469, 31.552668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.520138, 34.039856, 31.528214>,  <29.533705, 33.642170, 31.487455>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.520138, 34.039856, 31.528214> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.261460, 0.107228, -0.959240,
		-0.964618, -0.005895, -0.263585,
		-0.033919, 0.994217, 0.101893,
		29.509962, 34.338120, 31.558781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.166212, 33.904346, 30.937210>,  <29.533705, 33.642170, 31.487455>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.166212, 33.904346, 30.937210> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410597, 34.197479, 31.056995>,  <29.557228, 34.373360, 31.128866>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.410597, 34.197479, 31.056995>,  <29.166212, 33.904346, 30.937210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.410597, 34.197479, 31.056995> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.438554, 0.001621, -0.898703,
		-0.659087, 0.680404, -0.320398,
		0.610962, 0.732836, 0.299462,
		29.593885, 34.417332, 31.146833>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.969055, 34.413589, 30.499079>,  <29.166212, 33.904346, 30.937210>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.969055, 34.413589, 30.499079> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333321, 34.514305, 30.630102>,  <29.551880, 34.574734, 30.708715>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.333321, 34.514305, 30.630102>,  <28.969055, 34.413589, 30.499079>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.333321, 34.514305, 30.630102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286991, 0.184801, -0.939939,
		-0.297203, 0.949973, 0.096029,
		0.910663, 0.251793, 0.327557,
		29.606520, 34.589844, 30.728369>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.169485, 34.894279, 30.103848>,  <28.969055, 34.413589, 30.499079>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.169485, 34.894279, 30.103848> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534246, 34.814365, 30.247244>,  <29.753103, 34.766418, 30.333282>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.534246, 34.814365, 30.247244>,  <29.169485, 34.894279, 30.103848>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.534246, 34.814365, 30.247244> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.397878, 0.216230, -0.891593,
		0.100606, 0.955684, 0.276670,
		0.911905, -0.199781, 0.358492,
		29.807817, 34.754433, 30.354792>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.530262, 35.391705, 29.886349>,  <29.169485, 34.894279, 30.103848>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.530262, 35.391705, 29.886349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780582, 35.086613, 29.951601>,  <29.930775, 34.903557, 29.990753>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.780582, 35.086613, 29.951601>,  <29.530262, 35.391705, 29.886349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.780582, 35.086613, 29.951601> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376690, 0.112404, -0.919494,
		0.682990, 0.636872, 0.357656,
		0.625802, -0.762731, 0.163132,
		29.968323, 34.857792, 30.000542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.105667, 35.646919, 29.476921>,  <29.530262, 35.391705, 29.886349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.105667, 35.646919, 29.476921> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207136, 35.276154, 29.587540>,  <30.268017, 35.053696, 29.653912>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.207136, 35.276154, 29.587540>,  <30.105667, 35.646919, 29.476921>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.207136, 35.276154, 29.587540> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582465, -0.081877, -0.808721,
		0.772259, 0.366229, 0.519126,
		0.253672, -0.926916, 0.276546,
		30.283237, 34.998077, 29.670504>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.769829, 35.579189, 29.437157>,  <30.105667, 35.646919, 29.476921>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.769829, 35.579189, 29.437157> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683142, 35.190716, 29.397491>,  <30.631130, 34.957630, 29.373692>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.683142, 35.190716, 29.397491>,  <30.769829, 35.579189, 29.437157>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.683142, 35.190716, 29.397491> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.681230, -0.077687, -0.727935,
		0.699257, -0.225308, 0.678437,
		-0.216715, -0.971185, -0.099163,
		30.618128, 34.899361, 29.367743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.490986, 35.252663, 29.295303>,  <30.769829, 35.579189, 29.437157>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.490986, 35.252663, 29.295303> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222885, 34.977978, 29.182745>,  <31.062025, 34.813168, 29.115210>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.222885, 34.977978, 29.182745>,  <31.490986, 35.252663, 29.295303>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.222885, 34.977978, 29.182745> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485484, -0.118939, -0.866117,
		0.561306, -0.717131, 0.413108,
		-0.670254, -0.686715, -0.281394,
		31.021809, 34.771965, 29.098328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.846853, 34.567150, 29.149158>,  <31.490986, 35.252663, 29.295303>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.846853, 34.567150, 29.149158> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511482, 34.535965, 28.933395>,  <31.310261, 34.517254, 28.803938>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.511482, 34.535965, 28.933395>,  <31.846853, 34.567150, 29.149158>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.511482, 34.535965, 28.933395> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.543921, -0.182374, -0.819079,
		-0.034516, -0.980134, 0.195313,
		-0.838427, -0.077963, -0.539410,
		31.259954, 34.512577, 28.771572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.927383, 33.908466, 28.756573>,  <31.846853, 34.567150, 29.149158>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.927383, 33.908466, 28.756573> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.635662, 34.110424, 28.571878>,  <31.460629, 34.231598, 28.461061>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.635662, 34.110424, 28.571878>,  <31.927383, 33.908466, 28.756573>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.635662, 34.110424, 28.571878> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406507, -0.223075, -0.885996,
		-0.550335, -0.833859, -0.042553,
		-0.729304, 0.504893, -0.461736,
		31.416870, 34.261890, 28.433357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.775166, 33.516144, 28.193436>,  <31.927383, 33.908466, 28.756573>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.775166, 33.516144, 28.193436> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629343, 33.876537, 28.099354>,  <31.541849, 34.092773, 28.042904>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.629343, 33.876537, 28.099354>,  <31.775166, 33.516144, 28.193436>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629343, 33.876537, 28.099354> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414650, -0.069092, -0.907354,
		-0.833764, -0.428311, -0.348406,
		-0.364558, 0.900986, -0.235206,
		31.519976, 34.146832, 28.028791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.643236, 33.461216, 27.591324>,  <31.775166, 33.516144, 28.193436>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.643236, 33.461216, 27.591324> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.652487, 33.860081, 27.620007>,  <31.658037, 34.099400, 27.637217>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.652487, 33.860081, 27.620007>,  <31.643236, 33.461216, 27.591324>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.652487, 33.860081, 27.620007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428268, 0.054931, -0.901981,
		-0.903356, 0.051570, -0.425780,
		0.023127, 0.997158, 0.071708,
		31.659426, 34.159229, 27.641520>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.475737, 33.615788, 26.903334>,  <31.643236, 33.461216, 27.591324>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.475737, 33.615788, 26.903334> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.650305, 33.909939, 27.110699>,  <31.755045, 34.086430, 27.235117>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.650305, 33.909939, 27.110699>,  <31.475737, 33.615788, 26.903334>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.650305, 33.909939, 27.110699> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388354, 0.365783, -0.845804,
		-0.811615, 0.570453, -0.125954,
		0.436419, 0.735382, 0.518413,
		31.781231, 34.130554, 27.266222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.219728, 34.204403, 26.624012>,  <31.475737, 33.615788, 26.903334>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.219728, 34.204403, 26.624012> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.561796, 34.302719, 26.806559>,  <31.767036, 34.361710, 26.916086>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.561796, 34.302719, 26.806559>,  <31.219728, 34.204403, 26.624012>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.561796, 34.302719, 26.806559> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337478, 0.404248, -0.850113,
		-0.393439, 0.881004, 0.262750,
		0.855169, 0.245795, 0.456366,
		31.818348, 34.376457, 26.943468>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.736126, 35.893269, 48.131802> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388832, 35.733040, 48.014694>,  <36.180458, 35.636902, 47.944427>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.388832, 35.733040, 48.014694>,  <36.736126, 35.893269, 48.131802>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.388832, 35.733040, 48.014694> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298833, -0.048860, 0.953054,
		-0.396074, 0.914960, -0.077283,
		-0.868230, -0.400575, -0.292773,
		36.128365, 35.612869, 47.926861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.276878, 36.295185, 48.478352>,  <36.736126, 35.893269, 48.131802>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.276878, 36.295185, 48.478352> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105785, 35.943512, 48.394375>,  <36.003128, 35.732506, 48.343990>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.105785, 35.943512, 48.394375>,  <36.276878, 36.295185, 48.478352>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.105785, 35.943512, 48.394375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419271, -0.012786, 0.907771,
		-0.800783, 0.476308, -0.363148,
		-0.427736, -0.879185, -0.209941,
		35.977463, 35.679756, 48.331394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.657738, 36.243111, 48.800617>,  <36.276878, 36.295185, 48.478352>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.657738, 36.243111, 48.800617> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.720802, 35.854469, 48.730038>,  <35.758640, 35.621284, 48.687691>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.720802, 35.854469, 48.730038>,  <35.657738, 36.243111, 48.800617>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.720802, 35.854469, 48.730038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.488057, -0.232001, 0.841413,
		-0.858453, -0.046547, -0.510776,
		0.157665, -0.971601, -0.176444,
		35.768101, 35.562988, 48.677105>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.918015, 35.854275, 48.808331>,  <35.657738, 36.243111, 48.800617>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.918015, 35.854275, 48.808331> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239643, 35.652470, 48.934147>,  <35.432621, 35.531387, 49.009636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.239643, 35.652470, 48.934147>,  <34.918015, 35.854275, 48.808331>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239643, 35.652470, 48.934147> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.493673, -0.271750, 0.826099,
		-0.331305, -0.819520, -0.467572,
		0.804067, -0.504518, 0.314543,
		35.480862, 35.501114, 49.028511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.680340, 35.275593, 49.200016>,  <34.918015, 35.854275, 48.808331>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.680340, 35.275593, 49.200016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068501, 35.261734, 49.295609>,  <35.301399, 35.253418, 49.352962>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.068501, 35.261734, 49.295609>,  <34.680340, 35.275593, 49.200016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.068501, 35.261734, 49.295609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232635, -0.399545, 0.886705,
		0.064761, -0.916059, -0.395781,
		0.970406, -0.034649, 0.238982,
		35.359623, 35.251339, 49.367302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.717049, 34.664310, 49.587360>,  <34.680340, 35.275593, 49.200016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.717049, 34.664310, 49.587360> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037003, 34.876083, 49.700409>,  <35.228977, 35.003147, 49.768238>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.037003, 34.876083, 49.700409>,  <34.717049, 34.664310, 49.587360>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.037003, 34.876083, 49.700409> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125018, -0.313594, 0.941291,
		0.586982, -0.788261, -0.184651,
		0.799889, 0.529436, 0.282621,
		35.276970, 35.034916, 49.785194>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.061558, 34.333710, 50.174812>,  <34.717049, 34.664310, 49.587360>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.061558, 34.333710, 50.174812> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197575, 34.709503, 50.191509>,  <35.279182, 34.934978, 50.201527>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.197575, 34.709503, 50.191509>,  <35.061558, 34.333710, 50.174812>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.197575, 34.709503, 50.191509> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.078550, -0.072605, 0.994263,
		0.937125, -0.334810, -0.098485,
		0.340039, 0.939484, 0.041741,
		35.299587, 34.991348, 50.204033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.506783, 34.281334, 50.643814>,  <35.061558, 34.333710, 50.174812>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.506783, 34.281334, 50.643814> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486385, 34.680779, 50.638519>,  <35.474148, 34.920444, 50.635342>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.486385, 34.680779, 50.638519>,  <35.506783, 34.281334, 50.643814>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.486385, 34.680779, 50.638519> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088398, 0.017713, 0.995928,
		0.994779, 0.049617, -0.089178,
		-0.050995, 0.998611, -0.013234,
		35.471088, 34.980362, 50.634548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.953518, 34.392403, 51.173027>,  <35.506783, 34.281334, 50.643814>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.953518, 34.392403, 51.173027> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719826, 34.714527, 51.132725>,  <35.579609, 34.907803, 51.108543>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.719826, 34.714527, 51.132725>,  <35.953518, 34.392403, 51.173027>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.719826, 34.714527, 51.132725> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099159, 0.052388, 0.993692,
		0.805506, 0.590538, 0.049246,
		-0.584232, 0.805308, -0.100756,
		35.544556, 34.956120, 51.102497>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.301197, 34.938343, 51.675159>,  <35.953518, 34.392403, 51.173027>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.301197, 34.938343, 51.675159> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914780, 35.016644, 51.607697>,  <35.682930, 35.063625, 51.567219>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.914780, 35.016644, 51.607697>,  <36.301197, 34.938343, 51.675159>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.914780, 35.016644, 51.607697> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.161315, 0.053007, 0.985478,
		0.201848, 0.979220, -0.019629,
		-0.966041, 0.195751, -0.168662,
		35.624966, 35.075367, 51.557098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.155884, 35.464737, 52.167652>,  <36.301197, 34.938343, 51.675159>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.155884, 35.464737, 52.167652> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824402, 35.271519, 52.054569>,  <35.625515, 35.155586, 51.986721>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.824402, 35.271519, 52.054569>,  <36.155884, 35.464737, 52.167652>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.824402, 35.271519, 52.054569> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.269078, -0.099056, 0.958011,
		-0.490766, 0.869974, -0.047889,
		-0.828701, -0.483045, -0.282704,
		35.575790, 35.126606, 51.969757>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.490772, 35.850521, 52.492657>,  <36.155884, 35.464737, 52.167652>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.490772, 35.850521, 52.492657> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444901, 35.467850, 52.385616>,  <35.417377, 35.238247, 52.321392>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.444901, 35.467850, 52.385616>,  <35.490772, 35.850521, 52.492657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.444901, 35.467850, 52.385616> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307004, -0.222063, 0.925438,
		-0.944773, 0.188288, -0.268238,
		-0.114683, -0.956680, -0.267604,
		35.410496, 35.180847, 52.305336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867027, 35.815823, 52.063473>,  <35.490772, 35.850521, 52.492657>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867027, 35.815823, 52.063473> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491871, 35.686493, 52.113770>,  <34.266777, 35.608894, 52.143948>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.491871, 35.686493, 52.113770>,  <34.867027, 35.815823, 52.063473>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.491871, 35.686493, 52.113770> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065065, 0.192090, 0.979218,
		-0.340762, 0.926586, -0.159124,
		-0.937895, -0.323327, 0.125745,
		34.210503, 35.589497, 52.151493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.431515, 36.294731, 52.444221>,  <34.867027, 35.815823, 52.063473>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.431515, 36.294731, 52.444221> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258709, 35.947201, 52.540974>,  <34.155025, 35.738682, 52.599026>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.258709, 35.947201, 52.540974>,  <34.431515, 36.294731, 52.444221>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.258709, 35.947201, 52.540974> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185804, 0.176708, 0.966567,
		-0.882522, 0.462510, 0.085092,
		-0.432010, -0.868826, 0.241885,
		34.129105, 35.686554, 52.613541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.691669, 36.280743, 52.424465>,  <34.431515, 36.294731, 52.444221>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.691669, 36.280743, 52.424465> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344967, 36.474522, 52.471874>,  <33.136944, 36.590790, 52.500320>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.344967, 36.474522, 52.471874>,  <33.691669, 36.280743, 52.424465>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.344967, 36.474522, 52.471874> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.073882, 0.359750, -0.930119,
		-0.493230, -0.797430, -0.347607,
		-0.866756, 0.484444, 0.118524,
		33.084942, 36.619854, 52.507431>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.214184, 36.152695, 51.834942>,  <33.691669, 36.280743, 52.424465>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.214184, 36.152695, 51.834942> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139301, 36.514828, 51.987434>,  <33.094372, 36.732105, 52.078930>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.139301, 36.514828, 51.987434>,  <33.214184, 36.152695, 51.834942>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.139301, 36.514828, 51.987434> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.129192, 0.407409, -0.904062,
		-0.973789, -0.119991, -0.193230,
		-0.187202, 0.905329, 0.381229,
		33.083141, 36.786427, 52.101803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.647991, 36.416946, 51.461002>,  <33.214184, 36.152695, 51.834942>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.647991, 36.416946, 51.461002> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854313, 36.724609, 51.611908>,  <32.978107, 36.909206, 51.702454>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.854313, 36.724609, 51.611908>,  <32.647991, 36.416946, 51.461002>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.854313, 36.724609, 51.611908> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112262, 0.375890, -0.919839,
		-0.849317, 0.516814, 0.107540,
		0.515809, 0.769162, 0.377269,
		33.009056, 36.955357, 51.725090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.438839, 36.956661, 51.039974>,  <32.647991, 36.416946, 51.461002>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.438839, 36.956661, 51.039974> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772137, 37.082954, 51.221535>,  <32.972115, 37.158730, 51.330471>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.772137, 37.082954, 51.221535>,  <32.438839, 36.956661, 51.039974>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.772137, 37.082954, 51.221535> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294437, 0.441469, -0.847592,
		-0.467993, 0.839893, 0.274888,
		0.833241, 0.315730, 0.453900,
		33.022110, 37.177673, 51.357704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.366692, 37.578686, 50.935249>,  <32.438839, 36.956661, 51.039974>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.366692, 37.578686, 50.935249> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760216, 37.532249, 50.989853>,  <32.996330, 37.504387, 51.022614>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.760216, 37.532249, 50.989853>,  <32.366692, 37.578686, 50.935249>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.760216, 37.532249, 50.989853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178767, 0.583169, -0.792437,
		0.012391, 0.804012, 0.594483,
		0.983813, -0.116093, 0.136505,
		33.055359, 37.497421, 51.030804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.617943, 38.168633, 50.769314>,  <32.366692, 37.578686, 50.935249>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.617943, 38.168633, 50.769314> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.956741, 37.956203, 50.759884>,  <33.160019, 37.828747, 50.754227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.956741, 37.956203, 50.759884>,  <32.617943, 38.168633, 50.769314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.956741, 37.956203, 50.759884> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.246599, 0.431809, -0.867600,
		0.470941, 0.729041, 0.496703,
		0.846997, -0.531075, -0.023576,
		33.210842, 37.796883, 50.752811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078964, 38.634701, 50.495186>,  <32.617943, 38.168633, 50.769314>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078964, 38.634701, 50.495186> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269951, 38.283627, 50.478783>,  <33.384544, 38.072983, 50.468941>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.269951, 38.283627, 50.478783>,  <33.078964, 38.634701, 50.495186>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.269951, 38.283627, 50.478783> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.369236, 0.242780, -0.897063,
		0.797299, 0.413180, 0.439996,
		0.477471, -0.877690, -0.041008,
		33.413193, 38.020321, 50.466480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.773212, 38.797943, 50.234089>,  <33.078964, 38.634701, 50.495186>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.773212, 38.797943, 50.234089> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679962, 38.417397, 50.153538>,  <33.624012, 38.189068, 50.105206>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.679962, 38.417397, 50.153538>,  <33.773212, 38.797943, 50.234089>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.679962, 38.417397, 50.153538> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.359073, 0.108233, -0.927012,
		0.903724, -0.288421, 0.316379,
		-0.233127, -0.951367, -0.201377,
		33.610023, 38.131985, 50.093124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.264172, 38.635269, 49.756611>,  <33.773212, 38.797943, 50.234089>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.264172, 38.635269, 49.756611> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971367, 38.365715, 49.716537>,  <33.795685, 38.203983, 49.692493>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.971367, 38.365715, 49.716537>,  <34.264172, 38.635269, 49.756611>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.971367, 38.365715, 49.716537> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185417, -0.055554, -0.981088,
		0.655580, -0.736740, 0.165616,
		-0.732008, -0.673890, -0.100184,
		33.751766, 38.163548, 49.686481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.538235, 38.062099, 49.430481>,  <34.264172, 38.635269, 49.756611>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.538235, 38.062099, 49.430481> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143375, 38.078030, 49.368572>,  <33.906460, 38.087589, 49.331429>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.143375, 38.078030, 49.368572>,  <34.538235, 38.062099, 49.430481>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.143375, 38.078030, 49.368572> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147824, -0.140453, -0.978990,
		-0.060730, -0.989286, 0.132760,
		-0.987147, 0.039829, -0.154770,
		33.847233, 38.089977, 49.322140>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.533634, 37.750145, 48.884537>,  <34.538235, 38.062099, 49.430481>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.533634, 37.750145, 48.884537> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163567, 37.901791, 48.877331>,  <33.941525, 37.992779, 48.873009>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.163567, 37.901791, 48.877331>,  <34.533634, 37.750145, 48.884537>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163567, 37.901791, 48.877331> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.085571, -0.254589, -0.963256,
		-0.369776, -0.889636, 0.267981,
		-0.925172, 0.379120, -0.018014,
		33.886013, 38.015526, 48.871925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.179913, 37.288612, 48.367603>,  <34.533634, 37.750145, 48.884537>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.179913, 37.288612, 48.367603> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967152, 37.620056, 48.437439>,  <33.839497, 37.818924, 48.479340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.967152, 37.620056, 48.437439>,  <34.179913, 37.288612, 48.367603>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.967152, 37.620056, 48.437439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.192056, 0.082755, -0.977889,
		-0.824740, -0.553671, 0.115123,
		-0.531901, 0.828613, 0.174588,
		33.807583, 37.868641, 48.489815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.707371, 37.229565, 47.848419>,  <34.179913, 37.288612, 48.367603>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.707371, 37.229565, 47.848419> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709183, 37.615475, 47.953632>,  <33.710270, 37.847019, 48.016762>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.709183, 37.615475, 47.953632>,  <33.707371, 37.229565, 47.848419>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.709183, 37.615475, 47.953632> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.090582, 0.262355, -0.960711,
		-0.995879, -0.019472, 0.088580,
		0.004532, 0.964775, 0.263038,
		33.710541, 37.904907, 48.032543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.170231, 37.493458, 47.478031>,  <33.707371, 37.229565, 47.848419>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.170231, 37.493458, 47.478031> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417511, 37.788193, 47.587494>,  <33.565880, 37.965034, 47.653172>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.417511, 37.788193, 47.587494>,  <33.170231, 37.493458, 47.478031>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.417511, 37.788193, 47.587494> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066848, 0.297609, -0.952345,
		-0.783171, 0.607036, 0.134727,
		0.618203, 0.736842, 0.273658,
		33.602970, 38.009247, 47.669590>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.388405, 37.931995, 47.446613>,  <33.170231, 37.493458, 47.478031>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.388405, 37.931995, 47.446613> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041779, 37.823387, 47.279114>,  <31.833803, 37.758224, 47.178616>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<32.041779, 37.823387, 47.279114>,  <32.388405, 37.931995, 47.446613>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<32.041779, 37.823387, 47.279114> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471231, 0.168824, 0.865702,
		-0.164359, 0.947511, -0.274244,
		-0.866561, -0.271518, -0.418748,
		31.781811, 37.741932, 47.153488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.918512, 38.360538, 47.785847>,  <32.388405, 37.931995, 47.446613>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.918512, 38.360538, 47.785847> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657677, 38.108341, 47.617439>,  <31.501175, 37.957024, 47.516396>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.657677, 38.108341, 47.617439>,  <31.918512, 38.360538, 47.785847>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.657677, 38.108341, 47.617439> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339222, -0.253991, 0.905769,
		-0.678017, 0.733461, -0.048253,
		-0.652090, -0.630495, -0.421016,
		31.462049, 37.919193, 47.491135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.143911, 38.512604, 47.983398>,  <31.918512, 38.360538, 47.785847>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.143911, 38.512604, 47.983398> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.123434, 38.131790, 47.862720>,  <31.111149, 37.903301, 47.790314>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<31.123434, 38.131790, 47.862720>,  <31.143911, 38.512604, 47.983398>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<31.123434, 38.131790, 47.862720> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490144, -0.239252, 0.838164,
		-0.870137, 0.190779, -0.454384,
		-0.051192, -0.952031, -0.301691,
		31.108076, 37.846180, 47.772213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.398355, 38.302406, 47.953770>,  <31.143911, 38.512604, 47.983398>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.398355, 38.302406, 47.953770> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.649286, 37.996452, 48.012295>,  <30.799845, 37.812878, 48.047409>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.649286, 37.996452, 48.012295>,  <30.398355, 38.302406, 47.953770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.649286, 37.996452, 48.012295> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478594, -0.230449, 0.847255,
		-0.614337, -0.601531, -0.510638,
		0.627326, -0.764888, 0.146316,
		30.837484, 37.766987, 48.056190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.029438, 37.805420, 48.281761>,  <30.398355, 38.302406, 47.953770>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.029438, 37.805420, 48.281761> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.400307, 37.681900, 48.366608>,  <30.622828, 37.607788, 48.417515>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.400307, 37.681900, 48.366608>,  <30.029438, 37.805420, 48.281761>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.400307, 37.681900, 48.366608> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307166, -0.302462, 0.902311,
		-0.214472, -0.901755, -0.375287,
		0.927173, -0.308796, 0.212119,
		30.678459, 37.589260, 48.430244>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.930132, 37.179539, 48.671364>,  <30.029438, 37.805420, 48.281761>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.930132, 37.179539, 48.671364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313633, 37.257282, 48.754326>,  <30.543734, 37.303928, 48.804104>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.313633, 37.257282, 48.754326>,  <29.930132, 37.179539, 48.671364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.313633, 37.257282, 48.754326> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.156078, -0.249841, 0.955625,
		0.237556, -0.948579, -0.209200,
		0.958753, 0.194363, 0.207404,
		30.601259, 37.315590, 48.816547>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.164467, 36.772842, 49.210434>,  <29.930132, 37.179539, 48.671364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.164467, 36.772842, 49.210434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438892, 37.062923, 49.233742>,  <30.603548, 37.236973, 49.247726>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<30.438892, 37.062923, 49.233742>,  <30.164467, 36.772842, 49.210434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<30.438892, 37.062923, 49.233742> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116570, -0.188630, 0.975105,
		0.718141, -0.662192, -0.213950,
		0.686064, 0.725204, 0.058272,
		30.644712, 37.280483, 49.251225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.205900, 35.980713, 49.197346>,  <30.164467, 36.772842, 49.210434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.205900, 35.980713, 49.197346> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843887, 35.825233, 49.128262>,  <29.626678, 35.731945, 49.086811>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.843887, 35.825233, 49.128262>,  <30.205900, 35.980713, 49.197346>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.843887, 35.825233, 49.128262> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270321, -0.212129, -0.939110,
		0.328392, -0.896614, 0.297056,
		-0.905033, -0.388697, -0.172712,
		29.572378, 35.708626, 49.076447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.262880, 35.339104, 49.054794>,  <30.205900, 35.980713, 49.197346>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.262880, 35.339104, 49.054794> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929667, 35.473969, 48.879353>,  <29.729738, 35.554886, 48.774086>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.929667, 35.473969, 48.879353>,  <30.262880, 35.339104, 49.054794>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.929667, 35.473969, 48.879353> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337030, -0.319424, -0.885652,
		-0.438709, -0.885602, 0.152458,
		-0.833033, 0.337160, -0.438608,
		29.679756, 35.575115, 48.747768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.040461, 34.763245, 48.611217>,  <30.262880, 35.339104, 49.054794>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.040461, 34.763245, 48.611217> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.865047, 35.099583, 48.484306>,  <29.759800, 35.301388, 48.408161>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.865047, 35.099583, 48.484306>,  <30.040461, 34.763245, 48.611217>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.865047, 35.099583, 48.484306> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.082399, -0.313925, -0.945865,
		-0.894930, -0.440935, 0.068381,
		-0.438532, 0.840849, -0.317274,
		29.733488, 35.351837, 48.389126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.485479, 34.492985, 48.124325>,  <30.040461, 34.763245, 48.611217>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.485479, 34.492985, 48.124325> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514044, 34.887062, 48.061977>,  <29.531183, 35.123508, 48.024570>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.514044, 34.887062, 48.061977>,  <29.485479, 34.492985, 48.124325>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.514044, 34.887062, 48.061977> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147259, -0.144143, -0.978539,
		-0.986517, 0.092832, 0.134785,
		0.071412, 0.985193, -0.155870,
		29.535467, 35.182621, 48.015217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.071268, 34.642757, 47.509827>,  <29.485479, 34.492985, 48.124325>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.071268, 34.642757, 47.509827> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.309639, 34.963058, 47.534035>,  <29.452662, 35.155239, 47.548561>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.309639, 34.963058, 47.534035>,  <29.071268, 34.642757, 47.509827>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.309639, 34.963058, 47.534035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038009, 0.103411, -0.993912,
		-0.802137, 0.590001, 0.092062,
		0.595929, 0.800753, 0.060524,
		29.488419, 35.203285, 47.552193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.772224, 35.204288, 47.008720>,  <29.071268, 34.642757, 47.509827>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.772224, 35.204288, 47.008720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.152607, 35.297314, 47.090302>,  <29.380836, 35.353130, 47.139252>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.152607, 35.297314, 47.090302>,  <28.772224, 35.204288, 47.008720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.152607, 35.297314, 47.090302> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165793, 0.173431, -0.970791,
		-0.261146, 0.956992, 0.126367,
		0.950955, 0.232567, 0.203953,
		29.437893, 35.367085, 47.151489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.884008, 35.945728, 46.618824>,  <28.772224, 35.204288, 47.008720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.884008, 35.945728, 46.618824> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223492, 35.744698, 46.684692>,  <29.427181, 35.624081, 46.724213>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<29.223492, 35.744698, 46.684692>,  <28.884008, 35.945728, 46.618824>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<29.223492, 35.744698, 46.684692> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.290065, 0.181992, -0.939543,
		0.442219, 0.845162, 0.300237,
		0.848707, -0.502573, 0.164672,
		29.478104, 35.593925, 46.734093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<32.846714, 32.875343, 51.152885> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175026, 33.102524, 51.128365>,  <33.372013, 33.238831, 51.113651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.175026, 33.102524, 51.128365>,  <32.846714, 32.875343, 51.152885>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175026, 33.102524, 51.128365> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169067, -0.344024, -0.923614,
		-0.545658, 0.747716, -0.378389,
		0.820776, 0.567950, -0.061305,
		33.421257, 33.272907, 51.109974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786091, 33.242592, 50.621719>,  <32.846714, 32.875343, 51.152885>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786091, 33.242592, 50.621719> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182743, 33.271820, 50.664303>,  <33.420734, 33.289356, 50.689854>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.182743, 33.271820, 50.664303>,  <32.786091, 33.242592, 50.621719>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.182743, 33.271820, 50.664303> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124897, -0.333681, -0.934376,
		-0.032753, 0.939850, -0.340014,
		0.991629, 0.073071, 0.106455,
		33.480232, 33.293743, 50.696239>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005951, 33.637016, 50.069519>,  <32.786091, 33.242592, 50.621719>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005951, 33.637016, 50.069519> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320381, 33.424595, 50.196053>,  <33.509037, 33.297142, 50.271973>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.320381, 33.424595, 50.196053>,  <33.005951, 33.637016, 50.069519>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.320381, 33.424595, 50.196053> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.170758, -0.305280, -0.936828,
		0.594079, 0.790432, -0.149290,
		0.786074, -0.531057, 0.316333,
		33.556202, 33.265278, 50.290951>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.423923, 33.881039, 49.643532>,  <33.005951, 33.637016, 50.069519>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.423923, 33.881039, 49.643532> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590332, 33.547901, 49.789566>,  <33.690178, 33.348019, 49.877186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.590332, 33.547901, 49.789566>,  <33.423923, 33.881039, 49.643532>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.590332, 33.547901, 49.789566> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048114, -0.380759, -0.923422,
		0.908080, 0.401732, -0.118334,
		0.416025, -0.832847, 0.365088,
		33.715141, 33.298046, 49.899094>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.045280, 33.725746, 49.216503>,  <33.423923, 33.881039, 49.643532>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.045280, 33.725746, 49.216503> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921436, 33.390186, 49.395565>,  <33.847130, 33.188850, 49.503002>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.921436, 33.390186, 49.395565>,  <34.045280, 33.725746, 49.216503>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.921436, 33.390186, 49.395565> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047940, -0.483961, -0.873775,
		0.949654, -0.249069, 0.190056,
		-0.309610, -0.838896, 0.447655,
		33.828552, 33.138519, 49.529861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.445988, 33.111870, 48.986485>,  <34.045280, 33.725746, 49.216503>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.445988, 33.111870, 48.986485> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093842, 32.959145, 49.099041>,  <33.882553, 32.867508, 49.166576>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.093842, 32.959145, 49.099041>,  <34.445988, 33.111870, 48.986485>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.093842, 32.959145, 49.099041> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060303, -0.498352, -0.864875,
		0.470455, -0.778371, 0.415705,
		-0.880361, -0.381816, 0.281390,
		33.829735, 32.844601, 49.183456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.443115, 32.399570, 48.865631>,  <34.445988, 33.111870, 48.986485>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.443115, 32.399570, 48.865631> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055832, 32.496143, 48.891777>,  <33.823460, 32.554089, 48.907463>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.055832, 32.496143, 48.891777>,  <34.443115, 32.399570, 48.865631>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.055832, 32.496143, 48.891777> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.174179, -0.463264, -0.868935,
		-0.179513, -0.852699, 0.490591,
		-0.968213, 0.241436, 0.065361,
		33.765369, 32.568573, 48.911385>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154285, 31.860041, 48.773945>,  <34.443115, 32.399570, 48.865631>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154285, 31.860041, 48.773945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863934, 32.123390, 48.694302>,  <33.689724, 32.281399, 48.646515>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.863934, 32.123390, 48.694302>,  <34.154285, 31.860041, 48.773945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.863934, 32.123390, 48.694302> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193966, -0.473663, -0.859081,
		-0.659907, -0.584968, 0.471524,
		-0.725878, 0.658374, -0.199110,
		33.646172, 32.320904, 48.634567>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.642220, 31.439163, 48.446838>,  <34.154285, 31.860041, 48.773945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.642220, 31.439163, 48.446838> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569359, 31.822491, 48.358795>,  <33.525642, 32.052486, 48.305969>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.569359, 31.822491, 48.358795>,  <33.642220, 31.439163, 48.446838>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.569359, 31.822491, 48.358795> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114177, -0.242954, -0.963295,
		-0.976618, -0.150336, 0.153673,
		-0.182154, 0.958317, -0.220109,
		33.514713, 32.109985, 48.292763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.244862, 31.384329, 47.865891>,  <33.642220, 31.439163, 48.446838>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.244862, 31.384329, 47.865891> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.380577, 31.760530, 47.858536>,  <33.462006, 31.986252, 47.854122>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.380577, 31.760530, 47.858536>,  <33.244862, 31.384329, 47.865891>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.380577, 31.760530, 47.858536> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.021998, -0.011608, -0.999691,
		-0.940425, 0.339587, 0.016751,
		0.339288, 0.940503, -0.018387,
		33.482365, 32.042683, 47.853020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.926872, 31.634480, 47.338825>,  <33.244862, 31.384329, 47.865891>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.926872, 31.634480, 47.338825> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.238720, 31.880230, 47.387375>,  <33.425827, 32.027679, 47.416504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.238720, 31.880230, 47.387375>,  <32.926872, 31.634480, 47.338825>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.238720, 31.880230, 47.387375> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189223, -0.046345, -0.980840,
		-0.596982, 0.787649, -0.152386,
		0.779620, 0.614378, 0.121374,
		33.472607, 32.064545, 47.423786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.821915, 32.113182, 46.834591>,  <32.926872, 31.634480, 47.338825>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.821915, 32.113182, 46.834591> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.206966, 32.158096, 46.933163>,  <33.438000, 32.185047, 46.992306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.206966, 32.158096, 46.933163>,  <32.821915, 32.113182, 46.834591>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206966, 32.158096, 46.933163> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263592, -0.179863, -0.947718,
		-0.062093, 0.977262, -0.202741,
		0.962634, 0.112287, 0.246430,
		33.495758, 32.191784, 47.007092>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.205761, 32.650005, 46.949432>,  <32.821915, 32.113182, 46.834591>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.205761, 32.650005, 46.949432> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847658, 32.602997, 46.777527>,  <31.632795, 32.574791, 46.674385>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.847658, 32.602997, 46.777527>,  <32.205761, 32.650005, 46.949432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.847658, 32.602997, 46.777527> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.443620, 0.145614, 0.884306,
		-0.041346, 0.982336, -0.182498,
		-0.895261, -0.117522, -0.429764,
		31.579081, 32.567741, 46.648598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.714846, 33.150414, 47.151459>,  <32.205761, 32.650005, 46.949432>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.714846, 33.150414, 47.151459> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.507883, 32.818378, 47.068283>,  <31.383705, 32.619156, 47.018379>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.507883, 32.818378, 47.068283>,  <31.714846, 33.150414, 47.151459>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.507883, 32.818378, 47.068283> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379792, 0.005002, 0.925058,
		-0.766843, 0.557605, -0.317850,
		-0.517407, -0.830091, -0.207939,
		31.352661, 32.569351, 47.005901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082375, 33.207157, 47.604675>,  <31.714846, 33.150414, 47.151459>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082375, 33.207157, 47.604675> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.065460, 32.831184, 47.469181>,  <31.055311, 32.605602, 47.387886>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.065460, 32.831184, 47.469181>,  <31.082375, 33.207157, 47.604675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.065460, 32.831184, 47.469181> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.642507, -0.234051, 0.729660,
		-0.765112, 0.248497, -0.594015,
		-0.042288, -0.939930, -0.338737,
		31.052774, 32.549206, 47.367561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.316652, 32.965332, 47.632740>,  <31.082375, 33.207157, 47.604675>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.316652, 32.965332, 47.632740> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.540159, 32.634640, 47.606533>,  <30.674263, 32.436222, 47.590809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.540159, 32.634640, 47.606533>,  <30.316652, 32.965332, 47.632740>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.540159, 32.634640, 47.606533> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.464289, -0.377303, 0.801298,
		-0.687179, -0.417319, -0.594667,
		0.558767, -0.826733, -0.065518,
		30.707790, 32.386620, 47.586876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.819887, 32.401051, 47.799156>,  <30.316652, 32.965332, 47.632740>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.819887, 32.401051, 47.799156> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.187895, 32.254757, 47.855446>,  <30.408699, 32.166981, 47.889217>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.187895, 32.254757, 47.855446>,  <29.819887, 32.401051, 47.799156>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.187895, 32.254757, 47.855446> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307975, -0.452777, 0.836747,
		-0.242312, -0.813162, -0.529200,
		0.920020, -0.365734, 0.140720,
		30.463902, 32.145035, 47.897663>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.687401, 31.716160, 47.901295>,  <29.819887, 32.401051, 47.799156>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.687401, 31.716160, 47.901295> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.041212, 31.775845, 48.078087>,  <30.253498, 31.811655, 48.184162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.041212, 31.775845, 48.078087>,  <29.687401, 31.716160, 47.901295>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.041212, 31.775845, 48.078087> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386651, -0.295579, 0.873575,
		0.260987, -0.943594, -0.203755,
		0.884526, 0.149210, 0.441984,
		30.306570, 31.820608, 48.210682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.764780, 31.103609, 48.337242>,  <29.687401, 31.716160, 47.901295>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.764780, 31.103609, 48.337242> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.990267, 31.398760, 48.485703>,  <30.125559, 31.575851, 48.574780>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.990267, 31.398760, 48.485703>,  <29.764780, 31.103609, 48.337242>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.990267, 31.398760, 48.485703> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.341175, -0.201215, 0.918211,
		0.752210, -0.644242, 0.138318,
		0.563719, 0.737879, 0.371155,
		30.159382, 31.620123, 48.597050>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.149317, 30.786015, 48.973846>,  <29.764780, 31.103609, 48.337242>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.149317, 30.786015, 48.973846> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.143549, 31.184715, 49.005535>,  <30.140089, 31.423937, 49.024548>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.143549, 31.184715, 49.005535>,  <30.149317, 30.786015, 48.973846>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.143549, 31.184715, 49.005535> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418492, -0.077968, 0.904868,
		0.908106, -0.020106, 0.418257,
		-0.014418, 0.996753, 0.079218,
		30.139223, 31.483742, 49.029301>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.382219, 30.830784, 49.548080>,  <30.149317, 30.786015, 48.973846>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.382219, 30.830784, 49.548080> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192354, 31.176001, 49.478970>,  <30.078434, 31.383131, 49.437504>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.192354, 31.176001, 49.478970>,  <30.382219, 30.830784, 49.548080>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.192354, 31.176001, 49.478970> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.387023, -0.028348, 0.921634,
		0.790510, 0.504337, 0.347473,
		-0.474665, 0.863041, -0.172781,
		30.049955, 31.434914, 49.427135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.322632, 31.170649, 50.190117>,  <30.382219, 30.830784, 49.548080>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.322632, 31.170649, 50.190117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081402, 31.413933, 49.983669>,  <29.936665, 31.559904, 49.859798>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.081402, 31.413933, 49.983669>,  <30.322632, 31.170649, 50.190117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.081402, 31.413933, 49.983669> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.583954, 0.104160, 0.805077,
		0.543416, 0.786912, 0.292351,
		-0.603073, 0.608211, -0.516122,
		29.900480, 31.596395, 49.828835>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.245195, 31.727821, 50.598274>,  <30.322632, 31.170649, 50.190117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.245195, 31.727821, 50.598274> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.926035, 31.740564, 50.357494>,  <29.734539, 31.748209, 50.213028>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.926035, 31.740564, 50.357494>,  <30.245195, 31.727821, 50.598274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926035, 31.740564, 50.357494> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575806, 0.255161, 0.776750,
		0.178338, 0.966374, -0.185249,
		-0.797899, 0.031856, -0.601948,
		29.686665, 31.750122, 50.176910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.122055, 32.438534, 50.607952>,  <30.245195, 31.727821, 50.598274>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.122055, 32.438534, 50.607952> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.792467, 32.221619, 50.542229>,  <29.594713, 32.091469, 50.502792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.792467, 32.221619, 50.542229>,  <30.122055, 32.438534, 50.607952>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.792467, 32.221619, 50.542229> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424104, 0.397910, 0.813513,
		-0.375775, 0.739996, -0.557852,
		-0.823972, -0.542285, -0.164311,
		29.545275, 32.058933, 50.492935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.609528, 32.886032, 50.948135>,  <30.122055, 32.438534, 50.607952>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.609528, 32.886032, 50.948135> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.442074, 32.526577, 50.895679>,  <29.341602, 32.310905, 50.864204>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.442074, 32.526577, 50.895679>,  <29.609528, 32.886032, 50.948135>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.442074, 32.526577, 50.895679> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519188, 0.118345, 0.846427,
		-0.745111, 0.422428, -0.516105,
		-0.418633, -0.898638, -0.131139,
		29.316484, 32.256985, 50.856339>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.918844, 33.029293, 51.231140>,  <29.609528, 32.886032, 50.948135>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.918844, 33.029293, 51.231140> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.936724, 32.629761, 51.223839>,  <28.947453, 32.390041, 51.219456>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.936724, 32.629761, 51.223839>,  <28.918844, 33.029293, 51.231140>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.936724, 32.629761, 51.223839> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.572387, -0.040584, 0.818978,
		-0.818764, -0.026159, -0.573534,
		0.044700, -0.998834, -0.018255,
		28.950134, 32.330112, 51.218361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.539488, 33.652691, 51.047493>,  <28.918844, 33.029293, 51.231140>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.539488, 33.652691, 51.047493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.592201, 34.015297, 51.207924>,  <28.623829, 34.232861, 51.304180>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.592201, 34.015297, 51.207924>,  <28.539488, 33.652691, 51.047493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592201, 34.015297, 51.207924> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365775, 0.331581, -0.869633,
		-0.921326, 0.261307, -0.287884,
		0.131785, 0.906517, 0.401074,
		28.631737, 34.287251, 51.328247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.377691, 34.058975, 50.503994>,  <28.539488, 33.652691, 51.047493>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.377691, 34.058975, 50.503994> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.531263, 34.325775, 50.759403>,  <28.623407, 34.485855, 50.912651>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.531263, 34.325775, 50.759403>,  <28.377691, 34.058975, 50.503994>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.531263, 34.325775, 50.759403> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174366, 0.626709, -0.759495,
		-0.906749, 0.402931, 0.124312,
		0.383931, 0.666995, 0.638525,
		28.646442, 34.525875, 50.950962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.013508, 34.662766, 50.478378>,  <28.377691, 34.058975, 50.503994>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.013508, 34.662766, 50.478378> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.390995, 34.743553, 50.583145>,  <28.617487, 34.792027, 50.646004>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.390995, 34.743553, 50.583145>,  <28.013508, 34.662766, 50.478378>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.390995, 34.743553, 50.583145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119064, 0.531354, -0.838741,
		-0.308574, 0.822721, 0.477401,
		0.943719, 0.201972, 0.261918,
		28.674110, 34.804146, 50.661720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.125109, 35.441322, 50.546932>,  <28.013508, 34.662766, 50.478378>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.125109, 35.441322, 50.546932> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.483416, 35.276939, 50.479156>,  <28.698400, 35.178310, 50.438492>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.483416, 35.276939, 50.479156>,  <28.125109, 35.441322, 50.546932>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.483416, 35.276939, 50.479156> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.102999, 0.562681, -0.820232,
		0.432422, 0.717287, 0.546361,
		0.895769, -0.410961, -0.169436,
		28.752146, 35.153652, 50.428326>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.493916, 36.089375, 50.371349>,  <28.125109, 35.441322, 50.546932>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.493916, 36.089375, 50.371349> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678156, 35.758415, 50.242813>,  <28.788700, 35.559841, 50.165691>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<28.678156, 35.758415, 50.242813>,  <28.493916, 36.089375, 50.371349>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<28.678156, 35.758415, 50.242813> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233041, 0.462056, -0.855684,
		0.856470, 0.319242, 0.405641,
		0.460600, -0.827398, -0.321341,
		28.816336, 35.510197, 50.146412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.189838, 36.369801, 50.083874>,  <28.493916, 36.089375, 50.371349>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.189838, 36.369801, 50.083874> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.144142, 35.997105, 49.945999>,  <29.116724, 35.773487, 49.863274>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.144142, 35.997105, 49.945999>,  <29.189838, 36.369801, 50.083874>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.144142, 35.997105, 49.945999> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.513990, 0.241479, -0.823105,
		0.850155, -0.271198, 0.451318,
		-0.114241, -0.931740, -0.344688,
		29.109869, 35.717583, 49.842594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.847126, 36.221577, 49.760509>,  <29.189838, 36.369801, 50.083874>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.847126, 36.221577, 49.760509> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.546595, 35.995861, 49.623642>,  <29.366276, 35.860432, 49.541523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.546595, 35.995861, 49.623642>,  <29.847126, 36.221577, 49.760509>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.546595, 35.995861, 49.623642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365703, 0.075584, -0.927657,
		0.549333, -0.822107, 0.149575,
		-0.751329, -0.564293, -0.342168,
		29.321196, 35.826572, 49.520992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.507933, 36.545910, 49.800964>,  <29.847126, 36.221577, 49.760509>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.507933, 36.545910, 49.800964> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640753, 36.919830, 49.750553>,  <30.720446, 37.144184, 49.720306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.640753, 36.919830, 49.750553>,  <30.507933, 36.545910, 49.800964>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.640753, 36.919830, 49.750553> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125801, 0.176305, 0.976264,
		0.934835, -0.308315, 0.176141,
		0.332051, 0.934804, -0.126030,
		30.740368, 37.200272, 49.712746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.034264, 36.657196, 50.215057>,  <30.507933, 36.545910, 49.800964>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.034264, 36.657196, 50.215057> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.901241, 37.030060, 50.157799>,  <30.821428, 37.253777, 50.123444>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.901241, 37.030060, 50.157799>,  <31.034264, 36.657196, 50.215057>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.901241, 37.030060, 50.157799> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047612, 0.134994, 0.989702,
		0.941881, 0.335947, -0.000511,
		-0.332556, 0.932157, -0.143144,
		30.801474, 37.309708, 50.114857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.437771, 37.090572, 50.684433>,  <31.034264, 36.657196, 50.215057>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.437771, 37.090572, 50.684433> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.102240, 37.284435, 50.585262>,  <30.900921, 37.400753, 50.525761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.102240, 37.284435, 50.585262>,  <31.437771, 37.090572, 50.684433>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.102240, 37.284435, 50.585262> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184961, 0.174603, 0.967111,
		0.512009, 0.857099, -0.056819,
		-0.838830, 0.484660, -0.247929,
		30.850590, 37.429832, 50.510883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.393299, 37.489532, 51.213223>,  <31.437771, 37.090572, 50.684433>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.393299, 37.489532, 51.213223> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.015295, 37.484077, 51.082520>,  <30.788492, 37.480804, 51.004097>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<31.015295, 37.484077, 51.082520>,  <31.393299, 37.489532, 51.213223>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<31.015295, 37.484077, 51.082520> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320392, 0.239038, 0.916630,
		0.065610, 0.970915, -0.230262,
		-0.945010, -0.013634, -0.326756,
		30.731792, 37.479988, 50.984493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.139101, 38.197205, 51.418579>,  <31.393299, 37.489532, 51.213223>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.139101, 38.197205, 51.418579> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.839455, 37.942413, 51.345818>,  <30.659666, 37.789539, 51.302162>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.839455, 37.942413, 51.345818>,  <31.139101, 38.197205, 51.418579>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.839455, 37.942413, 51.345818> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535877, 0.421268, 0.731689,
		-0.389436, 0.645599, -0.656918,
		-0.749116, -0.636974, -0.181905,
		30.614719, 37.751320, 51.291245>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.545088, 38.577190, 51.269119>,  <31.139101, 38.197205, 51.418579>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.545088, 38.577190, 51.269119> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.386620, 38.220112, 51.355038>,  <30.291538, 38.005863, 51.406590>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<30.386620, 38.220112, 51.355038>,  <30.545088, 38.577190, 51.269119>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<30.386620, 38.220112, 51.355038> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.662877, 0.439950, 0.605837,
		-0.635330, 0.097632, -0.766045,
		-0.396170, -0.892699, 0.214795,
		30.267769, 37.952301, 51.419476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.834429, 38.742073, 51.298523>,  <30.545088, 38.577190, 51.269119>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.834429, 38.742073, 51.298523> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.911654, 38.411907, 51.510719>,  <29.957989, 38.213806, 51.638035>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.911654, 38.411907, 51.510719>,  <29.834429, 38.742073, 51.298523>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.911654, 38.411907, 51.510719> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.505061, 0.379929, 0.774963,
		-0.841214, -0.417543, -0.343536,
		0.193061, -0.825416, 0.530486,
		29.969572, 38.164284, 51.669865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.273251, 38.756378, 51.771622>,  <29.834429, 38.742073, 51.298523>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.273251, 38.756378, 51.771622> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.544014, 38.501091, 51.918304>,  <29.706472, 38.347919, 52.006313>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.544014, 38.501091, 51.918304>,  <29.273251, 38.756378, 51.771622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.544014, 38.501091, 51.918304> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.272030, 0.246020, 0.930309,
		-0.683957, -0.729488, -0.007082,
		0.676907, -0.638217, 0.366709,
		29.747086, 38.309628, 52.028316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.970074, 38.406521, 52.310829>,  <29.273251, 38.756378, 51.771622>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.970074, 38.406521, 52.310829> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.359318, 38.378571, 52.398624>,  <29.592863, 38.361801, 52.451302>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<29.359318, 38.378571, 52.398624>,  <28.970074, 38.406521, 52.310829>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<29.359318, 38.378571, 52.398624> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179986, 0.364002, 0.913842,
		-0.143753, -0.928773, 0.341636,
		0.973108, -0.069878, 0.219492,
		29.651251, 38.357609, 52.464474>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<36.195137, 35.608337, 38.065487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533821, 35.642826, 38.275497>,  <36.737030, 35.663521, 38.401505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.533821, 35.642826, 38.275497>,  <36.195137, 35.608337, 38.065487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.533821, 35.642826, 38.275497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.508187, -0.161193, 0.846028,
		0.157577, -0.983149, -0.092666,
		0.846709, 0.086222, 0.525024,
		36.787834, 35.668694, 38.433006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.204098, 34.991867, 38.543449>,  <36.195137, 35.608337, 38.065487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.204098, 34.991867, 38.543449> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407761, 35.314949, 38.662365>,  <36.529957, 35.508797, 38.733715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.407761, 35.314949, 38.662365>,  <36.204098, 34.991867, 38.543449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407761, 35.314949, 38.662365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501984, -0.001894, 0.864875,
		0.699123, -0.589590, 0.404488,
		0.509156, 0.807701, 0.297289,
		36.560509, 35.557259, 38.751553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.474400, 34.800270, 39.106514>,  <36.204098, 34.991867, 38.543449>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.474400, 34.800270, 39.106514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456089, 35.199844, 39.108940>,  <36.445103, 35.439587, 39.110397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.456089, 35.199844, 39.108940>,  <36.474400, 34.800270, 39.106514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.456089, 35.199844, 39.108940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.684466, -0.035789, 0.728166,
		0.727606, 0.029180, 0.685374,
		-0.045777, 0.998934, 0.006068,
		36.442356, 35.499523, 39.110760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686901, 35.029015, 39.851673>,  <36.474400, 34.800270, 39.106514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686901, 35.029015, 39.851673> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481846, 35.323879, 39.675587>,  <36.358810, 35.500797, 39.569935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.481846, 35.323879, 39.675587>,  <36.686901, 35.029015, 39.851673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.481846, 35.323879, 39.675587> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567568, 0.093773, 0.817969,
		0.644257, 0.669177, 0.370318,
		-0.512640, 0.737163, -0.440217,
		36.328053, 35.545029, 39.543522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.601799, 35.576591, 40.366814>,  <36.686901, 35.029015, 39.851673>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.601799, 35.576591, 40.366814> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329655, 35.681297, 40.092999>,  <36.166367, 35.744122, 39.928711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.329655, 35.681297, 40.092999>,  <36.601799, 35.576591, 40.366814>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.329655, 35.681297, 40.092999> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.602823, 0.331307, 0.725838,
		0.416790, 0.906485, -0.067611,
		-0.680361, 0.261764, -0.684535,
		36.125546, 35.759827, 39.887638>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.271938, 36.023796, 40.657406>,  <36.601799, 35.576591, 40.366814>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.271938, 36.023796, 40.657406> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985874, 35.952888, 40.386963>,  <35.814236, 35.910343, 40.224697>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.985874, 35.952888, 40.386963>,  <36.271938, 36.023796, 40.657406>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.985874, 35.952888, 40.386963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.697771, 0.237419, 0.675831,
		0.040718, 0.955096, -0.293485,
		-0.715163, -0.177267, -0.676105,
		35.771324, 35.899708, 40.184132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.955612, 36.593071, 40.620499>,  <36.271938, 36.023796, 40.657406>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.955612, 36.593071, 40.620499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703415, 36.309822, 40.493355>,  <35.552097, 36.139874, 40.417068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.703415, 36.309822, 40.493355>,  <35.955612, 36.593071, 40.620499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.703415, 36.309822, 40.493355> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.695900, 0.334323, 0.635572,
		-0.343797, 0.621922, -0.703574,
		-0.630497, -0.708125, -0.317856,
		35.514267, 36.097385, 40.397999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.227650, 36.932682, 40.407745>,  <35.955612, 36.593071, 40.620499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.227650, 36.932682, 40.407745> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153675, 36.546898, 40.483242>,  <35.109291, 36.315430, 40.528542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.153675, 36.546898, 40.483242>,  <35.227650, 36.932682, 40.407745>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.153675, 36.546898, 40.483242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.771104, 0.261468, 0.580546,
		-0.609261, -0.038178, -0.792050,
		-0.184932, -0.964457, 0.188742,
		35.098194, 36.257561, 40.539864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.513264, 36.914307, 40.484177>,  <35.227650, 36.932682, 40.407745>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.513264, 36.914307, 40.484177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633282, 36.571918, 40.652599>,  <34.705292, 36.366486, 40.753654>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.633282, 36.571918, 40.652599>,  <34.513264, 36.914307, 40.484177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.633282, 36.571918, 40.652599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686541, 0.112684, 0.718306,
		-0.662294, -0.504598, -0.553848,
		0.300046, -0.855969, 0.421058,
		34.723297, 36.315128, 40.778915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875202, 36.606483, 40.645454>,  <34.513264, 36.914307, 40.484177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875202, 36.606483, 40.645454> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134109, 36.406742, 40.875824>,  <34.289455, 36.286896, 41.014046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.134109, 36.406742, 40.875824>,  <33.875202, 36.606483, 40.645454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.134109, 36.406742, 40.875824> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.628344, 0.078212, 0.773994,
		-0.431543, -0.862859, -0.263144,
		0.647267, -0.499356, 0.575924,
		34.328289, 36.256935, 41.048603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.432377, 36.094364, 40.869453>,  <33.875202, 36.606483, 40.645454>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.432377, 36.094364, 40.869453> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739033, 36.137585, 41.122620>,  <33.923027, 36.163517, 41.274521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.739033, 36.137585, 41.122620>,  <33.432377, 36.094364, 40.869453>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.739033, 36.137585, 41.122620> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.641555, 0.089271, 0.761865,
		0.025822, -0.990129, 0.137762,
		0.766642, 0.108055, 0.632917,
		33.969025, 36.170002, 41.312496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.234020, 35.600742, 41.395809>,  <33.432377, 36.094364, 40.869453>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.234020, 35.600742, 41.395809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478577, 35.862518, 41.573761>,  <33.625309, 36.019585, 41.680531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.478577, 35.862518, 41.573761>,  <33.234020, 35.600742, 41.395809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.478577, 35.862518, 41.573761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630722, 0.063477, 0.773408,
		0.477906, -0.753448, 0.451577,
		0.611388, 0.654436, 0.444880,
		33.661991, 36.058849, 41.707226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.668655, 35.191982, 41.444553>,  <33.234020, 35.600742, 41.395809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.668655, 35.191982, 41.444553> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288067, 35.210308, 41.322834>,  <32.059711, 35.221306, 41.249802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.288067, 35.210308, 41.322834>,  <32.668655, 35.191982, 41.444553>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.288067, 35.210308, 41.322834> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291791, -0.179785, -0.939434,
		-0.097749, -0.982638, 0.157692,
		-0.951474, 0.045815, -0.304299,
		32.002625, 35.224052, 41.231544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.518143, 34.651711, 41.091595>,  <32.668655, 35.191982, 41.444553>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.518143, 34.651711, 41.091595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250740, 34.912075, 40.947704>,  <32.090298, 35.068295, 40.861370>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.250740, 34.912075, 40.947704>,  <32.518143, 34.651711, 41.091595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.250740, 34.912075, 40.947704> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295559, -0.211333, -0.931656,
		-0.682451, -0.729143, -0.051106,
		-0.668510, 0.650914, -0.359729,
		32.050186, 35.107349, 40.839787>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.207912, 34.326347, 40.522572>,  <32.518143, 34.651711, 41.091595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.207912, 34.326347, 40.522572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156658, 34.721733, 40.490261>,  <32.125904, 34.958965, 40.470875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.156658, 34.721733, 40.490261>,  <32.207912, 34.326347, 40.522572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.156658, 34.721733, 40.490261> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104338, -0.067558, -0.992244,
		-0.986252, -0.135573, -0.094477,
		-0.128139, 0.988461, -0.080775,
		32.118217, 35.018272, 40.466030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.771795, 34.372948, 39.938145>,  <32.207912, 34.326347, 40.522572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.771795, 34.372948, 39.938145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893579, 34.753471, 39.957413>,  <31.966650, 34.981785, 39.968975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.893579, 34.753471, 39.957413>,  <31.771795, 34.372948, 39.938145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.893579, 34.753471, 39.957413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.083758, 0.023640, -0.996206,
		-0.948835, 0.307342, -0.072482,
		0.304463, 0.951305, 0.048173,
		31.984919, 35.038864, 39.971863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.340990, 34.765282, 39.528778>,  <31.771795, 34.372948, 39.938145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.340990, 34.765282, 39.528778> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676775, 34.979717, 39.564365>,  <31.878246, 35.108379, 39.585716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.676775, 34.979717, 39.564365>,  <31.340990, 34.765282, 39.528778>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.676775, 34.979717, 39.564365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.046064, 0.092926, -0.994607,
		-0.541462, 0.839033, 0.053313,
		0.839462, 0.536086, 0.088965,
		31.928614, 35.140545, 39.591053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.232487, 35.408215, 39.168125>,  <31.340990, 34.765282, 39.528778>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.232487, 35.408215, 39.168125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629536, 35.367752, 39.194855>,  <31.867765, 35.343475, 39.210892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.629536, 35.367752, 39.194855>,  <31.232487, 35.408215, 39.168125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.629536, 35.367752, 39.194855> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084145, 0.178066, -0.980414,
		0.087276, 0.978805, 0.185264,
		0.992624, -0.101155, 0.066820,
		31.927322, 35.337406, 39.214901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.545645, 35.998802, 38.815464>,  <31.232487, 35.408215, 39.168125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.545645, 35.998802, 38.815464> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822701, 35.711533, 38.842216>,  <31.988934, 35.539169, 38.858269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.822701, 35.711533, 38.842216>,  <31.545645, 35.998802, 38.815464>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.822701, 35.711533, 38.842216> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160568, 0.063131, -0.985004,
		0.703183, 0.692993, 0.159043,
		0.692641, -0.718175, 0.066880,
		32.030491, 35.496078, 38.862282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.127918, 36.277195, 38.429310>,  <31.545645, 35.998802, 38.815464>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.127918, 36.277195, 38.429310> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248955, 35.898342, 38.471973>,  <32.321579, 35.671032, 38.497574>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.248955, 35.898342, 38.471973>,  <32.127918, 36.277195, 38.429310>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.248955, 35.898342, 38.471973> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.291587, -0.014554, -0.956434,
		0.907422, 0.320512, 0.271768,
		0.302593, -0.947133, 0.106663,
		32.339733, 35.614201, 38.503971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.754181, 36.267075, 38.216969>,  <32.127918, 36.277195, 38.429310>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.754181, 36.267075, 38.216969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618023, 35.893333, 38.174812>,  <32.536327, 35.669086, 38.149521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.618023, 35.893333, 38.174812>,  <32.754181, 36.267075, 38.216969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.618023, 35.893333, 38.174812> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296323, -0.000227, -0.955088,
		0.892369, -0.356338, 0.276949,
		-0.340397, -0.934357, -0.105389,
		32.515903, 35.613026, 38.143196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.248562, 35.870430, 37.889866>,  <32.754181, 36.267075, 38.216969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.248562, 35.870430, 37.889866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905472, 35.672329, 37.834682>,  <32.699615, 35.553471, 37.801575>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.905472, 35.672329, 37.834682>,  <33.248562, 35.870430, 37.889866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.905472, 35.672329, 37.834682> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.151569, 0.012810, -0.988364,
		0.491255, -0.868656, 0.064077,
		-0.857727, -0.495250, -0.137954,
		32.648155, 35.523754, 37.793297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.279827, 35.241077, 37.604759>,  <33.248562, 35.870430, 37.889866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.279827, 35.241077, 37.604759> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922375, 35.371178, 37.481064>,  <32.707901, 35.449238, 37.406845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.922375, 35.371178, 37.481064>,  <33.279827, 35.241077, 37.604759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.922375, 35.371178, 37.481064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.242592, -0.229637, -0.942558,
		-0.377578, -0.917323, 0.126309,
		-0.893635, 0.325248, -0.309241,
		32.654285, 35.468754, 37.388290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.174381, 34.716480, 37.118980>,  <33.279827, 35.241077, 37.604759>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.174381, 34.716480, 37.118980> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924248, 35.020329, 37.047504>,  <32.774166, 35.202637, 37.004620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.924248, 35.020329, 37.047504>,  <33.174381, 34.716480, 37.118980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.924248, 35.020329, 37.047504> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.232076, -0.037587, -0.971971,
		-0.745050, -0.649274, -0.152786,
		-0.625333, 0.759625, -0.178685,
		32.736649, 35.248215, 36.993900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.256897, 34.654915, 36.387585>,  <33.174381, 34.716480, 37.118980>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.256897, 34.654915, 36.387585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472168, 34.479137, 36.675266>,  <33.601330, 34.373669, 36.847874>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.472168, 34.479137, 36.675266>,  <33.256897, 34.654915, 36.387585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.472168, 34.479137, 36.675266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522102, -0.496057, -0.693785,
		0.661648, 0.748875, -0.037528,
		0.538174, -0.439448, 0.719204,
		33.633621, 34.347301, 36.891026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.000656, 34.555584, 36.214607>,  <33.256897, 34.654915, 36.387585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.000656, 34.555584, 36.214607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929729, 34.277561, 36.493305>,  <33.887173, 34.110748, 36.660522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.929729, 34.277561, 36.493305>,  <34.000656, 34.555584, 36.214607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.929729, 34.277561, 36.493305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518240, -0.667801, -0.534293,
		0.836652, 0.266342, 0.478619,
		-0.177318, -0.695056, 0.696746,
		33.876534, 34.069046, 36.702328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.587017, 34.176731, 36.599594>,  <34.000656, 34.555584, 36.214607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.587017, 34.176731, 36.599594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286671, 33.912712, 36.608902>,  <34.106464, 33.754299, 36.614487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.286671, 33.912712, 36.608902>,  <34.587017, 34.176731, 36.599594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.286671, 33.912712, 36.608902> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.629550, -0.725935, -0.276920,
		0.199676, -0.193277, 0.960611,
		-0.750864, -0.660047, 0.023274,
		34.061413, 33.714699, 36.615883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.163761, 33.944984, 36.358532>,  <34.587017, 34.176731, 36.599594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.163761, 33.944984, 36.358532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315849, 33.644341, 36.574127>,  <35.407104, 33.463955, 36.703484>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.315849, 33.644341, 36.574127>,  <35.163761, 33.944984, 36.358532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.315849, 33.644341, 36.574127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740088, 0.102262, 0.664690,
		-0.554706, -0.651631, -0.517376,
		0.380225, -0.751611, 0.538990,
		35.429916, 33.418858, 36.735825>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.708725, 33.377998, 36.449047>,  <35.163761, 33.944984, 36.358532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.708725, 33.377998, 36.449047> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955872, 33.377975, 36.763561>,  <35.104160, 33.377964, 36.952271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.955872, 33.377975, 36.763561>,  <34.708725, 33.377998, 36.449047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.955872, 33.377975, 36.763561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.784847, -0.060514, 0.616728,
		0.047548, -0.998167, -0.037431,
		0.617862, -0.000053, 0.786286,
		35.141232, 33.377960, 36.999447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.373440, 32.980728, 36.996899>,  <34.708725, 33.377998, 36.449047>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.373440, 32.980728, 36.996899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666508, 33.151611, 37.208817>,  <34.842350, 33.254143, 37.335968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.666508, 33.151611, 37.208817>,  <34.373440, 32.980728, 36.996899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.666508, 33.151611, 37.208817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606221, 0.055840, 0.793333,
		0.309335, -0.902427, 0.299895,
		0.732672, 0.427209, 0.529797,
		34.886311, 33.279774, 37.367756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.404945, 32.614960, 37.658573>,  <34.373440, 32.980728, 36.996899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.404945, 32.614960, 37.658573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577644, 32.967262, 37.736416>,  <34.681263, 33.178642, 37.783123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.577644, 32.967262, 37.736416>,  <34.404945, 32.614960, 37.658573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.577644, 32.967262, 37.736416> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.412191, 0.000741, 0.911097,
		0.802307, -0.473576, 0.363359,
		0.431743, 0.880753, 0.194609,
		34.707169, 33.231487, 37.794800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.009651, 32.605263, 38.206684>,  <34.404945, 32.614960, 37.658573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.009651, 32.605263, 38.206684> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849552, 32.971756, 38.199604>,  <34.753490, 33.191654, 38.195358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.849552, 32.971756, 38.199604>,  <35.009651, 32.605263, 38.206684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.849552, 32.971756, 38.199604> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109785, -0.028770, 0.993539,
		0.909806, 0.399607, 0.112104,
		-0.400250, 0.916235, -0.017696,
		34.729477, 33.246628, 38.194294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.396267, 32.929153, 38.827423>,  <35.009651, 32.605263, 38.206684>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.396267, 32.929153, 38.827423> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085182, 33.161251, 38.730694>,  <34.898529, 33.300510, 38.672657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.085182, 33.161251, 38.730694>,  <35.396267, 32.929153, 38.827423>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.085182, 33.161251, 38.730694> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.280176, 0.024410, 0.959638,
		0.562724, 0.814079, 0.143585,
		-0.777716, 0.580241, -0.241821,
		34.851868, 33.335323, 38.658146>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.454884, 33.502583, 39.226715>,  <35.396267, 32.929153, 38.827423>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.454884, 33.502583, 39.226715> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066753, 33.505753, 39.130043>,  <34.833874, 33.507656, 39.072041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.066753, 33.505753, 39.130043>,  <35.454884, 33.502583, 39.226715>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.066753, 33.505753, 39.130043> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239930, 0.092667, 0.966357,
		0.030058, 0.995666, -0.088015,
		-0.970325, 0.007929, -0.241676,
		34.775658, 33.508133, 39.057541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.175510, 33.948784, 39.679108>,  <35.454884, 33.502583, 39.226715>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.175510, 33.948784, 39.679108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854420, 33.731850, 39.579899>,  <34.661766, 33.601688, 39.520374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.854420, 33.731850, 39.579899>,  <35.175510, 33.948784, 39.679108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.854420, 33.731850, 39.579899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283182, -0.019363, 0.958871,
		-0.524828, 0.839942, -0.138035,
		-0.802722, -0.542331, -0.248019,
		34.613602, 33.569149, 39.505493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634903, 34.281075, 40.003181>,  <35.175510, 33.948784, 39.679108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634903, 34.281075, 40.003181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453846, 33.932392, 39.928097>,  <34.345211, 33.723183, 39.883045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.453846, 33.932392, 39.928097>,  <34.634903, 34.281075, 40.003181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.453846, 33.932392, 39.928097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.487221, 0.065472, 0.870821,
		-0.746814, 0.485628, -0.454351,
		-0.452642, -0.871710, -0.187712,
		34.318054, 33.670879, 39.871784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.898067, 34.330086, 40.209854>,  <34.634903, 34.281075, 40.003181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.898067, 34.330086, 40.209854> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955318, 33.934219, 40.206318>,  <33.989670, 33.696701, 40.204197>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.955318, 33.934219, 40.206318>,  <33.898067, 34.330086, 40.209854>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.955318, 33.934219, 40.206318> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342551, -0.057915, 0.937712,
		-0.928533, -0.131184, -0.347300,
		0.143127, -0.989665, -0.008839,
		33.998257, 33.637321, 40.203667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.221516, 34.006763, 40.328354>,  <33.898067, 34.330086, 40.209854>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.221516, 34.006763, 40.328354> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475292, 33.710178, 40.415730>,  <33.627556, 33.532227, 40.468155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.475292, 33.710178, 40.415730>,  <33.221516, 34.006763, 40.328354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.475292, 33.710178, 40.415730> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.532306, -0.214188, 0.819008,
		-0.560480, -0.635886, -0.530576,
		0.634439, -0.741466, 0.218438,
		33.665623, 33.487740, 40.481262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.830887, 33.395275, 40.425735>,  <33.221516, 34.006763, 40.328354>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.830887, 33.395275, 40.425735> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175568, 33.341602, 40.621479>,  <33.382374, 33.309399, 40.738926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.175568, 33.341602, 40.621479>,  <32.830887, 33.395275, 40.425735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.175568, 33.341602, 40.621479> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507065, -0.263849, 0.820529,
		0.019012, -0.955185, -0.295400,
		0.861698, -0.134187, 0.489357,
		33.434078, 33.301346, 40.768288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.828796, 32.735611, 40.759861>,  <32.830887, 33.395275, 40.425735>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.828796, 32.735611, 40.759861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124813, 32.920231, 40.955536>,  <33.302425, 33.031002, 41.072941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.124813, 32.920231, 40.955536>,  <32.828796, 32.735611, 40.759861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124813, 32.920231, 40.955536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.451646, -0.197894, 0.869974,
		0.498345, -0.864758, 0.062007,
		0.740046, 0.461553, 0.489184,
		33.346828, 33.058697, 41.102291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.049313, 32.298416, 41.321262>,  <32.828796, 32.735611, 40.759861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.049313, 32.298416, 41.321262> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246059, 32.621078, 41.452332>,  <33.364109, 32.814674, 41.530975>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.246059, 32.621078, 41.452332>,  <33.049313, 32.298416, 41.321262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.246059, 32.621078, 41.452332> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.198982, -0.262243, 0.944264,
		0.847627, -0.529656, 0.031520,
		0.491869, 0.806656, 0.327676,
		33.393620, 32.863075, 41.550636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370281, 32.049980, 41.862976>,  <33.049313, 32.298416, 41.321262>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370281, 32.049980, 41.862976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331207, 32.447346, 41.886940>,  <33.307762, 32.685764, 41.901318>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.331207, 32.447346, 41.886940>,  <33.370281, 32.049980, 41.862976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.331207, 32.447346, 41.886940> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371520, -0.092246, 0.923831,
		0.923272, 0.067986, 0.378083,
		-0.097684, 0.993413, 0.059910,
		33.301903, 32.745369, 41.904911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.763218, 32.268829, 42.424652>,  <33.370281, 32.049980, 41.862976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.763218, 32.268829, 42.424652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501938, 32.568722, 42.382256>,  <33.345169, 32.748657, 42.356819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.501938, 32.568722, 42.382256>,  <33.763218, 32.268829, 42.424652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.501938, 32.568722, 42.382256> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292520, -0.120754, 0.948605,
		0.698396, 0.650636, 0.298188,
		-0.653203, 0.749728, -0.105990,
		33.305977, 32.793640, 42.350460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.875736, 32.703182, 43.016819>,  <33.763218, 32.268829, 42.424652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.875736, 32.703182, 43.016819> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511253, 32.796818, 42.881229>,  <33.292564, 32.852997, 42.799873>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.511253, 32.796818, 42.881229>,  <33.875736, 32.703182, 43.016819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.511253, 32.796818, 42.881229> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.358172, -0.043697, 0.932633,
		0.203503, 0.971234, 0.123659,
		-0.911208, 0.234085, -0.338977,
		33.237892, 32.867043, 42.779537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.653633, 33.171303, 43.475861>,  <33.875736, 32.703182, 43.016819>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.653633, 33.171303, 43.475861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328621, 33.013527, 43.304180>,  <33.133614, 32.918861, 43.201172>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.328621, 33.013527, 43.304180>,  <33.653633, 33.171303, 43.475861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.328621, 33.013527, 43.304180> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457647, -0.024379, 0.888800,
		-0.361037, 0.918600, -0.160703,
		-0.812534, -0.394435, -0.429197,
		33.084862, 32.895195, 43.175423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.126011, 33.501053, 43.762760>,  <33.653633, 33.171303, 43.475861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.126011, 33.501053, 43.762760> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907810, 33.227604, 43.568817>,  <32.776890, 33.063534, 43.452454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.907810, 33.227604, 43.568817>,  <33.126011, 33.501053, 43.762760>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.907810, 33.227604, 43.568817> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.599666, -0.085793, 0.795639,
		-0.585514, 0.724776, -0.363145,
		-0.545504, -0.683623, -0.484856,
		32.744160, 33.022518, 43.423359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.370743, 33.730419, 43.704605>,  <33.126011, 33.501053, 43.762760>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.370743, 33.730419, 43.704605> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398468, 33.331989, 43.682594>,  <32.415104, 33.092930, 43.669388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.398468, 33.331989, 43.682594>,  <32.370743, 33.730419, 43.704605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.398468, 33.331989, 43.682594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.538862, -0.083799, 0.838216,
		-0.839538, -0.028446, -0.542555,
		0.069310, -0.996077, -0.055024,
		32.419262, 33.033165, 43.666088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.759312, 33.577606, 43.792442>,  <32.370743, 33.730419, 43.704605>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.759312, 33.577606, 43.792442> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959482, 33.247719, 43.897823>,  <32.079586, 33.049786, 43.961052>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.959482, 33.247719, 43.897823>,  <31.759312, 33.577606, 43.792442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.959482, 33.247719, 43.897823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460440, 0.004177, 0.887681,
		-0.733190, -0.565524, -0.377644,
		0.500428, -0.824721, 0.263452,
		32.109612, 33.000301, 43.976860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.257780, 33.127048, 44.001247>,  <31.759312, 33.577606, 43.792442>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.257780, 33.127048, 44.001247> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595613, 32.981152, 44.158035>,  <31.798313, 32.893612, 44.252106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.595613, 32.981152, 44.158035>,  <31.257780, 33.127048, 44.001247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.595613, 32.981152, 44.158035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465655, -0.139050, 0.873974,
		-0.264275, -0.920666, -0.287285,
		0.844585, -0.364745, 0.391966,
		31.848989, 32.871727, 44.275623>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.011681, 32.537975, 44.429794>,  <31.257780, 33.127048, 44.001247>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.011681, 32.537975, 44.429794> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375423, 32.658169, 44.544880>,  <31.593670, 32.730286, 44.613930>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.375423, 32.658169, 44.544880>,  <31.011681, 32.537975, 44.429794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.375423, 32.658169, 44.544880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246916, -0.166756, 0.954581,
		0.334815, -0.939096, -0.077446,
		0.909358, 0.300485, 0.287710,
		31.648232, 32.748314, 44.631191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.271214, 32.022434, 44.793499>,  <31.011681, 32.537975, 44.429794>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.271214, 32.022434, 44.793499> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476387, 32.340691, 44.922405>,  <31.599491, 32.531643, 44.999748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.476387, 32.340691, 44.922405>,  <31.271214, 32.022434, 44.793499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.476387, 32.340691, 44.922405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290764, -0.192191, 0.937294,
		0.807686, -0.574471, 0.132763,
		0.512932, 0.795642, 0.322265,
		31.630266, 32.579384, 45.019085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.562510, 31.736191, 45.390808>,  <31.271214, 32.022434, 44.793499>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.562510, 31.736191, 45.390808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643238, 32.127487, 45.410057>,  <31.691675, 32.362267, 45.421608>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.643238, 32.127487, 45.410057>,  <31.562510, 31.736191, 45.390808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.643238, 32.127487, 45.410057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.298653, 0.014674, 0.954249,
		0.932778, -0.206958, 0.295116,
		0.201820, 0.978240, 0.048122,
		31.703785, 32.420959, 45.424492>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.026585, 31.771954, 45.913460>,  <31.562510, 31.736191, 45.390808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.026585, 31.771954, 45.913460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858696, 32.129704, 45.851593>,  <31.757961, 32.344353, 45.814472>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.858696, 32.129704, 45.851593>,  <32.026585, 31.771954, 45.913460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.858696, 32.129704, 45.851593> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113380, 0.117400, 0.986591,
		0.900542, 0.431633, 0.052129,
		-0.419725, 0.894377, -0.154662,
		31.732779, 32.398018, 45.805195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.311916, 32.283459, 46.339325>,  <32.026585, 31.771954, 45.913460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.311916, 32.283459, 46.339325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939777, 32.399395, 46.249481>,  <31.716494, 32.468956, 46.195576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.939777, 32.399395, 46.249481>,  <32.311916, 32.283459, 46.339325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.939777, 32.399395, 46.249481> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.209937, 0.081186, 0.974338,
		0.300640, 0.953625, -0.014683,
		-0.930345, 0.289842, -0.224609,
		31.660673, 32.486347, 46.182098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.050961, 32.358040, 46.208008>,  <32.311916, 32.283459, 46.339325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.050961, 32.358040, 46.208008> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387325, 32.244846, 46.392525>,  <33.589146, 32.176929, 46.503235>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.387325, 32.244846, 46.392525>,  <33.050961, 32.358040, 46.208008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.387325, 32.244846, 46.392525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464476, -0.060043, -0.883548,
		0.277723, 0.957245, 0.080946,
		0.840912, -0.282979, 0.461292,
		33.639599, 32.159954, 46.530910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605209, 32.847885, 46.022812>,  <33.050961, 32.358040, 46.208008>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605209, 32.847885, 46.022812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765091, 32.497345, 46.130329>,  <33.861019, 32.287022, 46.194839>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.765091, 32.497345, 46.130329>,  <33.605209, 32.847885, 46.022812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.765091, 32.497345, 46.130329> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561534, 0.002315, -0.827451,
		0.724513, 0.481672, 0.493024,
		0.399701, -0.876348, 0.268798,
		33.885002, 32.234440, 46.210968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.342014, 32.999470, 46.035240>,  <33.605209, 32.847885, 46.022812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.342014, 32.999470, 46.035240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324551, 32.601486, 45.999126>,  <34.314072, 32.362698, 45.977459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.324551, 32.601486, 45.999126>,  <34.342014, 32.999470, 46.035240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.324551, 32.601486, 45.999126> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533991, 0.053138, -0.843818,
		0.844362, -0.085054, 0.528979,
		-0.043661, -0.994958, -0.090286,
		34.311451, 32.302998, 45.972042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.033504, 32.754021, 46.049240>,  <34.342014, 32.999470, 46.035240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.033504, 32.754021, 46.049240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824406, 32.465042, 45.868217>,  <34.698948, 32.291656, 45.759605>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.824406, 32.465042, 45.868217>,  <35.033504, 32.754021, 46.049240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.824406, 32.465042, 45.868217> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.666897, -0.015878, -0.744981,
		0.531024, -0.691243, 0.490099,
		-0.522744, -0.722448, -0.452556,
		34.667583, 32.248306, 45.732452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.511898, 32.240490, 45.891071>,  <35.033504, 32.754021, 46.049240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.511898, 32.240490, 45.891071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202400, 32.150383, 45.654232>,  <35.016701, 32.096317, 45.512127>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.202400, 32.150383, 45.654232>,  <35.511898, 32.240490, 45.891071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.202400, 32.150383, 45.654232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.610999, -0.018459, -0.791416,
		0.167353, -0.974121, 0.151922,
		-0.773740, -0.225270, -0.592098,
		34.970280, 32.082802, 45.476604>
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
