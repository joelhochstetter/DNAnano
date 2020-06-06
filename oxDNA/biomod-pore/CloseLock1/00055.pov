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
	<24.153828, 35.172359, 34.632252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125397, 35.100731, 35.024757>,  <24.108337, 35.057755, 35.260262>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.125397, 35.100731, 35.024757>,  <24.153828, 35.172359, 34.632252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.125397, 35.100731, 35.024757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.750544, -0.657553, -0.065629,
		0.656987, 0.731819, 0.181134,
		-0.071077, -0.179066, 0.981266,
		24.104074, 35.047012, 35.319138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<24.668524, 34.630005, 34.985291>,  <24.153828, 35.172359, 34.632252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<24.668524, 34.630005, 34.985291> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438850, 34.582066, 35.309254>,  <24.301046, 34.553303, 35.503632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.438850, 34.582066, 35.309254>,  <24.668524, 34.630005, 34.985291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.438850, 34.582066, 35.309254> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.786420, -0.355876, 0.504872,
		0.227720, 0.926817, 0.298587,
		-0.574184, -0.119846, 0.809907,
		24.266596, 34.546112, 35.552227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.037815, 34.861332, 35.649208>,  <24.668524, 34.630005, 34.985291>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.037815, 34.861332, 35.649208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767244, 34.587776, 35.758568>,  <24.604902, 34.423645, 35.824184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.767244, 34.587776, 35.758568>,  <25.037815, 34.861332, 35.649208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.767244, 34.587776, 35.758568> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.678760, -0.434760, 0.591836,
		-0.285887, 0.585904, 0.758278,
		-0.676428, -0.683886, 0.273396,
		24.564316, 34.382610, 35.840588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.333052, 34.721725, 36.320198>,  <25.037815, 34.861332, 35.649208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.333052, 34.721725, 36.320198> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080444, 34.426216, 36.226048>,  <24.928881, 34.248909, 36.169556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.080444, 34.426216, 36.226048>,  <25.333052, 34.721725, 36.320198>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.080444, 34.426216, 36.226048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.420383, -0.581314, 0.696672,
		-0.651509, 0.341013, 0.677677,
		-0.631517, -0.738772, -0.235375,
		24.890989, 34.204586, 36.155434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.719364, 35.234955, 36.843086>,  <25.333052, 34.721725, 36.320198>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.719364, 35.234955, 36.843086> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790970, 35.213081, 37.236015>,  <25.833933, 35.199959, 37.471775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.790970, 35.213081, 37.236015>,  <25.719364, 35.234955, 36.843086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.790970, 35.213081, 37.236015> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826696, 0.549691, -0.120055,
		-0.533411, 0.833576, 0.143607,
		0.179015, -0.054681, 0.982326,
		25.844675, 35.196678, 37.530712>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.655197, 35.855824, 37.426907>,  <25.719364, 35.234955, 36.843086>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.655197, 35.855824, 37.426907> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930628, 35.575264, 37.500561>,  <26.095886, 35.406929, 37.544754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.930628, 35.575264, 37.500561>,  <25.655197, 35.855824, 37.426907>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.930628, 35.575264, 37.500561> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.716070, 0.697742, -0.019968,
		-0.114474, 0.145603, 0.982698,
		0.688577, -0.701395, 0.184136,
		26.137201, 35.364845, 37.555801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.107079, 36.144001, 37.993240>,  <25.655197, 35.855824, 37.426907>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.107079, 36.144001, 37.993240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322351, 35.863453, 37.806290>,  <26.451515, 35.695122, 37.694118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.322351, 35.863453, 37.806290>,  <26.107079, 36.144001, 37.993240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.322351, 35.863453, 37.806290> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799670, 0.600098, 0.020272,
		0.266253, -0.384656, 0.883826,
		0.538180, -0.701372, -0.467375,
		26.483805, 35.653042, 37.666077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.777802, 36.204254, 38.266884>,  <26.107079, 36.144001, 37.993240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.777802, 36.204254, 38.266884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809965, 36.035175, 37.905804>,  <26.829264, 35.933727, 37.689156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.809965, 36.035175, 37.905804>,  <26.777802, 36.204254, 38.266884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.809965, 36.035175, 37.905804> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.789461, 0.579883, -0.201214,
		0.608511, -0.696465, 0.380330,
		0.080408, -0.422697, -0.902697,
		26.834087, 35.908367, 37.634995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.428719, 35.964825, 38.140041>,  <26.777802, 36.204254, 38.266884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.428719, 35.964825, 38.140041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296043, 36.004330, 37.764759>,  <27.216438, 36.028030, 37.539589>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.296043, 36.004330, 37.764759>,  <27.428719, 35.964825, 38.140041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.296043, 36.004330, 37.764759> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.799381, 0.557539, -0.223919,
		0.500972, -0.824255, -0.263876,
		-0.331688, 0.098760, -0.938206,
		27.196537, 36.033958, 37.483299>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.071526, 35.886848, 37.745239>,  <27.428719, 35.964825, 38.140041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.071526, 35.886848, 37.745239> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820627, 36.048939, 37.479198>,  <27.670088, 36.146194, 37.319576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.820627, 36.048939, 37.479198>,  <28.071526, 35.886848, 37.745239>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.820627, 36.048939, 37.479198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.726139, 0.613034, -0.311307,
		0.281578, -0.678220, -0.678772,
		-0.627245, 0.405225, -0.665099,
		27.632454, 36.170506, 37.279671>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.418720, 35.878098, 37.223621>,  <28.071526, 35.886848, 37.745239>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.418720, 35.878098, 37.223621> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140940, 36.131302, 37.086781>,  <27.974272, 36.283226, 37.004677>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.140940, 36.131302, 37.086781>,  <28.418720, 35.878098, 37.223621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.140940, 36.131302, 37.086781> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714841, 0.552714, -0.428380,
		-0.082085, -0.542037, -0.836336,
		-0.694453, 0.633011, -0.342101,
		27.932604, 36.321205, 36.984150>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.474094, 35.852978, 36.551125>,  <28.418720, 35.878098, 37.223621>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.474094, 35.852978, 36.551125> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281187, 36.200478, 36.596172>,  <28.165442, 36.408978, 36.623199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.281187, 36.200478, 36.596172>,  <28.474094, 35.852978, 36.551125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.281187, 36.200478, 36.596172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.593045, 0.418392, -0.687929,
		-0.644759, -0.264980, -0.716988,
		-0.482269, 0.868754, 0.112617,
		28.136507, 36.461105, 36.629959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.276581, 36.120678, 35.861248>,  <28.474094, 35.852978, 36.551125>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.276581, 36.120678, 35.861248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272434, 36.414696, 36.132423>,  <28.269947, 36.591106, 36.295128>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.272434, 36.414696, 36.132423>,  <28.276581, 36.120678, 35.861248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.272434, 36.414696, 36.132423> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.594902, 0.549476, -0.586658,
		-0.803731, 0.397228, -0.442974,
		-0.010366, 0.735041, 0.677943,
		28.269323, 36.635208, 36.335808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.160118, 36.698597, 35.476910>,  <28.276581, 36.120678, 35.861248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.160118, 36.698597, 35.476910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329548, 36.821033, 35.817944>,  <28.431206, 36.894497, 36.022564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.329548, 36.821033, 35.817944>,  <28.160118, 36.698597, 35.476910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.329548, 36.821033, 35.817944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.622672, 0.585196, -0.519447,
		-0.657925, 0.750902, 0.057280,
		0.423574, 0.306091, 0.852580,
		28.456619, 36.912861, 36.073719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.098347, 37.461926, 35.502350>,  <28.160118, 36.698597, 35.476910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.098347, 37.461926, 35.502350> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386526, 37.333122, 35.748039>,  <28.559433, 37.255840, 35.895451>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.386526, 37.333122, 35.748039>,  <28.098347, 37.461926, 35.502350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.386526, 37.333122, 35.748039> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646408, 0.632629, -0.426541,
		-0.251222, 0.704337, 0.663926,
		0.720447, -0.322011, 0.614219,
		28.602659, 37.236519, 35.932304>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.514231, 38.068024, 35.612640>,  <28.098347, 37.461926, 35.502350>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.514231, 38.068024, 35.612640> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750214, 37.774063, 35.746422>,  <28.891804, 37.597687, 35.826691>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.750214, 37.774063, 35.746422>,  <28.514231, 38.068024, 35.612640>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.750214, 37.774063, 35.746422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.795465, 0.457949, -0.396886,
		0.138510, 0.500196, 0.854763,
		0.589958, -0.734906, 0.334458,
		28.927200, 37.553593, 35.846760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.073101, 38.404190, 35.908421>,  <28.514231, 38.068024, 35.612640>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.073101, 38.404190, 35.908421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190935, 38.038071, 35.798546>,  <29.261635, 37.818401, 35.732620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.190935, 38.038071, 35.798546>,  <29.073101, 38.404190, 35.908421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.190935, 38.038071, 35.798546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.796398, 0.394011, -0.458808,
		0.528175, -0.083602, 0.845010,
		0.294586, -0.915296, -0.274687,
		29.279310, 37.763481, 35.716141>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.715523, 38.323376, 36.227489>,  <29.073101, 38.404190, 35.908421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.715523, 38.323376, 36.227489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717232, 38.052219, 35.933430>,  <29.718258, 37.889526, 35.756992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.717232, 38.052219, 35.933430>,  <29.715523, 38.323376, 36.227489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.717232, 38.052219, 35.933430> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.955314, 0.220055, -0.197361,
		0.295563, -0.701458, 0.648536,
		0.004273, -0.677888, -0.735153,
		29.718513, 37.848854, 35.712883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.440054, 38.037498, 36.304733>,  <29.715523, 38.323376, 36.227489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.440054, 38.037498, 36.304733> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293686, 37.939613, 35.945576>,  <30.205864, 37.880882, 35.730080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.293686, 37.939613, 35.945576>,  <30.440054, 38.037498, 36.304733>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.293686, 37.939613, 35.945576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910672, 0.104663, -0.399653,
		0.191776, -0.963930, 0.184554,
		-0.365922, -0.244712, -0.897896,
		30.183908, 37.866199, 35.676208>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.840111, 37.533005, 36.007217>,  <30.440054, 38.037498, 36.304733>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.840111, 37.533005, 36.007217> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666306, 37.687759, 35.681881>,  <30.562023, 37.780613, 35.486679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.666306, 37.687759, 35.681881>,  <30.840111, 37.533005, 36.007217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.666306, 37.687759, 35.681881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853147, -0.112652, -0.509362,
		-0.288687, -0.915222, -0.281119,
		-0.434511, 0.386882, -0.813340,
		30.535952, 37.803825, 35.437878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082716, 37.120071, 35.453381>,  <30.840111, 37.533005, 36.007217>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082716, 37.120071, 35.453381> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949423, 37.449982, 35.270645>,  <30.869448, 37.647930, 35.161003>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.949423, 37.449982, 35.270645>,  <31.082716, 37.120071, 35.453381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.949423, 37.449982, 35.270645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.853679, 0.058254, -0.517532,
		-0.400236, -0.562447, -0.723508,
		-0.333231, 0.824779, -0.456834,
		30.849453, 37.697414, 35.133595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.025089, 37.031925, 34.705379>,  <31.082716, 37.120071, 35.453381>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.025089, 37.031925, 34.705379> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073469, 37.425205, 34.760067>,  <31.102497, 37.661175, 34.792881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.073469, 37.425205, 34.760067>,  <31.025089, 37.031925, 34.705379>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.073469, 37.425205, 34.760067> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.761433, -0.003527, -0.648234,
		-0.636861, 0.182505, -0.749066,
		0.120948, 0.983199, 0.136719,
		31.109753, 37.720165, 34.801083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.214687, 37.194664, 34.055061>,  <31.025089, 37.031925, 34.705379>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.214687, 37.194664, 34.055061> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298201, 37.526363, 34.262432>,  <31.348309, 37.725384, 34.386852>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.298201, 37.526363, 34.262432>,  <31.214687, 37.194664, 34.055061>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.298201, 37.526363, 34.262432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.734023, 0.217417, -0.643382,
		-0.646235, 0.514861, -0.563293,
		0.208782, 0.829246, 0.518422,
		31.360836, 37.775139, 34.417957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.459562, 37.707851, 33.597591>,  <31.214687, 37.194664, 34.055061>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.459562, 37.707851, 33.597591> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592400, 37.847980, 33.947903>,  <31.672102, 37.932056, 34.158089>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.592400, 37.847980, 33.947903>,  <31.459562, 37.707851, 33.597591>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.592400, 37.847980, 33.947903> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.910063, 0.125106, -0.395138,
		-0.247991, 0.928236, -0.277270,
		0.332093, 0.350324, 0.875778,
		31.692028, 37.953079, 34.210636>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.811367, 38.375908, 33.507595>,  <31.459562, 37.707851, 33.597591>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.811367, 38.375908, 33.507595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957497, 38.198994, 33.835236>,  <32.045174, 38.092846, 34.031818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.957497, 38.198994, 33.835236>,  <31.811367, 38.375908, 33.507595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.957497, 38.198994, 33.835236> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.930452, 0.146775, -0.335732,
		0.028265, 0.884784, 0.465143,
		0.365322, -0.442282, 0.819101,
		32.067093, 38.066307, 34.080967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.179993, 38.928123, 33.651649>,  <31.811367, 38.375908, 33.507595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.179993, 38.928123, 33.651649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260937, 38.563633, 33.795158>,  <32.309505, 38.344940, 33.881264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.260937, 38.563633, 33.795158>,  <32.179993, 38.928123, 33.651649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.260937, 38.563633, 33.795158> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833478, -0.032091, -0.551620,
		0.514162, 0.410660, 0.752991,
		0.202364, -0.911224, 0.358776,
		32.321648, 38.290264, 33.902790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.775280, 38.915653, 34.021088>,  <32.179993, 38.928123, 33.651649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.775280, 38.915653, 34.021088> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730640, 38.546383, 33.873959>,  <32.703857, 38.324821, 33.785683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.730640, 38.546383, 33.873959>,  <32.775280, 38.915653, 34.021088>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.730640, 38.546383, 33.873959> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.813637, 0.127627, -0.567191,
		0.570561, -0.362572, 0.736887,
		-0.111601, -0.923175, -0.367821,
		32.697159, 38.269432, 33.763611>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.428696, 38.476982, 34.094948>,  <32.775280, 38.915653, 34.021088>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.428696, 38.476982, 34.094948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221107, 38.394470, 33.763138>,  <33.096554, 38.344963, 33.564053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.221107, 38.394470, 33.763138>,  <33.428696, 38.476982, 34.094948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.221107, 38.394470, 33.763138> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.810293, 0.190309, -0.554264,
		0.272201, -0.959808, 0.068383,
		-0.518972, -0.206282, -0.829527,
		33.065414, 38.332584, 33.514278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.920300, 38.175858, 33.576572>,  <33.428696, 38.476982, 34.094948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.920300, 38.175858, 33.576572> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624855, 38.311661, 33.343613>,  <33.447590, 38.393143, 33.203838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.624855, 38.311661, 33.343613>,  <33.920300, 38.175858, 33.576572>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.624855, 38.311661, 33.343613> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643555, 0.097870, -0.759117,
		-0.200731, -0.935496, -0.290783,
		-0.738610, 0.339512, -0.582397,
		33.403271, 38.413513, 33.168892>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.675278, 37.889076, 32.845074>,  <33.920300, 38.175858, 33.576572>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.675278, 37.889076, 32.845074> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689095, 38.285225, 32.898685>,  <33.697384, 38.522915, 32.930851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.689095, 38.285225, 32.898685>,  <33.675278, 37.889076, 32.845074>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.689095, 38.285225, 32.898685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722362, 0.067938, -0.688170,
		-0.690652, 0.120588, -0.713063,
		0.034541, 0.990375, 0.134030,
		33.699455, 38.582336, 32.938896>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005215, 37.999344, 32.621166>,  <33.675278, 37.889076, 32.845074>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005215, 37.999344, 32.621166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206463, 37.717957, 32.821964>,  <33.327213, 37.549126, 32.942444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.206463, 37.717957, 32.821964>,  <33.005215, 37.999344, 32.621166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.206463, 37.717957, 32.821964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.348186, 0.366643, 0.862751,
		-0.790972, -0.608857, -0.060472,
		0.503120, -0.703468, 0.501999,
		33.357399, 37.506916, 32.972565>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.501102, 37.580139, 33.185699>,  <33.005215, 37.999344, 32.621166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.501102, 37.580139, 33.185699> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893024, 37.586193, 33.265457>,  <33.128178, 37.589825, 33.313313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.893024, 37.586193, 33.265457>,  <32.501102, 37.580139, 33.185699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.893024, 37.586193, 33.265457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193604, 0.321248, 0.926994,
		-0.050027, -0.946874, 0.317690,
		0.979803, 0.015132, 0.199390,
		33.186966, 37.590733, 33.325275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.755997, 37.195877, 33.827038>,  <32.501102, 37.580139, 33.185699>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.755997, 37.195877, 33.827038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990517, 37.506786, 33.735733>,  <33.131229, 37.693333, 33.680950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.990517, 37.506786, 33.735733>,  <32.755997, 37.195877, 33.827038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.990517, 37.506786, 33.735733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113039, 0.357509, 0.927043,
		0.802169, -0.517723, 0.297469,
		0.586300, 0.777271, -0.228260,
		33.166409, 37.739967, 33.667255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407021, 37.430168, 34.340458>,  <32.755997, 37.195877, 33.827038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407021, 37.430168, 34.340458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230968, 37.739838, 34.158497>,  <33.125336, 37.925640, 34.049320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.230968, 37.739838, 34.158497>,  <33.407021, 37.430168, 34.340458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.230968, 37.739838, 34.158497> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204652, 0.406791, 0.890303,
		0.874300, 0.484948, -0.020605,
		-0.440132, 0.774175, -0.454903,
		33.098930, 37.972092, 34.022026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.887348, 36.953136, 34.287415>,  <33.407021, 37.430168, 34.340458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.887348, 36.953136, 34.287415> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626747, 37.075745, 34.009830>,  <33.470387, 37.149311, 33.843281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.626747, 37.075745, 34.009830>,  <33.887348, 36.953136, 34.287415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.626747, 37.075745, 34.009830> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.408579, -0.628979, -0.661399,
		-0.639229, -0.714440, 0.284537,
		-0.651498, 0.306530, -0.693967,
		33.431293, 37.167702, 33.801640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.595898, 37.262688, 34.152359>,  <33.887348, 36.953136, 34.287415>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.595898, 37.262688, 34.152359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525101, 37.595356, 34.362881>,  <34.482624, 37.794956, 34.489193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.525101, 37.595356, 34.362881>,  <34.595898, 37.262688, 34.152359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525101, 37.595356, 34.362881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.547789, -0.527504, 0.649359,
		0.817681, -0.173371, 0.548945,
		-0.176990, 0.831674, 0.526301,
		34.472004, 37.844860, 34.520771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.795269, 37.146507, 34.766651>,  <34.595898, 37.262688, 34.152359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.795269, 37.146507, 34.766651> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532936, 37.443939, 34.818771>,  <34.375538, 37.622398, 34.850044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.532936, 37.443939, 34.818771>,  <34.795269, 37.146507, 34.766651>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.532936, 37.443939, 34.818771> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.401539, -0.489762, 0.773886,
		0.639259, 0.455220, 0.619777,
		-0.655831, 0.743578, 0.130296,
		34.336185, 37.667011, 34.857861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.786587, 37.396255, 35.420166>,  <34.795269, 37.146507, 34.766651>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.786587, 37.396255, 35.420166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421288, 37.527573, 35.323662>,  <34.202106, 37.606361, 35.265759>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.421288, 37.527573, 35.323662>,  <34.786587, 37.396255, 35.420166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.421288, 37.527573, 35.323662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367201, -0.406765, 0.836484,
		0.176477, 0.852506, 0.492026,
		-0.913247, 0.328292, -0.241256,
		34.147312, 37.626060, 35.251286>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.422112, 37.616150, 36.099300>,  <34.786587, 37.396255, 35.420166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.422112, 37.616150, 36.099300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142555, 37.556820, 35.819431>,  <33.974819, 37.521221, 35.651508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.142555, 37.556820, 35.819431>,  <34.422112, 37.616150, 36.099300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.142555, 37.556820, 35.819431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589655, -0.434166, 0.681033,
		-0.404790, 0.888538, 0.215976,
		-0.698893, -0.148324, -0.699677,
		33.932888, 37.512321, 35.609528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853256, 37.830154, 36.406174>,  <34.422112, 37.616150, 36.099300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853256, 37.830154, 36.406174> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690063, 37.614109, 36.111740>,  <33.592148, 37.484482, 35.935078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.690063, 37.614109, 36.111740>,  <33.853256, 37.830154, 36.406174>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.690063, 37.614109, 36.111740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507540, -0.536007, 0.674611,
		-0.758918, 0.648821, -0.055452,
		-0.407979, -0.540118, -0.736088,
		33.567669, 37.452072, 35.890915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.072376, 37.872719, 36.443851>,  <33.853256, 37.830154, 36.406174>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.072376, 37.872719, 36.443851> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147888, 37.522961, 36.265060>,  <33.193195, 37.313107, 36.157784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.147888, 37.522961, 36.265060>,  <33.072376, 37.872719, 36.443851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.147888, 37.522961, 36.265060> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745373, -0.423928, 0.514494,
		-0.639359, 0.236039, -0.731782,
		0.188782, -0.874397, -0.446979,
		33.204521, 37.260643, 36.130966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.391270, 37.670700, 36.375328>,  <33.072376, 37.872719, 36.443851>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.391270, 37.670700, 36.375328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610813, 37.350174, 36.280128>,  <32.742538, 37.157860, 36.223007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.610813, 37.350174, 36.280128>,  <32.391270, 37.670700, 36.375328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.610813, 37.350174, 36.280128> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740413, -0.598187, 0.306529,
		-0.387995, 0.007976, -0.921627,
		0.548861, -0.801316, -0.237999,
		32.775471, 37.109779, 36.208729>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.952612, 37.272980, 35.873306>,  <32.391270, 37.670700, 36.375328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.952612, 37.272980, 35.873306> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218822, 37.020416, 36.032505>,  <32.378548, 36.868877, 36.128025>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.218822, 37.020416, 36.032505>,  <31.952612, 37.272980, 35.873306>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.218822, 37.020416, 36.032505> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736954, -0.640359, 0.216422,
		0.118214, -0.437343, -0.891491,
		0.665525, -0.631404, 0.398001,
		32.418480, 36.830994, 36.151905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.812479, 36.531876, 35.506653>,  <31.952612, 37.272980, 35.873306>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.812479, 36.531876, 35.506653> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006107, 36.477180, 35.852364>,  <32.122284, 36.444363, 36.059792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.006107, 36.477180, 35.852364>,  <31.812479, 36.531876, 35.506653>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.006107, 36.477180, 35.852364> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.647304, -0.720571, 0.248547,
		0.588790, -0.679766, -0.437315,
		0.484070, -0.136734, 0.864280,
		32.151329, 36.436161, 36.111649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.830551, 35.835522, 35.522182>,  <31.812479, 36.531876, 35.506653>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.830551, 35.835522, 35.522182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885744, 35.960938, 35.897980>,  <31.918859, 36.036186, 36.123459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.885744, 35.960938, 35.897980>,  <31.830551, 35.835522, 35.522182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.885744, 35.960938, 35.897980> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.633423, -0.701286, 0.327069,
		0.761404, -0.640229, 0.101837,
		0.137982, 0.313537, 0.939498,
		31.927139, 36.055000, 36.179829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.895618, 35.181602, 36.027199>,  <31.830551, 35.835522, 35.522182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.895618, 35.181602, 36.027199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792305, 35.477310, 36.275963>,  <31.730318, 35.654736, 36.425220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792305, 35.477310, 36.275963>,  <31.895618, 35.181602, 36.027199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792305, 35.477310, 36.275963> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.627752, -0.617752, 0.473614,
		0.734315, -0.268080, 0.623631,
		-0.258282, 0.739267, 0.621912,
		31.714821, 35.699089, 36.462536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.000233, 34.908730, 36.716724>,  <31.895618, 35.181602, 36.027199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.000233, 34.908730, 36.716724> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753401, 35.223358, 36.725849>,  <31.605303, 35.412136, 36.731323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.753401, 35.223358, 36.725849>,  <32.000233, 34.908730, 36.716724>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.753401, 35.223358, 36.725849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.651287, -0.526781, 0.546193,
		0.441636, 0.322188, 0.837349,
		-0.617076, 0.786573, 0.022809,
		31.568277, 35.459332, 36.732693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.586201, 34.790222, 37.216358>,  <32.000233, 34.908730, 36.716724>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.586201, 34.790222, 37.216358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364765, 35.095787, 37.083710>,  <31.231903, 35.279125, 37.004120>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.364765, 35.095787, 37.083710>,  <31.586201, 34.790222, 37.216358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.364765, 35.095787, 37.083710> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806328, -0.392083, 0.442839,
		0.208268, 0.512547, 0.833018,
		-0.553588, 0.763915, -0.331623,
		31.198689, 35.324963, 36.984222>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.272242, 35.142891, 37.762009>,  <31.586201, 34.790222, 37.216358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.272242, 35.142891, 37.762009> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034189, 35.240696, 37.455799>,  <30.891357, 35.299381, 37.272072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.034189, 35.240696, 37.455799>,  <31.272242, 35.142891, 37.762009>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.034189, 35.240696, 37.455799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.766231, -0.459866, 0.448790,
		-0.242304, 0.853660, 0.461036,
		-0.595129, 0.244516, -0.765528,
		30.855650, 35.314053, 37.226139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.515783, 35.249874, 38.045895>,  <31.272242, 35.142891, 37.762009>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.515783, 35.249874, 38.045895> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477041, 35.206635, 37.650131>,  <30.453796, 35.180691, 37.412674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.477041, 35.206635, 37.650131>,  <30.515783, 35.249874, 38.045895>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.477041, 35.206635, 37.650131> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.855012, -0.499826, 0.138306,
		-0.509484, 0.859354, -0.044013,
		-0.096856, -0.108096, -0.989411,
		30.447985, 35.174206, 37.353310>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.815660, 35.479053, 37.869095>,  <30.515783, 35.249874, 38.045895>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.815660, 35.479053, 37.869095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926334, 35.224041, 37.581486>,  <29.992739, 35.071033, 37.408920>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.926334, 35.224041, 37.581486>,  <29.815660, 35.479053, 37.869095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.926334, 35.224041, 37.581486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.914593, -0.404322, 0.006560,
		-0.294899, 0.655800, -0.694954,
		0.276684, -0.637534, -0.719024,
		30.009340, 35.032780, 37.365780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.234709, 35.454815, 37.467667>,  <29.815660, 35.479053, 37.869095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.234709, 35.454815, 37.467667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435030, 35.126892, 37.356594>,  <29.555222, 34.930138, 37.289951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.435030, 35.126892, 37.356594>,  <29.234709, 35.454815, 37.467667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.435030, 35.126892, 37.356594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.864684, -0.488299, -0.117840,
		-0.038987, 0.299124, -0.953417,
		0.500801, -0.819811, -0.277685,
		29.585270, 34.880947, 37.273289>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.767616, 35.148087, 36.930424>,  <29.234709, 35.454815, 37.467667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.767616, 35.148087, 36.930424> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015324, 34.868290, 37.073093>,  <29.163948, 34.700413, 37.158695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.015324, 34.868290, 37.073093>,  <28.767616, 35.148087, 36.930424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.015324, 34.868290, 37.073093> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777998, -0.607934, 0.158541,
		0.105938, -0.375674, -0.920677,
		0.619271, -0.699489, 0.356677,
		29.201105, 34.658443, 37.180096>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517933, 34.518867, 36.678436>,  <28.767616, 35.148087, 36.930424>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517933, 34.518867, 36.678436> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760086, 34.377045, 36.963478>,  <28.905378, 34.291950, 37.134502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.760086, 34.377045, 36.963478>,  <28.517933, 34.518867, 36.678436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.760086, 34.377045, 36.963478> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.693806, -0.673824, 0.254153,
		0.390056, -0.648267, -0.653916,
		0.605383, -0.354557, 0.712601,
		28.941702, 34.270679, 37.177258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.517765, 33.832691, 36.588631>,  <28.517933, 34.518867, 36.678436>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.517765, 33.832691, 36.588631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628798, 33.875515, 36.970516>,  <28.695417, 33.901207, 37.199650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.628798, 33.875515, 36.970516>,  <28.517765, 33.832691, 36.588631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.628798, 33.875515, 36.970516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689122, -0.670225, 0.275516,
		0.669372, -0.734396, -0.112269,
		0.277583, 0.107056, 0.954718,
		28.712072, 33.907631, 37.256931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.704044, 33.155804, 36.845123>,  <28.517765, 33.832691, 36.588631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.704044, 33.155804, 36.845123> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631283, 33.350723, 37.186756>,  <28.587626, 33.467674, 37.391735>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.631283, 33.350723, 37.186756>,  <28.704044, 33.155804, 36.845123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.631283, 33.350723, 37.186756> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598670, -0.743920, 0.296946,
		0.780068, -0.457296, 0.427054,
		-0.181902, 0.487302, 0.854077,
		28.576712, 33.496914, 37.442978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.702993, 32.635117, 37.363976>,  <28.704044, 33.155804, 36.845123>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.702993, 32.635117, 37.363976> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488420, 32.956608, 37.466946>,  <28.359676, 33.149502, 37.528728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.488420, 32.956608, 37.466946>,  <28.702993, 32.635117, 37.363976>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.488420, 32.956608, 37.466946> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754495, -0.593386, 0.280410,
		0.378123, -0.043802, 0.924719,
		-0.536433, 0.803726, 0.257421,
		28.327490, 33.197727, 37.544170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.549908, 32.602894, 37.426456>,  <28.702993, 32.635117, 37.363976>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.549908, 32.602894, 37.426456> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633905, 32.875614, 37.706757>,  <29.684303, 33.039246, 37.874935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.633905, 32.875614, 37.706757>,  <29.549908, 32.602894, 37.426456>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.633905, 32.875614, 37.706757> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.887645, 0.433413, -0.155689,
		-0.409863, -0.589324, 0.696210,
		0.209995, 0.681799, 0.700751,
		29.696903, 33.080154, 37.916981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.910105, 32.036713, 37.775444>,  <29.549908, 32.602894, 37.426456>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.910105, 32.036713, 37.775444> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180752, 31.793919, 37.608707>,  <30.343140, 31.648243, 37.508667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.180752, 31.793919, 37.608707>,  <29.910105, 32.036713, 37.775444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.180752, 31.793919, 37.608707> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680803, -0.731368, -0.040102,
		-0.280524, 0.310921, -0.908093,
		0.676619, -0.606983, -0.416843,
		30.383738, 31.611824, 37.483654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.630363, 31.444580, 37.570824>,  <29.910105, 32.036713, 37.775444>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.630363, 31.444580, 37.570824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985443, 31.263805, 37.535618>,  <30.198490, 31.155340, 37.514496>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.985443, 31.263805, 37.535618>,  <29.630363, 31.444580, 37.570824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.985443, 31.263805, 37.535618> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.460425, -0.871891, -0.166778,
		-0.001366, 0.188573, -0.982058,
		0.887698, -0.451936, -0.088015,
		30.251753, 31.128225, 37.509212>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.919722, 31.145048, 36.841614>,  <29.630363, 31.444580, 37.570824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.919722, 31.145048, 36.841614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002800, 30.936035, 37.172390>,  <30.052647, 30.810627, 37.370853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.002800, 30.936035, 37.172390>,  <29.919722, 31.145048, 36.841614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.002800, 30.936035, 37.172390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.481835, -0.790351, -0.378392,
		0.851291, -0.319856, -0.415927,
		0.207697, -0.522531, 0.826936,
		30.065109, 30.779276, 37.420471>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.591808, 31.412666, 36.560093>,  <29.919722, 31.145048, 36.841614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.591808, 31.412666, 36.560093> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469753, 31.731548, 36.351727>,  <30.396521, 31.922878, 36.226707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.469753, 31.731548, 36.351727>,  <30.591808, 31.412666, 36.560093>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.469753, 31.731548, 36.351727> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.945394, 0.319381, -0.065003,
		0.114550, -0.512305, -0.851130,
		-0.305136, 0.797207, -0.520916,
		30.378212, 31.970711, 36.195454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.097666, 31.616735, 36.054722>,  <30.591808, 31.412666, 36.560093>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.097666, 31.616735, 36.054722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887852, 31.949162, 36.128689>,  <30.761963, 32.148617, 36.173069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.887852, 31.949162, 36.128689>,  <31.097666, 31.616735, 36.054722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.887852, 31.949162, 36.128689> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.851076, 0.505926, 0.140390,
		0.023118, 0.231019, -0.972674,
		-0.524534, 0.831065, 0.184918,
		30.730492, 32.198483, 36.184166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.650787, 31.734055, 36.512657>,  <31.097666, 31.616735, 36.054722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.650787, 31.734055, 36.512657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987417, 31.594080, 36.677242>,  <32.189396, 31.510096, 36.775993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.987417, 31.594080, 36.677242>,  <31.650787, 31.734055, 36.512657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.987417, 31.594080, 36.677242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264129, 0.397860, 0.878603,
		-0.471161, -0.848086, 0.242399,
		0.841572, -0.349939, 0.411460,
		32.239887, 31.489098, 36.800682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.406483, 31.584145, 37.127922>,  <31.650787, 31.734055, 36.512657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.406483, 31.584145, 37.127922> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801605, 31.569269, 37.188393>,  <32.038677, 31.560343, 37.224674>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.801605, 31.569269, 37.188393>,  <31.406483, 31.584145, 37.127922>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.801605, 31.569269, 37.188393> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.116996, 0.463283, 0.878453,
		-0.102707, -0.885430, 0.453283,
		0.987807, -0.037191, 0.151175,
		32.097946, 31.558111, 37.233746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.511253, 31.441383, 37.815861>,  <31.406483, 31.584145, 37.127922>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.511253, 31.441383, 37.815861> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869759, 31.588213, 37.716286>,  <32.084862, 31.676311, 37.656540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.869759, 31.588213, 37.716286>,  <31.511253, 31.441383, 37.815861>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.869759, 31.588213, 37.716286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103109, 0.373457, 0.921899,
		0.431377, -0.851930, 0.296866,
		0.896260, 0.367077, -0.248942,
		32.138638, 31.698336, 37.641602>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.993326, 31.185055, 38.286530>,  <31.511253, 31.441383, 37.815861>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.993326, 31.185055, 38.286530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141472, 31.530630, 38.150032>,  <32.230358, 31.737974, 38.068134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.141472, 31.530630, 38.150032>,  <31.993326, 31.185055, 38.286530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.141472, 31.530630, 38.150032> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.052730, 0.347218, 0.936301,
		0.927389, -0.364765, 0.083041,
		0.370363, 0.863936, -0.341241,
		32.252583, 31.789810, 38.047661>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.496590, 31.466228, 38.861095>,  <31.993326, 31.185055, 38.286530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.496590, 31.466228, 38.861095> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463894, 31.772699, 38.606133>,  <32.444275, 31.956583, 38.453156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.463894, 31.772699, 38.606133>,  <32.496590, 31.466228, 38.861095>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.463894, 31.772699, 38.606133> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030234, 0.641160, 0.766811,
		0.996195, 0.043408, -0.075573,
		-0.081740, 0.766179, -0.637408,
		32.439373, 32.002552, 38.414909>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.031700, 32.046612, 38.981808>,  <32.496590, 31.466228, 38.861095>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.031700, 32.046612, 38.981808> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717197, 32.222950, 38.808624>,  <32.528496, 32.328751, 38.704712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.717197, 32.222950, 38.808624>,  <33.031700, 32.046612, 38.981808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.717197, 32.222950, 38.808624> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.103860, 0.785022, 0.610699,
		0.609106, 0.435200, -0.663016,
		-0.786259, 0.440841, -0.432962,
		32.481319, 32.355202, 38.678734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.229290, 32.754269, 38.879360>,  <33.031700, 32.046612, 38.981808>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.229290, 32.754269, 38.879360> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832111, 32.787762, 38.845795>,  <32.593803, 32.807858, 38.825657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.832111, 32.787762, 38.845795>,  <33.229290, 32.754269, 38.879360>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.832111, 32.787762, 38.845795> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043152, 0.914613, 0.402022,
		0.110407, 0.395566, -0.911777,
		-0.992949, 0.083731, -0.083910,
		32.534225, 32.812881, 38.820621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.245029, 33.392941, 38.818214>,  <33.229290, 32.754269, 38.879360>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.245029, 33.392941, 38.818214> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874996, 33.300461, 38.938728>,  <32.652977, 33.244972, 39.011036>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.874996, 33.300461, 38.938728>,  <33.245029, 33.392941, 38.818214>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.874996, 33.300461, 38.938728> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.001751, 0.790736, 0.612155,
		-0.379767, 0.566820, -0.731090,
		-0.925081, -0.231196, 0.301288,
		32.597473, 33.231102, 39.029114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.786823, 34.047825, 38.733532>,  <33.245029, 33.392941, 38.818214>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.786823, 34.047825, 38.733532> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601357, 33.803066, 38.989841>,  <32.490078, 33.656212, 39.143627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.601357, 33.803066, 38.989841>,  <32.786823, 34.047825, 38.733532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.601357, 33.803066, 38.989841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039185, 0.736671, 0.675115,
		-0.885142, 0.287920, -0.365548,
		-0.463667, -0.611897, 0.640776,
		32.462257, 33.619495, 39.182076>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.271503, 34.377182, 39.086967>,  <32.786823, 34.047825, 38.733532>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.271503, 34.377182, 39.086967> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346390, 34.065048, 39.325642>,  <32.391319, 33.877769, 39.468845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.346390, 34.065048, 39.325642>,  <32.271503, 34.377182, 39.086967>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.346390, 34.065048, 39.325642> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.040815, 0.600720, 0.798417,
		-0.981471, -0.173828, 0.080613,
		0.187213, -0.780333, 0.596685,
		32.402554, 33.830948, 39.504646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.822645, 34.393764, 39.684906>,  <32.271503, 34.377182, 39.086967>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.822645, 34.393764, 39.684906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106709, 34.141068, 39.809212>,  <32.277145, 33.989449, 39.883797>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.106709, 34.141068, 39.809212>,  <31.822645, 34.393764, 39.684906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.106709, 34.141068, 39.809212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033136, 0.410925, 0.911067,
		-0.703260, -0.657301, 0.270889,
		0.710160, -0.631741, 0.310768,
		32.319756, 33.951546, 39.902443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.603401, 34.345448, 40.435585>,  <31.822645, 34.393764, 39.684906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.603401, 34.345448, 40.435585> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973505, 34.203327, 40.382439>,  <32.195568, 34.118053, 40.350552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.973505, 34.203327, 40.382439>,  <31.603401, 34.345448, 40.435585>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.973505, 34.203327, 40.382439> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225111, 0.232397, 0.946211,
		-0.305313, -0.905402, 0.295010,
		0.925262, -0.355301, -0.132862,
		32.251083, 34.096737, 40.342579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.735962, 33.915062, 41.043362>,  <31.603401, 34.345448, 40.435585>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.735962, 33.915062, 41.043362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100677, 34.020596, 40.917480>,  <32.319508, 34.083916, 40.841953>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.100677, 34.020596, 40.917480>,  <31.735962, 33.915062, 41.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.100677, 34.020596, 40.917480> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.285444, 0.143781, 0.947549,
		0.295241, -0.953793, 0.055788,
		0.911787, 0.263831, -0.314704,
		32.374214, 34.099743, 40.823071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.117546, 33.646324, 41.642563>,  <31.735962, 33.915062, 41.043362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.117546, 33.646324, 41.642563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384640, 33.878216, 41.455784>,  <32.544895, 34.017353, 41.343716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.384640, 33.878216, 41.455784>,  <32.117546, 33.646324, 41.642563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.384640, 33.878216, 41.455784> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.570829, 0.003854, 0.821060,
		0.477794, -0.814799, -0.328354,
		0.667733, 0.579731, -0.466952,
		32.584961, 34.052135, 41.315697>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.756523, 33.298775, 41.711918>,  <32.117546, 33.646324, 41.642563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.756523, 33.298775, 41.711918> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804031, 33.691566, 41.653103>,  <32.832535, 33.927242, 41.617813>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.804031, 33.691566, 41.653103>,  <32.756523, 33.298775, 41.711918>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.804031, 33.691566, 41.653103> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481823, 0.072484, 0.873266,
		0.868183, -0.174560, -0.464529,
		0.118766, 0.981975, -0.147036,
		32.839661, 33.986160, 41.608994>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.499699, 33.488838, 41.752560>,  <32.756523, 33.298775, 41.711918>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.499699, 33.488838, 41.752560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247444, 33.778694, 41.863693>,  <33.096092, 33.952610, 41.930374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247444, 33.778694, 41.863693>,  <33.499699, 33.488838, 41.752560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247444, 33.778694, 41.863693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.462898, 0.063869, 0.884107,
		0.622916, 0.686159, -0.375714,
		-0.630635, 0.724642, 0.277837,
		33.058254, 33.996086, 41.947044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885536, 33.760132, 42.252728>,  <33.499699, 33.488838, 41.752560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885536, 33.760132, 42.252728> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568558, 33.998291, 42.305687>,  <33.378372, 34.141186, 42.337463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.568558, 33.998291, 42.305687>,  <33.885536, 33.760132, 42.252728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.568558, 33.998291, 42.305687> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240939, 0.106147, 0.964718,
		0.560337, 0.796388, -0.227571,
		-0.792446, 0.595398, 0.132403,
		33.330826, 34.176910, 42.345409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.068047, 34.319645, 42.741718>,  <33.885536, 33.760132, 42.252728>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.068047, 34.319645, 42.741718> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668903, 34.293678, 42.738647>,  <33.429417, 34.278099, 42.736805>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.668903, 34.293678, 42.738647>,  <34.068047, 34.319645, 42.741718>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668903, 34.293678, 42.738647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.016596, 0.137993, 0.990294,
		-0.063229, 0.988303, -0.138775,
		-0.997861, -0.064919, -0.007677,
		33.369545, 34.274204, 42.736343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.926651, 34.918884, 43.191223>,  <34.068047, 34.319645, 42.741718>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.926651, 34.918884, 43.191223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627743, 34.654896, 43.160175>,  <33.448399, 34.496502, 43.141544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.627743, 34.654896, 43.160175>,  <33.926651, 34.918884, 43.191223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.627743, 34.654896, 43.160175> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.138270, 0.040173, 0.989579,
		-0.649974, 0.750218, -0.121274,
		-0.747272, -0.659969, -0.077622,
		33.403561, 34.456905, 43.136890>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.305931, 35.171577, 43.641300>,  <33.926651, 34.918884, 43.191223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.305931, 35.171577, 43.641300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247551, 34.780815, 43.578880>,  <33.212524, 34.546356, 43.541428>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.247551, 34.780815, 43.578880>,  <33.305931, 35.171577, 43.641300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.247551, 34.780815, 43.578880> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036324, -0.152342, 0.987660,
		-0.988625, 0.149815, -0.013251,
		-0.145948, -0.976907, -0.156051,
		33.203766, 34.487743, 43.532066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.844990, 35.002529, 44.131466>,  <33.305931, 35.171577, 43.641300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.844990, 35.002529, 44.131466> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979355, 34.633453, 44.055782>,  <33.059975, 34.412006, 44.010372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.979355, 34.633453, 44.055782>,  <32.844990, 35.002529, 44.131466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.979355, 34.633453, 44.055782> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009603, -0.204230, 0.978876,
		-0.941844, -0.327000, -0.077464,
		0.335913, -0.922692, -0.189213,
		33.080128, 34.356647, 43.999020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.480896, 34.543694, 44.619244>,  <32.844990, 35.002529, 44.131466>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.480896, 34.543694, 44.619244> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807461, 34.339695, 44.510891>,  <33.003399, 34.217297, 44.445881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.807461, 34.339695, 44.510891>,  <32.480896, 34.543694, 44.619244>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.807461, 34.339695, 44.510891> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.240172, -0.126711, 0.962425,
		-0.525155, -0.850794, 0.019038,
		0.816413, -0.509994, -0.270880,
		33.052383, 34.186695, 44.429626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.577789, 34.078224, 45.171135>,  <32.480896, 34.543694, 44.619244>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.577789, 34.078224, 45.171135> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938766, 34.078434, 44.998810>,  <33.155354, 34.078560, 44.895416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.938766, 34.078434, 44.998810>,  <32.577789, 34.078224, 45.171135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.938766, 34.078434, 44.998810> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428772, -0.098243, 0.898055,
		-0.041848, -0.995162, -0.088886,
		0.902443, 0.000530, -0.430809,
		33.209499, 34.078590, 44.869568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.936749, 33.440437, 45.430801>,  <32.577789, 34.078224, 45.171135>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.936749, 33.440437, 45.430801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228992, 33.678761, 45.297405>,  <33.404339, 33.821754, 45.217365>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.228992, 33.678761, 45.297405>,  <32.936749, 33.440437, 45.430801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.228992, 33.678761, 45.297405> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.472037, -0.087846, 0.877191,
		0.493341, -0.798309, -0.345424,
		0.730614, 0.595807, -0.333494,
		33.448177, 33.857502, 45.197357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.525764, 33.207722, 45.671169>,  <32.936749, 33.440437, 45.430801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.525764, 33.207722, 45.671169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671574, 33.572578, 45.596203>,  <33.759060, 33.791492, 45.551224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.671574, 33.572578, 45.596203>,  <33.525764, 33.207722, 45.671169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.671574, 33.572578, 45.596203> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482659, -0.012953, 0.875712,
		0.796345, -0.409673, -0.444974,
		0.364520, 0.912140, -0.187418,
		33.780930, 33.846222, 45.539978>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.279625, 33.189640, 45.951321>,  <33.525764, 33.207722, 45.671169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.279625, 33.189640, 45.951321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163464, 33.571869, 45.931114>,  <34.093769, 33.801205, 45.918991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.163464, 33.571869, 45.931114>,  <34.279625, 33.189640, 45.951321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.163464, 33.571869, 45.931114> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.495872, 0.195426, 0.846120,
		0.818400, 0.220663, -0.530593,
		-0.290399, 0.955571, -0.050516,
		34.076344, 33.858540, 45.915958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.881123, 33.707756, 45.909878>,  <34.279625, 33.189640, 45.951321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.881123, 33.707756, 45.909878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555351, 33.890842, 46.052540>,  <34.359890, 34.000694, 46.138138>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.555351, 33.890842, 46.052540>,  <34.881123, 33.707756, 45.909878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.555351, 33.890842, 46.052540> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549125, 0.409299, 0.728654,
		0.187533, 0.789287, -0.584686,
		-0.814428, 0.457713, 0.356660,
		34.311024, 34.028156, 46.159538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.112850, 34.287544, 46.073997>,  <34.881123, 33.707756, 45.909878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.112850, 34.287544, 46.073997> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762901, 34.267651, 46.266716>,  <34.552933, 34.255714, 46.382347>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.762901, 34.267651, 46.266716>,  <35.112850, 34.287544, 46.073997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.762901, 34.267651, 46.266716> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443958, 0.315384, 0.838710,
		-0.193667, 0.947660, -0.253839,
		-0.874868, -0.049736, 0.481801,
		34.500443, 34.252731, 46.411255>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.038864, 34.898922, 46.324032>,  <35.112850, 34.287544, 46.073997>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.038864, 34.898922, 46.324032> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819927, 34.643620, 46.540565>,  <34.688564, 34.490437, 46.670486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.819927, 34.643620, 46.540565>,  <35.038864, 34.898922, 46.324032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.819927, 34.643620, 46.540565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250429, 0.492284, 0.833632,
		-0.798564, 0.591845, -0.109607,
		-0.547339, -0.638260, 0.541336,
		34.655727, 34.452141, 46.702965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.614765, 35.309757, 46.767700>,  <35.038864, 34.898922, 46.324032>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.614765, 35.309757, 46.767700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606930, 34.943619, 46.928577>,  <34.602230, 34.723938, 47.025105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606930, 34.943619, 46.928577>,  <34.614765, 35.309757, 46.767700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606930, 34.943619, 46.928577> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.067330, 0.400152, 0.913972,
		-0.997538, 0.044983, 0.053791,
		-0.019589, -0.915344, 0.402195,
		34.601051, 34.669014, 47.049236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.154846, 35.394913, 47.360573>,  <34.614765, 35.309757, 46.767700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.154846, 35.394913, 47.360573> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368378, 35.065014, 47.435211>,  <34.496498, 34.867073, 47.479992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.368378, 35.065014, 47.435211>,  <34.154846, 35.394913, 47.360573>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.368378, 35.065014, 47.435211> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147403, 0.308048, 0.939882,
		-0.832645, -0.474233, 0.286016,
		0.533830, -0.824748, 0.186592,
		34.528526, 34.817589, 47.491188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.924980, 35.002945, 47.975357>,  <34.154846, 35.394913, 47.360573>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.924980, 35.002945, 47.975357> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309971, 34.897377, 47.950077>,  <34.540966, 34.834038, 47.934910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.309971, 34.897377, 47.950077>,  <33.924980, 35.002945, 47.975357>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.309971, 34.897377, 47.950077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128353, 0.237496, 0.962871,
		-0.239106, -0.934850, 0.262458,
		0.962473, -0.263916, -0.063204,
		34.598713, 34.818203, 47.931114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.025848, 34.555794, 48.545296>,  <33.924980, 35.002945, 47.975357>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.025848, 34.555794, 48.545296> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390270, 34.699928, 48.465160>,  <34.608925, 34.786411, 48.417080>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.390270, 34.699928, 48.465160>,  <34.025848, 34.555794, 48.545296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.390270, 34.699928, 48.465160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.187292, 0.071153, 0.979724,
		0.367287, -0.930104, -0.002664,
		0.911056, 0.360339, -0.200334,
		34.663586, 34.808029, 48.405060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.349369, 34.372066, 49.113800>,  <34.025848, 34.555794, 48.545296>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.349369, 34.372066, 49.113800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606564, 34.622158, 48.936867>,  <34.760880, 34.772213, 48.830708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.606564, 34.622158, 48.936867>,  <34.349369, 34.372066, 49.113800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.606564, 34.622158, 48.936867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459673, 0.146914, 0.875852,
		0.612596, -0.766485, -0.192940,
		0.642982, 0.625233, -0.442332,
		34.799458, 34.809727, 48.804169>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.811947, 34.412376, 49.639099>,  <34.349369, 34.372066, 49.113800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.811947, 34.412376, 49.639099> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983688, 34.684525, 49.401527>,  <35.086735, 34.847813, 49.258984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.983688, 34.684525, 49.401527>,  <34.811947, 34.412376, 49.639099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.983688, 34.684525, 49.401527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.555646, 0.319436, 0.767605,
		0.711979, -0.659587, -0.240894,
		0.429352, 0.680371, -0.593929,
		35.112495, 34.888638, 49.223351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.507393, 34.317650, 49.571884>,  <34.811947, 34.412376, 49.639099>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.507393, 34.317650, 49.571884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408020, 34.701431, 49.518627>,  <35.348396, 34.931702, 49.486675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.408020, 34.701431, 49.518627>,  <35.507393, 34.317650, 49.571884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.408020, 34.701431, 49.518627> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.587844, 0.258581, 0.766535,
		0.769883, 0.112168, -0.628250,
		-0.248434, 0.959455, -0.133139,
		35.333488, 34.989269, 49.478687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.129433, 34.794365, 49.488297>,  <35.507393, 34.317650, 49.571884>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.129433, 34.794365, 49.488297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835854, 35.044796, 49.593628>,  <35.659706, 35.195053, 49.656826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.835854, 35.044796, 49.593628>,  <36.129433, 34.794365, 49.488297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.835854, 35.044796, 49.593628> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.631290, 0.485787, 0.604553,
		0.250576, 0.609949, -0.751781,
		-0.733951, 0.626078, 0.263328,
		35.615669, 35.232620, 49.672626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.542061, 35.365093, 49.722031>,  <36.129433, 34.794365, 49.488297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.542061, 35.365093, 49.722031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173954, 35.448734, 49.854328>,  <35.953091, 35.498917, 49.933708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.173954, 35.448734, 49.854328>,  <36.542061, 35.365093, 49.722031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.173954, 35.448734, 49.854328> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.391243, 0.506317, 0.768487,
		-0.006773, 0.836612, -0.547754,
		-0.920263, 0.209100, 0.330747,
		35.897877, 35.511463, 49.953552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.593094, 35.926987, 49.982754>,  <36.542061, 35.365093, 49.722031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.593094, 35.926987, 49.982754> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266544, 35.794579, 50.172047>,  <36.070614, 35.715134, 50.285622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.266544, 35.794579, 50.172047>,  <36.593094, 35.926987, 49.982754>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.266544, 35.794579, 50.172047> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366523, 0.336274, 0.867514,
		-0.446304, 0.881671, -0.153199,
		-0.816379, -0.331024, 0.473233,
		36.021629, 35.695271, 50.314018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.320808, 36.454487, 50.468872>,  <36.593094, 35.926987, 49.982754>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.320808, 36.454487, 50.468872> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215950, 36.082970, 50.573658>,  <36.153034, 35.860058, 50.636528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.215950, 36.082970, 50.573658>,  <36.320808, 36.454487, 50.468872>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.215950, 36.082970, 50.573658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304274, 0.178060, 0.935795,
		-0.915805, 0.325021, 0.235931,
		-0.262143, -0.928793, 0.261964,
		36.137306, 35.804333, 50.652248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085194, 36.500080, 51.180038>,  <36.320808, 36.454487, 50.468872>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085194, 36.500080, 51.180038> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093521, 36.101879, 51.143055>,  <36.098518, 35.862961, 51.120865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.093521, 36.101879, 51.143055>,  <36.085194, 36.500080, 51.180038>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.093521, 36.101879, 51.143055> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041096, -0.093255, 0.994794,
		-0.998938, -0.016911, -0.042852,
		0.020819, -0.995499, -0.092461,
		36.099766, 35.803230, 51.115318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.636372, 36.258869, 51.582500>,  <36.085194, 36.500080, 51.180038>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.636372, 36.258869, 51.582500> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911678, 35.974323, 51.525578>,  <36.076862, 35.803596, 51.491425>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.911678, 35.974323, 51.525578>,  <35.636372, 36.258869, 51.582500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.911678, 35.974323, 51.525578> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139907, -0.062330, 0.988201,
		-0.711839, -0.700056, 0.056625,
		0.688267, -0.711362, -0.142312,
		36.118160, 35.760914, 51.482883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.597061, 35.823845, 52.166965>,  <35.636372, 36.258869, 51.582500>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.597061, 35.823845, 52.166965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958519, 35.763763, 52.006535>,  <36.175396, 35.727715, 51.910278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.958519, 35.763763, 52.006535>,  <35.597061, 35.823845, 52.166965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.958519, 35.763763, 52.006535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.363406, -0.226624, 0.903647,
		-0.226624, -0.962330, -0.150203,
		-0.903647, 0.150203, 0.401075,
		36.229614, 35.718704, 51.886211>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.908913, 35.224834, 52.413006>,  <35.597061, 35.823845, 52.166965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.908913, 35.224834, 52.413006> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202648, 35.481186, 52.323547>,  <36.378891, 35.634998, 52.269871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.202648, 35.481186, 52.323547>,  <35.908913, 35.224834, 52.413006>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.202648, 35.481186, 52.323547> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.445768, -0.206851, 0.870921,
		0.511896, -0.739245, -0.437583,
		0.734339, 0.640882, -0.223645,
		36.422951, 35.673450, 52.256454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.198082, 35.165638, 53.018620>,  <35.908913, 35.224834, 52.413006>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.198082, 35.165638, 53.018620> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430420, 35.439774, 52.842930>,  <36.569824, 35.604256, 52.737514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.430420, 35.439774, 52.842930>,  <36.198082, 35.165638, 53.018620>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.430420, 35.439774, 52.842930> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453592, 0.175543, 0.873750,
		0.675922, -0.706745, -0.208903,
		0.580847, 0.685343, -0.439228,
		36.604675, 35.645378, 52.711163>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807232, 35.096989, 53.344364>,  <36.198082, 35.165638, 53.018620>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807232, 35.096989, 53.344364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836044, 35.441765, 53.143616>,  <36.853333, 35.648628, 53.023167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.836044, 35.441765, 53.143616>,  <36.807232, 35.096989, 53.344364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.836044, 35.441765, 53.143616> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.649768, 0.341202, 0.679252,
		0.756712, -0.375029, -0.535482,
		0.072031, 0.861937, -0.501873,
		36.857655, 35.700344, 52.993053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.421192, 35.146729, 52.902332>,  <36.807232, 35.096989, 53.344364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.421192, 35.146729, 52.902332> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300087, 35.506298, 53.028988>,  <37.227425, 35.722042, 53.104980>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.300087, 35.506298, 53.028988>,  <37.421192, 35.146729, 52.902332>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.300087, 35.506298, 53.028988> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.887039, 0.144278, 0.438572,
		0.348560, 0.413657, -0.841067,
		-0.302766, 0.898928, 0.316641,
		37.209259, 35.775978, 53.123981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.086250, 35.453747, 52.874657>,  <37.421192, 35.146729, 52.902332>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.086250, 35.453747, 52.874657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864395, 35.752735, 53.020897>,  <37.731281, 35.932129, 53.108643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.864395, 35.752735, 53.020897>,  <38.086250, 35.453747, 52.874657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.864395, 35.752735, 53.020897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.830783, 0.472791, 0.293714,
		0.046692, 0.466638, -0.883215,
		-0.554635, 0.747474, 0.365599,
		37.698006, 35.976978, 53.130577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.730598, 35.858040, 52.837391>,  <38.086250, 35.453747, 52.874657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.730598, 35.858040, 52.837391> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077358, 35.748238, 52.670952>,  <39.285412, 35.682354, 52.571091>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.077358, 35.748238, 52.670952>,  <38.730598, 35.858040, 52.837391>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.077358, 35.748238, 52.670952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494359, -0.580636, -0.646893,
		-0.064022, 0.766490, -0.639057,
		0.866897, -0.274508, -0.416095,
		39.337429, 35.665886, 52.546124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.445023, 35.804588, 52.292694>,  <38.730598, 35.858040, 52.837391>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.445023, 35.804588, 52.292694> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749313, 35.549034, 52.338501>,  <38.931889, 35.395702, 52.365986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.749313, 35.549034, 52.338501>,  <38.445023, 35.804588, 52.292694>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.749313, 35.549034, 52.338501> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.380863, -0.582244, -0.718286,
		0.525581, 0.502807, -0.686258,
		0.760729, -0.638888, 0.114515,
		38.977531, 35.357368, 52.372856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.685463, 35.744690, 51.618263>,  <38.445023, 35.804588, 52.292694>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.685463, 35.744690, 51.618263> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787941, 35.420750, 51.829361>,  <38.849430, 35.226387, 51.956020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.787941, 35.420750, 51.829361>,  <38.685463, 35.744690, 51.618263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.787941, 35.420750, 51.829361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290536, -0.585233, -0.757028,
		0.921929, 0.040621, -0.385224,
		0.256197, -0.809847, 0.527741,
		38.864799, 35.177795, 51.987682>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.162273, 35.345768, 51.241180>,  <38.685463, 35.744690, 51.618263>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.162273, 35.345768, 51.241180> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922417, 35.147671, 51.492630>,  <38.778503, 35.028812, 51.643497>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.922417, 35.147671, 51.492630>,  <39.162273, 35.345768, 51.241180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.922417, 35.147671, 51.492630> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.329831, -0.562748, -0.757976,
		0.729140, -0.661850, 0.174098,
		-0.599639, -0.495247, 0.628620,
		38.742523, 34.999096, 51.681217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.225464, 34.598846, 51.238846>,  <39.162273, 35.345768, 51.241180>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.225464, 34.598846, 51.238846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846695, 34.690449, 51.329090>,  <38.619434, 34.745411, 51.383236>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.846695, 34.690449, 51.329090>,  <39.225464, 34.598846, 51.238846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.846695, 34.690449, 51.329090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319513, -0.593034, -0.739068,
		-0.035453, -0.771924, 0.634725,
		-0.946919, 0.229005, 0.225615,
		38.562618, 34.759151, 51.396774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.834682, 33.947639, 51.310551>,  <39.225464, 34.598846, 51.238846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.834682, 33.947639, 51.310551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594414, 34.248577, 51.202347>,  <38.450253, 34.429138, 51.137424>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.594414, 34.248577, 51.202347>,  <38.834682, 33.947639, 51.310551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.594414, 34.248577, 51.202347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311220, -0.531693, -0.787683,
		-0.736437, -0.388949, 0.553516,
		-0.600669, 0.752344, -0.270509,
		38.414211, 34.474281, 51.121193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175766, 33.642365, 51.201286>,  <38.834682, 33.947639, 51.310551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175766, 33.642365, 51.201286> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160065, 33.985535, 50.996376>,  <38.150642, 34.191437, 50.873432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.160065, 33.985535, 50.996376>,  <38.175766, 33.642365, 51.201286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.160065, 33.985535, 50.996376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506877, -0.458908, -0.729711,
		-0.861124, 0.231012, 0.452879,
		-0.039257, 0.857926, -0.512272,
		38.148289, 34.242912, 50.842693>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.555111, 33.526955, 50.910507>,  <38.175766, 33.642365, 51.201286>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.555111, 33.526955, 50.910507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692909, 33.829964, 50.688702>,  <37.775589, 34.011768, 50.555618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.692909, 33.829964, 50.688702>,  <37.555111, 33.526955, 50.910507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.692909, 33.829964, 50.688702> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.382277, -0.426287, -0.819843,
		-0.857430, 0.494412, 0.142727,
		0.344498, 0.757519, -0.554514,
		37.796257, 34.057220, 50.522346>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.968807, 33.653126, 50.487568>,  <37.555111, 33.526955, 50.910507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.968807, 33.653126, 50.487568> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279900, 33.820892, 50.300285>,  <37.466557, 33.921555, 50.187916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.279900, 33.820892, 50.300285>,  <36.968807, 33.653126, 50.487568>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.279900, 33.820892, 50.300285> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.342833, -0.341296, -0.875204,
		-0.526877, 0.841191, -0.121645,
		0.777731, 0.419421, -0.468210,
		37.513218, 33.946720, 50.159821>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.726860, 33.949596, 49.846485>,  <36.968807, 33.653126, 50.487568>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.726860, 33.949596, 49.846485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117546, 33.941170, 49.761078>,  <37.351955, 33.936111, 49.709835>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.117546, 33.941170, 49.761078>,  <36.726860, 33.949596, 49.846485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.117546, 33.941170, 49.761078> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212071, -0.245745, -0.945852,
		-0.032540, 0.969105, -0.244491,
		0.976712, -0.021071, -0.213516,
		37.410561, 33.934849, 49.697021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.827526, 34.391422, 49.243908>,  <36.726860, 33.949596, 49.846485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.827526, 34.391422, 49.243908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137798, 34.139317, 49.257023>,  <37.323963, 33.988052, 49.264893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.137798, 34.139317, 49.257023>,  <36.827526, 34.391422, 49.243908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.137798, 34.139317, 49.257023> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162900, -0.250141, -0.954407,
		0.609735, 0.734978, -0.296701,
		0.775685, -0.630268, 0.032792,
		37.370502, 33.950237, 49.266861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384220, 34.594975, 48.687962>,  <36.827526, 34.391422, 49.243908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384220, 34.594975, 48.687962> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395206, 34.207386, 48.786221>,  <37.401798, 33.974834, 48.845177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.395206, 34.207386, 48.786221>,  <37.384220, 34.594975, 48.687962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.395206, 34.207386, 48.786221> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088607, -0.247134, -0.964922,
		0.995688, 0.004733, -0.092645,
		0.027462, -0.968970, 0.245649,
		37.403446, 33.916695, 48.859917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.780514, 34.332245, 48.133831>,  <37.384220, 34.594975, 48.687962>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.780514, 34.332245, 48.133831> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646961, 33.998505, 48.309273>,  <37.566830, 33.798260, 48.414539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.646961, 33.998505, 48.309273>,  <37.780514, 34.332245, 48.133831>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.646961, 33.998505, 48.309273> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.121585, -0.423303, -0.897793,
		0.934741, -0.353084, 0.039888,
		-0.333881, -0.834354, 0.438608,
		37.546799, 33.748199, 48.440857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147602, 33.815762, 47.819714>,  <37.780514, 34.332245, 48.133831>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147602, 33.815762, 47.819714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796951, 33.682575, 47.958660>,  <37.586559, 33.602665, 48.042027>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.796951, 33.682575, 47.958660>,  <38.147602, 33.815762, 47.819714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.796951, 33.682575, 47.958660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.211202, -0.382387, -0.899541,
		0.432341, -0.861925, 0.264888,
		-0.876627, -0.332964, 0.347362,
		37.533962, 33.582687, 48.062870>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.157890, 33.198425, 47.621098>,  <38.147602, 33.815762, 47.819714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.157890, 33.198425, 47.621098> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769562, 33.262962, 47.692066>,  <37.536564, 33.301685, 47.734650>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.769562, 33.262962, 47.692066>,  <38.157890, 33.198425, 47.621098>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.769562, 33.262962, 47.692066> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.204660, -0.171780, -0.963642,
		-0.124991, -0.971835, 0.199786,
		-0.970820, 0.161334, 0.177425,
		37.478317, 33.311363, 47.745293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.832661, 32.631618, 47.250069>,  <38.157890, 33.198425, 47.621098>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.832661, 32.631618, 47.250069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544205, 32.899342, 47.321602>,  <37.371132, 33.059975, 47.364521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.544205, 32.899342, 47.321602>,  <37.832661, 32.631618, 47.250069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.544205, 32.899342, 47.321602> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395640, -0.185972, -0.899380,
		-0.568705, -0.719332, 0.398917,
		-0.721140, 0.669309, 0.178833,
		37.327862, 33.100136, 47.375252>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.280899, 32.282116, 47.010288>,  <37.832661, 32.631618, 47.250069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.280899, 32.282116, 47.010288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261276, 32.680561, 46.981003>,  <37.249504, 32.919628, 46.963432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.261276, 32.680561, 46.981003>,  <37.280899, 32.282116, 47.010288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.261276, 32.680561, 46.981003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.384191, -0.086481, -0.919194,
		-0.921949, -0.016965, 0.386939,
		-0.049057, 0.996109, -0.073213,
		37.246559, 32.979393, 46.959038>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.604710, 32.412434, 46.697594>,  <37.280899, 32.282116, 47.010288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.604710, 32.412434, 46.697594> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792099, 32.763748, 46.659321>,  <36.904533, 32.974537, 46.636356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.792099, 32.763748, 46.659321>,  <36.604710, 32.412434, 46.697594>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.792099, 32.763748, 46.659321> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.314414, 0.064526, -0.947090,
		-0.825638, 0.473769, 0.306373,
		0.468472, 0.878282, -0.095684,
		36.932640, 33.027233, 46.630615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.092762, 32.816555, 46.348667>,  <36.604710, 32.412434, 46.697594>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.092762, 32.816555, 46.348667> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452526, 32.979080, 46.284206>,  <36.668385, 33.076595, 46.245529>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.452526, 32.979080, 46.284206>,  <36.092762, 32.816555, 46.348667>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.452526, 32.979080, 46.284206> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168362, -0.018196, -0.985557,
		-0.403374, 0.913554, 0.052041,
		0.899413, 0.406310, -0.161148,
		36.722351, 33.100971, 46.235863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.891151, 33.257877, 45.852692>,  <36.092762, 32.816555, 46.348667>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.891151, 33.257877, 45.852692> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288261, 33.211746, 45.839436>,  <36.526527, 33.184067, 45.831482>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.288261, 33.211746, 45.839436>,  <35.891151, 33.257877, 45.852692>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.288261, 33.211746, 45.839436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.047998, -0.128581, -0.990537,
		0.109975, 0.984970, -0.133187,
		0.992775, -0.115327, -0.033136,
		36.586094, 33.177147, 45.829494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.074402, 33.636082, 45.294804>,  <35.891151, 33.257877, 45.852692>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.074402, 33.636082, 45.294804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367390, 33.370914, 45.356796>,  <36.543182, 33.211815, 45.393990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.367390, 33.370914, 45.356796>,  <36.074402, 33.636082, 45.294804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.367390, 33.370914, 45.356796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.012788, -0.241001, -0.970441,
		0.680677, 0.708839, -0.185004,
		0.732472, -0.662922, 0.154979,
		36.587132, 33.172039, 45.403290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.552280, 33.704578, 44.823563>,  <36.074402, 33.636082, 45.294804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.552280, 33.704578, 44.823563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646343, 33.329918, 44.927399>,  <36.702782, 33.105122, 44.989700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.646343, 33.329918, 44.927399>,  <36.552280, 33.704578, 44.823563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.646343, 33.329918, 44.927399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.043142, -0.256762, -0.965511,
		0.970999, 0.238250, -0.019971,
		0.235161, -0.936648, 0.259594,
		36.716892, 33.048923, 45.005276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.201229, 33.532314, 44.373985>,  <36.552280, 33.704578, 44.823563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.201229, 33.532314, 44.373985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042213, 33.182499, 44.485088>,  <36.946804, 32.972610, 44.551750>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.042213, 33.182499, 44.485088>,  <37.201229, 33.532314, 44.373985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.042213, 33.182499, 44.485088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.042915, -0.320090, -0.946415,
		0.916579, -0.364321, 0.164780,
		-0.397543, -0.874536, 0.277753,
		36.922951, 32.920139, 44.568413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.527340, 33.064514, 44.008541>,  <37.201229, 33.532314, 44.373985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.527340, 33.064514, 44.008541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210693, 32.850368, 44.126343>,  <37.020706, 32.721882, 44.197021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.210693, 32.850368, 44.126343>,  <37.527340, 33.064514, 44.008541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.210693, 32.850368, 44.126343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.044267, -0.430463, -0.901522,
		0.609417, -0.726693, 0.317061,
		-0.791613, -0.535368, 0.294501,
		36.973209, 32.689758, 44.214691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.565029, 32.472454, 43.634186>,  <37.527340, 33.064514, 44.008541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.565029, 32.472454, 43.634186> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187317, 32.441963, 43.762264>,  <36.960690, 32.423668, 43.839111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.187317, 32.441963, 43.762264>,  <37.565029, 32.472454, 43.634186>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.187317, 32.441963, 43.762264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243519, -0.492669, -0.835449,
		0.221431, -0.866872, 0.446655,
		-0.944281, -0.076225, 0.320192,
		36.904034, 32.419094, 43.858322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.443562, 31.737461, 43.770382>,  <37.565029, 32.472454, 43.634186>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.443562, 31.737461, 43.770382> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084549, 31.900028, 43.701954>,  <36.869141, 31.997568, 43.660896>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.084549, 31.900028, 43.701954>,  <37.443562, 31.737461, 43.770382>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.084549, 31.900028, 43.701954> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097746, -0.561685, -0.821557,
		-0.429983, -0.720650, 0.543855,
		-0.897530, 0.406416, -0.171074,
		36.815289, 32.021954, 43.650631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.036633, 31.189983, 43.511116>,  <37.443562, 31.737461, 43.770382>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.036633, 31.189983, 43.511116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852379, 31.523617, 43.389709>,  <36.741829, 31.723797, 43.316864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.852379, 31.523617, 43.389709>,  <37.036633, 31.189983, 43.511116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.852379, 31.523617, 43.389709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.063308, -0.371957, -0.926089,
		-0.885331, -0.407370, 0.224140,
		-0.460631, 0.834085, -0.303515,
		36.714188, 31.773842, 43.298656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.592705, 30.993921, 42.948597>,  <37.036633, 31.189983, 43.511116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.592705, 30.993921, 42.948597> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574188, 31.390293, 42.898136>,  <36.563076, 31.628117, 42.867859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.574188, 31.390293, 42.898136>,  <36.592705, 30.993921, 42.948597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.574188, 31.390293, 42.898136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.084616, -0.129723, -0.987933,
		-0.995338, -0.035062, 0.089854,
		-0.046295, 0.990930, -0.126151,
		36.560299, 31.687572, 42.860291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.939457, 31.195312, 42.581661>,  <36.592705, 30.993921, 42.948597>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.939457, 31.195312, 42.581661> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212368, 31.483318, 42.530949>,  <36.376114, 31.656122, 42.500519>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.212368, 31.483318, 42.530949>,  <35.939457, 31.195312, 42.581661>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.212368, 31.483318, 42.530949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202266, 0.019251, -0.979141,
		-0.702555, 0.693693, 0.158768,
		0.682280, 0.720014, -0.126785,
		36.417053, 31.699322, 42.492912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.656456, 31.807018, 42.240288>,  <35.939457, 31.195312, 42.581661>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.656456, 31.807018, 42.240288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045837, 31.806992, 42.148739>,  <36.279469, 31.806976, 42.093811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.045837, 31.806992, 42.148739>,  <35.656456, 31.807018, 42.240288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045837, 31.806992, 42.148739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.228696, 0.038674, -0.972729,
		0.008915, 0.999252, 0.037633,
		0.973457, -0.000065, -0.228870,
		36.337875, 31.806973, 42.080078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.610203, 32.350563, 41.830742>,  <35.656456, 31.807018, 42.240288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.610203, 32.350563, 41.830742> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942310, 32.152122, 41.729130>,  <36.141575, 32.033058, 41.668163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.942310, 32.152122, 41.729130>,  <35.610203, 32.350563, 41.830742>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.942310, 32.152122, 41.729130> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137246, 0.259757, -0.955871,
		0.540197, 0.828497, 0.147581,
		0.830272, -0.496103, -0.254028,
		36.191391, 32.003292, 41.652920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.922440, 32.569275, 41.228844>,  <35.610203, 32.350563, 41.830742>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.922440, 32.569275, 41.228844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142525, 32.235886, 41.208519>,  <36.274578, 32.035851, 41.196323>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.142525, 32.235886, 41.208519>,  <35.922440, 32.569275, 41.228844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.142525, 32.235886, 41.208519> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.050193, 0.093756, -0.994329,
		0.833512, 0.544546, 0.093421,
		0.550216, -0.833475, -0.050814,
		36.307590, 31.985844, 41.193275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.380630, 32.745010, 40.705700>,  <35.922440, 32.569275, 41.228844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.380630, 32.745010, 40.705700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361622, 32.350784, 40.770699>,  <36.350216, 32.114250, 40.809696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.361622, 32.350784, 40.770699>,  <36.380630, 32.745010, 40.705700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.361622, 32.350784, 40.770699> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.024379, -0.161487, -0.986574,
		0.998572, -0.050849, -0.016352,
		-0.047526, -0.985564, 0.162496,
		36.347363, 32.055115, 40.819447>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.757866, 32.387531, 40.243908>,  <36.380630, 32.745010, 40.705700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.757866, 32.387531, 40.243908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506851, 32.093487, 40.346523>,  <36.356243, 31.917061, 40.408092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.506851, 32.093487, 40.346523>,  <36.757866, 32.387531, 40.243908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.506851, 32.093487, 40.346523> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155690, -0.204365, -0.966435,
		0.762862, -0.646414, 0.013798,
		-0.627536, -0.735108, 0.256542,
		36.318592, 31.872953, 40.423485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.843502, 31.790075, 39.750576>,  <36.757866, 32.387531, 40.243908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.843502, 31.790075, 39.750576> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502964, 31.686565, 39.933113>,  <36.298641, 31.624460, 40.042637>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.502964, 31.686565, 39.933113>,  <36.843502, 31.790075, 39.750576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.502964, 31.686565, 39.933113> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.403698, -0.232374, -0.884890,
		0.335031, -0.937570, 0.093363,
		-0.851342, -0.258775, 0.456347,
		36.247562, 31.608932, 40.070019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.651180, 31.086918, 39.452194>,  <36.843502, 31.790075, 39.750576>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.651180, 31.086918, 39.452194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316315, 31.255653, 39.591457>,  <36.115395, 31.356895, 39.675014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.316315, 31.255653, 39.591457>,  <36.651180, 31.086918, 39.452194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.316315, 31.255653, 39.591457> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468270, -0.223851, -0.854759,
		-0.282641, -0.878600, 0.384936,
		-0.837160, 0.421845, 0.348153,
		36.065166, 31.382204, 39.695904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.109097, 30.603588, 39.256996>,  <36.651180, 31.086918, 39.452194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.109097, 30.603588, 39.256996> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935501, 30.960407, 39.307442>,  <35.831345, 31.174500, 39.337708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.935501, 30.960407, 39.307442>,  <36.109097, 30.603588, 39.256996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.935501, 30.960407, 39.307442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639208, -0.206239, -0.740863,
		-0.634877, -0.402137, 0.659710,
		-0.433986, 0.892049, 0.126113,
		35.805305, 31.228022, 39.345276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.474838, 30.460293, 39.183338>,  <36.109097, 30.603588, 39.256996>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.474838, 30.460293, 39.183338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488541, 30.855238, 39.121449>,  <35.496761, 31.092205, 39.084312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.488541, 30.855238, 39.121449>,  <35.474838, 30.460293, 39.183338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.488541, 30.855238, 39.121449> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.503527, -0.116681, -0.856064,
		-0.863300, 0.107239, 0.493167,
		0.034261, 0.987363, -0.154729,
		35.498817, 31.151447, 39.075031>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.805759, 30.641918, 38.974171>,  <35.474838, 30.460293, 39.183338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.805759, 30.641918, 38.974171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028481, 30.954304, 38.860989>,  <35.162113, 31.141735, 38.793079>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.028481, 30.954304, 38.860989>,  <34.805759, 30.641918, 38.974171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.028481, 30.954304, 38.860989> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454275, 0.001114, -0.890861,
		-0.695417, 0.624572, 0.355393,
		0.556803, 0.780966, -0.282953,
		35.195522, 31.188593, 38.776104>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.448730, 30.796888, 38.430111>,  <34.805759, 30.641918, 38.974171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.448730, 30.796888, 38.430111> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756294, 31.052311, 38.417358>,  <34.940834, 31.205564, 38.409706>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.756294, 31.052311, 38.417358>,  <34.448730, 30.796888, 38.430111>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.756294, 31.052311, 38.417358> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.095989, 0.066001, -0.993192,
		-0.632106, 0.766739, 0.112044,
		0.768914, 0.638558, -0.031879,
		34.986969, 31.243877, 38.407795>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.230030, 31.485769, 38.141933>,  <34.448730, 30.796888, 38.430111>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.230030, 31.485769, 38.141933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623447, 31.469494, 38.071518>,  <34.859497, 31.459728, 38.029266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.623447, 31.469494, 38.071518>,  <34.230030, 31.485769, 38.141933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623447, 31.469494, 38.071518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143089, 0.419526, -0.896395,
		0.110326, 0.906831, 0.406800,
		0.983541, -0.040687, -0.176042,
		34.918510, 31.457287, 38.018707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.462349, 32.189384, 37.885899>,  <34.230030, 31.485769, 38.141933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.462349, 32.189384, 37.885899> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748363, 31.935608, 37.768452>,  <34.919971, 31.783340, 37.697983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.748363, 31.935608, 37.768452>,  <34.462349, 32.189384, 37.885899>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.748363, 31.935608, 37.768452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.022983, 0.441098, -0.897165,
		0.698714, 0.634754, 0.329981,
		0.715032, -0.634445, -0.293612,
		34.962872, 31.745274, 37.680367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.984642, 32.516129, 37.580273>,  <34.462349, 32.189384, 37.885899>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.984642, 32.516129, 37.580273> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046734, 32.151165, 37.428791>,  <35.083988, 31.932188, 37.337902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.046734, 32.151165, 37.428791>,  <34.984642, 32.516129, 37.580273>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.046734, 32.151165, 37.428791> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.037890, 0.388566, -0.920642,
		0.987151, 0.128565, 0.094889,
		0.155233, -0.912408, -0.378702,
		35.093304, 31.877443, 37.315182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.471024, 32.625835, 37.061359>,  <34.984642, 32.516129, 37.580273>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.471024, 32.625835, 37.061359> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306320, 32.269871, 36.982864>,  <35.207497, 32.056293, 36.935768>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.306320, 32.269871, 36.982864>,  <35.471024, 32.625835, 37.061359>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.306320, 32.269871, 36.982864> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039747, 0.232677, -0.971742,
		0.910426, -0.392324, -0.131178,
		-0.411759, -0.889912, -0.196242,
		35.182793, 32.002895, 36.923992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.950172, 32.379543, 37.523949>,  <35.471024, 32.625835, 37.061359>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.950172, 32.379543, 37.523949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100063, 32.680607, 37.307400>,  <36.189999, 32.861244, 37.177471>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.100063, 32.680607, 37.307400>,  <35.950172, 32.379543, 37.523949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.100063, 32.680607, 37.307400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.527382, 0.307211, 0.792143,
		0.762529, -0.582346, -0.281819,
		0.374724, 0.752658, -0.541376,
		36.212479, 32.906403, 37.144985>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.739914, 32.359798, 37.596764>,  <35.950172, 32.379543, 37.523949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.739914, 32.359798, 37.596764> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633099, 32.727806, 37.482044>,  <36.569008, 32.948612, 37.413212>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.633099, 32.727806, 37.482044>,  <36.739914, 32.359798, 37.596764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.633099, 32.727806, 37.482044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.752800, 0.384955, 0.533950,
		0.601649, -0.073318, -0.795388,
		-0.267040, 0.920019, -0.286802,
		36.552986, 33.003811, 37.396004>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.381271, 32.709675, 37.330101>,  <36.739914, 32.359798, 37.596764>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.381271, 32.709675, 37.330101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134319, 33.006035, 37.435860>,  <36.986149, 33.183853, 37.499313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.134319, 33.006035, 37.435860>,  <37.381271, 32.709675, 37.330101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134319, 33.006035, 37.435860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.737429, 0.428031, 0.522483,
		0.273939, 0.517545, -0.810620,
		-0.617379, 0.740903, 0.264398,
		36.949104, 33.228306, 37.515179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.766708, 33.302647, 37.183361>,  <37.381271, 32.709675, 37.330101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.766708, 33.302647, 37.183361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472652, 33.399750, 37.436546>,  <37.296219, 33.458012, 37.588459>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.472652, 33.399750, 37.436546>,  <37.766708, 33.302647, 37.183361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.472652, 33.399750, 37.436546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663975, 0.446223, 0.600018,
		-0.136783, 0.861367, -0.489221,
		-0.735137, 0.242758, 0.632962,
		37.252110, 33.472576, 37.626434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.751572, 34.031441, 37.336994>,  <37.766708, 33.302647, 37.183361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.751572, 34.031441, 37.336994> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550377, 33.905804, 37.659077>,  <37.429661, 33.830421, 37.852325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.550377, 33.905804, 37.659077>,  <37.751572, 34.031441, 37.336994>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.550377, 33.905804, 37.659077> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680063, 0.431135, 0.592990,
		-0.533407, 0.845853, -0.003248,
		-0.502982, -0.314096, 0.805203,
		37.399483, 33.811573, 37.900639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.679180, 34.621243, 37.866627>,  <37.751572, 34.031441, 37.336994>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.679180, 34.621243, 37.866627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626957, 34.287895, 38.081455>,  <37.595623, 34.087887, 38.210354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.626957, 34.287895, 38.081455>,  <37.679180, 34.621243, 37.866627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.626957, 34.287895, 38.081455> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667338, 0.326756, 0.669247,
		-0.733223, 0.445782, 0.513481,
		-0.130556, -0.833372, 0.537072,
		37.587791, 34.037884, 38.242577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.708858, 34.887684, 38.489208>,  <37.679180, 34.621243, 37.866627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.708858, 34.887684, 38.489208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773228, 34.499187, 38.559410>,  <37.811852, 34.266090, 38.601532>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.773228, 34.499187, 38.559410>,  <37.708858, 34.887684, 38.489208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.773228, 34.499187, 38.559410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516398, 0.234396, 0.823645,
		-0.841092, -0.041916, 0.539266,
		0.160926, -0.971237, 0.175503,
		37.821507, 34.207817, 38.612061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.378696, 34.714756, 39.178276>,  <37.708858, 34.887684, 38.489208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.378696, 34.714756, 39.178276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659321, 34.446957, 39.080639>,  <37.827694, 34.286278, 39.022057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.659321, 34.446957, 39.080639>,  <37.378696, 34.714756, 39.178276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.659321, 34.446957, 39.080639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501948, 0.221134, 0.836151,
		-0.505825, -0.709134, 0.491193,
		0.701562, -0.669499, -0.244093,
		37.869789, 34.246105, 39.007412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.422401, 34.249702, 39.795029>,  <37.378696, 34.714756, 39.178276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.422401, 34.249702, 39.795029> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772903, 34.203823, 39.607826>,  <37.983204, 34.176296, 39.495506>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.772903, 34.203823, 39.607826>,  <37.422401, 34.249702, 39.795029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.772903, 34.203823, 39.607826> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.481507, 0.171459, 0.859507,
		-0.018341, -0.978492, 0.205469,
		0.876250, -0.114699, -0.468006,
		38.035778, 34.169415, 39.467422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.739025, 33.583405, 39.990219>,  <37.422401, 34.249702, 39.795029>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.739025, 33.583405, 39.990219> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051941, 33.789776, 39.850594>,  <38.239689, 33.913601, 39.766819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.051941, 33.789776, 39.850594>,  <37.739025, 33.583405, 39.990219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.051941, 33.789776, 39.850594> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.457955, -0.096480, 0.883725,
		0.422264, -0.851180, -0.311747,
		0.782286, 0.515931, -0.349062,
		38.286625, 33.944553, 39.745876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.205151, 33.190418, 40.274857>,  <37.739025, 33.583405, 39.990219>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.205151, 33.190418, 40.274857> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402241, 33.513153, 40.144485>,  <38.520496, 33.706795, 40.066261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.402241, 33.513153, 40.144485>,  <38.205151, 33.190418, 40.274857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.402241, 33.513153, 40.144485> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297147, 0.196031, 0.934492,
		0.817876, -0.557301, -0.143159,
		0.492729, 0.806838, -0.325929,
		38.550060, 33.755203, 40.046707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.947834, 33.090393, 40.346626>,  <38.205151, 33.190418, 40.274857>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.947834, 33.090393, 40.346626> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913010, 33.488853, 40.342518>,  <38.892113, 33.727928, 40.340054>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913010, 33.488853, 40.342518>,  <38.947834, 33.090393, 40.346626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913010, 33.488853, 40.342518> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376825, 0.042479, 0.925310,
		0.922184, 0.076691, -0.379072,
		-0.087066, 0.996150, -0.010274,
		38.886890, 33.787697, 40.339436>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.487778, 33.281742, 40.695267>,  <38.947834, 33.090393, 40.346626>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.487778, 33.281742, 40.695267> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275532, 33.620747, 40.700565>,  <39.148186, 33.824150, 40.703743>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.275532, 33.620747, 40.700565>,  <39.487778, 33.281742, 40.695267>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.275532, 33.620747, 40.700565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283565, 0.162766, 0.945039,
		0.798775, 0.505205, -0.326690,
		-0.530612, 0.847511, 0.013244,
		39.116348, 33.875000, 40.704540>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.987114, 33.838188, 41.008507>,  <39.487778, 33.281742, 40.695267>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.987114, 33.838188, 41.008507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602596, 33.940289, 41.049984>,  <39.371883, 34.001549, 41.074871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.602596, 33.940289, 41.049984>,  <39.987114, 33.838188, 41.008507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.602596, 33.940289, 41.049984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126510, 0.074622, 0.989155,
		0.244747, 0.963990, -0.104026,
		-0.961298, 0.255253, 0.103691,
		39.314205, 34.016865, 41.081093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.002876, 34.457226, 41.430527>,  <39.987114, 33.838188, 41.008507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.002876, 34.457226, 41.430527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621788, 34.338074, 41.454475>,  <39.393135, 34.266582, 41.468845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.621788, 34.338074, 41.454475>,  <40.002876, 34.457226, 41.430527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.621788, 34.338074, 41.454475> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.018750, 0.139040, 0.990109,
		-0.303254, 0.944425, -0.126882,
		-0.952725, -0.297876, 0.059872,
		39.335972, 34.248711, 41.472439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.644726, 34.924294, 41.841255>,  <40.002876, 34.457226, 41.430527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.644726, 34.924294, 41.841255> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412746, 34.599472, 41.867275>,  <39.273560, 34.404579, 41.882889>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.412746, 34.599472, 41.867275>,  <39.644726, 34.924294, 41.841255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.412746, 34.599472, 41.867275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.197785, 0.217815, 0.955739,
		-0.790281, 0.541410, -0.286933,
		-0.579945, -0.812054, 0.065053,
		39.238762, 34.355854, 41.886791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988243, 35.122578, 42.163879>,  <39.644726, 34.924294, 41.841255>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988243, 35.122578, 42.163879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029278, 34.731548, 42.237442>,  <39.053898, 34.496929, 42.281578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.029278, 34.731548, 42.237442>,  <38.988243, 35.122578, 42.163879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.029278, 34.731548, 42.237442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371181, 0.133906, 0.918855,
		-0.922877, -0.162522, -0.349121,
		0.102585, -0.977577, 0.183903,
		39.060055, 34.438274, 42.292614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387436, 34.937351, 42.537483>,  <38.988243, 35.122578, 42.163879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387436, 34.937351, 42.537483> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654247, 34.652927, 42.626453>,  <38.814335, 34.482273, 42.679836>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.654247, 34.652927, 42.626453>,  <38.387436, 34.937351, 42.537483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.654247, 34.652927, 42.626453> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.220097, 0.097151, 0.970628,
		-0.711783, -0.696388, -0.091700,
		0.667025, -0.711059, 0.222423,
		38.854355, 34.439610, 42.693180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.981094, 34.433407, 42.880646>,  <38.387436, 34.937351, 42.537483>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.981094, 34.433407, 42.880646> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372936, 34.399410, 42.953484>,  <38.608040, 34.379013, 42.997185>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.372936, 34.399410, 42.953484>,  <37.981094, 34.433407, 42.880646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.372936, 34.399410, 42.953484> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.171663, 0.117163, 0.978164,
		-0.104472, -0.989469, 0.100183,
		0.979600, -0.084993, 0.182095,
		38.666817, 34.373913, 43.008114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.027695, 33.919926, 43.343571>,  <37.981094, 34.433407, 42.880646>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.027695, 33.919926, 43.343571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369747, 34.119755, 43.398952>,  <38.574978, 34.239655, 43.432182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.369747, 34.119755, 43.398952>,  <38.027695, 33.919926, 43.343571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.369747, 34.119755, 43.398952> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189930, 0.053408, 0.980344,
		0.482362, -0.864622, 0.140555,
		0.855134, 0.499577, 0.138456,
		38.626286, 34.269627, 43.440491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277912, 33.710281, 43.999931>,  <38.027695, 33.919926, 43.343571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.277912, 33.710281, 43.999931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456501, 34.060471, 43.925938>,  <38.563652, 34.270584, 43.881542>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456501, 34.060471, 43.925938>,  <38.277912, 33.710281, 43.999931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456501, 34.060471, 43.925938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109546, 0.258658, 0.959737,
		0.888068, -0.408229, 0.211387,
		0.446469, 0.875469, -0.184986,
		38.590443, 34.323112, 43.870441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.788219, 33.742756, 44.464458>,  <38.277912, 33.710281, 43.999931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.788219, 33.742756, 44.464458> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726692, 34.121464, 44.351345>,  <38.689777, 34.348690, 44.283478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.726692, 34.121464, 44.351345>,  <38.788219, 33.742756, 44.464458>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.726692, 34.121464, 44.351345> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.206288, 0.310649, 0.927870,
		0.966326, 0.084389, -0.243091,
		-0.153818, 0.946771, -0.282780,
		38.680546, 34.405495, 44.266510>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.237827, 34.108307, 44.873245>,  <38.788219, 33.742756, 44.464458>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.237827, 34.108307, 44.873245> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962963, 34.375687, 44.759411>,  <38.798046, 34.536114, 44.691109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.962963, 34.375687, 44.759411>,  <39.237827, 34.108307, 44.873245>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.962963, 34.375687, 44.759411> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.032557, 0.362996, 0.931222,
		0.725779, 0.649161, -0.227673,
		-0.687157, 0.668449, -0.284589,
		38.756817, 34.576221, 44.674034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434128, 34.606705, 45.358421>,  <39.237827, 34.108307, 44.873245>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434128, 34.606705, 45.358421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070702, 34.703106, 45.221935>,  <38.852646, 34.760948, 45.140045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.070702, 34.703106, 45.221935>,  <39.434128, 34.606705, 45.358421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.070702, 34.703106, 45.221935> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.264015, 0.301718, 0.916113,
		0.323736, 0.922433, -0.210502,
		-0.908565, 0.241003, -0.341213,
		38.798134, 34.775406, 45.119572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269192, 35.278934, 45.694973>,  <39.434128, 34.606705, 45.358421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269192, 35.278934, 45.694973> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913731, 35.141251, 45.573772>,  <38.700455, 35.058640, 45.501053>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.913731, 35.141251, 45.573772>,  <39.269192, 35.278934, 45.694973>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.913731, 35.141251, 45.573772> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423920, 0.364652, 0.829048,
		-0.174873, 0.865189, -0.469966,
		-0.888657, -0.344206, -0.303003,
		38.647133, 35.037991, 45.482872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.746197, 35.954201, 45.660278>,  <39.269192, 35.278934, 45.694973>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.746197, 35.954201, 45.660278> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549595, 35.606503, 45.681541>,  <38.431633, 35.397884, 45.694298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.549595, 35.606503, 45.681541>,  <38.746197, 35.954201, 45.660278>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.549595, 35.606503, 45.681541> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.495380, 0.329261, 0.803857,
		-0.716254, 0.368770, -0.592443,
		-0.491507, -0.869250, 0.053153,
		38.402142, 35.345726, 45.697487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003613, 36.092396, 45.616207>,  <38.746197, 35.954201, 45.660278>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003613, 36.092396, 45.616207> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057793, 35.733242, 45.783752>,  <38.090302, 35.517750, 45.884281>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.057793, 35.733242, 45.783752>,  <38.003613, 36.092396, 45.616207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.057793, 35.733242, 45.783752> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344580, 0.353682, 0.869582,
		-0.928933, -0.262120, -0.261488,
		0.135451, -0.897888, 0.418868,
		38.098427, 35.463875, 45.909412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.394333, 35.979198, 45.969002>,  <38.003613, 36.092396, 45.616207>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.394333, 35.979198, 45.969002> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650810, 35.735424, 46.155533>,  <37.804695, 35.589157, 46.267452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.650810, 35.735424, 46.155533>,  <37.394333, 35.979198, 45.969002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.650810, 35.735424, 46.155533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233707, 0.423735, 0.875117,
		-0.730929, -0.670099, 0.129264,
		0.641189, -0.609439, 0.466327,
		37.843166, 35.552593, 46.295429>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.997883, 35.816078, 46.538475>,  <37.394333, 35.979198, 45.969002>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.997883, 35.816078, 46.538475> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380287, 35.721771, 46.608284>,  <37.609730, 35.665188, 46.650169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.380287, 35.721771, 46.608284>,  <36.997883, 35.816078, 46.538475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.380287, 35.721771, 46.608284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.137566, 0.165119, 0.976633,
		-0.259073, -0.957680, 0.125422,
		0.956011, -0.235765, 0.174522,
		37.667091, 35.651043, 46.660641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.052689, 35.606647, 47.206795>,  <36.997883, 35.816078, 46.538475>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.052689, 35.606647, 47.206795> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441757, 35.672295, 47.141109>,  <37.675198, 35.711681, 47.101696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.441757, 35.672295, 47.141109>,  <37.052689, 35.606647, 47.206795>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.441757, 35.672295, 47.141109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058074, 0.512844, 0.856515,
		0.224786, -0.842649, 0.489301,
		0.972676, 0.164116, -0.164216,
		37.733559, 35.721531, 47.091846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.420658, 35.291080, 47.823460>,  <37.052689, 35.606647, 47.206795>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.420658, 35.291080, 47.823460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668926, 35.565708, 47.671993>,  <37.817886, 35.730484, 47.581116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.668926, 35.565708, 47.671993>,  <37.420658, 35.291080, 47.823460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668926, 35.565708, 47.671993> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103417, 0.550413, 0.828462,
		0.777219, -0.475044, 0.412630,
		0.620673, 0.686570, -0.378664,
		37.855129, 35.771679, 47.558395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.967415, 35.408230, 48.357986>,  <37.420658, 35.291080, 47.823460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.967415, 35.408230, 48.357986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968361, 35.729031, 48.119061>,  <37.968929, 35.921513, 47.975704>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.968361, 35.729031, 48.119061>,  <37.967415, 35.408230, 48.357986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.968361, 35.729031, 48.119061> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149470, 0.590891, 0.792785,
		0.988763, 0.087408, 0.121270,
		0.002361, 0.802002, -0.597316,
		37.969070, 35.969631, 47.939865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.276123, 35.968960, 48.730812>,  <37.967415, 35.408230, 48.357986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.276123, 35.968960, 48.730812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090454, 36.178703, 48.445271>,  <37.979053, 36.304550, 48.273945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.090454, 36.178703, 48.445271>,  <38.276123, 35.968960, 48.730812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.090454, 36.178703, 48.445271> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.154494, 0.745652, 0.648179,
		0.872166, 0.411154, -0.265102,
		-0.464175, 0.524363, -0.713853,
		37.951202, 36.336014, 48.231113>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.494816, 36.632675, 48.922226>,  <38.276123, 35.968960, 48.730812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.494816, 36.632675, 48.922226> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172279, 36.662853, 48.687580>,  <37.978756, 36.680962, 48.546791>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172279, 36.662853, 48.687580>,  <38.494816, 36.632675, 48.922226>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172279, 36.662853, 48.687580> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344053, 0.746913, 0.568989,
		0.481080, 0.660627, -0.576310,
		-0.806343, 0.075448, -0.586616,
		37.930378, 36.685490, 48.511597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.396076, 37.289577, 48.907375>,  <38.494816, 36.632675, 48.922226>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.396076, 37.289577, 48.907375> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045841, 37.125019, 48.806110>,  <37.835701, 37.026283, 48.745350>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.045841, 37.125019, 48.806110>,  <38.396076, 37.289577, 48.907375>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.045841, 37.125019, 48.806110> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476716, 0.651303, 0.590378,
		-0.077996, 0.637616, -0.766396,
		-0.875590, -0.411400, -0.253163,
		37.783165, 37.001598, 48.730160>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.859463, 37.857220, 48.709679>,  <38.396076, 37.289577, 48.907375>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.859463, 37.857220, 48.709679> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648785, 37.538155, 48.827209>,  <37.522377, 37.346714, 48.897728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.648785, 37.538155, 48.827209>,  <37.859463, 37.857220, 48.709679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.648785, 37.538155, 48.827209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520060, 0.575782, 0.630882,
		-0.672409, 0.179474, -0.718091,
		-0.526691, -0.797662, 0.293823,
		37.490776, 37.298855, 48.915356>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.284000, 38.216175, 48.803162>,  <37.859463, 37.857220, 48.709679>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.284000, 38.216175, 48.803162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266762, 37.866879, 48.997314>,  <37.256420, 37.657303, 49.113808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.266762, 37.866879, 48.997314>,  <37.284000, 38.216175, 48.803162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.266762, 37.866879, 48.997314> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.475907, 0.445119, 0.758539,
		-0.878439, -0.198306, -0.434763,
		-0.043098, -0.873237, 0.485385,
		37.253834, 37.604908, 49.142929>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.686287, 38.298264, 49.187588>,  <37.284000, 38.216175, 48.803162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.686287, 38.298264, 49.187588> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858604, 38.006981, 49.400803>,  <36.961994, 37.832211, 49.528732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.858604, 38.006981, 49.400803>,  <36.686287, 38.298264, 49.187588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.858604, 38.006981, 49.400803> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393953, 0.379653, 0.837057,
		-0.811921, -0.570591, -0.123327,
		0.430796, -0.728210, 0.533034,
		36.987843, 37.788517, 49.560715>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.610455, 38.943844, 49.374241>,  <36.686287, 38.298264, 49.187588>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.610455, 38.943844, 49.374241> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716686, 39.325714, 49.428005>,  <36.780426, 39.554836, 49.460266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.716686, 39.325714, 49.428005>,  <36.610455, 38.943844, 49.374241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.716686, 39.325714, 49.428005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335644, 0.222257, -0.915393,
		-0.903775, 0.197995, 0.379458,
		0.265581, 0.954672, 0.134415,
		36.796360, 39.612118, 49.468330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.078243, 39.345226, 49.087708>,  <36.610455, 38.943844, 49.374241>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.078243, 39.345226, 49.087708> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360229, 39.628685, 49.076118>,  <36.529423, 39.798759, 49.069164>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.360229, 39.628685, 49.076118>,  <36.078243, 39.345226, 49.087708>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.360229, 39.628685, 49.076118> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206321, 0.165818, -0.964332,
		-0.678569, 0.685798, 0.263106,
		0.704965, 0.708650, -0.028976,
		36.571720, 39.841282, 49.067425>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.766727, 39.781712, 48.744850>,  <36.078243, 39.345226, 49.087708>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.766727, 39.781712, 48.744850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157848, 39.860176, 48.715401>,  <36.392521, 39.907253, 48.697731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.157848, 39.860176, 48.715401>,  <35.766727, 39.781712, 48.744850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.157848, 39.860176, 48.715401> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.072412, -0.013365, -0.997285,
		-0.196608, 0.980482, 0.001135,
		0.977805, 0.196157, -0.073626,
		36.451191, 39.919022, 48.693314>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.744129, 40.099400, 48.038170>,  <35.766727, 39.781712, 48.744850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.744129, 40.099400, 48.038170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123142, 40.017365, 48.136250>,  <36.350548, 39.968143, 48.195099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.123142, 40.017365, 48.136250>,  <35.744129, 40.099400, 48.038170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.123142, 40.017365, 48.136250> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266512, 0.083268, -0.960228,
		0.176516, 0.975195, 0.133558,
		0.947530, -0.205090, 0.245203,
		36.407402, 39.955837, 48.209812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.191776, 40.577473, 47.722801>,  <35.744129, 40.099400, 48.038170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.191776, 40.577473, 47.722801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425213, 40.262024, 47.800251>,  <36.565277, 40.072754, 47.846722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.425213, 40.262024, 47.800251>,  <36.191776, 40.577473, 47.722801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.425213, 40.262024, 47.800251> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348920, 0.028217, -0.936727,
		0.733260, 0.614231, 0.291633,
		0.583596, -0.788622, 0.193627,
		36.600292, 40.025436, 47.858337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.906803, 40.735554, 47.374954>,  <36.191776, 40.577473, 47.722801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.906803, 40.735554, 47.374954> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877357, 40.340092, 47.427338>,  <36.859688, 40.102814, 47.458767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.877357, 40.340092, 47.427338>,  <36.906803, 40.735554, 47.374954>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.877357, 40.340092, 47.427338> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214885, -0.143952, -0.965972,
		0.973861, -0.042970, 0.223044,
		-0.073616, -0.988651, 0.130955,
		36.855274, 40.043495, 47.466625>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534107, 40.451603, 47.205063>,  <36.906803, 40.735554, 47.374954>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534107, 40.451603, 47.205063> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278320, 40.147659, 47.158249>,  <37.124847, 39.965294, 47.130161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.278320, 40.147659, 47.158249>,  <37.534107, 40.451603, 47.205063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.278320, 40.147659, 47.158249> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.297426, -0.104129, -0.949050,
		0.708958, -0.641693, 0.292588,
		-0.639466, -0.759860, -0.117033,
		37.086479, 39.919701, 47.123138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.902657, 39.843838, 46.984364>,  <37.534107, 40.451603, 47.205063>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.902657, 39.843838, 46.984364> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527287, 39.756432, 46.877331>,  <37.302063, 39.703987, 46.813110>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.527287, 39.756432, 46.877331>,  <37.902657, 39.843838, 46.984364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.527287, 39.756432, 46.877331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324284, -0.290117, -0.900373,
		0.119121, -0.931709, 0.343117,
		-0.938430, -0.218520, -0.267579,
		37.245758, 39.690876, 46.797058>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.858364, 39.185295, 46.738213>,  <37.902657, 39.843838, 46.984364>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.858364, 39.185295, 46.738213> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519115, 39.328636, 46.582127>,  <37.315567, 39.414642, 46.488476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.519115, 39.328636, 46.582127>,  <37.858364, 39.185295, 46.738213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.519115, 39.328636, 46.582127> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.256965, -0.365861, -0.894491,
		-0.463314, -0.858909, 0.218209,
		-0.848121, 0.358359, -0.390218,
		37.264679, 39.436142, 46.465061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.732082, 38.659531, 46.359604>,  <37.858364, 39.185295, 46.738213>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.732082, 38.659531, 46.359604> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495926, 38.944981, 46.208778>,  <37.354233, 39.116249, 46.118282>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.495926, 38.944981, 46.208778>,  <37.732082, 38.659531, 46.359604>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.495926, 38.944981, 46.208778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.177111, -0.341243, -0.923138,
		-0.787446, -0.611795, 0.075076,
		-0.590390, 0.713625, -0.377066,
		37.318810, 39.159069, 46.095657>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.167751, 38.401680, 45.949615>,  <37.732082, 38.659531, 46.359604>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.167751, 38.401680, 45.949615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202209, 38.781773, 45.829853>,  <37.222885, 39.009827, 45.757996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.202209, 38.781773, 45.829853>,  <37.167751, 38.401680, 45.949615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.202209, 38.781773, 45.829853> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.168051, -0.310073, -0.935742,
		-0.982007, 0.030293, -0.186398,
		0.086144, 0.950230, -0.299403,
		37.228054, 39.066841, 45.740032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.761017, 38.403278, 45.415051>,  <37.167751, 38.401680, 45.949615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.761017, 38.403278, 45.415051> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027367, 38.700851, 45.392521>,  <37.187176, 38.879395, 45.379002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.027367, 38.700851, 45.392521>,  <36.761017, 38.403278, 45.415051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027367, 38.700851, 45.392521> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.176426, -0.230369, -0.956976,
		-0.724904, 0.627288, -0.284647,
		0.665873, 0.743935, -0.056326,
		37.227127, 38.924030, 45.375622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.794895, 38.420254, 44.684586>,  <36.761017, 38.403278, 45.415051>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.794895, 38.420254, 44.684586> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100761, 38.636154, 44.825413>,  <37.284283, 38.765694, 44.909908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.100761, 38.636154, 44.825413>,  <36.794895, 38.420254, 44.684586>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.100761, 38.636154, 44.825413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.550314, -0.262666, -0.792566,
		-0.335313, 0.799797, -0.497885,
		0.764669, 0.539751, 0.352064,
		37.330162, 38.798080, 44.931030>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.044846, 38.775414, 44.093746>,  <36.794895, 38.420254, 44.684586>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.044846, 38.775414, 44.093746> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350048, 38.780910, 44.352242>,  <37.533169, 38.784206, 44.507339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.350048, 38.780910, 44.352242>,  <37.044846, 38.775414, 44.093746>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.350048, 38.780910, 44.352242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.643080, -0.117166, -0.756783,
		0.065321, 0.993017, -0.098233,
		0.763008, 0.013738, 0.646243,
		37.578949, 38.785030, 44.546116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.471973, 39.174458, 43.766392>,  <37.044846, 38.775414, 44.093746>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.471973, 39.174458, 43.766392> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690346, 38.984821, 44.042709>,  <37.821369, 38.871040, 44.208500>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.690346, 38.984821, 44.042709>,  <37.471973, 39.174458, 43.766392>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690346, 38.984821, 44.042709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635156, -0.303498, -0.710258,
		0.546381, 0.826514, 0.135433,
		0.545934, -0.474092, 0.690791,
		37.854126, 38.842594, 44.249947>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.149792, 39.352318, 43.593361>,  <37.471973, 39.174458, 43.766392>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.149792, 39.352318, 43.593361> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136948, 39.002186, 43.786343>,  <38.129242, 38.792107, 43.902130>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.136948, 39.002186, 43.786343>,  <38.149792, 39.352318, 43.593361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.136948, 39.002186, 43.786343> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559981, -0.415587, -0.716735,
		0.827883, 0.247148, 0.503515,
		-0.032115, -0.875332, 0.482455,
		38.127312, 38.739586, 43.931080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.820053, 39.035797, 43.483559>,  <38.149792, 39.352318, 43.593361>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.820053, 39.035797, 43.483559> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585663, 38.724316, 43.573219>,  <38.445026, 38.537426, 43.627014>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.585663, 38.724316, 43.573219>,  <38.820053, 39.035797, 43.483559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.585663, 38.724316, 43.573219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557972, -0.588340, -0.585256,
		0.587619, -0.217879, 0.779251,
		-0.585979, -0.778708, 0.224149,
		38.409870, 38.490704, 43.640465>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.278275, 38.458622, 43.448669>,  <38.820053, 39.035797, 43.483559>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.278275, 38.458622, 43.448669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920349, 38.280685, 43.433559>,  <38.705593, 38.173923, 43.424492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.920349, 38.280685, 43.433559>,  <39.278275, 38.458622, 43.448669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920349, 38.280685, 43.433559> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.278982, -0.491102, -0.825219,
		0.348540, -0.748955, 0.563547,
		-0.894812, -0.444842, -0.037776,
		38.651905, 38.147232, 43.422226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.341236, 37.638184, 43.407520>,  <39.278275, 38.458622, 43.448669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.341236, 37.638184, 43.407520> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979290, 37.737057, 43.268890>,  <38.762123, 37.796383, 43.185711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.979290, 37.737057, 43.268890>,  <39.341236, 37.638184, 43.407520>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.979290, 37.737057, 43.268890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.069180, -0.717934, -0.692665,
		-0.420037, -0.650746, 0.632533,
		-0.904866, 0.247187, -0.346578,
		38.707829, 37.811214, 43.164917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.930336, 37.022190, 43.374367>,  <39.341236, 37.638184, 43.407520>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.930336, 37.022190, 43.374367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759064, 37.274738, 43.115746>,  <38.656300, 37.426266, 42.960571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759064, 37.274738, 43.115746>,  <38.930336, 37.022190, 43.374367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759064, 37.274738, 43.115746> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112235, -0.672768, -0.731291,
		-0.896695, -0.385693, 0.217207,
		-0.428183, 0.631367, -0.646556,
		38.630608, 37.464149, 42.921780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613297, 36.544399, 42.963512>,  <38.930336, 37.022190, 43.374367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613297, 36.544399, 42.963512> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591984, 36.885704, 42.756008>,  <38.579197, 37.090485, 42.631508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.591984, 36.885704, 42.756008>,  <38.613297, 36.544399, 42.963512>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.591984, 36.885704, 42.756008> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058682, -0.521274, -0.851370,
		-0.996854, -0.014919, 0.077844,
		-0.053280, 0.853259, -0.518758,
		38.576000, 37.141682, 42.600380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007965, 36.457962, 42.508949>,  <38.613297, 36.544399, 42.963512>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007965, 36.457962, 42.508949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228016, 36.757217, 42.360538>,  <38.360046, 36.936771, 42.271492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.228016, 36.757217, 42.360538>,  <38.007965, 36.457962, 42.508949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.228016, 36.757217, 42.360538> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.241960, -0.282437, -0.928270,
		-0.799262, 0.600435, 0.025644,
		0.550122, 0.748136, -0.371023,
		38.393051, 36.981659, 42.249233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.740269, 36.603642, 41.933117>,  <38.007965, 36.457962, 42.508949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.740269, 36.603642, 41.933117> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121365, 36.715073, 41.884659>,  <38.350021, 36.781933, 41.855583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.121365, 36.715073, 41.884659>,  <37.740269, 36.603642, 41.933117>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.121365, 36.715073, 41.884659> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.010069, -0.427540, -0.903940,
		-0.303615, 0.860001, -0.410140,
		0.952741, 0.278580, -0.121148,
		38.407188, 36.798645, 41.848316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.818012, 37.033276, 41.271885>,  <37.740269, 36.603642, 41.933117>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.818012, 37.033276, 41.271885> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169052, 36.865669, 41.365044>,  <38.379677, 36.765106, 41.420940>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.169052, 36.865669, 41.365044>,  <37.818012, 37.033276, 41.271885>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.169052, 36.865669, 41.365044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.099318, -0.316361, -0.943425,
		0.468992, 0.851081, -0.236023,
		0.877600, -0.419018, 0.232898,
		38.432331, 36.739964, 41.434914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.147743, 37.340160, 40.754822>,  <37.818012, 37.033276, 41.271885>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.147743, 37.340160, 40.754822> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376907, 37.041241, 40.889477>,  <38.514404, 36.861889, 40.970268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.376907, 37.041241, 40.889477>,  <38.147743, 37.340160, 40.754822>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.376907, 37.041241, 40.889477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174407, -0.290166, -0.940949,
		0.800847, 0.597791, -0.035906,
		0.572910, -0.747295, 0.336638,
		38.548779, 36.817051, 40.990467>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.860115, 37.440414, 40.438129>,  <38.147743, 37.340160, 40.754822>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.860115, 37.440414, 40.438129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843185, 37.056610, 40.549526>,  <38.833027, 36.826328, 40.616364>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.843185, 37.056610, 40.549526>,  <38.860115, 37.440414, 40.438129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.843185, 37.056610, 40.549526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137632, -0.281681, -0.949586,
		0.989579, -0.001860, 0.143981,
		-0.042323, -0.959506, 0.278490,
		38.830490, 36.768757, 40.633072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.405270, 37.155758, 40.195034>,  <38.860115, 37.440414, 40.438129>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.405270, 37.155758, 40.195034> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144505, 36.853504, 40.220390>,  <38.988045, 36.672150, 40.235603>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.144505, 36.853504, 40.220390>,  <39.405270, 37.155758, 40.195034>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.144505, 36.853504, 40.220390> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155117, -0.214719, -0.964279,
		0.742257, -0.618795, 0.257191,
		-0.651915, -0.755638, 0.063391,
		38.948929, 36.626812, 40.239407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763618, 36.582615, 39.980289>,  <39.405270, 37.155758, 40.195034>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763618, 36.582615, 39.980289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378849, 36.484547, 39.931965>,  <39.147987, 36.425705, 39.902969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.378849, 36.484547, 39.931965>,  <39.763618, 36.582615, 39.980289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.378849, 36.484547, 39.931965> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189394, -0.279192, -0.941372,
		0.197067, -0.928409, 0.314995,
		-0.961922, -0.245172, -0.120815,
		39.090271, 36.410995, 39.895721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.871586, 36.080872, 39.451599>,  <39.763618, 36.582615, 39.980289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.871586, 36.080872, 39.451599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481319, 36.167217, 39.466961>,  <39.247158, 36.219025, 39.476177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.481319, 36.167217, 39.466961>,  <39.871586, 36.080872, 39.451599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.481319, 36.167217, 39.466961> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094119, -0.254133, -0.962579,
		-0.198021, -0.942773, 0.268266,
		-0.975669, 0.215860, 0.038409,
		39.188618, 36.231976, 39.478485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.598927, 35.516216, 39.111599>,  <39.871586, 36.080872, 39.451599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.598927, 35.516216, 39.111599> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360538, 35.837402, 39.108166>,  <39.217506, 36.030113, 39.106106>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.360538, 35.837402, 39.108166>,  <39.598927, 35.516216, 39.111599>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.360538, 35.837402, 39.108166> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.125061, -0.103370, -0.986749,
		-0.793208, -0.587000, 0.162024,
		-0.595970, 0.802961, -0.008583,
		39.181747, 36.078289, 39.105591>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.988762, 35.320793, 38.645893>,  <39.598927, 35.516216, 39.111599>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.988762, 35.320793, 38.645893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004517, 35.720474, 38.648335>,  <39.013969, 35.960285, 38.649799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004517, 35.720474, 38.648335>,  <38.988762, 35.320793, 38.645893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004517, 35.720474, 38.648335> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242375, 0.015476, -0.970059,
		-0.969383, 0.036727, 0.242792,
		0.039385, 0.999205, 0.006100,
		39.016331, 36.020237, 38.650166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.363579, 35.562031, 38.299675>,  <38.988762, 35.320793, 38.645893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.363579, 35.562031, 38.299675> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610218, 35.874847, 38.263432>,  <38.758202, 36.062538, 38.241684>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.610218, 35.874847, 38.263432>,  <38.363579, 35.562031, 38.299675>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.610218, 35.874847, 38.263432> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200771, 0.044911, -0.978608,
		-0.761246, 0.621601, 0.184704,
		0.616599, 0.782045, -0.090612,
		38.795197, 36.109463, 38.236248>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.011093, 35.824677, 37.818714>,  <38.363579, 35.562031, 38.299675>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.011093, 35.824677, 37.818714> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358101, 36.023590, 37.823162>,  <38.566303, 36.142937, 37.825829>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.358101, 36.023590, 37.823162>,  <38.011093, 35.824677, 37.818714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.358101, 36.023590, 37.823162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.066766, 0.138559, -0.988101,
		-0.492906, 0.856453, 0.153404,
		0.867517, 0.497283, 0.011115,
		38.618355, 36.172775, 37.826496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797806, 36.312347, 37.340160>,  <38.011093, 35.824677, 37.818714>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797806, 36.312347, 37.340160> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192829, 36.264820, 37.381359>,  <38.429844, 36.236301, 37.406078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.192829, 36.264820, 37.381359>,  <37.797806, 36.312347, 37.340160>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.192829, 36.264820, 37.381359> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.127511, 0.221834, -0.966711,
		0.092017, 0.967818, 0.234225,
		0.987559, -0.118821, 0.102995,
		38.489098, 36.229176, 37.412258>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.002926, 36.791637, 36.758232>,  <37.797806, 36.312347, 37.340160>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.002926, 36.791637, 36.758232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306820, 36.557621, 36.871742>,  <38.489155, 36.417210, 36.939850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.306820, 36.557621, 36.871742>,  <38.002926, 36.791637, 36.758232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.306820, 36.557621, 36.871742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.390728, 0.061920, -0.918421,
		0.519743, 0.808636, 0.275636,
		0.759736, -0.585042, 0.283774,
		38.534740, 36.382107, 36.956875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.655640, 37.196529, 36.612812>,  <38.002926, 36.791637, 36.758232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.655640, 37.196529, 36.612812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689629, 36.798008, 36.617825>,  <38.710022, 36.558895, 36.620834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.689629, 36.798008, 36.617825>,  <38.655640, 37.196529, 36.612812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.689629, 36.798008, 36.617825> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.173061, 0.002368, -0.984908,
		0.981239, 0.085855, 0.172622,
		0.084969, -0.996305, 0.012535,
		38.715118, 36.499115, 36.621586>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.935184, 37.174450, 36.073952>,  <38.655640, 37.196529, 36.612812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.935184, 37.174450, 36.073952> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861713, 36.785057, 36.128490>,  <38.817631, 36.551422, 36.161213>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.861713, 36.785057, 36.128490>,  <38.935184, 37.174450, 36.073952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.861713, 36.785057, 36.128490> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160956, -0.166622, -0.972795,
		0.969719, -0.156736, 0.187293,
		-0.183680, -0.973484, 0.136348,
		38.806610, 36.493011, 36.169395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.460987, 36.799889, 35.781681>,  <38.935184, 37.174450, 36.073952>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.460987, 36.799889, 35.781681> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150433, 36.547787, 35.783108>,  <38.964100, 36.396526, 35.783962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.150433, 36.547787, 35.783108>,  <39.460987, 36.799889, 35.781681>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.150433, 36.547787, 35.783108> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.280093, -0.350096, -0.893857,
		0.564603, -0.692977, 0.448338,
		-0.776384, -0.630251, 0.003568,
		38.917519, 36.358711, 35.784180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.728260, 36.069733, 35.648769>,  <39.460987, 36.799889, 35.781681>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.728260, 36.069733, 35.648769> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336411, 36.068817, 35.568436>,  <39.101299, 36.068268, 35.520237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.336411, 36.068817, 35.568436>,  <39.728260, 36.069733, 35.648769>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.336411, 36.068817, 35.568436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.189761, -0.338169, -0.921755,
		-0.065807, -0.941083, 0.331712,
		-0.979622, -0.002288, -0.200835,
		39.042522, 36.068130, 35.508186>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.659985, 35.376335, 35.330231>,  <39.728260, 36.069733, 35.648769>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.659985, 35.376335, 35.330231> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383476, 35.636501, 35.204311>,  <39.217571, 35.792603, 35.128757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.383476, 35.636501, 35.204311>,  <39.659985, 35.376335, 35.330231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.383476, 35.636501, 35.204311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.063484, -0.379304, -0.923092,
		-0.719800, -0.658092, 0.220912,
		-0.691272, 0.650417, -0.314802,
		39.176094, 35.831627, 35.109871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.343517, 35.549305, 34.897663>,  <39.659985, 35.376335, 35.330231>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.343517, 35.549305, 34.897663> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417046, 35.921314, 34.770378>,  <40.461163, 36.144520, 34.694008>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.417046, 35.921314, 34.770378>,  <40.343517, 35.549305, 34.897663>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.417046, 35.921314, 34.770378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.960102, -0.100465, 0.260983,
		0.210752, -0.353490, -0.911388,
		0.183818, 0.930028, -0.318213,
		40.472191, 36.200321, 34.674915>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.964409, 35.567478, 34.329933>,  <40.343517, 35.549305, 34.897663>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.964409, 35.567478, 34.329933> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954899, 35.929977, 34.498768>,  <40.949192, 36.147476, 34.600067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.954899, 35.929977, 34.498768>,  <40.964409, 35.567478, 34.329933>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.954899, 35.929977, 34.498768> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.952580, -0.107579, 0.284637,
		0.303358, 0.408837, -0.860713,
		-0.023776, 0.906245, 0.422084,
		40.947765, 36.201851, 34.625393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.559605, 35.990768, 34.080635>,  <40.964409, 35.567478, 34.329933>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.559605, 35.990768, 34.080635> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453365, 36.162167, 34.426086>,  <41.389622, 36.265007, 34.633358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.453365, 36.162167, 34.426086>,  <41.559605, 35.990768, 34.080635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.453365, 36.162167, 34.426086> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.962424, 0.065301, 0.263582,
		0.056549, 0.901180, -0.429740,
		-0.265597, 0.428497, 0.863625,
		41.373688, 36.290714, 34.685173>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.075977, 36.572803, 34.269894>,  <41.559605, 35.990768, 34.080635>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.075977, 36.572803, 34.269894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910206, 36.433979, 34.606415>,  <41.810741, 36.350685, 34.808327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.910206, 36.433979, 34.606415>,  <42.075977, 36.572803, 34.269894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.910206, 36.433979, 34.606415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.868036, 0.126996, 0.479985,
		-0.273427, 0.929204, 0.248632,
		-0.414429, -0.347062, 0.841306,
		41.785877, 36.329861, 34.858807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865334, 36.673828, 34.366402>,  <42.075977, 36.572803, 34.269894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.865334, 36.673828, 34.366402> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008652, 36.881874, 34.056278>,  <43.094643, 37.006702, 33.870205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.008652, 36.881874, 34.056278>,  <42.865334, 36.673828, 34.366402>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.008652, 36.881874, 34.056278> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827341, -0.207899, -0.521810,
		-0.432588, 0.828406, 0.355825,
		0.358294, 0.520117, -0.775308,
		43.116138, 37.037910, 33.823685>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.234924, 36.280170, 34.787479>,  <42.865334, 36.673828, 34.366402>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.234924, 36.280170, 34.787479> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272739, 36.656349, 34.656868>,  <43.295429, 36.882057, 34.578499>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.272739, 36.656349, 34.656868>,  <43.234924, 36.280170, 34.787479>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.272739, 36.656349, 34.656868> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.939243, 0.024461, 0.342379,
		0.329977, -0.339059, -0.880996,
		0.094537, 0.940447, -0.326531,
		43.301102, 36.938484, 34.558910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.713684, 36.324039, 34.214024>,  <43.234924, 36.280170, 34.787479>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.713684, 36.324039, 34.214024> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730209, 36.663090, 34.425621>,  <43.740124, 36.866520, 34.552578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.730209, 36.663090, 34.425621>,  <43.713684, 36.324039, 34.214024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.730209, 36.663090, 34.425621> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994584, -0.085430, 0.059205,
		0.095375, 0.523678, -0.846561,
		0.041318, 0.847622, 0.528989,
		43.742603, 36.917377, 34.584316>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.261002, 36.581821, 34.752533>,  <43.713684, 36.324039, 34.214024>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.261002, 36.581821, 34.752533> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581146, 36.389454, 34.609344>,  <44.773232, 36.274033, 34.523434>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.581146, 36.389454, 34.609344>,  <44.261002, 36.581821, 34.752533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.581146, 36.389454, 34.609344> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248232, 0.277673, -0.928051,
		0.545719, 0.831632, 0.102857,
		0.800357, -0.480922, -0.357969,
		44.821255, 36.245178, 34.501953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.576099, 36.985371, 34.214657>,  <44.261002, 36.581821, 34.752533>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.576099, 36.985371, 34.214657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718063, 36.622120, 34.125805>,  <44.803242, 36.404167, 34.072495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.718063, 36.622120, 34.125805>,  <44.576099, 36.985371, 34.214657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.718063, 36.622120, 34.125805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213914, 0.152411, -0.964889,
		0.910099, 0.389964, -0.140170,
		0.354909, -0.908129, -0.222128,
		44.824535, 36.349682, 34.059166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.751801, 37.092442, 33.623505>,  <44.576099, 36.985371, 34.214657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.751801, 37.092442, 33.623505> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784298, 36.693783, 33.619553>,  <44.803795, 36.454590, 33.617180>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.784298, 36.693783, 33.619553>,  <44.751801, 37.092442, 33.623505>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.784298, 36.693783, 33.619553> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.230836, -0.009171, -0.972950,
		0.969595, 0.081327, -0.230806,
		0.081244, -0.996645, -0.009881,
		44.808670, 36.394791, 33.616589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.160748, 36.891346, 33.067799>,  <44.751801, 37.092442, 33.623505>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.160748, 36.891346, 33.067799> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902306, 36.601254, 33.162945>,  <44.747238, 36.427197, 33.220032>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.902306, 36.601254, 33.162945>,  <45.160748, 36.891346, 33.067799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.902306, 36.601254, 33.162945> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305551, -0.039812, -0.951343,
		0.699417, -0.687350, -0.195873,
		-0.646107, -0.725235, 0.237866,
		44.708473, 36.383682, 33.234306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.157234, 36.443268, 32.478630>,  <45.160748, 36.891346, 33.067799>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.157234, 36.443268, 32.478630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814587, 36.388676, 32.677662>,  <44.608997, 36.355923, 32.797081>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.814587, 36.388676, 32.677662>,  <45.157234, 36.443268, 32.478630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.814587, 36.388676, 32.677662> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504596, 0.020336, -0.863116,
		0.107679, -0.990434, -0.086287,
		-0.856615, -0.136479, 0.497579,
		44.557602, 36.347733, 32.826935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.794846, 35.860561, 32.079514>,  <45.157234, 36.443268, 32.478630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.794846, 35.860561, 32.079514> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523514, 36.046326, 32.307266>,  <44.360714, 36.157784, 32.443916>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.523514, 36.046326, 32.307266>,  <44.794846, 35.860561, 32.079514>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.523514, 36.046326, 32.307266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.711938, -0.223809, -0.665623,
		-0.181684, -0.856878, 0.482443,
		-0.678333, 0.464403, 0.569381,
		44.320015, 36.185646, 32.478081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.186954, 35.471928, 31.858528>,  <44.794846, 35.860561, 32.079514>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.186954, 35.471928, 31.858528> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054028, 35.807888, 32.030170>,  <43.974270, 36.009464, 32.133156>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.054028, 35.807888, 32.030170>,  <44.186954, 35.471928, 31.858528>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.054028, 35.807888, 32.030170> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.851937, -0.072096, -0.518657,
		-0.404683, -0.537930, 0.739502,
		-0.332316, 0.839901, 0.429107,
		43.954334, 36.059856, 32.158901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.460030, 35.349621, 32.148731>,  <44.186954, 35.471928, 31.858528>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.460030, 35.349621, 32.148731> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525711, 35.735336, 32.065605>,  <43.565121, 35.966766, 32.015728>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.525711, 35.735336, 32.065605>,  <43.460030, 35.349621, 32.148731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.525711, 35.735336, 32.065605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798623, 0.006298, -0.601798,
		-0.578998, 0.264784, 0.771137,
		0.164203, 0.964288, -0.207816,
		43.574970, 36.024624, 32.003262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.727890, 35.648735, 32.234982>,  <43.460030, 35.349621, 32.148731>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.727890, 35.648735, 32.234982> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950829, 35.894848, 32.011986>,  <43.084591, 36.042515, 31.878189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.950829, 35.894848, 32.011986>,  <42.727890, 35.648735, 32.234982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950829, 35.894848, 32.011986> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754287, 0.094602, -0.649693,
		-0.347004, 0.782611, 0.516824,
		0.557350, 0.615280, -0.557486,
		43.118034, 36.079433, 31.844740>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.246758, 36.257576, 32.022652>,  <42.727890, 35.648735, 32.234982>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.246758, 36.257576, 32.022652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552528, 36.247334, 31.764971>,  <42.735989, 36.241188, 31.610361>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.552528, 36.247334, 31.764971>,  <42.246758, 36.257576, 32.022652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.552528, 36.247334, 31.764971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.636427, 0.129726, -0.760350,
		0.103040, 0.991219, 0.082869,
		0.764423, -0.025607, -0.644206,
		42.781857, 36.239651, 31.571709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.202408, 36.817394, 31.564333>,  <42.246758, 36.257576, 32.022652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.202408, 36.817394, 31.564333> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488636, 36.635704, 31.352057>,  <42.660374, 36.526691, 31.224689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.488636, 36.635704, 31.352057>,  <42.202408, 36.817394, 31.564333>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.488636, 36.635704, 31.352057> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.525216, 0.151031, -0.837459,
		0.460545, 0.877992, -0.130492,
		0.715574, -0.454224, -0.530692,
		42.703308, 36.499435, 31.192848>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.381035, 37.300907, 31.001276>,  <42.202408, 36.817394, 31.564333>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.381035, 37.300907, 31.001276> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500328, 36.937256, 30.884964>,  <42.571903, 36.719067, 30.815178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.500328, 36.937256, 30.884964>,  <42.381035, 37.300907, 31.001276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.500328, 36.937256, 30.884964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455541, 0.132140, -0.880353,
		0.838774, 0.395010, -0.374735,
		0.298231, -0.909124, -0.290778,
		42.589798, 36.664520, 30.797731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.588440, 37.402489, 30.357199>,  <42.381035, 37.300907, 31.001276>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.588440, 37.402489, 30.357199> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518513, 37.009010, 30.374117>,  <42.476559, 36.772923, 30.384268>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.518513, 37.009010, 30.374117>,  <42.588440, 37.402489, 30.357199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.518513, 37.009010, 30.374117> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.239881, 0.000887, -0.970802,
		0.954933, -0.179858, -0.236124,
		-0.174816, -0.983692, 0.042297,
		42.466068, 36.713902, 30.386806>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.903038, 37.128452, 29.783527>,  <42.588440, 37.402489, 30.357199>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.903038, 37.128452, 29.783527> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623356, 36.862789, 29.889360>,  <42.455547, 36.703392, 29.952860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.623356, 36.862789, 29.889360>,  <42.903038, 37.128452, 29.783527>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.623356, 36.862789, 29.889360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.316840, -0.043880, -0.947463,
		0.640873, -0.746305, -0.179750,
		-0.699209, -0.664156, 0.264581,
		42.413593, 36.663544, 29.968735>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.980717, 36.623779, 29.387432>,  <42.903038, 37.128452, 29.783527>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.980717, 36.623779, 29.387432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594864, 36.602867, 29.490776>,  <42.363354, 36.590321, 29.552782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.594864, 36.602867, 29.490776>,  <42.980717, 36.623779, 29.387432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.594864, 36.602867, 29.490776> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.245846, -0.175157, -0.953352,
		0.095098, -0.983151, 0.156108,
		-0.964632, -0.052283, 0.258361,
		42.305473, 36.587181, 29.568285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.747250, 36.046246, 29.026188>,  <42.980717, 36.623779, 29.387432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.747250, 36.046246, 29.026188> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417000, 36.240341, 29.141352>,  <42.218849, 36.356800, 29.210449>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.417000, 36.240341, 29.141352>,  <42.747250, 36.046246, 29.026188>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.417000, 36.240341, 29.141352> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.416866, -0.180731, -0.890819,
		-0.380228, -0.855498, 0.351496,
		-0.825621, 0.485242, 0.287909,
		42.169315, 36.385914, 29.227724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.289116, 35.783131, 28.596107>,  <42.747250, 36.046246, 29.026188>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.289116, 35.783131, 28.596107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107925, 36.116344, 28.723150>,  <41.999210, 36.316273, 28.799376>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.107925, 36.116344, 28.723150>,  <42.289116, 35.783131, 28.596107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.107925, 36.116344, 28.723150> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.283280, 0.203298, -0.937242,
		-0.845321, -0.514516, 0.143893,
		-0.452973, 0.833032, 0.317605,
		41.972034, 36.366253, 28.818432>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.747974, 35.813469, 28.206556>,  <42.289116, 35.783131, 28.596107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.747974, 35.813469, 28.206556> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726936, 36.187752, 28.346088>,  <41.714314, 36.412323, 28.429808>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.726936, 36.187752, 28.346088>,  <41.747974, 35.813469, 28.206556>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.726936, 36.187752, 28.346088> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246501, 0.326339, -0.912546,
		-0.967714, -0.133983, 0.213490,
		-0.052595, 0.935709, 0.348830,
		41.711159, 36.468464, 28.450737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.136200, 35.979355, 27.893517>,  <41.747974, 35.813469, 28.206556>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.136200, 35.979355, 27.893517> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347347, 36.305229, 27.989546>,  <41.474037, 36.500755, 28.047163>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.347347, 36.305229, 27.989546>,  <41.136200, 35.979355, 27.893517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.347347, 36.305229, 27.989546> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.199882, 0.393889, -0.897161,
		-0.825472, 0.425596, 0.370763,
		0.527868, 0.814690, 0.240076,
		41.505707, 36.549637, 28.061569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.735500, 36.510136, 27.735544>,  <41.136200, 35.979355, 27.893517>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.735500, 36.510136, 27.735544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113106, 36.642063, 27.732410>,  <41.339668, 36.721218, 27.730530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.113106, 36.642063, 27.732410>,  <40.735500, 36.510136, 27.735544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.113106, 36.642063, 27.732410> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.102755, 0.271377, -0.956972,
		-0.313498, 0.904199, 0.290074,
		0.944013, 0.329815, -0.007835,
		41.396309, 36.741009, 27.730061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.666344, 37.192013, 27.688417>,  <40.735500, 36.510136, 27.735544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.666344, 37.192013, 27.688417> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025013, 37.082878, 27.548969>,  <41.240215, 37.017395, 27.465300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.025013, 37.082878, 27.548969>,  <40.666344, 37.192013, 27.688417>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.025013, 37.082878, 27.548969> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160011, 0.534508, -0.829878,
		0.412764, 0.799912, 0.435621,
		0.896673, -0.272840, -0.348620,
		41.294014, 37.001026, 27.444384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.986950, 37.818176, 27.418941>,  <40.666344, 37.192013, 27.688417>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.986950, 37.818176, 27.418941> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175846, 37.506859, 27.253414>,  <41.289185, 37.320068, 27.154099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.175846, 37.506859, 27.253414>,  <40.986950, 37.818176, 27.418941>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.175846, 37.506859, 27.253414> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025738, 0.457089, -0.889049,
		0.881095, 0.430494, 0.195823,
		0.472238, -0.778296, -0.413818,
		41.317516, 37.273369, 27.129269>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.514210, 38.213902, 27.050711>,  <40.986950, 37.818176, 27.418941>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.514210, 38.213902, 27.050711> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517704, 37.827957, 26.945663>,  <41.519802, 37.596390, 26.882635>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.517704, 37.827957, 26.945663>,  <41.514210, 38.213902, 27.050711>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.517704, 37.827957, 26.945663> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104554, 0.260307, -0.959848,
		0.994481, 0.035843, -0.098606,
		0.008736, -0.964860, -0.262618,
		41.520325, 37.538498, 26.866879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.825531, 38.152084, 26.426840>,  <41.514210, 38.213902, 27.050711>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.825531, 38.152084, 26.426840> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567947, 37.846264, 26.437956>,  <41.413395, 37.662773, 26.444626>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.567947, 37.846264, 26.437956>,  <41.825531, 38.152084, 26.426840>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.567947, 37.846264, 26.437956> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.378592, 0.286891, -0.879978,
		0.664816, -0.577195, -0.474200,
		-0.643963, -0.764552, 0.027792,
		41.374760, 37.616898, 26.446293>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.135406, 37.462872, 25.989416>,  <41.825531, 38.152084, 26.426840>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.135406, 37.462872, 25.989416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320187, 37.137562, 26.130938>,  <42.431057, 36.942375, 26.215851>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.320187, 37.137562, 26.130938>,  <42.135406, 37.462872, 25.989416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.320187, 37.137562, 26.130938> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.500247, -0.568336, -0.653259,
		0.732360, 0.124787, -0.669385,
		0.461954, -0.813278, 0.353803,
		42.458775, 36.893578, 26.237078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.128723, 36.994068, 25.390324>,  <42.135406, 37.462872, 25.989416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.128723, 36.994068, 25.390324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203823, 36.802254, 25.733204>,  <42.248882, 36.687164, 25.938932>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.203823, 36.802254, 25.733204>,  <42.128723, 36.994068, 25.390324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.203823, 36.802254, 25.733204> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.523501, -0.787289, -0.325765,
		0.831081, -0.387583, -0.398853,
		0.187751, -0.479537, 0.857201,
		42.260147, 36.658394, 25.990364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.422684, 36.233883, 25.380495>,  <42.128723, 36.994068, 25.390324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.422684, 36.233883, 25.380495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193821, 36.301113, 25.701590>,  <42.056503, 36.341450, 25.894247>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.193821, 36.301113, 25.701590>,  <42.422684, 36.233883, 25.380495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.193821, 36.301113, 25.701590> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.567878, -0.787377, -0.239901,
		0.591736, -0.593118, 0.545948,
		-0.572157, 0.168074, 0.802738,
		42.022175, 36.351536, 25.942411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.801174, 35.546371, 25.325201>,  <42.422684, 36.233883, 25.380495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.801174, 35.546371, 25.325201> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150612, 35.741032, 25.325512>,  <43.360275, 35.857826, 25.325699>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.150612, 35.741032, 25.325512>,  <42.801174, 35.546371, 25.325201>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.150612, 35.741032, 25.325512> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047202, -0.086326, 0.995148,
		0.484357, -0.869321, -0.098385,
		0.873596, 0.486651, 0.000779,
		43.412689, 35.887028, 25.325745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.215397, 34.974762, 25.577986>,  <42.801174, 35.546371, 25.325201>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.215397, 34.974762, 25.577986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581188, 35.134735, 25.553398>,  <43.800663, 35.230721, 25.538645>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.581188, 35.134735, 25.553398>,  <43.215397, 34.974762, 25.577986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.581188, 35.134735, 25.553398> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033279, 0.225736, 0.973620,
		0.403264, -0.888309, 0.219741,
		0.914479, 0.399939, -0.061470,
		43.855534, 35.254715, 25.534958>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.742809, 34.640507, 25.970547>,  <43.215397, 34.974762, 25.577986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.742809, 34.640507, 25.970547> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823273, 35.029797, 25.926048>,  <43.871552, 35.263371, 25.899349>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.823273, 35.029797, 25.926048>,  <43.742809, 34.640507, 25.970547>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823273, 35.029797, 25.926048> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.137584, 0.084369, 0.986890,
		0.969848, -0.213827, -0.116928,
		0.201159, 0.973221, -0.111245,
		43.883621, 35.321762, 25.892675>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.385857, 34.799442, 26.453104>,  <43.742809, 34.640507, 25.970547>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.385857, 34.799442, 26.453104> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138054, 35.103500, 26.374731>,  <43.989372, 35.285934, 26.327707>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.138054, 35.103500, 26.374731>,  <44.385857, 34.799442, 26.453104>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.138054, 35.103500, 26.374731> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124956, 0.150920, 0.980617,
		0.774979, 0.631985, 0.001487,
		-0.619510, 0.760143, -0.195930,
		43.952202, 35.331543, 26.315952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.585487, 35.543125, 26.771584>,  <44.385857, 34.799442, 26.453104>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.585487, 35.543125, 26.771584> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193695, 35.463360, 26.759949>,  <43.958618, 35.415501, 26.752968>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.193695, 35.463360, 26.759949>,  <44.585487, 35.543125, 26.771584>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193695, 35.463360, 26.759949> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064070, 0.171298, 0.983134,
		-0.191071, 0.964826, -0.180560,
		-0.979483, -0.199417, -0.029086,
		43.899849, 35.403534, 26.751223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.197933, 36.050938, 27.148169>,  <44.585487, 35.543125, 26.771584>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.197933, 36.050938, 27.148169> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945026, 35.741043, 27.149878>,  <43.793282, 35.555107, 27.150904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.945026, 35.741043, 27.149878>,  <44.197933, 36.050938, 27.148169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.945026, 35.741043, 27.149878> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.060928, -0.044221, 0.997162,
		-0.772352, 0.630732, 0.075162,
		-0.632266, -0.774740, 0.004275,
		43.755348, 35.508621, 27.151159>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.763725, 36.132355, 27.697710>,  <44.197933, 36.050938, 27.148169>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.763725, 36.132355, 27.697710> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698032, 35.741798, 27.641584>,  <43.658619, 35.507465, 27.607908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.698032, 35.741798, 27.641584>,  <43.763725, 36.132355, 27.697710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.698032, 35.741798, 27.641584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.233300, -0.176658, 0.956223,
		-0.958436, 0.124305, 0.256805,
		-0.164230, -0.976392, -0.140315,
		43.648762, 35.448879, 27.599489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.506897, 35.909935, 28.295298>,  <43.763725, 36.132355, 27.697710>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.506897, 35.909935, 28.295298> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593563, 35.550644, 28.142326>,  <43.645561, 35.335072, 28.050545>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.593563, 35.550644, 28.142326>,  <43.506897, 35.909935, 28.295298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.593563, 35.550644, 28.142326> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.266610, -0.322399, 0.908283,
		-0.939135, -0.298752, 0.169623,
		0.216665, -0.898224, -0.382427,
		43.658562, 35.281178, 28.027597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.114162, 35.367645, 28.573261>,  <43.506897, 35.909935, 28.295298>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.114162, 35.367645, 28.573261> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449100, 35.186443, 28.450857>,  <43.650063, 35.077721, 28.377415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.449100, 35.186443, 28.450857>,  <43.114162, 35.367645, 28.573261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.449100, 35.186443, 28.450857> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286305, -0.113464, 0.951397,
		-0.465710, -0.884257, 0.034690,
		0.837343, -0.453007, -0.306008,
		43.700302, 35.050541, 28.359055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.110870, 34.696346, 28.911903>,  <43.114162, 35.367645, 28.573261>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.110870, 34.696346, 28.911903> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483494, 34.751568, 28.777361>,  <43.707069, 34.784702, 28.696634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.483494, 34.751568, 28.777361>,  <43.110870, 34.696346, 28.911903>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.483494, 34.751568, 28.777361> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361974, -0.265093, 0.893700,
		0.034217, -0.954288, -0.296924,
		0.931560, 0.138058, -0.336357,
		43.762962, 34.792984, 28.676455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.434986, 34.134354, 29.194826>,  <43.110870, 34.696346, 28.911903>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.434986, 34.134354, 29.194826> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727890, 34.386784, 29.092422>,  <43.903633, 34.538242, 29.030979>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.727890, 34.386784, 29.092422>,  <43.434986, 34.134354, 29.194826>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.727890, 34.386784, 29.092422> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.562241, -0.348077, 0.750152,
		0.384288, -0.693247, -0.609697,
		0.732262, 0.631071, -0.256010,
		43.947567, 34.576103, 29.015619>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.096405, 33.688110, 29.324841>,  <43.434986, 34.134354, 29.194826>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.096405, 33.688110, 29.324841> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168533, 34.081470, 29.316660>,  <44.211811, 34.317486, 29.311752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.168533, 34.081470, 29.316660>,  <44.096405, 33.688110, 29.324841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.168533, 34.081470, 29.316660> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.525518, -0.078743, 0.847130,
		0.831454, -0.163500, -0.530991,
		0.180318, 0.983396, -0.020451,
		44.222630, 34.376488, 29.310524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.819973, 33.654133, 29.443260>,  <44.096405, 33.688110, 29.324841>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.819973, 33.654133, 29.443260> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.698483, 34.027824, 29.518064>,  <44.625587, 34.252037, 29.562946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.698483, 34.027824, 29.518064>,  <44.819973, 33.654133, 29.443260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.698483, 34.027824, 29.518064> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.690734, 0.080719, 0.718589,
		0.656230, 0.347426, -0.669819,
		-0.303724, 0.934227, 0.187009,
		44.607365, 34.308094, 29.574167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.299858, 34.171417, 29.331747>,  <44.819973, 33.654133, 29.443260>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.299858, 34.171417, 29.331747> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068165, 34.350494, 29.604233>,  <44.929150, 34.457943, 29.767725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.068165, 34.350494, 29.604233>,  <45.299858, 34.171417, 29.331747>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.068165, 34.350494, 29.604233> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.802408, 0.165908, 0.573251,
		0.143623, 0.878660, -0.455334,
		-0.579236, 0.447695, 0.681216,
		44.894394, 34.484802, 29.808598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.686634, 34.683838, 29.573858>,  <45.299858, 34.171417, 29.331747>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.686634, 34.683838, 29.573858> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424408, 34.638298, 29.872461>,  <45.267071, 34.610973, 30.051622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.424408, 34.638298, 29.872461>,  <45.686634, 34.683838, 29.573858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.424408, 34.638298, 29.872461> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.749718, 0.020095, 0.661452,
		-0.090308, 0.993295, 0.072182,
		-0.655566, -0.113851, 0.746506,
		45.227737, 34.604141, 30.096413>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.954441, 35.107109, 30.093077>,  <45.686634, 34.683838, 29.573858>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.954441, 35.107109, 30.093077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655109, 34.923794, 30.284899>,  <45.475510, 34.813805, 30.399992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.655109, 34.923794, 30.284899>,  <45.954441, 35.107109, 30.093077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.655109, 34.923794, 30.284899> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.477512, 0.129616, 0.869012,
		-0.460417, 0.879301, 0.121843,
		-0.748330, -0.458289, 0.479555,
		45.430611, 34.786308, 30.428764>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.751354, 35.546253, 30.663166>,  <45.954441, 35.107109, 30.093077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.751354, 35.546253, 30.663166> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652523, 35.169678, 30.754948>,  <45.593224, 34.943733, 30.810017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.652523, 35.169678, 30.754948>,  <45.751354, 35.546253, 30.663166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.652523, 35.169678, 30.754948> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.433173, 0.104506, 0.895232,
		-0.866783, 0.320587, 0.381983,
		-0.247080, -0.941437, 0.229453,
		45.578400, 34.887245, 30.823784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.447933, 35.572643, 31.361507>,  <45.751354, 35.546253, 30.663166>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.447933, 35.572643, 31.361507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532860, 35.184513, 31.315212>,  <45.583817, 34.951637, 31.287436>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.532860, 35.184513, 31.315212>,  <45.447933, 35.572643, 31.361507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.532860, 35.184513, 31.315212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.533506, 0.015870, 0.845647,
		-0.818713, -0.241295, 0.521042,
		0.212319, -0.970322, -0.115739,
		45.596554, 34.893417, 31.280491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.303425, 35.282936, 32.014145>,  <45.447933, 35.572643, 31.361507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.303425, 35.282936, 32.014145> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569633, 35.040329, 31.840147>,  <45.729359, 34.894764, 31.735748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.569633, 35.040329, 31.840147>,  <45.303425, 35.282936, 32.014145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.569633, 35.040329, 31.840147> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.566709, 0.031355, 0.823321,
		-0.485717, -0.794454, 0.364584,
		0.665523, -0.606514, -0.434995,
		45.769291, 34.858376, 31.709648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.441685, 34.800293, 32.431995>,  <45.303425, 35.282936, 32.014145>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.441685, 34.800293, 32.431995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751137, 34.783672, 32.179085>,  <45.936806, 34.773701, 32.027336>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.751137, 34.783672, 32.179085>,  <45.441685, 34.800293, 32.431995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.751137, 34.783672, 32.179085> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625204, -0.112247, 0.772347,
		-0.103048, -0.992812, -0.060872,
		0.773629, -0.041532, -0.632277,
		45.983223, 34.771206, 31.989401>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.829304, 34.242851, 32.668289>,  <45.441685, 34.800293, 32.431995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.829304, 34.242851, 32.668289> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082455, 34.472660, 32.460678>,  <46.234344, 34.610546, 32.336109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.082455, 34.472660, 32.460678>,  <45.829304, 34.242851, 32.668289>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.082455, 34.472660, 32.460678> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647641, -0.025457, 0.761520,
		0.424297, -0.818093, -0.388196,
		0.632876, 0.574522, -0.519029,
		46.272316, 34.645016, 32.304970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.427395, 33.969986, 32.792809>,  <45.829304, 34.242851, 32.668289>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.427395, 33.969986, 32.792809> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547398, 34.333179, 32.675800>,  <46.619400, 34.551094, 32.605595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.547398, 34.333179, 32.675800>,  <46.427395, 33.969986, 32.792809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.547398, 34.333179, 32.675800> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617644, 0.048805, 0.784942,
		0.726989, -0.416160, -0.546167,
		0.300006, 0.907981, -0.292519,
		46.637398, 34.605572, 32.588043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.166836, 34.085163, 32.986408>,  <46.427395, 33.969986, 32.792809>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.166836, 34.085163, 32.986408> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020447, 34.455769, 32.951454>,  <46.932613, 34.678131, 32.930481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.020447, 34.455769, 32.951454>,  <47.166836, 34.085163, 32.986408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.020447, 34.455769, 32.951454> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557772, 0.293545, 0.776352,
		0.744953, 0.235381, -0.624213,
		-0.365973, 0.926513, -0.087389,
		46.910656, 34.733723, 32.925236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.703239, 34.519829, 33.129631>,  <47.166836, 34.085163, 32.986408>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.703239, 34.519829, 33.129631> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380566, 34.743420, 33.206367>,  <47.186962, 34.877575, 33.252411>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.380566, 34.743420, 33.206367>,  <47.703239, 34.519829, 33.129631>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.380566, 34.743420, 33.206367> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.491894, 0.455151, 0.742211,
		0.327562, 0.693097, -0.642121,
		-0.806686, 0.558976, 0.191840,
		47.138561, 34.911114, 33.263920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.996376, 35.171299, 33.212757>,  <47.703239, 34.519829, 33.129631>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.996376, 35.171299, 33.212757> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637909, 35.154797, 33.389477>,  <47.422829, 35.144894, 33.495510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.637909, 35.154797, 33.389477>,  <47.996376, 35.171299, 33.212757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.637909, 35.154797, 33.389477> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349657, 0.547328, 0.760377,
		-0.273181, 0.835901, -0.476069,
		-0.896165, -0.041259, 0.441798,
		47.369061, 35.142418, 33.522015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.692680, 35.849045, 33.599632>,  <47.996376, 35.171299, 33.212757>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.692680, 35.849045, 33.599632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583389, 35.500629, 33.762917>,  <47.517815, 35.291580, 33.860886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.583389, 35.500629, 33.762917>,  <47.692680, 35.849045, 33.599632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.583389, 35.500629, 33.762917> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.396979, 0.284436, 0.872642,
		-0.876217, 0.400477, 0.268071,
		-0.273224, -0.871042, 0.408208,
		47.501423, 35.239315, 33.885380>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.574043, 35.931614, 34.320107>,  <47.692680, 35.849045, 33.599632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.574043, 35.931614, 34.320107> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627136, 35.535164, 34.317413>,  <47.658993, 35.297295, 34.315796>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.627136, 35.535164, 34.317413>,  <47.574043, 35.931614, 34.320107>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.627136, 35.535164, 34.317413> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.336280, 0.038638, 0.940969,
		-0.932362, -0.127159, 0.338426,
		0.132729, -0.991130, -0.006737,
		47.666954, 35.237823, 34.315392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.765373, 35.853447, 34.990170>,  <47.574043, 35.931614, 34.320107>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.765373, 35.853447, 34.990170> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834328, 35.500469, 34.815090>,  <47.875698, 35.288685, 34.710041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.834328, 35.500469, 34.815090>,  <47.765373, 35.853447, 34.990170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.834328, 35.500469, 34.815090> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.581756, -0.267370, 0.768162,
		-0.794886, -0.387051, 0.467276,
		0.172382, -0.882442, -0.437698,
		47.886044, 35.235737, 34.683781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.725101, 35.217190, 35.565884>,  <47.765373, 35.853447, 34.990170>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.725101, 35.217190, 35.565884> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.952850, 35.147915, 35.244431>,  <48.089500, 35.106350, 35.051559>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.952850, 35.147915, 35.244431>,  <47.725101, 35.217190, 35.565884>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.952850, 35.147915, 35.244431> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.742483, -0.311304, 0.593135,
		-0.352895, -0.934397, -0.048662,
		0.569372, -0.173184, -0.803631,
		48.123661, 35.095959, 35.003342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<33.414459, 38.264126, 44.378292> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309227, 37.883400, 44.441338>,  <33.246090, 37.654964, 44.479164>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.309227, 37.883400, 44.441338>,  <33.414459, 38.264126, 44.378292>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.309227, 37.883400, 44.441338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141558, -0.123521, -0.982194,
		0.954333, -0.280704, -0.102241,
		-0.263077, -0.951813, 0.157616,
		33.230305, 37.597855, 44.488621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.787777, 37.934788, 43.808136>,  <33.414459, 38.264126, 44.378292>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.787777, 37.934788, 43.808136> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520454, 37.665459, 43.934624>,  <33.360062, 37.503860, 44.010517>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.520454, 37.665459, 43.934624>,  <33.787777, 37.934788, 43.808136>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.520454, 37.665459, 43.934624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.020706, -0.441770, -0.896889,
		0.743598, -0.592849, 0.309179,
		-0.668306, -0.673327, 0.316224,
		33.319962, 37.463459, 44.029491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.092449, 37.245102, 43.773113>,  <33.787777, 37.934788, 43.808136>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.092449, 37.245102, 43.773113> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695004, 37.201546, 43.761261>,  <33.456535, 37.175411, 43.754150>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.695004, 37.201546, 43.761261>,  <34.092449, 37.245102, 43.773113>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.695004, 37.201546, 43.761261> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076189, -0.453642, -0.887921,
		0.083243, -0.884507, 0.459041,
		-0.993612, -0.108887, -0.029627,
		33.396919, 37.168880, 43.752373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.985771, 36.638165, 43.427059>,  <34.092449, 37.245102, 43.773113>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.985771, 36.638165, 43.427059> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621845, 36.801785, 43.399002>,  <33.403492, 36.899956, 43.382168>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.621845, 36.801785, 43.399002>,  <33.985771, 36.638165, 43.427059>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.621845, 36.801785, 43.399002> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.139954, -0.461509, -0.876026,
		-0.390708, -0.787203, 0.477135,
		-0.909813, 0.409048, -0.070143,
		33.348900, 36.924500, 43.377960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.529968, 36.183472, 43.200294>,  <33.985771, 36.638165, 43.427059>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.529968, 36.183472, 43.200294> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352619, 36.525444, 43.092583>,  <33.246212, 36.730629, 43.027954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.352619, 36.525444, 43.092583>,  <33.529968, 36.183472, 43.200294>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.352619, 36.525444, 43.092583> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.019564, -0.309580, -0.950672,
		-0.896125, -0.416231, 0.153985,
		-0.443370, 0.854934, -0.269279,
		33.219608, 36.781925, 43.011799>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.865093, 36.008663, 42.788231>,  <33.529968, 36.183472, 43.200294>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.865093, 36.008663, 42.788231> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954239, 36.389534, 42.704624>,  <33.007725, 36.618057, 42.654461>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.954239, 36.389534, 42.704624>,  <32.865093, 36.008663, 42.788231>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.954239, 36.389534, 42.704624> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076000, -0.196784, -0.977497,
		-0.971883, 0.233732, 0.028510,
		0.222862, 0.952179, -0.209014,
		33.021099, 36.675186, 42.641918>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.262150, 36.257252, 42.286415>,  <32.865093, 36.008663, 42.788231>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.262150, 36.257252, 42.286415> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.586529, 36.483776, 42.227562>,  <32.781158, 36.619690, 42.192249>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.586529, 36.483776, 42.227562>,  <32.262150, 36.257252, 42.286415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586529, 36.483776, 42.227562> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097091, -0.117738, -0.988287,
		-0.577001, 0.815739, -0.040496,
		0.810952, 0.566311, -0.147136,
		32.829815, 36.653671, 42.183422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.129467, 36.523144, 41.672977>,  <32.262150, 36.257252, 42.286415>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.129467, 36.523144, 41.672977> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.525410, 36.573997, 41.698338>,  <32.762974, 36.604507, 41.713554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.525410, 36.573997, 41.698338>,  <32.129467, 36.523144, 41.672977>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.525410, 36.573997, 41.698338> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071009, -0.056244, -0.995889,
		-0.123042, 0.990290, -0.064701,
		0.989858, 0.127130, 0.063399,
		32.822369, 36.612137, 41.717358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.333485, 36.795197, 41.064400>,  <32.129467, 36.523144, 41.672977>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.333485, 36.795197, 41.064400> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.707493, 36.698162, 41.167854>,  <32.931896, 36.639942, 41.229927>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<32.707493, 36.698162, 41.167854>,  <32.333485, 36.795197, 41.064400>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.707493, 36.698162, 41.167854> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.265099, -0.006187, -0.964201,
		0.235499, 0.970111, 0.058524,
		0.935020, -0.242583, 0.258633,
		32.987999, 36.625389, 41.245445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.005142, 37.271736, 40.797455>,  <32.333485, 36.795197, 41.064400>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.005142, 37.271736, 40.797455> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.124687, 36.893631, 40.849838>,  <33.196415, 36.666767, 40.881268>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.124687, 36.893631, 40.849838>,  <33.005142, 37.271736, 40.797455>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.124687, 36.893631, 40.849838> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459806, 0.022385, -0.887737,
		0.836216, 0.325532, 0.441329,
		0.298866, -0.945266, 0.130963,
		33.214348, 36.610050, 40.889126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632500, 37.188625, 40.689884>,  <33.005142, 37.271736, 40.797455>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632500, 37.188625, 40.689884> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551888, 36.797470, 40.667557>,  <33.503521, 36.562775, 40.654160>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.551888, 36.797470, 40.667557>,  <33.632500, 37.188625, 40.689884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.551888, 36.797470, 40.667557> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508101, -0.055652, -0.859497,
		0.837388, -0.201578, 0.508083,
		-0.201532, -0.977890, -0.055820,
		33.491428, 36.504105, 40.650810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.255001, 36.800438, 40.604095>,  <33.632500, 37.188625, 40.689884>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.255001, 36.800438, 40.604095> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957542, 36.583950, 40.447090>,  <33.779068, 36.454056, 40.352886>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.957542, 36.583950, 40.447090>,  <34.255001, 36.800438, 40.604095>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.957542, 36.583950, 40.447090> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.478472, -0.020770, -0.877857,
		0.466963, -0.840623, 0.274406,
		-0.743647, -0.541222, -0.392516,
		33.734447, 36.421585, 40.329334>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578857, 36.194317, 40.249474>,  <34.255001, 36.800438, 40.604095>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578857, 36.194317, 40.249474> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.212761, 36.251457, 40.098778>,  <33.993103, 36.285740, 40.008362>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.212761, 36.251457, 40.098778>,  <34.578857, 36.194317, 40.249474>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.212761, 36.251457, 40.098778> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.365986, -0.096297, -0.925625,
		-0.168502, -0.985049, 0.035855,
		-0.915238, 0.142847, -0.376740,
		33.938190, 36.294312, 39.985756>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.550125, 35.692341, 39.791363>,  <34.578857, 36.194317, 40.249474>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.550125, 35.692341, 39.791363> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.259468, 35.934605, 39.661648>,  <34.085075, 36.079964, 39.583820>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.259468, 35.934605, 39.661648>,  <34.550125, 35.692341, 39.791363>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.259468, 35.934605, 39.661648> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245640, -0.211776, -0.945945,
		-0.641600, -0.767023, 0.005111,
		-0.726643, 0.605663, -0.324287,
		34.041473, 36.116302, 39.564362>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.182148, 35.333260, 39.252522>,  <34.550125, 35.692341, 39.791363>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.182148, 35.333260, 39.252522> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099392, 35.718590, 39.184170>,  <34.049736, 35.949787, 39.143158>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.099392, 35.718590, 39.184170>,  <34.182148, 35.333260, 39.252522>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099392, 35.718590, 39.184170> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160581, -0.138850, -0.977207,
		-0.965095, -0.229617, -0.125965,
		-0.206893, 0.963326, -0.170876,
		34.037323, 36.007587, 39.132908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.766064, 35.324280, 38.688629>,  <34.182148, 35.333260, 39.252522>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.766064, 35.324280, 38.688629> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.902485, 35.700253, 38.694534>,  <33.984337, 35.925835, 38.698078>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.902485, 35.700253, 38.694534>,  <33.766064, 35.324280, 38.688629>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.902485, 35.700253, 38.694534> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.116002, -0.026497, -0.992895,
		-0.932860, 0.340341, -0.118070,
		0.341052, 0.939928, 0.014763,
		34.004799, 35.982231, 38.698963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407242, 35.666130, 38.184364>,  <33.766064, 35.324280, 38.688629>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407242, 35.666130, 38.184364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736691, 35.885002, 38.244015>,  <33.934361, 36.016323, 38.279804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.736691, 35.885002, 38.244015>,  <33.407242, 35.666130, 38.184364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736691, 35.885002, 38.244015> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.223282, -0.071149, -0.972154,
		-0.521331, 0.833987, -0.180775,
		0.823626, 0.547178, 0.149122,
		33.983780, 36.049156, 38.288750>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.440960, 35.992256, 37.549320>,  <33.407242, 35.666130, 38.184364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.440960, 35.992256, 37.549320> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.805779, 36.058460, 37.699402>,  <34.024670, 36.098183, 37.789452>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<33.805779, 36.058460, 37.699402>,  <33.440960, 35.992256, 37.549320>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.805779, 36.058460, 37.699402> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373789, 0.040847, -0.926614,
		-0.168688, 0.985362, -0.024611,
		0.912045, 0.165508, 0.375208,
		34.079391, 36.108112, 37.811966>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.746449, 36.583519, 37.173325>,  <33.440960, 35.992256, 37.549320>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.746449, 36.583519, 37.173325> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034264, 36.371468, 37.352757>,  <34.206955, 36.244236, 37.460415>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.034264, 36.371468, 37.352757>,  <33.746449, 36.583519, 37.173325>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.034264, 36.371468, 37.352757> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409636, -0.197599, -0.890591,
		0.560768, 0.824571, 0.074980,
		0.719539, -0.530130, 0.448582,
		34.250126, 36.212429, 37.487331>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.380283, 36.783070, 36.821701>,  <33.746449, 36.583519, 37.173325>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.380283, 36.783070, 36.821701> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.455311, 36.421871, 36.976318>,  <34.500328, 36.205151, 37.069088>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.455311, 36.421871, 36.976318>,  <34.380283, 36.783070, 36.821701>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.455311, 36.421871, 36.976318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.289608, -0.325190, -0.900210,
		0.938587, 0.280795, 0.200521,
		0.187567, -0.902998, 0.386539,
		34.511581, 36.150970, 37.092281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.991989, 36.635647, 36.565372>,  <34.380283, 36.783070, 36.821701>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.991989, 36.635647, 36.565372> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853737, 36.280872, 36.687935>,  <34.770786, 36.068008, 36.761471>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.853737, 36.280872, 36.687935>,  <34.991989, 36.635647, 36.565372>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.853737, 36.280872, 36.687935> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325132, -0.419497, -0.847532,
		0.880242, -0.193314, 0.433363,
		-0.345635, -0.886934, 0.306407,
		34.750046, 36.014793, 36.779858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.605721, 36.373005, 36.538364>,  <34.991989, 36.635647, 36.565372>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.605721, 36.373005, 36.538364> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.318050, 36.095074, 36.537956>,  <35.145447, 35.928314, 36.537712>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.318050, 36.095074, 36.537956>,  <35.605721, 36.373005, 36.538364>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.318050, 36.095074, 36.537956> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.388381, -0.400770, -0.829786,
		0.576149, -0.597158, 0.558081,
		-0.719175, -0.694828, -0.001022,
		35.102299, 35.886627, 36.537651>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.164490, 36.425106, 36.171833>,  <35.605721, 36.373005, 36.538364>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.164490, 36.425106, 36.171833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325562, 36.766800, 36.040302>,  <36.422207, 36.971817, 35.961384>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.325562, 36.766800, 36.040302>,  <36.164490, 36.425106, 36.171833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.325562, 36.766800, 36.040302> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.072364, 0.328401, 0.941762,
		0.912474, -0.403027, 0.070426,
		0.402683, 0.854238, -0.328822,
		36.446365, 37.023071, 35.941654>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.789013, 36.460163, 36.562588>,  <36.164490, 36.425106, 36.171833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.789013, 36.460163, 36.562588> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653786, 36.814568, 36.435658>,  <36.572647, 37.027210, 36.359497>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.653786, 36.814568, 36.435658>,  <36.789013, 36.460163, 36.562588>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.653786, 36.814568, 36.435658> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224566, 0.403387, 0.887045,
		0.913936, 0.228622, -0.335341,
		-0.338070, 0.886008, -0.317330,
		36.552364, 37.080372, 36.340458>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.157284, 36.893745, 36.943516>,  <36.789013, 36.460163, 36.562588>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.157284, 36.893745, 36.943516> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895393, 37.156734, 36.794350>,  <36.738258, 37.314526, 36.704849>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.895393, 37.156734, 36.794350>,  <37.157284, 36.893745, 36.943516>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.895393, 37.156734, 36.794350> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.141654, 0.591348, 0.793878,
		0.742471, 0.466951, -0.480306,
		-0.654730, 0.657468, -0.372913,
		36.698975, 37.353973, 36.682476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.405586, 37.557606, 36.932056>,  <37.157284, 36.893745, 36.943516>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.405586, 37.557606, 36.932056> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009457, 37.611927, 36.943462>,  <36.771778, 37.644520, 36.950306>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.009457, 37.611927, 36.943462>,  <37.405586, 37.557606, 36.932056>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.009457, 37.611927, 36.943462> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.098848, 0.546134, 0.831845,
		0.097395, 0.826616, -0.554274,
		-0.990325, 0.135806, 0.028519,
		36.712360, 37.652668, 36.952019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.311131, 38.239613, 37.162846>,  <37.405586, 37.557606, 36.932056>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.311131, 38.239613, 37.162846> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958519, 38.063538, 37.231133>,  <36.746952, 37.957893, 37.272102>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.958519, 38.063538, 37.231133>,  <37.311131, 38.239613, 37.162846>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.958519, 38.063538, 37.231133> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130896, 0.575271, 0.807422,
		-0.453624, 0.689419, -0.564736,
		-0.881528, -0.440188, 0.170715,
		36.694061, 37.931480, 37.282349>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.901203, 38.743084, 37.496677>,  <37.311131, 38.239613, 37.162846>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.901203, 38.743084, 37.496677> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697323, 38.410961, 37.586826>,  <36.574993, 38.211689, 37.640915>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.697323, 38.410961, 37.586826>,  <36.901203, 38.743084, 37.496677>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.697323, 38.410961, 37.586826> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222838, 0.380419, 0.897566,
		-0.830991, 0.407272, -0.378925,
		-0.509703, -0.830308, 0.225369,
		36.544411, 38.161869, 37.654438>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.284473, 38.976688, 37.803230>,  <36.901203, 38.743084, 37.496677>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.284473, 38.976688, 37.803230> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296558, 38.592728, 37.914711>,  <36.303810, 38.362350, 37.981598>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.296558, 38.592728, 37.914711>,  <36.284473, 38.976688, 37.803230>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296558, 38.592728, 37.914711> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281643, 0.259355, 0.923804,
		-0.959044, -0.106405, -0.262514,
		0.030214, -0.959903, 0.278701,
		36.305622, 38.304756, 37.998322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.663544, 38.865086, 38.048145>,  <36.284473, 38.976688, 37.803230>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.663544, 38.865086, 38.048145> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.906746, 38.584801, 38.197453>,  <36.052670, 38.416630, 38.287037>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.906746, 38.584801, 38.197453>,  <35.663544, 38.865086, 38.048145>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.906746, 38.584801, 38.197453> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.289678, 0.241945, 0.926040,
		-0.739197, -0.671167, -0.055876,
		0.608009, -0.700712, 0.373267,
		36.089149, 38.374588, 38.309433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.308865, 38.549873, 38.558064>,  <35.663544, 38.865086, 38.048145>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.308865, 38.549873, 38.558064> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674309, 38.432270, 38.670403>,  <35.893574, 38.361710, 38.737804>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.674309, 38.432270, 38.670403>,  <35.308865, 38.549873, 38.558064>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.674309, 38.432270, 38.670403> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.294061, -0.000781, 0.955786,
		-0.280788, -0.955803, -0.087169,
		0.913612, -0.294006, 0.280845,
		35.948391, 38.344067, 38.754658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.242073, 37.975052, 39.023106>,  <35.308865, 38.549873, 38.558064>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.242073, 37.975052, 39.023106> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609306, 38.112171, 39.102718>,  <35.829647, 38.194443, 39.150486>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.609306, 38.112171, 39.102718>,  <35.242073, 37.975052, 39.023106>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.609306, 38.112171, 39.102718> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.189489, -0.061496, 0.979955,
		0.348170, -0.937393, 0.008499,
		0.918081, 0.342801, 0.199036,
		35.884731, 38.215012, 39.162430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.592960, 37.503754, 39.536690>,  <35.242073, 37.975052, 39.023106>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.592960, 37.503754, 39.536690> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776718, 37.858620, 39.554138>,  <35.886971, 38.071537, 39.564610>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.776718, 37.858620, 39.554138>,  <35.592960, 37.503754, 39.536690>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.776718, 37.858620, 39.554138> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.119078, 0.012844, 0.992802,
		0.880215, -0.461280, 0.111542,
		0.459392, 0.887161, 0.043623,
		35.914536, 38.124767, 39.567226>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.149170, 37.395451, 40.105534>,  <35.592960, 37.503754, 39.536690>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.149170, 37.395451, 40.105534> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062851, 37.784023, 40.066044>,  <36.011059, 38.017166, 40.042351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.062851, 37.784023, 40.066044>,  <36.149170, 37.395451, 40.105534>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.062851, 37.784023, 40.066044> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.092443, 0.080329, 0.992472,
		0.972053, 0.223295, 0.072468,
		-0.215793, 0.971435, -0.098727,
		35.998112, 38.075455, 40.036427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.596470, 37.859425, 40.609219>,  <36.149170, 37.395451, 40.105534>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.596470, 37.859425, 40.609219> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250668, 38.037037, 40.515018>,  <36.043186, 38.143604, 40.458496>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.250668, 38.037037, 40.515018>,  <36.596470, 37.859425, 40.609219>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.250668, 38.037037, 40.515018> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.104606, 0.299339, 0.948395,
		0.491614, 0.844530, -0.212332,
		-0.864507, 0.444033, -0.235502,
		35.991314, 38.170246, 40.444366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.638741, 38.444046, 40.966343>,  <36.596470, 37.859425, 40.609219>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.638741, 38.444046, 40.966343> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247234, 38.422386, 40.887253>,  <36.012333, 38.409389, 40.839798>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.247234, 38.422386, 40.887253>,  <36.638741, 38.444046, 40.966343>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.247234, 38.422386, 40.887253> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200891, 0.445548, 0.872427,
		0.040855, 0.893619, -0.446963,
		-0.978761, -0.054148, -0.197723,
		35.953606, 38.406143, 40.827934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.369797, 39.035099, 41.199780>,  <36.638741, 38.444046, 40.966343>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.369797, 39.035099, 41.199780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049107, 38.797241, 41.175678>,  <35.856693, 38.654526, 41.161217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<36.049107, 38.797241, 41.175678>,  <36.369797, 39.035099, 41.199780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.049107, 38.797241, 41.175678> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335593, 0.364449, 0.868651,
		-0.494583, 0.716639, -0.491748,
		-0.801726, -0.594647, -0.060249,
		35.808590, 38.618847, 41.157604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.849087, 39.527603, 41.245041>,  <36.369797, 39.035099, 41.199780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.849087, 39.527603, 41.245041> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714638, 39.169842, 41.363068>,  <35.633968, 38.955185, 41.433884>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.714638, 39.169842, 41.363068>,  <35.849087, 39.527603, 41.245041>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.714638, 39.169842, 41.363068> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546932, 0.440426, 0.711962,
		-0.766736, 0.077925, -0.637215,
		-0.336126, -0.894400, 0.295071,
		35.613800, 38.901520, 41.451588>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.158539, 39.584759, 41.487724>,  <35.849087, 39.527603, 41.245041>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.158539, 39.584759, 41.487724> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222939, 39.223057, 41.645912>,  <35.261578, 39.006035, 41.740826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<35.222939, 39.223057, 41.645912>,  <35.158539, 39.584759, 41.487724>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.222939, 39.223057, 41.645912> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.274111, 0.343965, 0.898082,
		-0.948126, -0.252990, -0.192491,
		0.160995, -0.904259, 0.395470,
		35.271236, 38.951778, 41.764553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.518002, 39.362213, 41.773220>,  <35.158539, 39.584759, 41.487724>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.518002, 39.362213, 41.773220> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811497, 39.176903, 41.972019>,  <34.987595, 39.065716, 42.091297>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<34.811497, 39.176903, 41.972019>,  <34.518002, 39.362213, 41.773220>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.811497, 39.176903, 41.972019> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.381789, 0.323952, 0.865617,
		-0.562026, -0.824881, 0.060819,
		0.733733, -0.463279, 0.496999,
		35.031616, 39.037918, 42.121120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<34.158321, 38.789856, 42.486107> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546799, 38.870972, 42.536171>,  <34.779884, 38.919643, 42.566208>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.546799, 38.870972, 42.536171>,  <34.158321, 38.789856, 42.486107>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.546799, 38.870972, 42.536171> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195440, 0.377287, 0.905239,
		0.136353, -0.903621, 0.406051,
		0.971190, 0.202791, 0.125159,
		34.838158, 38.931808, 42.573719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.229561, 38.515858, 43.084663>,  <34.158321, 38.789856, 42.486107>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.229561, 38.515858, 43.084663> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525555, 38.783882, 43.061172>,  <34.703152, 38.944695, 43.047077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.525555, 38.783882, 43.061172>,  <34.229561, 38.515858, 43.084663>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525555, 38.783882, 43.061172> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168930, 0.269651, 0.948025,
		0.651067, -0.691601, 0.312730,
		0.739983, 0.670057, -0.058729,
		34.747551, 38.984898, 43.043552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.654446, 38.383381, 43.716198>,  <34.229561, 38.515858, 43.084663>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.654446, 38.383381, 43.716198> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740604, 38.755257, 43.596680>,  <34.792297, 38.978382, 43.524967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.740604, 38.755257, 43.596680>,  <34.654446, 38.383381, 43.716198>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.740604, 38.755257, 43.596680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056658, 0.317363, 0.946610,
		0.974882, -0.186964, 0.121033,
		0.215394, 0.929691, -0.298798,
		34.805222, 39.034164, 43.507042>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248074, 38.526161, 44.092285>,  <34.654446, 38.383381, 43.716198>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248074, 38.526161, 44.092285> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091679, 38.875771, 43.976898>,  <34.997841, 39.085537, 43.907665>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.091679, 38.875771, 43.976898>,  <35.248074, 38.526161, 44.092285>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.091679, 38.875771, 43.976898> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.031349, 0.325879, 0.944892,
		0.919864, 0.360394, -0.154813,
		-0.390984, 0.874024, -0.288467,
		34.974384, 39.137978, 43.890358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.521835, 39.059265, 44.540325>,  <35.248074, 38.526161, 44.092285>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.521835, 39.059265, 44.540325> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204281, 39.236816, 44.374092>,  <35.013748, 39.343346, 44.274353>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.204281, 39.236816, 44.374092>,  <35.521835, 39.059265, 44.540325>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.204281, 39.236816, 44.374092> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.172893, 0.490469, 0.854136,
		0.582965, 0.749941, -0.312634,
		-0.793889, 0.443880, -0.415586,
		34.966114, 39.369980, 44.249416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.585464, 39.764278, 44.740891>,  <35.521835, 39.059265, 44.540325>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.585464, 39.764278, 44.740891> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205055, 39.693157, 44.639744>,  <34.976810, 39.650486, 44.579056>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<35.205055, 39.693157, 44.639744>,  <35.585464, 39.764278, 44.740891>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.205055, 39.693157, 44.639744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308987, 0.523208, 0.794217,
		-0.008911, 0.833451, -0.552521,
		-0.951024, -0.177799, -0.252863,
		34.919746, 39.639816, 44.563885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.151398, 40.329010, 44.980816>,  <35.585464, 39.764278, 44.740891>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.151398, 40.329010, 44.980816> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857494, 40.058907, 44.955017>,  <34.681152, 39.896843, 44.939537>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.857494, 40.058907, 44.955017>,  <35.151398, 40.329010, 44.980816>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.857494, 40.058907, 44.955017> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.407922, 0.363883, 0.837370,
		-0.541974, 0.641570, -0.542818,
		-0.734754, -0.675261, -0.064496,
		34.637070, 39.856327, 44.935669>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.547306, 40.727837, 45.120426>,  <35.151398, 40.329010, 44.980816>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.547306, 40.727837, 45.120426> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405624, 40.364971, 45.211285>,  <34.320614, 40.147251, 45.265800>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.405624, 40.364971, 45.211285>,  <34.547306, 40.727837, 45.120426>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.405624, 40.364971, 45.211285> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.226281, 0.318821, 0.920408,
		-0.907377, 0.274616, -0.318202,
		-0.354208, -0.907160, 0.227150,
		34.299362, 40.092823, 45.279430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.950981, 40.814392, 45.477219>,  <34.547306, 40.727837, 45.120426>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.950981, 40.814392, 45.477219> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048515, 40.436569, 45.565174>,  <34.107037, 40.209873, 45.617947>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.048515, 40.436569, 45.565174>,  <33.950981, 40.814392, 45.477219>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.048515, 40.436569, 45.565174> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.248381, 0.158347, 0.955632,
		-0.937470, -0.287636, -0.195999,
		0.243838, -0.944559, 0.219889,
		34.121666, 40.153202, 45.631142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.386265, 40.653210, 45.989876>,  <33.950981, 40.814392, 45.477219>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.386265, 40.653210, 45.989876> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668980, 40.378208, 46.056564>,  <33.838608, 40.213207, 46.096577>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.668980, 40.378208, 46.056564>,  <33.386265, 40.653210, 45.989876>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.668980, 40.378208, 46.056564> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.058731, 0.177831, 0.982307,
		-0.704983, -0.704074, 0.085311,
		0.706788, -0.687500, 0.166720,
		33.881016, 40.171959, 46.106579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.053467, 40.205997, 46.464478>,  <33.386265, 40.653210, 45.989876>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.053467, 40.205997, 46.464478> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450230, 40.160110, 46.486217>,  <33.688290, 40.132576, 46.499260>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.450230, 40.160110, 46.486217>,  <33.053467, 40.205997, 46.464478>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.450230, 40.160110, 46.486217> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057901, -0.027843, 0.997934,
		-0.112972, -0.993007, -0.034260,
		0.991909, -0.114722, 0.054351,
		33.747803, 40.125694, 46.502522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.192741, 39.553776, 46.814751>,  <33.053467, 40.205997, 46.464478>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.192741, 39.553776, 46.814751> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507385, 39.797840, 46.852600>,  <33.696171, 39.944279, 46.875309>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.507385, 39.797840, 46.852600>,  <33.192741, 39.553776, 46.814751>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.507385, 39.797840, 46.852600> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070474, -0.063533, 0.995488,
		0.613418, -0.789728, -0.006976,
		0.786608, 0.610159, 0.094628,
		33.743366, 39.980888, 46.880989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.549850, 39.245846, 47.315033>,  <33.192741, 39.553776, 46.814751>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.549850, 39.245846, 47.315033> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661957, 39.628437, 47.282543>,  <33.729221, 39.857990, 47.263050>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.661957, 39.628437, 47.282543>,  <33.549850, 39.245846, 47.315033>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.661957, 39.628437, 47.282543> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109016, 0.115782, 0.987274,
		0.953712, -0.267847, 0.136721,
		0.280268, 0.956480, -0.081224,
		33.746037, 39.915382, 47.258175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140724, 39.371597, 47.695892>,  <33.549850, 39.245846, 47.315033>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140724, 39.371597, 47.695892> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051819, 39.760742, 47.670155>,  <33.998478, 39.994228, 47.654713>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.051819, 39.760742, 47.670155>,  <34.140724, 39.371597, 47.695892>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051819, 39.760742, 47.670155> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161523, 0.101822, 0.981602,
		0.961515, 0.207779, -0.179771,
		-0.222261, 0.972862, -0.064342,
		33.985142, 40.052601, 47.650852>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.679409, 39.626087, 48.117744>,  <34.140724, 39.371597, 47.695892>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.679409, 39.626087, 48.117744> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401428, 39.912937, 48.096680>,  <34.234638, 40.085045, 48.084042>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.401428, 39.912937, 48.096680>,  <34.679409, 39.626087, 48.117744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.401428, 39.912937, 48.096680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.171839, 0.236751, 0.956253,
		0.698219, 0.655503, -0.287761,
		-0.694955, 0.717122, -0.052663,
		34.192944, 40.128075, 48.080879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.934837, 40.208595, 48.442066>,  <34.679409, 39.626087, 48.117744>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.934837, 40.208595, 48.442066> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543533, 40.290234, 48.456810>,  <34.308750, 40.339218, 48.465656>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.543533, 40.290234, 48.456810>,  <34.934837, 40.208595, 48.442066>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.543533, 40.290234, 48.456810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.068716, 0.151271, 0.986101,
		0.195682, 0.967193, -0.162006,
		-0.978257, 0.204095, 0.036860,
		34.250057, 40.351463, 48.467869>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.006962, 40.772865, 48.824284>,  <34.934837, 40.208595, 48.442066>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.006962, 40.772865, 48.824284> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623196, 40.661163, 48.839989>,  <34.392937, 40.594143, 48.849411>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.623196, 40.661163, 48.839989>,  <35.006962, 40.772865, 48.824284>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.623196, 40.661163, 48.839989> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.043427, 0.283886, 0.957874,
		-0.278643, 0.917291, -0.284492,
		-0.959412, -0.279259, 0.039267,
		34.335373, 40.577385, 48.851768>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.598377, 41.281639, 49.102882>,  <35.006962, 40.772865, 48.824284>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.598377, 41.281639, 49.102882> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404045, 40.938465, 49.169708>,  <34.287445, 40.732559, 49.209805>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.404045, 40.938465, 49.169708>,  <34.598377, 41.281639, 49.102882>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.404045, 40.938465, 49.169708> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065501, 0.154865, 0.985762,
		-0.871595, 0.489857, -0.019043,
		-0.485832, -0.857938, 0.167065,
		34.258297, 40.681084, 49.219830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.311798, 41.452705, 49.685455>,  <34.598377, 41.281639, 49.102882>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.311798, 41.452705, 49.685455> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292274, 41.054649, 49.651257>,  <34.280560, 40.815815, 49.630737>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.292274, 41.054649, 49.651257>,  <34.311798, 41.452705, 49.685455>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.292274, 41.054649, 49.651257> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.027153, -0.084247, 0.996075,
		-0.998439, 0.050934, -0.022909,
		-0.048804, -0.995142, -0.085499,
		34.277634, 40.756107, 49.625607>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.894085, 41.302544, 50.094608>,  <34.311798, 41.452705, 49.685455>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.894085, 41.302544, 50.094608> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083824, 40.951618, 50.065441>,  <34.197670, 40.741062, 50.047943>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.083824, 40.951618, 50.065441>,  <33.894085, 41.302544, 50.094608>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.083824, 40.951618, 50.065441> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.153674, 0.000966, 0.988121,
		-0.866819, -0.479922, 0.135278,
		0.474351, -0.877311, -0.072914,
		34.226131, 40.688423, 50.043568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.607224, 40.861874, 50.619907>,  <33.894085, 41.302544, 50.094608>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.607224, 40.861874, 50.619907> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959152, 40.696262, 50.526527>,  <34.170307, 40.596893, 50.470497>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.959152, 40.696262, 50.526527>,  <33.607224, 40.861874, 50.619907>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.959152, 40.696262, 50.526527> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149956, -0.224286, 0.962917,
		-0.451037, -0.882198, -0.135245,
		0.879817, -0.414031, -0.233452,
		34.223099, 40.572052, 50.456493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.654114, 40.085022, 50.890369>,  <33.607224, 40.861874, 50.619907>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.654114, 40.085022, 50.890369> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029835, 40.210510, 50.834801>,  <34.255268, 40.285801, 50.801460>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.029835, 40.210510, 50.834801>,  <33.654114, 40.085022, 50.890369>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.029835, 40.210510, 50.834801> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.191704, -0.144080, 0.970819,
		0.284548, -0.938521, -0.195475,
		0.939298, 0.313718, -0.138921,
		34.311623, 40.304626, 50.793125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.300613, 39.628952, 50.972210>,  <33.654114, 40.085022, 50.890369>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.300613, 39.628952, 50.972210> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351696, 40.008209, 51.088634>,  <34.382343, 40.235764, 51.158489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.351696, 40.008209, 51.088634>,  <34.300613, 39.628952, 50.972210>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.351696, 40.008209, 51.088634> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231791, -0.313871, 0.920738,
		0.964347, -0.050117, -0.259853,
		0.127705, 0.948142, 0.291064,
		34.390007, 40.292652, 51.175953>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.915241, 39.644161, 51.331963>,  <34.300613, 39.628952, 50.972210>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.915241, 39.644161, 51.331963> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662933, 39.937519, 51.433353>,  <34.511547, 40.113533, 51.494190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.662933, 39.937519, 51.433353>,  <34.915241, 39.644161, 51.331963>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.662933, 39.937519, 51.433353> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119883, -0.230637, 0.965626,
		0.766651, 0.639479, 0.057557,
		-0.630773, 0.733398, 0.253481,
		34.473701, 40.157539, 51.509399>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.634216, 39.062298, 51.881149>,  <34.915241, 39.644161, 51.331963>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.634216, 39.062298, 51.881149> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442764, 38.734306, 52.006714>,  <34.327892, 38.537510, 52.082054>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.442764, 38.734306, 52.006714>,  <34.634216, 39.062298, 51.881149>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.442764, 38.734306, 52.006714> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.178527, -0.440943, -0.879601,
		0.859675, -0.364962, 0.357437,
		-0.478630, -0.819983, 0.313912,
		34.299175, 38.488312, 52.100887>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.016651, 38.476570, 51.719299>,  <34.634216, 39.062298, 51.881149>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.016651, 38.476570, 51.719299> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651844, 38.316380, 51.754715>,  <34.432961, 38.220264, 51.775967>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.651844, 38.316380, 51.754715>,  <35.016651, 38.476570, 51.719299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.651844, 38.316380, 51.754715> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.134543, -0.496048, -0.857808,
		0.387457, -0.770423, 0.506286,
		-0.912017, -0.400481, 0.088542,
		34.378239, 38.196236, 51.781277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.138393, 37.801983, 51.570629>,  <35.016651, 38.476570, 51.719299>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.138393, 37.801983, 51.570629> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744102, 37.850052, 51.523479>,  <34.507526, 37.878895, 51.495190>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.744102, 37.850052, 51.523479>,  <35.138393, 37.801983, 51.570629>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.744102, 37.850052, 51.523479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054982, -0.431997, -0.900197,
		-0.159104, -0.893832, 0.419225,
		-0.985730, 0.120175, -0.117877,
		34.448383, 37.886105, 51.488117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.982285, 37.233433, 51.175770>,  <35.138393, 37.801983, 51.570629>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.982285, 37.233433, 51.175770> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650036, 37.451763, 51.131680>,  <34.450687, 37.582760, 51.105225>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.650036, 37.451763, 51.131680>,  <34.982285, 37.233433, 51.175770>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.650036, 37.451763, 51.131680> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045656, -0.264037, -0.963431,
		-0.554970, -0.795210, 0.244234,
		-0.830617, 0.545826, -0.110226,
		34.400852, 37.615509, 51.098610>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.594467, 36.738544, 50.786587>,  <34.982285, 37.233433, 51.175770>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.594467, 36.738544, 50.786587> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437511, 37.102711, 50.734184>,  <34.343338, 37.321213, 50.702744>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.437511, 37.102711, 50.734184>,  <34.594467, 36.738544, 50.786587>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.437511, 37.102711, 50.734184> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.048573, -0.121723, -0.991375,
		-0.918514, -0.395372, 0.003542,
		-0.392393, 0.910420, -0.131009,
		34.319794, 37.375835, 50.694881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.034161, 36.717323, 50.402077>,  <34.594467, 36.738544, 50.786587>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.034161, 36.717323, 50.402077> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155094, 37.095680, 50.354935>,  <34.227654, 37.322693, 50.326649>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.155094, 37.095680, 50.354935>,  <34.034161, 36.717323, 50.402077>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.155094, 37.095680, 50.354935> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.017460, -0.118126, -0.992845,
		-0.953044, 0.302224, -0.019197,
		0.302329, 0.945890, -0.117856,
		34.245792, 37.379448, 50.319576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.509907, 37.005882, 49.973869>,  <34.034161, 36.717323, 50.402077>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.509907, 37.005882, 49.973869> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.825150, 37.250988, 49.950523>,  <34.014294, 37.398052, 49.936516>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.825150, 37.250988, 49.950523>,  <33.509907, 37.005882, 49.973869>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.825150, 37.250988, 49.950523> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.124275, 0.065537, -0.990081,
		-0.602861, 0.787544, 0.127802,
		0.788108, 0.612764, -0.058362,
		34.061581, 37.434818, 49.933014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.319382, 37.560795, 49.535580>,  <33.509907, 37.005882, 49.973869>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.319382, 37.560795, 49.535580> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718704, 37.550419, 49.514744>,  <33.958298, 37.544193, 49.502243>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.718704, 37.550419, 49.514744>,  <33.319382, 37.560795, 49.535580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.718704, 37.550419, 49.514744> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.046003, 0.196474, -0.979429,
		0.035645, 0.980165, 0.194947,
		0.998305, -0.025944, -0.052094,
		34.018196, 37.542637, 49.499115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.517597, 38.131462, 49.128014>,  <33.319382, 37.560795, 49.535580>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.517597, 38.131462, 49.128014> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.822849, 37.873123, 49.118927>,  <34.006001, 37.718121, 49.113476>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.822849, 37.873123, 49.118927>,  <33.517597, 38.131462, 49.128014>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.822849, 37.873123, 49.118927> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104480, 0.157988, -0.981898,
		0.637743, 0.746943, 0.188043,
		0.763131, -0.645845, -0.022715,
		34.051788, 37.679371, 49.112114>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.048264, 38.451519, 48.784496>,  <33.517597, 38.131462, 49.128014>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.048264, 38.451519, 48.784496> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128391, 38.059990, 48.767666>,  <34.176468, 37.825073, 48.757568>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.128391, 38.059990, 48.767666>,  <34.048264, 38.451519, 48.784496>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.128391, 38.059990, 48.767666> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034943, 0.035781, -0.998749,
		0.979107, 0.201541, -0.027036,
		0.200321, -0.978827, -0.042076,
		34.188488, 37.766342, 48.755043>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.593616, 38.521587, 48.443821>,  <34.048264, 38.451519, 48.784496>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.593616, 38.521587, 48.443821> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456078, 38.147511, 48.409920>,  <34.373554, 37.923065, 48.389580>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.456078, 38.147511, 48.409920>,  <34.593616, 38.521587, 48.443821>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.456078, 38.147511, 48.409920> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.103352, 0.127401, -0.986452,
		0.933321, -0.330429, -0.140461,
		-0.343848, -0.935193, -0.084756,
		34.352924, 37.866951, 48.384495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996708, 38.222023, 47.826866>,  <34.593616, 38.521587, 48.443821>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996708, 38.222023, 47.826866> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673553, 37.991253, 47.874992>,  <34.479660, 37.852791, 47.903870>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.673553, 37.991253, 47.874992>,  <34.996708, 38.222023, 47.826866>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.673553, 37.991253, 47.874992> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152023, 0.006766, -0.988354,
		0.569391, -0.816769, -0.093172,
		-0.807887, -0.576924, 0.120315,
		34.431187, 37.818176, 47.911087>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.043049, 37.802258, 47.351448>,  <34.996708, 38.222023, 47.826866>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.043049, 37.802258, 47.351448> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659687, 37.732265, 47.441639>,  <34.429668, 37.690269, 47.495754>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.659687, 37.732265, 47.441639>,  <35.043049, 37.802258, 47.351448>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.659687, 37.732265, 47.441639> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.233138, 0.024254, -0.972141,
		0.164638, -0.984273, -0.064040,
		-0.958405, -0.174982, 0.225478,
		34.372166, 37.679771, 47.509281>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.803322, 37.319351, 46.882557>,  <35.043049, 37.802258, 47.351448>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.803322, 37.319351, 46.882557> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475288, 37.514427, 47.002300>,  <34.278469, 37.631474, 47.074146>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.475288, 37.514427, 47.002300>,  <34.803322, 37.319351, 46.882557>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.475288, 37.514427, 47.002300> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400457, -0.115413, -0.909018,
		-0.408770, -0.865354, 0.289948,
		-0.820086, 0.487690, 0.299360,
		34.229263, 37.660736, 47.092110>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.336929, 36.947975, 46.636658>,  <34.803322, 37.319351, 46.882557>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.336929, 36.947975, 46.636658> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091770, 37.249931, 46.730030>,  <33.944675, 37.431107, 46.786053>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<34.091770, 37.249931, 46.730030>,  <34.336929, 36.947975, 46.636658>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.091770, 37.249931, 46.730030> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.454852, -0.095500, -0.885432,
		-0.646116, -0.648855, 0.401897,
		-0.612898, 0.754896, 0.233429,
		33.907902, 37.476398, 46.800060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.625164, 36.684219, 46.658005>,  <34.336929, 36.947975, 46.636658>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.625164, 36.684219, 46.658005> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623230, 37.074894, 46.572159>,  <33.622070, 37.309299, 46.520653>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.623230, 37.074894, 46.572159>,  <33.625164, 36.684219, 46.658005>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.623230, 37.074894, 46.572159> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.478881, -0.190671, -0.856924,
		-0.877867, 0.098630, 0.468639,
		-0.004837, 0.976687, -0.214616,
		33.621780, 37.367901, 46.507774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.943043, 36.695522, 46.410992>,  <33.625164, 36.684219, 46.658005>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.943043, 36.695522, 46.410992> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156326, 37.011116, 46.288887>,  <33.284298, 37.200474, 46.215626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<33.156326, 37.011116, 46.288887>,  <32.943043, 36.695522, 46.410992>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.156326, 37.011116, 46.288887> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389007, -0.091755, -0.916654,
		-0.751237, 0.607520, 0.257996,
		0.533213, 0.788987, -0.305259,
		33.316292, 37.247810, 46.197308>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.516777, 37.033550, 46.065182>,  <32.943043, 36.695522, 46.410992>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.516777, 37.033550, 46.065182> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847755, 37.217476, 45.936245>,  <33.046341, 37.327831, 45.858883>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.847755, 37.217476, 45.936245>,  <32.516777, 37.033550, 46.065182>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.847755, 37.217476, 45.936245> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.373611, 0.022248, -0.927318,
		-0.419223, 0.887736, 0.190201,
		0.827446, 0.459815, -0.322341,
		33.095989, 37.355419, 45.839542>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.324287, 37.656284, 45.561531>,  <32.516777, 37.033550, 46.065182>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.324287, 37.656284, 45.561531> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709618, 37.582253, 45.483807>,  <32.940815, 37.537834, 45.437172>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.709618, 37.582253, 45.483807>,  <32.324287, 37.656284, 45.561531>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.709618, 37.582253, 45.483807> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.195066, 0.014318, -0.980686,
		0.184285, 0.982620, -0.022310,
		0.963322, -0.185078, -0.194314,
		32.998615, 37.526730, 45.425514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.631470, 38.210564, 45.095776>,  <32.324287, 37.656284, 45.561531>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.631470, 38.210564, 45.095776> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844601, 37.876637, 45.040394>,  <32.972481, 37.676281, 45.007164>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<32.844601, 37.876637, 45.040394>,  <32.631470, 38.210564, 45.095776>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.844601, 37.876637, 45.040394> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.035984, 0.141114, -0.989339,
		0.845459, 0.532128, 0.045149,
		0.532826, -0.834821, -0.138455,
		33.004448, 37.626190, 44.998856>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.532585, 36.495201, 27.394939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223537, 36.748436, 27.375963>,  <42.038109, 36.900379, 27.364578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.223537, 36.748436, 27.375963>,  <42.532585, 36.495201, 27.394939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.223537, 36.748436, 27.375963> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.047179, 0.131775, 0.990156,
		0.633110, 0.762779, -0.131681,
		-0.772623, 0.633090, -0.047441,
		41.991749, 36.938362, 27.361731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.630035, 37.093971, 27.782578>,  <42.532585, 36.495201, 27.394939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.630035, 37.093971, 27.782578> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239285, 37.009716, 27.767864>,  <42.004833, 36.959164, 27.759037>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.239285, 37.009716, 27.767864>,  <42.630035, 37.093971, 27.782578>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.239285, 37.009716, 27.767864> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.026478, -0.051540, 0.998320,
		-0.212176, 0.976205, 0.044771,
		-0.976873, -0.210634, -0.036784,
		41.946224, 36.946526, 27.756828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284782, 37.572765, 28.239355>,  <42.630035, 37.093971, 27.782578>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284782, 37.572765, 28.239355> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.045387, 37.255112, 28.197107>,  <41.901749, 37.064518, 28.171759>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.045387, 37.255112, 28.197107>,  <42.284782, 37.572765, 28.239355>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.045387, 37.255112, 28.197107> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095078, -0.201313, 0.974901,
		-0.795468, 0.573427, 0.195989,
		-0.598490, -0.794138, -0.105618,
		41.865841, 37.016869, 28.165422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862976, 37.640999, 28.873337>,  <42.284782, 37.572765, 28.239355>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862976, 37.640999, 28.873337> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824463, 37.270641, 28.727215>,  <41.801353, 37.048428, 28.639542>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.824463, 37.270641, 28.727215>,  <41.862976, 37.640999, 28.873337>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.824463, 37.270641, 28.727215> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.066593, -0.372182, 0.925768,
		-0.993123, 0.064813, 0.097494,
		-0.096287, -0.925894, -0.365307,
		41.795578, 36.992874, 28.617622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.276878, 37.399281, 29.223074>,  <41.862976, 37.640999, 28.873337>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.276878, 37.399281, 29.223074> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486233, 37.078178, 29.108780>,  <41.611847, 36.885517, 29.040203>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.486233, 37.078178, 29.108780>,  <41.276878, 37.399281, 29.223074>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.486233, 37.078178, 29.108780> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.164265, -0.233988, 0.958262,
		-0.836112, -0.548479, 0.009399,
		0.523387, -0.802758, -0.285736,
		41.643250, 36.837353, 29.023060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.078453, 36.903255, 29.742823>,  <41.276878, 37.399281, 29.223074>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.078453, 36.903255, 29.742823> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.418972, 36.768509, 29.581915>,  <41.623283, 36.687660, 29.485371>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.418972, 36.768509, 29.581915>,  <41.078453, 36.903255, 29.742823>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.418972, 36.768509, 29.581915> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.165806, -0.554682, 0.815375,
		-0.497801, -0.760823, -0.416344,
		0.851295, -0.336862, -0.402271,
		41.674358, 36.667450, 29.461233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.127419, 36.215454, 29.978010>,  <41.078453, 36.903255, 29.742823>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.127419, 36.215454, 29.978010> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498611, 36.316277, 29.868235>,  <41.721329, 36.376770, 29.802370>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.498611, 36.316277, 29.868235>,  <41.127419, 36.215454, 29.978010>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.498611, 36.316277, 29.868235> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.355866, -0.381093, 0.853304,
		0.110497, -0.889514, -0.443347,
		0.927981, 0.252059, -0.274438,
		41.777004, 36.391895, 29.785904>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.539520, 35.741577, 30.252802>,  <41.127419, 36.215454, 29.978010>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.539520, 35.741577, 30.252802> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797840, 36.033428, 30.162842>,  <41.952831, 36.208538, 30.108866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.797840, 36.033428, 30.162842>,  <41.539520, 35.741577, 30.252802>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.797840, 36.033428, 30.162842> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557618, -0.249519, 0.791709,
		0.521537, -0.636695, -0.567994,
		0.645803, 0.729629, -0.224899,
		41.991581, 36.252316, 30.095371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.153687, 35.439781, 30.418997>,  <41.539520, 35.741577, 30.252802>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.153687, 35.439781, 30.418997> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237366, 35.830894, 30.413563>,  <42.287575, 36.065563, 30.410301>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.237366, 35.830894, 30.413563>,  <42.153687, 35.439781, 30.418997>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.237366, 35.830894, 30.413563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.571832, -0.111051, 0.812820,
		0.793249, -0.177811, -0.582357,
		0.209199, 0.977779, -0.013587,
		42.300125, 36.124229, 30.409487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.875343, 35.422302, 30.510832>,  <42.153687, 35.439781, 30.418997>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.875343, 35.422302, 30.510832> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768658, 35.799686, 30.589563>,  <42.704647, 36.026119, 30.636803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.768658, 35.799686, 30.589563>,  <42.875343, 35.422302, 30.510832>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.768658, 35.799686, 30.589563> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.677872, 0.038463, 0.734173,
		0.685095, 0.329237, -0.649806,
		-0.266710, 0.943464, 0.196830,
		42.688644, 36.082726, 30.648613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.507999, 35.726429, 30.532242>,  <42.875343, 35.422302, 30.510832>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.507999, 35.726429, 30.532242> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255360, 35.963726, 30.731899>,  <43.103775, 36.106106, 30.851694>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.255360, 35.963726, 30.731899>,  <43.507999, 35.726429, 30.532242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.255360, 35.963726, 30.731899> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.671614, 0.097020, 0.734522,
		0.387325, 0.799154, -0.459709,
		-0.631597, 0.593246, 0.499144,
		43.065880, 36.141701, 30.881643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.816845, 36.341862, 30.778616>,  <43.507999, 35.726429, 30.532242>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.816845, 36.341862, 30.778616> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.488842, 36.345459, 31.007530>,  <43.292042, 36.347618, 31.144878>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.488842, 36.345459, 31.007530>,  <43.816845, 36.341862, 30.778616>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.488842, 36.345459, 31.007530> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529333, 0.392239, 0.752300,
		-0.217708, 0.919819, -0.326397,
		-0.820006, 0.008991, 0.572285,
		43.242840, 36.348156, 31.179216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.846756, 36.931053, 31.154648>,  <43.816845, 36.341862, 30.778616>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.846756, 36.931053, 31.154648> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630974, 36.662674, 31.358145>,  <43.501503, 36.501648, 31.480242>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.630974, 36.662674, 31.358145>,  <43.846756, 36.931053, 31.154648>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.630974, 36.662674, 31.358145> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490390, 0.240801, 0.837575,
		-0.684473, 0.701318, 0.199124,
		-0.539457, -0.670946, 0.508741,
		43.469135, 36.461391, 31.510767>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.655407, 37.277565, 31.812323>,  <43.846756, 36.931053, 31.154648>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.655407, 37.277565, 31.812323> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647018, 36.882702, 31.875664>,  <43.641983, 36.645782, 31.913668>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.647018, 36.882702, 31.875664>,  <43.655407, 37.277565, 31.812323>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.647018, 36.882702, 31.875664> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.558564, 0.119794, 0.820765,
		-0.829196, 0.105666, 0.548879,
		-0.020975, -0.987160, 0.158354,
		43.640724, 36.586555, 31.923170>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.594883, 37.236298, 32.587975>,  <43.655407, 37.277565, 31.812323>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.594883, 37.236298, 32.587975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697380, 36.866810, 32.474072>,  <43.758877, 36.645119, 32.405727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.697380, 36.866810, 32.474072>,  <43.594883, 37.236298, 32.587975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.697380, 36.866810, 32.474072> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.554336, -0.100909, 0.826153,
		-0.791865, -0.369550, 0.486192,
		0.256244, -0.923716, -0.284761,
		43.774254, 36.589695, 32.388641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.402100, 36.722931, 33.203426>,  <43.594883, 37.236298, 32.587975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.402100, 36.722931, 33.203426> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683212, 36.554459, 32.974094>,  <43.851879, 36.453373, 32.836494>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.683212, 36.554459, 32.974094>,  <43.402100, 36.722931, 33.203426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.683212, 36.554459, 32.974094> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508148, -0.266820, 0.818897,
		-0.497883, -0.866839, 0.026509,
		0.702779, -0.421185, -0.573328,
		43.894047, 36.428104, 32.802097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.482311, 36.102383, 33.537663>,  <43.402100, 36.722931, 33.203426>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.482311, 36.102383, 33.537663> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.806335, 36.176712, 33.315212>,  <44.000751, 36.221310, 33.181744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.806335, 36.176712, 33.315212>,  <43.482311, 36.102383, 33.537663>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.806335, 36.176712, 33.315212> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579539, -0.109619, 0.807538,
		0.089095, -0.976450, -0.196488,
		0.810060, 0.185820, -0.556125,
		44.049355, 36.232460, 33.148376>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.903938, 35.445889, 33.475842>,  <43.482311, 36.102383, 33.537663>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.903938, 35.445889, 33.475842> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182076, 35.720959, 33.392315>,  <44.348957, 35.886002, 33.342197>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.182076, 35.720959, 33.392315>,  <43.903938, 35.445889, 33.475842>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.182076, 35.720959, 33.392315> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.459088, -0.201463, 0.865246,
		0.552937, -0.697508, -0.455788,
		0.695341, 0.687673, -0.208821,
		44.390678, 35.927261, 33.329670>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.544559, 35.144230, 33.604736>,  <43.903938, 35.445889, 33.475842>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.544559, 35.144230, 33.604736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625595, 35.535831, 33.613762>,  <44.674217, 35.770794, 33.619179>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.625595, 35.535831, 33.613762>,  <44.544559, 35.144230, 33.604736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.625595, 35.535831, 33.613762> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539710, -0.130852, 0.831620,
		0.817113, -0.156293, -0.554887,
		0.202584, 0.979005, 0.022568,
		44.686371, 35.829533, 33.620533>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.190151, 35.156773, 33.806049>,  <44.544559, 35.144230, 33.604736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.190151, 35.156773, 33.806049> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087875, 35.532894, 33.895893>,  <45.026512, 35.758568, 33.949799>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.087875, 35.532894, 33.895893>,  <45.190151, 35.156773, 33.806049>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.087875, 35.532894, 33.895893> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.493514, -0.072831, 0.866683,
		0.831305, 0.332450, -0.445431,
		-0.255688, 0.940304, 0.224613,
		45.011169, 35.814987, 33.963276>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.753731, 35.513870, 34.012981>,  <45.190151, 35.156773, 33.806049>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.753731, 35.513870, 34.012981> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460644, 35.734085, 34.173000>,  <45.284794, 35.866215, 34.269012>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.460644, 35.734085, 34.173000>,  <45.753731, 35.513870, 34.012981>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.460644, 35.734085, 34.173000> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.501948, 0.040252, 0.863960,
		0.459540, 0.833839, -0.305834,
		-0.732715, 0.550538, 0.400047,
		45.240829, 35.899246, 34.293015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.221741, 35.043407, 33.809891>,  <45.753731, 35.513870, 34.012981>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.221741, 35.043407, 33.809891> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593227, 35.159599, 33.717712>,  <46.816120, 35.229313, 33.662407>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.593227, 35.159599, 33.717712>,  <46.221741, 35.043407, 33.809891>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.593227, 35.159599, 33.717712> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.232175, -0.028990, -0.972242,
		-0.289095, 0.956442, 0.040518,
		0.928719, 0.290478, -0.230443,
		46.871841, 35.246742, 33.648579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.100780, 35.652107, 33.387550>,  <46.221741, 35.043407, 33.809891>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.100780, 35.652107, 33.387550> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.439999, 35.446175, 33.337326>,  <46.643528, 35.322617, 33.307190>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.439999, 35.446175, 33.337326>,  <46.100780, 35.652107, 33.387550>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.439999, 35.446175, 33.337326> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.247970, -0.176126, -0.952623,
		0.468326, 0.839004, -0.277026,
		0.848046, -0.514832, -0.125563,
		46.694412, 35.291725, 33.299656>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.483536, 35.949390, 32.833572>,  <46.100780, 35.652107, 33.387550>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.483536, 35.949390, 32.833572> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587830, 35.564053, 32.858833>,  <46.650406, 35.332851, 32.873989>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.587830, 35.564053, 32.858833>,  <46.483536, 35.949390, 32.833572>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.587830, 35.564053, 32.858833> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.155659, -0.106512, -0.982052,
		0.952780, 0.246219, -0.177724,
		0.260730, -0.963344, 0.063157,
		46.666050, 35.275051, 32.877781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.999065, 35.770233, 32.229679>,  <46.483536, 35.949390, 32.833572>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.999065, 35.770233, 32.229679> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.897408, 35.398258, 32.335987>,  <46.836414, 35.175076, 32.399773>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.897408, 35.398258, 32.335987>,  <46.999065, 35.770233, 32.229679>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.897408, 35.398258, 32.335987> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.331016, -0.174563, -0.927338,
		0.908757, -0.323649, -0.263460,
		-0.254142, -0.929935, 0.265768,
		46.821163, 35.119278, 32.415718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.207851, 35.327263, 31.691587>,  <46.999065, 35.770233, 32.229679>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.207851, 35.327263, 31.691587> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.908863, 35.135624, 31.875656>,  <46.729469, 35.020641, 31.986097>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.908863, 35.135624, 31.875656>,  <47.207851, 35.327263, 31.691587>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.908863, 35.135624, 31.875656> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.419715, -0.196334, -0.886167,
		0.514904, -0.855525, -0.054329,
		-0.747471, -0.479094, 0.460170,
		46.684620, 34.991898, 32.013706>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.066681, 34.728477, 31.296114>,  <47.207851, 35.327263, 31.691587>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.066681, 34.728477, 31.296114> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734131, 34.763962, 31.515547>,  <46.534599, 34.785252, 31.647207>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.734131, 34.763962, 31.515547>,  <47.066681, 34.728477, 31.296114>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.734131, 34.763962, 31.515547> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.534774, -0.396127, -0.746392,
		0.151094, -0.913900, 0.376772,
		-0.831377, 0.088713, 0.548582,
		46.484718, 34.790577, 31.680120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639996, 34.202984, 31.073488>,  <47.066681, 34.728477, 31.296114>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639996, 34.202984, 31.073488> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.363544, 34.388672, 31.295061>,  <46.197674, 34.500084, 31.428005>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<46.363544, 34.388672, 31.295061>,  <46.639996, 34.202984, 31.073488>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.363544, 34.388672, 31.295061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.686982, -0.183890, -0.703022,
		-0.224504, -0.866414, 0.446010,
		-0.691125, 0.464232, 0.553927,
		46.156208, 34.527939, 31.461241>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.108330, 33.743935, 31.058411>,  <46.639996, 34.202984, 31.073488>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.108330, 33.743935, 31.058411> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.930882, 34.088772, 31.156389>,  <45.824413, 34.295673, 31.215178>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.930882, 34.088772, 31.156389>,  <46.108330, 33.743935, 31.058411>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.930882, 34.088772, 31.156389> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.714786, -0.175475, -0.676970,
		-0.540627, -0.475406, 0.694055,
		-0.443625, 0.862089, 0.244947,
		45.797794, 34.347397, 31.229874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.358818, 33.641960, 31.092886>,  <46.108330, 33.743935, 31.058411>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.358818, 33.641960, 31.092886> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418247, 34.033234, 31.034807>,  <45.453903, 34.267998, 30.999960>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<45.418247, 34.033234, 31.034807>,  <45.358818, 33.641960, 31.092886>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.418247, 34.033234, 31.034807> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769081, 0.021994, -0.638773,
		-0.621645, 0.206571, 0.755570,
		0.148570, 0.978184, -0.145197,
		45.462818, 34.326691, 30.991247>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.623421, 33.993172, 31.068024>,  <45.358818, 33.641960, 31.092886>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.623421, 33.993172, 31.068024> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883686, 34.219482, 30.865425>,  <45.039845, 34.355270, 30.743866>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.883686, 34.219482, 30.865425>,  <44.623421, 33.993172, 31.068024>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.883686, 34.219482, 30.865425> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702815, 0.196096, -0.683811,
		-0.287562, 0.800902, 0.525228,
		0.650661, 0.565776, -0.506496,
		45.078884, 34.389214, 30.713476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.236107, 34.500954, 30.886112>,  <44.623421, 33.993172, 31.068024>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.236107, 34.500954, 30.886112> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547840, 34.522202, 30.636372>,  <44.734879, 34.534950, 30.486526>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.547840, 34.522202, 30.636372>,  <44.236107, 34.500954, 30.886112>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.547840, 34.522202, 30.636372> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574568, 0.458150, -0.678211,
		0.250018, 0.887286, 0.387575,
		0.779335, 0.053123, -0.624352,
		44.781639, 34.538139, 30.449066>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.199585, 35.210484, 30.641768>,  <44.236107, 34.500954, 30.886112>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.199585, 35.210484, 30.641768> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394066, 34.974781, 30.383657>,  <44.510754, 34.833359, 30.228790>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.394066, 34.974781, 30.383657>,  <44.199585, 35.210484, 30.641768>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394066, 34.974781, 30.383657> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574345, 0.341040, -0.744191,
		0.658586, 0.732439, -0.172623,
		0.486203, -0.589258, -0.645277,
		44.539928, 34.798004, 30.190075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.959484, 35.436695, 29.976709>,  <44.199585, 35.210484, 30.641768>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.959484, 35.436695, 29.976709> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163769, 35.113800, 29.858360>,  <44.286339, 34.920063, 29.787350>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.163769, 35.113800, 29.858360>,  <43.959484, 35.436695, 29.976709>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.163769, 35.113800, 29.858360> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343772, 0.123697, -0.930871,
		0.788035, 0.577115, -0.214334,
		0.510707, -0.807241, -0.295874,
		44.316982, 34.871628, 29.769598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.392296, 35.671246, 29.378191>,  <43.959484, 35.436695, 29.976709>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.392296, 35.671246, 29.378191> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356804, 35.273659, 29.352402>,  <44.335510, 35.035107, 29.336927>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.356804, 35.273659, 29.352402>,  <44.392296, 35.671246, 29.378191>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.356804, 35.273659, 29.352402> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.081730, 0.071777, -0.994066,
		0.992697, -0.082931, -0.087605,
		-0.088727, -0.993967, -0.064475,
		44.330185, 34.975468, 29.333059>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.788849, 35.439793, 28.675163>,  <44.392296, 35.671246, 29.378191>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.788849, 35.439793, 28.675163> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542553, 35.145641, 28.788355>,  <44.394775, 34.969151, 28.856270>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.542553, 35.145641, 28.788355>,  <44.788849, 35.439793, 28.675163>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.542553, 35.145641, 28.788355> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.306292, -0.107506, -0.945848,
		0.725979, -0.669074, -0.159045,
		-0.615744, -0.735380, 0.282979,
		44.357830, 34.925026, 28.873249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.996227, 34.794849, 28.352888>,  <44.788849, 35.439793, 28.675163>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.996227, 34.794849, 28.352888> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604820, 34.824821, 28.429710>,  <44.369976, 34.842804, 28.475803>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.604820, 34.824821, 28.429710>,  <44.996227, 34.794849, 28.352888>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.604820, 34.824821, 28.429710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200629, -0.131832, -0.970757,
		-0.047414, -0.988437, 0.144032,
		-0.978519, 0.074924, 0.192058,
		44.311264, 34.847301, 28.487328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700581, 34.372681, 27.833496>,  <44.996227, 34.794849, 28.352888>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700581, 34.372681, 27.833496> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399624, 34.576378, 28.000622>,  <44.219048, 34.698597, 28.100897>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<44.399624, 34.576378, 28.000622>,  <44.700581, 34.372681, 27.833496>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.399624, 34.576378, 28.000622> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.370560, 0.197188, -0.907636,
		-0.544600, -0.837725, 0.040344,
		-0.752394, 0.509248, 0.417816,
		44.173904, 34.729153, 28.125967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.074722, 34.103695, 27.561943>,  <44.700581, 34.372681, 27.833496>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.074722, 34.103695, 27.561943> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973953, 34.476696, 27.665455>,  <43.913490, 34.700497, 27.727562>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.973953, 34.476696, 27.665455>,  <44.074722, 34.103695, 27.561943>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973953, 34.476696, 27.665455> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369713, 0.154382, -0.916231,
		-0.894341, -0.326497, 0.305866,
		-0.251927, 0.932505, 0.258780,
		43.898376, 34.756447, 27.743090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.429203, 34.177109, 27.336546>,  <44.074722, 34.103695, 27.561943>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.429203, 34.177109, 27.336546> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.537735, 34.556503, 27.401972>,  <43.602856, 34.784142, 27.441227>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.537735, 34.556503, 27.401972>,  <43.429203, 34.177109, 27.336546>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.537735, 34.556503, 27.401972> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.457671, 0.276640, -0.844990,
		-0.846709, 0.154415, 0.509156,
		0.271333, 0.948486, 0.163563,
		43.619133, 34.841049, 27.451040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.828175, 34.583504, 27.251772>,  <43.429203, 34.177109, 27.336546>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.828175, 34.583504, 27.251772> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126575, 34.847683, 27.217640>,  <43.305618, 35.006191, 27.197161>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<43.126575, 34.847683, 27.217640>,  <42.828175, 34.583504, 27.251772>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.126575, 34.847683, 27.217640> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.352009, 0.282308, -0.892408,
		-0.565304, 0.695776, 0.443088,
		0.746004, 0.660452, -0.085330,
		43.350376, 35.045818, 27.192041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.512074, 35.163193, 26.954973>,  <42.828175, 34.583504, 27.251772>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.512074, 35.163193, 26.954973> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905449, 35.192284, 26.888577>,  <43.141476, 35.209740, 26.848738>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.905449, 35.192284, 26.888577>,  <42.512074, 35.163193, 26.954973>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.905449, 35.192284, 26.888577> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178481, 0.229886, -0.956712,
		-0.031423, 0.970496, 0.239061,
		0.983441, 0.072731, -0.165992,
		43.200481, 35.214104, 26.838779>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<35.702869, 39.360962, 39.967937> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777248, 38.968006, 39.975155>,  <35.821877, 38.732231, 39.979485>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.777248, 38.968006, 39.975155>,  <35.702869, 39.360962, 39.967937>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.777248, 38.968006, 39.975155> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409612, 0.060814, -0.910230,
		0.893107, 0.176649, 0.413709,
		0.185951, -0.982393, 0.018044,
		35.833035, 38.673286, 39.980568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.390804, 39.315529, 39.585487>,  <35.702869, 39.360962, 39.967937>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.390804, 39.315529, 39.585487> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246029, 38.943024, 39.602245>,  <36.159164, 38.719521, 39.612301>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246029, 38.943024, 39.602245>,  <36.390804, 39.315529, 39.585487>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.246029, 38.943024, 39.602245> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.414484, -0.201022, -0.887577,
		0.834988, -0.303882, 0.458750,
		-0.361937, -0.931260, 0.041896,
		36.137447, 38.663647, 39.614815>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.003139, 38.828598, 39.333035>,  <36.390804, 39.315529, 39.585487>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.003139, 38.828598, 39.333035> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663261, 38.620178, 39.300720>,  <36.459335, 38.495125, 39.281334>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.663261, 38.620178, 39.300720>,  <37.003139, 38.828598, 39.333035>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.663261, 38.620178, 39.300720> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.350650, -0.443977, -0.824578,
		0.393779, -0.728967, 0.559951,
		-0.849696, -0.521048, -0.080783,
		36.408352, 38.463863, 39.276485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.225204, 38.192284, 39.127636>,  <37.003139, 38.828598, 39.333035>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.225204, 38.192284, 39.127636> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841534, 38.219856, 39.017925>,  <36.611332, 38.236401, 38.952099>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.841534, 38.219856, 39.017925>,  <37.225204, 38.192284, 39.127636>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.841534, 38.219856, 39.017925> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218994, -0.432640, -0.874565,
		-0.178951, -0.898928, 0.399882,
		-0.959176, 0.068933, -0.274281,
		36.553780, 38.240536, 38.935642>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.017315, 37.558411, 38.788174>,  <37.225204, 38.192284, 39.127636>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.017315, 37.558411, 38.788174> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732166, 37.809265, 38.662624>,  <36.561077, 37.959778, 38.587296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.732166, 37.809265, 38.662624>,  <37.017315, 37.558411, 38.788174>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.732166, 37.809265, 38.662624> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.053618, -0.397506, -0.916032,
		-0.699246, -0.669839, 0.249743,
		-0.712868, 0.627141, -0.313870,
		36.518307, 37.997406, 38.568462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.533001, 37.119427, 38.427704>,  <37.017315, 37.558411, 38.788174>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.533001, 37.119427, 38.427704> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482475, 37.497406, 38.306961>,  <36.452160, 37.724194, 38.234516>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.482475, 37.497406, 38.306961>,  <36.533001, 37.119427, 38.427704>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.482475, 37.497406, 38.306961> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.062682, -0.296079, -0.953105,
		-0.990008, -0.139308, -0.021834,
		-0.126311, 0.944950, -0.301853,
		36.444584, 37.780891, 38.216404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.878654, 37.091152, 38.014259>,  <36.533001, 37.119427, 38.427704>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.878654, 37.091152, 38.014259> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091061, 37.409271, 37.897278>,  <36.218502, 37.600143, 37.827087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.091061, 37.409271, 37.897278>,  <35.878654, 37.091152, 38.014259>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.091061, 37.409271, 37.897278> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.076198, -0.298917, -0.951232,
		-0.843931, 0.527400, -0.098129,
		0.531012, 0.795297, -0.292452,
		36.250362, 37.647861, 37.809544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.555660, 37.274200, 37.394566>,  <35.878654, 37.091152, 38.014259>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.555660, 37.274200, 37.394566> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877613, 37.507900, 37.352955>,  <36.070786, 37.648121, 37.327988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.877613, 37.507900, 37.352955>,  <35.555660, 37.274200, 37.394566>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.877613, 37.507900, 37.352955> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.034134, -0.129434, -0.991000,
		-0.592453, 0.801189, -0.084237,
		0.804882, 0.584245, -0.104031,
		36.119076, 37.683174, 37.321747>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.411388, 37.792263, 36.860882>,  <35.555660, 37.274200, 37.394566>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.411388, 37.792263, 36.860882> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807243, 37.748039, 36.897522>,  <36.044758, 37.721504, 36.919506>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.807243, 37.748039, 36.897522>,  <35.411388, 37.792263, 36.860882>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<35.807243, 37.748039, 36.897522> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.075559, -0.141484, -0.987053,
		0.122088, 0.983747, -0.131664,
		0.989639, -0.110559, 0.091605,
		36.104134, 37.714870, 36.925003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785286, 38.235027, 36.349407>,  <35.411388, 37.792263, 36.860882>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785286, 38.235027, 36.349407> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045582, 37.946255, 36.443512>,  <36.201759, 37.772991, 36.499973>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.045582, 37.946255, 36.443512>,  <35.785286, 38.235027, 36.349407>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.045582, 37.946255, 36.443512> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.152788, -0.179002, -0.971913,
		0.743771, 0.668406, -0.006181,
		0.650739, -0.721936, 0.235261,
		36.240803, 37.729675, 36.514091>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.357906, 38.288876, 35.880020>,  <35.785286, 38.235027, 36.349407>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.357906, 38.288876, 35.880020> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407299, 37.922192, 36.032021>,  <36.436935, 37.702183, 36.123222>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.407299, 37.922192, 36.032021>,  <36.357906, 38.288876, 35.880020>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.407299, 37.922192, 36.032021> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155957, -0.360248, -0.919727,
		0.980015, 0.172831, 0.098484,
		0.123479, -0.916706, 0.380003,
		36.444344, 37.647179, 36.146023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.019520, 38.101704, 35.718517>,  <36.357906, 38.288876, 35.880020>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.019520, 38.101704, 35.718517> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807957, 37.763149, 35.743473>,  <36.681019, 37.560017, 35.758446>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807957, 37.763149, 35.743473>,  <37.019520, 38.101704, 35.718517>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.807957, 37.763149, 35.743473> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304436, -0.257837, -0.916973,
		0.792195, -0.466002, 0.394041,
		-0.528910, -0.846382, 0.062390,
		36.649284, 37.509235, 35.762192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.442810, 37.499397, 35.592484>,  <37.019520, 38.101704, 35.718517>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.442810, 37.499397, 35.592484> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065556, 37.458786, 35.465874>,  <36.839203, 37.434418, 35.389908>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.065556, 37.458786, 35.465874>,  <37.442810, 37.499397, 35.592484>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.065556, 37.458786, 35.465874> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326597, -0.105673, -0.939238,
		0.061912, -0.989204, 0.132823,
		-0.943133, -0.101530, -0.316528,
		36.782616, 37.428326, 35.370914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.436100, 36.871010, 35.243736>,  <37.442810, 37.499397, 35.592484>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.436100, 36.871010, 35.243736> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125542, 37.087326, 35.114273>,  <36.939205, 37.217117, 35.036594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.125542, 37.087326, 35.114273>,  <37.436100, 36.871010, 35.243736>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.125542, 37.087326, 35.114273> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.250233, -0.206815, -0.945839,
		-0.578438, -0.815336, 0.025247,
		-0.776397, 0.540791, -0.323654,
		36.892624, 37.249565, 35.017178>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.003330, 36.642288, 34.811264>,  <37.436100, 36.871010, 35.243736>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.003330, 36.642288, 34.811264> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274330, 36.372868, 34.929466>,  <38.436932, 36.211216, 35.000385>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.274330, 36.372868, 34.929466>,  <38.003330, 36.642288, 34.811264>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.274330, 36.372868, 34.929466> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.265691, 0.150519, 0.952236,
		-0.685860, -0.723650, -0.076981,
		0.677499, -0.673554, 0.295502,
		38.477581, 36.170803, 35.018116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.727501, 36.017380, 35.317570>,  <38.003330, 36.642288, 34.811264>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.727501, 36.017380, 35.317570> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123623, 36.039982, 35.368324>,  <38.361298, 36.053543, 35.398777>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123623, 36.039982, 35.368324>,  <37.727501, 36.017380, 35.317570>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.123623, 36.039982, 35.368324> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.126940, -0.002720, 0.991907,
		0.056389, -0.998399, 0.004479,
		0.990306, 0.056502, 0.126890,
		38.420715, 36.056934, 35.406391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.928150, 35.549171, 35.853260>,  <37.727501, 36.017380, 35.317570>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.928150, 35.549171, 35.853260> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246773, 35.790997, 35.854050>,  <38.437946, 35.936092, 35.854523>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.246773, 35.790997, 35.854050>,  <37.928150, 35.549171, 35.853260>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246773, 35.790997, 35.854050> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085644, -0.116070, 0.989542,
		0.598470, -0.788055, -0.144234,
		0.796554, 0.604564, 0.001972,
		38.485741, 35.972366, 35.854641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.403458, 35.225456, 36.342373>,  <37.928150, 35.549171, 35.853260>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.403458, 35.225456, 36.342373> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526382, 35.603123, 36.294849>,  <38.600140, 35.829723, 36.266335>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526382, 35.603123, 36.294849>,  <38.403458, 35.225456, 36.342373>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.526382, 35.603123, 36.294849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.139244, 0.078895, 0.987110,
		0.941365, -0.319898, -0.107223,
		0.307315, 0.944162, -0.118813,
		38.618576, 35.886372, 36.259205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.125793, 35.306168, 36.673706>,  <38.403458, 35.225456, 36.342373>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.125793, 35.306168, 36.673706> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963982, 35.670559, 36.641541>,  <38.866894, 35.889194, 36.622242>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.963982, 35.670559, 36.641541>,  <39.125793, 35.306168, 36.673706>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.963982, 35.670559, 36.641541> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198220, 0.173184, 0.964736,
		0.892783, 0.374328, -0.250633,
		-0.404533, 0.910981, -0.080417,
		38.842621, 35.943851, 36.617416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.482155, 35.513924, 37.201229>,  <39.125793, 35.306168, 36.673706>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.482155, 35.513924, 37.201229> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210407, 35.792732, 37.109467>,  <39.047359, 35.960018, 37.054409>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.210407, 35.792732, 37.109467>,  <39.482155, 35.513924, 37.201229>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.210407, 35.792732, 37.109467> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.144654, 0.433702, 0.889369,
		0.719400, 0.571023, -0.395469,
		-0.679366, 0.697019, -0.229405,
		39.006596, 36.001839, 37.040646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.861561, 36.177200, 37.328232>,  <39.482155, 35.513924, 37.201229>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.861561, 36.177200, 37.328232> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462681, 36.196804, 37.350849>,  <39.223354, 36.208565, 37.364418>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.462681, 36.196804, 37.350849>,  <39.861561, 36.177200, 37.328232>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.462681, 36.196804, 37.350849> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.070117, 0.348123, 0.934823,
		0.026131, 0.936167, -0.350584,
		-0.997197, 0.049009, 0.056544,
		39.163521, 36.211506, 37.367813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.752571, 36.763790, 37.700668>,  <39.861561, 36.177200, 37.328232>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.752571, 36.763790, 37.700668> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403954, 36.575314, 37.754910>,  <39.194782, 36.462227, 37.787457>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.403954, 36.575314, 37.754910>,  <39.752571, 36.763790, 37.700668>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.403954, 36.575314, 37.754910> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030807, 0.328647, 0.943950,
		-0.489348, 0.818517, -0.300947,
		-0.871544, -0.471191, 0.135606,
		39.142490, 36.433956, 37.795593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.361347, 37.254467, 38.175842>,  <39.752571, 36.763790, 37.700668>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.361347, 37.254467, 38.175842> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192394, 36.892342, 38.193760>,  <39.091022, 36.675068, 38.204510>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.192394, 36.892342, 38.193760>,  <39.361347, 37.254467, 38.175842>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.192394, 36.892342, 38.193760> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208334, 0.145063, 0.967240,
		-0.882150, 0.399213, -0.249879,
		-0.422383, -0.905309, 0.044798,
		39.065678, 36.620750, 38.207199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.957405, 37.333405, 38.799080>,  <39.361347, 37.254467, 38.175842>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.957405, 37.333405, 38.799080> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960411, 36.937939, 38.739101>,  <38.962215, 36.700661, 38.703114>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.960411, 36.937939, 38.739101>,  <38.957405, 37.333405, 38.799080>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960411, 36.937939, 38.739101> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000712, -0.149954, 0.988693,
		-0.999972, -0.007319, -0.001830,
		0.007510, -0.988666, -0.149945,
		38.962666, 36.641338, 38.694118>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.280132, 37.053543, 39.125237>,  <38.957405, 37.333405, 38.799080>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.280132, 37.053543, 39.125237> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538269, 36.748981, 39.100609>,  <38.693153, 36.566246, 39.085835>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.538269, 36.748981, 39.100609>,  <38.280132, 37.053543, 39.125237>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.538269, 36.748981, 39.100609> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122317, -0.182554, 0.975557,
		-0.754034, -0.622042, -0.210944,
		0.645346, -0.761405, -0.061566,
		38.731873, 36.520561, 39.082138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.890137, 36.459736, 39.411068>,  <38.280132, 37.053543, 39.125237>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.890137, 36.459736, 39.411068> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277428, 36.364182, 39.440662>,  <38.509800, 36.306850, 39.458420>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.277428, 36.364182, 39.440662>,  <37.890137, 36.459736, 39.411068>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.277428, 36.364182, 39.440662> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.134196, -0.246648, 0.959769,
		-0.211020, -0.939202, -0.270868,
		0.968226, -0.238880, 0.073990,
		38.567894, 36.292515, 39.462860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.949730, 35.822033, 39.808300>,  <37.890137, 36.459736, 39.411068>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.949730, 35.822033, 39.808300> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297375, 36.018505, 39.831566>,  <38.505962, 36.136387, 39.845528>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.297375, 36.018505, 39.831566>,  <37.949730, 35.822033, 39.808300>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.297375, 36.018505, 39.831566> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000562, -0.116623, 0.993176,
		0.494614, -0.863214, -0.101082,
		0.869112, 0.491182, 0.058168,
		38.558109, 36.165859, 39.849018>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.239208, 35.574738, 40.342751>,  <37.949730, 35.822033, 39.808300>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.239208, 35.574738, 40.342751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471207, 35.897579, 40.298611>,  <38.610405, 36.091286, 40.272125>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.471207, 35.897579, 40.298611>,  <38.239208, 35.574738, 40.342751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.471207, 35.897579, 40.298611> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.079772, 0.078543, 0.993714,
		0.810702, -0.585156, -0.018830,
		0.579999, 0.807108, -0.110354,
		38.645206, 36.139713, 40.265503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.687164, 35.085579, 40.258678>,  <38.239208, 35.574738, 40.342751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.687164, 35.085579, 40.258678> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714638, 34.688206, 40.295284>,  <38.731121, 34.449783, 40.317249>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.714638, 34.688206, 40.295284>,  <38.687164, 35.085579, 40.258678>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.714638, 34.688206, 40.295284> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.301842, -0.108126, -0.947207,
		0.950881, 0.037436, -0.307286,
		0.068686, -0.993432, 0.091516,
		38.735245, 34.390175, 40.322739>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.118614, 34.891556, 39.755928>,  <38.687164, 35.085579, 40.258678>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.118614, 34.891556, 39.755928> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920673, 34.559280, 39.857975>,  <38.801910, 34.359917, 39.919205>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.920673, 34.559280, 39.857975>,  <39.118614, 34.891556, 39.755928>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.920673, 34.559280, 39.857975> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251646, -0.144018, -0.957044,
		0.831743, -0.537794, -0.137771,
		-0.494851, -0.830684, 0.255120,
		38.772217, 34.310074, 39.934509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.184593, 34.556000, 39.031456>,  <39.118614, 34.891556, 39.755928>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.184593, 34.556000, 39.031456> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928211, 34.361526, 39.269043>,  <38.774380, 34.244843, 39.411594>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.928211, 34.361526, 39.269043>,  <39.184593, 34.556000, 39.031456>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.928211, 34.361526, 39.269043> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546619, -0.254137, -0.797886,
		0.538871, -0.836084, -0.102868,
		-0.640957, -0.486188, 0.593966,
		38.735924, 34.215672, 39.447231>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.093300, 33.880444, 38.798370>,  <39.184593, 34.556000, 39.031456>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.093300, 33.880444, 38.798370> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758308, 33.969685, 38.997913>,  <38.557312, 34.023228, 39.117638>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.758308, 33.969685, 38.997913>,  <39.093300, 33.880444, 38.798370>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.758308, 33.969685, 38.997913> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.545841, -0.385364, -0.744011,
		0.026252, -0.895389, 0.444511,
		-0.837477, 0.223100, 0.498857,
		38.507065, 34.036613, 39.147572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.708744, 33.202396, 38.867867>,  <39.093300, 33.880444, 38.798370>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.708744, 33.202396, 38.867867> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466572, 33.517460, 38.913567>,  <38.321270, 33.706497, 38.940987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.466572, 33.517460, 38.913567>,  <38.708744, 33.202396, 38.867867>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.466572, 33.517460, 38.913567> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555285, -0.315180, -0.769623,
		-0.570188, -0.529395, 0.628193,
		-0.605429, 0.787656, 0.114253,
		38.284943, 33.753757, 38.947842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.007774, 32.938332, 38.868923>,  <38.708744, 33.202396, 38.867867>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.007774, 32.938332, 38.868923> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914585, 33.321827, 38.803753>,  <37.858673, 33.551926, 38.764652>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.914585, 33.321827, 38.803753>,  <38.007774, 32.938332, 38.868923>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.914585, 33.321827, 38.803753> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.769067, -0.284173, -0.572522,
		-0.595198, -0.008083, 0.803539,
		-0.232972, 0.958739, -0.162923,
		37.844692, 33.609447, 38.754875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.241962, 33.019253, 38.935318>,  <38.007774, 32.938332, 38.868923>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.241962, 33.019253, 38.935318> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344673, 33.342552, 38.723354>,  <37.406300, 33.536533, 38.596176>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.344673, 33.342552, 38.723354>,  <37.241962, 33.019253, 38.935318>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.344673, 33.342552, 38.723354> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646467, -0.263938, -0.715833,
		-0.718434, 0.526374, 0.454734,
		0.256775, 0.808250, -0.529905,
		37.421707, 33.585026, 38.564384>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.634251, 33.550106, 38.916492>,  <37.241962, 33.019253, 38.935318>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.634251, 33.550106, 38.916492> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876297, 33.601852, 38.602272>,  <37.021526, 33.632900, 38.413738>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.876297, 33.601852, 38.602272>,  <36.634251, 33.550106, 38.916492>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.876297, 33.601852, 38.602272> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.764838, -0.179484, -0.618716,
		-0.221034, 0.975218, -0.009668,
		0.605118, 0.129363, -0.785555,
		37.057831, 33.640663, 38.366604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.227081, 33.890778, 38.384438>,  <36.634251, 33.550106, 38.916492>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.227081, 33.890778, 38.384438> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538486, 33.767078, 38.165977>,  <36.725330, 33.692860, 38.034901>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.538486, 33.767078, 38.165977>,  <36.227081, 33.890778, 38.384438>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538486, 33.767078, 38.165977> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.589207, -0.060342, -0.805726,
		0.216210, 0.949067, -0.229185,
		0.778517, -0.309244, -0.546150,
		36.772041, 33.674305, 38.002132>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.108654, 34.166622, 37.829269>,  <36.227081, 33.890778, 38.384438>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.108654, 34.166622, 37.829269> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358765, 33.864647, 37.750172>,  <36.508831, 33.683460, 37.702713>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.358765, 33.864647, 37.750172>,  <36.108654, 34.166622, 37.829269>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.358765, 33.864647, 37.750172> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.510957, -0.204501, -0.834926,
		0.589878, 0.623096, -0.513610,
		0.625273, -0.754938, -0.197744,
		36.546345, 33.638165, 37.690849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.257839, 34.210709, 37.081722>,  <36.108654, 34.166622, 37.829269>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.257839, 34.210709, 37.081722> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296265, 33.841137, 37.229843>,  <36.319321, 33.619392, 37.318714>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.296265, 33.841137, 37.229843>,  <36.257839, 34.210709, 37.081722>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.296265, 33.841137, 37.229843> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592610, -0.351991, -0.724510,
		0.799740, -0.149843, -0.581346,
		0.096066, -0.923932, 0.370300,
		36.325085, 33.563957, 37.340935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.619049, 33.702000, 36.559101>,  <36.257839, 34.210709, 37.081722>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.619049, 33.702000, 36.559101> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371201, 33.506035, 36.804394>,  <36.222492, 33.388454, 36.951569>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.371201, 33.506035, 36.804394>,  <36.619049, 33.702000, 36.559101>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<36.371201, 33.506035, 36.804394> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555216, -0.278672, -0.783631,
		0.554805, -0.826029, -0.099340,
		-0.619619, -0.489917, 0.613233,
		36.185314, 33.359058, 36.988365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.301716, 35.389687, 43.671139> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093468, 35.054203, 43.735039>,  <38.968517, 34.852913, 43.773376>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.093468, 35.054203, 43.735039>,  <39.301716, 35.389687, 43.671139>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.093468, 35.054203, 43.735039> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.322675, -0.366514, -0.872667,
		0.790463, -0.402785, 0.461446,
		-0.520623, -0.838709, 0.159747,
		38.937283, 34.802589, 43.782963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.763298, 34.898510, 43.489811>,  <39.301716, 35.389687, 43.671139>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.763298, 34.898510, 43.489811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404343, 34.722878, 43.472393>,  <39.188969, 34.617496, 43.461941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.404343, 34.722878, 43.472393>,  <39.763298, 34.898510, 43.489811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.404343, 34.722878, 43.472393> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.238305, -0.399233, -0.885338,
		0.371352, -0.804871, 0.462903,
		-0.897390, -0.439084, -0.043549,
		39.135124, 34.591152, 43.459328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.927151, 34.192314, 43.140797>,  <39.763298, 34.898510, 43.489811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.927151, 34.192314, 43.140797> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530388, 34.243095, 43.141273>,  <39.292332, 34.273563, 43.141560>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.530388, 34.243095, 43.141273>,  <39.927151, 34.192314, 43.140797>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.530388, 34.243095, 43.141273> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064903, -0.498992, -0.864173,
		-0.109120, -0.857257, 0.503194,
		-0.991908, 0.126957, 0.001189,
		39.232815, 34.281181, 43.141628>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.610081, 33.478699, 43.037762>,  <39.927151, 34.192314, 43.140797>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.610081, 33.478699, 43.037762> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365444, 33.770538, 42.915359>,  <39.218662, 33.945644, 42.841919>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.365444, 33.770538, 42.915359>,  <39.610081, 33.478699, 43.037762>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.365444, 33.770538, 42.915359> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.079059, -0.441195, -0.893922,
		-0.787215, -0.522520, 0.327512,
		-0.611589, 0.729602, -0.306006,
		39.181969, 33.989418, 42.823559>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.198410, 33.162663, 42.503227>,  <39.610081, 33.478699, 43.037762>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.198410, 33.162663, 42.503227> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.136387, 33.553902, 42.447670>,  <39.099174, 33.788643, 42.414337>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.136387, 33.553902, 42.447670>,  <39.198410, 33.162663, 42.503227>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.136387, 33.553902, 42.447670> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113682, -0.157323, -0.980982,
		-0.981343, -0.136319, 0.135586,
		-0.155057, 0.978093, -0.138891,
		39.089870, 33.847328, 42.406002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.696846, 33.183022, 42.016811>,  <39.198410, 33.162663, 42.503227>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.696846, 33.183022, 42.016811> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857315, 33.548199, 41.986893>,  <38.953594, 33.767307, 41.968941>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.857315, 33.548199, 41.986893>,  <38.696846, 33.183022, 42.016811>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.857315, 33.548199, 41.986893> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.132281, -0.023056, -0.990944,
		-0.906402, 0.407429, 0.111516,
		0.401169, 0.912946, -0.074793,
		38.977665, 33.822083, 41.964455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.171417, 33.599834, 41.618881>,  <38.696846, 33.183022, 42.016811>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.171417, 33.599834, 41.618881> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518871, 33.795124, 41.585129>,  <38.727345, 33.912296, 41.564877>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.518871, 33.795124, 41.585129>,  <38.171417, 33.599834, 41.618881>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.518871, 33.795124, 41.585129> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109235, 0.022593, -0.993759,
		-0.483268, 0.872428, 0.072956,
		0.868631, 0.488221, -0.084381,
		38.779461, 33.941589, 41.559814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.074165, 34.195198, 41.270069>,  <38.171417, 33.599834, 41.618881>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.074165, 34.195198, 41.270069> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465607, 34.126881, 41.224186>,  <38.700474, 34.085892, 41.196655>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.465607, 34.126881, 41.224186>,  <38.074165, 34.195198, 41.270069>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.465607, 34.126881, 41.224186> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.089182, 0.150315, -0.984608,
		0.185406, 0.973774, 0.131868,
		0.978607, -0.170792, -0.114713,
		38.759190, 34.075642, 41.189774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.313385, 34.850365, 41.018444>,  <38.074165, 34.195198, 41.270069>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.313385, 34.850365, 41.018444> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519512, 34.530033, 40.896381>,  <38.643188, 34.337833, 40.823143>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.519512, 34.530033, 40.896381>,  <38.313385, 34.850365, 41.018444>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.519512, 34.530033, 40.896381> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.031400, 0.338192, -0.940553,
		0.856424, 0.494266, 0.149130,
		0.515318, -0.800829, -0.305155,
		38.674107, 34.289783, 40.804836>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.838921, 35.518593, 40.952904>,  <38.313385, 34.850365, 41.018444>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.838921, 35.518593, 40.952904> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.815926, 35.907841, 40.863708>,  <38.802128, 36.141392, 40.810192>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.815926, 35.907841, 40.863708>,  <38.838921, 35.518593, 40.952904>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.815926, 35.907841, 40.863708> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.087443, 0.217593, 0.972115,
		0.994510, 0.075381, 0.072584,
		-0.057486, 0.973125, -0.222990,
		38.798679, 36.199780, 40.796810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.269455, 35.787136, 41.426506>,  <38.838921, 35.518593, 40.952904>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.269455, 35.787136, 41.426506> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058170, 36.101650, 41.298290>,  <38.931400, 36.290359, 41.221359>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.058170, 36.101650, 41.298290>,  <39.269455, 35.787136, 41.426506>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.058170, 36.101650, 41.298290> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.135168, 0.450555, 0.882457,
		0.838284, 0.422799, -0.344270,
		-0.528214, 0.786283, -0.320544,
		38.899708, 36.337536, 41.202126>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.622231, 36.492222, 41.703060>,  <39.269455, 35.787136, 41.426506>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.622231, 36.492222, 41.703060> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238174, 36.567547, 41.620441>,  <39.007740, 36.612743, 41.570869>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.238174, 36.567547, 41.620441>,  <39.622231, 36.492222, 41.703060>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.238174, 36.567547, 41.620441> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.073904, 0.541632, 0.837361,
		0.269562, 0.819251, -0.506127,
		-0.960143, 0.188316, -0.206550,
		38.950130, 36.624043, 41.558475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.548611, 37.326103, 41.646862>,  <39.622231, 36.492222, 41.703060>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.548611, 37.326103, 41.646862> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202263, 37.137890, 41.714836>,  <38.994453, 37.024963, 41.755619>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.202263, 37.137890, 41.714836>,  <39.548611, 37.326103, 41.646862>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.202263, 37.137890, 41.714836> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.214197, 0.655651, 0.724045,
		-0.452101, 0.590528, -0.668492,
		-0.865866, -0.470530, 0.169931,
		38.942505, 36.996731, 41.765816>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.160973, 37.871460, 41.713959>,  <39.548611, 37.326103, 41.646862>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.160973, 37.871460, 41.713959> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954723, 37.574883, 41.885723>,  <38.830975, 37.396938, 41.988781>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.954723, 37.574883, 41.885723>,  <39.160973, 37.871460, 41.713959>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954723, 37.574883, 41.885723> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070977, 0.536413, 0.840965,
		-0.853869, 0.403145, -0.329213,
		-0.515626, -0.741441, 0.429413,
		38.800037, 37.352451, 42.014545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.519653, 38.191978, 41.798061>,  <39.160973, 37.871460, 41.713959>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.519653, 38.191978, 41.798061> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530113, 37.884708, 42.053944>,  <38.536388, 37.700348, 42.207474>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.530113, 37.884708, 42.053944>,  <38.519653, 38.191978, 41.798061>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.530113, 37.884708, 42.053944> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287046, 0.607204, 0.740883,
		-0.957560, -0.203000, -0.204622,
		0.026151, -0.768176, 0.639705,
		38.537960, 37.654255, 42.245853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.875134, 38.143650, 42.110535>,  <38.519653, 38.191978, 41.798061>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.875134, 38.143650, 42.110535> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135948, 37.969013, 42.358482>,  <38.292435, 37.864231, 42.507252>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.135948, 37.969013, 42.358482>,  <37.875134, 38.143650, 42.110535>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135948, 37.969013, 42.358482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.385134, 0.513513, 0.766796,
		-0.653088, -0.738711, 0.166683,
		0.652034, -0.436590, 0.619872,
		38.331558, 37.838036, 42.544445>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.478710, 38.038307, 42.770775>,  <37.875134, 38.143650, 42.110535>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.478710, 38.038307, 42.770775> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.858501, 37.998009, 42.889664>,  <38.086376, 37.973831, 42.960995>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.858501, 37.998009, 42.889664>,  <37.478710, 38.038307, 42.770775>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858501, 37.998009, 42.889664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.229752, 0.422008, 0.876997,
		-0.213782, -0.900977, 0.377541,
		0.949479, -0.100745, 0.297219,
		38.143345, 37.967785, 42.978828>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.424633, 37.609055, 43.384308>,  <37.478710, 38.038307, 42.770775>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.424633, 37.609055, 43.384308> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778542, 37.795456, 43.382748>,  <37.990887, 37.907299, 43.381809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.778542, 37.795456, 43.382748>,  <37.424633, 37.609055, 43.384308>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.778542, 37.795456, 43.382748> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149749, 0.292229, 0.944551,
		0.441311, -0.835127, 0.328341,
		0.884771, 0.466009, -0.003905,
		38.043972, 37.935257, 43.381577>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.756130, 37.442699, 44.060421>,  <37.424633, 37.609055, 43.384308>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.756130, 37.442699, 44.060421> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.928276, 37.774849, 43.918850>,  <38.031563, 37.974136, 43.833908>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.928276, 37.774849, 43.918850>,  <37.756130, 37.442699, 44.060421>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.928276, 37.774849, 43.918850> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.064713, 0.419475, 0.905457,
		0.900332, -0.366773, 0.234263,
		0.430365, 0.830372, -0.353932,
		38.057384, 38.023960, 43.812672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.101414, 37.638504, 44.659973>,  <37.756130, 37.442699, 44.060421>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.101414, 37.638504, 44.659973> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069836, 37.956787, 44.419765>,  <38.050888, 38.147755, 44.275642>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.069836, 37.956787, 44.419765>,  <38.101414, 37.638504, 44.659973>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.069836, 37.956787, 44.419765> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.150026, 0.586056, 0.796260,
		0.985525, 0.152956, 0.073108,
		-0.078947, 0.795703, -0.600520,
		38.046150, 38.195499, 44.239609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.526245, 38.179829, 45.119102>,  <38.101414, 37.638504, 44.659973>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.526245, 38.179829, 45.119102> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.303188, 38.377464, 44.852295>,  <38.169353, 38.496048, 44.692211>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.303188, 38.377464, 44.852295>,  <38.526245, 38.179829, 45.119102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.303188, 38.377464, 44.852295> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354538, 0.584804, 0.729594,
		0.750560, 0.643334, -0.150936,
		-0.557641, 0.494091, -0.667017,
		38.135895, 38.525692, 44.652191>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.613167, 38.853596, 45.294209>,  <38.526245, 38.179829, 45.119102>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.613167, 38.853596, 45.294209> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.282333, 38.841366, 45.069710>,  <38.083836, 38.834026, 44.935009>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.282333, 38.841366, 45.069710>,  <38.613167, 38.853596, 45.294209>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.282333, 38.841366, 45.069710> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.490346, 0.527368, 0.693861,
		0.274767, 0.849087, -0.451170,
		-0.827081, -0.030579, -0.561250,
		38.034210, 38.832191, 44.901337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.327736, 39.511631, 45.276276>,  <38.613167, 38.853596, 45.294209>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.327736, 39.511631, 45.276276> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017414, 39.271935, 45.197243>,  <37.831223, 39.128117, 45.149822>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.017414, 39.271935, 45.197243>,  <38.327736, 39.511631, 45.276276>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.017414, 39.271935, 45.197243> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.524760, 0.438879, 0.729391,
		-0.350369, 0.669546, -0.654943,
		-0.775802, -0.599244, -0.197582,
		37.784672, 39.092163, 45.137970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<33.370972, 34.214870, 47.094616> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722984, 34.233189, 46.905533>,  <33.934193, 34.244179, 46.792084>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.722984, 34.233189, 46.905533>,  <33.370972, 34.214870, 47.094616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722984, 34.233189, 46.905533> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.473166, -0.000945, -0.880973,
		-0.040793, 0.998950, 0.020838,
		0.880029, 0.045797, -0.472707,
		33.986992, 34.246929, 46.763721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446499, 34.898289, 46.661915>,  <33.370972, 34.214870, 47.094616>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446499, 34.898289, 46.661915> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664349, 34.596802, 46.514790>,  <33.795059, 34.415909, 46.426514>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.664349, 34.596802, 46.514790>,  <33.446499, 34.898289, 46.661915>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.664349, 34.596802, 46.514790> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.477210, 0.082142, -0.874942,
		0.689674, 0.652042, -0.314945,
		0.544629, -0.753720, -0.367813,
		33.827736, 34.370686, 46.404446>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.488323, 35.096931, 45.899593>,  <33.446499, 34.898289, 46.661915>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.488323, 35.096931, 45.899593> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.662178, 34.736771, 45.892002>,  <33.766491, 34.520672, 45.887447>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.662178, 34.736771, 45.892002>,  <33.488323, 35.096931, 45.899593>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.662178, 34.736771, 45.892002> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290798, -0.120364, -0.949183,
		0.852364, 0.418072, -0.314151,
		0.434639, -0.900405, -0.018981,
		33.792568, 34.466648, 45.886307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.885223, 35.082588, 45.285793>,  <33.488323, 35.096931, 45.899593>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.885223, 35.082588, 45.285793> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858036, 34.696186, 45.385567>,  <33.841724, 34.464344, 45.445431>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.858036, 34.696186, 45.385567>,  <33.885223, 35.082588, 45.285793>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.858036, 34.696186, 45.385567> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.097155, -0.242412, -0.965297,
		0.992946, -0.089840, -0.077376,
		-0.067965, -0.966005, 0.249430,
		33.837646, 34.406384, 45.460396>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.257679, 34.758095, 44.816917>,  <33.885223, 35.082588, 45.285793>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.257679, 34.758095, 44.816917> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004490, 34.473034, 44.937897>,  <33.852577, 34.301998, 45.010483>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.004490, 34.473034, 44.937897>,  <34.257679, 34.758095, 44.816917>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.004490, 34.473034, 44.937897> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266096, -0.166596, -0.949441,
		0.727005, -0.681452, -0.084182,
		-0.632974, -0.712649, 0.302447,
		33.814598, 34.259239, 45.028629>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.421146, 34.080330, 44.411625>,  <34.257679, 34.758095, 44.816917>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.421146, 34.080330, 44.411625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042000, 34.092972, 44.538464>,  <33.814510, 34.100555, 44.614567>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.042000, 34.092972, 44.538464>,  <34.421146, 34.080330, 44.411625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042000, 34.092972, 44.538464> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311360, -0.303764, -0.900435,
		0.067865, -0.952223, 0.297769,
		-0.947866, 0.031605, 0.317099,
		33.757641, 34.102455, 44.633595>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.078758, 33.463856, 44.075993>,  <34.421146, 34.080330, 44.411625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.078758, 33.463856, 44.075993> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751873, 33.663643, 44.191021>,  <33.555740, 33.783516, 44.260036>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.751873, 33.663643, 44.191021>,  <34.078758, 33.463856, 44.075993>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.751873, 33.663643, 44.191021> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.320656, 0.020575, -0.946972,
		-0.478896, -0.866089, 0.143343,
		-0.817213, 0.499465, 0.287570,
		33.506710, 33.813484, 44.277290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.521889, 33.210426, 43.752834>,  <34.078758, 33.463856, 44.075993>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.521889, 33.210426, 43.752834> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.410660, 33.589443, 43.815876>,  <33.343922, 33.816853, 43.853699>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.410660, 33.589443, 43.815876>,  <33.521889, 33.210426, 43.752834>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.410660, 33.589443, 43.815876> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240967, 0.090012, -0.966350,
		-0.929844, -0.306691, 0.203297,
		-0.278072, 0.947543, 0.157600,
		33.327240, 33.873707, 43.863155>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.890034, 33.279606, 43.421253>,  <33.521889, 33.210426, 43.752834>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.890034, 33.279606, 43.421253> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.017101, 33.658039, 43.446609>,  <33.093342, 33.885098, 43.461823>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.017101, 33.658039, 43.446609>,  <32.890034, 33.279606, 43.421253>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.017101, 33.658039, 43.446609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.170929, 0.122896, -0.977589,
		-0.932669, 0.299710, 0.200753,
		0.317665, 0.946081, 0.063392,
		33.112400, 33.941864, 43.465626>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.344540, 33.648441, 43.178768>,  <32.890034, 33.279606, 43.421253>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.344540, 33.648441, 43.178768> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659286, 33.893017, 43.145359>,  <32.848137, 34.039764, 43.125313>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.659286, 33.893017, 43.145359>,  <32.344540, 33.648441, 43.178768>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.659286, 33.893017, 43.145359> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176322, 0.093052, -0.979924,
		-0.591395, 0.785799, 0.181030,
		0.786869, 0.611442, -0.083524,
		32.895348, 34.076450, 43.120300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.109158, 34.192299, 42.751770>,  <32.344540, 33.648441, 43.178768>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.109158, 34.192299, 42.751770> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508011, 34.220306, 42.740276>,  <32.747322, 34.237110, 42.733379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.508011, 34.220306, 42.740276>,  <32.109158, 34.192299, 42.751770>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.508011, 34.220306, 42.740276> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041284, 0.184919, -0.981886,
		-0.063438, 0.980256, 0.187279,
		0.997132, 0.070021, -0.028738,
		32.807152, 34.241314, 42.731655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.226826, 34.815723, 42.357231>,  <32.109158, 34.192299, 42.751770>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.226826, 34.815723, 42.357231> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559792, 34.594074, 42.359608>,  <32.759571, 34.461086, 42.361034>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.559792, 34.594074, 42.359608>,  <32.226826, 34.815723, 42.357231>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.559792, 34.594074, 42.359608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.155527, 0.223318, -0.962258,
		0.531882, 0.801921, 0.272074,
		0.832414, -0.554123, 0.005942,
		32.809517, 34.427837, 42.361389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.697277, 35.210934, 42.064831>,  <32.226826, 34.815723, 42.357231>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.697277, 35.210934, 42.064831> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819000, 34.833302, 42.014072>,  <32.892033, 34.606720, 41.983616>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.819000, 34.833302, 42.014072>,  <32.697277, 35.210934, 42.064831>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.819000, 34.833302, 42.014072> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.115085, 0.168676, -0.978930,
		0.945597, 0.283291, 0.159979,
		0.304307, -0.944084, -0.126897,
		32.910294, 34.550076, 41.976002>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.069164, 35.249199, 41.430588>,  <32.697277, 35.210934, 42.064831>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.069164, 35.249199, 41.430588> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974419, 34.863316, 41.476608>,  <32.917572, 34.631786, 41.504223>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.974419, 34.863316, 41.476608>,  <33.069164, 35.249199, 41.430588>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.974419, 34.863316, 41.476608> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013694, -0.121727, -0.992469,
		0.971446, -0.233507, 0.042043,
		-0.236866, -0.964706, 0.115053,
		32.903358, 34.573902, 41.511124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.666950, 35.629097, 41.377934>,  <33.069164, 35.249199, 41.430588>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.666950, 35.629097, 41.377934> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.588440, 35.988110, 41.219986>,  <33.541332, 36.203518, 41.125217>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.588440, 35.988110, 41.219986>,  <33.666950, 35.629097, 41.377934>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.588440, 35.988110, 41.219986> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.236958, 0.347345, 0.907305,
		0.951486, 0.271652, 0.144500,
		-0.196280, 0.897528, -0.394864,
		33.529556, 36.257366, 41.101528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.106567, 36.169247, 41.740818>,  <33.666950, 35.629097, 41.377934>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.106567, 36.169247, 41.740818> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795540, 36.342953, 41.558918>,  <33.608925, 36.447178, 41.449776>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.795540, 36.342953, 41.558918>,  <34.106567, 36.169247, 41.740818>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.795540, 36.342953, 41.558918> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.267107, 0.426601, 0.864098,
		0.569245, 0.793364, -0.215717,
		-0.777569, 0.434264, -0.454754,
		33.562267, 36.473232, 41.422493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.050964, 36.885746, 41.773132>,  <34.106567, 36.169247, 41.740818>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.050964, 36.885746, 41.773132> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660316, 36.801643, 41.791080>,  <33.425930, 36.751183, 41.801849>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.660316, 36.801643, 41.791080>,  <34.050964, 36.885746, 41.773132>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.660316, 36.801643, 41.791080> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094624, 0.607767, 0.788458,
		-0.193046, 0.765775, -0.613450,
		-0.976616, -0.210256, 0.044866,
		33.367332, 36.738567, 41.804539>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.648972, 37.553036, 41.795216>,  <34.050964, 36.885746, 41.773132>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.648972, 37.553036, 41.795216> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430271, 37.251701, 41.941391>,  <33.299049, 37.070900, 42.029095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.430271, 37.251701, 41.941391>,  <33.648972, 37.553036, 41.795216>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.430271, 37.251701, 41.941391> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.070043, 0.476075, 0.876611,
		-0.834358, 0.453695, -0.313062,
		-0.546755, -0.753335, 0.365439,
		33.266243, 37.025700, 42.051022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.329922, 37.909336, 42.323631>,  <33.648972, 37.553036, 41.795216>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.329922, 37.909336, 42.323631> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243870, 37.530361, 42.418362>,  <33.192238, 37.302979, 42.475201>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.243870, 37.530361, 42.418362>,  <33.329922, 37.909336, 42.323631>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.243870, 37.530361, 42.418362> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.184239, 0.277529, 0.942886,
		-0.959048, 0.159214, -0.234260,
		-0.215135, -0.947433, 0.236830,
		33.179329, 37.246132, 42.489410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.675282, 37.952065, 42.746601>,  <33.329922, 37.909336, 42.323631>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.675282, 37.952065, 42.746601> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861950, 37.612682, 42.846470>,  <32.973949, 37.409054, 42.906391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.861950, 37.612682, 42.846470>,  <32.675282, 37.952065, 42.746601>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.861950, 37.612682, 42.846470> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187901, 0.180737, 0.965415,
		-0.864240, -0.497445, -0.075082,
		0.466671, -0.848459, 0.249671,
		33.001953, 37.358143, 42.921371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.196392, 37.507656, 43.228424>,  <32.675282, 37.952065, 42.746601>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.196392, 37.507656, 43.228424> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546700, 37.324661, 43.290039>,  <32.756886, 37.214863, 43.327007>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.546700, 37.324661, 43.290039>,  <32.196392, 37.507656, 43.228424>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.546700, 37.324661, 43.290039> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.069664, 0.195975, 0.978131,
		-0.477673, -0.867350, 0.139759,
		0.875772, -0.457490, 0.154035,
		32.809429, 37.187416, 43.336250>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.136238, 37.118828, 43.841248>,  <32.196392, 37.507656, 43.228424>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.136238, 37.118828, 43.841248> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.534298, 37.125473, 43.802444>,  <32.773132, 37.129459, 43.779163>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.534298, 37.125473, 43.802444>,  <32.136238, 37.118828, 43.841248>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.534298, 37.125473, 43.802444> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.096338, 0.037237, 0.994652,
		0.020130, -0.999169, 0.035456,
		0.995145, 0.016606, -0.097007,
		32.832840, 37.130459, 43.773342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.383614, 36.581413, 44.262962>,  <32.136238, 37.118828, 43.841248>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.383614, 36.581413, 44.262962> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675323, 36.852989, 44.229023>,  <32.850349, 37.015934, 44.208660>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<32.675323, 36.852989, 44.229023>,  <32.383614, 36.581413, 44.262962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.675323, 36.852989, 44.229023> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.149037, -0.036593, 0.988154,
		0.667797, -0.733277, -0.127874,
		0.729270, 0.678945, -0.084849,
		32.894104, 37.056671, 44.203568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.933540, 36.390957, 44.771500>,  <32.383614, 36.581413, 44.262962>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.933540, 36.390957, 44.771500> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.009636, 36.770699, 44.671467>,  <33.055294, 36.998543, 44.611446>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.009636, 36.770699, 44.671467>,  <32.933540, 36.390957, 44.771500>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.009636, 36.770699, 44.671467> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269232, 0.194516, 0.943227,
		0.944099, -0.246769, -0.218591,
		0.190240, 0.949352, -0.250080,
		33.066708, 37.055504, 44.596443>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.632935, 36.500500, 44.879143>,  <32.933540, 36.390957, 44.771500>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.632935, 36.500500, 44.879143> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438858, 36.848866, 44.910366>,  <33.322414, 37.057884, 44.929100>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.438858, 36.848866, 44.910366>,  <33.632935, 36.500500, 44.879143>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.438858, 36.848866, 44.910366> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431342, 0.160730, 0.887755,
		0.760616, 0.464399, -0.453648,
		-0.485188, 0.870919, 0.078061,
		33.293301, 37.110142, 44.933784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.105423, 37.021454, 45.050137>,  <33.632935, 36.500500, 44.879143>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.105423, 37.021454, 45.050137> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763096, 37.156467, 45.206928>,  <33.557701, 37.237476, 45.301003>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.763096, 37.156467, 45.206928>,  <34.105423, 37.021454, 45.050137>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.763096, 37.156467, 45.206928> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480182, 0.236593, 0.844659,
		0.192362, 0.911095, -0.364558,
		-0.855817, 0.337535, 0.391980,
		33.506351, 37.257729, 45.324524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.282631, 37.644020, 45.431480>,  <34.105423, 37.021454, 45.050137>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.282631, 37.644020, 45.431480> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907158, 37.583344, 45.555328>,  <33.681873, 37.546940, 45.629639>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907158, 37.583344, 45.555328>,  <34.282631, 37.644020, 45.431480>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907158, 37.583344, 45.555328> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220459, 0.426390, 0.877262,
		-0.265091, 0.891730, -0.366804,
		-0.938682, -0.151689, 0.309622,
		33.625553, 37.537838, 45.648216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217506, 38.201401, 45.807114>,  <34.282631, 37.644020, 45.431480>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217506, 38.201401, 45.807114> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935516, 37.934364, 45.902889>,  <33.766323, 37.774143, 45.960354>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.935516, 37.934364, 45.902889>,  <34.217506, 38.201401, 45.807114>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.935516, 37.934364, 45.902889> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.039398, 0.300220, 0.953056,
		-0.708138, 0.681313, -0.185345,
		-0.704974, -0.667593, 0.239440,
		33.724026, 37.734085, 45.974720>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.874279, 38.892353, 45.466457>,  <34.217506, 38.201401, 45.807114>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.874279, 38.892353, 45.466457> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995842, 39.267807, 45.401218>,  <34.068779, 39.493080, 45.362076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.995842, 39.267807, 45.401218>,  <33.874279, 38.892353, 45.466457>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.995842, 39.267807, 45.401218> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296907, -0.255987, -0.919955,
		-0.905254, 0.231156, -0.356485,
		0.303909, 0.938636, -0.163101,
		34.087013, 39.549397, 45.352287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.602993, 39.042568, 44.788021>,  <33.874279, 38.892353, 45.466457>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.602993, 39.042568, 44.788021> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907230, 39.300022, 44.822029>,  <34.089771, 39.454494, 44.842434>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<33.907230, 39.300022, 44.822029>,  <33.602993, 39.042568, 44.788021>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.907230, 39.300022, 44.822029> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.183589, -0.087624, -0.979090,
		-0.622731, 0.760297, -0.184811,
		0.760593, 0.643639, 0.085016,
		34.135406, 39.493114, 44.847534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.661053, 39.554306, 44.292625>,  <33.602993, 39.042568, 44.788021>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.661053, 39.554306, 44.292625> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051147, 39.562153, 44.380749>,  <34.285202, 39.566860, 44.433624>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.051147, 39.562153, 44.380749>,  <33.661053, 39.554306, 44.292625>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.051147, 39.562153, 44.380749> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219770, 0.026475, -0.975192,
		-0.024961, 0.999457, 0.021509,
		0.975232, 0.019614, 0.220311,
		34.343716, 39.568039, 44.446842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.882046, 39.964443, 43.789959>,  <33.661053, 39.554306, 44.292625>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.882046, 39.964443, 43.789959> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216686, 39.790928, 43.923782>,  <34.417469, 39.686821, 44.004078>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.216686, 39.790928, 43.923782>,  <33.882046, 39.964443, 43.789959>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.216686, 39.790928, 43.923782> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.324246, -0.100148, -0.940657,
		0.441550, 0.895433, 0.056870,
		0.836600, -0.433786, 0.334560,
		34.467667, 39.660793, 44.024151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.578392, 40.323925, 43.443821>,  <33.882046, 39.964443, 43.789959>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.578392, 40.323925, 43.443821> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693207, 39.963108, 43.572777>,  <34.762096, 39.746620, 43.650150>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<34.693207, 39.963108, 43.572777>,  <34.578392, 40.323925, 43.443821>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.693207, 39.963108, 43.572777> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395433, -0.194960, -0.897565,
		0.872493, 0.385116, 0.300736,
		0.287035, -0.902040, 0.322388,
		34.779316, 39.692497, 43.669495>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.192879, 40.226379, 43.186844>,  <34.578392, 40.323925, 43.443821>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.192879, 40.226379, 43.186844> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062813, 39.858177, 43.273510>,  <34.984772, 39.637257, 43.325508>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.062813, 39.858177, 43.273510>,  <35.192879, 40.226379, 43.186844>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.062813, 39.858177, 43.273510> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.318972, -0.322445, -0.891227,
		0.890239, -0.220686, 0.398462,
		-0.325164, -0.920503, 0.216661,
		34.965263, 39.582027, 43.338509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.737503, 39.787975, 42.874889>,  <35.192879, 40.226379, 43.186844>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.737503, 39.787975, 42.874889> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454449, 39.513100, 42.940639>,  <35.284615, 39.348175, 42.980091>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.454449, 39.513100, 42.940639>,  <35.737503, 39.787975, 42.874889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.454449, 39.513100, 42.940639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.281652, -0.487694, -0.826333,
		0.648012, -0.538449, 0.538659,
		-0.707639, -0.687188, 0.164376,
		35.242157, 39.306942, 42.989952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.085632, 39.154625, 42.746128>,  <35.737503, 39.787975, 42.874889>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.085632, 39.154625, 42.746128> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695278, 39.075977, 42.708225>,  <35.461063, 39.028790, 42.685482>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.695278, 39.075977, 42.708225>,  <36.085632, 39.154625, 42.746128>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.695278, 39.075977, 42.708225> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.194767, -0.588513, -0.784677,
		0.098518, -0.784214, 0.612620,
		-0.975889, -0.196623, -0.094760,
		35.402512, 39.016991, 42.679798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.007114, 38.360573, 42.532379>,  <36.085632, 39.154625, 42.746128>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.007114, 38.360573, 42.532379> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659763, 38.523102, 42.418659>,  <35.451355, 38.620617, 42.350426>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.659763, 38.523102, 42.418659>,  <36.007114, 38.360573, 42.532379>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.659763, 38.523102, 42.418659> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.071197, -0.465208, -0.882333,
		-0.490773, -0.786437, 0.375046,
		-0.868374, 0.406323, -0.284304,
		35.399250, 38.644997, 42.333370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.519535, 37.824612, 42.279438>,  <36.007114, 38.360573, 42.532379>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.519535, 37.824612, 42.279438> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.396202, 38.166321, 42.112034>,  <35.322205, 38.371346, 42.011589>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.396202, 38.166321, 42.112034>,  <35.519535, 37.824612, 42.279438>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.396202, 38.166321, 42.112034> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.058095, -0.422217, -0.904631,
		-0.949504, -0.303238, 0.080553,
		-0.308330, 0.854271, -0.418513,
		35.303703, 38.422604, 41.986481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.059349, 37.707386, 41.741417>,  <35.519535, 37.824612, 42.279438>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.059349, 37.707386, 41.741417> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224724, 38.060394, 41.651775>,  <35.323948, 38.272202, 41.597988>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.224724, 38.060394, 41.651775>,  <35.059349, 37.707386, 41.741417>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.224724, 38.060394, 41.651775> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.160765, -0.313012, -0.936044,
		-0.896230, 0.350962, -0.271289,
		0.413432, 0.882524, -0.224109,
		35.348755, 38.325153, 41.584541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.741383, 37.916759, 41.100719>,  <35.059349, 37.707386, 41.741417>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.741383, 37.916759, 41.100719> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.081104, 38.126179, 41.127769>,  <35.284939, 38.251831, 41.143997>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.081104, 38.126179, 41.127769>,  <34.741383, 37.916759, 41.100719>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.081104, 38.126179, 41.127769> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.156816, -0.127901, -0.979311,
		-0.504070, 0.842340, -0.190729,
		0.849307, 0.523550, 0.067621,
		35.335896, 38.283245, 41.148056>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.721027, 38.318890, 40.472549>,  <34.741383, 37.916759, 41.100719>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.721027, 38.318890, 40.472549> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096081, 38.362671, 40.604530>,  <35.321114, 38.388939, 40.683720>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.096081, 38.362671, 40.604530>,  <34.721027, 38.318890, 40.472549>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.096081, 38.362671, 40.604530> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.331354, 0.005689, -0.943489,
		-0.105148, 0.993975, -0.030934,
		0.937629, 0.109456, 0.329956,
		35.377369, 38.395508, 40.703518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.019279, 38.949642, 40.121387>,  <34.721027, 38.318890, 40.472549>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.019279, 38.949642, 40.121387> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304218, 38.685860, 40.217457>,  <35.475182, 38.527592, 40.275097>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<35.304218, 38.685860, 40.217457>,  <35.019279, 38.949642, 40.121387>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.304218, 38.685860, 40.217457> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.302159, -0.020697, -0.953033,
		0.633455, 0.751458, 0.184517,
		0.712345, -0.659457, 0.240170,
		35.517921, 38.488022, 40.289509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<32.905079, 38.315517, 35.721294> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.813824, 38.612396, 35.973358>,  <32.759071, 38.790524, 36.124596>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.813824, 38.612396, 35.973358>,  <32.905079, 38.315517, 35.721294>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.813824, 38.612396, 35.973358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668149, -0.351426, 0.655802,
		0.708187, 0.570654, -0.415723,
		-0.228140, 0.742195, 0.630157,
		32.745380, 38.835056, 36.162407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.170189, 38.198658, 35.435097>,  <32.905079, 38.315517, 35.721294>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.170189, 38.198658, 35.435097> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.028870, 38.159721, 35.062923>,  <31.944078, 38.136360, 34.839619>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.028870, 38.159721, 35.062923>,  <32.170189, 38.198658, 35.435097>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.028870, 38.159721, 35.062923> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.915885, 0.238636, 0.322810,
		0.190612, 0.966218, -0.173464,
		-0.353300, -0.097341, -0.930432,
		31.922880, 38.130520, 34.783794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.570877, 38.703098, 35.343765>,  <32.170189, 38.198658, 35.435097>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.570877, 38.703098, 35.343765> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.530422, 38.419415, 35.064682>,  <31.506149, 38.249207, 34.897232>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.530422, 38.419415, 35.064682>,  <31.570877, 38.703098, 35.343765>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.530422, 38.419415, 35.064682> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.989618, -0.000269, 0.143724,
		-0.102118, 0.705000, -0.701817,
		-0.101136, -0.709207, -0.697708,
		31.500082, 38.206654, 34.855370>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.082211, 38.975899, 34.935162>,  <31.570877, 38.703098, 35.343765>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.082211, 38.975899, 34.935162> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096327, 38.577911, 34.897644>,  <31.104797, 38.339119, 34.875134>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.096327, 38.577911, 34.897644>,  <31.082211, 38.975899, 34.935162>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.096327, 38.577911, 34.897644> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.971246, -0.056260, 0.231334,
		-0.235446, 0.082937, -0.968342,
		0.035293, -0.994965, -0.093798,
		31.106915, 38.279423, 34.869503>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.377262, 38.745983, 34.574512>,  <31.082211, 38.975899, 34.935162>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.377262, 38.745983, 34.574512> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542892, 38.436646, 34.766544>,  <30.642271, 38.251041, 34.881763>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.542892, 38.436646, 34.766544>,  <30.377262, 38.745983, 34.574512>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.542892, 38.436646, 34.766544> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.899390, -0.266410, 0.346589,
		-0.140135, -0.575294, -0.805853,
		0.414078, -0.773345, 0.480080,
		30.667116, 38.204643, 34.910568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.918097, 38.225334, 34.425743>,  <30.377262, 38.745983, 34.574512>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.918097, 38.225334, 34.425743> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119656, 38.099476, 34.747509>,  <30.240591, 38.023960, 34.940571>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.119656, 38.099476, 34.747509>,  <29.918097, 38.225334, 34.425743>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.119656, 38.099476, 34.747509> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.834237, -0.418699, 0.358803,
		0.223915, -0.851875, -0.473466,
		0.503896, -0.314641, 0.804419,
		30.270824, 38.005085, 34.988834>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.584785, 37.649883, 34.556446>,  <29.918097, 38.225334, 34.425743>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.584785, 37.649883, 34.556446> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783157, 37.702888, 34.899723>,  <29.902182, 37.734692, 35.105690>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.783157, 37.702888, 34.899723>,  <29.584785, 37.649883, 34.556446>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.783157, 37.702888, 34.899723> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.706005, -0.513872, 0.487332,
		0.505578, -0.847571, -0.161291,
		0.495932, 0.132512, 0.858191,
		29.931936, 37.742641, 35.157181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.772472, 36.934124, 34.806473>,  <29.584785, 37.649883, 34.556446>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.772472, 36.934124, 34.806473> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740969, 37.218037, 35.086475>,  <29.722067, 37.388382, 35.254478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.740969, 37.218037, 35.086475>,  <29.772472, 36.934124, 34.806473>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.740969, 37.218037, 35.086475> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.774928, -0.485323, 0.404905,
		0.627123, -0.510566, 0.588251,
		-0.078761, 0.709778, 0.700009,
		29.717340, 37.430969, 35.296478>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.760685, 36.618473, 35.446140>,  <29.772472, 36.934124, 34.806473>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.760685, 36.618473, 35.446140> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619814, 36.981236, 35.538651>,  <29.535292, 37.198895, 35.594154>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.619814, 36.981236, 35.538651>,  <29.760685, 36.618473, 35.446140>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.619814, 36.981236, 35.538651> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.702319, -0.419409, 0.575190,
		0.618643, 0.040141, 0.784646,
		-0.352176, 0.906909, 0.231273,
		29.514162, 37.253307, 35.608032>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.756338, 36.630955, 36.248394>,  <29.760685, 36.618473, 35.446140>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.756338, 36.630955, 36.248394> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498508, 36.903870, 36.110405>,  <29.343811, 37.067619, 36.027611>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.498508, 36.903870, 36.110405>,  <29.756338, 36.630955, 36.248394>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.498508, 36.903870, 36.110405> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.621582, -0.204947, 0.756064,
		0.445152, 0.701769, 0.556202,
		-0.644574, 0.682288, -0.344974,
		29.305136, 37.108555, 36.006912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.418009, 36.858204, 36.821957>,  <29.756338, 36.630955, 36.248394>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.418009, 36.858204, 36.821957> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170029, 36.983063, 36.534008>,  <29.021240, 37.057980, 36.361237>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.170029, 36.983063, 36.534008>,  <29.418009, 36.858204, 36.821957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.170029, 36.983063, 36.534008> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.782837, -0.183911, 0.594426,
		0.053157, 0.932061, 0.358380,
		-0.619952, 0.312151, -0.719876,
		28.984043, 37.076710, 36.318047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.950027, 37.396603, 37.181034>,  <29.418009, 36.858204, 36.821957>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.950027, 37.396603, 37.181034> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796814, 37.252659, 36.840733>,  <28.704885, 37.166290, 36.636551>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.796814, 37.252659, 36.840733>,  <28.950027, 37.396603, 37.181034>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.796814, 37.252659, 36.840733> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.841247, -0.244537, 0.482188,
		-0.381563, 0.900389, -0.209068,
		-0.383032, -0.359863, -0.850756,
		28.681904, 37.144699, 36.585506>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.285816, 37.730106, 37.127911>,  <28.950027, 37.396603, 37.181034>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.285816, 37.730106, 37.127911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291792, 37.395279, 36.909149>,  <28.295378, 37.194382, 36.777893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.291792, 37.395279, 36.909149>,  <28.285816, 37.730106, 37.127911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.291792, 37.395279, 36.909149> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741687, -0.376097, 0.555383,
		-0.670579, 0.397332, -0.626459,
		0.014938, -0.837065, -0.546899,
		28.296272, 37.144161, 36.745079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.521395, 37.554054, 37.060261>,  <28.285816, 37.730106, 37.127911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.521395, 37.554054, 37.060261> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704527, 37.226112, 36.922726>,  <27.814405, 37.029346, 36.840206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.704527, 37.226112, 36.922726>,  <27.521395, 37.554054, 37.060261>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.704527, 37.226112, 36.922726> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677250, -0.572175, 0.462545,
		-0.575964, 0.021112, -0.817202,
		0.457818, -0.819860, -0.343850,
		27.841877, 36.980156, 36.819576>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.000452, 37.195938, 36.773727>,  <27.521395, 37.554054, 37.060261>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.000452, 37.195938, 36.773727> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294800, 36.932865, 36.838169>,  <27.471409, 36.775021, 36.876835>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.294800, 36.932865, 36.838169>,  <27.000452, 37.195938, 36.773727>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.294800, 36.932865, 36.838169> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.674793, -0.692563, 0.254971,
		-0.056114, -0.296337, -0.953433,
		0.735870, -0.657678, 0.161104,
		27.515560, 36.735561, 36.886501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.774868, 36.660244, 36.395416>,  <27.000452, 37.195938, 36.773727>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.774868, 36.660244, 36.395416> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033648, 36.504677, 36.657776>,  <27.188915, 36.411335, 36.815189>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.033648, 36.504677, 36.657776>,  <26.774868, 36.660244, 36.395416>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.033648, 36.504677, 36.657776> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.612023, -0.777913, 0.142406,
		0.454845, -0.493553, -0.741297,
		0.646950, -0.388918, 0.655896,
		27.227732, 36.388000, 36.854546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.851017, 35.933075, 36.250847>,  <26.774868, 36.660244, 36.395416>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.851017, 35.933075, 36.250847> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.971676, 35.970329, 36.630390>,  <27.044071, 35.992680, 36.858116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.971676, 35.970329, 36.630390>,  <26.851017, 35.933075, 36.250847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.971676, 35.970329, 36.630390> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536371, -0.806215, 0.249647,
		0.788236, -0.584246, -0.193238,
		0.301646, 0.093133, 0.948860,
		27.062170, 35.998268, 36.915047>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.903349, 35.219696, 36.498978>,  <26.851017, 35.933075, 36.250847>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.903349, 35.219696, 36.498978> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915016, 35.422123, 36.843781>,  <26.922016, 35.543579, 37.050663>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.915016, 35.422123, 36.843781>,  <26.903349, 35.219696, 36.498978>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.915016, 35.422123, 36.843781> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.509890, -0.734201, 0.448287,
		0.859745, -0.452602, 0.236622,
		0.029168, 0.506064, 0.862003,
		26.923767, 35.573940, 37.102383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.175362, 34.750835, 36.986073>,  <26.903349, 35.219696, 36.498978>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.175362, 34.750835, 36.986073> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.962223, 35.032879, 37.173218>,  <26.834339, 35.202103, 37.285507>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.962223, 35.032879, 37.173218>,  <27.175362, 34.750835, 36.986073>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.962223, 35.032879, 37.173218> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.600636, -0.704610, 0.377838,
		0.596080, -0.079687, 0.798961,
		-0.532847, 0.705107, 0.467867,
		26.802368, 35.244411, 37.313580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.966013, 34.420033, 37.664349>,  <27.175362, 34.750835, 36.986073>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.966013, 34.420033, 37.664349> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704126, 34.719227, 37.620773>,  <26.546993, 34.898743, 37.594627>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<26.704126, 34.719227, 37.620773>,  <26.966013, 34.420033, 37.664349>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<26.704126, 34.719227, 37.620773> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.745332, -0.614861, 0.257732,
		0.125796, 0.249937, 0.960056,
		-0.654718, 0.747982, -0.108939,
		26.507711, 34.943623, 37.588093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.669167, 34.194389, 37.988106>,  <26.966013, 34.420033, 37.664349>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.669167, 34.194389, 37.988106> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885614, 33.879429, 37.869991>,  <28.015484, 33.690453, 37.799122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<27.885614, 33.879429, 37.869991>,  <27.669167, 34.194389, 37.988106>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<27.885614, 33.879429, 37.869991> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.806923, 0.585033, -0.081317,
		0.236778, -0.194267, 0.951944,
		0.541121, -0.787399, -0.295282,
		28.047951, 33.643208, 37.781406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.296047, 34.362591, 38.311958>,  <27.669167, 34.194389, 37.988106>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.296047, 34.362591, 38.311958> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383471, 34.068035, 38.055843>,  <28.435925, 33.891304, 37.902176>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.383471, 34.068035, 38.055843>,  <28.296047, 34.362591, 38.311958>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383471, 34.068035, 38.055843> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.798814, 0.511877, -0.316034,
		0.560471, -0.442398, 0.700112,
		0.218558, -0.736387, -0.640286,
		28.449038, 33.847118, 37.863758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.925894, 34.171764, 38.492893>,  <28.296047, 34.362591, 38.311958>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.925894, 34.171764, 38.492893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874622, 34.081509, 38.106598>,  <28.843861, 34.027355, 37.874821>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<28.874622, 34.081509, 38.106598>,  <28.925894, 34.171764, 38.492893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<28.874622, 34.081509, 38.106598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653663, 0.713111, -0.253370,
		0.745852, -0.663746, 0.056088,
		-0.128176, -0.225639, -0.965742,
		28.836170, 34.013817, 37.816875>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.607265, 33.944538, 38.232750>,  <28.925894, 34.171764, 38.492893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.607265, 33.944538, 38.232750> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377100, 34.071857, 37.931396>,  <29.239000, 34.148251, 37.750584>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.377100, 34.071857, 37.931396>,  <29.607265, 33.944538, 38.232750>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.377100, 34.071857, 37.931396> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772919, 0.512796, -0.373680,
		0.267389, -0.797324, -0.541089,
		-0.575413, 0.318300, -0.753383,
		29.204475, 34.167347, 37.705383>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.907726, 33.676842, 37.568825>,  <29.607265, 33.944538, 38.232750>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.907726, 33.676842, 37.568825> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688784, 33.992062, 37.456131>,  <29.557419, 34.181194, 37.388515>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<29.688784, 33.992062, 37.456131>,  <29.907726, 33.676842, 37.568825>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<29.688784, 33.992062, 37.456131> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.811082, 0.416535, -0.410663,
		-0.206270, -0.453292, -0.867167,
		-0.547356, 0.788051, -0.281739,
		29.524576, 34.228477, 37.371609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.274117, 33.839283, 36.939087>,  <29.907726, 33.676842, 37.568825>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.274117, 33.839283, 36.939087> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057043, 34.156734, 37.049107>,  <29.926800, 34.347206, 37.115116>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.057043, 34.156734, 37.049107>,  <30.274117, 33.839283, 36.939087>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.057043, 34.156734, 37.049107> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744522, 0.606100, -0.279874,
		-0.388820, 0.052894, -0.919794,
		-0.542683, 0.793628, 0.275045,
		29.894238, 34.394821, 37.131618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.224663, 34.240826, 36.401024>,  <30.274117, 33.839283, 36.939087>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.224663, 34.240826, 36.401024> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.149866, 34.493328, 36.702103>,  <30.104988, 34.644829, 36.882748>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.149866, 34.493328, 36.702103>,  <30.224663, 34.240826, 36.401024>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.149866, 34.493328, 36.702103> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732138, 0.600419, -0.321668,
		-0.654987, 0.490926, -0.574442,
		-0.186991, 0.631259, 0.752693,
		30.093769, 34.682705, 36.927910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.265244, 34.926830, 36.073509>,  <30.224663, 34.240826, 36.401024>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.265244, 34.926830, 36.073509> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282934, 35.023529, 36.461243>,  <30.293549, 35.081547, 36.693882>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.282934, 35.023529, 36.461243>,  <30.265244, 34.926830, 36.073509>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.282934, 35.023529, 36.461243> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788099, 0.587851, -0.182566,
		-0.613957, 0.772004, -0.164521,
		0.044228, 0.241747, 0.969331,
		30.296202, 35.096054, 36.752041>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.325214, 35.583012, 36.084911>,  <30.265244, 34.926830, 36.073509>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.325214, 35.583012, 36.084911> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455858, 35.514538, 36.456722>,  <30.534245, 35.473454, 36.679810>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.455858, 35.514538, 36.456722>,  <30.325214, 35.583012, 36.084911>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.455858, 35.514538, 36.456722> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.694731, 0.710290, -0.113297,
		-0.640840, 0.682776, 0.350915,
		0.326608, -0.171187, 0.929528,
		30.553841, 35.463181, 36.735580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.333988, 36.162586, 36.496632>,  <30.325214, 35.583012, 36.084911>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.333988, 36.162586, 36.496632> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618933, 35.910229, 36.619598>,  <30.789900, 35.758812, 36.693378>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<30.618933, 35.910229, 36.619598>,  <30.333988, 36.162586, 36.496632>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<30.618933, 35.910229, 36.619598> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700381, 0.667027, -0.254050,
		-0.044777, 0.396286, 0.917035,
		0.712363, -0.630898, 0.307419,
		30.832642, 35.720959, 36.711823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.823626, 36.611603, 36.758801>,  <30.333988, 36.162586, 36.496632>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.823626, 36.611603, 36.758801> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.027971, 36.268776, 36.732128>,  <31.150578, 36.063080, 36.716125>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.027971, 36.268776, 36.732128>,  <30.823626, 36.611603, 36.758801>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.027971, 36.268776, 36.732128> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.859622, 0.510049, 0.030008,
		0.008293, -0.072653, 0.997323,
		0.510863, -0.857072, -0.066684,
		31.181231, 36.011654, 36.712124>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.391352, 36.619740, 37.281372>,  <30.823626, 36.611603, 36.758801>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.391352, 36.619740, 37.281372> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504473, 36.338676, 37.020210>,  <31.572346, 36.170036, 36.863514>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<31.504473, 36.338676, 37.020210>,  <31.391352, 36.619740, 37.281372>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<31.504473, 36.338676, 37.020210> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882195, 0.457736, -0.110498,
		0.376503, -0.544743, 0.749334,
		0.282804, -0.702661, -0.652909,
		31.589314, 36.127876, 36.824337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.080944, 36.388611, 37.473709>,  <31.391352, 36.619740, 37.281372>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.080944, 36.388611, 37.473709> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025974, 36.307705, 37.085854>,  <31.992992, 36.259163, 36.853138>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.025974, 36.307705, 37.085854>,  <32.080944, 36.388611, 37.473709>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.025974, 36.307705, 37.085854> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878888, 0.426563, -0.213540,
		0.456805, -0.881552, 0.119149,
		-0.137423, -0.202265, -0.969641,
		31.984747, 36.247025, 36.794960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.774384, 36.311432, 37.205944>,  <32.080944, 36.388611, 37.473709>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.774384, 36.311432, 37.205944> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.586426, 36.332226, 36.853466>,  <32.473652, 36.344704, 36.641979>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<32.586426, 36.332226, 36.853466>,  <32.774384, 36.311432, 37.205944>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<32.586426, 36.332226, 36.853466> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834196, 0.352579, -0.424034,
		0.288645, -0.934337, -0.209043,
		-0.469894, 0.051987, -0.881191,
		32.445457, 36.347820, 36.589108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293320, 36.014664, 36.622520>,  <32.774384, 36.311432, 37.205944>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293320, 36.014664, 36.622520> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.022514, 36.255745, 36.453571>,  <32.860031, 36.400394, 36.352203>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.022514, 36.255745, 36.453571>,  <33.293320, 36.014664, 36.622520>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.022514, 36.255745, 36.453571> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.732267, 0.494150, -0.468616,
		-0.073724, -0.626547, -0.775889,
		-0.677015, 0.602706, -0.422369,
		32.819408, 36.436558, 36.326862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.445782, 36.058331, 35.923855>,  <33.293320, 36.014664, 36.622520>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.445782, 36.058331, 35.923855> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217442, 36.382057, 35.979187>,  <33.080437, 36.576294, 36.012386>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.217442, 36.382057, 35.979187>,  <33.445782, 36.058331, 35.923855>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.217442, 36.382057, 35.979187> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708869, 0.570818, -0.414332,
		-0.414285, -0.138467, -0.899553,
		-0.570853, 0.809316, 0.138326,
		33.046185, 36.624851, 36.020683>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.378162, 36.365734, 35.240498>,  <33.445782, 36.058331, 35.923855>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.378162, 36.365734, 35.240498> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301022, 36.653080, 35.507858>,  <33.254738, 36.825489, 35.668274>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.301022, 36.653080, 35.507858>,  <33.378162, 36.365734, 35.240498>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.301022, 36.653080, 35.507858> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.327422, 0.689256, -0.646313,
		-0.924987, 0.094202, -0.368136,
		-0.192856, 0.718367, 0.668397,
		33.243164, 36.868591, 35.708378>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.927616, 36.827976, 34.967926>,  <33.378162, 36.365734, 35.240498>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.927616, 36.827976, 34.967926> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158092, 36.989891, 35.251942>,  <33.296379, 37.087040, 35.422352>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.158092, 36.989891, 35.251942>,  <32.927616, 36.827976, 34.967926>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.158092, 36.989891, 35.251942> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.354429, 0.659061, -0.663339,
		-0.736470, 0.633867, 0.236275,
		0.576188, 0.404786, 0.710039,
		33.330948, 37.111328, 35.464954>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.835857, 37.483910, 34.883488>,  <32.927616, 36.827976, 34.967926>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.835857, 37.483910, 34.883488> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187679, 37.464951, 35.072857>,  <33.398773, 37.453575, 35.186478>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.187679, 37.464951, 35.072857>,  <32.835857, 37.483910, 34.883488>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.187679, 37.464951, 35.072857> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370189, 0.693256, -0.618350,
		-0.298895, 0.719132, 0.627305,
		0.879558, -0.047400, 0.473425,
		33.451546, 37.450729, 35.214886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.010647, 38.159657, 34.963589>,  <32.835857, 37.483910, 34.883488>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.010647, 38.159657, 34.963589> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.364796, 37.986778, 35.032093>,  <33.577286, 37.883053, 35.073196>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.364796, 37.986778, 35.032093>,  <33.010647, 38.159657, 34.963589>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.364796, 37.986778, 35.032093> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.460016, 0.761285, -0.456980,
		0.067128, 0.483377, 0.872835,
		0.885370, -0.432194, 0.171258,
		33.630405, 37.857121, 35.083469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.468483, 38.623253, 35.057465>,  <33.010647, 38.159657, 34.963589>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.468483, 38.623253, 35.057465> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.745739, 38.343479, 34.987774>,  <33.912090, 38.175617, 34.945957>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<33.745739, 38.343479, 34.987774>,  <33.468483, 38.623253, 35.057465>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<33.745739, 38.343479, 34.987774> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567276, 0.678454, -0.466795,
		0.444699, 0.224717, 0.867033,
		0.693138, -0.699430, -0.174231,
		33.953682, 38.133652, 34.935505>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038853, 38.903591, 35.197998>,  <33.468483, 38.623253, 35.057465>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038853, 38.903591, 35.197998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161495, 38.623566, 34.940037>,  <34.235081, 38.455551, 34.785259>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<34.161495, 38.623566, 34.940037>,  <34.038853, 38.903591, 35.197998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<34.161495, 38.623566, 34.940037> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520461, 0.690587, -0.502204,
		0.796938, -0.181669, 0.576096,
		0.306610, -0.700061, -0.644907,
		34.253479, 38.413548, 34.746563>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<37.862701, 40.051014, 45.131908> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654854, 39.715137, 45.195042>,  <37.530148, 39.513611, 45.232922>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.654854, 39.715137, 45.195042>,  <37.862701, 40.051014, 45.131908>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.654854, 39.715137, 45.195042> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574792, 0.480227, 0.662568,
		-0.632149, 0.253562, -0.732184,
		-0.519617, -0.839695, 0.157830,
		37.498970, 39.463230, 45.242390>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.232132, 40.278580, 45.218868>,  <37.862701, 40.051014, 45.131908>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.232132, 40.278580, 45.218868> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248623, 39.915821, 45.386604>,  <37.258518, 39.698166, 45.487244>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.248623, 39.915821, 45.386604>,  <37.232132, 40.278580, 45.218868>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.248623, 39.915821, 45.386604> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629244, 0.302443, 0.715947,
		-0.776114, -0.293379, -0.558190,
		0.041223, -0.906894, 0.419337,
		37.260990, 39.643753, 45.512405>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.555084, 40.120476, 45.585049>,  <37.232132, 40.278580, 45.218868>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.555084, 40.120476, 45.585049> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788998, 39.832169, 45.733921>,  <36.929348, 39.659184, 45.823242>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.788998, 39.832169, 45.733921>,  <36.555084, 40.120476, 45.585049>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.788998, 39.832169, 45.733921> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494328, 0.047136, 0.867997,
		-0.643169, -0.691569, -0.328732,
		0.584785, -0.720770, 0.372178,
		36.964432, 39.615936, 45.845573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.124706, 39.843281, 46.042103>,  <36.555084, 40.120476, 45.585049>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.124706, 39.843281, 46.042103> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483150, 39.710075, 46.159466>,  <36.698215, 39.630150, 46.229881>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.483150, 39.710075, 46.159466>,  <36.124706, 39.843281, 46.042103>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.483150, 39.710075, 46.159466> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.322427, -0.034165, 0.945978,
		-0.305002, -0.942302, -0.137989,
		0.896111, -0.333016, 0.293403,
		36.751984, 39.610172, 46.247486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.032345, 39.355408, 46.576626>,  <36.124706, 39.843281, 46.042103>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.032345, 39.355408, 46.576626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417160, 39.437263, 46.648853>,  <36.648048, 39.486378, 46.692188>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.417160, 39.437263, 46.648853>,  <36.032345, 39.355408, 46.576626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.417160, 39.437263, 46.648853> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.179706, -0.022934, 0.983453,
		0.205394, -0.978569, 0.014712,
		0.962039, 0.204639, 0.180565,
		36.705772, 39.498653, 46.703022>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.261822, 38.901119, 47.064972>,  <36.032345, 39.355408, 46.576626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.261822, 38.901119, 47.064972> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521683, 39.204754, 47.081627>,  <36.677601, 39.386936, 47.091618>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.521683, 39.204754, 47.081627>,  <36.261822, 38.901119, 47.064972>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.521683, 39.204754, 47.081627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.094245, 0.026073, 0.995207,
		0.754367, -0.650463, 0.088479,
		0.649652, 0.759091, 0.041634,
		36.716579, 39.432480, 47.094116>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.803822, 38.728275, 47.587280>,  <36.261822, 38.901119, 47.064972>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.803822, 38.728275, 47.587280> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815105, 39.126129, 47.547459>,  <36.821877, 39.364841, 47.523567>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.815105, 39.126129, 47.547459>,  <36.803822, 38.728275, 47.587280>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.815105, 39.126129, 47.547459> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.086577, 0.096789, 0.991532,
		0.995846, -0.036585, -0.083382,
		0.028205, 0.994632, -0.099554,
		36.823566, 39.424519, 47.517593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.295010, 38.913422, 48.052364>,  <36.803822, 38.728275, 47.587280>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.295010, 38.913422, 48.052364> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097660, 39.255955, 47.991337>,  <36.979252, 39.461475, 47.954720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.097660, 39.255955, 47.991337>,  <37.295010, 38.913422, 48.052364>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.097660, 39.255955, 47.991337> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.026920, 0.190356, 0.981346,
		0.869402, 0.480060, -0.116969,
		-0.493371, 0.856333, -0.152572,
		36.949650, 39.512856, 47.945564>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.574188, 39.461662, 48.407318>,  <37.295010, 38.913422, 48.052364>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.574188, 39.461662, 48.407318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221394, 39.633270, 48.329300>,  <37.009716, 39.736237, 48.282490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.221394, 39.633270, 48.329300>,  <37.574188, 39.461662, 48.407318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.221394, 39.633270, 48.329300> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.024015, 0.454248, 0.890552,
		0.470663, 0.780770, -0.410943,
		-0.881986, 0.429018, -0.195048,
		36.956799, 39.761974, 48.270786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.699608, 40.166351, 48.519318>,  <37.574188, 39.461662, 48.407318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.699608, 40.166351, 48.519318> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314526, 40.080311, 48.584957>,  <37.083477, 40.028687, 48.624340>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.314526, 40.080311, 48.584957>,  <37.699608, 40.166351, 48.519318>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.314526, 40.080311, 48.584957> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065568, 0.402969, 0.912862,
		-0.262490, 0.889576, -0.373836,
		-0.962704, -0.215105, 0.164103,
		37.025715, 40.015778, 48.634190>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.507217, 40.668648, 48.941746>,  <37.699608, 40.166351, 48.519318>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.507217, 40.668648, 48.941746> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234882, 40.383495, 49.008999>,  <37.071484, 40.212406, 49.049351>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.234882, 40.383495, 49.008999>,  <37.507217, 40.668648, 48.941746>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.234882, 40.383495, 49.008999> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020040, 0.247600, 0.968655,
		-0.732163, 0.656125, -0.182861,
		-0.680835, -0.712878, 0.168135,
		37.030632, 40.169632, 49.059441>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.128895, 40.873096, 49.593754>,  <37.507217, 40.668648, 48.941746>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.128895, 40.873096, 49.593754> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027061, 40.486923, 49.571373>,  <36.965961, 40.255219, 49.557945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.027061, 40.486923, 49.571373>,  <37.128895, 40.873096, 49.593754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.027061, 40.486923, 49.571373> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.059605, -0.042088, 0.997334,
		-0.965212, 0.257241, -0.046829,
		-0.254584, -0.965430, -0.055957,
		36.950687, 40.197292, 49.554585>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.526157, 40.677719, 49.902420>,  <37.128895, 40.873096, 49.593754>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.526157, 40.677719, 49.902420> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693687, 40.318359, 49.955292>,  <36.794205, 40.102745, 49.987015>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.693687, 40.318359, 49.955292>,  <36.526157, 40.677719, 49.902420>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693687, 40.318359, 49.955292> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.053471, 0.120908, 0.991223,
		-0.906492, -0.422215, 0.002601,
		0.418823, -0.898396, 0.132178,
		36.819336, 40.048840, 49.994946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101257, 40.029667, 50.282299>,  <36.526157, 40.677719, 49.902420>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101257, 40.029667, 50.282299> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493889, 39.973026, 50.333611>,  <36.729469, 39.939041, 50.364395>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.493889, 39.973026, 50.333611>,  <36.101257, 40.029667, 50.282299>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.493889, 39.973026, 50.333611> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160217, -0.244241, 0.956387,
		-0.104089, -0.959321, -0.262428,
		0.981578, -0.141595, 0.128277,
		36.788361, 39.930546, 50.372093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.512947, 40.630737, 50.484341>,  <36.101257, 40.029667, 50.282299>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.512947, 40.630737, 50.484341> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.158398, 40.488434, 50.602848>,  <34.945667, 40.403053, 50.673954>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.158398, 40.488434, 50.602848>,  <35.512947, 40.630737, 50.484341>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.158398, 40.488434, 50.602848> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.234255, -0.207337, -0.949808,
		0.399331, -0.911288, 0.100439,
		-0.886374, -0.355760, 0.296270,
		34.892487, 40.381706, 50.691730>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.316364, 40.015030, 50.066792>,  <35.512947, 40.630737, 50.484341>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.316364, 40.015030, 50.066792> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971828, 40.131039, 50.233631>,  <34.765106, 40.200645, 50.333736>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.971828, 40.131039, 50.233631>,  <35.316364, 40.015030, 50.066792>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.971828, 40.131039, 50.233631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434240, 0.005811, -0.900778,
		-0.263669, -0.957002, 0.120934,
		-0.861345, 0.290022, 0.417101,
		34.713425, 40.218044, 50.358761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.793655, 39.571972, 49.911404>,  <35.316364, 40.015030, 50.066792>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.793655, 39.571972, 49.911404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636391, 39.938839, 49.937412>,  <34.542030, 40.158958, 49.953018>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.636391, 39.938839, 49.937412>,  <34.793655, 39.571972, 49.911404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.636391, 39.938839, 49.937412> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327447, -0.073582, -0.942000,
		-0.859187, -0.391650, 0.329254,
		-0.393162, 0.917167, 0.065024,
		34.518440, 40.213989, 49.956921>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.058495, 39.481293, 49.658566>,  <34.793655, 39.571972, 49.911404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.058495, 39.481293, 49.658566> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132587, 39.874199, 49.647003>,  <34.177044, 40.109943, 49.640068>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.132587, 39.874199, 49.647003>,  <34.058495, 39.481293, 49.658566>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.132587, 39.874199, 49.647003> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.446685, 0.057962, -0.892812,
		-0.875307, 0.178286, 0.449501,
		0.185230, 0.982270, -0.028904,
		34.188156, 40.168880, 49.638332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.593449, 39.565632, 49.158951>,  <34.058495, 39.481293, 49.658566>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.593449, 39.565632, 49.158951> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788460, 39.909927, 49.217525>,  <33.905468, 40.116505, 49.252670>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.788460, 39.909927, 49.217525>,  <33.593449, 39.565632, 49.158951>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.788460, 39.909927, 49.217525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.187860, 0.267205, -0.945151,
		-0.852656, 0.433279, 0.291969,
		0.487530, 0.860738, 0.146438,
		33.934719, 40.168148, 49.261456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.117867, 40.139229, 49.048382>,  <33.593449, 39.565632, 49.158951>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.117867, 40.139229, 49.048382> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490177, 40.271175, 48.985340>,  <33.713562, 40.350346, 48.947514>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.490177, 40.271175, 48.985340>,  <33.117867, 40.139229, 49.048382>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.490177, 40.271175, 48.985340> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.216669, 0.150510, -0.964573,
		-0.294463, 0.931951, 0.211564,
		0.930777, 0.329870, -0.157605,
		33.769409, 40.370136, 48.938057>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.029232, 40.678936, 48.525490>,  <33.117867, 40.139229, 49.048382>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.029232, 40.678936, 48.525490> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.407539, 40.550793, 48.503967>,  <33.634521, 40.473907, 48.491055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.407539, 40.550793, 48.503967>,  <33.029232, 40.678936, 48.525490>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.407539, 40.550793, 48.503967> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036055, 0.061082, -0.997481,
		0.322840, 0.945324, 0.046219,
		0.945767, -0.320360, -0.053804,
		33.691269, 40.454685, 48.487827>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.366116, 41.174561, 48.044182>,  <33.029232, 40.678936, 48.525490>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.366116, 41.174561, 48.044182> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598408, 40.849426, 48.062283>,  <33.737782, 40.654346, 48.073143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.598408, 40.849426, 48.062283>,  <33.366116, 41.174561, 48.044182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.598408, 40.849426, 48.062283> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.015310, -0.044672, -0.998884,
		0.813955, 0.580771, -0.013498,
		0.580726, -0.812840, 0.045252,
		33.772625, 40.605576, 48.075859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.863758, 41.348824, 47.509167>,  <33.366116, 41.174561, 48.044182>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.863758, 41.348824, 47.509167> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871204, 40.956112, 47.584820>,  <33.875671, 40.720486, 47.630211>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.871204, 40.956112, 47.584820>,  <33.863758, 41.348824, 47.509167>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.871204, 40.956112, 47.584820> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.017466, -0.188820, -0.981856,
		0.999674, 0.021577, 0.013634,
		0.018612, -0.981774, 0.189136,
		33.876789, 40.661579, 47.641560>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.386578, 41.065514, 47.183434>,  <33.863758, 41.348824, 47.509167>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.386578, 41.065514, 47.183434> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192059, 40.718277, 47.223309>,  <34.075348, 40.509937, 47.247234>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.192059, 40.718277, 47.223309>,  <34.386578, 41.065514, 47.183434>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.192059, 40.718277, 47.223309> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378704, -0.312200, -0.871272,
		0.787462, -0.385947, 0.480571,
		-0.486299, -0.868088, 0.099686,
		34.046169, 40.457851, 47.253216>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.875023, 40.572464, 47.081432>,  <34.386578, 41.065514, 47.183434>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.875023, 40.572464, 47.081432> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525806, 40.389702, 47.013264>,  <34.316277, 40.280045, 46.972363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.525806, 40.389702, 47.013264>,  <34.875023, 40.572464, 47.081432>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.525806, 40.389702, 47.013264> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299347, -0.226254, -0.926931,
		0.384960, -0.860261, 0.334301,
		-0.873039, -0.456903, -0.170418,
		34.263893, 40.252632, 46.962139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.996609, 39.948895, 46.702797>,  <34.875023, 40.572464, 47.081432>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.996609, 39.948895, 46.702797> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604424, 39.980965, 46.630943>,  <34.369114, 40.000206, 46.587833>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.604424, 39.980965, 46.630943>,  <34.996609, 39.948895, 46.702797>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.604424, 39.980965, 46.630943> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143007, -0.336513, -0.930757,
		-0.135069, -0.938260, 0.318473,
		-0.980462, 0.080172, -0.179630,
		34.310284, 40.005016, 46.577053>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.785381, 39.330940, 46.447151>,  <34.996609, 39.948895, 46.702797>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.785381, 39.330940, 46.447151> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518307, 39.590649, 46.301468>,  <34.358063, 39.746471, 46.214058>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.518307, 39.590649, 46.301468>,  <34.785381, 39.330940, 46.447151>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.518307, 39.590649, 46.301468> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.104705, -0.402474, -0.909424,
		-0.737047, -0.645340, 0.200743,
		-0.667682, 0.649269, -0.364212,
		34.318001, 39.785431, 46.192204>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.296867, 38.970390, 46.098278>,  <34.785381, 39.330940, 46.447151>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.296867, 38.970390, 46.098278> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272736, 39.330872, 45.926609>,  <34.258255, 39.547161, 45.823608>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.272736, 39.330872, 45.926609>,  <34.296867, 38.970390, 46.098278>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.272736, 39.330872, 45.926609> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.051038, -0.432181, -0.900341,
		-0.996873, -0.032414, 0.072070,
		-0.060331, 0.901204, -0.429175,
		34.254635, 39.601234, 45.797855>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.538658, 38.595081, 46.175152>,  <34.296867, 38.970390, 46.098278>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.538658, 38.595081, 46.175152> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556839, 38.211952, 46.288651>,  <33.567749, 37.982075, 46.356750>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.556839, 38.211952, 46.288651>,  <33.538658, 38.595081, 46.175152>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.556839, 38.211952, 46.288651> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.218252, 0.286699, 0.932829,
		-0.974833, 0.019527, 0.222078,
		0.045454, -0.957822, 0.283746,
		33.570477, 37.924606, 46.373775>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293533, 38.549332, 46.891720>,  <33.538658, 38.595081, 46.175152>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293533, 38.549332, 46.891720> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455582, 38.183693, 46.884811>,  <33.552811, 37.964310, 46.880665>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.455582, 38.183693, 46.884811>,  <33.293533, 38.549332, 46.891720>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.455582, 38.183693, 46.884811> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.193988, 0.067481, 0.978680,
		-0.893445, -0.399838, 0.204663,
		0.405124, -0.914099, -0.017274,
		33.577118, 37.909462, 46.879631>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.144051, 38.261196, 47.537388>,  <33.293533, 38.549332, 46.891720>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.144051, 38.261196, 47.537388> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466068, 38.069656, 47.397324>,  <33.659279, 37.954731, 47.313286>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.466068, 38.069656, 47.397324>,  <33.144051, 38.261196, 47.537388>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.466068, 38.069656, 47.397324> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400967, 0.004218, 0.916083,
		-0.437188, -0.877887, 0.195398,
		0.805041, -0.478849, -0.350160,
		33.707581, 37.926003, 47.292274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.120575, 37.558670, 47.777740>,  <33.144051, 38.261196, 47.537388>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.120575, 37.558670, 47.777740> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513088, 37.575794, 47.702648>,  <33.748596, 37.586067, 47.657593>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.513088, 37.575794, 47.702648>,  <33.120575, 37.558670, 47.777740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.513088, 37.575794, 47.702648> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190216, -0.366960, 0.910581,
		-0.029912, -0.929251, -0.368236,
		0.981286, 0.042807, -0.187735,
		33.807472, 37.588634, 47.646328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.407204, 36.993645, 48.076626>,  <33.120575, 37.558670, 47.777740>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.407204, 36.993645, 48.076626> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722183, 37.235584, 48.029160>,  <33.911171, 37.380749, 48.000679>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.722183, 37.235584, 48.029160>,  <33.407204, 36.993645, 48.076626>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.722183, 37.235584, 48.029160> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.371637, -0.312302, 0.874273,
		0.491747, -0.732544, -0.470706,
		0.787446, 0.604853, -0.118667,
		33.958416, 37.417042, 47.993561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.019951, 36.558365, 48.198982>,  <33.407204, 36.993645, 48.076626>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.019951, 36.558365, 48.198982> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105488, 36.944965, 48.255745>,  <34.156811, 37.176926, 48.289803>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.105488, 36.944965, 48.255745>,  <34.019951, 36.558365, 48.198982>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.105488, 36.944965, 48.255745> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.329554, -0.208130, 0.920910,
		0.919600, -0.150167, -0.363024,
		0.213846, 0.966505, 0.141908,
		34.169643, 37.234917, 48.298317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.551079, 36.516457, 48.690998>,  <34.019951, 36.558365, 48.198982>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.551079, 36.516457, 48.690998> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.439056, 36.900284, 48.702282>,  <34.371845, 37.130581, 48.709053>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.439056, 36.900284, 48.702282>,  <34.551079, 36.516457, 48.690998>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439056, 36.900284, 48.702282> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.325023, 0.067128, 0.943321,
		0.903289, 0.273347, -0.330681,
		-0.280052, 0.959570, 0.028208,
		34.355042, 37.188156, 48.710743>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.092918, 36.051731, 48.638500>,  <34.551079, 36.516457, 48.690998>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.092918, 36.051731, 48.638500> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132248, 35.680115, 48.781174>,  <35.155846, 35.457146, 48.866779>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.132248, 35.680115, 48.781174>,  <35.092918, 36.051731, 48.638500>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.132248, 35.680115, 48.781174> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190415, -0.369359, -0.909569,
		0.976768, 0.021511, -0.213218,
		0.098320, -0.929038, 0.356682,
		35.161743, 35.401405, 48.888180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.611599, 35.699318, 48.265869>,  <35.092918, 36.051731, 48.638500>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.611599, 35.699318, 48.265869> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360577, 35.430035, 48.422314>,  <35.209965, 35.268467, 48.516182>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.360577, 35.430035, 48.422314>,  <35.611599, 35.699318, 48.265869>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.360577, 35.430035, 48.422314> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.065036, -0.455261, -0.887980,
		0.775851, -0.582693, 0.241919,
		-0.627556, -0.673206, 0.391111,
		35.172310, 35.228073, 48.539646>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.838200, 35.088932, 47.896122>,  <35.611599, 35.699318, 48.265869>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.838200, 35.088932, 47.896122> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492191, 34.995266, 48.073620>,  <35.284588, 34.939068, 48.180119>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.492191, 34.995266, 48.073620>,  <35.838200, 35.088932, 47.896122>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.492191, 34.995266, 48.073620> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.200933, -0.648719, -0.734023,
		0.459746, -0.724107, 0.514104,
		-0.865020, -0.234164, 0.443743,
		35.232685, 34.925018, 48.206741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.753593, 34.331295, 47.849319>,  <35.838200, 35.088932, 47.896122>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.753593, 34.331295, 47.849319> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386055, 34.487408, 47.872662>,  <35.165531, 34.581078, 47.886669>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.386055, 34.487408, 47.872662>,  <35.753593, 34.331295, 47.849319>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.386055, 34.487408, 47.872662> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.275446, -0.528392, -0.803076,
		-0.282592, -0.753975, 0.593012,
		-0.918842, 0.390286, 0.058360,
		35.110401, 34.604492, 47.890171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.240471, 33.785130, 47.771854>,  <35.753593, 34.331295, 47.849319>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.240471, 33.785130, 47.771854> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039734, 34.110771, 47.654968>,  <34.919292, 34.306156, 47.584839>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.039734, 34.110771, 47.654968>,  <35.240471, 33.785130, 47.771854>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.039734, 34.110771, 47.654968> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374071, -0.508879, -0.775315,
		-0.779888, -0.279777, 0.559910,
		-0.501842, 0.814105, -0.292213,
		34.889183, 34.355003, 47.567303>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.524364, 33.601803, 47.704227>,  <35.240471, 33.785130, 47.771854>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.524364, 33.601803, 47.704227> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533508, 33.943695, 47.496803>,  <34.538994, 34.148830, 47.372349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.533508, 33.943695, 47.496803>,  <34.524364, 33.601803, 47.704227>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.533508, 33.943695, 47.496803> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.535830, -0.427429, -0.728141,
		-0.844016, 0.294504, 0.448223,
		0.022857, 0.854735, -0.518561,
		34.540367, 34.200115, 47.341236>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.932137, 33.592884, 47.377628>,  <34.524364, 33.601803, 47.704227>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.932137, 33.592884, 47.377628> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153759, 33.856529, 47.174217>,  <34.286732, 34.014717, 47.052170>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.153759, 33.856529, 47.174217>,  <33.932137, 33.592884, 47.377628>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.153759, 33.856529, 47.174217> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.339518, -0.378836, -0.860936,
		-0.760100, 0.649658, 0.013885,
		0.554054, 0.659111, -0.508524,
		34.319977, 34.054264, 47.021660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 9

// nucleotide -1

// particle -1
sphere {
	<37.507809, 36.653954, 50.128906> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.302620, 36.961040, 49.975296>,  <37.179508, 37.145290, 49.883129>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.302620, 36.961040, 49.975296>,  <37.507809, 36.653954, 50.128906>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.302620, 36.961040, 49.975296> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.123428, -0.376758, -0.918052,
		-0.849486, -0.518333, 0.098509,
		-0.512971, 0.767713, -0.384028,
		37.148727, 37.191353, 49.860088>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.070473, 36.389660, 49.695263>,  <37.507809, 36.653954, 50.128906>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.070473, 36.389660, 49.695263> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.127914, 36.756905, 49.547508>,  <37.162380, 36.977253, 49.458855>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.127914, 36.756905, 49.547508>,  <37.070473, 36.389660, 49.695263>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.127914, 36.756905, 49.547508> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.161011, -0.389953, -0.906649,
		-0.976450, 0.070723, -0.203825,
		0.143603, 0.918115, -0.369382,
		37.170994, 37.032341, 49.436695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.636826, 36.411613, 49.156788>,  <37.070473, 36.389660, 49.695263>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.636826, 36.411613, 49.156788> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.921314, 36.682983, 49.083145>,  <37.092007, 36.845806, 49.038960>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.921314, 36.682983, 49.083145>,  <36.636826, 36.411613, 49.156788>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.921314, 36.682983, 49.083145> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.243529, -0.483469, -0.840804,
		-0.659434, 0.553166, -0.509072,
		0.711224, 0.678429, -0.184104,
		37.134682, 36.886513, 49.027912>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.624794, 36.461212, 48.444336>,  <36.636826, 36.411613, 49.156788>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.624794, 36.461212, 48.444336> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.981773, 36.612003, 48.543468>,  <37.195961, 36.702477, 48.602947>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.981773, 36.612003, 48.543468>,  <36.624794, 36.461212, 48.444336>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.981773, 36.612003, 48.543468> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425333, -0.519925, -0.740790,
		-0.150406, 0.766529, -0.624348,
		0.892451, 0.376976, 0.247830,
		37.249508, 36.725098, 48.617817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.855316, 36.846191, 47.814495>,  <36.624794, 36.461212, 48.444336>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.855316, 36.846191, 47.814495> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.185505, 36.774097, 48.028454>,  <37.383617, 36.730843, 48.156830>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.185505, 36.774097, 48.028454>,  <36.855316, 36.846191, 47.814495>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.185505, 36.774097, 48.028454> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409408, -0.461189, -0.787204,
		0.388572, 0.868804, -0.306907,
		0.825468, -0.180235, 0.534900,
		37.433144, 36.720028, 48.188923>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.401535, 37.112259, 47.401363>,  <36.855316, 36.846191, 47.814495>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.401535, 37.112259, 47.401363> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587051, 36.861362, 47.651630>,  <37.698360, 36.710823, 47.801792>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.587051, 36.861362, 47.651630>,  <37.401535, 37.112259, 47.401363>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.587051, 36.861362, 47.651630> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294599, -0.556844, -0.776619,
		0.835528, 0.544513, -0.073476,
		0.463793, -0.627241, 0.625672,
		37.726189, 36.673191, 47.839333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.110409, 37.010433, 47.134945>,  <37.401535, 37.112259, 47.401363>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.110409, 37.010433, 47.134945> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.096378, 36.697128, 47.383224>,  <38.087959, 36.509144, 47.532192>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.096378, 36.697128, 47.383224>,  <38.110409, 37.010433, 47.134945>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.096378, 36.697128, 47.383224> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395608, -0.581234, -0.711099,
		0.917749, 0.220612, 0.330252,
		-0.035077, -0.783261, 0.620703,
		38.085854, 36.462151, 47.569435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.722294, 36.653763, 47.142406>,  <38.110409, 37.010433, 47.134945>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.722294, 36.653763, 47.142406> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.447018, 36.382755, 47.246223>,  <38.281853, 36.220150, 47.308514>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.447018, 36.382755, 47.246223>,  <38.722294, 36.653763, 47.142406>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.447018, 36.382755, 47.246223> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.269530, -0.570868, -0.775541,
		0.673611, -0.463762, 0.575476,
		-0.688187, -0.677521, 0.259545,
		38.240562, 36.179501, 47.324085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.982906, 36.065884, 46.940117>,  <38.722294, 36.653763, 47.142406>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.982906, 36.065884, 46.940117> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.607090, 35.941303, 46.997066>,  <38.381599, 35.866554, 47.031235>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.607090, 35.941303, 46.997066>,  <38.982906, 36.065884, 46.940117>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.607090, 35.941303, 46.997066> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.085595, -0.616139, -0.782973,
		0.331576, -0.723446, 0.605544,
		-0.939538, -0.311447, 0.142373,
		38.325230, 35.847870, 47.039780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.991577, 35.307487, 46.878628>,  <38.982906, 36.065884, 46.940117>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.991577, 35.307487, 46.878628> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.614380, 35.420052, 46.807560>,  <38.388062, 35.487591, 46.764919>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.614380, 35.420052, 46.807560>,  <38.991577, 35.307487, 46.878628>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.614380, 35.420052, 46.807560> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.041803, -0.629787, -0.775642,
		-0.330163, -0.724002, 0.605652,
		-0.942998, 0.281407, -0.177667,
		38.331482, 35.504475, 46.754261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.614643, 34.729427, 46.873928>,  <38.991577, 35.307487, 46.878628>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.614643, 34.729427, 46.873928> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.386795, 34.997738, 46.683945>,  <38.250088, 35.158726, 46.569954>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.386795, 34.997738, 46.683945>,  <38.614643, 34.729427, 46.873928>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.386795, 34.997738, 46.683945> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.033029, -0.558728, -0.828693,
		-0.821245, -0.487727, 0.296107,
		-0.569619, 0.670780, -0.474962,
		38.215908, 35.198971, 46.541454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.293293, 34.275265, 46.433395>,  <38.614643, 34.729427, 46.873928>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.293293, 34.275265, 46.433395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.226788, 34.634201, 46.269871>,  <38.186886, 34.849564, 46.171757>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.226788, 34.634201, 46.269871>,  <38.293293, 34.275265, 46.433395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.226788, 34.634201, 46.269871> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.166513, -0.434179, -0.885303,
		-0.971921, -0.079118, 0.221606,
		-0.166260, 0.897345, -0.408814,
		38.176910, 34.903404, 46.147228>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.737015, 34.055405, 46.789894>,  <38.293293, 34.275265, 46.433395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.737015, 34.055405, 46.789894> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.474400, 33.761990, 46.719597>,  <37.316830, 33.585941, 46.677418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.474400, 33.761990, 46.719597>,  <37.737015, 34.055405, 46.789894>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474400, 33.761990, 46.719597> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.223740, -0.033118, 0.974086,
		-0.720345, 0.678845, -0.142378,
		-0.656539, -0.733534, -0.175741,
		37.277439, 33.541931, 46.666874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.102573, 34.275845, 47.184418>,  <37.737015, 34.055405, 46.789894>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.102573, 34.275845, 47.184418> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.134251, 33.884232, 47.109352>,  <37.153259, 33.649261, 47.064312>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.134251, 33.884232, 47.109352>,  <37.102573, 34.275845, 47.184418>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.134251, 33.884232, 47.109352> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180497, -0.199225, 0.963188,
		-0.980382, -0.042407, -0.192491,
		0.079195, -0.979036, -0.187662,
		37.158009, 33.590519, 47.053055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.460251, 34.042992, 47.334747>,  <37.102573, 34.275845, 47.184418>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.460251, 34.042992, 47.334747> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740456, 33.759525, 47.368412>,  <36.908577, 33.589447, 47.388611>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.740456, 33.759525, 47.368412>,  <36.460251, 34.042992, 47.334747>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.740456, 33.759525, 47.368412> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.212512, -0.094568, 0.972572,
		-0.681269, -0.699179, -0.216845,
		0.700508, -0.708665, 0.084158,
		36.950607, 33.546925, 47.393658>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.209023, 33.481262, 47.903770>,  <36.460251, 34.042992, 47.334747>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.209023, 33.481262, 47.903770> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603050, 33.420341, 47.871685>,  <36.839466, 33.383789, 47.852432>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.603050, 33.420341, 47.871685>,  <36.209023, 33.481262, 47.903770>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.603050, 33.420341, 47.871685> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.065608, -0.098640, 0.992958,
		-0.159144, -0.983399, -0.087175,
		0.985073, -0.152304, -0.080216,
		36.898571, 33.374653, 47.847622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.397106, 33.097065, 48.512524>,  <36.209023, 33.481262, 47.903770>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.397106, 33.097065, 48.512524> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.752945, 33.219978, 48.377354>,  <36.966450, 33.293724, 48.296249>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.752945, 33.219978, 48.377354>,  <36.397106, 33.097065, 48.512524>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.752945, 33.219978, 48.377354> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287861, 0.197235, 0.937142,
		0.354617, -0.930955, 0.087005,
		0.889597, 0.307281, -0.337928,
		37.019825, 33.312164, 48.275974>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.832581, 32.741959, 48.873470>,  <36.397106, 33.097065, 48.512524>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.832581, 32.741959, 48.873470> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061039, 33.048500, 48.755821>,  <37.198112, 33.232426, 48.685234>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.061039, 33.048500, 48.755821>,  <36.832581, 32.741959, 48.873470>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.061039, 33.048500, 48.755821> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.306480, 0.133312, 0.942496,
		0.761490, -0.628440, -0.158731,
		0.571141, 0.766349, -0.294120,
		37.232380, 33.278404, 48.667583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.560814, 32.659481, 49.142887>,  <36.832581, 32.741959, 48.873470>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.560814, 32.659481, 49.142887> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.499931, 33.048458, 49.072254>,  <37.463402, 33.281845, 49.029873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.499931, 33.048458, 49.072254>,  <37.560814, 32.659481, 49.142887>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.499931, 33.048458, 49.072254> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.467903, 0.228273, 0.853790,
		0.870575, 0.047326, -0.489755,
		-0.152205, 0.972446, -0.176585,
		37.454269, 33.340191, 49.019279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.209778, 32.971294, 49.265388>,  <37.560814, 32.659481, 49.142887>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.209778, 32.971294, 49.265388> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.952377, 33.277077, 49.280991>,  <37.797939, 33.460545, 49.290352>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.952377, 33.277077, 49.280991>,  <38.209778, 32.971294, 49.265388>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.952377, 33.277077, 49.280991> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.316485, 0.219320, 0.922895,
		0.696955, 0.606227, -0.383070,
		-0.643499, 0.764453, 0.039006,
		37.759327, 33.506413, 49.292694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.574043, 33.559998, 49.496857>,  <38.209778, 32.971294, 49.265388>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.574043, 33.559998, 49.496857> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201889, 33.668781, 49.595188>,  <37.978596, 33.734051, 49.654186>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.201889, 33.668781, 49.595188>,  <38.574043, 33.559998, 49.496857>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.201889, 33.668781, 49.595188> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362942, 0.588957, 0.722082,
		0.051594, 0.761032, -0.646659,
		-0.930382, 0.271955, 0.245824,
		37.922775, 33.750366, 49.668934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.483528, 34.313751, 49.434395>,  <38.574043, 33.559998, 49.496857>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.483528, 34.313751, 49.434395> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.198452, 34.194294, 49.688286>,  <38.027405, 34.122620, 49.840622>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.198452, 34.194294, 49.688286>,  <38.483528, 34.313751, 49.434395>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.198452, 34.194294, 49.688286> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274457, 0.713998, 0.644112,
		-0.645555, 0.633259, -0.426897,
		-0.712693, -0.298645, 0.634728,
		37.984646, 34.104702, 49.878704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.312805, 34.900036, 49.684341>,  <38.483528, 34.313751, 49.434395>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.312805, 34.900036, 49.684341> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.184280, 34.624817, 49.944603>,  <38.107166, 34.459686, 50.100761>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<38.184280, 34.624817, 49.944603>,  <38.312805, 34.900036, 49.684341>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<38.184280, 34.624817, 49.944603> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.213966, 0.616571, 0.757666,
		-0.922484, 0.382665, -0.050893,
		-0.321312, -0.688046, 0.650655,
		38.087887, 34.418404, 50.139801>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.844700, 35.273621, 50.139690>,  <38.312805, 34.900036, 49.684341>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.844700, 35.273621, 50.139690> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.963745, 34.959541, 50.356903>,  <38.035172, 34.771095, 50.487232>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.963745, 34.959541, 50.356903>,  <37.844700, 35.273621, 50.139690>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.963745, 34.959541, 50.356903> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277872, 0.615430, 0.737586,
		-0.913352, -0.068623, 0.401347,
		0.297616, -0.785198, 0.543036,
		38.053032, 34.723980, 50.519814>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.528687, 35.338875, 50.843594>,  <37.844700, 35.273621, 50.139690>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.528687, 35.338875, 50.843594> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825199, 35.087700, 50.938419>,  <38.003109, 34.936996, 50.995316>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.825199, 35.087700, 50.938419>,  <37.528687, 35.338875, 50.843594>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.825199, 35.087700, 50.938419> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.222221, 0.562885, 0.796102,
		-0.633338, -0.537457, 0.556798,
		0.741284, -0.627933, 0.237062,
		38.047585, 34.899319, 51.009537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.427048, 35.263660, 51.537331>,  <37.528687, 35.338875, 50.843594>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.427048, 35.263660, 51.537331> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.797726, 35.132423, 51.464020>,  <38.020134, 35.053680, 51.420033>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<37.797726, 35.132423, 51.464020>,  <37.427048, 35.263660, 51.537331>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797726, 35.132423, 51.464020> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.345607, 0.552440, 0.758529,
		-0.147618, -0.766267, 0.625335,
		0.926696, -0.328093, -0.183277,
		38.075733, 35.033997, 51.409039>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.808327, 34.730606, 51.389809>,  <37.427048, 35.263660, 51.537331>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.808327, 34.730606, 51.389809> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.564594, 35.043484, 51.441792>,  <36.418354, 35.231213, 51.472980>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.564594, 35.043484, 51.441792>,  <36.808327, 34.730606, 51.389809>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.564594, 35.043484, 51.441792> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.281830, -0.060451, -0.957558,
		-0.741142, -0.620092, 0.257281,
		-0.609328, 0.782197, 0.129957,
		36.381798, 35.278141, 51.480778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.213692, 34.534260, 51.031731>,  <36.808327, 34.730606, 51.389809>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.213692, 34.534260, 51.031731> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192455, 34.932549, 51.061966>,  <36.179714, 35.171524, 51.080109>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<36.192455, 34.932549, 51.061966>,  <36.213692, 34.534260, 51.031731>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<36.192455, 34.932549, 51.061966> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465582, 0.042286, -0.883994,
		-0.883411, -0.082124, 0.461346,
		-0.053089, 0.995725, 0.075591,
		36.176529, 35.231266, 51.084644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.542099, 34.693756, 50.915455>,  <36.213692, 34.534260, 51.031731>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.542099, 34.693756, 50.915455> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.729164, 35.042320, 50.856216>,  <35.841404, 35.251461, 50.820675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.729164, 35.042320, 50.856216>,  <35.542099, 34.693756, 50.915455>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.729164, 35.042320, 50.856216> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.575226, 0.172830, -0.799528,
		-0.671125, 0.459094, 0.582086,
		0.467661, 0.871414, -0.148092,
		35.869461, 35.303745, 50.811790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.030708, 35.120148, 50.863243>,  <35.542099, 34.693756, 50.915455>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.030708, 35.120148, 50.863243> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.351219, 35.278641, 50.683933>,  <35.543526, 35.373737, 50.576347>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.351219, 35.278641, 50.683933>,  <35.030708, 35.120148, 50.863243>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.351219, 35.278641, 50.683933> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.491540, 0.008822, -0.870811,
		-0.341085, 0.918110, 0.201830,
		0.801280, 0.396228, -0.448278,
		35.591602, 35.397511, 50.549450>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.823124, 35.676388, 50.568760>,  <35.030708, 35.120148, 50.863243>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.823124, 35.676388, 50.568760> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.163994, 35.611946, 50.369621>,  <35.368515, 35.573280, 50.250137>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.163994, 35.611946, 50.369621>,  <34.823124, 35.676388, 50.568760>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.163994, 35.611946, 50.369621> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.482637, 0.125563, -0.866773,
		0.202150, 0.978918, 0.029247,
		0.852172, -0.161102, -0.497844,
		35.419647, 35.563614, 50.220268>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.743740, 36.113113, 50.005291>,  <34.823124, 35.676388, 50.568760>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.743740, 36.113113, 50.005291> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.008427, 35.826923, 49.915642>,  <35.167236, 35.655209, 49.861851>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.008427, 35.826923, 49.915642>,  <34.743740, 36.113113, 50.005291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.008427, 35.826923, 49.915642> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405761, -0.090371, -0.909500,
		0.630471, 0.692768, -0.350111,
		0.661713, -0.715475, -0.224123,
		35.206940, 35.612282, 49.848404>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.939014, 36.206463, 49.312881>,  <34.743740, 36.113113, 50.005291>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.939014, 36.206463, 49.312881> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045586, 35.825352, 49.371155>,  <35.109528, 35.596684, 49.406116>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<35.045586, 35.825352, 49.371155>,  <34.939014, 36.206463, 49.312881>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<35.045586, 35.825352, 49.371155> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432374, -0.253227, -0.865407,
		0.861434, 0.167581, -0.479425,
		0.266429, -0.952782, 0.145680,
		35.125515, 35.539516, 49.414860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.094673, 36.890980, 49.030708>,  <34.939014, 36.206463, 49.312881>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.094673, 36.890980, 49.030708> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789745, 37.145687, 49.077003>,  <34.606789, 37.298512, 49.104782>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.789745, 37.145687, 49.077003>,  <35.094673, 36.890980, 49.030708>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.789745, 37.145687, 49.077003> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215851, 0.081557, 0.973014,
		0.610142, 0.766732, -0.199619,
		-0.762322, 0.636765, 0.115738,
		34.561050, 37.336716, 49.111725>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.332993, 37.496014, 49.450306>,  <35.094673, 36.890980, 49.030708>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.332993, 37.496014, 49.450306> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.933811, 37.510040, 49.471729>,  <34.694302, 37.518456, 49.484585>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.933811, 37.510040, 49.471729>,  <35.332993, 37.496014, 49.450306>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.933811, 37.510040, 49.471729> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061121, 0.273083, 0.960047,
		0.019035, 0.961351, -0.274666,
		-0.997949, 0.035062, 0.053561,
		34.634426, 37.520557, 49.487797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.146320, 38.105423, 49.891903>,  <35.332993, 37.496014, 49.450306>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.146320, 38.105423, 49.891903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.800655, 37.904633, 49.877769>,  <34.593258, 37.784157, 49.869289>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.800655, 37.904633, 49.877769>,  <35.146320, 38.105423, 49.891903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.800655, 37.904633, 49.877769> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105450, 0.111986, 0.988099,
		-0.492045, 0.857601, -0.149707,
		-0.864160, -0.501976, -0.035332,
		34.541409, 37.754040, 49.867168>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.621391, 38.606880, 50.196903>,  <35.146320, 38.105423, 49.891903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.621391, 38.606880, 50.196903> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.439938, 38.252132, 50.231934>,  <34.331066, 38.039284, 50.252953>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.439938, 38.252132, 50.231934>,  <34.621391, 38.606880, 50.196903>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.439938, 38.252132, 50.231934> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.252030, 0.221928, 0.941928,
		-0.854806, 0.405222, -0.324194,
		-0.453638, -0.886873, 0.087577,
		34.303844, 37.986069, 50.258205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.937344, 38.656303, 50.488873>,  <34.621391, 38.606880, 50.196903>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.937344, 38.656303, 50.488873> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064617, 38.286606, 50.573273>,  <34.140984, 38.064785, 50.623913>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<34.064617, 38.286606, 50.573273>,  <33.937344, 38.656303, 50.488873>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<34.064617, 38.286606, 50.573273> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337966, 0.097362, 0.936109,
		-0.885740, -0.369170, -0.281385,
		0.318187, -0.924248, 0.211005,
		34.160072, 38.009331, 50.636574>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.350197, 38.295803, 50.791615>,  <33.937344, 38.656303, 50.488873>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.350197, 38.295803, 50.791615> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.686092, 38.098560, 50.882542>,  <33.887630, 37.980213, 50.937099>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.686092, 38.098560, 50.882542>,  <33.350197, 38.295803, 50.791615>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.686092, 38.098560, 50.882542> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255265, 0.010986, 0.966809,
		-0.479240, -0.869898, -0.116648,
		0.839743, -0.493110, 0.227320,
		33.938015, 37.950626, 50.950737>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.173519, 37.949936, 51.436207>,  <33.350197, 38.295803, 50.791615>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.173519, 37.949936, 51.436207> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573254, 37.935402, 51.436260>,  <33.813095, 37.926682, 51.436291>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.573254, 37.935402, 51.436260>,  <33.173519, 37.949936, 51.436207>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.573254, 37.935402, 51.436260> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.004527, 0.128153, 0.991744,
		-0.036059, -0.991088, 0.128233,
		0.999340, -0.036341, 0.000134,
		33.873055, 37.924500, 51.436302>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.293816, 37.504631, 51.955357>,  <33.173519, 37.949936, 51.436207>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.293816, 37.504631, 51.955357> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636635, 37.703648, 51.901806>,  <33.842327, 37.823059, 51.869675>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.636635, 37.703648, 51.901806>,  <33.293816, 37.504631, 51.955357>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.636635, 37.703648, 51.901806> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.101336, 0.091986, 0.990590,
		0.505180, -0.862546, 0.028417,
		0.857044, 0.497546, -0.133877,
		33.893749, 37.852913, 51.861641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.838200, 37.211735, 52.499493>,  <33.293816, 37.504631, 51.955357>, 0.130000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.838200, 37.211735, 52.499493> 0.250000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.906982, 37.589642, 52.387894>,  <33.948254, 37.816387, 52.320934>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
cylinder {
	<33.906982, 37.589642, 52.387894>,  <33.838200, 37.211735, 52.499493>, 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}

// particle -1
sphere {
	<33.906982, 37.589642, 52.387894> 0.100000
	pigment { color rgbt <0.98,0.855,0.867,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.038404, 0.276570, 0.960226,
		0.984355, -0.175834, 0.011275,
		0.171959, 0.944770, -0.278996,
		33.958569, 37.873074, 52.304195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 10

// nucleotide -1

// particle -1
sphere {
	<34.071579, 34.946281, 36.518627> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375908, 35.205498, 36.504822>,  <34.558506, 35.361027, 36.496540>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.375908, 35.205498, 36.504822>,  <34.071579, 34.946281, 36.518627>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.375908, 35.205498, 36.504822> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114265, 0.186118, 0.975860,
		0.638825, -0.738510, 0.215651,
		0.760819, 0.648045, -0.034511,
		34.604153, 35.399910, 36.494469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.397137, 34.782391, 37.054958>,  <34.071579, 34.946281, 36.518627>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.397137, 34.782391, 37.054958> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513790, 35.159073, 36.987865>,  <34.583782, 35.385082, 36.947609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.513790, 35.159073, 36.987865>,  <34.397137, 34.782391, 37.054958>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.513790, 35.159073, 36.987865> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.143254, 0.216373, 0.965744,
		0.945741, -0.257618, 0.198006,
		0.291636, 0.941709, -0.167728,
		34.601280, 35.441586, 36.937546>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.797497, 34.997559, 37.660755>,  <34.397137, 34.782391, 37.054958>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.797497, 34.997559, 37.660755> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708172, 35.349834, 37.493656>,  <34.654575, 35.561203, 37.393398>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.708172, 35.349834, 37.493656>,  <34.797497, 34.997559, 37.660755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.708172, 35.349834, 37.493656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.099101, 0.405832, 0.908559,
		0.969696, 0.244291, -0.003349,
		-0.223312, 0.880694, -0.417743,
		34.641178, 35.614044, 37.368332>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.248951, 35.491169, 37.998524>,  <34.797497, 34.997559, 37.660755>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.248951, 35.491169, 37.998524> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953964, 35.719929, 37.854820>,  <34.776974, 35.857185, 37.768597>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.953964, 35.719929, 37.854820>,  <35.248951, 35.491169, 37.998524>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.953964, 35.719929, 37.854820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.114780, 0.418073, 0.901133,
		0.665559, 0.705791, -0.242671,
		-0.737466, 0.571904, -0.359263,
		34.732723, 35.891499, 37.747040>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.330620, 36.211143, 38.209240>,  <35.248951, 35.491169, 37.998524>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.330620, 36.211143, 38.209240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939503, 36.158016, 38.144382>,  <34.704834, 36.126141, 38.105469>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.939503, 36.158016, 38.144382>,  <35.330620, 36.211143, 38.209240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.939503, 36.158016, 38.144382> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.208902, 0.554733, 0.805376,
		-0.017019, 0.821360, -0.570157,
		-0.977789, -0.132814, -0.162142,
		34.646168, 36.118172, 38.095741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.068817, 36.720974, 38.453362>,  <35.330620, 36.211143, 38.209240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.068817, 36.720974, 38.453362> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736984, 36.502941, 38.404892>,  <34.537884, 36.372120, 38.375809>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.736984, 36.502941, 38.404892>,  <35.068817, 36.720974, 38.453362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.736984, 36.502941, 38.404892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367080, 0.368836, 0.853940,
		-0.420772, 0.752893, -0.506067,
		-0.829580, -0.545081, -0.121176,
		34.488110, 36.339417, 38.368538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.486706, 37.169476, 38.789925>,  <35.068817, 36.720974, 38.453362>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.486706, 37.169476, 38.789925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304348, 36.814007, 38.770226>,  <34.194935, 36.600727, 38.758404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.304348, 36.814007, 38.770226>,  <34.486706, 37.169476, 38.789925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.304348, 36.814007, 38.770226> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.436026, 0.174755, 0.882803,
		-0.775916, 0.423936, -0.467154,
		-0.455890, -0.888672, -0.049252,
		34.167580, 36.547405, 38.755451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.805763, 37.275063, 38.969833>,  <34.486706, 37.169476, 38.789925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.805763, 37.275063, 38.969833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873764, 36.884682, 39.024399>,  <33.914566, 36.650452, 39.057137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.873764, 36.884682, 39.024399>,  <33.805763, 37.275063, 38.969833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.873764, 36.884682, 39.024399> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.574861, 0.014212, 0.818128,
		-0.800395, -0.217503, -0.558623,
		0.170006, -0.975956, 0.136409,
		33.924767, 36.591896, 39.065323>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.121281, 36.903496, 39.129581>,  <33.805763, 37.275063, 38.969833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.121281, 36.903496, 39.129581> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403950, 36.661076, 39.275635>,  <33.573551, 36.515625, 39.363266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.403950, 36.661076, 39.275635>,  <33.121281, 36.903496, 39.129581>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.403950, 36.661076, 39.275635> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.452856, 0.009090, 0.891537,
		-0.543636, -0.795374, -0.268030,
		0.706669, -0.606051, 0.365132,
		33.615952, 36.479259, 39.385174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.802261, 36.385986, 39.344662>,  <33.121281, 36.903496, 39.129581>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.802261, 36.385986, 39.344662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144058, 36.349308, 39.549187>,  <33.349136, 36.327301, 39.671902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.144058, 36.349308, 39.549187>,  <32.802261, 36.385986, 39.344662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.144058, 36.349308, 39.549187> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.519057, -0.111746, 0.847403,
		-0.020563, -0.989498, -0.143079,
		0.854492, -0.091691, 0.511308,
		33.400406, 36.321800, 39.702579>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.693943, 35.803993, 39.887344>,  <32.802261, 36.385986, 39.344662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.693943, 35.803993, 39.887344> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014408, 35.999367, 40.025658>,  <33.206688, 36.116592, 40.108646>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.014408, 35.999367, 40.025658>,  <32.693943, 35.803993, 39.887344>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.014408, 35.999367, 40.025658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.255175, -0.243830, 0.935646,
		0.541313, -0.837842, -0.070712,
		0.801165, 0.488434, 0.345785,
		33.254757, 36.145897, 40.129395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.971710, 35.356510, 40.396862>,  <32.693943, 35.803993, 39.887344>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.971710, 35.356510, 40.396862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138481, 35.712299, 40.471706>,  <33.238544, 35.925774, 40.516613>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.138481, 35.712299, 40.471706>,  <32.971710, 35.356510, 40.396862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.138481, 35.712299, 40.471706> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.178614, -0.121664, 0.976368,
		0.891217, -0.440495, 0.108147,
		0.416928, 0.889473, 0.187108,
		33.263561, 35.979141, 40.527840>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.446781, 34.869968, 40.748108>,  <32.971710, 35.356510, 40.396862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.446781, 34.869968, 40.748108> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186111, 34.611790, 40.907471>,  <33.029709, 34.456882, 41.003086>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.186111, 34.611790, 40.907471>,  <33.446781, 34.869968, 40.748108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.186111, 34.611790, 40.907471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254440, -0.308797, -0.916463,
		0.714553, -0.698602, 0.037007,
		-0.651670, -0.645446, 0.398404,
		32.990612, 34.418156, 41.026993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.502430, 34.341694, 40.345833>,  <33.446781, 34.869968, 40.748108>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.502430, 34.341694, 40.345833> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145893, 34.254848, 40.505020>,  <32.931973, 34.202744, 40.600533>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.145893, 34.254848, 40.505020>,  <33.502430, 34.341694, 40.345833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.145893, 34.254848, 40.505020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.332562, -0.283440, -0.899480,
		0.308088, -0.934090, 0.180437,
		-0.891338, -0.217112, 0.397968,
		32.878490, 34.189716, 40.624409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.510109, 33.683792, 40.223537>,  <33.502430, 34.341694, 40.345833>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.510109, 33.683792, 40.223537> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127777, 33.790977, 40.271835>,  <32.898376, 33.855289, 40.300816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.127777, 33.790977, 40.271835>,  <33.510109, 33.683792, 40.223537>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.127777, 33.790977, 40.271835> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.243023, -0.489527, -0.837438,
		-0.165295, -0.829795, 0.533027,
		-0.955833, 0.267962, 0.120743,
		32.841026, 33.871365, 40.308060>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.175037, 33.011044, 40.113495>,  <33.510109, 33.683792, 40.223537>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.175037, 33.011044, 40.113495> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916538, 33.314648, 40.081841>,  <32.761440, 33.496811, 40.062847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.916538, 33.314648, 40.081841>,  <33.175037, 33.011044, 40.113495>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.916538, 33.314648, 40.081841> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.455365, -0.466754, -0.758145,
		-0.612378, -0.453916, 0.647267,
		-0.646249, 0.759013, -0.079132,
		32.722664, 33.542351, 40.058102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.581013, 32.693657, 40.141182>,  <33.175037, 33.011044, 40.113495>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.581013, 32.693657, 40.141182> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498081, 33.038708, 39.956623>,  <32.448322, 33.245739, 39.845886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.498081, 33.038708, 39.956623>,  <32.581013, 32.693657, 40.141182>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.498081, 33.038708, 39.956623> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.496641, -0.499160, -0.710061,
		-0.842829, 0.081930, 0.531909,
		-0.207333, 0.862628, -0.461397,
		32.435883, 33.297497, 39.818203>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.872650, 32.659798, 39.925800>,  <32.581013, 32.693657, 40.141182>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.872650, 32.659798, 39.925800> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053303, 32.943428, 39.709194>,  <32.161694, 33.113605, 39.579231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.053303, 32.943428, 39.709194>,  <31.872650, 32.659798, 39.925800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.053303, 32.943428, 39.709194> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340822, -0.423796, -0.839189,
		-0.824541, 0.563565, 0.050269,
		0.451633, 0.709078, -0.541512,
		32.188793, 33.156151, 39.546741>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433414, 32.789455, 39.366486>,  <31.872650, 32.659798, 39.925800>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433414, 32.789455, 39.366486> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792408, 32.934711, 39.266365>,  <32.007805, 33.021866, 39.206295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.792408, 32.934711, 39.266365>,  <31.433414, 32.789455, 39.366486>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.792408, 32.934711, 39.266365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.098861, -0.387436, -0.916581,
		-0.429824, 0.847362, -0.311817,
		0.897484, 0.363142, -0.250300,
		32.061653, 33.043655, 39.191277>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.334646, 33.112640, 38.664818>,  <31.433414, 32.789455, 39.366486>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.334646, 33.112640, 38.664818> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713852, 33.003311, 38.730007>,  <31.941376, 32.937714, 38.769123>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.713852, 33.003311, 38.730007>,  <31.334646, 33.112640, 38.664818>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.713852, 33.003311, 38.730007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020844, -0.564372, -0.825258,
		0.317546, 0.778959, -0.540729,
		0.948014, -0.273328, 0.162978,
		31.998257, 32.921314, 38.778900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.587507, 33.079685, 38.060101>,  <31.334646, 33.112640, 38.664818>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.587507, 33.079685, 38.060101> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862206, 32.857407, 38.247536>,  <32.027023, 32.724037, 38.359997>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.862206, 32.857407, 38.247536>,  <31.587507, 33.079685, 38.060101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.862206, 32.857407, 38.247536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.109129, -0.558521, -0.822280,
		0.718660, 0.615834, -0.322919,
		0.686746, -0.555700, 0.468592,
		32.068230, 32.690697, 38.388115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.157616, 32.944023, 37.612995>,  <31.587507, 33.079685, 38.060101>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.157616, 32.944023, 37.612995> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277534, 32.653091, 37.859936>,  <32.349487, 32.478535, 38.008099>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.277534, 32.653091, 37.859936>,  <32.157616, 32.944023, 37.612995>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.277534, 32.653091, 37.859936> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273748, -0.554314, -0.786001,
		0.913883, 0.404641, 0.032920,
		0.299800, -0.727325, 0.617348,
		32.367474, 32.434895, 38.045139>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.886997, 32.864758, 37.564011>,  <32.157616, 32.944023, 37.612995>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.886997, 32.864758, 37.564011> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734844, 32.522537, 37.704491>,  <32.643551, 32.317204, 37.788776>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.734844, 32.522537, 37.704491>,  <32.886997, 32.864758, 37.564011>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.734844, 32.522537, 37.704491> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118194, -0.421601, -0.899045,
		0.917246, -0.300471, 0.261491,
		-0.380382, -0.855552, 0.351198,
		32.620731, 32.265873, 37.809849>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.237831, 32.275089, 37.193378>,  <32.886997, 32.864758, 37.564011>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.237831, 32.275089, 37.193378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898857, 32.114586, 37.332428>,  <32.695473, 32.018284, 37.415859>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.898857, 32.114586, 37.332428>,  <33.237831, 32.275089, 37.193378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.898857, 32.114586, 37.332428> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.057885, -0.581056, -0.811803,
		0.527731, -0.708074, 0.469181,
		-0.847436, -0.401255, 0.347628,
		32.644627, 31.994209, 37.436718>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.406979, 31.653067, 37.444717>,  <33.237831, 32.275089, 37.193378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.406979, 31.653067, 37.444717> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019203, 31.625488, 37.350536>,  <32.786537, 31.608942, 37.294029>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.019203, 31.625488, 37.350536>,  <33.406979, 31.653067, 37.444717>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.019203, 31.625488, 37.350536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.215815, -0.696083, -0.684757,
		-0.116685, -0.714644, 0.689688,
		-0.969437, -0.068944, -0.235453,
		32.728371, 31.604805, 37.279900>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.271996, 30.990107, 37.444752>,  <33.406979, 31.653067, 37.444717>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.271996, 30.990107, 37.444752> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978607, 31.148504, 37.223770>,  <32.802574, 31.243544, 37.091179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.978607, 31.148504, 37.223770>,  <33.271996, 30.990107, 37.444752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.978607, 31.148504, 37.223770> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169684, -0.680365, -0.712959,
		-0.658201, -0.616678, 0.431833,
		-0.733470, 0.395995, -0.552457,
		32.758564, 31.267302, 37.058033>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.370422, 30.770521, 36.784489>,  <33.271996, 30.990107, 37.444752>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.370422, 30.770521, 36.784489> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996742, 30.906303, 36.740582>,  <32.772533, 30.987772, 36.714237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.996742, 30.906303, 36.740582>,  <33.370422, 30.770521, 36.784489>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.996742, 30.906303, 36.740582> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.077958, -0.494482, -0.865685,
		-0.348138, -0.800162, 0.488406,
		-0.934196, 0.339453, -0.109769,
		32.716484, 31.008139, 36.707649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.060905, 31.206442, 36.781700>,  <33.370422, 30.770521, 36.784489>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.060905, 31.206442, 36.781700> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374889, 31.440504, 36.700275>,  <34.563278, 31.580940, 36.651421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.374889, 31.440504, 36.700275>,  <34.060905, 31.206442, 36.781700>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.374889, 31.440504, 36.700275> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.508354, -0.420495, 0.751505,
		0.354148, -0.693382, -0.627535,
		0.784956, 0.585155, -0.203566,
		34.610374, 31.616051, 36.639206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.637627, 30.830742, 36.794582>,  <34.060905, 31.206442, 36.781700>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.637627, 30.830742, 36.794582> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798340, 31.194643, 36.836384>,  <34.894768, 31.412985, 36.861465>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.798340, 31.194643, 36.836384>,  <34.637627, 30.830742, 36.794582>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.798340, 31.194643, 36.836384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.585539, -0.342967, 0.734519,
		0.704073, -0.233923, -0.670493,
		0.401778, 0.909755, 0.104503,
		34.918873, 31.467569, 36.867733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.369133, 30.660067, 36.952946>,  <34.637627, 30.830742, 36.794582>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.369133, 30.660067, 36.952946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324898, 31.045488, 37.050381>,  <35.298355, 31.276741, 37.108841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.324898, 31.045488, 37.050381>,  <35.369133, 30.660067, 36.952946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.324898, 31.045488, 37.050381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458797, -0.167917, 0.872530,
		0.881632, 0.208246, -0.423506,
		-0.110587, 0.963554, 0.243584,
		35.291721, 31.334555, 37.123455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.917732, 30.871479, 37.347992>,  <35.369133, 30.660067, 36.952946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.917732, 30.871479, 37.347992> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626991, 31.126839, 37.449295>,  <35.452549, 31.280054, 37.510078>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.626991, 31.126839, 37.449295>,  <35.917732, 30.871479, 37.347992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.626991, 31.126839, 37.449295> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.274302, -0.068222, 0.959221,
		0.629641, 0.766678, -0.125526,
		-0.726850, 0.638397, 0.253257,
		35.408936, 31.318357, 37.525272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.179203, 31.198769, 37.987610>,  <35.917732, 30.871479, 37.347992>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.179203, 31.198769, 37.987610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791161, 31.293741, 37.967552>,  <35.558334, 31.350725, 37.955517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.791161, 31.293741, 37.967552>,  <36.179203, 31.198769, 37.987610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.791161, 31.293741, 37.967552> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.028271, 0.315815, 0.948399,
		0.241017, 0.918633, -0.313088,
		-0.970109, 0.237432, -0.050147,
		35.500130, 31.364971, 37.952507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.197193, 31.853100, 38.221722>,  <36.179203, 31.198769, 37.987610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.197193, 31.853100, 38.221722> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834602, 31.691412, 38.270569>,  <35.617050, 31.594400, 38.299877>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.834602, 31.691412, 38.270569>,  <36.197193, 31.853100, 38.221722>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.834602, 31.691412, 38.270569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.007161, 0.303871, 0.952686,
		-0.422200, 0.862711, -0.278346,
		-0.906474, -0.404217, 0.122116,
		35.562660, 31.570147, 38.307205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814060, 32.300640, 38.440159>,  <36.197193, 31.853100, 38.221722>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814060, 32.300640, 38.440159> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600849, 31.982138, 38.554600>,  <35.472923, 31.791037, 38.623264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.600849, 31.982138, 38.554600>,  <35.814060, 32.300640, 38.440159>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.600849, 31.982138, 38.554600> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.002330, 0.336759, 0.941588,
		-0.846093, 0.502561, -0.177647,
		-0.533030, -0.796257, 0.286100,
		35.440941, 31.743261, 38.640430>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.465672, 32.480999, 39.023224>,  <35.814060, 32.300640, 38.440159>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.465672, 32.480999, 39.023224> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473557, 32.081417, 39.039742>,  <35.478287, 31.841669, 39.049652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.473557, 32.081417, 39.039742>,  <35.465672, 32.480999, 39.023224>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.473557, 32.081417, 39.039742> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.262038, 0.045020, 0.964007,
		-0.964856, -0.008186, 0.262651,
		0.019716, -0.998953, 0.041292,
		35.479473, 31.781731, 39.052128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.062695, 32.330238, 39.584579>,  <35.465672, 32.480999, 39.023224>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.062695, 32.330238, 39.584579> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262543, 31.990065, 39.518684>,  <35.382454, 31.785961, 39.479145>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.262543, 31.990065, 39.518684>,  <35.062695, 32.330238, 39.584579>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.262543, 31.990065, 39.518684> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.214786, -0.062618, 0.974652,
		-0.839192, -0.522343, 0.151375,
		0.499624, -0.850433, -0.164741,
		35.412430, 31.734934, 39.469261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.867802, 31.772385, 40.109787>,  <35.062695, 32.330238, 39.584579>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.867802, 31.772385, 40.109787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239323, 31.678810, 39.994823>,  <35.462234, 31.622665, 39.925846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.239323, 31.678810, 39.994823>,  <34.867802, 31.772385, 40.109787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.239323, 31.678810, 39.994823> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.263431, -0.128669, 0.956059,
		-0.260638, -0.963700, -0.057882,
		0.928801, -0.233937, -0.287405,
		35.517963, 31.608629, 39.908604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.086880, 31.243031, 40.542740>,  <34.867802, 31.772385, 40.109787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.086880, 31.243031, 40.542740> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440052, 31.369312, 40.403740>,  <35.651955, 31.445082, 40.320339>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.440052, 31.369312, 40.403740>,  <35.086880, 31.243031, 40.542740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.440052, 31.369312, 40.403740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.392655, -0.090765, 0.915196,
		0.257391, -0.944506, -0.204102,
		0.882934, 0.315704, -0.347503,
		35.704933, 31.464024, 40.299488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.531807, 30.992746, 41.014194>,  <35.086880, 31.243031, 40.542740>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.531807, 30.992746, 41.014194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774799, 31.247211, 40.823925>,  <35.920593, 31.399891, 40.709763>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.774799, 31.247211, 40.823925>,  <35.531807, 30.992746, 41.014194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.774799, 31.247211, 40.823925> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.625514, -0.014017, 0.780087,
		0.489595, -0.771427, -0.406444,
		0.607477, 0.636163, -0.475676,
		35.957043, 31.438061, 40.681221>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.310097, 30.786978, 41.145367>,  <35.531807, 30.992746, 41.014194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.310097, 30.786978, 41.145367> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308754, 31.169216, 41.027500>,  <36.307949, 31.398560, 40.956779>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.308754, 31.169216, 41.027500>,  <36.310097, 30.786978, 41.145367>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.308754, 31.169216, 41.027500> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.597551, 0.238186, 0.765638,
		0.801824, -0.173510, -0.571815,
		-0.003353, 0.955595, -0.294664,
		36.307747, 31.455894, 40.939102>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.984772, 30.944899, 41.235352>,  <36.310097, 30.786978, 41.145367>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.984772, 30.944899, 41.235352> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762131, 31.277052, 41.225121>,  <36.628548, 31.476345, 41.218983>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.762131, 31.277052, 41.225121>,  <36.984772, 30.944899, 41.235352>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.762131, 31.277052, 41.225121> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444411, 0.323613, 0.835328,
		0.701921, 0.453580, -0.549156,
		-0.556602, 0.830385, -0.025574,
		36.595150, 31.526167, 41.217449>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.455147, 31.610905, 41.407787>,  <36.984772, 30.944899, 41.235352>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.455147, 31.610905, 41.407787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075771, 31.711792, 41.484573>,  <36.848145, 31.772324, 41.530643>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.075771, 31.711792, 41.484573>,  <37.455147, 31.610905, 41.407787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.075771, 31.711792, 41.484573> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.295505, 0.484588, 0.823317,
		0.114632, 0.837592, -0.534134,
		-0.948439, 0.252217, 0.191963,
		36.791241, 31.787457, 41.542164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466698, 32.274178, 41.716042>,  <37.455147, 31.610905, 41.407787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466698, 32.274178, 41.716042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111923, 32.133934, 41.836323>,  <36.899059, 32.049789, 41.908493>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.111923, 32.133934, 41.836323>,  <37.466698, 32.274178, 41.716042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.111923, 32.133934, 41.836323> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190726, 0.314942, 0.929750,
		-0.420685, 0.881977, -0.212461,
		-0.886932, -0.350610, 0.300707,
		36.845844, 32.028751, 41.926537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.277824, 32.667652, 42.292252>,  <37.466698, 32.274178, 41.716042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.277824, 32.667652, 42.292252> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994202, 32.392666, 42.355030>,  <36.824028, 32.227676, 42.392696>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.994202, 32.392666, 42.355030>,  <37.277824, 32.667652, 42.292252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.994202, 32.392666, 42.355030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.061931, 0.282427, 0.957288,
		-0.702425, 0.669052, -0.242833,
		-0.709058, -0.687462, 0.156949,
		36.781483, 32.186428, 42.402115>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.763615, 32.937775, 42.674671>,  <37.277824, 32.667652, 42.292252>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.763615, 32.937775, 42.674671> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693592, 32.549099, 42.738152>,  <36.651581, 32.315895, 42.776237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.693592, 32.549099, 42.738152>,  <36.763615, 32.937775, 42.674671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.693592, 32.549099, 42.738152> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.143193, 0.134346, 0.980534,
		-0.974090, 0.194371, 0.115621,
		-0.175054, -0.971685, 0.158697,
		36.641075, 32.257595, 42.785759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.101185, 32.857681, 42.966816>,  <36.763615, 32.937775, 42.674671>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.101185, 32.857681, 42.966816> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280407, 32.512424, 43.059971>,  <36.387939, 32.305271, 43.115864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.280407, 32.512424, 43.059971>,  <36.101185, 32.857681, 42.966816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.280407, 32.512424, 43.059971> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.074608, 0.223489, 0.971847,
		-0.890886, -0.452820, 0.035739,
		0.448059, -0.863138, 0.232887,
		36.414825, 32.253483, 43.129837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.617352, 32.429741, 43.324978>,  <36.101185, 32.857681, 42.966816>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.617352, 32.429741, 43.324978> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994381, 32.334759, 43.418934>,  <36.220600, 32.277771, 43.475307>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.994381, 32.334759, 43.418934>,  <35.617352, 32.429741, 43.324978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.994381, 32.334759, 43.418934> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.149693, 0.328356, 0.932617,
		-0.298580, -0.914220, 0.273954,
		0.942572, -0.237452, 0.234892,
		36.277153, 32.263523, 43.489403>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.586044, 32.392799, 44.100327>,  <35.617352, 32.429741, 43.324978>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.586044, 32.392799, 44.100327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982834, 32.383976, 44.050510>,  <36.220905, 32.378681, 44.020618>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982834, 32.383976, 44.050510>,  <35.586044, 32.392799, 44.100327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982834, 32.383976, 44.050510> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.126056, 0.252934, 0.959236,
		0.010344, -0.967232, 0.253683,
		0.991969, -0.022056, -0.124542,
		36.280426, 32.377361, 44.013149>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.931419, 32.044739, 44.600761>,  <35.586044, 32.392799, 44.100327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.931419, 32.044739, 44.600761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248558, 32.244907, 44.461639>,  <36.438843, 32.365009, 44.378166>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.248558, 32.244907, 44.461639>,  <35.931419, 32.044739, 44.600761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.248558, 32.244907, 44.461639> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277690, 0.211368, 0.937130,
		0.542476, -0.839584, 0.028620,
		0.792848, 0.500423, -0.347806,
		36.486412, 32.395035, 44.357296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.395443, 31.773706, 45.018372>,  <35.931419, 32.044739, 44.600761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.395443, 31.773706, 45.018372> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538170, 32.123222, 44.886208>,  <36.623806, 32.332932, 44.806908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.538170, 32.123222, 44.886208>,  <36.395443, 31.773706, 45.018372>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.538170, 32.123222, 44.886208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220165, 0.265073, 0.938756,
		0.907861, -0.407705, -0.097796,
		0.356813, 0.873792, -0.330412,
		36.645214, 32.385361, 44.787083>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.026009, 31.872091, 45.302544>,  <36.395443, 31.773706, 45.018372>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.026009, 31.872091, 45.302544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915424, 32.248055, 45.222404>,  <36.849072, 32.473633, 45.174320>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.915424, 32.248055, 45.222404>,  <37.026009, 31.872091, 45.302544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.915424, 32.248055, 45.222404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.221684, 0.265220, 0.938357,
		0.935107, 0.215008, -0.281687,
		-0.276463, 0.939910, -0.200346,
		36.832485, 32.530025, 45.162300>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.466900, 32.225025, 45.617031>,  <37.026009, 31.872091, 45.302544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.466900, 32.225025, 45.617031> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215134, 32.527081, 45.543709>,  <37.064072, 32.708313, 45.499714>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.215134, 32.527081, 45.543709>,  <37.466900, 32.225025, 45.617031>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.215134, 32.527081, 45.543709> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.284250, 0.443290, 0.850115,
		0.723211, 0.482973, -0.493663,
		-0.629418, 0.755136, -0.183308,
		37.026310, 32.753620, 45.488716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.802860, 32.863060, 45.629253>,  <37.466900, 32.225025, 45.617031>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.802860, 32.863060, 45.629253> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425320, 32.968739, 45.708599>,  <37.198795, 33.032146, 45.756207>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.425320, 32.968739, 45.708599>,  <37.802860, 32.863060, 45.629253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.425320, 32.968739, 45.708599> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.307926, 0.485966, 0.817935,
		0.119698, 0.833089, -0.540032,
		-0.943851, 0.264195, 0.198361,
		37.142166, 33.047997, 45.768108>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.937271, 33.475861, 45.928154>,  <37.802860, 32.863060, 45.629253>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.937271, 33.475861, 45.928154> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570026, 33.359375, 46.035679>,  <37.349678, 33.289482, 46.100193>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.570026, 33.359375, 46.035679>,  <37.937271, 33.475861, 45.928154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.570026, 33.359375, 46.035679> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.201151, 0.241999, 0.949197,
		-0.341470, 0.925544, -0.163605,
		-0.918116, -0.291213, 0.268810,
		37.294590, 33.272011, 46.116322>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.760357, 34.205246, 45.748363>,  <37.937271, 33.475861, 45.928154>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.760357, 34.205246, 45.748363> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917171, 34.571861, 45.716705>,  <38.011261, 34.791832, 45.697712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.917171, 34.571861, 45.716705>,  <37.760357, 34.205246, 45.748363>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.917171, 34.571861, 45.716705> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185016, -0.162824, -0.969153,
		-0.901151, 0.365305, -0.233408,
		0.392041, 0.916537, -0.079141,
		38.034782, 34.846821, 45.692963>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.451702, 34.600590, 45.244194>,  <37.760357, 34.205246, 45.748363>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.451702, 34.600590, 45.244194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819328, 34.749130, 45.296970>,  <38.039906, 34.838257, 45.328636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.819328, 34.749130, 45.296970>,  <37.451702, 34.600590, 45.244194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.819328, 34.749130, 45.296970> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.113092, 0.072195, -0.990958,
		-0.377521, 0.925681, 0.024355,
		0.919069, 0.371354, 0.131942,
		38.095051, 34.860535, 45.336552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.489372, 35.094566, 44.688629>,  <37.451702, 34.600590, 45.244194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.489372, 35.094566, 44.688629> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854305, 34.976833, 44.802486>,  <38.073265, 34.906193, 44.870800>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.854305, 34.976833, 44.802486>,  <37.489372, 35.094566, 44.688629>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.854305, 34.976833, 44.802486> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.283362, -0.047966, -0.957813,
		0.295571, 0.954498, 0.039643,
		0.912329, -0.294335, 0.284645,
		38.128002, 34.888535, 44.887878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.913513, 35.460129, 44.233948>,  <37.489372, 35.094566, 44.688629>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.913513, 35.460129, 44.233948> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161560, 35.177391, 44.370075>,  <38.310390, 35.007748, 44.451752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.161560, 35.177391, 44.370075>,  <37.913513, 35.460129, 44.233948>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.161560, 35.177391, 44.370075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384204, -0.104586, -0.917305,
		0.683988, 0.699592, 0.206718,
		0.620119, -0.706847, 0.340322,
		38.347595, 34.965336, 44.472172>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.509632, 35.676037, 43.848129>,  <37.913513, 35.460129, 44.233948>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.509632, 35.676037, 43.848129> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554199, 35.298550, 43.972698>,  <38.580940, 35.072056, 44.047440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.554199, 35.298550, 43.972698>,  <38.509632, 35.676037, 43.848129>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554199, 35.298550, 43.972698> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.485968, -0.221610, -0.845413,
		0.866846, 0.245535, 0.433925,
		0.111416, -0.943717, 0.311424,
		38.587624, 35.015434, 44.066124>
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
