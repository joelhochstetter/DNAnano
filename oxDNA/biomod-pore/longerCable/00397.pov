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
	<24.726158, 34.974926, 35.357487> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642862, 34.781052, 35.017670>,  <24.592886, 34.664726, 34.813782>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<24.642862, 34.781052, 35.017670>,  <24.726158, 34.974926, 35.357487>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<24.642862, 34.781052, 35.017670> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409327, 0.745672, -0.525760,
		0.888306, -0.457223, 0.043117,
		-0.208238, -0.484685, -0.849539,
		24.580391, 34.635647, 34.762810>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.460762, 35.308723, 35.200748>,  <24.726158, 34.974926, 35.357487>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.460762, 35.308723, 35.200748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823742, 35.437305, 35.308968>,  <26.041531, 35.514454, 35.373898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.823742, 35.437305, 35.308968>,  <25.460762, 35.308723, 35.200748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.823742, 35.437305, 35.308968> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.105739, 0.448471, -0.887521,
		-0.406633, 0.833990, 0.372975,
		0.907452, 0.321457, 0.270549,
		26.095978, 35.533741, 35.390133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.496347, 36.022945, 35.243393>,  <25.460762, 35.308723, 35.200748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.496347, 36.022945, 35.243393> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874792, 35.899990, 35.202633>,  <26.101860, 35.826218, 35.178177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.874792, 35.899990, 35.202633>,  <25.496347, 36.022945, 35.243393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.874792, 35.899990, 35.202633> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.128904, 0.646139, -0.752255,
		0.297076, 0.698583, 0.650944,
		0.946113, -0.307386, -0.101902,
		26.158627, 35.807774, 35.172062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.830944, 36.626812, 35.069866>,  <25.496347, 36.022945, 35.243393>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.830944, 36.626812, 35.069866> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108725, 36.350319, 34.989937>,  <26.275393, 36.184422, 34.941978>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.108725, 36.350319, 34.989937>,  <25.830944, 36.626812, 35.069866>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.108725, 36.350319, 34.989937> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.335303, 0.556598, -0.760113,
		0.636638, 0.460861, 0.618304,
		0.694452, -0.691236, -0.199823,
		26.317060, 36.142948, 34.929989>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.416552, 37.009876, 35.018856>,  <25.830944, 36.626812, 35.069866>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.416552, 37.009876, 35.018856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457737, 36.667377, 34.816372>,  <26.482449, 36.461880, 34.694881>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.457737, 36.667377, 34.816372>,  <26.416552, 37.009876, 35.018856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.457737, 36.667377, 34.816372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136763, 0.516266, -0.845438,
		0.985238, 0.017820, 0.170260,
		0.102965, -0.856243, -0.506207,
		26.488626, 36.410503, 34.664509>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.113901, 36.941353, 34.695232>,  <26.416552, 37.009876, 35.018856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.113901, 36.941353, 34.695232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805138, 36.768574, 34.508652>,  <26.619881, 36.664906, 34.396702>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.805138, 36.768574, 34.508652>,  <27.113901, 36.941353, 34.695232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.805138, 36.768574, 34.508652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211680, 0.517226, -0.829258,
		0.599460, -0.738849, -0.307815,
		-0.771906, -0.431948, -0.466456,
		26.573566, 36.638988, 34.368713>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.440226, 36.688519, 34.076824>,  <27.113901, 36.941353, 34.695232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.440226, 36.688519, 34.076824> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047169, 36.729832, 34.015186>,  <26.811335, 36.754620, 33.978203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.047169, 36.729832, 34.015186>,  <27.440226, 36.688519, 34.076824>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.047169, 36.729832, 34.015186> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.185137, 0.493258, -0.849954,
		-0.011779, -0.863730, -0.503818,
		-0.982642, 0.103286, -0.154098,
		26.752377, 36.760818, 33.968956>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.279728, 36.379086, 33.411407>,  <27.440226, 36.688519, 34.076824>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.279728, 36.379086, 33.411407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993168, 36.653999, 33.459415>,  <26.821232, 36.818947, 33.488220>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.993168, 36.653999, 33.459415>,  <27.279728, 36.379086, 33.411407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.993168, 36.653999, 33.459415> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225901, 0.391266, -0.892121,
		-0.660103, -0.612004, -0.435562,
		-0.716402, 0.687286, 0.120024,
		26.778248, 36.860184, 33.495422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.742792, 36.347660, 32.909657>,  <27.279728, 36.379086, 33.411407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.742792, 36.347660, 32.909657> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772320, 36.728054, 33.029774>,  <26.790035, 36.956291, 33.101845>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.772320, 36.728054, 33.029774>,  <26.742792, 36.347660, 32.909657>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.772320, 36.728054, 33.029774> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.228079, 0.277034, -0.933398,
		-0.970840, 0.137392, -0.196450,
		0.073817, 0.950987, 0.300292,
		26.794464, 37.013351, 33.119862>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.487326, 36.796692, 32.209625>,  <26.742792, 36.347660, 32.909657>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.487326, 36.796692, 32.209625> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686857, 37.043018, 32.453575>,  <26.806576, 37.190815, 32.599945>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.686857, 37.043018, 32.453575>,  <26.487326, 36.796692, 32.209625>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.686857, 37.043018, 32.453575> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.576717, 0.289426, -0.763957,
		-0.646966, 0.732809, -0.210774,
		0.498831, 0.615812, 0.609872,
		26.836506, 37.227760, 32.636536>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.591917, 37.405838, 31.756727>,  <26.487326, 36.796692, 32.209625>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.591917, 37.405838, 31.756727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839819, 37.400799, 32.070606>,  <26.988560, 37.397774, 32.258934>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.839819, 37.400799, 32.070606>,  <26.591917, 37.405838, 31.756727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.839819, 37.400799, 32.070606> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.744760, 0.324722, -0.582999,
		-0.247463, 0.945726, 0.210631,
		0.619753, -0.012599, 0.784696,
		27.025745, 37.397018, 32.306015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.890759, 38.110592, 31.815321>,  <26.591917, 37.405838, 31.756727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.890759, 38.110592, 31.815321> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113743, 37.822708, 31.980852>,  <27.247534, 37.649979, 32.080170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.113743, 37.822708, 31.980852>,  <26.890759, 38.110592, 31.815321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.113743, 37.822708, 31.980852> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.800437, 0.333668, -0.497962,
		0.220307, 0.608837, 0.762090,
		0.557463, -0.719710, 0.413826,
		27.280981, 37.606796, 32.105000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.457125, 38.393143, 32.259827>,  <26.890759, 38.110592, 31.815321>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.457125, 38.393143, 32.259827> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546734, 38.027538, 32.124535>,  <27.600500, 37.808174, 32.043362>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.546734, 38.027538, 32.124535>,  <27.457125, 38.393143, 32.259827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.546734, 38.027538, 32.124535> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.881993, 0.337781, -0.328622,
		0.414611, -0.224695, 0.881822,
		0.224023, -0.914011, -0.338227,
		27.613941, 37.753334, 32.023067>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.246386, 38.661419, 32.338474>,  <27.457125, 38.393143, 32.259827>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.246386, 38.661419, 32.338474> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633747, 38.635361, 32.434761>,  <28.866165, 38.619724, 32.492535>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.633747, 38.635361, 32.434761>,  <28.246386, 38.661419, 32.338474>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.633747, 38.635361, 32.434761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.240913, 0.005004, 0.970534,
		-0.064437, -0.997863, -0.010850,
		0.968405, -0.065152, 0.240721,
		28.924269, 38.615814, 32.506977>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.313299, 37.993313, 32.782570>,  <28.246386, 38.661419, 32.338474>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.313299, 37.993313, 32.782570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592533, 38.277302, 32.819695>,  <28.760073, 38.447697, 32.841969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.592533, 38.277302, 32.819695>,  <28.313299, 37.993313, 32.782570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.592533, 38.277302, 32.819695> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.109135, -0.022602, 0.993770,
		0.707650, -0.703864, 0.061705,
		0.698084, 0.709975, 0.092811,
		28.801958, 38.490295, 32.847538>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.235485, 37.250603, 32.756176>,  <28.313299, 37.993313, 32.782570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.235485, 37.250603, 32.756176> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933367, 37.441650, 32.576664>,  <27.752096, 37.556278, 32.468956>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.933367, 37.441650, 32.576664>,  <28.235485, 37.250603, 32.756176>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.933367, 37.441650, 32.576664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548728, -0.086427, 0.831521,
		0.358366, 0.874304, 0.327363,
		-0.755296, 0.477622, -0.448783,
		27.706778, 37.584938, 32.442028>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.913450, 37.645641, 33.241688>,  <28.235485, 37.250603, 32.756176>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.913450, 37.645641, 33.241688> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627710, 37.593964, 32.966583>,  <27.456266, 37.562958, 32.801521>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.627710, 37.593964, 32.966583>,  <27.913450, 37.645641, 33.241688>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.627710, 37.593964, 32.966583> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672020, -0.147457, 0.725704,
		-0.195173, 0.980594, 0.018514,
		-0.714351, -0.129196, -0.687758,
		27.413404, 37.555206, 32.760254>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.417879, 38.067841, 33.481071>,  <27.913450, 37.645641, 33.241688>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.417879, 38.067841, 33.481071> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250366, 37.818455, 33.216976>,  <27.149858, 37.668823, 33.058517>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.250366, 37.818455, 33.216976>,  <27.417879, 38.067841, 33.481071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.250366, 37.818455, 33.216976> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783949, -0.118730, 0.609365,
		-0.458308, 0.772783, -0.439043,
		-0.418780, -0.623465, -0.660238,
		27.124733, 37.631416, 33.018906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.728458, 38.279099, 33.391666>,  <27.417879, 38.067841, 33.481071>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.728458, 38.279099, 33.391666> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757345, 37.887547, 33.315163>,  <26.774677, 37.652615, 33.269260>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.757345, 37.887547, 33.315163>,  <26.728458, 38.279099, 33.391666>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.757345, 37.887547, 33.315163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.722391, -0.183557, 0.666677,
		-0.687704, 0.090022, -0.720388,
		0.072217, -0.978878, -0.191264,
		26.779011, 37.593884, 33.257782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.083523, 37.912201, 33.353912>,  <26.728458, 38.279099, 33.391666>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.083523, 37.912201, 33.353912> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317932, 37.594730, 33.419212>,  <26.458578, 37.404247, 33.458393>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.317932, 37.594730, 33.419212>,  <26.083523, 37.912201, 33.353912>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.317932, 37.594730, 33.419212> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577443, -0.267721, 0.771288,
		-0.568451, -0.546259, -0.615195,
		0.586024, -0.793679, 0.163247,
		26.493740, 37.356628, 33.468185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.820929, 37.531631, 33.847477>,  <26.083523, 37.912201, 33.353912>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.820929, 37.531631, 33.847477> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007381, 37.212357, 33.694836>,  <26.119253, 37.020794, 33.603252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.007381, 37.212357, 33.694836>,  <25.820929, 37.531631, 33.847477>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.007381, 37.212357, 33.694836> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.293347, -0.546368, 0.784493,
		-0.834666, -0.253736, -0.488825,
		0.466133, -0.798185, -0.381602,
		26.147221, 36.972900, 33.580357>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.444048, 36.841705, 33.796864>,  <25.820929, 37.531631, 33.847477>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.444048, 36.841705, 33.796864> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839722, 36.809002, 33.845570>,  <26.077126, 36.789379, 33.874794>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.839722, 36.809002, 33.845570>,  <25.444048, 36.841705, 33.796864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.839722, 36.809002, 33.845570> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.144548, -0.683967, 0.715049,
		0.024819, -0.724917, -0.688389,
		0.989186, -0.081759, 0.121761,
		26.136478, 36.784473, 33.882099>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<25.543161, 36.131432, 33.676926>,  <25.444048, 36.841705, 33.796864>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<25.543161, 36.131432, 33.676926> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843897, 36.293095, 33.885311>,  <26.024338, 36.390091, 34.010342>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<25.843897, 36.293095, 33.885311>,  <25.543161, 36.131432, 33.676926>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<25.843897, 36.293095, 33.885311> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159203, -0.655460, 0.738259,
		0.639840, -0.637989, -0.428456,
		0.751837, 0.404156, 0.520960,
		26.069448, 36.414341, 34.041599>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.013399, 35.561424, 33.761208>,  <25.543161, 36.131432, 33.676926>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.013399, 35.561424, 33.761208> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305471, 35.805504, 33.884163>,  <26.480715, 35.951954, 33.957935>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.305471, 35.805504, 33.884163>,  <26.013399, 35.561424, 33.761208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.305471, 35.805504, 33.884163> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033676, -0.417206, 0.908188,
		0.682425, -0.673491, -0.284086,
		0.730179, 0.610203, 0.307393,
		26.524525, 35.988564, 33.976379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<26.608498, 35.270103, 34.016209>,  <26.013399, 35.561424, 33.761208>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<26.608498, 35.270103, 34.016209> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592230, 35.624851, 34.200302>,  <26.582470, 35.837700, 34.310757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.592230, 35.624851, 34.200302>,  <26.608498, 35.270103, 34.016209>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.592230, 35.624851, 34.200302> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.054310, -0.457968, 0.887308,
		0.997696, 0.061082, -0.029541,
		-0.040670, 0.886868, 0.460230,
		26.580029, 35.890911, 34.338371>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.083447, 35.161495, 34.534508>,  <26.608498, 35.270103, 34.016209>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.083447, 35.161495, 34.534508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850382, 35.464157, 34.653156>,  <26.710543, 35.645752, 34.724346>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<26.850382, 35.464157, 34.653156>,  <27.083447, 35.161495, 34.534508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<26.850382, 35.464157, 34.653156> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.018967, -0.377537, 0.925800,
		0.812495, 0.533801, 0.234327,
		-0.582660, 0.756652, 0.296622,
		26.675583, 35.691154, 34.742142>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.473654, 35.597088, 35.075630>,  <27.083447, 35.161495, 34.534508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.473654, 35.597088, 35.075630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084246, 35.684612, 35.102100>,  <26.850601, 35.737125, 35.117981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.084246, 35.684612, 35.102100>,  <27.473654, 35.597088, 35.075630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.084246, 35.684612, 35.102100> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.038964, -0.444069, 0.895145,
		0.225254, 0.868864, 0.440836,
		-0.973521, 0.218812, 0.066174,
		26.792189, 35.750256, 35.121952>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.039963, 35.408588, 35.544315>,  <27.473654, 35.597088, 35.075630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.039963, 35.408588, 35.544315> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940229, 35.146301, 35.829372>,  <27.880388, 34.988930, 36.000408>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.940229, 35.146301, 35.829372>,  <28.039963, 35.408588, 35.544315>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.940229, 35.146301, 35.829372> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.848715, -0.502357, -0.165286,
		0.466384, 0.563622, 0.681774,
		-0.249335, -0.655719, 0.712646,
		27.865429, 34.949585, 36.043167>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.660088, 35.228958, 35.945770>,  <28.039963, 35.408588, 35.544315>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.660088, 35.228958, 35.945770> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383135, 34.943737, 35.901657>,  <28.216963, 34.772606, 35.875187>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.383135, 34.943737, 35.901657>,  <28.660088, 35.228958, 35.945770>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.383135, 34.943737, 35.901657> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.719744, -0.671809, -0.175045,
		0.050724, -0.200577, 0.978364,
		-0.692383, -0.713051, -0.110288,
		28.175419, 34.729820, 35.868572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.855225, 35.365799, 35.281879>,  <28.660088, 35.228958, 35.945770>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.855225, 35.365799, 35.281879> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040712, 35.135685, 35.012360>,  <29.152006, 34.997616, 34.850647>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.040712, 35.135685, 35.012360>,  <28.855225, 35.365799, 35.281879>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.040712, 35.135685, 35.012360> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504477, -0.796636, 0.332977,
		-0.728331, 0.185508, -0.659637,
		0.463721, -0.575290, -0.673800,
		29.179829, 34.963097, 34.810219>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.382992, 35.095066, 34.885334>,  <28.855225, 35.365799, 35.281879>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.382992, 35.095066, 34.885334> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700655, 34.852406, 34.899643>,  <28.891253, 34.706810, 34.908230>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.700655, 34.852406, 34.899643>,  <28.382992, 35.095066, 34.885334>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.700655, 34.852406, 34.899643> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.565838, -0.716687, 0.407661,
		-0.221671, -0.343990, -0.912432,
		0.794160, -0.606656, 0.035774,
		28.938904, 34.670410, 34.910374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.157871, 34.480637, 34.843678>,  <28.382992, 35.095066, 34.885334>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.157871, 34.480637, 34.843678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521408, 34.362545, 34.961555>,  <28.739531, 34.291691, 35.032280>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.521408, 34.362545, 34.961555>,  <28.157871, 34.480637, 34.843678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.521408, 34.362545, 34.961555> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.400820, -0.813738, 0.420919,
		0.115532, -0.500667, -0.857895,
		0.908843, -0.295232, 0.294690,
		28.794062, 34.273975, 35.049961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.205160, 33.800896, 34.750931>,  <28.157871, 34.480637, 34.843678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.205160, 33.800896, 34.750931> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507156, 33.849861, 35.008614>,  <28.688354, 33.879242, 35.163223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.507156, 33.849861, 35.008614>,  <28.205160, 33.800896, 34.750931>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.507156, 33.849861, 35.008614> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.340436, -0.766472, 0.544632,
		0.560441, -0.630503, -0.537003,
		0.754990, 0.122418, 0.644208,
		28.733654, 33.886585, 35.201878>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.369864, 33.198135, 34.787155>,  <28.205160, 33.800896, 34.750931>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.369864, 33.198135, 34.787155> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532047, 33.374729, 35.107330>,  <28.629358, 33.480686, 35.299435>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.532047, 33.374729, 35.107330>,  <28.369864, 33.198135, 34.787155>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.532047, 33.374729, 35.107330> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.375627, -0.717830, 0.586195,
		0.833371, -0.538342, -0.125217,
		0.405459, 0.441484, 0.800434,
		28.653685, 33.507175, 35.347462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.430891, 32.648628, 35.266144>,  <28.369864, 33.198135, 34.787155>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.430891, 32.648628, 35.266144> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436285, 32.974941, 35.497425>,  <28.439522, 33.170731, 35.636192>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.436285, 32.974941, 35.497425>,  <28.430891, 32.648628, 35.266144>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.436285, 32.974941, 35.497425> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.659510, -0.427384, 0.618377,
		0.751575, -0.389667, 0.532255,
		0.013484, 0.815784, 0.578200,
		28.440331, 33.219677, 35.670883>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.622778, 32.503925, 36.080898>,  <28.430891, 32.648628, 35.266144>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.622778, 32.503925, 36.080898> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381027, 32.805264, 35.977207>,  <28.235977, 32.986065, 35.914993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.381027, 32.805264, 35.977207>,  <28.622778, 32.503925, 36.080898>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.381027, 32.805264, 35.977207> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.736026, -0.403424, 0.543613,
		0.304948, 0.519347, 0.798301,
		-0.604378, 0.753344, -0.259229,
		28.199715, 33.031265, 35.899437>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.344246, 32.509659, 36.363297>,  <28.622778, 32.503925, 36.080898>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.344246, 32.509659, 36.363297> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046583, 32.776310, 36.346169>,  <28.867985, 32.936302, 36.335892>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.046583, 32.776310, 36.346169>,  <29.344246, 32.509659, 36.363297>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.046583, 32.776310, 36.346169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474991, -0.482985, 0.735601,
		0.469693, 0.567742, 0.676061,
		-0.744159, 0.666629, -0.042817,
		28.823336, 32.976299, 36.333324>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.322142, 32.896229, 36.984592>,  <29.344246, 32.509659, 36.363297>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.322142, 32.896229, 36.984592> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957438, 32.902992, 36.820442>,  <28.738615, 32.907051, 36.721951>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.957438, 32.902992, 36.820442>,  <29.322142, 32.896229, 36.984592>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.957438, 32.902992, 36.820442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.371229, -0.461429, 0.805774,
		-0.175733, 0.887016, 0.426990,
		-0.911760, 0.016910, -0.410374,
		28.683910, 32.908066, 36.697330>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.814665, 33.148094, 37.448730>,  <29.322142, 32.896229, 36.984592>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.814665, 33.148094, 37.448730> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689070, 32.859066, 37.202381>,  <28.613712, 32.685650, 37.054569>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.689070, 32.859066, 37.202381>,  <28.814665, 33.148094, 37.448730>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.689070, 32.859066, 37.202381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.411480, -0.481027, 0.774144,
		-0.855626, 0.496492, -0.146286,
		-0.313989, -0.722571, -0.615875,
		28.594873, 32.642296, 37.017620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.095278, 32.776611, 37.480167>,  <28.814665, 33.148094, 37.448730>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.095278, 32.776611, 37.480167> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349018, 32.485222, 37.376690>,  <28.501263, 32.310387, 37.314606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.349018, 32.485222, 37.376690>,  <28.095278, 32.776611, 37.480167>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.349018, 32.485222, 37.376690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.335090, -0.560686, 0.757196,
		-0.696643, -0.393644, -0.599777,
		0.634353, -0.728475, -0.258692,
		28.539324, 32.266678, 37.299084>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.657530, 32.141663, 37.550114>,  <28.095278, 32.776611, 37.480167>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.657530, 32.141663, 37.550114> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035738, 32.024231, 37.493828>,  <28.262663, 31.953772, 37.460056>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.035738, 32.024231, 37.493828>,  <27.657530, 32.141663, 37.550114>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.035738, 32.024231, 37.493828> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.030427, -0.510011, 0.859629,
		-0.324133, -0.808517, -0.491159,
		0.945522, -0.293579, -0.140711,
		28.319395, 31.936157, 37.451614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.586956, 32.135033, 36.938141>,  <27.657530, 32.141663, 37.550114>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.586956, 32.135033, 36.938141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587950, 32.522469, 37.037605>,  <27.588547, 32.754929, 37.097286>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.587950, 32.522469, 37.037605>,  <27.586956, 32.135033, 36.938141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.587950, 32.522469, 37.037605> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532238, 0.209237, -0.820331,
		-0.846591, 0.134388, -0.514998,
		0.002486, 0.968587, 0.248664,
		27.588696, 32.813046, 37.112206>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.481668, 32.516403, 36.333210>,  <27.586956, 32.135033, 36.938141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.481668, 32.516403, 36.333210> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689602, 32.755219, 36.577610>,  <27.814362, 32.898506, 36.724251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.689602, 32.755219, 36.577610>,  <27.481668, 32.516403, 36.333210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.689602, 32.755219, 36.577610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567528, 0.293228, -0.769369,
		-0.638502, 0.746705, -0.186404,
		0.519833, 0.597033, 0.611003,
		27.845552, 32.934330, 36.760910>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.484674, 33.204769, 36.143410>,  <27.481668, 32.516403, 36.333210>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.484674, 33.204769, 36.143410> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831209, 33.133137, 36.329910>,  <28.039131, 33.090157, 36.441811>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<27.831209, 33.133137, 36.329910>,  <27.484674, 33.204769, 36.143410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<27.831209, 33.133137, 36.329910> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498911, 0.266603, -0.824628,
		0.023372, 0.947023, 0.320314,
		0.866338, -0.179081, 0.466249,
		28.091110, 33.079411, 36.469784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<27.796158, 33.803055, 36.201485>,  <27.484674, 33.204769, 36.143410>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<27.796158, 33.803055, 36.201485> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103569, 33.551781, 36.250069>,  <28.288015, 33.401016, 36.279217>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.103569, 33.551781, 36.250069>,  <27.796158, 33.803055, 36.201485>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.103569, 33.551781, 36.250069> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500199, 0.471528, -0.726266,
		0.398957, 0.618909, 0.676599,
		0.768527, -0.628183, 0.121458,
		28.334127, 33.363327, 36.286507>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<28.320005, 34.239449, 36.253910>,  <27.796158, 33.803055, 36.201485>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<28.320005, 34.239449, 36.253910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440554, 33.880028, 36.126301>,  <28.512882, 33.664375, 36.049736>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<28.440554, 33.880028, 36.126301>,  <28.320005, 34.239449, 36.253910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<28.440554, 33.880028, 36.126301> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.667394, 0.437741, -0.602469,
		0.681000, -0.031347, 0.731612,
		0.301371, -0.898555, -0.319022,
		28.530966, 33.610462, 36.030594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.157288, 34.142849, 36.349277>,  <28.320005, 34.239449, 36.253910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.157288, 34.142849, 36.349277> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009058, 33.932079, 36.043327>,  <28.920120, 33.805618, 35.859756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.009058, 33.932079, 36.043327>,  <29.157288, 34.142849, 36.349277>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.009058, 33.932079, 36.043327> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.684483, 0.401713, -0.608367,
		0.627821, -0.748985, 0.211806,
		-0.370572, -0.526923, -0.764871,
		28.897886, 33.774002, 35.813866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.753149, 33.915955, 36.002689>,  <29.157288, 34.142849, 36.349277>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.753149, 33.915955, 36.002689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447393, 33.895935, 35.745564>,  <29.263941, 33.883923, 35.591290>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.447393, 33.895935, 35.745564>,  <29.753149, 33.915955, 36.002689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.447393, 33.895935, 35.745564> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582074, 0.375229, -0.721383,
		0.277308, -0.925580, -0.257686,
		-0.764389, -0.050053, -0.642810,
		29.218077, 33.880920, 35.552719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.943388, 33.738815, 35.310295>,  <29.753149, 33.915955, 36.002689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.943388, 33.738815, 35.310295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596848, 33.928562, 35.247799>,  <29.388924, 34.042412, 35.210300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.596848, 33.928562, 35.247799>,  <29.943388, 33.738815, 35.310295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.596848, 33.928562, 35.247799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.432523, 0.556195, -0.709627,
		-0.249721, -0.682366, -0.687035,
		-0.866351, 0.474367, -0.156245,
		29.336943, 34.070873, 35.200924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.717424, 33.562946, 34.591389>,  <29.943388, 33.738815, 35.310295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.717424, 33.562946, 34.591389> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571100, 33.902817, 34.743305>,  <29.483305, 34.106739, 34.834454>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.571100, 33.902817, 34.743305>,  <29.717424, 33.562946, 34.591389>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.571100, 33.902817, 34.743305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.500153, 0.523613, -0.689693,
		-0.784876, -0.062343, -0.616509,
		-0.365810, 0.849672, 0.379790,
		29.461357, 34.157719, 34.857243>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.023096, 33.663486, 33.876202>,  <29.717424, 33.562946, 34.591389>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.023096, 33.663486, 33.876202> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296659, 33.395458, 33.991631>,  <30.460796, 33.234642, 34.060886>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.296659, 33.395458, 33.991631>,  <30.023096, 33.663486, 33.876202>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.296659, 33.395458, 33.991631> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.449700, -0.075717, 0.889964,
		-0.574492, -0.738423, -0.353116,
		0.683907, -0.670074, 0.288569,
		30.501831, 33.194435, 34.078201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.512329, 33.821079, 33.312775>,  <30.023096, 33.663486, 33.876202>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.512329, 33.821079, 33.312775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789137, 33.914391, 33.039516>,  <29.955221, 33.970379, 32.875561>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.789137, 33.914391, 33.039516>,  <29.512329, 33.821079, 33.312775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.789137, 33.914391, 33.039516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.242805, -0.815989, -0.524602,
		-0.679817, 0.528907, -0.508041,
		0.692022, 0.233278, -0.683145,
		29.996744, 33.984375, 32.834572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.129103, 34.273766, 32.841419>,  <29.512329, 33.821079, 33.312775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.129103, 34.273766, 32.841419> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403822, 34.020908, 32.697918>,  <29.568653, 33.869194, 32.611816>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.403822, 34.020908, 32.697918>,  <29.129103, 34.273766, 32.841419>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.403822, 34.020908, 32.697918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646825, -0.756693, 0.095039,
		-0.331545, 0.166778, -0.928581,
		0.686800, -0.632140, -0.358754,
		29.609861, 33.831268, 32.590290>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.009300, 33.952763, 32.163399>,  <29.129103, 34.273766, 32.841419>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.009300, 33.952763, 32.163399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221886, 33.686100, 32.372437>,  <29.349438, 33.526100, 32.497860>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.221886, 33.686100, 32.372437>,  <29.009300, 33.952763, 32.163399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.221886, 33.686100, 32.372437> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.705977, -0.689537, -0.161662,
		0.468124, -0.283025, -0.837112,
		0.531465, -0.666660, 0.522598,
		29.381325, 33.486103, 32.529217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.118372, 33.578102, 31.447544>,  <29.009300, 33.952763, 32.163399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.118372, 33.578102, 31.447544> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343992, 33.250248, 31.487625>,  <29.479364, 33.053535, 31.511673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.343992, 33.250248, 31.487625>,  <29.118372, 33.578102, 31.447544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.343992, 33.250248, 31.487625> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.023583, 0.137290, 0.990250,
		-0.825402, -0.556189, 0.096768,
		0.564052, -0.819637, 0.100203,
		29.513208, 33.004356, 31.517687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.732491, 33.535347, 31.154846>,  <29.118372, 33.578102, 31.447544>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.732491, 33.535347, 31.154846> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458633, 33.793819, 31.019958>,  <29.294319, 33.948902, 30.939026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.458633, 33.793819, 31.019958>,  <29.732491, 33.535347, 31.154846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.458633, 33.793819, 31.019958> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.025416, -0.483540, -0.874953,
		-0.728437, -0.590458, 0.347474,
		-0.684641, 0.646180, -0.337222,
		29.253241, 33.987675, 30.918793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.051554, 34.214233, 30.917284>,  <29.732491, 33.535347, 31.154846>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.051554, 34.214233, 30.917284> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997585, 33.835827, 30.799404>,  <29.965204, 33.608784, 30.728676>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<29.997585, 33.835827, 30.799404>,  <30.051554, 34.214233, 30.917284>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<29.997585, 33.835827, 30.799404> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642483, 0.142898, -0.752858,
		0.754329, -0.290916, 0.588520,
		-0.134920, -0.946017, -0.294700,
		29.957109, 33.552021, 30.710995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.276878, 34.475174, 30.369450>,  <30.051554, 34.214233, 30.917284>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.276878, 34.475174, 30.369450> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463636, 34.169769, 30.547915>,  <30.575691, 33.986526, 30.654993>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.463636, 34.169769, 30.547915>,  <30.276878, 34.475174, 30.369450>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.463636, 34.169769, 30.547915> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.741651, -0.063297, 0.667794,
		-0.481628, -0.642684, -0.595812,
		0.466893, -0.763512, 0.446162,
		30.603704, 33.940716, 30.681763>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.438328, 34.810780, 29.808338>,  <30.276878, 34.475174, 30.369450>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.438328, 34.810780, 29.808338> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237150, 35.034821, 29.545027>,  <30.116444, 35.169247, 29.387039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.237150, 35.034821, 29.545027>,  <30.438328, 34.810780, 29.808338>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.237150, 35.034821, 29.545027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.657578, -0.246310, -0.711985,
		-0.560928, -0.790957, -0.244433,
		-0.502943, 0.560106, -0.658278,
		30.086267, 35.202854, 29.347544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<29.987917, 34.409126, 29.198204>,  <30.438328, 34.810780, 29.808338>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<29.987917, 34.409126, 29.198204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191549, 34.744545, 29.120565>,  <30.313728, 34.945797, 29.073982>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.191549, 34.744545, 29.120565>,  <29.987917, 34.409126, 29.198204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.191549, 34.744545, 29.120565> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.619552, -0.513541, -0.593659,
		-0.597490, 0.181965, -0.780957,
		0.509079, 0.838549, -0.194099,
		30.344273, 34.996109, 29.062336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.452131, 34.154289, 28.552378>,  <29.987917, 34.409126, 29.198204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.452131, 34.154289, 28.552378> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590416, 34.525223, 28.609686>,  <30.673388, 34.747784, 28.644072>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.590416, 34.525223, 28.609686>,  <30.452131, 34.154289, 28.552378>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.590416, 34.525223, 28.609686> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662550, -0.133120, -0.737093,
		-0.664462, 0.349747, -0.660430,
		0.345712, 0.927338, 0.143272,
		30.694130, 34.803425, 28.652668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.350658, 34.534348, 27.963305>,  <30.452131, 34.154289, 28.552378>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.350658, 34.534348, 27.963305> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659033, 34.683750, 28.169664>,  <30.844057, 34.773392, 28.293480>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.659033, 34.683750, 28.169664>,  <30.350658, 34.534348, 27.963305>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.659033, 34.683750, 28.169664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.624249, -0.282377, -0.728407,
		-0.126384, 0.883605, -0.450854,
		0.770935, 0.373504, 0.515901,
		30.890314, 34.795803, 28.324434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<30.711824, 35.133678, 27.560801>,  <30.350658, 34.534348, 27.963305>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<30.711824, 35.133678, 27.560801> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950811, 34.911213, 27.791872>,  <31.094204, 34.777733, 27.930515>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<30.950811, 34.911213, 27.791872>,  <30.711824, 35.133678, 27.560801>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<30.950811, 34.911213, 27.791872> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.552071, -0.237201, -0.799346,
		0.581595, 0.796502, 0.165324,
		0.597465, -0.556166, 0.577680,
		31.130051, 34.744362, 27.965176>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<31.433382, 35.241177, 27.369761>,  <30.711824, 35.133678, 27.560801>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<31.433382, 35.241177, 27.369761> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483177, 34.888702, 27.552193>,  <31.513054, 34.677216, 27.661652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<31.483177, 34.888702, 27.552193>,  <31.433382, 35.241177, 27.369761>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<31.483177, 34.888702, 27.552193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.820716, -0.166868, -0.546425,
		0.557609, 0.442336, 0.702432,
		0.124490, -0.881189, 0.456080,
		31.520525, 34.624344, 27.689016>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.162689, 35.136177, 27.399132>,  <31.433382, 35.241177, 27.369761>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.162689, 35.136177, 27.399132> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013058, 34.765644, 27.416920>,  <31.923279, 34.543324, 27.427593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.013058, 34.765644, 27.416920>,  <32.162689, 35.136177, 27.399132>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.013058, 34.765644, 27.416920> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707705, -0.316127, -0.631836,
		0.599347, -0.204886, 0.773825,
		-0.374081, -0.926329, 0.044471,
		31.900833, 34.487747, 27.430262>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.799122, 34.690498, 27.713984>,  <32.162689, 35.136177, 27.399132>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.799122, 34.690498, 27.713984> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529655, 34.536446, 27.461681>,  <32.367977, 34.444012, 27.310301>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.529655, 34.536446, 27.461681>,  <32.799122, 34.690498, 27.713984>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.529655, 34.536446, 27.461681> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.735508, -0.432712, -0.521333,
		-0.072151, -0.815127, 0.574772,
		-0.673663, -0.385134, -0.630753,
		32.327557, 34.420906, 27.272455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.122566, 34.051773, 27.616510>,  <32.799122, 34.690498, 27.713984>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.122566, 34.051773, 27.616510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906933, 34.195827, 27.311962>,  <32.777554, 34.282261, 27.129232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.906933, 34.195827, 27.311962>,  <33.122566, 34.051773, 27.616510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.906933, 34.195827, 27.311962> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.578972, -0.498075, -0.645533,
		-0.611703, -0.788810, 0.059993,
		-0.539084, 0.360140, -0.761373,
		32.745209, 34.303867, 27.083549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.740891, 33.542049, 27.176838>,  <33.122566, 34.051773, 27.616510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.740891, 33.542049, 27.176838> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883175, 33.861317, 26.982353>,  <32.968544, 34.052876, 26.865662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.883175, 33.861317, 26.982353>,  <32.740891, 33.542049, 27.176838>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.883175, 33.861317, 26.982353> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.609696, -0.592471, -0.526544,
		-0.708336, -0.109145, -0.697386,
		0.355711, 0.798164, -0.486214,
		32.989887, 34.100765, 26.836489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.653187, 33.434681, 26.414118>,  <32.740891, 33.542049, 27.176838>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.653187, 33.434681, 26.414118> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939369, 33.707191, 26.476076>,  <33.111076, 33.870697, 26.513252>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<32.939369, 33.707191, 26.476076>,  <32.653187, 33.434681, 26.414118>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<32.939369, 33.707191, 26.476076> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651155, -0.569851, -0.501266,
		-0.253231, 0.459493, -0.851316,
		0.715452, 0.681275, 0.154897,
		33.154003, 33.911575, 26.522545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.078922, 33.327000, 25.847069>,  <32.653187, 33.434681, 26.414118>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.078922, 33.327000, 25.847069> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303135, 33.561512, 26.081018>,  <33.437664, 33.702221, 26.221388>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.303135, 33.561512, 26.081018>,  <33.078922, 33.327000, 25.847069>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.303135, 33.561512, 26.081018> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823940, -0.465798, -0.322731,
		0.083222, 0.662802, -0.744155,
		0.560533, 0.586281, 0.584874,
		33.471294, 33.737396, 26.256481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.605064, 33.622505, 25.404116>,  <33.078922, 33.327000, 25.847069>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.605064, 33.622505, 25.404116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736115, 33.591228, 25.780741>,  <33.814747, 33.572464, 26.006716>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.736115, 33.591228, 25.780741>,  <33.605064, 33.622505, 25.404116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.736115, 33.591228, 25.780741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.812805, -0.484733, -0.323081,
		0.481670, 0.871160, -0.095257,
		0.327630, -0.078193, 0.941565,
		33.834404, 33.567772, 26.063210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.240627, 33.704556, 25.361000>,  <33.605064, 33.622505, 25.404116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.240627, 33.704556, 25.361000> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225113, 33.518852, 25.714939>,  <34.215805, 33.407429, 25.927303>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.225113, 33.518852, 25.714939>,  <34.240627, 33.704556, 25.361000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.225113, 33.518852, 25.714939> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772801, -0.575301, -0.267969,
		0.633462, 0.673418, 0.381096,
		-0.038790, -0.464259, 0.884850,
		34.213474, 33.379574, 25.980394>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.960094, 33.719929, 25.683065>,  <34.240627, 33.704556, 25.361000>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.960094, 33.719929, 25.683065> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761585, 33.417862, 25.854380>,  <34.642479, 33.236622, 25.957169>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.761585, 33.417862, 25.854380>,  <34.960094, 33.719929, 25.683065>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.761585, 33.417862, 25.854380> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759832, -0.616452, -0.206499,
		0.419960, 0.222945, 0.879732,
		-0.496275, -0.755170, 0.428286,
		34.612701, 33.191311, 25.982866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.414040, 33.538010, 26.173689>,  <34.960094, 33.719929, 25.683065>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.414040, 33.538010, 26.173689> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189705, 33.209061, 26.135389>,  <35.055103, 33.011692, 26.112410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.189705, 33.209061, 26.135389>,  <35.414040, 33.538010, 26.173689>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.189705, 33.209061, 26.135389> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.826734, -0.550057, -0.118102,
		0.044458, -0.145393, 0.988375,
		-0.560834, -0.822373, -0.095747,
		35.021454, 32.962349, 26.106665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.798016, 32.940075, 26.505457>,  <35.414040, 33.538010, 26.173689>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.798016, 32.940075, 26.505457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517391, 32.779877, 26.269690>,  <35.349014, 32.683758, 26.128229>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.517391, 32.779877, 26.269690>,  <35.798016, 32.940075, 26.505457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.517391, 32.779877, 26.269690> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.647304, -0.704050, -0.292080,
		-0.298003, -0.586444, 0.753178,
		-0.701564, -0.400495, -0.589417,
		35.306923, 32.659729, 26.092865>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.803188, 32.304939, 26.690847>,  <35.798016, 32.940075, 26.505457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.803188, 32.304939, 26.690847> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646770, 32.300217, 26.322729>,  <35.552921, 32.297382, 26.101858>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.646770, 32.300217, 26.322729>,  <35.803188, 32.304939, 26.690847>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.646770, 32.300217, 26.322729> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693247, -0.661488, -0.286081,
		-0.605388, -0.749863, 0.266854,
		-0.391043, -0.011805, -0.920297,
		35.529457, 32.296677, 26.046640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.855255, 31.549368, 26.445507>,  <35.803188, 32.304939, 26.690847>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.855255, 31.549368, 26.445507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806568, 31.767450, 26.113739>,  <35.777355, 31.898300, 25.914679>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.806568, 31.767450, 26.113739>,  <35.855255, 31.549368, 26.445507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.806568, 31.767450, 26.113739> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.758424, -0.487971, -0.432062,
		-0.640295, -0.681641, -0.354101,
		-0.121720, 0.545206, -0.829418,
		35.770054, 31.931013, 25.864914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.785744, 31.100536, 25.942530>,  <35.855255, 31.549368, 26.445507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.785744, 31.100536, 25.942530> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887947, 31.423435, 25.729713>,  <35.949268, 31.617174, 25.602024>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.887947, 31.423435, 25.729713>,  <35.785744, 31.100536, 25.942530>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.887947, 31.423435, 25.729713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.767847, -0.503826, -0.395691,
		-0.587476, -0.307423, -0.748574,
		0.255507, 0.807249, -0.532039,
		35.964600, 31.665609, 25.570101>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.814182, 30.912128, 25.238016>,  <35.785744, 31.100536, 25.942530>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.814182, 30.912128, 25.238016> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029423, 31.249212, 25.231243>,  <36.158566, 31.451464, 25.227179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.029423, 31.249212, 25.231243>,  <35.814182, 30.912128, 25.238016>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.029423, 31.249212, 25.231243> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708333, -0.463000, -0.532819,
		-0.456852, 0.274715, -0.846060,
		0.538099, 0.842712, -0.016933,
		36.190853, 31.502026, 25.226164>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.193600, 30.855728, 24.622955>,  <35.814182, 30.912128, 25.238016>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.193600, 30.855728, 24.622955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374741, 31.153296, 24.819530>,  <36.483425, 31.331837, 24.937475>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.374741, 31.153296, 24.819530>,  <36.193600, 30.855728, 24.622955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.374741, 31.153296, 24.819530> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.843183, -0.178188, -0.507240,
		-0.289778, 0.644074, -0.707953,
		0.452849, 0.743921, 0.491437,
		36.510593, 31.376472, 24.966961>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.509640, 31.311892, 24.130888>,  <36.193600, 30.855728, 24.622955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.509640, 31.311892, 24.130888> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721786, 31.392101, 24.460373>,  <36.849075, 31.440228, 24.658064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.721786, 31.392101, 24.460373>,  <36.509640, 31.311892, 24.130888>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.721786, 31.392101, 24.460373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.822627, 0.113137, -0.557211,
		-0.204927, 0.973134, -0.104953,
		0.530367, 0.200525, 0.823711,
		36.880898, 31.452259, 24.707487>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.731285, 32.013672, 24.124470>,  <36.509640, 31.311892, 24.130888>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.731285, 32.013672, 24.124470> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971310, 31.777941, 24.340847>,  <37.115326, 31.636503, 24.470673>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.971310, 31.777941, 24.340847>,  <36.731285, 32.013672, 24.124470>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.971310, 31.777941, 24.340847> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.713336, 0.088158, -0.695255,
		0.362043, 0.803071, 0.473287,
		0.600064, -0.589325, 0.540943,
		37.151329, 31.601143, 24.503130>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.430862, 32.281258, 24.082510>,  <36.731285, 32.013672, 24.124470>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.430862, 32.281258, 24.082510> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474045, 31.896441, 24.182760>,  <37.499954, 31.665550, 24.242910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.474045, 31.896441, 24.182760>,  <37.430862, 32.281258, 24.082510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.474045, 31.896441, 24.182760> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.680697, -0.112211, -0.723920,
		0.724568, 0.248750, 0.642748,
		0.107952, -0.962046, 0.250628,
		37.506432, 31.607826, 24.257948>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.999809, 32.126240, 23.772598>,  <37.430862, 32.281258, 24.082510>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.999809, 32.126240, 23.772598> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967945, 31.747709, 23.897890>,  <37.948826, 31.520590, 23.973064>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.967945, 31.747709, 23.897890>,  <37.999809, 32.126240, 23.772598>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.967945, 31.747709, 23.897890> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.697106, -0.277497, -0.661089,
		0.712529, 0.165691, 0.681798,
		-0.079660, -0.946331, 0.313230,
		37.944046, 31.463810, 23.991859>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.742977, 31.850483, 23.830849>,  <37.999809, 32.126240, 23.772598>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.742977, 31.850483, 23.830849> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507042, 31.528732, 23.802366>,  <38.365482, 31.335682, 23.785276>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.507042, 31.528732, 23.802366>,  <38.742977, 31.850483, 23.830849>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.507042, 31.528732, 23.802366> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.549926, -0.335550, -0.764845,
		0.591330, -0.490292, 0.640267,
		-0.589839, -0.804376, -0.071204,
		38.330090, 31.287420, 23.781006>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.109562, 31.247242, 23.785578>,  <38.742977, 31.850483, 23.830849>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.109562, 31.247242, 23.785578> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754616, 31.151052, 23.628218>,  <38.541649, 31.093340, 23.533802>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.754616, 31.151052, 23.628218>,  <39.109562, 31.247242, 23.785578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.754616, 31.151052, 23.628218> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.458285, -0.366308, -0.809811,
		0.050632, -0.898884, 0.435252,
		-0.887362, -0.240472, -0.393398,
		38.488407, 31.078911, 23.510199>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.150192, 30.473598, 23.552563>,  <39.109562, 31.247242, 23.785578>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.150192, 30.473598, 23.552563> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860516, 30.662088, 23.351168>,  <38.686710, 30.775183, 23.230331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.860516, 30.662088, 23.351168>,  <39.150192, 30.473598, 23.552563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.860516, 30.662088, 23.351168> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.440743, -0.245251, -0.863480,
		-0.530372, -0.847231, -0.030080,
		-0.724190, 0.471223, -0.503485,
		38.643257, 30.803455, 23.200123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.919159, 29.958168, 22.984636>,  <39.150192, 30.473598, 23.552563>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.919159, 29.958168, 22.984636> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796700, 30.320513, 22.867548>,  <38.723225, 30.537920, 22.797295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.796700, 30.320513, 22.867548>,  <38.919159, 29.958168, 22.984636>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.796700, 30.320513, 22.867548> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.311897, -0.195070, -0.929875,
		-0.899440, -0.375979, -0.222816,
		-0.306148, 0.905863, -0.292721,
		38.704857, 30.592272, 22.779732>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.716080, 29.851997, 22.316566>,  <38.919159, 29.958168, 22.984636>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.716080, 29.851997, 22.316566> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759659, 30.249344, 22.331305>,  <38.785805, 30.487751, 22.340147>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.759659, 30.249344, 22.331305>,  <38.716080, 29.851997, 22.316566>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.759659, 30.249344, 22.331305> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.406563, -0.010703, -0.913560,
		-0.907104, 0.114506, -0.405032,
		0.108943, 0.993365, 0.036845,
		38.792343, 30.547354, 22.342358>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.373703, 30.161911, 21.740223>,  <38.716080, 29.851997, 22.316566>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.373703, 30.161911, 21.740223> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682480, 30.386875, 21.858749>,  <38.867744, 30.521854, 21.929865>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.682480, 30.386875, 21.858749>,  <38.373703, 30.161911, 21.740223>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.682480, 30.386875, 21.858749> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.425522, -0.110857, -0.898132,
		-0.472272, 0.819392, -0.324894,
		0.771939, 0.562412, 0.296315,
		38.914062, 30.555599, 21.947643>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.590969, 30.582855, 21.162928>,  <38.373703, 30.161911, 21.740223>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.590969, 30.582855, 21.162928> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936543, 30.587801, 21.364307>,  <39.143887, 30.590769, 21.485136>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.936543, 30.587801, 21.364307>,  <38.590969, 30.582855, 21.162928>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.936543, 30.587801, 21.364307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489408, -0.256278, -0.833547,
		0.118717, 0.966524, -0.227459,
		0.863936, 0.012365, 0.503449,
		39.195724, 30.591511, 21.515343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.948021, 31.026485, 20.727526>,  <38.590969, 30.582855, 21.162928>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.948021, 31.026485, 20.727526> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248878, 30.917496, 20.967537>,  <39.429394, 30.852102, 21.111544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.248878, 30.917496, 20.967537>,  <38.948021, 31.026485, 20.727526>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.248878, 30.917496, 20.967537> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.611896, -0.049284, -0.789402,
		0.244663, 0.960900, 0.129656,
		0.752146, -0.272473, 0.600029,
		39.474522, 30.835754, 21.147545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.434341, 31.370028, 20.483162>,  <38.948021, 31.026485, 20.727526>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.434341, 31.370028, 20.483162> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601192, 31.066275, 20.682898>,  <39.701305, 30.884024, 20.802740>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.601192, 31.066275, 20.682898>,  <39.434341, 31.370028, 20.483162>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.601192, 31.066275, 20.682898> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.517215, -0.253431, -0.817473,
		0.747323, 0.599259, 0.287050,
		0.417131, -0.759382, 0.499340,
		39.726334, 30.838459, 20.832699>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.136410, 31.418016, 20.385460>,  <39.434341, 31.370028, 20.483162>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.136410, 31.418016, 20.385460> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097649, 31.033745, 20.489542>,  <40.074394, 30.803183, 20.551992>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.097649, 31.033745, 20.489542>,  <40.136410, 31.418016, 20.385460>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.097649, 31.033745, 20.489542> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507364, -0.272597, -0.817479,
		0.856266, 0.052806, 0.513829,
		-0.096901, -0.960678, 0.260208,
		40.068577, 30.745541, 20.567604>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.560574, 31.186354, 20.044804>,  <40.136410, 31.418016, 20.385460>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.560574, 31.186354, 20.044804> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378666, 30.842062, 20.136307>,  <40.269524, 30.635487, 20.191210>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.378666, 30.842062, 20.136307>,  <40.560574, 31.186354, 20.044804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.378666, 30.842062, 20.136307> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395883, -0.425452, -0.813798,
		0.797786, -0.279527, 0.534230,
		-0.454767, -0.860730, 0.228760,
		40.242237, 30.583843, 20.204935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.050579, 30.567438, 20.089630>,  <40.560574, 31.186354, 20.044804>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.050579, 30.567438, 20.089630> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688187, 30.432245, 19.987680>,  <40.470749, 30.351130, 19.926510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.688187, 30.432245, 19.987680>,  <41.050579, 30.567438, 20.089630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.688187, 30.432245, 19.987680> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.405505, -0.520119, -0.751693,
		0.121494, -0.784374, 0.608273,
		-0.905983, -0.337984, -0.254876,
		40.416393, 30.330851, 19.911217>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.211582, 29.934776, 20.020468>,  <41.050579, 30.567438, 20.089630>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.211582, 29.934776, 20.020468> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875801, 29.987591, 19.809610>,  <40.674332, 30.019279, 19.683096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.875801, 29.987591, 19.809610>,  <41.211582, 29.934776, 20.020468>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875801, 29.987591, 19.809610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.385140, -0.539793, -0.748526,
		-0.383382, -0.831378, 0.402279,
		-0.839455, 0.132038, -0.527144,
		40.623966, 30.027203, 19.651466>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.011681, 29.257931, 19.686878>,  <41.211582, 29.934776, 20.020468>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.011681, 29.257931, 19.686878> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809078, 29.540327, 19.488874>,  <40.687519, 29.709764, 19.370071>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.809078, 29.540327, 19.488874>,  <41.011681, 29.257931, 19.686878>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.809078, 29.540327, 19.488874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210677, -0.455366, -0.865018,
		-0.836104, -0.542421, 0.081908,
		-0.506502, 0.705989, -0.495009,
		40.657127, 29.752125, 19.340372>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.532097, 28.808981, 19.295834>,  <41.011681, 29.257931, 19.686878>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.532097, 28.808981, 19.295834> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590958, 29.165804, 19.124918>,  <40.626274, 29.379898, 19.022369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.590958, 29.165804, 19.124918>,  <40.532097, 28.808981, 19.295834>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.590958, 29.165804, 19.124918> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431826, -0.446589, -0.783635,
		-0.889872, -0.069197, -0.450933,
		0.147156, 0.892059, -0.427288,
		40.635105, 29.433422, 18.996731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.304817, 28.724390, 18.639116>,  <40.532097, 28.808981, 19.295834>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.304817, 28.724390, 18.639116> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549252, 29.040949, 18.645576>,  <40.695915, 29.230885, 18.649452>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.549252, 29.040949, 18.645576>,  <40.304817, 28.724390, 18.639116>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.549252, 29.040949, 18.645576> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.529084, -0.393196, -0.751976,
		-0.588760, 0.468070, -0.658993,
		0.611091, 0.791396, 0.016150,
		40.732578, 29.278368, 18.650421>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.473572, 28.827877, 17.880264>,  <40.304817, 28.724390, 18.639116>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.473572, 28.827877, 17.880264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765793, 28.987623, 18.101820>,  <40.941128, 29.083471, 18.234755>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.765793, 28.987623, 18.101820>,  <40.473572, 28.827877, 17.880264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.765793, 28.987623, 18.101820> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648877, -0.153331, -0.745284,
		-0.212710, 0.903880, -0.371154,
		0.730557, 0.399363, 0.553891,
		40.984959, 29.107431, 18.267988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.938068, 29.060598, 17.359203>,  <40.473572, 28.827877, 17.880264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.938068, 29.060598, 17.359203> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162678, 29.066517, 17.690136>,  <41.297443, 29.070068, 17.888695>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.162678, 29.066517, 17.690136>,  <40.938068, 29.060598, 17.359203>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.162678, 29.066517, 17.690136> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.821953, -0.125146, -0.555636,
		0.095316, 0.992028, -0.082433,
		0.561523, 0.014795, 0.827329,
		41.331135, 29.070955, 17.938335>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.424805, 29.638083, 17.261610>,  <40.938068, 29.060598, 17.359203>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.424805, 29.638083, 17.261610> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556622, 29.373505, 17.531097>,  <41.635712, 29.214758, 17.692789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.556622, 29.373505, 17.531097>,  <41.424805, 29.638083, 17.261610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.556622, 29.373505, 17.531097> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.917815, 0.057098, -0.392880,
		0.221401, 0.747818, 0.625899,
		0.329540, -0.661444, 0.673717,
		41.655483, 29.175072, 17.733213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.967674, 29.983816, 17.546787>,  <41.424805, 29.638083, 17.261610>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.967674, 29.983816, 17.546787> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027748, 29.604626, 17.659063>,  <42.063793, 29.377111, 17.726429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.027748, 29.604626, 17.659063>,  <41.967674, 29.983816, 17.546787>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.027748, 29.604626, 17.659063> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.964651, 0.078320, -0.251623,
		0.216549, 0.308560, 0.926228,
		0.150183, -0.947975, 0.280692,
		42.072803, 29.320232, 17.743271>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.585709, 29.957811, 17.932369>,  <41.967674, 29.983816, 17.546787>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.585709, 29.957811, 17.932369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549950, 29.569983, 17.841208>,  <42.528496, 29.337286, 17.786510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.549950, 29.569983, 17.841208>,  <42.585709, 29.957811, 17.932369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.549950, 29.569983, 17.841208> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963836, -0.026537, -0.265173,
		0.251056, -0.243369, 0.936879,
		-0.089397, -0.969571, -0.227905,
		42.523132, 29.279112, 17.772837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.150608, 29.628548, 18.202669>,  <42.585709, 29.957811, 17.932369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.150608, 29.628548, 18.202669> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007469, 29.400105, 17.907162>,  <42.921585, 29.263039, 17.729856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.007469, 29.400105, 17.907162>,  <43.150608, 29.628548, 18.202669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.007469, 29.400105, 17.907162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.889442, 0.032422, -0.455897,
		0.284318, -0.820236, 0.496363,
		-0.357850, -0.571106, -0.738770,
		42.900116, 29.228773, 17.685532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.617466, 29.148590, 18.130030>,  <43.150608, 29.628548, 18.202669>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.617466, 29.148590, 18.130030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421772, 29.149666, 17.781172>,  <43.304356, 29.150312, 17.571857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.421772, 29.149666, 17.781172>,  <43.617466, 29.148590, 18.130030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.421772, 29.149666, 17.781172> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.866521, 0.114920, -0.485730,
		0.098919, -0.993371, -0.058556,
		-0.489239, 0.002692, -0.872145,
		43.275002, 29.150473, 17.519527>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.958408, 28.621737, 17.758326>,  <43.617466, 29.148590, 18.130030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.958408, 28.621737, 17.758326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765053, 28.851994, 17.494516>,  <43.649040, 28.990149, 17.336231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.765053, 28.851994, 17.494516>,  <43.958408, 28.621737, 17.758326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.765053, 28.851994, 17.494516> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.874202, 0.277891, -0.398181,
		-0.045935, -0.769032, -0.637558,
		-0.483385, 0.575644, -0.659524,
		43.620037, 29.024687, 17.296659>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.256012, 28.501362, 17.069614>,  <43.958408, 28.621737, 17.758326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.256012, 28.501362, 17.069614> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113422, 28.872034, 17.117264>,  <44.027870, 29.094439, 17.145853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.113422, 28.872034, 17.117264>,  <44.256012, 28.501362, 17.069614>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.113422, 28.872034, 17.117264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.909269, 0.373405, -0.183845,
		-0.214847, 0.042780, -0.975710,
		-0.356470, 0.926682, 0.119123,
		44.006481, 29.150038, 17.153000>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.470882, 28.834215, 16.511148>,  <44.256012, 28.501362, 17.069614>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.470882, 28.834215, 16.511148> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445454, 29.038097, 16.854347>,  <44.430195, 29.160427, 17.060266>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.445454, 29.038097, 16.854347>,  <44.470882, 28.834215, 16.511148>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.445454, 29.038097, 16.854347> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.994408, 0.105004, 0.011300,
		-0.084333, 0.853918, -0.513529,
		-0.063572, 0.509704, 0.857998,
		44.426384, 29.191010, 17.111746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.835320, 29.136320, 16.075327>,  <44.470882, 28.834215, 16.511148>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.835320, 29.136320, 16.075327> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972805, 28.766888, 16.007378>,  <44.055298, 28.545229, 15.966609>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.972805, 28.766888, 16.007378>,  <43.835320, 29.136320, 16.075327>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.972805, 28.766888, 16.007378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.933909, -0.355133, 0.041175,
		-0.098355, 0.144491, -0.984606,
		0.343716, -0.923582, -0.169871,
		44.075920, 28.489813, 15.956416>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.486618, 28.634205, 15.459966>,  <43.835320, 29.136320, 16.075327>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.486618, 28.634205, 15.459966> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613785, 28.426096, 15.777013>,  <43.690086, 28.301229, 15.967241>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.613785, 28.426096, 15.777013>,  <43.486618, 28.634205, 15.459966>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.613785, 28.426096, 15.777013> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.852642, -0.522495, -0.000971,
		0.414644, -0.675509, -0.609719,
		0.317919, -0.520275, 0.792617,
		43.709160, 28.270014, 16.014797>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.469677, 27.929054, 15.296683>,  <43.486618, 28.634205, 15.459966>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.469677, 27.929054, 15.296683> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441036, 27.954241, 15.694860>,  <43.423851, 27.969353, 15.933767>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.441036, 27.954241, 15.694860>,  <43.469677, 27.929054, 15.296683>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.441036, 27.954241, 15.694860> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.732769, -0.680408, -0.009670,
		0.676699, -0.730123, 0.094859,
		-0.071604, 0.062966, 0.995444,
		43.419556, 27.973131, 15.993494>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.419052, 28.156345, 14.618955>,  <43.469677, 27.929054, 15.296683>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.419052, 28.156345, 14.618955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639309, 28.346291, 14.344351>,  <43.771461, 28.460258, 14.179588>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.639309, 28.346291, 14.344351>,  <43.419052, 28.156345, 14.618955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.639309, 28.346291, 14.344351> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.749895, 0.642672, -0.156942,
		0.366673, 0.601229, 0.709982,
		0.550643, 0.474865, -0.686509,
		43.804501, 28.488750, 14.138398>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.336063, 28.853678, 14.775240>,  <43.419052, 28.156345, 14.618955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.336063, 28.853678, 14.775240> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413231, 28.848768, 14.382785>,  <43.459534, 28.845821, 14.147312>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.413231, 28.848768, 14.382785>,  <43.336063, 28.853678, 14.775240>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.413231, 28.848768, 14.382785> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.819808, 0.547425, -0.168049,
		0.539162, 0.836765, 0.095547,
		0.192922, -0.012276, -0.981137,
		43.471107, 28.845085, 14.088444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236816, 29.481136, 14.803946>,  <43.336063, 28.853678, 14.775240>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236816, 29.481136, 14.803946> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414814, 29.777552, 14.602814>,  <43.521614, 29.955400, 14.482135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.414814, 29.777552, 14.602814>,  <43.236816, 29.481136, 14.803946>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.414814, 29.777552, 14.602814> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.670490, 0.647905, 0.361472,
		0.593650, 0.176286, 0.785177,
		0.444998, 0.741041, -0.502827,
		43.548313, 29.999865, 14.451965>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.441479, 30.086586, 15.371508>,  <43.236816, 29.481136, 14.803946>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.441479, 30.086586, 15.371508> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385159, 30.193853, 14.990296>,  <43.351368, 30.258213, 14.761570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.385159, 30.193853, 14.990296>,  <43.441479, 30.086586, 15.371508>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.385159, 30.193853, 14.990296> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564804, 0.768846, 0.299786,
		0.813124, 0.580484, 0.043206,
		-0.140802, 0.268166, -0.953028,
		43.342918, 30.274303, 14.704388>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.928207, 30.603067, 15.372313>,  <43.441479, 30.086586, 15.371508>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.928207, 30.603067, 15.372313> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609978, 30.597586, 15.130035>,  <43.419041, 30.594297, 14.984669>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.609978, 30.597586, 15.130035>,  <43.928207, 30.603067, 15.372313>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.609978, 30.597586, 15.130035> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.305237, 0.872656, 0.381184,
		0.523340, 0.488143, -0.698450,
		-0.795579, -0.013704, -0.605695,
		43.371304, 30.593475, 14.948327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.909405, 31.131622, 14.674264>,  <43.928207, 30.603067, 15.372313>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.909405, 31.131622, 14.674264> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556786, 31.041307, 14.840105>,  <43.345215, 30.987118, 14.939610>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.556786, 31.041307, 14.840105>,  <43.909405, 31.131622, 14.674264>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.556786, 31.041307, 14.840105> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.060947, 0.925296, 0.374315,
		-0.468146, 0.304707, -0.829453,
		-0.881547, -0.225787, 0.414602,
		43.292320, 30.973572, 14.964486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.495975, 31.637018, 14.522432>,  <43.909405, 31.131622, 14.674264>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.495975, 31.637018, 14.522432> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321419, 31.467674, 14.840007>,  <43.216686, 31.366068, 15.030552>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.321419, 31.467674, 14.840007>,  <43.495975, 31.637018, 14.522432>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.321419, 31.467674, 14.840007> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158652, 0.904767, 0.395254,
		-0.885661, 0.046524, -0.461996,
		-0.436387, -0.423358, 0.793936,
		43.190502, 31.340668, 15.078188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.898495, 32.073872, 14.660343>,  <43.495975, 31.637018, 14.522432>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.898495, 32.073872, 14.660343> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896946, 31.853172, 14.993944>,  <42.896015, 31.720753, 15.194105>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.896946, 31.853172, 14.993944>,  <42.898495, 32.073872, 14.660343>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.896946, 31.853172, 14.993944> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.444493, 0.748038, 0.492813,
		-0.895774, -0.368801, -0.248143,
		-0.003871, -0.551747, 0.834002,
		42.895786, 31.687649, 15.244144>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.216244, 31.985863, 14.984924>,  <42.898495, 32.073872, 14.660343>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.216244, 31.985863, 14.984924> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481041, 31.964767, 15.283984>,  <42.639919, 31.952110, 15.463420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.481041, 31.964767, 15.283984>,  <42.216244, 31.985863, 14.984924>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.481041, 31.964767, 15.283984> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577686, 0.599649, 0.553805,
		-0.477535, -0.798523, 0.366498,
		0.661996, -0.052741, 0.747649,
		42.679642, 31.948946, 15.508279>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.731091, 31.952873, 15.573237>,  <42.216244, 31.985863, 14.984924>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.731091, 31.952873, 15.573237> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090973, 32.013779, 15.736867>,  <42.306904, 32.050323, 15.835045>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.090973, 32.013779, 15.736867>,  <41.731091, 31.952873, 15.573237>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.090973, 32.013779, 15.736867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.434187, 0.216002, 0.874543,
		0.044797, -0.964448, 0.260448,
		0.899708, 0.152260, 0.409074,
		42.360886, 32.059456, 15.859589>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.706184, 31.626766, 16.200703>,  <41.731091, 31.952873, 15.573237>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.706184, 31.626766, 16.200703> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002945, 31.893740, 16.226381>,  <42.181000, 32.053925, 16.241789>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.002945, 31.893740, 16.226381>,  <41.706184, 31.626766, 16.200703>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.002945, 31.893740, 16.226381> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360336, 0.316124, 0.877624,
		0.565462, -0.674239, 0.475032,
		0.741897, 0.667433, 0.064197,
		42.225513, 32.093971, 16.245640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.980236, 31.574514, 16.849602>,  <41.706184, 31.626766, 16.200703>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.980236, 31.574514, 16.849602> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110661, 31.936724, 16.741005>,  <42.188915, 32.154049, 16.675846>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.110661, 31.936724, 16.741005>,  <41.980236, 31.574514, 16.849602>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.110661, 31.936724, 16.741005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.246140, 0.358602, 0.900455,
		0.912743, -0.226778, 0.339812,
		0.326061, 0.905526, -0.271492,
		42.208481, 32.208382, 16.659557>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.400181, 31.775812, 17.302830>,  <41.980236, 31.574514, 16.849602>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.400181, 31.775812, 17.302830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316128, 32.134495, 17.147003>,  <42.265694, 32.349705, 17.053507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.316128, 32.134495, 17.147003>,  <42.400181, 31.775812, 17.302830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.316128, 32.134495, 17.147003> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338742, 0.307002, 0.889384,
		0.917113, 0.318853, 0.239240,
		-0.210136, 0.896706, -0.389565,
		42.253086, 32.403507, 17.030134>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.606209, 32.350353, 17.821295>,  <42.400181, 31.775812, 17.302830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.606209, 32.350353, 17.821295> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317390, 32.499588, 17.588242>,  <42.144100, 32.589127, 17.448410>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.317390, 32.499588, 17.588242>,  <42.606209, 32.350353, 17.821295>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.317390, 32.499588, 17.588242> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440231, 0.401893, 0.802919,
		0.533712, 0.836236, -0.125942,
		-0.722044, 0.373084, -0.582632,
		42.100777, 32.611515, 17.413452>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.344078, 32.850262, 18.265772>,  <42.606209, 32.350353, 17.821295>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.344078, 32.850262, 18.265772> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070465, 32.846245, 17.974020>,  <41.906296, 32.843834, 17.798969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.070465, 32.846245, 17.974020>,  <42.344078, 32.850262, 18.265772>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.070465, 32.846245, 17.974020> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.707297, 0.253689, 0.659828,
		0.178408, 0.967234, -0.180637,
		-0.684034, -0.010045, -0.729381,
		41.865253, 32.843231, 17.755205>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.964146, 33.487499, 18.384287>,  <42.344078, 32.850262, 18.265772>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.964146, 33.487499, 18.384287> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750423, 33.208733, 18.192942>,  <41.622192, 33.041473, 18.078135>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.750423, 33.208733, 18.192942>,  <41.964146, 33.487499, 18.384287>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.750423, 33.208733, 18.192942> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.793861, 0.219321, 0.567171,
		-0.290356, 0.682792, -0.670439,
		-0.534301, -0.696917, -0.478361,
		41.590134, 32.999657, 18.049433>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.258579, 33.766754, 18.053299>,  <41.964146, 33.487499, 18.384287>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.258579, 33.766754, 18.053299> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206108, 33.378513, 18.134014>,  <41.174625, 33.145569, 18.182444>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.206108, 33.378513, 18.134014>,  <41.258579, 33.766754, 18.053299>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.206108, 33.378513, 18.134014> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820328, 0.220568, 0.527647,
		-0.556645, -0.096315, -0.825149,
		-0.131181, -0.970604, 0.201788,
		41.166756, 33.087334, 18.194551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.668957, 33.720741, 18.305178>,  <41.258579, 33.766754, 18.053299>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.668957, 33.720741, 18.305178> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710335, 33.329758, 18.378805>,  <40.735161, 33.095169, 18.422981>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.710335, 33.329758, 18.378805>,  <40.668957, 33.720741, 18.305178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.710335, 33.329758, 18.378805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.909814, -0.018212, 0.414616,
		-0.401916, -0.210359, -0.891186,
		0.103448, -0.977455, 0.184068,
		40.741371, 33.036522, 18.434025>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.065636, 33.409081, 18.128830>,  <40.668957, 33.720741, 18.305178>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.065636, 33.409081, 18.128830> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193287, 33.143257, 18.399094>,  <40.269878, 32.983761, 18.561253>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.193287, 33.143257, 18.399094>,  <40.065636, 33.409081, 18.128830>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.193287, 33.143257, 18.399094> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.911802, -0.020906, 0.410096,
		-0.258410, -0.746939, -0.612622,
		0.319125, -0.664563, 0.675659,
		40.289024, 32.943890, 18.601791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.549301, 32.897091, 18.122007>,  <40.065636, 33.409081, 18.128830>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.549301, 32.897091, 18.122007> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739758, 32.894417, 18.473745>,  <39.854031, 32.892811, 18.684788>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739758, 32.894417, 18.473745>,  <39.549301, 32.897091, 18.122007>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739758, 32.894417, 18.473745> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.876442, 0.077891, 0.475165,
		-0.071671, -0.996939, 0.031224,
		0.476143, -0.006690, 0.879343,
		39.882599, 32.892410, 18.737549>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.265652, 32.377468, 18.540184>,  <39.549301, 32.897091, 18.122007>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.265652, 32.377468, 18.540184> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457874, 32.626289, 18.787447>,  <39.573208, 32.775581, 18.935804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.457874, 32.626289, 18.787447>,  <39.265652, 32.377468, 18.540184>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.457874, 32.626289, 18.787447> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.840140, 0.124445, 0.527899,
		0.251455, -0.773023, 0.582414,
		0.480557, 0.622052, 0.618156,
		39.602043, 32.812904, 18.972893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.876068, 32.304127, 19.133890>,  <39.265652, 32.377468, 18.540184>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.876068, 32.304127, 19.133890> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102127, 32.616425, 19.240507>,  <39.237762, 32.803802, 19.304478>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.102127, 32.616425, 19.240507>,  <38.876068, 32.304127, 19.133890>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.102127, 32.616425, 19.240507> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.721977, 0.311725, 0.617719,
		0.399192, -0.541541, 0.739851,
		0.565150, 0.780744, 0.266542,
		39.271671, 32.850647, 19.320469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.819115, 32.324490, 19.879179>,  <38.876068, 32.304127, 19.133890>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.819115, 32.324490, 19.879179> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917236, 32.679882, 19.724041>,  <38.976109, 32.893116, 19.630959>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.917236, 32.679882, 19.724041>,  <38.819115, 32.324490, 19.879179>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.917236, 32.679882, 19.724041> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620554, 0.451276, 0.641298,
		0.744807, 0.083366, 0.662052,
		0.245305, 0.888482, -0.387847,
		38.990829, 32.946426, 19.607687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.077477, 32.770164, 20.348913>,  <38.819115, 32.324490, 19.879179>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.077477, 32.770164, 20.348913> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946110, 33.015678, 20.061743>,  <38.867290, 33.162987, 19.889441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.946110, 33.015678, 20.061743>,  <39.077477, 32.770164, 20.348913>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.946110, 33.015678, 20.061743> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548699, 0.494706, 0.673941,
		0.768814, 0.615256, 0.174313,
		-0.328413, 0.613780, -0.717927,
		38.847588, 33.199814, 19.846365>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.946224, 33.385666, 20.767437>,  <39.077477, 32.770164, 20.348913>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.946224, 33.385666, 20.767437> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767200, 33.463570, 20.418322>,  <38.659786, 33.510311, 20.208853>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.767200, 33.463570, 20.418322>,  <38.946224, 33.385666, 20.767437>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.767200, 33.463570, 20.418322> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.727632, 0.488059, 0.482028,
		0.519850, 0.850805, -0.076724,
		-0.447558, 0.194755, -0.872790,
		38.632935, 33.521996, 20.156485>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.900814, 34.081387, 20.753910>,  <38.946224, 33.385666, 20.767437>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.900814, 34.081387, 20.753910> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613789, 33.926426, 20.522383>,  <38.441574, 33.833450, 20.383467>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.613789, 33.926426, 20.522383>,  <38.900814, 34.081387, 20.753910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.613789, 33.926426, 20.522383> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.690113, 0.507692, 0.515744,
		0.094063, 0.769527, -0.631649,
		-0.717562, -0.387397, -0.578816,
		38.398521, 33.810207, 20.348738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.428860, 34.593044, 20.633902>,  <38.900814, 34.081387, 20.753910>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.428860, 34.593044, 20.633902> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216305, 34.270332, 20.530569>,  <38.088772, 34.076706, 20.468571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.216305, 34.270332, 20.530569>,  <38.428860, 34.593044, 20.633902>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.216305, 34.270332, 20.530569> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.757587, 0.316130, 0.571073,
		-0.379065, 0.499168, -0.779193,
		-0.531387, -0.806780, -0.258329,
		38.056889, 34.028297, 20.453070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.809357, 34.842045, 20.518492>,  <38.428860, 34.593044, 20.633902>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.809357, 34.842045, 20.518492> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727798, 34.455223, 20.579466>,  <37.678864, 34.223129, 20.616051>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.727798, 34.455223, 20.579466>,  <37.809357, 34.842045, 20.518492>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.727798, 34.455223, 20.579466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.858696, 0.251438, 0.446565,
		-0.470180, -0.039842, -0.881671,
		-0.203893, -0.967053, 0.152434,
		37.666630, 34.165108, 20.625196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.138866, 34.814278, 20.602531>,  <37.809357, 34.842045, 20.518492>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.138866, 34.814278, 20.602531> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191196, 34.431316, 20.705494>,  <37.222595, 34.201538, 20.767271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.191196, 34.431316, 20.705494>,  <37.138866, 34.814278, 20.602531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.191196, 34.431316, 20.705494> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.893282, -0.001215, 0.449496,
		-0.430037, -0.288744, -0.855392,
		0.130829, -0.957405, 0.257407,
		37.230446, 34.144096, 20.782717>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.520351, 34.549316, 20.418894>,  <37.138866, 34.814278, 20.602531>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.520351, 34.549316, 20.418894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706055, 34.337364, 20.702778>,  <36.817478, 34.210194, 20.873108>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.706055, 34.337364, 20.702778>,  <36.520351, 34.549316, 20.418894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.706055, 34.337364, 20.702778> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.777958, 0.139068, 0.612733,
		-0.423372, -0.836594, -0.347659,
		0.464260, -0.529878, 0.709712,
		36.845333, 34.178402, 20.915691>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.980644, 34.170986, 20.712938>,  <36.520351, 34.549316, 20.418894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.980644, 34.170986, 20.712938> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273808, 34.177612, 20.984987>,  <36.449707, 34.181587, 21.148216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.273808, 34.177612, 20.984987>,  <35.980644, 34.170986, 20.712938>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.273808, 34.177612, 20.984987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673541, 0.158499, 0.721956,
		-0.095837, -0.987220, 0.127325,
		0.732911, 0.016568, 0.680123,
		36.493679, 34.182583, 21.189024>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.702312, 33.836746, 21.294353>,  <35.980644, 34.170986, 20.712938>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.702312, 33.836746, 21.294353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012638, 34.034103, 21.451672>,  <36.198833, 34.152519, 21.546062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.012638, 34.034103, 21.451672>,  <35.702312, 33.836746, 21.294353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.012638, 34.034103, 21.451672> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553038, 0.231662, 0.800301,
		0.303758, -0.838386, 0.452594,
		0.775810, 0.493399, 0.393290,
		36.245380, 34.182121, 21.569660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.668400, 33.679409, 22.078516>,  <35.702312, 33.836746, 21.294353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.668400, 33.679409, 22.078516> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903454, 33.999889, 22.033312>,  <36.044487, 34.192177, 22.006189>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.903454, 33.999889, 22.033312>,  <35.668400, 33.679409, 22.078516>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.903454, 33.999889, 22.033312> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.465502, 0.448999, 0.762697,
		0.661812, -0.395579, 0.636806,
		0.587632, 0.801197, -0.113010,
		36.079742, 34.240250, 21.999409>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.975395, 33.845314, 22.694386>,  <35.668400, 33.679409, 22.078516>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.975395, 33.845314, 22.694386> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982651, 34.188763, 22.489471>,  <35.987003, 34.394833, 22.366522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.982651, 34.188763, 22.489471>,  <35.975395, 33.845314, 22.694386>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.982651, 34.188763, 22.489471> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546623, 0.437533, 0.713981,
		0.837183, 0.267080, 0.477277,
		0.018135, 0.858623, -0.512287,
		35.988091, 34.446350, 22.335785>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094330, 34.303959, 23.191509>,  <35.975395, 33.845314, 22.694386>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094330, 34.303959, 23.191509> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964691, 34.532463, 22.889881>,  <35.886906, 34.669563, 22.708904>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.964691, 34.532463, 22.889881>,  <36.094330, 34.303959, 23.191509>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.964691, 34.532463, 22.889881> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.433500, 0.618804, 0.655102,
		0.840855, 0.539209, 0.047086,
		-0.324100, 0.571258, -0.754071,
		35.867462, 34.703842, 22.663660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.184795, 34.986763, 23.371986>,  <36.094330, 34.303959, 23.191509>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.184795, 34.986763, 23.371986> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915043, 35.018620, 23.078356>,  <35.753193, 35.037731, 22.902178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.915043, 35.018620, 23.078356>,  <36.184795, 34.986763, 23.371986>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.915043, 35.018620, 23.078356> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.456968, 0.735893, 0.499642,
		0.579992, 0.672398, -0.459880,
		-0.674381, 0.079638, -0.734077,
		35.712730, 35.042511, 22.858133>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.118988, 35.695759, 23.326300>,  <36.184795, 34.986763, 23.371986>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.118988, 35.695759, 23.326300> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787495, 35.581177, 23.133991>,  <35.588596, 35.512428, 23.018606>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.787495, 35.581177, 23.133991>,  <36.118988, 35.695759, 23.326300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.787495, 35.581177, 23.133991> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.553537, 0.546102, 0.628784,
		0.082428, 0.787219, -0.611140,
		-0.828736, -0.286459, -0.480769,
		35.538876, 35.495239, 22.989761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.801369, 36.344582, 23.180250>,  <36.118988, 35.695759, 23.326300>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.801369, 36.344582, 23.180250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557014, 36.028164, 23.193357>,  <35.410400, 35.838314, 23.201221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.557014, 36.028164, 23.193357>,  <35.801369, 36.344582, 23.180250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.557014, 36.028164, 23.193357> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536858, 0.444301, 0.717203,
		-0.581897, 0.420535, -0.696094,
		-0.610884, -0.791041, 0.032770,
		35.373749, 35.790852, 23.203188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.087296, 36.609535, 23.197021>,  <35.801369, 36.344582, 23.180250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.087296, 36.609535, 23.197021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067894, 36.234344, 23.334339>,  <35.056255, 36.009232, 23.416731>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.067894, 36.234344, 23.334339>,  <35.087296, 36.609535, 23.197021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.067894, 36.234344, 23.334339> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577328, 0.306796, 0.756683,
		-0.815071, -0.161495, -0.556398,
		-0.048500, -0.937974, 0.343296,
		35.053345, 35.952953, 23.437328>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.436043, 36.528091, 23.454023>,  <35.087296, 36.609535, 23.197021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.436043, 36.528091, 23.454023> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599892, 36.213928, 23.639645>,  <34.698200, 36.025433, 23.751017>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.599892, 36.213928, 23.639645>,  <34.436043, 36.528091, 23.454023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.599892, 36.213928, 23.639645> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.555263, 0.188944, 0.809928,
		-0.723802, -0.589438, -0.358711,
		0.409626, -0.785406, 0.464051,
		34.722778, 35.978306, 23.778860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.853649, 36.067097, 23.793989>,  <34.436043, 36.528091, 23.454023>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.853649, 36.067097, 23.793989> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198277, 35.991344, 23.982384>,  <34.405052, 35.945892, 24.095421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.198277, 35.991344, 23.982384>,  <33.853649, 36.067097, 23.793989>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.198277, 35.991344, 23.982384> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.458727, 0.106890, 0.882125,
		-0.217399, -0.976069, 0.005221,
		0.861573, -0.189378, 0.470987,
		34.456749, 35.934532, 24.123680>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.576473, 35.614410, 24.297741>,  <33.853649, 36.067097, 23.793989>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.576473, 35.614410, 24.297741> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937916, 35.742783, 24.411228>,  <34.154781, 35.819805, 24.479321>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<33.937916, 35.742783, 24.411228>,  <33.576473, 35.614410, 24.297741>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<33.937916, 35.742783, 24.411228> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.354839, 0.189770, 0.915465,
		0.239964, -0.927894, 0.285358,
		0.903608, 0.320935, 0.283715,
		34.209000, 35.839062, 24.496344>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.828224, 35.151806, 24.895445>,  <33.576473, 35.614410, 24.297741>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.828224, 35.151806, 24.895445> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025322, 35.496685, 24.942451>,  <34.143581, 35.703613, 24.970655>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.025322, 35.496685, 24.942451>,  <33.828224, 35.151806, 24.895445>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.025322, 35.496685, 24.942451> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360783, 0.079533, 0.929252,
		0.791855, -0.500285, 0.350257,
		0.492748, 0.862201, 0.117516,
		34.173145, 35.755344, 24.977707>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.116367, 35.138786, 25.603325>,  <33.828224, 35.151806, 24.895445>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.116367, 35.138786, 25.603325> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154293, 35.523933, 25.502220>,  <34.177048, 35.755024, 25.441557>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.154293, 35.523933, 25.502220>,  <34.116367, 35.138786, 25.603325>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.154293, 35.523933, 25.502220> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.141482, 0.264361, 0.953990,
		0.985390, -0.054687, 0.161293,
		0.094810, 0.962872, -0.252762,
		34.182735, 35.812794, 25.426392>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.618256, 35.463219, 26.066042>,  <34.116367, 35.138786, 25.603325>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.618256, 35.463219, 26.066042> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415504, 35.791847, 25.961655>,  <34.293854, 35.989025, 25.899023>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.415504, 35.791847, 25.961655>,  <34.618256, 35.463219, 26.066042>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.415504, 35.791847, 25.961655> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.056428, 0.270466, 0.961074,
		0.860170, 0.501872, -0.090733,
		-0.506876, 0.821567, -0.260966,
		34.263443, 36.038319, 25.883366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.770931, 35.967247, 26.604595>,  <34.618256, 35.463219, 26.066042>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.770931, 35.967247, 26.604595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448780, 36.124813, 26.427418>,  <34.255489, 36.219353, 26.321112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<34.448780, 36.124813, 26.427418>,  <34.770931, 35.967247, 26.604595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<34.448780, 36.124813, 26.427418> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323435, 0.334186, 0.885274,
		0.496746, 0.856243, -0.141742,
		-0.805378, 0.393912, -0.442945,
		34.207169, 36.242985, 26.294535>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.142597, 36.341003, 27.163494>,  <34.770931, 35.967247, 26.604595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.142597, 36.341003, 27.163494> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354801, 36.420574, 27.493095>,  <35.482124, 36.468315, 27.690857>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.354801, 36.420574, 27.493095>,  <35.142597, 36.341003, 27.163494>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.354801, 36.420574, 27.493095> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.823751, -0.350302, -0.445784,
		0.199973, 0.915269, -0.349705,
		0.530514, 0.198925, 0.824005,
		35.513954, 36.480251, 27.740297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.758369, 36.669796, 26.880905>,  <35.142597, 36.341003, 27.163494>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.758369, 36.669796, 26.880905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878742, 36.616711, 27.258652>,  <35.950966, 36.584858, 27.485300>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<35.878742, 36.616711, 27.258652>,  <35.758369, 36.669796, 26.880905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.878742, 36.616711, 27.258652> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.953425, 0.020540, -0.300930,
		0.020540, 0.990942, 0.132714,
		0.300930, -0.132714, 0.944367,
		35.969021, 36.576897, 27.541962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.246159, 37.125454, 26.988407>,  <35.758369, 36.669796, 26.880905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.246159, 37.125454, 26.988407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350098, 36.847721, 27.256849>,  <36.412460, 36.681080, 27.417915>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.350098, 36.847721, 27.256849>,  <36.246159, 37.125454, 26.988407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.350098, 36.847721, 27.256849> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.913310, -0.048983, -0.404309,
		0.313597, 0.717987, 0.621411,
		0.259850, -0.694331, 0.671106,
		36.428051, 36.639423, 27.458181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.964050, 37.295429, 27.184397>,  <36.246159, 37.125454, 26.988407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.964050, 37.295429, 27.184397> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936600, 36.908604, 27.282436>,  <36.920128, 36.676506, 27.341261>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<36.936600, 36.908604, 27.282436>,  <36.964050, 37.295429, 27.184397>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.936600, 36.908604, 27.282436> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.878576, -0.174980, -0.444395,
		0.472647, 0.184841, 0.861649,
		-0.068629, -0.967066, 0.245100,
		36.916012, 36.618484, 27.355967>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.693619, 37.015350, 27.404678>,  <36.964050, 37.295429, 27.184397>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.693619, 37.015350, 27.404678> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496326, 36.674332, 27.335527>,  <37.377953, 36.469719, 27.294037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.496326, 36.674332, 27.335527>,  <37.693619, 37.015350, 27.404678>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.496326, 36.674332, 27.335527> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.772782, -0.338178, -0.537069,
		0.399413, -0.398495, 0.825633,
		-0.493231, -0.852547, -0.172877,
		37.348358, 36.418568, 27.283665>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.107262, 36.472214, 27.600664>,  <37.693619, 37.015350, 27.404678>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.107262, 36.472214, 27.600664> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858898, 36.293083, 27.343317>,  <37.709881, 36.185604, 27.188910>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.858898, 36.293083, 27.343317>,  <38.107262, 36.472214, 27.600664>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.858898, 36.293083, 27.343317> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.777603, -0.455555, -0.433363,
		-0.099017, -0.769364, 0.631090,
		-0.620910, -0.447827, -0.643368,
		37.672626, 36.158733, 27.150307>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.127071, 35.712090, 27.627190>,  <38.107262, 36.472214, 27.600664>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.127071, 35.712090, 27.627190> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974739, 35.803764, 27.268873>,  <37.883339, 35.858768, 27.053883>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.974739, 35.803764, 27.268873>,  <38.127071, 35.712090, 27.627190>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.974739, 35.803764, 27.268873> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.653043, -0.619192, -0.436046,
		-0.654603, -0.751050, 0.086138,
		-0.380828, 0.229185, -0.895792,
		37.860489, 35.872520, 27.000135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.158604, 35.082664, 27.159660>,  <38.127071, 35.712090, 27.627190>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.158604, 35.082664, 27.159660> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102974, 35.376686, 26.894224>,  <38.069595, 35.553101, 26.734962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.102974, 35.376686, 26.894224>,  <38.158604, 35.082664, 27.159660>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.102974, 35.376686, 26.894224> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586196, -0.478978, -0.653417,
		-0.798144, -0.479865, -0.364275,
		-0.139072, 0.735057, -0.663588,
		38.061253, 35.597202, 26.695148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.061543, 34.760784, 26.555862>,  <38.158604, 35.082664, 27.159660>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.061543, 34.760784, 26.555862> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172123, 35.130375, 26.450148>,  <38.238472, 35.352127, 26.386719>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.172123, 35.130375, 26.450148>,  <38.061543, 34.760784, 26.555862>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.172123, 35.130375, 26.450148> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.607972, -0.381128, -0.696500,
		-0.744274, 0.031871, -0.667114,
		0.276454, 0.923973, -0.264286,
		38.255058, 35.407566, 26.370861>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.971905, 34.785072, 25.815908>,  <38.061543, 34.760784, 26.555862>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.971905, 34.785072, 25.815908> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214272, 35.093349, 25.894794>,  <38.359692, 35.278316, 25.942125>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.214272, 35.093349, 25.894794>,  <37.971905, 34.785072, 25.815908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.214272, 35.093349, 25.894794> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.451352, -0.128903, -0.882987,
		-0.655091, 0.624031, -0.425959,
		0.605918, 0.770694, 0.197214,
		38.396046, 35.324558, 25.953959>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.123940, 35.023617, 25.173285>,  <37.971905, 34.785072, 25.815908>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.123940, 35.023617, 25.173285> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395443, 35.203796, 25.405279>,  <38.558346, 35.311905, 25.544476>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.395443, 35.203796, 25.405279>,  <38.123940, 35.023617, 25.173285>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.395443, 35.203796, 25.405279> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.617553, 0.077262, -0.782725,
		-0.397391, 0.889452, -0.225736,
		0.678755, 0.450451, 0.579987,
		38.599068, 35.338932, 25.579275>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.358582, 35.494617, 24.810463>,  <38.123940, 35.023617, 25.173285>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.358582, 35.494617, 24.810463> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643635, 35.437786, 25.085262>,  <38.814667, 35.403687, 25.250141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.643635, 35.437786, 25.085262>,  <38.358582, 35.494617, 24.810463>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.643635, 35.437786, 25.085262> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.692300, -0.015951, -0.721433,
		0.113457, 0.989727, 0.086992,
		0.712635, -0.142077, 0.686998,
		38.857426, 35.395164, 25.291361>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.875206, 35.958950, 24.626539>,  <38.358582, 35.494617, 24.810463>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.875206, 35.958950, 24.626539> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028355, 35.654560, 24.836044>,  <39.120243, 35.471928, 24.961748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.028355, 35.654560, 24.836044>,  <38.875206, 35.958950, 24.626539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.028355, 35.654560, 24.836044> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.745279, -0.080575, -0.661866,
		0.545866, 0.643758, 0.536289,
		0.382870, -0.760975, 0.523762,
		39.143215, 35.426266, 24.993174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.600796, 36.136929, 24.515194>,  <38.875206, 35.958950, 24.626539>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.600796, 36.136929, 24.515194> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563438, 35.760727, 24.645874>,  <39.541023, 35.535007, 24.724283>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.563438, 35.760727, 24.645874>,  <39.600796, 36.136929, 24.515194>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.563438, 35.760727, 24.645874> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.687572, -0.298246, -0.662038,
		0.720086, 0.162803, 0.674516,
		-0.093389, -0.940502, 0.326701,
		39.535423, 35.478577, 24.743885>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.229679, 35.871620, 24.539030>,  <39.600796, 36.136929, 24.515194>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.229679, 35.871620, 24.539030> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999138, 35.545132, 24.523024>,  <39.860813, 35.349239, 24.513420>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.999138, 35.545132, 24.523024>,  <40.229679, 35.871620, 24.539030>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.999138, 35.545132, 24.523024> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.589850, -0.381620, -0.711648,
		0.565590, -0.433765, 0.701395,
		-0.576355, -0.816219, -0.040016,
		39.826233, 35.300266, 24.511019>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.661945, 35.206924, 24.447876>,  <40.229679, 35.871620, 24.539030>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.661945, 35.206924, 24.447876> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287354, 35.114391, 24.342424>,  <40.062599, 35.058872, 24.279154>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.287354, 35.114391, 24.342424>,  <40.661945, 35.206924, 24.447876>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.287354, 35.114391, 24.342424> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.348416, -0.527309, -0.774953,
		0.040255, -0.817577, 0.574410,
		-0.936475, -0.231329, -0.263630,
		40.006413, 35.044994, 24.263336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.677685, 34.566563, 24.181965>,  <40.661945, 35.206924, 24.447876>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.677685, 34.566563, 24.181965> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329468, 34.711029, 24.048265>,  <40.120537, 34.797710, 23.968046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.329468, 34.711029, 24.048265>,  <40.677685, 34.566563, 24.181965>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.329468, 34.711029, 24.048265> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.130830, -0.484918, -0.864718,
		-0.474382, -0.796504, 0.374891,
		-0.870543, 0.361160, -0.334243,
		40.068306, 34.819378, 23.947992>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.324036, 34.057552, 24.034893>,  <40.677685, 34.566563, 24.181965>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.324036, 34.057552, 24.034893> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164845, 34.351303, 23.814966>,  <40.069328, 34.527554, 23.683010>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.164845, 34.351303, 23.814966>,  <40.324036, 34.057552, 24.034893>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.164845, 34.351303, 23.814966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.163493, -0.532957, -0.830197,
		-0.902708, -0.420294, 0.092040,
		-0.397980, 0.734378, -0.549819,
		40.045452, 34.571617, 23.650021>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.881279, 33.729370, 23.692541>,  <40.324036, 34.057552, 24.034893>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.881279, 33.729370, 23.692541> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954849, 34.070923, 23.497789>,  <39.998993, 34.275856, 23.380939>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.954849, 34.070923, 23.497789>,  <39.881279, 33.729370, 23.692541>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.954849, 34.070923, 23.497789> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.040688, -0.501517, -0.864191,
		-0.982097, 0.139138, -0.126985,
		0.183926, 0.853886, -0.486877,
		40.010029, 34.327087, 23.351727>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.589344, 33.647194, 23.013353>,  <39.881279, 33.729370, 23.692541>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.589344, 33.647194, 23.013353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831470, 33.960720, 22.957897>,  <39.976746, 34.148838, 22.924623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.831470, 33.960720, 22.957897>,  <39.589344, 33.647194, 23.013353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.831470, 33.960720, 22.957897> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.211623, -0.326378, -0.921245,
		-0.767337, 0.528306, -0.363437,
		0.605318, 0.783817, -0.138640,
		40.013065, 34.195866, 22.916306>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.469646, 33.953789, 22.372171>,  <39.589344, 33.647194, 23.013353>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.469646, 33.953789, 22.372171> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823906, 34.119698, 22.455685>,  <40.036461, 34.219242, 22.505793>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.823906, 34.119698, 22.455685>,  <39.469646, 33.953789, 22.372171>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.823906, 34.119698, 22.455685> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.286630, -0.134567, -0.948544,
		-0.365330, 0.899922, -0.238064,
		0.885651, 0.414768, 0.208783,
		40.089600, 34.244129, 22.518320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.669765, 34.491417, 21.785152>,  <39.469646, 33.953789, 22.372171>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.669765, 34.491417, 21.785152> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013229, 34.361534, 21.943777>,  <40.219307, 34.283604, 22.038952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.013229, 34.361534, 21.943777>,  <39.669765, 34.491417, 21.785152>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.013229, 34.361534, 21.943777> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.416572, -0.008632, -0.909062,
		0.298603, 0.945775, 0.127852,
		0.858664, -0.324708, 0.396561,
		40.270828, 34.264122, 22.062746>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.088604, 34.636246, 21.215399>,  <39.669765, 34.491417, 21.785152>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.088604, 34.636246, 21.215399> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301056, 34.382534, 21.440109>,  <40.428528, 34.230309, 21.574936>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.301056, 34.382534, 21.440109>,  <40.088604, 34.636246, 21.215399>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.301056, 34.382534, 21.440109> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.605046, -0.180221, -0.775526,
		0.593142, 0.751807, 0.288045,
		0.531134, -0.634277, 0.561774,
		40.460396, 34.192249, 21.608641>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.782547, 34.783417, 21.033026>,  <40.088604, 34.636246, 21.215399>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.782547, 34.783417, 21.033026> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757851, 34.407711, 21.168068>,  <40.743034, 34.182289, 21.249094>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.757851, 34.407711, 21.168068>,  <40.782547, 34.783417, 21.033026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.757851, 34.407711, 21.168068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.668071, -0.290191, -0.685179,
		0.741532, 0.183244, 0.645409,
		-0.061737, -0.939261, 0.337606,
		40.739330, 34.125935, 21.269350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.458931, 34.652607, 21.042727>,  <40.782547, 34.783417, 21.033026>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.458931, 34.652607, 21.042727> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281227, 34.295174, 21.068493>,  <41.174606, 34.080715, 21.083952>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.281227, 34.295174, 21.068493>,  <41.458931, 34.652607, 21.042727>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.281227, 34.295174, 21.068493> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.635671, -0.365069, -0.680181,
		0.631312, -0.261231, 0.730208,
		-0.444261, -0.893579, 0.064416,
		41.147949, 34.027100, 21.087818>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954212, 34.205875, 21.187077>,  <41.458931, 34.652607, 21.042727>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954212, 34.205875, 21.187077> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666485, 33.975281, 21.032030>,  <41.493851, 33.836922, 20.939001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.666485, 33.975281, 21.032030>,  <41.954212, 34.205875, 21.187077>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.666485, 33.975281, 21.032030> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.693746, -0.567133, -0.443934,
		0.036092, -0.588236, 0.807884,
		-0.719315, -0.576488, -0.387617,
		41.450691, 33.802334, 20.915745>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004269, 33.467670, 21.414021>,  <41.954212, 34.205875, 21.187077>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004269, 33.467670, 21.414021> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814018, 33.458389, 21.062284>,  <41.699867, 33.452820, 20.851242>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.814018, 33.458389, 21.062284>,  <42.004269, 33.467670, 21.414021>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.814018, 33.458389, 21.062284> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.674189, -0.651719, -0.347465,
		-0.565019, -0.758106, 0.325621,
		-0.475629, -0.023205, -0.879340,
		41.671329, 33.451427, 20.798483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.862869, 32.797161, 21.369925>,  <42.004269, 33.467670, 21.414021>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.862869, 32.797161, 21.369925> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855499, 32.947845, 20.999466>,  <41.851078, 33.038258, 20.777191>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.855499, 32.947845, 20.999466>,  <41.862869, 32.797161, 21.369925>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.855499, 32.947845, 20.999466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569164, -0.757617, -0.319483,
		-0.822018, -0.533016, -0.200451,
		-0.018425, 0.376710, -0.926148,
		41.849972, 33.060860, 20.721622>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.783443, 32.224125, 20.889355>,  <41.862869, 32.797161, 21.369925>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.783443, 32.224125, 20.889355> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908913, 32.527153, 20.660378>,  <41.984196, 32.708969, 20.522991>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.908913, 32.527153, 20.660378>,  <41.783443, 32.224125, 20.889355>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.908913, 32.527153, 20.660378> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.545265, -0.637270, -0.544585,
		-0.777364, -0.141312, -0.612973,
		0.313673, 0.757574, -0.572443,
		42.003014, 32.754425, 20.488644>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.839615, 31.865780, 20.193329>,  <41.783443, 32.224125, 20.889355>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.839615, 31.865780, 20.193329> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035553, 32.213886, 20.172585>,  <42.153118, 32.422749, 20.160137>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.035553, 32.213886, 20.172585>,  <41.839615, 31.865780, 20.193329>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.035553, 32.213886, 20.172585> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700192, -0.428165, -0.571320,
		-0.519404, 0.243547, -0.819087,
		0.489848, 0.870264, -0.051860,
		42.182507, 32.474964, 20.157026>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.925297, 31.903301, 19.601871>,  <41.839615, 31.865780, 20.193329>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.925297, 31.903301, 19.601871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206268, 32.153133, 19.738400>,  <42.374851, 32.303032, 19.820316>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.206268, 32.153133, 19.738400>,  <41.925297, 31.903301, 19.601871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.206268, 32.153133, 19.738400> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662800, -0.399217, -0.633500,
		-0.259411, 0.671213, -0.694391,
		0.702426, 0.624579, 0.341319,
		42.416996, 32.340508, 19.840796>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.288353, 32.191166, 19.042751>,  <41.925297, 31.903301, 19.601871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.288353, 32.191166, 19.042751> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550259, 32.209667, 19.344517>,  <42.707401, 32.220768, 19.525576>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.550259, 32.209667, 19.344517>,  <42.288353, 32.191166, 19.042751>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.550259, 32.209667, 19.344517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.714126, -0.364826, -0.597433,
		0.247599, 0.929926, -0.271904,
		0.654766, 0.046250, 0.754415,
		42.746689, 32.223541, 19.570841>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.918743, 32.482082, 18.725595>,  <42.288353, 32.191166, 19.042751>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.918743, 32.482082, 18.725595> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038094, 32.326332, 19.074160>,  <43.109703, 32.232880, 19.283298>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.038094, 32.326332, 19.074160>,  <42.918743, 32.482082, 18.725595>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.038094, 32.326332, 19.074160> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.759946, -0.455458, -0.463724,
		0.577455, 0.800588, 0.160010,
		0.298374, -0.389379, 0.871411,
		43.127605, 32.209518, 19.335583>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.587963, 32.735424, 18.902502>,  <42.918743, 32.482082, 18.725595>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.587963, 32.735424, 18.902502> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562557, 32.392090, 19.106159>,  <43.547314, 32.186089, 19.228354>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.562557, 32.392090, 19.106159>,  <43.587963, 32.735424, 18.902502>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.562557, 32.392090, 19.106159> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763339, -0.370420, -0.529247,
		0.642867, 0.355032, 0.678729,
		-0.063515, -0.858337, 0.509141,
		43.543503, 32.134590, 19.258902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.251385, 32.648003, 19.056570>,  <43.587963, 32.735424, 18.902502>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.251385, 32.648003, 19.056570> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056404, 32.299877, 19.084703>,  <43.939415, 32.091003, 19.101583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.056404, 32.299877, 19.084703>,  <44.251385, 32.648003, 19.056570>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.056404, 32.299877, 19.084703> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.763829, -0.464067, -0.448561,
		0.423028, -0.164929, 0.890980,
		-0.487455, -0.870311, 0.070336,
		43.910168, 32.038784, 19.105804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.793690, 32.299126, 19.048288>,  <44.251385, 32.648003, 19.056570>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.793690, 32.299126, 19.048288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508675, 32.026150, 18.983084>,  <44.337666, 31.862366, 18.943962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.508675, 32.026150, 18.983084>,  <44.793690, 32.299126, 19.048288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.508675, 32.026150, 18.983084> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.645812, -0.547088, -0.532561,
		0.274258, -0.484744, 0.830546,
		-0.712538, -0.682435, -0.163010,
		44.294914, 31.821419, 18.934181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.129810, 31.668224, 19.116571>,  <44.793690, 32.299126, 19.048288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.129810, 31.668224, 19.116571> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803692, 31.553667, 18.915266>,  <44.608021, 31.484934, 18.794483>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.803692, 31.553667, 18.915266>,  <45.129810, 31.668224, 19.116571>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.803692, 31.553667, 18.915266> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.568014, -0.564393, -0.599016,
		-0.112485, -0.774235, 0.622822,
		-0.815296, -0.286391, -0.503263,
		44.559105, 31.467751, 18.764288>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.333561, 30.910751, 18.993652>,  <45.129810, 31.668224, 19.116571>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.333561, 30.910751, 18.993652> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039612, 30.999216, 18.737198>,  <44.863243, 31.052294, 18.583324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.039612, 30.999216, 18.737198>,  <45.333561, 30.910751, 18.993652>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.039612, 30.999216, 18.737198> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.447790, -0.551769, -0.703587,
		-0.509366, -0.804138, 0.306443,
		-0.734868, 0.221161, -0.641137,
		44.819153, 31.065565, 18.544857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.617287, 30.226522, 19.007917>,  <45.333561, 30.910751, 18.993652>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.617287, 30.226522, 19.007917> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854881, 29.999165, 19.235638>,  <45.997437, 29.862749, 19.372271>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.854881, 29.999165, 19.235638>,  <45.617287, 30.226522, 19.007917>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.854881, 29.999165, 19.235638> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.564283, 0.210006, 0.798425,
		-0.573379, -0.795501, -0.195996,
		0.593987, -0.568397, 0.569301,
		46.033077, 29.828646, 19.406427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.187428, 29.719725, 19.331623>,  <45.617287, 30.226522, 19.007917>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.187428, 29.719725, 19.331623> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521328, 29.774923, 19.544844>,  <45.721668, 29.808043, 19.672775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.521328, 29.774923, 19.544844>,  <45.187428, 29.719725, 19.331623>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.521328, 29.774923, 19.544844> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.550287, 0.242886, 0.798868,
		-0.019230, -0.960189, 0.278688,
		0.834754, 0.137995, 0.533050,
		45.771755, 29.816322, 19.704758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.061073, 29.388920, 20.116131>,  <45.187428, 29.719725, 19.331623>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.061073, 29.388920, 20.116131> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361725, 29.651302, 20.143799>,  <45.542114, 29.808731, 20.160400>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.361725, 29.651302, 20.143799>,  <45.061073, 29.388920, 20.116131>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.361725, 29.651302, 20.143799> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389786, 0.357125, 0.848839,
		0.532099, -0.664969, 0.524106,
		0.751624, 0.655955, 0.069170,
		45.587212, 29.848089, 20.164551>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.266731, 29.334692, 20.765062>,  <45.061073, 29.388920, 20.116131>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.266731, 29.334692, 20.765062> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449928, 29.671633, 20.651442>,  <45.559845, 29.873798, 20.583269>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.449928, 29.671633, 20.651442>,  <45.266731, 29.334692, 20.765062>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.449928, 29.671633, 20.651442> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.418243, 0.486141, 0.767294,
		0.784422, -0.232610, 0.574956,
		0.457990, 0.842354, -0.284052,
		45.587326, 29.924339, 20.566227>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.601536, 29.509132, 21.303690>,  <45.266731, 29.334692, 20.765062>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.601536, 29.509132, 21.303690> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585266, 29.858671, 21.109892>,  <45.575504, 30.068396, 20.993612>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.585266, 29.858671, 21.109892>,  <45.601536, 29.509132, 21.303690>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.585266, 29.858671, 21.109892> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605277, 0.364251, 0.707785,
		0.794975, 0.322042, 0.514105,
		-0.040673, 0.873848, -0.484495,
		45.573063, 30.120825, 20.964544>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.750832, 30.125034, 21.838615>,  <45.601536, 29.509132, 21.303690>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.750832, 30.125034, 21.838615> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540901, 30.256615, 21.524586>,  <45.414944, 30.335564, 21.336168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.540901, 30.256615, 21.524586>,  <45.750832, 30.125034, 21.838615>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.540901, 30.256615, 21.524586> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.629779, 0.470427, 0.618124,
		0.572654, 0.818834, -0.039726,
		-0.524829, 0.328953, -0.785076,
		45.383453, 30.355301, 21.289062>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654446, 30.853502, 22.080906>,  <45.750832, 30.125034, 21.838615>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654446, 30.853502, 22.080906> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403255, 30.786697, 21.776867>,  <45.252541, 30.746614, 21.594442>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.403255, 30.786697, 21.776867>,  <45.654446, 30.853502, 22.080906>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.403255, 30.786697, 21.776867> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.672713, 0.607564, 0.422284,
		0.391281, 0.776513, -0.493890,
		-0.627978, -0.167014, -0.760099,
		45.214863, 30.736593, 21.548838>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.365852, 31.489105, 21.829168>,  <45.654446, 30.853502, 22.080906>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.365852, 31.489105, 21.829168> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108128, 31.216839, 21.689713>,  <44.953491, 31.053478, 21.606039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.108128, 31.216839, 21.689713>,  <45.365852, 31.489105, 21.829168>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.108128, 31.216839, 21.689713> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.754800, 0.639332, 0.146734,
		0.123019, 0.357696, -0.925699,
		-0.644316, -0.680667, -0.348639,
		44.914833, 31.012638, 21.585121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.736313, 31.936773, 21.599792>,  <45.365852, 31.489105, 21.829168>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.736313, 31.936773, 21.599792> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596031, 31.562855, 21.622292>,  <44.511860, 31.338505, 21.635790>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.596031, 31.562855, 21.622292>,  <44.736313, 31.936773, 21.599792>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.596031, 31.562855, 21.622292> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.857400, 0.344666, 0.382191,
		-0.376657, 0.085811, -0.922370,
		-0.350706, -0.934795, 0.056246,
		44.490818, 31.282415, 21.639166>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.046680, 31.945726, 21.522457>,  <44.736313, 31.936773, 21.599792>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.046680, 31.945726, 21.522457> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097054, 31.594757, 21.707615>,  <44.127277, 31.384176, 21.818710>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.097054, 31.594757, 21.707615>,  <44.046680, 31.945726, 21.522457>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097054, 31.594757, 21.707615> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.759126, 0.215159, 0.614357,
		-0.638647, -0.428761, -0.638979,
		0.125931, -0.877423, 0.462894,
		44.134834, 31.331530, 21.846483>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.433483, 31.631752, 21.532850>,  <44.046680, 31.945726, 21.522457>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.433483, 31.631752, 21.532850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638767, 31.454882, 21.827087>,  <43.761936, 31.348759, 22.003630>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.638767, 31.454882, 21.827087>,  <43.433483, 31.631752, 21.532850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.638767, 31.454882, 21.827087> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.799712, 0.064774, 0.596880,
		-0.311573, -0.894587, -0.320370,
		0.513209, -0.442175, 0.735593,
		43.792728, 31.322229, 22.047766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.878181, 31.201391, 21.838490>,  <43.433483, 31.631752, 21.532850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.878181, 31.201391, 21.838490> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179790, 31.226498, 22.100027>,  <43.360756, 31.241562, 22.256950>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.179790, 31.226498, 22.100027>,  <42.878181, 31.201391, 21.838490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179790, 31.226498, 22.100027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.654415, 0.157428, 0.739566,
		-0.056514, -0.985534, 0.159779,
		0.754021, 0.062766, 0.653845,
		43.405998, 31.245327, 22.296181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.613815, 30.788694, 22.524057>,  <42.878181, 31.201391, 21.838490>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.613815, 30.788694, 22.524057> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911011, 31.041836, 22.611202>,  <43.089329, 31.193722, 22.663490>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.911011, 31.041836, 22.611202>,  <42.613815, 30.788694, 22.524057>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.911011, 31.041836, 22.611202> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.598384, 0.482258, 0.639815,
		0.299843, -0.605742, 0.737002,
		0.742987, 0.632854, 0.217864,
		43.133907, 31.231693, 22.676561>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.730484, 30.691698, 23.284775>,  <42.613815, 30.788694, 22.524057>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.730484, 30.691698, 23.284775> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884014, 31.042946, 23.170525>,  <42.976131, 31.253695, 23.101974>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.884014, 31.042946, 23.170525>,  <42.730484, 30.691698, 23.284775>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.884014, 31.042946, 23.170525> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.427009, 0.443044, 0.788273,
		0.818744, -0.180594, 0.545017,
		0.383825, 0.878121, -0.285624,
		42.999161, 31.306383, 23.084837>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.176727, 30.961622, 23.906723>,  <42.730484, 30.691698, 23.284775>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.176727, 30.961622, 23.906723> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078384, 31.263439, 23.663340>,  <43.019379, 31.444529, 23.517309>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.078384, 31.263439, 23.663340>,  <43.176727, 30.961622, 23.906723>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.078384, 31.263439, 23.663340> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.319806, 0.529430, 0.785766,
		0.915029, 0.387776, 0.111142,
		-0.245859, 0.754542, -0.608457,
		43.004627, 31.489801, 23.480803>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.442825, 31.501266, 24.278248>,  <43.176727, 30.961622, 23.906723>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.442825, 31.501266, 24.278248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194462, 31.663708, 24.010052>,  <43.045444, 31.761173, 23.849134>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.194462, 31.663708, 24.010052>,  <43.442825, 31.501266, 24.278248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.194462, 31.663708, 24.010052> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.392200, 0.579643, 0.714278,
		0.678716, 0.706465, -0.200629,
		-0.620906, 0.406105, -0.670488,
		43.008190, 31.785540, 23.808905>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.573250, 32.158852, 24.241087>,  <43.442825, 31.501266, 24.278248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.573250, 32.158852, 24.241087> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184811, 32.166103, 24.145885>,  <42.951748, 32.170456, 24.088764>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.184811, 32.166103, 24.145885>,  <43.573250, 32.158852, 24.241087>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.184811, 32.166103, 24.145885> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.152811, 0.718766, 0.678251,
		0.183367, 0.695016, -0.695219,
		-0.971095, 0.018132, -0.238004,
		42.893482, 32.171543, 24.074484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.492409, 32.840672, 24.384022>,  <43.573250, 32.158852, 24.241087>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.492409, 32.840672, 24.384022> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135227, 32.663239, 24.353376>,  <42.920918, 32.556778, 24.334990>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.135227, 32.663239, 24.353376>,  <43.492409, 32.840672, 24.384022>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.135227, 32.663239, 24.353376> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.383564, 0.660685, 0.645270,
		-0.235611, 0.605583, -0.760103,
		-0.892954, -0.443581, -0.076615,
		42.867340, 32.530163, 24.330393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.945930, 33.358994, 24.346331>,  <43.492409, 32.840672, 24.384022>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.945930, 33.358994, 24.346331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721695, 33.041172, 24.439646>,  <42.587154, 32.850479, 24.495634>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.721695, 33.041172, 24.439646>,  <42.945930, 33.358994, 24.346331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.721695, 33.041172, 24.439646> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536658, 0.563137, 0.628391,
		-0.630662, 0.227075, -0.742093,
		-0.560592, -0.794553, 0.233288,
		42.553516, 32.802807, 24.509632>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.213120, 33.520760, 24.228041>,  <42.945930, 33.358994, 24.346331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.213120, 33.520760, 24.228041> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208588, 33.228893, 24.501526>,  <42.205868, 33.053776, 24.665617>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.208588, 33.228893, 24.501526>,  <42.213120, 33.520760, 24.228041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.208588, 33.228893, 24.501526> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.673111, 0.511204, 0.534408,
		-0.739455, -0.454162, -0.496934,
		-0.011327, -0.729662, 0.683714,
		42.205189, 33.009995, 24.706640>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.464619, 33.410992, 24.484564>,  <42.213120, 33.520760, 24.228041>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.464619, 33.410992, 24.484564> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700699, 33.255028, 24.767303>,  <41.842346, 33.161449, 24.936947>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.700699, 33.255028, 24.767303>,  <41.464619, 33.410992, 24.484564>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.700699, 33.255028, 24.767303> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577745, 0.407532, 0.707198,
		-0.563807, -0.825766, 0.015256,
		0.590197, -0.389909, 0.706851,
		41.877758, 33.138054, 24.979359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.924118, 33.012806, 24.899551>,  <41.464619, 33.410992, 24.484564>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.924118, 33.012806, 24.899551> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263351, 33.070923, 25.103371>,  <41.466892, 33.105793, 25.225662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.263351, 33.070923, 25.103371>,  <40.924118, 33.012806, 24.899551>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.263351, 33.070923, 25.103371> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.529615, 0.261711, 0.806855,
		-0.016121, -0.954147, 0.298905,
		0.848085, 0.145297, 0.509549,
		41.517776, 33.114513, 25.256235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.815708, 32.772465, 25.651632>,  <40.924118, 33.012806, 24.899551>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.815708, 32.772465, 25.651632> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138821, 33.007893, 25.664688>,  <41.332687, 33.149151, 25.672522>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.138821, 33.007893, 25.664688>,  <40.815708, 32.772465, 25.651632>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.138821, 33.007893, 25.664688> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.296430, 0.357730, 0.885527,
		0.509522, -0.724990, 0.463439,
		0.807785, 0.588573, 0.032638,
		41.381157, 33.184464, 25.674480>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.939171, 32.752113, 26.299786>,  <40.815708, 32.772465, 25.651632>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.939171, 32.752113, 26.299786> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134594, 33.074417, 26.165882>,  <41.251850, 33.267799, 26.085539>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.134594, 33.074417, 26.165882>,  <40.939171, 32.752113, 26.299786>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.134594, 33.074417, 26.165882> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.468293, 0.565873, 0.678594,
		0.736214, -0.174767, 0.653793,
		0.488559, 0.805757, -0.334761,
		41.281162, 33.316143, 26.065454>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.430733, 33.058331, 26.879765>,  <40.939171, 32.752113, 26.299786>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.430733, 33.058331, 26.879765> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386360, 33.370129, 26.633162>,  <41.359737, 33.557209, 26.485199>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.386360, 33.370129, 26.633162>,  <41.430733, 33.058331, 26.879765>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.386360, 33.370129, 26.633162> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.122901, 0.604814, 0.786826,
		0.986199, 0.163056, 0.028705,
		-0.110935, 0.779495, -0.616507,
		41.353081, 33.603977, 26.448210>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742035, 33.604530, 27.153126>,  <41.430733, 33.058331, 26.879765>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742035, 33.604530, 27.153126> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501099, 33.801506, 26.901827>,  <41.356537, 33.919689, 26.751047>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.501099, 33.801506, 26.901827>,  <41.742035, 33.604530, 27.153126>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.501099, 33.801506, 26.901827> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.254511, 0.627490, 0.735853,
		0.756580, 0.603128, -0.252631,
		-0.602338, 0.492435, -0.628249,
		41.320396, 33.949238, 26.713352>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.902069, 34.314205, 27.161060>,  <41.742035, 33.604530, 27.153126>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.902069, 34.314205, 27.161060> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525574, 34.299702, 27.026741>,  <41.299679, 34.291000, 26.946150>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.525574, 34.299702, 27.026741>,  <41.902069, 34.314205, 27.161060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.525574, 34.299702, 27.026741> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.270657, 0.675714, 0.685679,
		0.202037, 0.736272, -0.645821,
		-0.941236, -0.036263, -0.335796,
		41.243202, 34.288822, 26.926003>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.649006, 34.900909, 27.473560>,  <41.902069, 34.314205, 27.161060>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.649006, 34.900909, 27.473560> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312008, 34.713921, 27.366470>,  <41.109810, 34.601727, 27.302216>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.312008, 34.713921, 27.366470>,  <41.649006, 34.900909, 27.473560>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.312008, 34.713921, 27.366470> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.494977, 0.475600, 0.727188,
		-0.212606, 0.745170, -0.632076,
		-0.842494, -0.467467, -0.267726,
		41.059261, 34.573681, 27.286152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.188126, 35.349373, 27.758923>,  <41.649006, 34.900909, 27.473560>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.188126, 35.349373, 27.758923> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968479, 35.023769, 27.683174>,  <40.836693, 34.828407, 27.637726>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.968479, 35.023769, 27.683174>,  <41.188126, 35.349373, 27.758923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.968479, 35.023769, 27.683174> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620722, 0.245504, 0.744602,
		-0.559621, 0.526419, -0.640083,
		-0.549116, -0.814009, -0.189371,
		40.803745, 34.779568, 27.626364>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.428078, 35.520939, 27.675358>,  <41.188126, 35.349373, 27.758923>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.428078, 35.520939, 27.675358> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458576, 35.131470, 27.761286>,  <40.476875, 34.897789, 27.812841>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.458576, 35.131470, 27.761286>,  <40.428078, 35.520939, 27.675358>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.458576, 35.131470, 27.761286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.606411, 0.125737, 0.785147,
		-0.791487, -0.190134, -0.580859,
		0.076248, -0.973673, 0.214818,
		40.481449, 34.839367, 27.825731>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741322, 35.168121, 27.724894>,  <40.428078, 35.520939, 27.675358>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741322, 35.168121, 27.724894> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008797, 34.954094, 27.931408>,  <40.169281, 34.825676, 28.055317>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.008797, 34.954094, 27.931408>,  <39.741322, 35.168121, 27.724894>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.008797, 34.954094, 27.931408> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.601883, 0.018164, 0.798378,
		-0.436566, -0.844612, -0.309904,
		0.668691, -0.535070, 0.516288,
		40.209404, 34.793571, 28.086294>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.282810, 34.867992, 28.130331>,  <39.741322, 35.168121, 27.724894>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.282810, 34.867992, 28.130331> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634800, 34.749271, 28.278683>,  <39.845993, 34.678040, 28.367693>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.634800, 34.749271, 28.278683>,  <39.282810, 34.867992, 28.130331>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.634800, 34.749271, 28.278683> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.440372, -0.217005, 0.871196,
		-0.178090, -0.929955, -0.321662,
		0.879976, -0.296802, 0.370880,
		39.898792, 34.660229, 28.389946>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.228680, 34.108307, 28.465662>,  <39.282810, 34.867992, 28.130331>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.228680, 34.108307, 28.465662> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504021, 34.342030, 28.637596>,  <39.669224, 34.482262, 28.740757>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.504021, 34.342030, 28.637596>,  <39.228680, 34.108307, 28.465662>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.504021, 34.342030, 28.637596> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.423576, -0.157267, 0.892105,
		0.588863, -0.796148, 0.139244,
		0.688349, 0.584308, 0.429838,
		39.710526, 34.517323, 28.766548>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.349346, 33.688137, 29.008955>,  <39.228680, 34.108307, 28.465662>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.349346, 33.688137, 29.008955> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540421, 34.024204, 29.111664>,  <39.655067, 34.225845, 29.173288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.540421, 34.024204, 29.111664>,  <39.349346, 33.688137, 29.008955>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.540421, 34.024204, 29.111664> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.369751, -0.072858, 0.926270,
		0.796931, -0.537409, 0.275850,
		0.477688, 0.840169, 0.256770,
		39.683727, 34.276257, 29.188694>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.767139, 33.589176, 29.630949>,  <39.349346, 33.688137, 29.008955>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.767139, 33.589176, 29.630949> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693817, 33.982330, 29.623640>,  <39.649826, 34.218224, 29.619255>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.693817, 33.982330, 29.623640>,  <39.767139, 33.589176, 29.630949>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.693817, 33.982330, 29.623640> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.288475, -0.036013, 0.956810,
		0.939778, 0.180656, 0.290140,
		-0.183302, 0.982887, -0.018270,
		39.638828, 34.277195, 29.618158>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.985218, 33.782471, 30.274649>,  <39.767139, 33.589176, 29.630949>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.985218, 33.782471, 30.274649> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795696, 34.106747, 30.137075>,  <39.681984, 34.301311, 30.054531>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.795696, 34.106747, 30.137075>,  <39.985218, 33.782471, 30.274649>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.795696, 34.106747, 30.137075> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.391828, 0.155690, 0.906770,
		0.788656, 0.564396, 0.243885,
		-0.473806, 0.810690, -0.343932,
		39.653553, 34.349953, 30.033895>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.190750, 34.346920, 30.708246>,  <39.985218, 33.782471, 30.274649>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.190750, 34.346920, 30.708246> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837696, 34.452400, 30.552597>,  <39.625862, 34.515686, 30.459208>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.837696, 34.452400, 30.552597>,  <40.190750, 34.346920, 30.708246>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.837696, 34.452400, 30.552597> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.235068, 0.469260, 0.851198,
		0.407058, 0.842768, -0.352200,
		-0.882636, 0.263697, -0.389124,
		39.572906, 34.531509, 30.435860>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.073929, 35.100861, 30.933096>,  <40.190750, 34.346920, 30.708246>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.073929, 35.100861, 30.933096> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722485, 34.938580, 30.832333>,  <39.511620, 34.841209, 30.771875>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.722485, 34.938580, 30.832333>,  <40.073929, 35.100861, 30.933096>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.722485, 34.938580, 30.832333> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.389751, 0.304384, 0.869163,
		-0.275944, 0.861834, -0.425556,
		-0.878606, -0.405701, -0.251908,
		39.458904, 34.816868, 30.756760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.647095, 35.513142, 31.249977>,  <40.073929, 35.100861, 30.933096>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.647095, 35.513142, 31.249977> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396503, 35.208141, 31.185331>,  <39.246147, 35.025143, 31.146544>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.396503, 35.208141, 31.185331>,  <39.647095, 35.513142, 31.249977>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.396503, 35.208141, 31.185331> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.527216, 0.261829, 0.808386,
		-0.574078, 0.591644, -0.566032,
		-0.626480, -0.762498, -0.161614,
		39.208561, 34.979393, 31.136847>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.114372, 35.803398, 31.305712>,  <39.647095, 35.513142, 31.249977>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.114372, 35.803398, 31.305712> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004536, 35.421879, 31.354496>,  <38.938633, 35.192966, 31.383766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.004536, 35.421879, 31.354496>,  <39.114372, 35.803398, 31.305712>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.004536, 35.421879, 31.354496> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.566694, 0.262993, 0.780828,
		-0.776824, 0.145298, -0.612726,
		-0.274596, -0.953794, 0.121960,
		38.922157, 35.135742, 31.391085>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.314651, 35.754940, 31.220905>,  <39.114372, 35.803398, 31.305712>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.314651, 35.754940, 31.220905> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476574, 35.459084, 31.435966>,  <38.573727, 35.281570, 31.565002>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.476574, 35.459084, 31.435966>,  <38.314651, 35.754940, 31.220905>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.476574, 35.459084, 31.435966> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.502905, 0.310984, 0.806458,
		-0.763689, -0.596844, -0.246081,
		0.404803, -0.739639, 0.537651,
		38.598015, 35.237190, 31.597261>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.700348, 35.564331, 31.762373>,  <38.314651, 35.754940, 31.220905>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.700348, 35.564331, 31.762373> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053757, 35.421211, 31.883286>,  <38.265800, 35.335339, 31.955833>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.053757, 35.421211, 31.883286>,  <37.700348, 35.564331, 31.762373>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.053757, 35.421211, 31.883286> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.163884, 0.368432, 0.915096,
		-0.438789, -0.858044, 0.266879,
		0.883519, -0.357797, 0.302284,
		38.318813, 35.313873, 31.973970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.534157, 35.392712, 32.419659>,  <37.700348, 35.564331, 31.762373>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.534157, 35.392712, 32.419659> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934132, 35.391182, 32.423733>,  <38.174118, 35.390263, 32.426178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.934132, 35.391182, 32.423733>,  <37.534157, 35.392712, 32.419659>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.934132, 35.391182, 32.423733> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.009059, 0.225897, 0.974109,
		-0.006029, -0.974144, 0.225849,
		0.999941, -0.003827, 0.010187,
		38.234116, 35.390034, 32.426788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.824245, 35.019070, 33.079803>,  <37.534157, 35.392712, 32.419659>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.824245, 35.019070, 33.079803> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088390, 35.277203, 32.926193>,  <38.246876, 35.432083, 32.834026>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.088390, 35.277203, 32.926193>,  <37.824245, 35.019070, 33.079803>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.088390, 35.277203, 32.926193> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.084143, 0.444580, 0.891779,
		0.746220, -0.621208, 0.239282,
		0.660360, 0.645329, -0.384025,
		38.286499, 35.470802, 32.810986>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.181278, 35.102894, 33.623753>,  <37.824245, 35.019070, 33.079803>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.181278, 35.102894, 33.623753> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326511, 35.404907, 33.405365>,  <38.413651, 35.586117, 33.274330>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.326511, 35.404907, 33.405365>,  <38.181278, 35.102894, 33.623753>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.326511, 35.404907, 33.405365> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.039285, 0.597846, 0.800648,
		0.930928, -0.269254, 0.246731,
		0.363084, 0.755038, -0.545974,
		38.435436, 35.631420, 33.241573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.749157, 35.413937, 33.945221>,  <38.181278, 35.102894, 33.623753>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.749157, 35.413937, 33.945221> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755707, 35.719856, 33.687595>,  <38.759636, 35.903408, 33.533020>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.755707, 35.719856, 33.687595>,  <38.749157, 35.413937, 33.945221>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.755707, 35.719856, 33.687595> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190384, 0.629982, 0.752912,
		0.981573, -0.134948, -0.135289,
		0.016374, 0.764796, -0.644065,
		38.760620, 35.949295, 33.494377>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.388336, 35.707241, 34.032177>,  <38.749157, 35.413937, 33.945221>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.388336, 35.707241, 34.032177> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110813, 35.963791, 33.901169>,  <38.944298, 36.117722, 33.822563>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.110813, 35.963791, 33.901169>,  <39.388336, 35.707241, 34.032177>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.110813, 35.963791, 33.901169> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.224308, 0.624620, 0.748021,
		0.684337, 0.445517, -0.577232,
		-0.693807, 0.641376, -0.327517,
		38.902672, 36.156204, 33.802914>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.627514, 36.413731, 34.007328>,  <39.388336, 35.707241, 34.032177>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.627514, 36.413731, 34.007328> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229378, 36.444923, 34.029987>,  <38.990494, 36.463638, 34.043583>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.229378, 36.444923, 34.029987>,  <39.627514, 36.413731, 34.007328>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.229378, 36.444923, 34.029987> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.092551, 0.609040, 0.787721,
		0.026923, 0.789296, -0.613422,
		-0.995344, 0.077981, 0.056653,
		38.930775, 36.468319, 34.046982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.455475, 37.115017, 33.999844>,  <39.627514, 36.413731, 34.007328>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.455475, 37.115017, 33.999844> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182365, 36.898022, 34.195610>,  <39.018501, 36.767826, 34.313068>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.182365, 36.898022, 34.195610>,  <39.455475, 37.115017, 33.999844>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.182365, 36.898022, 34.195610> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.097528, 0.596186, 0.796901,
		-0.724091, 0.591834, -0.354153,
		-0.682774, -0.542489, 0.489413,
		38.977531, 36.735275, 34.342434>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.961662, 37.586082, 34.155567>,  <39.455475, 37.115017, 33.999844>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.961662, 37.586082, 34.155567> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960670, 37.281586, 34.414955>,  <38.960075, 37.098888, 34.570587>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.960670, 37.281586, 34.414955>,  <38.961662, 37.586082, 34.155567>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.960670, 37.281586, 34.414955> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119919, 0.643562, 0.755941,
		-0.992781, 0.079639, 0.089691,
		-0.002481, -0.761240, 0.648466,
		38.959927, 37.053215, 34.609493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.794930, 37.918175, 34.729004>,  <38.961662, 37.586082, 34.155567>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.794930, 37.918175, 34.729004> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880997, 37.545261, 34.845310>,  <38.932636, 37.321514, 34.915092>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.880997, 37.545261, 34.845310>,  <38.794930, 37.918175, 34.729004>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880997, 37.545261, 34.845310> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.304560, 0.346950, 0.887056,
		-0.927872, -0.102308, 0.358589,
		0.215165, -0.932287, 0.290767,
		38.945545, 37.265575, 34.932541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.422512, 37.829208, 35.347843>,  <38.794930, 37.918175, 34.729004>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.422512, 37.829208, 35.347843> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741173, 37.587456, 35.344452>,  <38.932369, 37.442406, 35.342415>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.741173, 37.587456, 35.344452>,  <38.422512, 37.829208, 35.347843>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.741173, 37.587456, 35.344452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270095, 0.343401, 0.899514,
		-0.540734, -0.718891, 0.436810,
		0.796652, -0.604378, -0.008480,
		38.980167, 37.406143, 35.341908>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.397999, 37.669430, 35.989407>,  <38.422512, 37.829208, 35.347843>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.397999, 37.669430, 35.989407> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752121, 37.528469, 35.868046>,  <38.964592, 37.443893, 35.795231>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.752121, 37.528469, 35.868046>,  <38.397999, 37.669430, 35.989407>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.752121, 37.528469, 35.868046> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.446772, 0.463628, 0.765143,
		-0.128970, -0.812935, 0.567894,
		0.885303, -0.352400, -0.303403,
		39.017712, 37.422749, 35.777023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.745838, 37.434689, 36.569611>,  <38.397999, 37.669430, 35.989407>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.745838, 37.434689, 36.569611> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024273, 37.508209, 36.291996>,  <39.191334, 37.552322, 36.125427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.024273, 37.508209, 36.291996>,  <38.745838, 37.434689, 36.569611>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.024273, 37.508209, 36.291996> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.471155, 0.612463, 0.634746,
		0.541738, -0.768834, 0.339726,
		0.696084, 0.183803, -0.694035,
		39.233097, 37.563351, 36.083786>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.452057, 37.357327, 36.819248>,  <38.745838, 37.434689, 36.569611>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.452057, 37.357327, 36.819248> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452728, 37.596279, 36.498466>,  <39.453129, 37.739651, 36.306000>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.452728, 37.596279, 36.498466>,  <39.452057, 37.357327, 36.819248>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.452728, 37.596279, 36.498466> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384781, 0.739825, 0.551909,
		0.923006, -0.309500, -0.228624,
		0.001674, 0.597385, -0.801953,
		39.453232, 37.775494, 36.257881>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.117424, 37.718086, 36.823593>,  <39.452057, 37.357327, 36.819248>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.117424, 37.718086, 36.823593> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835121, 37.924557, 36.629498>,  <39.665737, 38.048439, 36.513039>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.835121, 37.924557, 36.629498>,  <40.117424, 37.718086, 36.823593>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.835121, 37.924557, 36.629498> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.088827, 0.744005, 0.662243,
		0.702860, 0.424282, -0.570940,
		-0.705760, 0.516179, -0.485244,
		39.623394, 38.079411, 36.483925>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.033897, 38.304962, 37.253433>,  <40.117424, 37.718086, 36.823593>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.033897, 38.304962, 37.253433> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770763, 38.403366, 36.968693>,  <39.612881, 38.462410, 36.797848>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.770763, 38.403366, 36.968693>,  <40.033897, 38.304962, 37.253433>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.770763, 38.403366, 36.968693> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.323479, 0.761245, 0.562021,
		0.680155, 0.599986, -0.421196,
		-0.657838, 0.246013, -0.711847,
		39.573410, 38.477169, 36.755138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.128071, 39.034645, 36.915440>,  <40.033897, 38.304962, 37.253433>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.128071, 39.034645, 36.915440> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739475, 38.941082, 36.899960>,  <39.506317, 38.884945, 36.890671>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.739475, 38.941082, 36.899960>,  <40.128071, 39.034645, 36.915440>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.739475, 38.941082, 36.899960> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.191352, 0.677207, 0.710475,
		-0.139980, 0.697623, -0.702657,
		-0.971488, -0.233907, -0.038696,
		39.448029, 38.870911, 36.888351>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.813145, 39.666698, 36.929985>,  <40.128071, 39.034645, 36.915440>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.813145, 39.666698, 36.929985> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542713, 39.395615, 37.045658>,  <39.380455, 39.232964, 37.115063>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.542713, 39.395615, 37.045658>,  <39.813145, 39.666698, 36.929985>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.542713, 39.395615, 37.045658> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.222516, 0.561934, 0.796691,
		-0.702427, 0.474279, -0.530713,
		-0.676080, -0.677709, 0.289183,
		39.339890, 39.192303, 37.132412>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.040878, 39.994297, 36.866001>,  <39.813145, 39.666698, 36.929985>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.040878, 39.994297, 36.866001> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108315, 39.746033, 37.172298>,  <39.148777, 39.597076, 37.356075>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.108315, 39.746033, 37.172298>,  <39.040878, 39.994297, 36.866001>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.108315, 39.746033, 37.172298> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338724, 0.693074, 0.636330,
		-0.925659, -0.366652, -0.093388,
		0.168587, -0.620657, 0.765744,
		39.158890, 39.559837, 37.402023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.631245, 40.173794, 37.421204>,  <39.040878, 39.994297, 36.866001>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.631245, 40.173794, 37.421204> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954090, 39.993069, 37.573219>,  <39.147797, 39.884632, 37.664429>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.954090, 39.993069, 37.573219>,  <38.631245, 40.173794, 37.421204>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.954090, 39.993069, 37.573219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.174342, 0.797391, 0.577731,
		-0.564065, -0.400039, 0.722357,
		0.807116, -0.451815, 0.380036,
		39.196224, 39.857525, 37.687229>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.260685, 39.994423, 38.014698>,  <38.631245, 40.173794, 37.421204>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.260685, 39.994423, 38.014698> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085743, 40.328060, 37.880230>,  <37.980778, 40.528244, 37.799549>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.085743, 40.328060, 37.880230>,  <38.260685, 39.994423, 38.014698>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.085743, 40.328060, 37.880230> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.814308, 0.208688, -0.541620,
		-0.381609, -0.510621, -0.770481,
		-0.437353, 0.834095, -0.336165,
		37.954536, 40.578289, 37.779381>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.034679, 39.303486, 38.349205>,  <38.260685, 39.994423, 38.014698>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.034679, 39.303486, 38.349205> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742870, 39.401203, 38.604740>,  <37.567783, 39.459831, 38.758060>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<37.742870, 39.401203, 38.604740>,  <38.034679, 39.303486, 38.349205>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.742870, 39.401203, 38.604740> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410975, -0.590040, 0.694948,
		0.546710, 0.769529, 0.330052,
		-0.729526, 0.244291, 0.638838,
		37.524014, 39.474491, 38.796391>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.644539, 39.667141, 38.722622>,  <38.034679, 39.303486, 38.349205>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.644539, 39.667141, 38.722622> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026276, 39.752083, 38.638584>,  <39.255318, 39.803047, 38.588161>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.026276, 39.752083, 38.638584>,  <38.644539, 39.667141, 38.722622>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.026276, 39.752083, 38.638584> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.147297, -0.277332, -0.949416,
		-0.259883, 0.937011, -0.233389,
		0.954340, 0.212359, -0.210093,
		39.312576, 39.815792, 38.575558>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.836361, 38.844040, 38.557232>,  <38.644539, 39.667141, 38.722622>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.836361, 38.844040, 38.557232> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793079, 39.087593, 38.242893>,  <38.767113, 39.233723, 38.054291>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.793079, 39.087593, 38.242893>,  <38.836361, 38.844040, 38.557232>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.793079, 39.087593, 38.242893> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.235457, -0.752302, -0.615307,
		-0.965843, -0.251610, -0.061966,
		-0.108201, 0.608880, -0.785848,
		38.760620, 39.270256, 38.007137>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.712891, 38.432323, 37.950748>,  <38.836361, 38.844040, 38.557232>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.712891, 38.432323, 37.950748> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792431, 38.760429, 37.736225>,  <38.840157, 38.957294, 37.607510>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.792431, 38.760429, 37.736225>,  <38.712891, 38.432323, 37.950748>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.792431, 38.760429, 37.736225> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.245071, -0.571469, -0.783175,
		-0.948892, 0.024304, -0.314663,
		0.198855, 0.820263, -0.536307,
		38.852089, 39.006508, 37.575333>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.326916, 38.373871, 37.349369>,  <38.712891, 38.432323, 37.950748>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.326916, 38.373871, 37.349369> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621895, 38.634441, 37.278027>,  <38.798882, 38.790783, 37.235222>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.621895, 38.634441, 37.278027>,  <38.326916, 38.373871, 37.349369>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.621895, 38.634441, 37.278027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.203302, -0.465927, -0.861150,
		-0.644079, 0.598794, -0.476034,
		0.737449, 0.651428, -0.178358,
		38.843128, 38.829868, 37.224518>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.241661, 38.462200, 36.750141>,  <38.326916, 38.373871, 37.349369>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.241661, 38.462200, 36.750141> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616081, 38.599152, 36.782581>,  <38.840733, 38.681324, 36.802044>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.616081, 38.599152, 36.782581>,  <38.241661, 38.462200, 36.750141>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.616081, 38.599152, 36.782581> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.225249, -0.406027, -0.885666,
		-0.270307, 0.847299, -0.457184,
		0.936054, 0.342383, 0.081102,
		38.896896, 38.701866, 36.806911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493904, 38.739983, 36.095112>,  <38.241661, 38.462200, 36.750141>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493904, 38.739983, 36.095112> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835682, 38.660683, 36.287209>,  <39.040749, 38.613102, 36.402466>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.835682, 38.660683, 36.287209>,  <38.493904, 38.739983, 36.095112>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.835682, 38.660683, 36.287209> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.299048, -0.568200, -0.766628,
		0.424854, 0.798653, -0.426208,
		0.854441, -0.198249, 0.480238,
		39.092014, 38.601208, 36.431278>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.104645, 38.940708, 35.865421>,  <38.493904, 38.739983, 36.095112>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.104645, 38.940708, 35.865421> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206539, 38.613560, 36.071796>,  <39.267673, 38.417271, 36.195621>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.206539, 38.613560, 36.071796>,  <39.104645, 38.940708, 35.865421>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.206539, 38.613560, 36.071796> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450035, -0.371977, -0.811851,
		0.855909, 0.438998, 0.273316,
		0.254734, -0.817872, 0.515942,
		39.282959, 38.368198, 36.226578>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.515743, 38.638588, 35.289165>,  <39.104645, 38.940708, 35.865421>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.515743, 38.638588, 35.289165> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475296, 38.365452, 35.578579>,  <39.451027, 38.201569, 35.752228>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.475296, 38.365452, 35.578579>,  <39.515743, 38.638588, 35.289165>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.475296, 38.365452, 35.578579> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.000771, -0.727205, -0.686420,
		0.994874, -0.069970, 0.073010,
		-0.101122, -0.682845, 0.723531,
		39.444958, 38.160599, 35.795639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.874943, 38.074699, 35.104259>,  <39.515743, 38.638588, 35.289165>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.874943, 38.074699, 35.104259> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617332, 37.936089, 35.377068>,  <39.462765, 37.852924, 35.540752>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.617332, 37.936089, 35.377068>,  <39.874943, 38.074699, 35.104259>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.617332, 37.936089, 35.377068> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292984, -0.711826, -0.638330,
		0.706677, -0.610921, 0.356907,
		-0.644024, -0.346525, 0.682021,
		39.424126, 37.832130, 35.581673>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.290855, 37.437363, 35.382721>,  <39.874943, 38.074699, 35.104259>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.290855, 37.437363, 35.382721> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962337, 37.470402, 35.608517>,  <39.765224, 37.490227, 35.743996>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.962337, 37.470402, 35.608517>,  <40.290855, 37.437363, 35.382721>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.962337, 37.470402, 35.608517> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.424101, -0.750212, -0.507268,
		0.381589, -0.656018, 0.651176,
		-0.821297, 0.082596, 0.564490,
		39.715950, 37.495182, 35.777863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.180798, 36.799053, 35.576927>,  <40.290855, 37.437363, 35.382721>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.180798, 36.799053, 35.576927> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830135, 36.988312, 35.611805>,  <39.619736, 37.101868, 35.632732>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.830135, 36.988312, 35.611805>,  <40.180798, 36.799053, 35.576927>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.830135, 36.988312, 35.611805> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.437129, -0.707626, -0.555143,
		-0.200962, -0.524786, 0.827172,
		-0.876660, 0.473143, 0.087193,
		39.567139, 37.130257, 35.637962>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.651470, 36.305229, 35.568783>,  <40.180798, 36.799053, 35.576927>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.651470, 36.305229, 35.568783> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439640, 36.636581, 35.495747>,  <39.312542, 36.835392, 35.451923>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.439640, 36.636581, 35.495747>,  <39.651470, 36.305229, 35.568783>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.439640, 36.636581, 35.495747> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.608712, -0.521030, -0.598328,
		-0.590779, -0.205712, 0.780168,
		-0.529574, 0.828378, -0.182594,
		39.280769, 36.885094, 35.440968>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.049358, 36.051567, 35.387409>,  <39.651470, 36.305229, 35.568783>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.049358, 36.051567, 35.387409> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012619, 36.428493, 35.258656>,  <38.990574, 36.654648, 35.181404>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.012619, 36.428493, 35.258656>,  <39.049358, 36.051567, 35.387409>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.012619, 36.428493, 35.258656> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.761646, -0.274714, -0.586880,
		-0.641451, 0.191257, 0.742941,
		-0.091851, 0.942313, -0.321886,
		38.985065, 36.711185, 35.162090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.495060, 36.344593, 35.008656>,  <39.049358, 36.051567, 35.387409>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.495060, 36.344593, 35.008656> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456169, 36.706944, 34.843761>,  <38.432835, 36.924355, 34.744827>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.456169, 36.706944, 34.843761>,  <38.495060, 36.344593, 35.008656>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.456169, 36.706944, 34.843761> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113920, -0.421601, -0.899597,
		-0.988721, -0.040506, 0.144189,
		-0.097230, 0.905876, -0.412231,
		38.427002, 36.978706, 34.720093>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.823387, 36.415604, 34.640507>,  <38.495060, 36.344593, 35.008656>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.823387, 36.415604, 34.640507> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150845, 36.605461, 34.511177>,  <38.347317, 36.719376, 34.433578>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.150845, 36.605461, 34.511177>,  <37.823387, 36.415604, 34.640507>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.150845, 36.605461, 34.511177> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096190, -0.441714, -0.891984,
		-0.566193, 0.761316, -0.315950,
		0.818641, 0.474644, -0.323326,
		38.396439, 36.747856, 34.414181>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.629093, 36.615616, 34.024288>,  <37.823387, 36.415604, 34.640507>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.629093, 36.615616, 34.024288> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028275, 36.590679, 34.018509>,  <38.267784, 36.575718, 34.015041>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.028275, 36.590679, 34.018509>,  <37.629093, 36.615616, 34.024288>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.028275, 36.590679, 34.018509> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.036732, -0.373156, -0.927041,
		0.052398, 0.925672, -0.374681,
		0.997951, -0.062337, -0.014449,
		38.327660, 36.571980, 34.014175>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.843052, 36.828812, 33.454784>,  <37.629093, 36.615616, 34.024288>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.843052, 36.828812, 33.454784> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171917, 36.619545, 33.544533>,  <38.369236, 36.493984, 33.598381>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.171917, 36.619545, 33.544533>,  <37.843052, 36.828812, 33.454784>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.171917, 36.619545, 33.544533> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.033586, -0.438041, -0.898327,
		0.568262, 0.731035, -0.377712,
		0.822162, -0.523171, 0.224369,
		38.418564, 36.462593, 33.611843>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.261131, 36.922813, 32.931076>,  <37.843052, 36.828812, 33.454784>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.261131, 36.922813, 32.931076> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381214, 36.589165, 33.116165>,  <38.453262, 36.388973, 33.227219>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.381214, 36.589165, 33.116165>,  <38.261131, 36.922813, 32.931076>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.381214, 36.589165, 33.116165> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.045286, -0.497014, -0.866560,
		0.952800, 0.239189, -0.186980,
		0.300203, -0.834125, 0.462723,
		38.471275, 36.338928, 33.254982>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.880447, 36.658997, 32.571709>,  <38.261131, 36.922813, 32.931076>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.880447, 36.658997, 32.571709> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708328, 36.352772, 32.763027>,  <38.605057, 36.169037, 32.877819>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.708328, 36.352772, 32.763027>,  <38.880447, 36.658997, 32.571709>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.708328, 36.352772, 32.763027> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147802, -0.582457, -0.799311,
		0.890505, -0.273248, 0.363780,
		-0.430297, -0.765558, 0.478295,
		38.579239, 36.123104, 32.906517>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.333797, 36.087830, 32.431812>,  <38.880447, 36.658997, 32.571709>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.333797, 36.087830, 32.431812> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035011, 35.873314, 32.589005>,  <38.855740, 35.744602, 32.683319>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.035011, 35.873314, 32.589005>,  <39.333797, 36.087830, 32.431812>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.035011, 35.873314, 32.589005> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.055637, -0.639413, -0.766848,
		0.662529, -0.550946, 0.507458,
		-0.746967, -0.536293, 0.392976,
		38.810921, 35.712425, 32.706898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.537094, 35.397018, 32.529324>,  <39.333797, 36.087830, 32.431812>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.537094, 35.397018, 32.529324> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140026, 35.361874, 32.496132>,  <38.901787, 35.340786, 32.476215>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.140026, 35.361874, 32.496132>,  <39.537094, 35.397018, 32.529324>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.140026, 35.361874, 32.496132> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.119555, -0.613604, -0.780511,
		0.017660, -0.784711, 0.619611,
		-0.992671, -0.087861, -0.082980,
		38.842224, 35.335514, 32.471237>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.392059, 34.752419, 32.564850>,  <39.537094, 35.397018, 32.529324>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.392059, 34.752419, 32.564850> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094570, 34.927841, 32.363045>,  <38.916077, 35.033096, 32.241962>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.094570, 34.927841, 32.363045>,  <39.392059, 34.752419, 32.564850>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.094570, 34.927841, 32.363045> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.076138, -0.694234, -0.715711,
		-0.664131, -0.570708, 0.482931,
		-0.743730, 0.438557, -0.504514,
		38.871452, 35.059410, 32.211689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.101543, 34.203373, 32.174969>,  <39.392059, 34.752419, 32.564850>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.101543, 34.203373, 32.174969> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950626, 34.527554, 31.995720>,  <38.860077, 34.722061, 31.888170>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<38.950626, 34.527554, 31.995720>,  <39.101543, 34.203373, 32.174969>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.950626, 34.527554, 31.995720> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.000938, -0.483549, -0.875317,
		-0.926095, -0.330668, 0.181678,
		-0.377289, 0.810456, -0.448122,
		38.837440, 34.770691, 31.861282>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.863693, 34.354046, 32.097481>,  <39.101543, 34.203373, 32.174969>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.863693, 34.354046, 32.097481> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162327, 34.402649, 32.359123>,  <40.341507, 34.431812, 32.516109>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.162327, 34.402649, 32.359123>,  <39.863693, 34.354046, 32.097481>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.162327, 34.402649, 32.359123> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.658880, -0.001143, 0.752247,
		0.092155, -0.992589, 0.079209,
		0.746581, 0.121513, 0.654103,
		40.386303, 34.439102, 32.555355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.755768, 33.867634, 32.641766>,  <39.863693, 34.354046, 32.097481>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.755768, 33.867634, 32.641766> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961929, 34.194584, 32.744732>,  <40.085625, 34.390755, 32.806511>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.961929, 34.194584, 32.744732>,  <39.755768, 33.867634, 32.641766>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.961929, 34.194584, 32.744732> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.726807, 0.257800, 0.636625,
		0.453997, -0.515210, 0.726942,
		0.515401, 0.817373, 0.257417,
		40.116550, 34.439796, 32.821957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.741497, 34.017635, 33.326416>,  <39.755768, 33.867634, 32.641766>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.741497, 34.017635, 33.326416> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881718, 34.370670, 33.201099>,  <39.965851, 34.582493, 33.125908>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.881718, 34.370670, 33.201099>,  <39.741497, 34.017635, 33.326416>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.881718, 34.370670, 33.201099> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.522607, 0.461942, 0.716583,
		0.777171, -0.087471, 0.623181,
		0.350554, 0.882586, -0.313295,
		39.986885, 34.635445, 33.107109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.062412, 34.371189, 33.934250>,  <39.741497, 34.017635, 33.326416>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.062412, 34.371189, 33.934250> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933144, 34.611340, 33.641647>,  <39.855583, 34.755432, 33.466084>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<39.933144, 34.611340, 33.641647>,  <40.062412, 34.371189, 33.934250>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.933144, 34.611340, 33.641647> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549310, 0.510430, 0.661604,
		0.770598, 0.615635, 0.164839,
		-0.323168, 0.600379, -0.731510,
		39.836193, 34.791454, 33.422195>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.774952, 34.626377, 34.047028>,  <40.062412, 34.371189, 33.934250>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.774952, 34.626377, 34.047028> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972530, 34.640427, 34.394539>,  <41.091076, 34.648857, 34.603046>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<40.972530, 34.640427, 34.394539>,  <40.774952, 34.626377, 34.047028>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.972530, 34.640427, 34.394539> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.699020, -0.610266, -0.372756,
		0.517095, 0.791418, -0.325992,
		0.493947, 0.035124, 0.868782,
		41.120716, 34.650963, 34.655174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.363686, 34.294613, 33.893555>,  <40.774952, 34.626377, 34.047028>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.363686, 34.294613, 33.893555> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452625, 34.383099, 34.273373>,  <41.505989, 34.436192, 34.501263>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.452625, 34.383099, 34.273373>,  <41.363686, 34.294613, 33.893555>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.452625, 34.383099, 34.273373> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.886383, -0.451492, -0.102373,
		0.406064, 0.864419, -0.296468,
		0.222346, 0.221214, 0.949540,
		41.519329, 34.449463, 34.558235>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.742222, 34.963120, 34.087143>,  <41.363686, 34.294613, 33.893555>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.742222, 34.963120, 34.087143> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828644, 34.655609, 34.327911>,  <41.880497, 34.471104, 34.472374>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<41.828644, 34.655609, 34.327911>,  <41.742222, 34.963120, 34.087143>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.828644, 34.655609, 34.327911> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.943104, 0.004737, -0.332464,
		0.252737, 0.639506, 0.726056,
		0.216052, -0.768772, 0.601923,
		41.893459, 34.424976, 34.508488>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.249233, 35.213562, 34.400856>,  <41.742222, 34.963120, 34.087143>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.249233, 35.213562, 34.400856> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287457, 34.815849, 34.419964>,  <42.310390, 34.577221, 34.431427>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.287457, 34.815849, 34.419964>,  <42.249233, 35.213562, 34.400856>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.287457, 34.815849, 34.419964> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.936390, 0.073505, -0.343176,
		0.337701, 0.077520, 0.938056,
		0.095555, -0.994277, 0.047767,
		42.316124, 34.517567, 34.434296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.732426, 35.141724, 34.969181>,  <42.249233, 35.213562, 34.400856>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.732426, 35.141724, 34.969181> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722942, 34.875790, 34.670536>,  <42.717251, 34.716228, 34.491348>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<42.722942, 34.875790, 34.670536>,  <42.732426, 35.141724, 34.969181>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.722942, 34.875790, 34.670536> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.903623, 0.305229, -0.300500,
		0.427671, -0.681780, 0.593526,
		-0.023713, -0.664839, -0.746610,
		42.715828, 34.676338, 34.446552>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.004601, 34.374794, 35.045326>,  <42.732426, 35.141724, 34.969181>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.004601, 34.374794, 35.045326> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054192, 34.523243, 34.677219>,  <43.083946, 34.612312, 34.456356>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.054192, 34.523243, 34.677219>,  <43.004601, 34.374794, 35.045326>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.054192, 34.523243, 34.677219> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.970963, -0.236596, 0.035394,
		-0.204596, -0.897937, -0.389679,
		0.123978, 0.371123, -0.920270,
		43.091385, 34.634579, 34.401138>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.666306, 34.098892, 35.280251>,  <43.004601, 34.374794, 35.045326>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.666306, 34.098892, 35.280251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973598, 34.279827, 35.461452>,  <44.157974, 34.388390, 35.570175>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<43.973598, 34.279827, 35.461452>,  <43.666306, 34.098892, 35.280251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973598, 34.279827, 35.461452> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250910, -0.438258, 0.863119,
		0.588956, -0.776736, -0.223186,
		0.768228, 0.452340, 0.453005,
		44.204067, 34.415527, 35.597355>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.208736, 34.467083, 34.947067>,  <43.666306, 34.098892, 35.280251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.208736, 34.467083, 34.947067> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294456, 34.645164, 34.599304>,  <44.345890, 34.752014, 34.390648>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.294456, 34.645164, 34.599304>,  <44.208736, 34.467083, 34.947067>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.294456, 34.645164, 34.599304> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.747478, -0.647718, -0.147439,
		-0.628771, -0.618265, -0.471589,
		0.214300, 0.445208, -0.869405,
		44.358746, 34.778728, 34.338482>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.395596, 33.955677, 34.542725>,  <44.208736, 34.467083, 34.947067>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.395596, 33.955677, 34.542725> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564011, 34.311775, 34.473232>,  <44.665058, 34.525436, 34.431538>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<44.564011, 34.311775, 34.473232>,  <44.395596, 33.955677, 34.542725>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.564011, 34.311775, 34.473232> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.905356, -0.424151, 0.020662,
		-0.055294, -0.165989, -0.984576,
		0.421039, 0.890249, -0.173732,
		44.690323, 34.578850, 34.421112>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.981323, 33.748966, 34.188705>,  <44.395596, 33.955677, 34.542725>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.981323, 33.748966, 34.188705> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031006, 34.140076, 34.256264>,  <45.060818, 34.374741, 34.296799>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.031006, 34.140076, 34.256264>,  <44.981323, 33.748966, 34.188705>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.031006, 34.140076, 34.256264> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.992161, -0.120037, -0.034745,
		-0.013699, 0.171889, -0.985021,
		0.124211, 0.977776, 0.168897,
		45.068268, 34.433407, 34.306934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.610424, 34.066166, 33.758251>,  <44.981323, 33.748966, 34.188705>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.610424, 34.066166, 33.758251> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557613, 34.315277, 34.066723>,  <45.525925, 34.464745, 34.251804>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.557613, 34.315277, 34.066723>,  <45.610424, 34.066166, 33.758251>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.557613, 34.315277, 34.066723> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.988595, 0.025871, 0.148361,
		0.072444, 0.781973, -0.619088,
		-0.132031, 0.622775, 0.771180,
		45.518005, 34.502110, 34.298077>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.994858, 34.689342, 33.718037>,  <45.610424, 34.066166, 33.758251>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.994858, 34.689342, 33.718037> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948532, 34.647396, 34.113125>,  <45.920734, 34.622227, 34.350178>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<45.948532, 34.647396, 34.113125>,  <45.994858, 34.689342, 33.718037>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.948532, 34.647396, 34.113125> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.963511, 0.229731, 0.137368,
		-0.241315, 0.967588, 0.074432,
		-0.115817, -0.104865, 0.987719,
		45.913788, 34.615936, 34.409439>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.195015, 35.299587, 34.124607>,  <45.994858, 34.689342, 33.718037>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.195015, 35.299587, 34.124607> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209179, 34.987907, 34.374916>,  <46.217678, 34.800900, 34.525101>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.209179, 34.987907, 34.374916>,  <46.195015, 35.299587, 34.124607>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.209179, 34.987907, 34.374916> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.974872, 0.164732, 0.149962,
		-0.219936, 0.604738, 0.765455,
		0.035407, -0.779202, 0.625772,
		46.219803, 34.754147, 34.562649>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.399525, 35.430618, 34.838871>,  <46.195015, 35.299587, 34.124607>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.399525, 35.430618, 34.838871> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534470, 35.061096, 34.766460>,  <46.615437, 34.839382, 34.723015>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.534470, 35.061096, 34.766460>,  <46.399525, 35.430618, 34.838871>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.534470, 35.061096, 34.766460> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940432, 0.322130, 0.108716,
		-0.042117, -0.206924, 0.977450,
		0.337362, -0.923804, -0.181031,
		46.635677, 34.783955, 34.712151>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.716270, 35.282814, 35.451756>,  <46.399525, 35.430618, 34.838871>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.716270, 35.282814, 35.451756> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873005, 35.084789, 35.141560>,  <46.967045, 34.965977, 34.955441>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<46.873005, 35.084789, 35.141560>,  <46.716270, 35.282814, 35.451756>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.873005, 35.084789, 35.141560> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.919801, 0.229854, 0.318014,
		0.020813, -0.837904, 0.545421,
		0.391832, -0.495060, -0.775489,
		46.990555, 34.936272, 34.908913>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.241032, 34.708897, 35.593422>,  <46.716270, 35.282814, 35.451756>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.241032, 34.708897, 35.593422> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318810, 34.883595, 35.242092>,  <47.365475, 34.988411, 35.031296>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.318810, 34.883595, 35.242092>,  <47.241032, 34.708897, 35.593422>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.318810, 34.883595, 35.242092> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.940124, 0.172556, 0.293925,
		0.279929, -0.882882, -0.377039,
		0.194440, 0.436742, -0.878322,
		47.377140, 35.014618, 34.978596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<47.835289, 34.470463, 35.468353>,  <47.241032, 34.708897, 35.593422>, 0.130000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<47.835289, 34.470463, 35.468353> 0.250000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795719, 34.812588, 35.264923>,  <47.771976, 35.017864, 35.142864>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
cylinder {
	<47.795719, 34.812588, 35.264923>,  <47.835289, 34.470463, 35.468353>, 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}

// particle -1
sphere {
	<47.795719, 34.812588, 35.264923> 0.100000
	pigment { color rgbt <1,0,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.904461, 0.290393, 0.312445,
		0.414925, -0.429076, -0.802328,
		-0.098928, 0.855316, -0.508574,
		47.766041, 35.069183, 35.112350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 1

// nucleotide -1

// particle -1
sphere {
	<41.965408, 29.324339, 24.194826> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.623440, 29.377956, 23.994368>,  <41.418259, 29.410126, 23.874092>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.623440, 29.377956, 23.994368>,  <41.965408, 29.324339, 24.194826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.623440, 29.377956, 23.994368> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.476808, 0.177553, 0.860889,
		0.204376, 0.974940, -0.087880,
		-0.854918, 0.134043, -0.501147,
		41.366966, 29.418169, 23.844023>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669617, 29.879690, 24.559780>,  <41.965408, 29.324339, 24.194826>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669617, 29.879690, 24.559780> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368481, 29.695704, 24.371456>,  <41.187798, 29.585312, 24.258463>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.368481, 29.695704, 24.371456>,  <41.669617, 29.879690, 24.559780>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.368481, 29.695704, 24.371456> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.630068, 0.296723, 0.717614,
		-0.190379, 0.836890, -0.513196,
		-0.752841, -0.459967, -0.470808,
		41.142628, 29.557713, 24.230213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.146816, 30.434784, 24.498045>,  <41.669617, 29.879690, 24.559780>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.146816, 30.434784, 24.498045> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989044, 30.067375, 24.487122>,  <40.894382, 29.846930, 24.480568>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.989044, 30.067375, 24.487122>,  <41.146816, 30.434784, 24.498045>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.989044, 30.067375, 24.487122> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.699062, 0.280635, 0.657690,
		-0.596439, 0.278500, -0.752794,
		-0.394427, -0.918522, -0.027307,
		40.870716, 29.791819, 24.478930>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.557888, 30.582602, 24.539192>,  <41.146816, 30.434784, 24.498045>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.557888, 30.582602, 24.539192> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525917, 30.191444, 24.616486>,  <40.506733, 29.956751, 24.662861>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.525917, 30.191444, 24.616486>,  <40.557888, 30.582602, 24.539192>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.525917, 30.191444, 24.616486> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.863588, 0.164750, 0.476522,
		-0.497822, -0.128784, -0.857664,
		-0.079932, -0.977892, 0.193233,
		40.501938, 29.898077, 24.674456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.922123, 30.365820, 24.293552>,  <40.557888, 30.582602, 24.539192>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.922123, 30.365820, 24.293552> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027111, 30.108198, 24.580971>,  <40.090103, 29.953625, 24.753422>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.027111, 30.108198, 24.580971>,  <39.922123, 30.365820, 24.293552>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.027111, 30.108198, 24.580971> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.820732, 0.242604, 0.517245,
		-0.507455, -0.725493, -0.464919,
		0.262467, -0.644052, 0.718546,
		40.105850, 29.914982, 24.796534>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.334785, 29.886169, 24.427469>,  <39.922123, 30.365820, 24.293552>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.334785, 29.886169, 24.427469> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.559490, 29.861530, 24.757469>,  <39.694313, 29.846746, 24.955469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.559490, 29.861530, 24.757469>,  <39.334785, 29.886169, 24.427469>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.559490, 29.861530, 24.757469> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.794508, 0.237805, 0.558754,
		-0.230609, -0.969357, 0.084649,
		0.561762, -0.061600, 0.825002,
		39.728020, 29.843050, 25.004971>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.862202, 29.725447, 24.883755>,  <39.334785, 29.886169, 24.427469>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.862202, 29.725447, 24.883755> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160126, 29.840971, 25.124369>,  <39.338882, 29.910286, 25.268736>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.160126, 29.840971, 25.124369>,  <38.862202, 29.725447, 24.883755>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.160126, 29.840971, 25.124369> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666888, 0.352843, 0.656324,
		-0.022693, -0.889994, 0.455407,
		0.744812, 0.288812, 0.601533,
		39.383568, 29.927614, 25.304829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.717274, 29.441103, 25.564451>,  <38.862202, 29.725447, 24.883755>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.717274, 29.441103, 25.564451> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952003, 29.763672, 25.593628>,  <39.092842, 29.957212, 25.611134>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.952003, 29.763672, 25.593628>,  <38.717274, 29.441103, 25.564451>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.952003, 29.763672, 25.593628> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646548, 0.412438, 0.641771,
		0.487457, -0.423764, 0.763420,
		0.586823, 0.806424, 0.072938,
		39.128052, 30.005598, 25.615511>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.681831, 29.641676, 26.293425>,  <38.717274, 29.441103, 25.564451>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.681831, 29.641676, 26.293425> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.838680, 29.969240, 26.125795>,  <38.932789, 30.165779, 26.025217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.838680, 29.969240, 26.125795>,  <38.681831, 29.641676, 26.293425>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.838680, 29.969240, 26.125795> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.542473, 0.573769, 0.613606,
		0.742940, -0.013274, 0.669226,
		0.392126, 0.818910, -0.419076,
		38.956318, 30.214912, 26.000072>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.890511, 29.986504, 26.914921>,  <38.681831, 29.641676, 26.293425>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.890511, 29.986504, 26.914921> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844341, 30.244230, 26.612520>,  <38.816639, 30.398867, 26.431080>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.844341, 30.244230, 26.612520>,  <38.890511, 29.986504, 26.914921>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.844341, 30.244230, 26.612520> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.474353, 0.632944, 0.611859,
		0.872736, 0.429233, 0.232576,
		-0.115422, 0.644315, -0.756000,
		38.809715, 30.437525, 26.385719>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.253990, 30.626520, 26.984072>,  <38.890511, 29.986504, 26.914921>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.253990, 30.626520, 26.984072> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907898, 30.663355, 26.786932>,  <38.700241, 30.685455, 26.668648>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.907898, 30.663355, 26.786932>,  <39.253990, 30.626520, 26.984072>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.907898, 30.663355, 26.786932> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.311551, 0.671421, 0.672406,
		0.392829, 0.735332, -0.552243,
		-0.865229, 0.092089, -0.492847,
		38.648331, 30.690981, 26.639078>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189095, 31.316555, 26.826473>,  <39.253990, 30.626520, 26.984072>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189095, 31.316555, 26.826473> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828850, 31.145666, 26.858400>,  <38.612701, 31.043133, 26.877556>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.828850, 31.145666, 26.858400>,  <39.189095, 31.316555, 26.826473>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.828850, 31.145666, 26.858400> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.268553, 0.691427, 0.670677,
		-0.341717, 0.582587, -0.737443,
		-0.900616, -0.427225, 0.079817,
		38.558666, 31.017498, 26.882345>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.787655, 31.854366, 26.894087>,  <39.189095, 31.316555, 26.826473>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.787655, 31.854366, 26.894087> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554119, 31.558367, 27.027670>,  <38.413998, 31.380766, 27.107821>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.554119, 31.558367, 27.027670>,  <38.787655, 31.854366, 26.894087>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.554119, 31.558367, 27.027670> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.395030, 0.618302, 0.679451,
		-0.709281, 0.264769, -0.653313,
		-0.583843, -0.740000, 0.333958,
		38.378967, 31.336367, 27.127857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.175831, 32.161339, 27.026217>,  <38.787655, 31.854366, 26.894087>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.175831, 32.161339, 27.026217> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135380, 31.820484, 27.231598>,  <38.111111, 31.615971, 27.354826>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.135380, 31.820484, 27.231598>,  <38.175831, 32.161339, 27.026217>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.135380, 31.820484, 27.231598> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353850, 0.513158, 0.781959,
		-0.929819, -0.102609, -0.353423,
		-0.101126, -0.852139, 0.513452,
		38.105042, 31.564842, 27.385633>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.585499, 32.283890, 27.434582>,  <38.175831, 32.161339, 27.026217>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.585499, 32.283890, 27.434582> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720364, 31.959608, 27.626030>,  <37.801281, 31.765039, 27.740900>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720364, 31.959608, 27.626030>,  <37.585499, 32.283890, 27.434582>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720364, 31.959608, 27.626030> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.343030, 0.367652, 0.864386,
		-0.876728, -0.455620, -0.154138,
		0.337162, -0.810705, 0.478622,
		37.821514, 31.716396, 27.769617>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.057480, 31.929594, 27.897133>,  <37.585499, 32.283890, 27.434582>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.057480, 31.929594, 27.897133> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418259, 31.827339, 28.036358>,  <37.634724, 31.765985, 28.119892>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.418259, 31.827339, 28.036358>,  <37.057480, 31.929594, 27.897133>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.418259, 31.827339, 28.036358> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.227262, 0.404370, 0.885910,
		-0.367219, -0.878142, 0.306621,
		0.901943, -0.255640, 0.348060,
		37.688843, 31.750647, 28.140776>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842319, 31.660452, 28.541279>,  <37.057480, 31.929594, 27.897133>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842319, 31.660452, 28.541279> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229324, 31.760862, 28.553318>,  <37.461529, 31.821108, 28.560541>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.229324, 31.760862, 28.553318>,  <36.842319, 31.660452, 28.541279>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.229324, 31.760862, 28.553318> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.142005, 0.441070, 0.886167,
		0.209173, -0.861652, 0.462387,
		0.967513, 0.251023, 0.030099,
		37.519577, 31.836170, 28.562347>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.998287, 31.454161, 29.114479>,  <36.842319, 31.660452, 28.541279>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.998287, 31.454161, 29.114479> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265453, 31.738276, 29.025595>,  <37.425755, 31.908745, 28.972263>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.265453, 31.738276, 29.025595>,  <36.998287, 31.454161, 29.114479>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.265453, 31.738276, 29.025595> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.190264, 0.451619, 0.871688,
		0.719505, -0.539935, 0.436786,
		0.667916, 0.710289, -0.222212,
		37.465828, 31.951363, 28.958931>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.107670, 31.684515, 29.744856>,  <36.998287, 31.454161, 29.114479>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.107670, 31.684515, 29.744856> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267426, 31.974031, 29.519783>,  <37.363281, 32.147743, 29.384739>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.267426, 31.974031, 29.519783>,  <37.107670, 31.684515, 29.744856>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.267426, 31.974031, 29.519783> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.160674, 0.659520, 0.734314,
		0.902591, -0.202871, 0.379702,
		0.399392, 0.723793, -0.562681,
		37.387241, 32.191170, 29.350979>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.768402, 31.935915, 30.059141>,  <37.107670, 31.684515, 29.744856>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.768402, 31.935915, 30.059141> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607372, 32.233814, 29.846245>,  <37.510754, 32.412552, 29.718508>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.607372, 32.233814, 29.846245>,  <37.768402, 31.935915, 30.059141>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.607372, 32.233814, 29.846245> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.105634, 0.539758, 0.835166,
		0.909270, 0.392443, -0.138625,
		-0.402579, 0.744748, -0.532241,
		37.486599, 32.457237, 29.686573>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.965893, 32.383171, 30.500954>,  <37.768402, 31.935915, 30.059141>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.965893, 32.383171, 30.500954> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699829, 32.586311, 30.281994>,  <37.540192, 32.708195, 30.150618>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.699829, 32.586311, 30.281994>,  <37.965893, 32.383171, 30.500954>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.699829, 32.586311, 30.281994> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.193736, 0.590614, 0.783352,
		0.721127, 0.627109, -0.294466,
		-0.665163, 0.507847, -0.547402,
		37.500278, 32.738667, 30.117773>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.083881, 33.022545, 30.627811>,  <37.965893, 32.383171, 30.500954>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.083881, 33.022545, 30.627811> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720928, 33.056026, 30.463057>,  <37.503155, 33.076115, 30.364204>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<37.720928, 33.056026, 30.463057>,  <38.083881, 33.022545, 30.627811>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.720928, 33.056026, 30.463057> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260792, 0.656383, 0.707919,
		0.329614, 0.749770, -0.573759,
		-0.907382, 0.083708, -0.411887,
		37.448715, 33.081139, 30.339491>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.515594, 32.948315, 30.022949>,  <38.083881, 33.022545, 30.627811>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.515594, 32.948315, 30.022949> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662098, 32.813381, 30.369835>,  <38.750000, 32.732422, 30.577967>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<38.662098, 32.813381, 30.369835>,  <38.515594, 32.948315, 30.022949>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.662098, 32.813381, 30.369835> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834182, -0.293923, -0.466636,
		0.412307, 0.894323, 0.173749,
		0.366255, -0.337336, 0.867215,
		38.771973, 32.712181, 30.629999>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.201385, 32.959576, 29.997887>,  <38.515594, 32.948315, 30.022949>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.201385, 32.959576, 29.997887> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166161, 32.710674, 30.309025>,  <39.145023, 32.561333, 30.495708>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.166161, 32.710674, 30.309025>,  <39.201385, 32.959576, 29.997887>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.166161, 32.710674, 30.309025> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.833358, -0.473791, -0.284669,
		0.545673, 0.623155, 0.560285,
		-0.088064, -0.622254, 0.777846,
		39.139740, 32.523998, 30.542379>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.877571, 32.750805, 30.155901>,  <39.201385, 32.959576, 29.997887>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.877571, 32.750805, 30.155901> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657890, 32.479664, 30.351406>,  <39.526081, 32.316978, 30.468710>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<39.657890, 32.479664, 30.351406>,  <39.877571, 32.750805, 30.155901>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.657890, 32.479664, 30.351406> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.780185, -0.625481, 0.009198,
		0.299478, 0.386378, 0.872368,
		-0.549204, -0.677853, 0.488764,
		39.493130, 32.276306, 30.498035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.380688, 32.531513, 30.687561>,  <39.877571, 32.750805, 30.155901>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.380688, 32.531513, 30.687561> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103905, 32.254448, 30.606171>,  <39.937836, 32.088207, 30.557337>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.103905, 32.254448, 30.606171>,  <40.380688, 32.531513, 30.687561>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.103905, 32.254448, 30.606171> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.717017, -0.626548, -0.305490,
		0.084115, -0.357283, 0.930201,
		-0.691962, -0.692666, -0.203476,
		39.896317, 32.046650, 30.545128>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.637955, 31.996727, 30.958883>,  <40.380688, 32.531513, 30.687561>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.637955, 31.996727, 30.958883> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373096, 31.806005, 30.727636>,  <40.214180, 31.691572, 30.588888>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.373096, 31.806005, 30.727636>,  <40.637955, 31.996727, 30.958883>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.373096, 31.806005, 30.727636> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.685048, -0.697856, -0.209059,
		-0.303763, -0.534466, 0.788717,
		-0.662146, -0.476805, -0.578118,
		40.174454, 31.662964, 30.554201>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.947392, 31.352938, 30.806940>,  <40.637955, 31.996727, 30.958883>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.947392, 31.352938, 30.806940> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.629787, 31.343021, 30.563980>,  <40.439224, 31.337070, 30.418203>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.629787, 31.343021, 30.563980>,  <40.947392, 31.352938, 30.806940>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.629787, 31.343021, 30.563980> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.418989, -0.746256, -0.517253,
		-0.440452, -0.665197, 0.602922,
		-0.794009, -0.024793, -0.607400,
		40.391586, 31.335583, 30.381760>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.791862, 30.671637, 30.755079>,  <40.947392, 31.352938, 30.806940>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.791862, 30.671637, 30.755079> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661591, 30.848156, 30.420610>,  <40.583427, 30.954067, 30.219929>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.661591, 30.848156, 30.420610>,  <40.791862, 30.671637, 30.755079>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.661591, 30.848156, 30.420610> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663895, -0.522948, -0.534574,
		-0.673182, -0.729233, -0.122660,
		-0.325684, 0.441299, -0.836173,
		40.563885, 30.980545, 30.169758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.487453, 30.210281, 30.168938>,  <40.791862, 30.671637, 30.755079>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.487453, 30.210281, 30.168938> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607014, 30.541927, 29.979952>,  <40.678749, 30.740915, 29.866560>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.607014, 30.541927, 29.979952>,  <40.487453, 30.210281, 30.168938>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.607014, 30.541927, 29.979952> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.559530, -0.553334, -0.617048,
		-0.773036, -0.079921, -0.629308,
		0.298902, 0.829117, -0.472465,
		40.696686, 30.790663, 29.838213>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.387482, 30.140141, 29.519833>,  <40.487453, 30.210281, 30.168938>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.387482, 30.140141, 29.519833> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658855, 30.433365, 29.500454>,  <40.821678, 30.609301, 29.488827>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.658855, 30.433365, 29.500454>,  <40.387482, 30.140141, 29.519833>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.658855, 30.433365, 29.500454> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.347431, -0.378245, -0.858034,
		-0.647317, 0.565287, -0.511303,
		0.678434, 0.733063, -0.048446,
		40.862385, 30.653284, 29.485920>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.459011, 30.344065, 28.836554>,  <40.387482, 30.140141, 29.519833>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.459011, 30.344065, 28.836554> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782597, 30.510696, 29.002466>,  <40.976746, 30.610676, 29.102015>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<40.782597, 30.510696, 29.002466>,  <40.459011, 30.344065, 28.836554>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.782597, 30.510696, 29.002466> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.541442, -0.253181, -0.801711,
		-0.228959, 0.873134, -0.430366,
		0.808961, 0.416577, 0.414783,
		41.025284, 30.635670, 29.126902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.703075, 30.741833, 28.365351>,  <40.459011, 30.344065, 28.836554>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.703075, 30.741833, 28.365351> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.023899, 30.699530, 28.600471>,  <41.216393, 30.674147, 28.741543>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.023899, 30.699530, 28.600471>,  <40.703075, 30.741833, 28.365351>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.023899, 30.699530, 28.600471> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.580461, -0.093607, -0.808890,
		0.140570, 0.989976, -0.013690,
		0.802063, -0.105760, 0.587800,
		41.264519, 30.667801, 28.776812>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.173038, 31.063272, 28.021574>,  <40.703075, 30.741833, 28.365351>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.173038, 31.063272, 28.021574> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.410213, 30.848589, 28.261696>,  <41.552521, 30.719780, 28.405769>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.410213, 30.848589, 28.261696>,  <41.173038, 31.063272, 28.021574>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.410213, 30.848589, 28.261696> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.623568, -0.165650, -0.764018,
		0.509494, 0.827349, 0.236452,
		0.592941, -0.536707, 0.600305,
		41.588097, 30.687576, 28.441788>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.844910, 31.211752, 27.840727>,  <41.173038, 31.063272, 28.021574>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.844910, 31.211752, 27.840727> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.884594, 30.852049, 28.011135>,  <41.908405, 30.636227, 28.113380>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<41.884594, 30.852049, 28.011135>,  <41.844910, 31.211752, 27.840727>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.884594, 30.852049, 28.011135> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.542542, -0.310016, -0.780730,
		0.834150, 0.308589, 0.457128,
		0.099207, -0.899257, 0.426022,
		41.914356, 30.582272, 28.138941>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.503895, 31.056221, 27.675806>,  <41.844910, 31.211752, 27.840727>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.503895, 31.056221, 27.675806> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336872, 30.712875, 27.795042>,  <42.236660, 30.506868, 27.866585>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.336872, 30.712875, 27.795042>,  <42.503895, 31.056221, 27.675806>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.336872, 30.712875, 27.795042> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.489957, -0.488973, -0.721697,
		0.765237, -0.155297, 0.624736,
		-0.417557, -0.858363, 0.298092,
		42.211605, 30.455366, 27.884470>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.123001, 30.679121, 27.850790>,  <42.503895, 31.056221, 27.675806>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.123001, 30.679121, 27.850790> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.819489, 30.432245, 27.767532>,  <42.637379, 30.284121, 27.717579>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<42.819489, 30.432245, 27.767532>,  <43.123001, 30.679121, 27.850790>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.819489, 30.432245, 27.767532> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.582871, -0.500790, -0.639899,
		0.290703, -0.606866, 0.739734,
		-0.758784, -0.617190, -0.208143,
		42.591854, 30.247087, 27.705090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.455326, 30.049978, 27.750505>,  <43.123001, 30.679121, 27.850790>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.455326, 30.049978, 27.750505> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.090912, 30.002661, 27.592510>,  <42.872261, 29.974270, 27.497713>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.090912, 30.002661, 27.592510>,  <43.455326, 30.049978, 27.750505>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.090912, 30.002661, 27.592510> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.400336, -0.483062, -0.778705,
		-0.098689, -0.867559, 0.487444,
		-0.911038, -0.118292, -0.394988,
		42.817600, 29.967173, 27.474014>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.519875, 29.435144, 27.500013>,  <43.455326, 30.049978, 27.750505>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.519875, 29.435144, 27.500013> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.199375, 29.578741, 27.308548>,  <43.007076, 29.664900, 27.193668>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.199375, 29.578741, 27.308548>,  <43.519875, 29.435144, 27.500013>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.199375, 29.578741, 27.308548> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.370533, -0.330420, -0.868060,
		-0.469787, -0.872896, 0.131731,
		-0.801252, 0.358993, -0.478664,
		42.959000, 29.686440, 27.164949>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.169167, 28.817629, 27.101149>,  <43.519875, 29.435144, 27.500013>, 0.130000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.169167, 28.817629, 27.101149> 0.250000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.077717, 29.167967, 26.931149>,  <43.022846, 29.378170, 26.829149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
cylinder {
	<43.077717, 29.167967, 26.931149>,  <43.169167, 28.817629, 27.101149>, 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.077717, 29.167967, 26.931149> 0.100000
	pigment { color rgbt <0,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.333842, -0.339556, -0.879347,
		-0.914484, -0.342921, -0.214765,
		-0.228622, 0.875847, -0.425000,
		43.009129, 29.430721, 26.803648>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 2

// nucleotide -1

// particle -1
sphere {
	<42.739342, 28.684732, 26.519154> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.857342, 29.057600, 26.435213>,  <42.928143, 29.281321, 26.384848>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.857342, 29.057600, 26.435213>,  <42.739342, 28.684732, 26.519154>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.857342, 29.057600, 26.435213> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.169034, -0.267076, -0.948735,
		-0.940427, 0.244404, -0.236355,
		0.294999, 0.932168, -0.209853,
		42.945843, 29.337250, 26.372257>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.432026, 28.785761, 25.830357>,  <42.739342, 28.684732, 26.519154>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.432026, 28.785761, 25.830357> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.711266, 29.070147, 25.864248>,  <42.878811, 29.240778, 25.884583>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.711266, 29.070147, 25.864248>,  <42.432026, 28.785761, 25.830357>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.711266, 29.070147, 25.864248> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.158323, -0.037874, -0.986661,
		-0.698273, 0.702206, -0.139002,
		0.698104, 0.710966, 0.084729,
		42.920696, 29.283436, 25.889668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.321831, 29.079502, 25.270472>,  <42.432026, 28.785761, 25.830357>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.321831, 29.079502, 25.270472> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.697510, 29.165201, 25.377810>,  <42.922916, 29.216619, 25.442211>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.697510, 29.165201, 25.377810>,  <42.321831, 29.079502, 25.270472>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.697510, 29.165201, 25.377810> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.277173, -0.011711, -0.960749,
		-0.202694, 0.976710, -0.070382,
		0.939197, 0.214246, 0.268344,
		42.979267, 29.229475, 25.458313>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.601604, 29.635765, 24.760647>,  <42.321831, 29.079502, 25.270472>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.601604, 29.635765, 24.760647> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906296, 29.460033, 24.951128>,  <43.089111, 29.354595, 25.065416>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.906296, 29.460033, 24.951128>,  <42.601604, 29.635765, 24.760647>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.906296, 29.460033, 24.951128> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.479746, -0.111533, -0.870290,
		0.435455, 0.891376, 0.125809,
		0.761724, -0.439328, 0.476201,
		43.134811, 29.328236, 25.093988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.237858, 29.954676, 24.571402>,  <42.601604, 29.635765, 24.760647>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.237858, 29.954676, 24.571402> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.349655, 29.596008, 24.708727>,  <43.416733, 29.380808, 24.791122>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.349655, 29.596008, 24.708727>,  <43.237858, 29.954676, 24.571402>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.349655, 29.596008, 24.708727> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.537711, -0.150055, -0.829669,
		0.795456, 0.416492, 0.440210,
		0.279494, -0.896671, 0.343314,
		43.433502, 29.327007, 24.811722>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.990280, 29.874060, 24.414114>,  <43.237858, 29.954676, 24.571402>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.990280, 29.874060, 24.414114> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.864635, 29.501688, 24.488632>,  <43.789249, 29.278265, 24.533344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.864635, 29.501688, 24.488632>,  <43.990280, 29.874060, 24.414114>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.864635, 29.501688, 24.488632> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.442749, -0.317224, -0.838655,
		0.839825, -0.180950, 0.511812,
		-0.314114, -0.930927, 0.186297,
		43.770401, 29.222410, 24.544521>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.560432, 29.419182, 24.218588>,  <43.990280, 29.874060, 24.414114>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.560432, 29.419182, 24.218588> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.246952, 29.170727, 24.218378>,  <44.058865, 29.021654, 24.218252>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.246952, 29.170727, 24.218378>,  <44.560432, 29.419182, 24.218588>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.246952, 29.170727, 24.218378> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.358159, -0.451205, -0.817396,
		0.507477, -0.640784, 0.576076,
		-0.783703, -0.621136, -0.000527,
		44.011841, 28.984386, 24.218220>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.730602, 28.617071, 24.139513>,  <44.560432, 29.419182, 24.218588>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.730602, 28.617071, 24.139513> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354538, 28.653196, 24.008091>,  <44.128899, 28.674871, 23.929237>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.354538, 28.653196, 24.008091>,  <44.730602, 28.617071, 24.139513>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.354538, 28.653196, 24.008091> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.217473, -0.583270, -0.782625,
		-0.262319, -0.807242, 0.528724,
		-0.940156, 0.090315, -0.328556,
		44.072491, 28.680290, 23.909525>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.700439, 28.019394, 23.720009>,  <44.730602, 28.617071, 24.139513>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.700439, 28.019394, 23.720009> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.394680, 28.240629, 23.587473>,  <44.211224, 28.373371, 23.507952>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.394680, 28.240629, 23.587473>,  <44.700439, 28.019394, 23.720009>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.394680, 28.240629, 23.587473> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.112303, -0.391837, -0.913155,
		-0.634887, -0.735226, 0.237407,
		-0.764400, 0.553088, -0.331340,
		44.165359, 28.406555, 23.488071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.194729, 27.523081, 23.438110>,  <44.700439, 28.019394, 23.720009>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.194729, 27.523081, 23.438110> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.164959, 27.890274, 23.282280>,  <44.147095, 28.110590, 23.188782>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.164959, 27.890274, 23.282280>,  <44.194729, 27.523081, 23.438110>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.164959, 27.890274, 23.282280> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.108494, -0.380886, -0.918235,
		-0.991307, -0.110608, -0.071248,
		-0.074427, 0.917983, -0.389575,
		44.142632, 28.165668, 23.165407>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.009136, 27.257349, 22.823994>,  <44.194729, 27.523081, 23.438110>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.009136, 27.257349, 22.823994> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.110092, 27.638275, 22.755415>,  <44.170666, 27.866831, 22.714268>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.110092, 27.638275, 22.755415>,  <44.009136, 27.257349, 22.823994>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.110092, 27.638275, 22.755415> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.150294, -0.213615, -0.965288,
		-0.955881, 0.217865, -0.197042,
		0.252393, 0.952315, -0.171447,
		44.185810, 27.923969, 22.703981>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.871956, 27.292805, 22.107065>,  <44.009136, 27.257349, 22.823994>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.871956, 27.292805, 22.107065> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.108582, 27.612837, 22.146914>,  <44.250557, 27.804855, 22.170822>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.108582, 27.612837, 22.146914>,  <43.871956, 27.292805, 22.107065>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.108582, 27.612837, 22.146914> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231846, -0.050463, -0.971443,
		-0.772204, 0.597768, -0.215347,
		0.591564, 0.800079, 0.099622,
		44.286053, 27.852861, 22.176800>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.740295, 27.652039, 21.576962>,  <43.871956, 27.292805, 22.107065>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.740295, 27.652039, 21.576962> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.097149, 27.783863, 21.700567>,  <44.311260, 27.862957, 21.774731>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.097149, 27.783863, 21.700567>,  <43.740295, 27.652039, 21.576962>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.097149, 27.783863, 21.700567> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.380128, -0.177954, -0.907653,
		-0.244135, 0.927212, -0.284034,
		0.892133, 0.329559, 0.309015,
		44.364788, 27.882730, 21.793272>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.970356, 27.990784, 20.999231>,  <43.740295, 27.652039, 21.576962>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.970356, 27.990784, 20.999231> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.308285, 27.932423, 21.205137>,  <44.511044, 27.897406, 21.328682>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.308285, 27.932423, 21.205137>,  <43.970356, 27.990784, 20.999231>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.308285, 27.932423, 21.205137> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.482862, -0.206513, -0.850998,
		0.230468, 0.967505, -0.104016,
		0.844825, -0.145902, 0.514766,
		44.561733, 27.888653, 21.359568>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.478149, 28.371700, 20.652843>,  <43.970356, 27.990784, 20.999231>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.478149, 28.371700, 20.652843> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.673756, 28.093676, 20.863653>,  <44.791119, 27.926861, 20.990139>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.673756, 28.093676, 20.863653>,  <44.478149, 28.371700, 20.652843>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.673756, 28.093676, 20.863653> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.518451, -0.254283, -0.816424,
		0.701477, 0.672481, 0.236006,
		0.489018, -0.695060, 0.527022,
		44.820461, 27.885157, 21.021759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.203762, 28.529303, 20.587626>,  <44.478149, 28.371700, 20.652843>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.203762, 28.529303, 20.587626> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.168369, 28.142958, 20.685019>,  <45.147133, 27.911152, 20.743454>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.168369, 28.142958, 20.685019>,  <45.203762, 28.529303, 20.587626>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.168369, 28.142958, 20.685019> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.579479, -0.248735, -0.776102,
		0.810170, 0.072422, 0.581705,
		-0.088483, -0.965860, 0.243484,
		45.141823, 27.853199, 20.758064>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.799885, 28.286695, 20.415602>,  <45.203762, 28.529303, 20.587626>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.799885, 28.286695, 20.415602> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.631870, 27.925549, 20.452265>,  <45.531059, 27.708860, 20.474262>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.631870, 27.925549, 20.452265>,  <45.799885, 28.286695, 20.415602>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.631870, 27.925549, 20.452265> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.384872, -0.268693, -0.882994,
		0.821852, -0.335615, 0.460349,
		-0.420038, -0.902866, 0.091657,
		45.505859, 27.654688, 20.479761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.331936, 27.800806, 20.178169>,  <45.799885, 28.286695, 20.415602>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.331936, 27.800806, 20.178169> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.960381, 27.659998, 20.132141>,  <45.737446, 27.575514, 20.104525>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.960381, 27.659998, 20.132141>,  <46.331936, 27.800806, 20.178169>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.960381, 27.659998, 20.132141> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.198722, -0.211565, -0.956948,
		0.312521, -0.911768, 0.266475,
		-0.928892, -0.352021, -0.115070,
		45.681713, 27.554392, 20.097620>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.389584, 27.083241, 19.924982>,  <46.331936, 27.800806, 20.178169>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.389584, 27.083241, 19.924982> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.004395, 27.115566, 19.822098>,  <45.773281, 27.134962, 19.760366>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<46.004395, 27.115566, 19.822098>,  <46.389584, 27.083241, 19.924982>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<46.004395, 27.115566, 19.822098> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.230604, -0.247371, -0.941079,
		-0.139679, -0.965545, 0.219574,
		-0.962970, 0.080814, -0.257211,
		45.715504, 27.139811, 19.744934>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.190865, 26.518515, 19.577951>,  <46.389584, 27.083241, 19.924982>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.190865, 26.518515, 19.577951> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.939850, 26.803141, 19.451542>,  <45.789242, 26.973915, 19.375696>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.939850, 26.803141, 19.451542>,  <46.190865, 26.518515, 19.577951>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.939850, 26.803141, 19.451542> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.184700, -0.258258, -0.948255,
		-0.756360, -0.653437, 0.030641,
		-0.627539, 0.711564, -0.316026,
		45.751587, 27.016609, 19.356733>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.794125, 26.126762, 19.147367>,  <46.190865, 26.518515, 19.577951>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.794125, 26.126762, 19.147367> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.782169, 26.511633, 19.039053>,  <45.774994, 26.742556, 18.974064>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.782169, 26.511633, 19.039053>,  <45.794125, 26.126762, 19.147367>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.782169, 26.511633, 19.039053> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.190065, -0.260495, -0.946582,
		-0.981317, -0.079761, -0.175089,
		-0.029890, 0.962175, -0.270788,
		45.773201, 26.800285, 18.957817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.342228, 26.152323, 18.564833>,  <45.794125, 26.126762, 19.147367>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.342228, 26.152323, 18.564833> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.558029, 26.488852, 18.551477>,  <45.687511, 26.690769, 18.543465>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.558029, 26.488852, 18.551477>,  <45.342228, 26.152323, 18.564833>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.558029, 26.488852, 18.551477> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273046, -0.212328, -0.938277,
		-0.796482, 0.497086, -0.344271,
		0.539503, 0.841322, -0.033388,
		45.719879, 26.741247, 18.541462>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.066471, 26.736095, 18.041451>,  <45.342228, 26.152323, 18.564833>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.066471, 26.736095, 18.041451> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.462059, 26.744480, 18.100096>,  <45.699413, 26.749512, 18.135283>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<45.462059, 26.744480, 18.100096>,  <45.066471, 26.736095, 18.041451>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<45.462059, 26.744480, 18.100096> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.147774, -0.205961, -0.967338,
		0.009919, 0.978336, -0.206787,
		0.988972, 0.020963, 0.146615,
		45.758751, 26.750769, 18.144081>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.043156, 25.959263, 17.725060>,  <45.066471, 26.736095, 18.041451>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.043156, 25.959263, 17.725060> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.672508, 25.930748, 17.872730>,  <44.450119, 25.913639, 17.961332>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<44.672508, 25.930748, 17.872730>,  <45.043156, 25.959263, 17.725060>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.672508, 25.930748, 17.872730> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.158850, -0.815711, -0.556221,
		0.340794, -0.574050, 0.744531,
		-0.926621, -0.071287, 0.369177,
		44.394524, 25.909361, 17.983484>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.334164, 26.003765, 17.369799>,  <45.043156, 25.959263, 17.725060>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.334164, 26.003765, 17.369799> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.973385, 26.075399, 17.212612>,  <43.756920, 26.118380, 17.118299>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.973385, 26.075399, 17.212612>,  <44.334164, 26.003765, 17.369799>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.973385, 26.075399, 17.212612> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.353290, 0.217332, 0.909919,
		0.248356, 0.959529, -0.132753,
		-0.901945, 0.179084, -0.392968,
		43.702801, 26.129124, 17.094721>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.115139, 26.563795, 17.590029>,  <44.334164, 26.003765, 17.369799>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.115139, 26.563795, 17.590029> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.761486, 26.405100, 17.491308>,  <43.549294, 26.309883, 17.432076>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.761486, 26.405100, 17.491308>,  <44.115139, 26.563795, 17.590029>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.761486, 26.405100, 17.491308> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.386667, 0.324738, 0.863154,
		-0.262301, 0.858570, -0.440516,
		-0.884131, -0.396739, -0.246802,
		43.496246, 26.286077, 17.417267>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.682838, 27.068113, 17.572489>,  <44.115139, 26.563795, 17.590029>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.682838, 27.068113, 17.572489> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.450359, 26.748444, 17.633850>,  <43.310871, 26.556643, 17.670666>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.450359, 26.748444, 17.633850>,  <43.682838, 27.068113, 17.572489>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.450359, 26.748444, 17.633850> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.338918, 0.409099, 0.847215,
		-0.739829, 0.440407, -0.508621,
		-0.581195, -0.799175, 0.153401,
		43.276001, 26.508692, 17.679871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.144073, 27.435835, 17.629160>,  <43.682838, 27.068113, 17.572489>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.144073, 27.435835, 17.629160> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.095203, 27.058956, 17.753956>,  <43.065880, 26.832829, 17.828835>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.095203, 27.058956, 17.753956>,  <43.144073, 27.435835, 17.629160>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.095203, 27.058956, 17.753956> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.445683, 0.332953, 0.830969,
		-0.886814, -0.037524, -0.460600,
		-0.122177, -0.942197, 0.311991,
		43.058552, 26.776297, 17.847553>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.438473, 27.248169, 17.775486>,  <43.144073, 27.435835, 17.629160>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.438473, 27.248169, 17.775486> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.657688, 26.990778, 17.989250>,  <42.789215, 26.836344, 18.117508>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.657688, 26.990778, 17.989250>,  <42.438473, 27.248169, 17.775486>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.657688, 26.990778, 17.989250> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.484389, 0.276721, 0.829936,
		-0.681927, -0.713697, -0.160040,
		0.548036, -0.643477, 0.534410,
		42.822098, 26.797735, 18.149572>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.983547, 27.011950, 18.179953>,  <42.438473, 27.248169, 17.775486>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.983547, 27.011950, 18.179953> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.340839, 26.950283, 18.348890>,  <42.555214, 26.913284, 18.450253>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.340839, 26.950283, 18.348890>,  <41.983547, 27.011950, 18.179953>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.340839, 26.950283, 18.348890> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.374897, 0.263143, 0.888937,
		-0.248180, -0.952360, 0.177251,
		0.893230, -0.154165, 0.422343,
		42.608807, 26.904034, 18.475594>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.876980, 26.639463, 18.822351>,  <41.983547, 27.011950, 18.179953>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.876980, 26.639463, 18.822351> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.243126, 26.792606, 18.872190>,  <42.462814, 26.884493, 18.902094>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.243126, 26.792606, 18.872190>,  <41.876980, 26.639463, 18.822351>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.243126, 26.792606, 18.872190> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.250441, 0.299124, 0.920763,
		0.315247, -0.874041, 0.369691,
		0.915368, 0.382854, 0.124598,
		42.517735, 26.907463, 18.909569>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.152554, 26.395041, 19.450462>,  <41.876980, 26.639463, 18.822351>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.152554, 26.395041, 19.450462> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319519, 26.748329, 19.364967>,  <42.419697, 26.960302, 19.313671>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.319519, 26.748329, 19.364967>,  <42.152554, 26.395041, 19.450462>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.319519, 26.748329, 19.364967> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.086006, 0.272550, 0.958290,
		0.904637, -0.381621, 0.189729,
		0.417414, 0.883223, -0.213737,
		42.444744, 27.013296, 19.300846>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.616993, 26.576584, 19.947514>,  <42.152554, 26.395041, 19.450462>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.616993, 26.576584, 19.947514> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.586071, 26.944311, 19.793175>,  <42.567520, 27.164948, 19.700571>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.586071, 26.944311, 19.793175>,  <42.616993, 26.576584, 19.947514>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.586071, 26.944311, 19.793175> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.096695, 0.378267, 0.920633,
		0.992308, 0.108476, 0.059653,
		-0.077302, 0.919319, -0.385846,
		42.562881, 27.220106, 19.677422>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.047878, 26.961399, 20.401278>,  <42.616993, 26.576584, 19.947514>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.047878, 26.961399, 20.401278> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.816582, 27.233747, 20.221479>,  <42.677803, 27.397158, 20.113600>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.816582, 27.233747, 20.221479>,  <43.047878, 26.961399, 20.401278>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.816582, 27.233747, 20.221479> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.168373, 0.439496, 0.882323,
		0.798301, 0.585880, -0.139495,
		-0.578243, 0.680872, -0.449497,
		42.643108, 27.438009, 20.086630>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.369678, 27.578079, 20.702414>,  <43.047878, 26.961399, 20.401278>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.369678, 27.578079, 20.702414> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.019329, 27.694147, 20.548193>,  <42.809120, 27.763788, 20.455660>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<43.019329, 27.694147, 20.548193>,  <43.369678, 27.578079, 20.702414>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.019329, 27.694147, 20.548193> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.162029, 0.575758, 0.801405,
		0.454526, 0.764399, -0.457275,
		-0.875872, 0.290168, -0.385552,
		42.756569, 27.781197, 20.432528>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.296986, 28.336626, 20.805178>,  <43.369678, 27.578079, 20.702414>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.296986, 28.336626, 20.805178> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.913979, 28.240440, 20.741505>,  <42.684174, 28.182730, 20.703300>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.913979, 28.240440, 20.741505>,  <43.296986, 28.336626, 20.805178>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.913979, 28.240440, 20.741505> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.251780, 0.427956, 0.868021,
		-0.140603, 0.871224, -0.470318,
		-0.957516, -0.240463, -0.159185,
		42.626724, 28.168301, 20.693748>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.741882, 28.932463, 20.704288>,  <43.296986, 28.336626, 20.805178>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.741882, 28.932463, 20.704288> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551712, 28.604630, 20.832195>,  <42.437611, 28.407928, 20.908939>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.551712, 28.604630, 20.832195>,  <42.741882, 28.932463, 20.704288>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.551712, 28.604630, 20.832195> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.186169, 0.448966, 0.873940,
		-0.859832, 0.355963, -0.366031,
		-0.475425, -0.819585, 0.319767,
		42.409084, 28.358753, 20.928125>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.252651, 29.241905, 21.083290>,  <42.741882, 28.932463, 20.704288>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.252651, 29.241905, 21.083290> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.263454, 28.861305, 21.205875>,  <42.269936, 28.632946, 21.279427>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<42.263454, 28.861305, 21.205875>,  <42.252651, 29.241905, 21.083290>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.263454, 28.861305, 21.205875> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470822, 0.258332, 0.843559,
		-0.881815, -0.167074, -0.441009,
		0.027010, -0.951499, 0.306463,
		42.271557, 28.575855, 21.297813>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.536507, 29.014744, 21.187346>,  <42.252651, 29.241905, 21.083290>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.536507, 29.014744, 21.187346> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765774, 28.777063, 21.413055>,  <41.903336, 28.634457, 21.548481>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.765774, 28.777063, 21.413055>,  <41.536507, 29.014744, 21.187346>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.765774, 28.777063, 21.413055> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.520489, 0.267869, 0.810763,
		-0.632907, -0.758402, -0.155741,
		0.573167, -0.594199, 0.564276,
		41.937725, 28.598804, 21.582338>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.070679, 28.752724, 21.668184>,  <41.536507, 29.014744, 21.187346>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.070679, 28.752724, 21.668184> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416710, 28.678070, 21.854433>,  <41.624329, 28.633278, 21.966183>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.416710, 28.678070, 21.854433>,  <41.070679, 28.752724, 21.668184>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.416710, 28.678070, 21.854433> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.431079, 0.198085, 0.880303,
		-0.256527, -0.962253, 0.090905,
		0.865081, -0.186634, 0.465621,
		41.676235, 28.622080, 21.994120>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.934303, 28.186892, 22.073446>,  <41.070679, 28.752724, 21.668184>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.934303, 28.186892, 22.073446> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240952, 28.408892, 22.202608>,  <41.424942, 28.542091, 22.280106>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240952, 28.408892, 22.202608>,  <40.934303, 28.186892, 22.073446>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240952, 28.408892, 22.202608> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485811, 0.172515, 0.856870,
		0.419859, -0.813764, 0.401880,
		0.766620, 0.555002, 0.322903,
		41.470936, 28.575392, 22.299479>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.035858, 27.940838, 22.814413>,  <40.934303, 28.186892, 22.073446>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.035858, 27.940838, 22.814413> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240852, 28.283632, 22.792774>,  <41.363850, 28.489309, 22.779791>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.240852, 28.283632, 22.792774>,  <41.035858, 27.940838, 22.814413>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.240852, 28.283632, 22.792774> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.287239, 0.230461, 0.929721,
		0.809228, -0.460932, 0.364269,
		0.512488, 0.856989, -0.054098,
		41.394600, 28.540730, 22.776545>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.360680, 28.040403, 23.498327>,  <41.035858, 27.940838, 22.814413>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.360680, 28.040403, 23.498327> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.324947, 28.391880, 23.310743>,  <41.303509, 28.602766, 23.198193>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.324947, 28.391880, 23.310743>,  <41.360680, 28.040403, 23.498327>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324947, 28.391880, 23.310743> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.432082, 0.390038, 0.813127,
		0.897399, 0.275268, 0.344823,
		-0.089334, 0.878691, -0.468958,
		41.298145, 28.655487, 23.170055>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.833714, 28.453730, 23.798344>,  <41.360680, 28.040403, 23.498327>, 0.130000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.833714, 28.453730, 23.798344> 0.250000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551613, 28.681000, 23.628731>,  <41.382355, 28.817362, 23.526964>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
cylinder {
	<41.551613, 28.681000, 23.628731>,  <41.833714, 28.453730, 23.798344>, 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.551613, 28.681000, 23.628731> 0.100000
	pigment { color rgbt <0,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.304362, 0.297535, 0.904896,
		0.640302, 0.767237, -0.036906,
		-0.705250, 0.568173, -0.424030,
		41.340038, 28.851452, 23.501522>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 3

// nucleotide -1

// particle -1
sphere {
	<42.272758, 29.909327, 29.210125> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055267, 30.150774, 28.976889>,  <41.924770, 30.295643, 28.836946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.055267, 30.150774, 28.976889>,  <42.272758, 29.909327, 29.210125>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.055267, 30.150774, 28.976889> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.514997, 0.308613, 0.799710,
		0.662672, 0.735119, 0.143060,
		-0.543732, 0.603621, -0.583093,
		41.892147, 30.331860, 28.801960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.358620, 30.583675, 29.478994>,  <42.272758, 29.909327, 29.210125>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.358620, 30.583675, 29.478994> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010529, 30.588186, 29.281988>,  <41.801674, 30.590893, 29.163784>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<42.010529, 30.588186, 29.281988>,  <42.358620, 30.583675, 29.478994>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.010529, 30.588186, 29.281988> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.393173, 0.586486, 0.708131,
		0.296840, 0.809881, -0.505944,
		-0.870231, 0.011278, -0.492515,
		41.749458, 30.591570, 29.134233>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.095612, 31.293554, 29.496695>,  <42.358620, 30.583675, 29.478994>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.095612, 31.293554, 29.496695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.783871, 31.057777, 29.411692>,  <41.596825, 30.916311, 29.360689>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.783871, 31.057777, 29.411692>,  <42.095612, 31.293554, 29.496695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783871, 31.057777, 29.411692> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577353, 0.543787, 0.609064,
		-0.243449, 0.597371, -0.764120,
		-0.779356, -0.589443, -0.212510,
		41.550064, 30.880945, 29.347939>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.513821, 31.715534, 29.655695>,  <42.095612, 31.293554, 29.496695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.513821, 31.715534, 29.655695> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324120, 31.380423, 29.547464>,  <41.210297, 31.179356, 29.482525>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<41.324120, 31.380423, 29.547464>,  <41.513821, 31.715534, 29.655695>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.324120, 31.380423, 29.547464> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860993, 0.377202, 0.341189,
		-0.183778, 0.394776, -0.900210,
		-0.474254, -0.837777, -0.270577,
		41.181843, 31.129089, 29.466291>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.931324, 31.921797, 29.175440>,  <41.513821, 31.715534, 29.655695>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.931324, 31.921797, 29.175440> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.875896, 31.590601, 29.392782>,  <40.842640, 31.391884, 29.523188>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.875896, 31.590601, 29.392782>,  <40.931324, 31.921797, 29.175440>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.875896, 31.590601, 29.392782> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807152, 0.412328, 0.422482,
		-0.573851, -0.380030, -0.725446,
		-0.138565, -0.827987, 0.543357,
		40.834328, 31.342205, 29.555790>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.242424, 31.850723, 29.221638>,  <40.931324, 31.921797, 29.175440>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.242424, 31.850723, 29.221638> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364380, 31.587523, 29.497049>,  <40.437553, 31.429602, 29.662296>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.364380, 31.587523, 29.497049>,  <40.242424, 31.850723, 29.221638>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.364380, 31.587523, 29.497049> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712440, 0.322198, 0.623392,
		-0.632037, -0.680603, -0.370553,
		0.304891, -0.658003, 0.688530,
		40.455849, 31.390121, 29.703608>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.777164, 31.394815, 29.241655>,  <40.242424, 31.850723, 29.221638>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.777164, 31.394815, 29.241655> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951939, 31.385529, 29.601332>,  <40.056805, 31.379957, 29.817139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.951939, 31.385529, 29.601332>,  <39.777164, 31.394815, 29.241655>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.951939, 31.385529, 29.601332> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822810, 0.393570, 0.409984,
		-0.363413, -0.919002, 0.152863,
		0.436938, -0.023216, 0.899192,
		40.083019, 31.378563, 29.871090>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.273376, 31.230904, 29.646351>,  <39.777164, 31.394815, 29.241655>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.273376, 31.230904, 29.646351> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544044, 31.333647, 29.922363>,  <39.706444, 31.395292, 30.087971>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.544044, 31.333647, 29.922363>,  <39.273376, 31.230904, 29.646351>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.544044, 31.333647, 29.922363> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.723843, 0.403641, 0.559576,
		-0.134795, -0.878123, 0.459055,
		0.676669, 0.256856, 0.690032,
		39.747044, 31.410704, 30.129374>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.010227, 31.063210, 30.245079>,  <39.273376, 31.230904, 29.646351>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.010227, 31.063210, 30.245079> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270386, 31.343578, 30.362173>,  <39.426479, 31.511799, 30.432430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.270386, 31.343578, 30.362173>,  <39.010227, 31.063210, 30.245079>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.270386, 31.343578, 30.362173> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.712259, 0.428834, 0.555687,
		0.263957, -0.569921, 0.778149,
		0.650395, 0.700921, 0.292738,
		39.465504, 31.553854, 30.449993>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.795906, 31.270531, 30.952137>,  <39.010227, 31.063210, 30.245079>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.795906, 31.270531, 30.952137> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008190, 31.580854, 30.815630>,  <39.135559, 31.767050, 30.733727>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.008190, 31.580854, 30.815630>,  <38.795906, 31.270531, 30.952137>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.008190, 31.580854, 30.815630> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.605174, 0.628768, 0.488277,
		0.593387, -0.052611, 0.803196,
		0.530713, 0.775811, -0.341264,
		39.167404, 31.813599, 30.713249>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.075539, 31.627348, 31.457674>,  <38.795906, 31.270531, 30.952137>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.075539, 31.627348, 31.457674> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083267, 31.908749, 31.173502>,  <39.087906, 32.077591, 31.002998>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.083267, 31.908749, 31.173502>,  <39.075539, 31.627348, 31.457674>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.083267, 31.908749, 31.173502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.507351, 0.619179, 0.599344,
		0.861523, 0.348856, 0.368887,
		0.019323, 0.703503, -0.710429,
		39.089066, 32.119801, 30.960373>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.181431, 32.140610, 31.832779>,  <39.075539, 31.627348, 31.457674>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.181431, 32.140610, 31.832779> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096809, 32.295853, 31.473976>,  <39.046036, 32.389000, 31.258696>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096809, 32.295853, 31.473976>,  <39.181431, 32.140610, 31.832779>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096809, 32.295853, 31.473976> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645299, 0.633835, 0.426432,
		0.734054, 0.669049, 0.116356,
		-0.211553, 0.388108, -0.897005,
		39.033344, 32.412285, 31.204874>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.362869, 32.902130, 31.922939>,  <39.181431, 32.140610, 31.832779>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.362869, 32.902130, 31.922939> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096157, 32.821102, 31.636061>,  <38.936131, 32.772488, 31.463934>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.096157, 32.821102, 31.636061>,  <39.362869, 32.902130, 31.922939>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.096157, 32.821102, 31.636061> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.639347, 0.649967, 0.410827,
		0.382934, 0.732468, -0.562896,
		-0.666782, -0.202567, -0.717195,
		38.896122, 32.760334, 31.420902>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.190121, 33.524033, 31.644230>,  <39.362869, 32.902130, 31.922939>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.190121, 33.524033, 31.644230> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880577, 33.275120, 31.597044>,  <38.694851, 33.125774, 31.568733>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.880577, 33.275120, 31.597044>,  <39.190121, 33.524033, 31.644230>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.880577, 33.275120, 31.597044> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.632115, 0.747137, 0.205468,
		-0.039724, 0.233569, -0.971529,
		-0.773856, -0.622280, -0.117963,
		38.648422, 33.088436, 31.561655>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.661419, 33.918106, 31.625078>,  <39.190121, 33.524033, 31.644230>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.661419, 33.918106, 31.625078> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.733112, 34.298927, 31.525900>,  <38.776131, 34.527420, 31.466393>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.733112, 34.298927, 31.525900>,  <38.661419, 33.918106, 31.625078>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.733112, 34.298927, 31.525900> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.443237, -0.303147, -0.843589,
		-0.878303, 0.041303, -0.476318,
		0.179237, 0.952048, -0.247948,
		38.786884, 34.584541, 31.451515>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.387890, 34.005802, 30.883945>,  <38.661419, 33.918106, 31.625078>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.387890, 34.005802, 30.883945> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629196, 34.320751, 30.934710>,  <38.773979, 34.509720, 30.965168>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.629196, 34.320751, 30.934710>,  <38.387890, 34.005802, 30.883945>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.629196, 34.320751, 30.934710> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.328991, -0.100726, -0.938946,
		-0.726521, 0.608189, -0.319804,
		0.603269, 0.787376, 0.126909,
		38.810177, 34.556965, 30.972782>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.334778, 34.465572, 30.296366>,  <38.387890, 34.005802, 30.883945>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.334778, 34.465572, 30.296366> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697563, 34.578522, 30.421387>,  <38.915234, 34.646290, 30.496399>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.697563, 34.578522, 30.421387>,  <38.334778, 34.465572, 30.296366>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.697563, 34.578522, 30.421387> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.308056, 0.061407, -0.949384,
		-0.287273, 0.957337, -0.031293,
		0.906960, 0.282373, 0.312554,
		38.969650, 34.663235, 30.515152>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.493736, 34.958580, 29.824684>,  <38.334778, 34.465572, 30.296366>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.493736, 34.958580, 29.824684> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824978, 34.840363, 30.015221>,  <39.023724, 34.769432, 30.129543>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.824978, 34.840363, 30.015221>,  <38.493736, 34.958580, 29.824684>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.824978, 34.840363, 30.015221> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.480225, -0.064357, -0.874781,
		0.289189, 0.953160, 0.088631,
		0.828103, -0.295540, 0.476343,
		39.073410, 34.751701, 30.158123>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.967617, 35.424595, 29.591736>,  <38.493736, 34.958580, 29.824684>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.967617, 35.424595, 29.591736> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151474, 35.092644, 29.718250>,  <39.261787, 34.893475, 29.794159>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.151474, 35.092644, 29.718250>,  <38.967617, 35.424595, 29.591736>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.151474, 35.092644, 29.718250> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.516862, -0.039641, -0.855150,
		0.722204, 0.556542, 0.410709,
		0.459646, -0.829874, 0.316284,
		39.289368, 34.843681, 29.813135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.648674, 35.589508, 29.588095>,  <38.967617, 35.424595, 29.591736>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.648674, 35.589508, 29.588095> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619038, 35.190727, 29.578302>,  <39.601257, 34.951458, 29.572426>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.619038, 35.190727, 29.578302>,  <39.648674, 35.589508, 29.588095>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.619038, 35.190727, 29.578302> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450472, -0.011553, -0.892716,
		0.889711, -0.077167, 0.449954,
		-0.074087, -0.996951, -0.024483,
		39.596813, 34.891644, 29.570957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.322979, 35.312637, 29.673946>,  <39.648674, 35.589508, 29.588095>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.322979, 35.312637, 29.673946> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.119045, 35.009258, 29.511555>,  <39.996685, 34.827229, 29.414120>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.119045, 35.009258, 29.511555>,  <40.322979, 35.312637, 29.673946>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.119045, 35.009258, 29.511555> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.464208, 0.154769, -0.872100,
		0.724278, -0.633087, 0.273172,
		-0.509836, -0.758451, -0.405980,
		39.966095, 34.781723, 29.389761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.816395, 35.016808, 29.306652>,  <40.322979, 35.312637, 29.673946>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.816395, 35.016808, 29.306652> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485764, 34.863449, 29.141840>,  <40.287384, 34.771435, 29.042952>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.485764, 34.863449, 29.141840>,  <40.816395, 35.016808, 29.306652>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.485764, 34.863449, 29.141840> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.486380, -0.118236, -0.865711,
		0.283196, -0.915983, 0.284209,
		-0.826580, -0.383399, -0.412032,
		40.237789, 34.748428, 29.018230>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.003227, 34.356190, 29.101961>,  <40.816395, 35.016808, 29.306652>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.003227, 34.356190, 29.101961> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694496, 34.473022, 28.876053>,  <40.509258, 34.543121, 28.740507>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.694496, 34.473022, 28.876053>,  <41.003227, 34.356190, 29.101961>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.694496, 34.473022, 28.876053> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.523840, -0.211334, -0.825185,
		-0.360374, -0.932753, 0.010111,
		-0.771830, 0.292078, -0.564773,
		40.462948, 34.560646, 28.706621>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.852310, 33.879364, 28.686405>,  <41.003227, 34.356190, 29.101961>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.852310, 33.879364, 28.686405> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659420, 34.165150, 28.483624>,  <40.543686, 34.336620, 28.361956>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.659420, 34.165150, 28.483624>,  <40.852310, 33.879364, 28.686405>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.659420, 34.165150, 28.483624> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288854, -0.416647, -0.861957,
		-0.827055, -0.562095, -0.005456,
		-0.482228, 0.714461, -0.506953,
		40.514751, 34.379486, 28.331537>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.650234, 33.541782, 28.022184>,  <40.852310, 33.879364, 28.686405>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.650234, 33.541782, 28.022184> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565670, 33.928677, 27.965956>,  <40.514931, 34.160812, 27.932219>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.565670, 33.928677, 27.965956>,  <40.650234, 33.541782, 28.022184>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.565670, 33.928677, 27.965956> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.378265, -0.051645, -0.924256,
		-0.901232, -0.248574, -0.354952,
		-0.211415, 0.967235, -0.140571,
		40.502247, 34.218845, 27.923784>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.118137, 33.677971, 27.437744>,  <40.650234, 33.541782, 28.022184>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.118137, 33.677971, 27.437744> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303818, 34.029987, 27.477829>,  <40.415226, 34.241199, 27.501881>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.303818, 34.029987, 27.477829>,  <40.118137, 33.677971, 27.437744>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.303818, 34.029987, 27.477829> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.366334, -0.087746, -0.926337,
		-0.806424, 0.466716, -0.363121,
		0.464199, 0.880044, 0.100213,
		40.443077, 34.293999, 27.507893>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.905453, 34.056835, 26.953743>,  <40.118137, 33.677971, 27.437744>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.905453, 34.056835, 26.953743> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259365, 34.219139, 27.045410>,  <40.471714, 34.316521, 27.100410>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.259365, 34.219139, 27.045410>,  <39.905453, 34.056835, 26.953743>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.259365, 34.219139, 27.045410> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.275776, -0.059496, -0.959379,
		-0.375643, 0.912041, -0.164540,
		0.884782, 0.405760, 0.229170,
		40.524799, 34.340866, 27.114161>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.125797, 34.628513, 26.445953>,  <39.905453, 34.056835, 26.953743>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.125797, 34.628513, 26.445953> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470974, 34.507889, 26.608137>,  <40.678078, 34.435513, 26.705448>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<40.470974, 34.507889, 26.608137>,  <40.125797, 34.628513, 26.445953>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.470974, 34.507889, 26.608137> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.319813, -0.295302, -0.900287,
		0.391226, 0.906563, -0.158384,
		0.862938, -0.301562, 0.405461,
		40.729855, 34.417419, 26.729774>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.776913, 35.094475, 26.164724>,  <40.125797, 34.628513, 26.445953>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.776913, 35.094475, 26.164724> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490471, 35.194572, 25.904087>,  <39.318607, 35.254631, 25.747704>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.490471, 35.194572, 25.904087>,  <39.776913, 35.094475, 26.164724>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.490471, 35.194572, 25.904087> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.584181, 0.296040, 0.755707,
		0.382009, 0.921812, -0.065807,
		-0.716101, 0.250244, -0.651595,
		39.275639, 35.269646, 25.708609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.625378, 35.811035, 26.291256>,  <39.776913, 35.094475, 26.164724>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.625378, 35.811035, 26.291256> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318081, 35.648365, 26.093502>,  <39.133701, 35.550762, 25.974850>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<39.318081, 35.648365, 26.093502>,  <39.625378, 35.811035, 26.291256>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.318081, 35.648365, 26.093502> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.620638, 0.283896, 0.730898,
		-0.156885, 0.868341, -0.470500,
		-0.768242, -0.406677, -0.494387,
		39.087608, 35.526363, 25.945187>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.146236, 36.292183, 26.309044>,  <39.625378, 35.811035, 26.291256>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.146236, 36.292183, 26.309044> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925671, 35.984489, 26.179911>,  <38.793331, 35.799873, 26.102430>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.925671, 35.984489, 26.179911>,  <39.146236, 36.292183, 26.309044>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.925671, 35.984489, 26.179911> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.798841, 0.375359, 0.470063,
		-0.240411, 0.517091, -0.821474,
		-0.551413, -0.769235, -0.322833,
		38.760246, 35.753719, 26.083061>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.530037, 36.661423, 26.048929>,  <39.146236, 36.292183, 26.309044>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.530037, 36.661423, 26.048929> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455799, 36.275963, 26.125801>,  <38.411255, 36.044685, 26.171925>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<38.455799, 36.275963, 26.125801>,  <38.530037, 36.661423, 26.048929>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<38.455799, 36.275963, 26.125801> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.824072, 0.259172, 0.503722,
		-0.535219, -0.064881, -0.842218,
		-0.185597, -0.963650, 0.192180,
		38.400120, 35.986870, 26.183455>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.842468, 36.553341, 25.870975>,  <38.530037, 36.661423, 26.048929>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.842468, 36.553341, 25.870975> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.922588, 36.258949, 26.129652>,  <37.970661, 36.082314, 26.284859>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.922588, 36.258949, 26.129652>,  <37.842468, 36.553341, 25.870975>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.922588, 36.258949, 26.129652> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.807245, 0.250065, 0.534624,
		-0.555188, -0.629125, -0.544029,
		0.200303, -0.735982, 0.646691,
		37.982677, 36.038155, 26.323660>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.307629, 36.137745, 25.905611>,  <37.842468, 36.553341, 25.870975>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.307629, 36.137745, 25.905611> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494255, 36.063774, 26.251587>,  <37.606232, 36.019390, 26.459173>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.494255, 36.063774, 26.251587>,  <37.307629, 36.137745, 25.905611>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.494255, 36.063774, 26.251587> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.847486, 0.186422, 0.497005,
		-0.253154, -0.964909, -0.069746,
		0.466562, -0.184928, 0.864940,
		37.634224, 36.008297, 26.511068>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.804764, 35.799046, 26.266523>,  <37.307629, 36.137745, 25.905611>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.804764, 35.799046, 26.266523> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068718, 35.853477, 26.562099>,  <37.227089, 35.886135, 26.739445>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<37.068718, 35.853477, 26.562099>,  <36.804764, 35.799046, 26.266523>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<37.068718, 35.853477, 26.562099> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.751305, 0.132150, 0.646589,
		-0.009661, -0.981844, 0.189444,
		0.659884, 0.136084, 0.738941,
		37.266682, 35.894302, 26.783783>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.723293, 35.355610, 26.885536>,  <36.804764, 35.799046, 26.266523>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.723293, 35.355610, 26.885536> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910122, 35.674606, 27.038300>,  <37.022221, 35.866005, 27.129957>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.910122, 35.674606, 27.038300>,  <36.723293, 35.355610, 26.885536>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.910122, 35.674606, 27.038300> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.677979, 0.045736, 0.733657,
		0.567616, -0.601598, 0.562043,
		0.467072, 0.797489, 0.381911,
		37.050243, 35.913853, 27.152872>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.704994, 35.357010, 27.664825>,  <36.723293, 35.355610, 26.885536>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.704994, 35.357010, 27.664825> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.779903, 35.739532, 27.575022>,  <36.824848, 35.969048, 27.521139>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.779903, 35.739532, 27.575022>,  <36.704994, 35.357010, 27.664825>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.779903, 35.739532, 27.575022> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704575, 0.290028, 0.647656,
		0.684472, 0.036894, 0.728105,
		0.187276, 0.956307, -0.224511,
		36.836086, 36.026424, 27.507668>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.807911, 35.729431, 28.282030>,  <36.704994, 35.357010, 27.664825>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.807911, 35.729431, 28.282030> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.688549, 36.022820, 28.037746>,  <36.616932, 36.198853, 27.891176>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.688549, 36.022820, 28.037746>,  <36.807911, 35.729431, 28.282030>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.688549, 36.022820, 28.037746> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.739237, 0.227128, 0.633989,
		0.603725, 0.640646, 0.474436,
		-0.298405, 0.733475, -0.610711,
		36.599030, 36.242863, 27.854532>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.536774, 36.282665, 28.739134>,  <36.807911, 35.729431, 28.282030>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.536774, 36.282665, 28.739134> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355854, 36.351616, 28.389112>,  <36.247303, 36.392986, 28.179100>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<36.355854, 36.351616, 28.389112>,  <36.536774, 36.282665, 28.739134>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<36.355854, 36.351616, 28.389112> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.839697, 0.248347, 0.482942,
		0.300563, 0.953211, 0.032417,
		-0.452295, 0.172375, -0.875052,
		36.220165, 36.403328, 28.126596>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.094620, 36.844879, 28.830439>,  <36.536774, 36.282665, 28.739134>, 0.130000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.094620, 36.844879, 28.830439> 0.250000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927338, 36.689175, 28.502151>,  <35.826969, 36.595753, 28.305180>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
cylinder {
	<35.927338, 36.689175, 28.502151>,  <36.094620, 36.844879, 28.830439>, 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}

// particle -1
sphere {
	<35.927338, 36.689175, 28.502151> 0.100000
	pigment { color rgbt <1,1,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.902857, 0.277365, 0.328510,
		0.099760, 0.878375, -0.467447,
		-0.418208, -0.389265, -0.820716,
		35.801876, 36.572395, 28.255936>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 4

// nucleotide -1

// particle -1
sphere {
	<41.289059, 34.794739, 22.669106> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935780, 34.614529, 22.616976>,  <40.723812, 34.506405, 22.585697>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.935780, 34.614529, 22.616976>,  <41.289059, 34.794739, 22.669106>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.935780, 34.614529, 22.616976> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.360126, 0.473461, 0.803831,
		-0.300440, 0.756878, -0.580407,
		-0.883202, -0.450522, -0.130324,
		40.670818, 34.479370, 22.577879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.814419, 35.307491, 22.838911>,  <41.289059, 34.794739, 22.669106>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.814419, 35.307491, 22.838911> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599354, 34.970226, 22.838322>,  <40.470314, 34.767868, 22.837969>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.599354, 34.970226, 22.838322>,  <40.814419, 35.307491, 22.838911>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.599354, 34.970226, 22.838322> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.511502, 0.324783, 0.795538,
		-0.670286, 0.428486, -0.605902,
		-0.537663, -0.843158, -0.001474,
		40.438053, 34.717278, 22.837879>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.183430, 35.599304, 22.864048>,  <40.814419, 35.307491, 22.838911>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.183430, 35.599304, 22.864048> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177567, 35.221119, 22.994204>,  <40.174049, 34.994205, 23.072296>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.177567, 35.221119, 22.994204>,  <40.183430, 35.599304, 22.864048>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.177567, 35.221119, 22.994204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.504307, 0.287990, 0.814086,
		-0.863400, -0.152161, -0.481027,
		-0.014660, -0.945468, 0.325387,
		40.173168, 34.937477, 23.091820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.468441, 35.412720, 22.874216>,  <40.183430, 35.599304, 22.864048>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.468441, 35.412720, 22.874216> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685749, 35.185337, 23.121349>,  <39.816135, 35.048908, 23.269629>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.685749, 35.185337, 23.121349>,  <39.468441, 35.412720, 22.874216>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.685749, 35.185337, 23.121349> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.558390, 0.304888, 0.771521,
		-0.626944, -0.764135, -0.151783,
		0.543270, -0.568455, 0.617833,
		39.848728, 35.014801, 23.306700>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.004429, 35.288067, 23.385002>,  <39.468441, 35.412720, 22.874216>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.004429, 35.288067, 23.385002> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345928, 35.166847, 23.554369>,  <39.550827, 35.094116, 23.655989>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.345928, 35.166847, 23.554369>,  <39.004429, 35.288067, 23.385002>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.345928, 35.166847, 23.554369> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.405695, 0.122583, 0.905751,
		-0.326390, -0.945058, -0.018291,
		0.853745, -0.303049, 0.423415,
		39.602051, 35.075932, 23.681393>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.808960, 34.730915, 23.919941>,  <39.004429, 35.288067, 23.385002>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.808960, 34.730915, 23.919941> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173031, 34.875519, 24.000832>,  <39.391472, 34.962280, 24.049366>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.173031, 34.875519, 24.000832>,  <38.808960, 34.730915, 23.919941>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.173031, 34.875519, 24.000832> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221157, 0.011297, 0.975173,
		0.350249, -0.932301, 0.090232,
		0.910174, 0.361508, 0.202228,
		39.446083, 34.983971, 24.061501>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.983601, 34.328247, 24.474209>,  <38.808960, 34.730915, 23.919941>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.983601, 34.328247, 24.474209> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236443, 34.638138, 24.480383>,  <39.388149, 34.824074, 24.484087>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.236443, 34.638138, 24.480383>,  <38.983601, 34.328247, 24.474209>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.236443, 34.638138, 24.480383> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.213380, 0.154881, 0.964614,
		0.744926, -0.613029, 0.263213,
		0.632103, 0.774730, 0.015433,
		39.426075, 34.870556, 24.485012>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.442829, 34.231091, 25.035933>,  <38.983601, 34.328247, 24.474209>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.442829, 34.231091, 25.035933> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441097, 34.622715, 24.954525>,  <39.440060, 34.857689, 24.905680>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.441097, 34.622715, 24.954525>,  <39.442829, 34.231091, 25.035933>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.441097, 34.622715, 24.954525> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.253212, 0.195815, 0.947386,
		0.967401, 0.055636, 0.247063,
		-0.004330, 0.979061, -0.203520,
		39.439796, 34.916435, 24.893469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.709072, 34.476879, 25.695251>,  <39.442829, 34.231091, 25.035933>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.709072, 34.476879, 25.695251> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545231, 34.770771, 25.478956>,  <39.446926, 34.947105, 25.349180>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.545231, 34.770771, 25.478956>,  <39.709072, 34.476879, 25.695251>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.545231, 34.770771, 25.478956> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.466819, 0.340448, 0.816196,
		0.783779, 0.586739, 0.203540,
		-0.409599, 0.734733, -0.540737,
		39.422352, 34.991192, 25.316734>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.515659, 34.489769, 25.845758>,  <39.709072, 34.476879, 25.695251>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.515659, 34.489769, 25.845758> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766747, 34.338291, 26.117805>,  <40.917397, 34.247402, 26.281034>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.766747, 34.338291, 26.117805>,  <40.515659, 34.489769, 25.845758>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.766747, 34.338291, 26.117805> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.476154, -0.504398, -0.720319,
		0.615835, 0.775996, -0.136298,
		0.627713, -0.378699, 0.680120,
		40.955059, 34.224682, 26.321842>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.204414, 34.601807, 25.630848>,  <40.515659, 34.489769, 25.845758>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.204414, 34.601807, 25.630848> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243389, 34.283783, 25.870310>,  <41.266773, 34.092968, 26.013987>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.243389, 34.283783, 25.870310>,  <41.204414, 34.601807, 25.630848>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.243389, 34.283783, 25.870310> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.510881, -0.476263, -0.715663,
		0.854112, 0.375571, 0.359777,
		0.097434, -0.795060, 0.598654,
		41.272617, 34.045265, 26.049906>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.921768, 34.272293, 25.446695>,  <41.204414, 34.601807, 25.630848>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.921768, 34.272293, 25.446695> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719555, 33.988491, 25.643080>,  <41.598225, 33.818211, 25.760910>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.719555, 33.988491, 25.643080>,  <41.921768, 34.272293, 25.446695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.719555, 33.988491, 25.643080> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.470693, -0.703680, -0.532243,
		0.723106, -0.037976, 0.689692,
		-0.505535, -0.709501, 0.490960,
		41.567894, 33.775642, 25.790367>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.445545, 33.929451, 25.802050>,  <41.921768, 34.272293, 25.446695>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.445545, 33.929451, 25.802050> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121117, 33.701065, 25.751204>,  <41.926460, 33.564034, 25.720695>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.121117, 33.701065, 25.751204>,  <42.445545, 33.929451, 25.802050>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.121117, 33.701065, 25.751204> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.532982, -0.631828, -0.562781,
		0.241013, -0.524207, 0.816774,
		-0.811075, -0.570964, -0.127114,
		41.877792, 33.529778, 25.713070>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.674957, 33.302696, 25.942980>,  <42.445545, 33.929451, 25.802050>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.674957, 33.302696, 25.942980> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337631, 33.250732, 25.734388>,  <42.135235, 33.219555, 25.609234>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.337631, 33.250732, 25.734388>,  <42.674957, 33.302696, 25.942980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.337631, 33.250732, 25.734388> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.507877, -0.509935, -0.694282,
		-0.175724, -0.850346, 0.496016,
		-0.843316, -0.129913, -0.521479,
		42.084637, 33.211758, 25.577944>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.566376, 32.574734, 25.903751>,  <42.674957, 33.302696, 25.942980>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.566376, 32.574734, 25.903751> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366055, 32.752850, 25.606857>,  <42.245861, 32.859718, 25.428720>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.366055, 32.752850, 25.606857>,  <42.566376, 32.574734, 25.903751>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.366055, 32.752850, 25.606857> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.373420, -0.662463, -0.649385,
		-0.780865, -0.602382, 0.165487,
		-0.500807, 0.445286, -0.742235,
		42.215813, 32.886436, 25.384188>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.193863, 32.047279, 25.590988>,  <42.566376, 32.574734, 25.903751>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.193863, 32.047279, 25.590988> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217205, 32.342617, 25.322233>,  <42.231213, 32.519821, 25.160980>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.217205, 32.342617, 25.322233>,  <42.193863, 32.047279, 25.590988>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.217205, 32.342617, 25.322233> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.231060, -0.664751, -0.710434,
		-0.971188, -0.113787, -0.209397,
		0.058359, 0.738349, -0.671890,
		42.234715, 32.564121, 25.120667>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.824986, 31.848368, 24.976742>,  <42.193863, 32.047279, 25.590988>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.824986, 31.848368, 24.976742> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057598, 32.134892, 24.822485>,  <42.197166, 32.306805, 24.729931>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.057598, 32.134892, 24.822485>,  <41.824986, 31.848368, 24.976742>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.057598, 32.134892, 24.822485> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.136220, -0.553084, -0.821914,
		-0.802036, 0.425440, -0.419213,
		0.581535, 0.716309, -0.385640,
		42.232059, 32.349785, 24.706793>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.658905, 31.888126, 24.243196>,  <41.824986, 31.848368, 24.976742>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.658905, 31.888126, 24.243196> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020924, 32.049252, 24.297808>,  <42.238132, 32.145927, 24.330574>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.020924, 32.049252, 24.297808>,  <41.658905, 31.888126, 24.243196>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.020924, 32.049252, 24.297808> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.349374, -0.521028, -0.778760,
		-0.242563, 0.752509, -0.612285,
		0.905042, 0.402815, 0.136526,
		42.292435, 32.170097, 24.338766>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.699471, 32.144951, 23.612728>,  <41.658905, 31.888126, 24.243196>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.699471, 32.144951, 23.612728> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065071, 32.138180, 23.774872>,  <42.284431, 32.134117, 23.872158>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.065071, 32.138180, 23.774872>,  <41.699471, 32.144951, 23.612728>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.065071, 32.138180, 23.774872> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.361610, -0.419046, -0.832850,
		0.183960, 0.907807, -0.376888,
		0.914000, -0.016925, 0.405360,
		42.339272, 32.133102, 23.896481>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.119343, 32.366436, 23.061888>,  <41.699471, 32.144951, 23.612728>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.119343, 32.366436, 23.061888> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389103, 32.181900, 23.292486>,  <42.550961, 32.071178, 23.430845>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.389103, 32.181900, 23.292486>,  <42.119343, 32.366436, 23.061888>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.389103, 32.181900, 23.292486> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.522781, -0.253031, -0.814049,
		0.521426, 0.850376, 0.070536,
		0.674400, -0.461341, 0.576497,
		42.591423, 32.043499, 23.465435>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.780277, 32.549595, 22.775459>,  <42.119343, 32.366436, 23.061888>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.780277, 32.549595, 22.775459> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865986, 32.225471, 22.993626>,  <42.917412, 32.030998, 23.124525>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.865986, 32.225471, 22.993626>,  <42.780277, 32.549595, 22.775459>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.865986, 32.225471, 22.993626> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662851, -0.289505, -0.690518,
		0.717436, 0.509491, 0.475083,
		0.214274, -0.810312, 0.545418,
		42.930267, 31.982378, 23.157251>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.450451, 32.480118, 22.758499>,  <42.780277, 32.549595, 22.775459>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.450451, 32.480118, 22.758499> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313732, 32.113476, 22.841463>,  <43.231701, 31.893492, 22.891241>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.313732, 32.113476, 22.841463>,  <43.450451, 32.480118, 22.758499>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.313732, 32.113476, 22.841463> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638470, -0.388433, -0.664437,
		0.689588, -0.094676, 0.717986,
		-0.341796, -0.916600, 0.207411,
		43.211193, 31.838495, 22.903687>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.993259, 32.131783, 23.013374>,  <43.450451, 32.480118, 22.758499>, 0.130000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.993259, 32.131783, 23.013374> 0.250000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725510, 31.864212, 22.884085>,  <43.564861, 31.703671, 22.806511>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.725510, 31.864212, 22.884085>,  <43.993259, 32.131783, 23.013374>, 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.725510, 31.864212, 22.884085> 0.100000
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.722743, -0.485609, -0.491758,
		0.171989, -0.562780, 0.808517,
		-0.669374, -0.668927, -0.323226,
		43.524696, 31.663534, 22.787117>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 5

// nucleotide -1

// particle -1
sphere {
	<39.435589, 29.601028, 20.344654> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711155, 29.888411, 20.306257>,  <39.876495, 30.060841, 20.283218>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.711155, 29.888411, 20.306257>,  <39.435589, 29.601028, 20.344654>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.711155, 29.888411, 20.306257> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.020975, 0.152138, 0.988137,
		0.724536, -0.678731, 0.119881,
		0.688918, 0.718455, -0.095993,
		39.917831, 30.103947, 20.277460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.981888, 29.460566, 20.815928>,  <39.435589, 29.601028, 20.344654>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.981888, 29.460566, 20.815928> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983143, 29.855227, 20.750803>,  <39.983898, 30.092024, 20.711729>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.983143, 29.855227, 20.750803>,  <39.981888, 29.460566, 20.815928>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.983143, 29.855227, 20.750803> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.113514, 0.162110, 0.980222,
		0.993531, 0.015402, 0.112508,
		0.003142, 0.986652, -0.162810,
		39.984085, 30.151222, 20.701960>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.227768, 29.787182, 21.384249>,  <39.981888, 29.460566, 20.815928>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.227768, 29.787182, 21.384249> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070198, 30.122322, 21.233080>,  <39.975655, 30.323406, 21.142380>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.070198, 30.122322, 21.233080>,  <40.227768, 29.787182, 21.384249>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.070198, 30.122322, 21.233080> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.263014, 0.291220, 0.919790,
		0.880707, 0.461729, 0.105647,
		-0.393927, 0.837853, -0.377921,
		39.952019, 30.373678, 21.119703>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349617, 30.238146, 21.883751>,  <40.227768, 29.787182, 21.384249>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349617, 30.238146, 21.883751> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083256, 30.441330, 21.665190>,  <39.923439, 30.563240, 21.534054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.083256, 30.441330, 21.665190>,  <40.349617, 30.238146, 21.883751>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.083256, 30.441330, 21.665190> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.471782, 0.280643, 0.835860,
		0.577928, 0.814380, 0.052767,
		-0.665898, 0.507962, -0.546401,
		39.883488, 30.593718, 21.501270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.192242, 30.792246, 22.258663>,  <40.349617, 30.238146, 21.883751>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.192242, 30.792246, 22.258663> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876617, 30.771509, 22.013815>,  <39.687241, 30.759068, 21.866905>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.876617, 30.771509, 22.013815>,  <40.192242, 30.792246, 22.258663>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.876617, 30.771509, 22.013815> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.592515, 0.327296, 0.736073,
		0.162186, 0.943499, -0.288974,
		-0.789064, -0.051841, -0.612120,
		39.639900, 30.755957, 21.830179>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.759716, 31.484066, 22.297571>,  <40.192242, 30.792246, 22.258663>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.759716, 31.484066, 22.297571> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.513950, 31.184233, 22.199087>,  <39.366489, 31.004333, 22.139997>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.513950, 31.184233, 22.199087>,  <39.759716, 31.484066, 22.297571>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.513950, 31.184233, 22.199087> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.537145, 0.168834, 0.826420,
		-0.577902, 0.640015, -0.506369,
		-0.614414, -0.749584, -0.246211,
		39.329628, 30.959358, 22.125223>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.132267, 31.785782, 22.454411>,  <39.759716, 31.484066, 22.297571>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.132267, 31.785782, 22.454411> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034172, 31.400217, 22.412968>,  <38.975315, 31.168879, 22.388102>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.034172, 31.400217, 22.412968>,  <39.132267, 31.785782, 22.454411>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.034172, 31.400217, 22.412968> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.680705, 0.095109, 0.726357,
		-0.690290, 0.248655, -0.679464,
		-0.245235, -0.963911, -0.103608,
		38.960602, 31.111044, 22.381886>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.421524, 31.794863, 22.300520>,  <39.132267, 31.785782, 22.454411>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.421524, 31.794863, 22.300520> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498188, 31.432438, 22.451422>,  <38.544186, 31.214983, 22.541962>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.498188, 31.432438, 22.451422>,  <38.421524, 31.794863, 22.300520>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.498188, 31.432438, 22.451422> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.710867, 0.136873, 0.689880,
		-0.676709, -0.400399, -0.617856,
		0.191660, -0.906061, 0.377253,
		38.555687, 31.160620, 22.564598>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.797428, 31.502428, 22.506779>,  <38.421524, 31.794863, 22.300520>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.797428, 31.502428, 22.506779> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059700, 31.295145, 22.726431>,  <38.217064, 31.170774, 22.858223>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.059700, 31.295145, 22.726431>,  <37.797428, 31.502428, 22.506779>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.059700, 31.295145, 22.726431> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.646185, -0.008938, 0.763128,
		-0.390551, -0.855208, -0.340719,
		0.655679, -0.518208, 0.549132,
		38.256405, 31.139683, 22.891171>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.384342, 30.991745, 22.846874>,  <37.797428, 31.502428, 22.506779>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.384342, 30.991745, 22.846874> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724133, 31.030731, 23.054293>,  <37.928005, 31.054123, 23.178743>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.724133, 31.030731, 23.054293>,  <37.384342, 30.991745, 22.846874>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.724133, 31.030731, 23.054293> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.516852, -0.043893, 0.854949,
		0.106093, -0.994270, 0.013091,
		0.849475, 0.097470, 0.518548,
		37.978973, 31.059971, 23.209858>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.287178, 30.488323, 23.439445>,  <37.384342, 30.991745, 22.846874>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.287178, 30.488323, 23.439445> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592567, 30.724764, 23.543522>,  <37.775803, 30.866629, 23.605968>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.592567, 30.724764, 23.543522>,  <37.287178, 30.488323, 23.439445>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.592567, 30.724764, 23.543522> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.379019, 0.083885, 0.921579,
		0.522920, -0.802224, 0.288083,
		0.763478, 0.591101, 0.260193,
		37.821609, 30.902094, 23.621580>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.575665, 30.260492, 24.126801>,  <37.287178, 30.488323, 23.439445>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.575665, 30.260492, 24.126801> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697327, 30.638206, 24.076492>,  <37.770325, 30.864834, 24.046307>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.697327, 30.638206, 24.076492>,  <37.575665, 30.260492, 24.126801>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.697327, 30.638206, 24.076492> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.290100, 0.217568, 0.931937,
		0.907377, -0.246965, 0.340111,
		0.304153, 0.944284, -0.125772,
		37.788574, 30.921492, 24.038761>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.772144, 30.464233, 24.774897>,  <37.575665, 30.260492, 24.126801>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.772144, 30.464233, 24.774897> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.682819, 30.815006, 24.604664>,  <37.629223, 31.025471, 24.502525>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.682819, 30.815006, 24.604664>,  <37.772144, 30.464233, 24.774897>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.682819, 30.815006, 24.604664> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.485334, 0.278605, 0.828752,
		0.845329, 0.391621, 0.363389,
		-0.223315, 0.876933, -0.425580,
		37.615826, 31.078087, 24.476990>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.919739, 30.970345, 25.322100>,  <37.772144, 30.464233, 24.774897>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.919739, 30.970345, 25.322100> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666447, 31.137012, 25.061209>,  <37.514469, 31.237013, 24.904675>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<37.666447, 31.137012, 25.061209>,  <37.919739, 30.970345, 25.322100>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<37.666447, 31.137012, 25.061209> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.666278, 0.135318, 0.733323,
		0.393812, 0.898930, 0.191930,
		-0.633235, 0.416670, -0.652227,
		37.476475, 31.262014, 24.865541>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.715576, 31.169703, 25.374159>,  <37.919739, 30.970345, 25.322100>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.715576, 31.169703, 25.374159> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.781418, 30.983732, 25.722124>,  <38.820923, 30.872150, 25.930902>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<38.781418, 30.983732, 25.722124>,  <38.715576, 31.169703, 25.374159>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<38.781418, 30.983732, 25.722124> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.707084, -0.559283, -0.432706,
		0.687704, 0.686328, 0.236680,
		0.164607, -0.464927, 0.869913,
		38.830799, 30.844254, 25.983097>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.478008, 31.242132, 25.476976>,  <38.715576, 31.169703, 25.374159>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.478008, 31.242132, 25.476976> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.320599, 30.925072, 25.663242>,  <39.226151, 30.734837, 25.775002>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.320599, 30.925072, 25.663242>,  <39.478008, 31.242132, 25.476976>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.320599, 30.925072, 25.663242> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.691989, -0.588874, -0.417586,
		0.605217, 0.157902, 0.780243,
		-0.393527, -0.792650, 0.465663,
		39.202541, 30.687277, 25.802940>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.056610, 30.929728, 25.772404>,  <39.478008, 31.242132, 25.476976>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.056610, 30.929728, 25.772404> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764187, 30.663439, 25.712576>,  <39.588734, 30.503666, 25.676680>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<39.764187, 30.663439, 25.712576>,  <40.056610, 30.929728, 25.772404>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<39.764187, 30.663439, 25.712576> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.648905, -0.610593, -0.453980,
		0.210896, -0.428943, 0.878368,
		-0.731057, -0.665720, -0.149572,
		39.544868, 30.463722, 25.667704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.349766, 30.344593, 26.069546>,  <40.056610, 30.929728, 25.772404>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.349766, 30.344593, 26.069546> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.058239, 30.242477, 25.815409>,  <39.883324, 30.181208, 25.662926>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.058239, 30.242477, 25.815409>,  <40.349766, 30.344593, 26.069546>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.058239, 30.242477, 25.815409> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.651168, -0.545286, -0.527867,
		-0.211685, -0.798431, 0.563647,
		-0.728814, -0.255287, -0.635342,
		39.839596, 30.165892, 25.624805>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.467632, 29.671072, 26.043718>,  <40.349766, 30.344593, 26.069546>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.467632, 29.671072, 26.043718> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249992, 29.757477, 25.719423>,  <40.119408, 29.809320, 25.524847>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.249992, 29.757477, 25.719423>,  <40.467632, 29.671072, 26.043718>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.249992, 29.757477, 25.719423> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.590032, -0.588475, -0.552774,
		-0.596507, -0.779124, 0.192731,
		-0.544097, 0.216016, -0.810738,
		40.086761, 29.822281, 25.476202>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.533272, 29.063885, 25.741695>,  <40.467632, 29.671072, 26.043718>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.533272, 29.063885, 25.741695> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402756, 29.307259, 25.452326>,  <40.324444, 29.453283, 25.278704>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.402756, 29.307259, 25.452326>,  <40.533272, 29.063885, 25.741695>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.402756, 29.307259, 25.452326> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.526513, -0.518618, -0.673661,
		-0.785058, -0.600703, -0.151127,
		-0.326293, 0.608434, -0.723423,
		40.304867, 29.489788, 25.235298>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.478836, 28.688629, 25.114283>,  <40.533272, 29.063885, 25.741695>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.478836, 28.688629, 25.114283> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487320, 29.064413, 24.977482>,  <40.492409, 29.289883, 24.895401>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.487320, 29.064413, 24.977482>,  <40.478836, 28.688629, 25.114283>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.487320, 29.064413, 24.977482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.444080, -0.315337, -0.838663,
		-0.895736, -0.134088, -0.423883,
		0.021211, 0.939459, -0.342004,
		40.493683, 29.346251, 24.874880>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.280228, 28.655987, 24.482538>,  <40.478836, 28.688629, 25.114283>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.280228, 28.655987, 24.482538> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.455414, 29.015455, 24.472910>,  <40.560524, 29.231136, 24.467133>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.455414, 29.015455, 24.472910>,  <40.280228, 28.655987, 24.482538>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.455414, 29.015455, 24.472910> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.118186, -0.084099, -0.989424,
		-0.891191, 0.430486, -0.143043,
		0.437963, 0.898671, -0.024071,
		40.586803, 29.285057, 24.465689>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.100296, 28.940224, 23.860435>,  <40.280228, 28.655987, 24.482538>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.100296, 28.940224, 23.860435> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438751, 29.127523, 23.962248>,  <40.641827, 29.239902, 24.023336>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.438751, 29.127523, 23.962248>,  <40.100296, 28.940224, 23.860435>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.438751, 29.127523, 23.962248> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.326979, -0.078953, -0.941728,
		-0.420867, 0.880062, -0.219913,
		0.846142, 0.468249, 0.254533,
		40.692593, 29.267998, 24.038609>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.178856, 29.335882, 23.335682>,  <40.100296, 28.940224, 23.860435>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.178856, 29.335882, 23.335682> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538857, 29.303869, 23.507074>,  <40.754856, 29.284662, 23.609909>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.538857, 29.303869, 23.507074>,  <40.178856, 29.335882, 23.335682>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.538857, 29.303869, 23.507074> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410872, -0.172483, -0.895228,
		0.145553, 0.981756, -0.122351,
		0.899999, -0.080033, 0.428482,
		40.808857, 29.279860, 23.635618>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.576408, 29.732666, 22.908112>,  <40.178856, 29.335882, 23.335682>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.576408, 29.732666, 22.908112> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.825569, 29.487724, 23.102848>,  <40.975067, 29.340759, 23.219690>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<40.825569, 29.487724, 23.102848>,  <40.576408, 29.732666, 22.908112>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.825569, 29.487724, 23.102848> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.453818, -0.224057, -0.862466,
		0.637216, 0.758169, 0.138332,
		0.622901, -0.612355, 0.486843,
		41.012440, 29.304018, 23.248901>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.281319, 29.807884, 22.573996>,  <40.576408, 29.732666, 22.908112>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.281319, 29.807884, 22.573996> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272137, 29.453678, 22.759611>,  <41.266628, 29.241154, 22.870981>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.272137, 29.453678, 22.759611>,  <41.281319, 29.807884, 22.573996>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.272137, 29.453678, 22.759611> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.662984, -0.360901, -0.655899,
		0.748282, 0.292592, 0.595369,
		-0.022959, -0.885517, 0.464039,
		41.265247, 29.188023, 22.898823>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.001507, 29.683886, 22.640972>,  <41.281319, 29.807884, 22.573996>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.001507, 29.683886, 22.640972> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.809525, 29.336182, 22.688339>,  <41.694336, 29.127560, 22.716759>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.809525, 29.336182, 22.688339>,  <42.001507, 29.683886, 22.640972>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.809525, 29.336182, 22.688339> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.652726, -0.444021, -0.613836,
		0.586163, -0.217323, 0.780502,
		-0.479960, -0.869262, 0.118416,
		41.665535, 29.075403, 22.723864>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.423416, 29.049822, 23.002607>,  <42.001507, 29.683886, 22.640972>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.423416, 29.049822, 23.002607> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.147327, 28.937508, 22.735847>,  <41.981674, 28.870119, 22.575792>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.147327, 28.937508, 22.735847>,  <42.423416, 29.049822, 23.002607>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.147327, 28.937508, 22.735847> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.708404, -0.450087, -0.543678,
		-0.147506, -0.847692, 0.509568,
		-0.690222, -0.280784, -0.666899,
		41.940262, 28.853273, 22.535778>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.858833, 28.679075, 23.589809>,  <42.423416, 29.049822, 23.002607>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.858833, 28.679075, 23.589809> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.248398, 28.648521, 23.675287>,  <43.482136, 28.630188, 23.726574>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.248398, 28.648521, 23.675287>,  <42.858833, 28.679075, 23.589809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.248398, 28.648521, 23.675287> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.206417, 0.093094, 0.974026,
		-0.094296, -0.992723, 0.074897,
		0.973910, -0.076386, 0.213693,
		43.540569, 28.625605, 23.739395>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.934799, 28.274372, 24.057644>,  <42.858833, 28.679075, 23.589809>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.934799, 28.274372, 24.057644> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.269005, 28.483751, 24.124477>,  <43.469528, 28.609379, 24.164577>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.269005, 28.483751, 24.124477>,  <42.934799, 28.274372, 24.057644>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.269005, 28.483751, 24.124477> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.307211, 0.192902, 0.931885,
		0.455563, -0.829934, 0.321981,
		0.835514, 0.523448, 0.167086,
		43.519661, 28.640785, 24.174603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.231308, 28.056459, 24.715849>,  <42.934799, 28.274372, 24.057644>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.231308, 28.056459, 24.715849> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.412060, 28.409351, 24.662975>,  <43.520512, 28.621086, 24.631250>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.412060, 28.409351, 24.662975>,  <43.231308, 28.056459, 24.715849>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.412060, 28.409351, 24.662975> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.180578, 0.235570, 0.954934,
		0.873609, -0.407649, 0.265762,
		0.451883, 0.882230, -0.132184,
		43.547626, 28.674021, 24.623320>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.785805, 28.190977, 25.342129>,  <43.231308, 28.056459, 24.715849>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.785805, 28.190977, 25.342129> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.686493, 28.541134, 25.176216>,  <43.626907, 28.751228, 25.076668>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.686493, 28.541134, 25.176216>,  <43.785805, 28.190977, 25.342129>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.686493, 28.541134, 25.176216> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.110523, 0.399795, 0.909917,
		0.962362, 0.271758, -0.002511,
		-0.248281, 0.875392, -0.414783,
		43.612007, 28.803751, 25.051781>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.138721, 28.714451, 25.677179>,  <43.785805, 28.190977, 25.342129>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.138721, 28.714451, 25.677179> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.823048, 28.898520, 25.514482>,  <43.633644, 29.008961, 25.416864>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.823048, 28.898520, 25.514482>,  <44.138721, 28.714451, 25.677179>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.823048, 28.898520, 25.514482> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.176884, 0.463909, 0.868044,
		0.588138, 0.756989, -0.284711,
		-0.789180, 0.460169, -0.406742,
		43.586292, 29.036570, 25.392460>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.150352, 29.412603, 25.968338>,  <44.138721, 28.714451, 25.677179>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.150352, 29.412603, 25.968338> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.795223, 29.382721, 25.786703>,  <43.582146, 29.364792, 25.677723>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.795223, 29.382721, 25.786703>,  <44.150352, 29.412603, 25.968338>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.795223, 29.382721, 25.786703> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.417548, 0.545595, 0.726622,
		0.193466, 0.834713, -0.515583,
		-0.887820, -0.074704, -0.454087,
		43.528877, 29.360310, 25.650476>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.857353, 30.166498, 25.942122>,  <44.150352, 29.412603, 25.968338>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.857353, 30.166498, 25.942122> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.573250, 29.885208, 25.954805>,  <43.402786, 29.716434, 25.962416>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.573250, 29.885208, 25.954805>,  <43.857353, 30.166498, 25.942122>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573250, 29.885208, 25.954805> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.492462, 0.528564, 0.691449,
		-0.503006, 0.475492, -0.721729,
		-0.710258, -0.703227, 0.031709,
		43.360172, 29.674240, 25.964317>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.297230, 30.565805, 26.114681>,  <43.857353, 30.166498, 25.942122>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.297230, 30.565805, 26.114681> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.179440, 30.190800, 26.188812>,  <43.108765, 29.965796, 26.233292>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<43.179440, 30.190800, 26.188812>,  <43.297230, 30.565805, 26.114681>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.179440, 30.190800, 26.188812> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.438685, 0.304899, 0.845335,
		-0.849022, 0.167630, -0.501060,
		-0.294476, -0.937516, 0.185330,
		43.091095, 29.909544, 26.244411>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.571812, 30.519485, 26.208479>,  <43.297230, 30.565805, 26.114681>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.571812, 30.519485, 26.208479> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.716454, 30.191893, 26.386696>,  <42.803238, 29.995337, 26.493626>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.716454, 30.191893, 26.386696>,  <42.571812, 30.519485, 26.208479>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.716454, 30.191893, 26.386696> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.517835, 0.220965, 0.826451,
		-0.775299, -0.529567, -0.344196,
		0.361606, -0.818983, 0.445543,
		42.824936, 29.946198, 26.520359>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.004448, 30.252323, 26.485563>,  <42.571812, 30.519485, 26.208479>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.004448, 30.252323, 26.485563> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.283096, 30.075180, 26.711342>,  <42.450283, 29.968895, 26.846809>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.283096, 30.075180, 26.711342>,  <42.004448, 30.252323, 26.485563>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.283096, 30.075180, 26.711342> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.577550, 0.120586, 0.807400,
		-0.425628, -0.888446, -0.171771,
		0.696618, -0.442858, 0.564446,
		42.492081, 29.942322, 26.880676>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.674900, 29.704758, 26.881054>,  <42.004448, 30.252323, 26.485563>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.674900, 29.704758, 26.881054> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.012680, 29.761429, 27.087677>,  <42.215347, 29.795431, 27.211651>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<42.012680, 29.761429, 27.087677>,  <41.674900, 29.704758, 26.881054>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.012680, 29.761429, 27.087677> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.530817, 0.092277, 0.842448,
		0.071674, -0.985605, 0.153119,
		0.844450, 0.141660, 0.516562,
		42.266014, 29.803932, 27.242645>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.657398, 29.329918, 27.471493>,  <41.674900, 29.704758, 26.881054>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.657398, 29.329918, 27.471493> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.932987, 29.610704, 27.543674>,  <42.098339, 29.779177, 27.586983>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.932987, 29.610704, 27.543674>,  <41.657398, 29.329918, 27.471493>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.932987, 29.610704, 27.543674> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.367180, 0.123383, 0.921930,
		0.624898, -0.701442, 0.342755,
		0.688971, 0.701965, 0.180454,
		42.139679, 29.821295, 27.597811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.761467, 29.272324, 28.071629>,  <41.657398, 29.329918, 27.471493>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.761467, 29.272324, 28.071629> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918282, 29.638443, 28.034666>,  <42.012371, 29.858114, 28.012489>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.918282, 29.638443, 28.034666>,  <41.761467, 29.272324, 28.071629>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.918282, 29.638443, 28.034666> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.396850, 0.258880, 0.880620,
		0.829952, -0.308561, 0.464725,
		0.392033, 0.915298, -0.092406,
		42.035892, 29.913033, 28.006945>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.918606, 29.395906, 28.751141>,  <41.761467, 29.272324, 28.071629>, 0.130000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.918606, 29.395906, 28.751141> 0.250000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911636, 29.745451, 28.556793>,  <41.907455, 29.955177, 28.440186>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
cylinder {
	<41.911636, 29.745451, 28.556793>,  <41.918606, 29.395906, 28.751141>, 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.911636, 29.745451, 28.556793> 0.100000
	pigment { color rgbt <1,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.327653, 0.454116, 0.828506,
		0.944638, 0.173632, 0.278409,
		-0.017426, 0.873860, -0.485866,
		41.906410, 30.007608, 28.411034>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 6

// nucleotide -1

// particle -1
sphere {
	<44.319557, 31.370377, 23.147196> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.021412, 31.337734, 22.882538>,  <43.842525, 31.318148, 22.723743>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.021412, 31.337734, 22.882538>,  <44.319557, 31.370377, 23.147196>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.021412, 31.337734, 22.882538> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.564587, -0.605040, -0.561398,
		-0.354508, -0.792001, 0.497049,
		-0.745363, -0.081607, -0.661645,
		43.797802, 31.313251, 22.684044>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.402660, 30.737570, 23.028019>,  <44.319557, 31.370377, 23.147196>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.402660, 30.737570, 23.028019> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.196308, 30.893787, 22.723036>,  <44.072498, 30.987518, 22.540045>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.196308, 30.893787, 22.723036>,  <44.402660, 30.737570, 23.028019>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.196308, 30.893787, 22.723036> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.540964, -0.541613, -0.643438,
		-0.664251, -0.744398, 0.068134,
		-0.515876, 0.390546, -0.762460,
		44.041546, 31.010952, 22.494297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.182751, 30.227936, 22.593678>,  <44.402660, 30.737570, 23.028019>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.182751, 30.227936, 22.593678> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.193565, 30.556423, 22.365688>,  <44.200054, 30.753515, 22.228895>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.193565, 30.556423, 22.365688>,  <44.182751, 30.227936, 22.593678>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.193565, 30.556423, 22.365688> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.520067, -0.498495, -0.693565,
		-0.853697, -0.277671, -0.440567,
		0.027037, 0.821220, -0.569971,
		44.201675, 30.802790, 22.194696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.057423, 30.094217, 21.909388>,  <44.182751, 30.227936, 22.593678>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.057423, 30.094217, 21.909388> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.197124, 30.453615, 21.803009>,  <44.280945, 30.669254, 21.739182>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.197124, 30.453615, 21.803009>,  <44.057423, 30.094217, 21.909388>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.197124, 30.453615, 21.803009> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.646761, -0.436521, -0.625419,
		-0.678027, 0.046426, -0.733569,
		0.349254, 0.898495, -0.265947,
		44.301899, 30.723164, 21.723225>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.036877, 30.133425, 21.191341>,  <44.057423, 30.094217, 21.909388>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.036877, 30.133425, 21.191341> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.301910, 30.402225, 21.323639>,  <44.460930, 30.563505, 21.403017>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.301910, 30.402225, 21.323639>,  <44.036877, 30.133425, 21.191341>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.301910, 30.402225, 21.323639> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.612003, -0.231191, -0.756309,
		-0.431776, 0.703538, -0.564451,
		0.662588, 0.672001, 0.330744,
		44.500687, 30.603827, 21.422863>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.307583, 30.444510, 20.588856>,  <44.036877, 30.133425, 21.191341>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.307583, 30.444510, 20.588856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.569736, 30.523815, 20.880379>,  <44.727028, 30.571400, 21.055292>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.569736, 30.523815, 20.880379>,  <44.307583, 30.444510, 20.588856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.569736, 30.523815, 20.880379> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.729227, -0.417413, -0.542213,
		0.196711, 0.886824, -0.418148,
		0.655388, 0.198265, 0.728806,
		44.766354, 30.583294, 21.099020>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.721226, 30.968756, 20.348965>,  <44.307583, 30.444510, 20.588856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.721226, 30.968756, 20.348965> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.921543, 30.748144, 20.615805>,  <45.041733, 30.615776, 20.775908>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.921543, 30.748144, 20.615805>,  <44.721226, 30.968756, 20.348965>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.921543, 30.748144, 20.615805> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.743810, -0.119940, -0.657541,
		0.442667, 0.825486, 0.350169,
		0.500792, -0.551531, 0.667099,
		45.071781, 30.582685, 20.815935>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.431297, 31.216251, 20.273710>,  <44.721226, 30.968756, 20.348965>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.431297, 31.216251, 20.273710> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.459404, 30.873337, 20.477718>,  <45.476269, 30.667587, 20.600122>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.459404, 30.873337, 20.477718>,  <45.431297, 31.216251, 20.273710>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.459404, 30.873337, 20.477718> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.781468, -0.270457, -0.562281,
		0.619975, 0.438075, 0.650939,
		0.070271, -0.857288, 0.510018,
		45.480484, 30.616150, 20.630724>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.160702, 31.011927, 20.201902>,  <45.431297, 31.216251, 20.273710>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.160702, 31.011927, 20.201902> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.975548, 30.675409, 20.313587>,  <45.864456, 30.473499, 20.380598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.975548, 30.675409, 20.313587>,  <46.160702, 31.011927, 20.201902>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.975548, 30.675409, 20.313587> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.539138, -0.517236, -0.664679,
		0.703609, -0.157137, 0.692995,
		-0.462888, -0.841294, 0.279213,
		45.836681, 30.423021, 20.397350>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.639885, 30.506994, 20.153856>,  <46.160702, 31.011927, 20.201902>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.639885, 30.506994, 20.153856> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.307652, 30.286055, 20.182238>,  <46.108311, 30.153490, 20.199266>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.307652, 30.286055, 20.182238>,  <46.639885, 30.506994, 20.153856>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.307652, 30.286055, 20.182238> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.409763, -0.692453, -0.593803,
		0.377118, -0.464132, 0.801476,
		-0.830587, -0.552349, 0.070953,
		46.058475, 30.120350, 20.203524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.845772, 29.786381, 20.423357>,  <46.639885, 30.506994, 20.153856>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.845772, 29.786381, 20.423357> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.506409, 29.808517, 20.212778>,  <46.302792, 29.821800, 20.086432>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.506409, 29.808517, 20.212778>,  <46.845772, 29.786381, 20.423357>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.506409, 29.808517, 20.212778> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.410319, -0.559572, -0.720081,
		-0.334437, -0.826932, 0.452035,
		-0.848404, 0.055344, -0.526448,
		46.251888, 29.825121, 20.054844>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.804287, 29.112019, 20.178391>,  <46.845772, 29.786381, 20.423357>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.804287, 29.112019, 20.178391> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.574917, 29.341080, 19.944038>,  <46.437294, 29.478516, 19.803427>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.574917, 29.341080, 19.944038>,  <46.804287, 29.112019, 20.178391>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.574917, 29.341080, 19.944038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.428164, -0.400221, -0.810246,
		-0.698471, -0.715467, -0.015693,
		-0.573423, 0.572652, -0.585879,
		46.402889, 29.512875, 19.768274>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.356369, 28.698689, 19.628395>,  <46.804287, 29.112019, 20.178391>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.356369, 28.698689, 19.628395> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.461105, 29.071972, 19.529953>,  <46.523945, 29.295942, 19.470888>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.461105, 29.071972, 19.529953>,  <46.356369, 28.698689, 19.628395>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.461105, 29.071972, 19.529953> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.273105, -0.316222, -0.908525,
		-0.925665, 0.170674, -0.337662,
		0.261838, 0.933206, -0.246104,
		46.539658, 29.351934, 19.456121>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.684196, 28.352543, 19.018747>,  <46.356369, 28.698689, 19.628395>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.684196, 28.352543, 19.018747> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.297844, 28.413486, 19.102516>,  <46.066032, 28.450052, 19.152777>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.297844, 28.413486, 19.102516>,  <46.684196, 28.352543, 19.018747>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.297844, 28.413486, 19.102516> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.249906, -0.760484, -0.599342,
		0.067947, -0.631230, 0.772614,
		-0.965883, 0.152357, 0.209421,
		46.008080, 28.459194, 19.165342>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<46.292953, 27.949366, 18.443729>,  <46.684196, 28.352543, 19.018747>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<46.292953, 27.949366, 18.443729> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.114094, 27.591949, 18.459946>,  <46.006779, 27.377501, 18.469675>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<46.114094, 27.591949, 18.459946>,  <46.292953, 27.949366, 18.443729>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<46.114094, 27.591949, 18.459946> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.549744, 0.310296, 0.775563,
		-0.705576, 0.324505, -0.629967,
		-0.447150, -0.893540, 0.040543,
		45.979950, 27.323887, 18.472109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.563004, 28.019821, 18.512041>,  <46.292953, 27.949366, 18.443729>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.563004, 28.019821, 18.512041> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.621014, 27.649849, 18.652596>,  <45.655819, 27.427866, 18.736929>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.621014, 27.649849, 18.652596>,  <45.563004, 28.019821, 18.512041>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.621014, 27.649849, 18.652596> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.569912, 0.212218, 0.793829,
		-0.808806, -0.315386, -0.496351,
		0.145028, -0.924930, 0.351385,
		45.664520, 27.372370, 18.758011>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.068073, 28.009184, 18.957657>,  <45.563004, 28.019821, 18.512041>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.068073, 28.009184, 18.957657> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.288582, 27.702406, 19.089048>,  <45.420887, 27.518339, 19.167883>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.288582, 27.702406, 19.089048>,  <45.068073, 28.009184, 18.957657>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.288582, 27.702406, 19.089048> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.372523, 0.126024, 0.919426,
		-0.746545, -0.629217, -0.216231,
		0.551269, -0.766944, 0.328480,
		45.453964, 27.472322, 19.187593>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.552563, 27.573320, 19.374800>,  <45.068073, 28.009184, 18.957657>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.552563, 27.573320, 19.374800> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.923546, 27.480358, 19.491968>,  <45.146137, 27.424580, 19.562269>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.923546, 27.480358, 19.491968>,  <44.552563, 27.573320, 19.374800>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.923546, 27.480358, 19.491968> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.308855, -0.034568, 0.950481,
		-0.210775, -0.972004, -0.103841,
		0.927460, -0.232409, 0.292923,
		45.201782, 27.410637, 19.579845>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.581959, 26.990564, 19.850386>,  <44.552563, 27.573320, 19.374800>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.581959, 26.990564, 19.850386> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.913567, 27.197552, 19.935192>,  <45.112530, 27.321745, 19.986076>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.913567, 27.197552, 19.935192>,  <44.581959, 26.990564, 19.850386>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.913567, 27.197552, 19.935192> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.202228, -0.076061, 0.976380,
		0.521372, -0.852315, 0.041590,
		0.829021, 0.517468, 0.212018,
		45.162273, 27.352793, 19.998798>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.731586, 26.638842, 20.463896>,  <44.581959, 26.990564, 19.850386>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.731586, 26.638842, 20.463896> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.987854, 26.945766, 20.475035>,  <45.141613, 27.129921, 20.481718>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.987854, 26.945766, 20.475035>,  <44.731586, 26.638842, 20.463896>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.987854, 26.945766, 20.475035> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.148454, 0.088206, 0.984978,
		0.753330, -0.635178, 0.170421,
		0.640668, 0.767313, 0.027846,
		45.180054, 27.175961, 20.483389>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.961769, 26.647291, 21.148758>,  <44.731586, 26.638842, 20.463896>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.961769, 26.647291, 21.148758> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.033028, 27.018742, 21.018578>,  <45.075783, 27.241611, 20.940470>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.033028, 27.018742, 21.018578>,  <44.961769, 26.647291, 21.148758>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.033028, 27.018742, 21.018578> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.279186, 0.364850, 0.888223,
		0.943567, -0.067375, 0.324257,
		0.178149, 0.928625, -0.325450,
		45.086472, 27.297329, 20.920942>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.335266, 26.937643, 21.730095>,  <44.961769, 26.647291, 21.148758>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.335266, 26.937643, 21.730095> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.193329, 27.236427, 21.505190>,  <45.108166, 27.415697, 21.370247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.193329, 27.236427, 21.505190>,  <45.335266, 26.937643, 21.730095>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.193329, 27.236427, 21.505190> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266782, 0.495494, 0.826628,
		0.896055, 0.443323, 0.023454,
		-0.354842, 0.746961, -0.562261,
		45.086876, 27.460516, 21.336512>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.654755, 27.561575, 21.969713>,  <45.335266, 26.937643, 21.730095>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.654755, 27.561575, 21.969713> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.309685, 27.650366, 21.787937>,  <45.102642, 27.703640, 21.678871>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.309685, 27.650366, 21.787937>,  <45.654755, 27.561575, 21.969713>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.309685, 27.650366, 21.787937> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.292006, 0.515037, 0.805896,
		0.412943, 0.827927, -0.379492,
		-0.862676, 0.221976, -0.454441,
		45.050880, 27.716959, 21.651606>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.547230, 28.249729, 22.067804>,  <45.654755, 27.561575, 21.969713>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.547230, 28.249729, 22.067804> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.178787, 28.100626, 22.022873>,  <44.957722, 28.011164, 21.995914>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<45.178787, 28.100626, 22.022873>,  <45.547230, 28.249729, 22.067804>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<45.178787, 28.100626, 22.022873> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.313383, 0.538733, 0.782022,
		-0.230989, 0.755526, -0.613046,
		-0.921105, -0.372756, -0.112327,
		44.902454, 27.988798, 21.989174>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<45.165543, 28.826698, 22.366711>,  <45.547230, 28.249729, 22.067804>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<45.165543, 28.826698, 22.366711> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.907295, 28.522833, 22.335506>,  <44.752346, 28.340513, 22.316784>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.907295, 28.522833, 22.335506>,  <45.165543, 28.826698, 22.366711>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.907295, 28.522833, 22.335506> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.497554, 0.340952, 0.797616,
		-0.579320, 0.553774, -0.598099,
		-0.645622, -0.759662, -0.078012,
		44.713608, 28.294933, 22.312103>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<44.584705, 29.186714, 22.680763>,  <45.165543, 28.826698, 22.366711>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<44.584705, 29.186714, 22.680763> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.464748, 28.805229, 22.671812>,  <44.392776, 28.576338, 22.666441>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<44.464748, 28.805229, 22.671812>,  <44.584705, 29.186714, 22.680763>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<44.464748, 28.805229, 22.671812> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.588697, 0.166552, 0.791010,
		-0.750668, 0.250390, -0.611394,
		-0.299889, -0.953712, -0.022379,
		44.374783, 28.519115, 22.665098>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.797855, 29.221773, 22.484247>,  <44.584705, 29.186714, 22.680763>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.797855, 29.221773, 22.484247> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.901253, 28.899727, 22.697779>,  <43.963291, 28.706499, 22.825897>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.901253, 28.899727, 22.697779>,  <43.797855, 29.221773, 22.484247>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.901253, 28.899727, 22.697779> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.461981, 0.382288, 0.800269,
		-0.848383, -0.453483, -0.273127,
		0.258495, -0.805114, 0.533827,
		43.978802, 28.658194, 22.857927>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.190430, 29.032833, 22.966116>,  <43.797855, 29.221773, 22.484247>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.190430, 29.032833, 22.966116> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482086, 28.824316, 23.143475>,  <43.657082, 28.699205, 23.249889>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<43.482086, 28.824316, 23.143475>,  <43.190430, 29.032833, 22.966116>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<43.482086, 28.824316, 23.143475> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.344057, 0.280837, 0.895966,
		-0.591584, -0.805843, 0.025416,
		0.729146, -0.521295, 0.443394,
		43.700829, 28.667927, 23.276493>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.819397, 28.460579, 22.515562>,  <43.190430, 29.032833, 22.966116>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.819397, 28.460579, 22.515562> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.453262, 28.468821, 22.354698>,  <42.233582, 28.473764, 22.258181>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.453262, 28.468821, 22.354698>,  <42.819397, 28.460579, 22.515562>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.453262, 28.468821, 22.354698> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.352452, -0.442048, -0.824846,
		-0.194766, -0.896755, 0.397363,
		-0.915338, 0.020601, -0.402159,
		42.178661, 28.475000, 22.234051>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.569469, 27.748940, 22.229321>,  <42.819397, 28.460579, 22.515562>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.569469, 27.748940, 22.229321> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.393291, 28.046080, 22.027655>,  <42.287586, 28.224363, 21.906654>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.393291, 28.046080, 22.027655>,  <42.569469, 27.748940, 22.229321>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.393291, 28.046080, 22.027655> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.298587, -0.408396, -0.862588,
		-0.846672, -0.530460, -0.041929,
		-0.440445, 0.742849, -0.504166,
		42.261158, 28.268934, 21.876406>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.284878, 27.346046, 21.738617>,  <42.569469, 27.748940, 22.229321>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.284878, 27.346046, 21.738617> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.254082, 27.717710, 21.593987>,  <42.235603, 27.940708, 21.507208>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.254082, 27.717710, 21.593987>,  <42.284878, 27.346046, 21.738617>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.254082, 27.717710, 21.593987> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.124010, -0.350911, -0.928161,
		-0.989290, -0.116295, -0.088210,
		-0.076987, 0.929159, -0.361575,
		42.230988, 27.996458, 21.485514>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.758553, 27.311506, 21.290726>,  <42.284878, 27.346046, 21.738617>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.758553, 27.311506, 21.290726> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.967487, 27.637157, 21.189253>,  <42.092850, 27.832548, 21.128370>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.967487, 27.637157, 21.189253>,  <41.758553, 27.311506, 21.290726>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.967487, 27.637157, 21.189253> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.013536, -0.305369, -0.952138,
		-0.852630, 0.493906, -0.170526,
		0.522340, 0.814130, -0.253681,
		42.124187, 27.881397, 21.113148>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.460300, 27.574392, 20.599613>,  <41.758553, 27.311506, 21.290726>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.460300, 27.574392, 20.599613> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.822556, 27.739109, 20.640112>,  <42.039909, 27.837938, 20.664412>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.822556, 27.739109, 20.640112>,  <41.460300, 27.574392, 20.599613>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.822556, 27.739109, 20.640112> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.122627, -0.025751, -0.992119,
		-0.405939, 0.910914, -0.073818,
		0.905636, 0.411792, 0.101249,
		42.094246, 27.862646, 20.670486>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.554993, 28.071243, 20.052252>,  <41.460300, 27.574392, 20.599613>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.554993, 28.071243, 20.052252> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.921524, 27.975439, 20.180609>,  <42.141445, 27.917955, 20.257622>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.921524, 27.975439, 20.180609>,  <41.554993, 28.071243, 20.052252>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.921524, 27.975439, 20.180609> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.252629, -0.275956, -0.927376,
		0.310669, 0.930850, -0.192359,
		0.916331, -0.239512, 0.320891,
		42.196423, 27.903585, 20.276876>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.047138, 28.453268, 19.567293>,  <41.554993, 28.071243, 20.052252>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.047138, 28.453268, 19.567293> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.213318, 28.130917, 19.736038>,  <42.313026, 27.937506, 19.837284>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<42.213318, 28.130917, 19.736038>,  <42.047138, 28.453268, 19.567293>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<42.213318, 28.130917, 19.736038> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.376453, -0.269869, -0.886258,
		0.828062, 0.527004, 0.191259,
		0.415446, -0.805877, 0.421860,
		42.337952, 27.889153, 19.862597>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.954353, 29.094387, 19.099939>,  <42.047138, 28.453268, 19.567293>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.954353, 29.094387, 19.099939> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783897, 29.114639, 18.738644>,  <41.681622, 29.126791, 18.521866>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.783897, 29.114639, 18.738644>,  <41.954353, 29.094387, 19.099939>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.783897, 29.114639, 18.738644> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.689074, 0.628750, 0.360347,
		0.586156, 0.775957, -0.233048,
		-0.426143, 0.050633, -0.903238,
		41.656055, 29.129829, 18.467672>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.875053, 29.809772, 18.925598>,  <41.954353, 29.094387, 19.099939>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.875053, 29.809772, 18.925598> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613483, 29.584431, 18.723604>,  <41.456543, 29.449224, 18.602407>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.613483, 29.584431, 18.723604>,  <41.875053, 29.809772, 18.925598>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.613483, 29.584431, 18.723604> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.756105, 0.463504, 0.462027,
		-0.026223, 0.683954, -0.729054,
		-0.653925, -0.563357, -0.504986,
		41.417305, 29.415424, 18.572109>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.451473, 30.325268, 18.658367>,  <41.875053, 29.809772, 18.925598>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.451473, 30.325268, 18.658367> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.226486, 29.994814, 18.671822>,  <41.091496, 29.796541, 18.679893>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<41.226486, 29.994814, 18.671822>,  <41.451473, 30.325268, 18.658367>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<41.226486, 29.994814, 18.671822> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.740347, 0.521333, 0.424380,
		-0.368131, 0.213797, -0.904859,
		-0.562464, -0.826137, 0.033635,
		41.057747, 29.746973, 18.681911>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.733673, 30.609266, 18.390785>,  <41.451473, 30.325268, 18.658367>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.733673, 30.609266, 18.390785> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.686512, 30.258156, 18.576521>,  <40.658215, 30.047489, 18.687962>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.686512, 30.258156, 18.576521>,  <40.733673, 30.609266, 18.390785>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.686512, 30.258156, 18.576521> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.643016, 0.423814, 0.637897,
		-0.756723, -0.223366, -0.614393,
		-0.117904, -0.877775, 0.464338,
		40.651142, 29.994823, 18.715822>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.965992, 30.499958, 18.557274>,  <40.733673, 30.609266, 18.390785>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.965992, 30.499958, 18.557274> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.187317, 30.273018, 18.801229>,  <40.320110, 30.136854, 18.947603>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<40.187317, 30.273018, 18.801229>,  <39.965992, 30.499958, 18.557274>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<40.187317, 30.273018, 18.801229> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.435993, 0.426618, 0.792406,
		-0.709761, -0.704352, -0.011309,
		0.553308, -0.567350, 0.609889,
		40.353310, 30.102814, 18.984196>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.411163, 30.154171, 19.081663>,  <39.965992, 30.499958, 18.557274>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.411163, 30.154171, 19.081663> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782539, 30.126276, 19.227615>,  <40.005363, 30.109539, 19.315187>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.782539, 30.126276, 19.227615>,  <39.411163, 30.154171, 19.081663>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.782539, 30.126276, 19.227615> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.337212, 0.253875, 0.906551,
		-0.155855, -0.964720, 0.212191,
		0.928438, -0.069737, 0.364883,
		40.061069, 30.105354, 19.337080>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.189735, 30.002102, 19.710781>,  <39.411163, 30.154171, 19.081663>, 0.130000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.189735, 30.002102, 19.710781> 0.250000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.583546, 30.046103, 19.765360>,  <39.819832, 30.072502, 19.798107>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
cylinder {
	<39.583546, 30.046103, 19.765360>,  <39.189735, 30.002102, 19.710781>, 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}

// particle -1
sphere {
	<39.583546, 30.046103, 19.765360> 0.100000
	pigment { color rgbt <1,0.6,0,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.130577, -0.058952, 0.989684,
		0.116911, -0.992181, -0.043676,
		0.984521, 0.110002, 0.136449,
		39.878902, 30.079102, 19.806295>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 7

// nucleotide -1

// particle -1
sphere {
	<43.961071, 31.294737, 17.571997> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.210339, 31.232782, 17.878635>,  <44.359901, 31.195610, 18.062618>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<44.210339, 31.232782, 17.878635>,  <43.961071, 31.294737, 17.571997>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<44.210339, 31.232782, 17.878635> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.696219, 0.336668, 0.633982,
		-0.356282, -0.928798, 0.101969,
		0.623171, -0.154884, 0.766595,
		44.397289, 31.186317, 18.108614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.520035, 31.163204, 18.078136>,  <43.961071, 31.294737, 17.571997>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.520035, 31.163204, 18.078136> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.848621, 31.230761, 18.296007>,  <44.045773, 31.271294, 18.426729>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.848621, 31.230761, 18.296007>,  <43.520035, 31.163204, 18.078136>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.848621, 31.230761, 18.296007> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.546582, 0.505550, 0.667583,
		-0.162613, -0.846106, 0.507604,
		0.821466, 0.168889, 0.544675,
		44.095062, 31.281427, 18.459410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.295376, 30.992561, 18.656206>,  <43.520035, 31.163204, 18.078136>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.295376, 30.992561, 18.656206> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.605618, 31.230160, 18.741629>,  <43.791763, 31.372719, 18.792883>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.605618, 31.230160, 18.741629>,  <43.295376, 30.992561, 18.656206>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.605618, 31.230160, 18.741629> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.506057, 0.382925, 0.772835,
		0.377276, -0.707494, 0.597591,
		0.775609, 0.593988, 0.213564,
		43.838299, 31.408360, 18.805696>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.444874, 30.843941, 19.326860>,  <43.295376, 30.992561, 18.656206>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.444874, 30.843941, 19.326860> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.573990, 31.213236, 19.243490>,  <43.651459, 31.434813, 19.193468>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.573990, 31.213236, 19.243490>,  <43.444874, 30.843941, 19.326860>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.573990, 31.213236, 19.243490> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.501799, 0.353650, 0.789386,
		0.802499, -0.150219, 0.577434,
		0.322790, 0.923237, -0.208424,
		43.670826, 31.490208, 19.180964>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.425896, 31.028784, 19.975649>,  <43.444874, 30.843941, 19.326860>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.425896, 31.028784, 19.975649> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.477589, 31.372862, 19.778322>,  <43.508606, 31.579309, 19.659925>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.477589, 31.372862, 19.778322>,  <43.425896, 31.028784, 19.975649>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.477589, 31.372862, 19.778322> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.623133, 0.457441, 0.634392,
		0.771365, 0.225416, 0.595134,
		0.129237, 0.860195, -0.493318,
		43.516361, 31.630920, 19.630327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.637127, 31.653364, 20.471052>,  <43.425896, 31.028784, 19.975649>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.637127, 31.653364, 20.471052> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.460609, 31.794695, 20.141102>,  <43.354698, 31.879494, 19.943132>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.460609, 31.794695, 20.141102>,  <43.637127, 31.653364, 20.471052>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.460609, 31.794695, 20.141102> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.548292, 0.621516, 0.559548,
		0.710377, 0.699197, -0.080545,
		-0.441295, 0.353328, -0.824875,
		43.328220, 31.900694, 19.893639>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.545464, 32.416908, 20.519831>,  <43.637127, 31.653364, 20.471052>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.545464, 32.416908, 20.519831> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.282333, 32.345928, 20.227045>,  <43.124454, 32.303341, 20.051373>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.282333, 32.345928, 20.227045>,  <43.545464, 32.416908, 20.519831>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.282333, 32.345928, 20.227045> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.622015, 0.675993, 0.395133,
		0.424687, 0.715224, -0.555064,
		-0.657828, -0.177450, -0.731966,
		43.084984, 32.292694, 20.007456>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.358757, 33.023525, 20.367231>,  <43.545464, 32.416908, 20.519831>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.358757, 33.023525, 20.367231> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.059872, 32.807808, 20.211880>,  <42.880543, 32.678379, 20.118668>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.059872, 32.807808, 20.211880>,  <43.358757, 33.023525, 20.367231>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.059872, 32.807808, 20.211880> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.663298, 0.641541, 0.385306,
		0.041370, 0.545517, -0.837078,
		-0.747211, -0.539292, -0.388381,
		42.835709, 32.646019, 20.095366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.913692, 33.551365, 20.028591>,  <43.358757, 33.023525, 20.367231>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.913692, 33.551365, 20.028591> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.709793, 33.210201, 20.073668>,  <42.587452, 33.005501, 20.100714>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.709793, 33.210201, 20.073668>,  <42.913692, 33.551365, 20.028591>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.709793, 33.210201, 20.073668> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.800931, 0.518294, 0.299803,
		-0.314112, 0.062568, -0.947322,
		-0.509749, -0.852911, 0.112690,
		42.556870, 32.954327, 20.107475>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.308674, 33.722408, 19.758554>,  <42.913692, 33.551365, 20.028591>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.308674, 33.722408, 19.758554> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.224560, 33.401234, 19.981649>,  <42.174091, 33.208530, 20.115505>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.224560, 33.401234, 19.981649>,  <42.308674, 33.722408, 19.758554>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.224560, 33.401234, 19.981649> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.885119, 0.398618, 0.240141,
		-0.415142, -0.443165, -0.794520,
		-0.210288, -0.802938, 0.557737,
		42.161472, 33.160351, 20.148970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.669170, 33.498741, 19.495216>,  <42.308674, 33.722408, 19.758554>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.669170, 33.498741, 19.495216> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.740059, 33.371735, 19.867834>,  <41.782593, 33.295528, 20.091404>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.740059, 33.371735, 19.867834>,  <41.669170, 33.498741, 19.495216>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.740059, 33.371735, 19.867834> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.781652, 0.529725, 0.329260,
		-0.598008, -0.786495, -0.154311,
		0.177219, -0.317518, 0.931545,
		41.793224, 33.276478, 20.147297>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.033390, 33.194736, 19.697752>,  <41.669170, 33.498741, 19.495216>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.033390, 33.194736, 19.697752> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230576, 33.287647, 20.033138>,  <41.348888, 33.343395, 20.234371>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.230576, 33.287647, 20.033138>,  <41.033390, 33.194736, 19.697752>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.230576, 33.287647, 20.033138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.822269, 0.439344, 0.361733,
		-0.284352, -0.867769, 0.407580,
		0.492968, 0.232281, 0.838468,
		41.378468, 33.357330, 20.284679>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.573200, 32.646004, 19.855686>,  <41.033390, 33.194736, 19.697752>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.573200, 32.646004, 19.855686> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384632, 32.741592, 19.516119>,  <40.271492, 32.798946, 19.312380>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.384632, 32.741592, 19.516119>,  <40.573200, 32.646004, 19.855686>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.384632, 32.741592, 19.516119> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.764848, -0.368440, -0.528450,
		-0.439056, -0.898414, -0.009084,
		-0.471419, 0.238967, -0.848916,
		40.243206, 32.813282, 19.261444>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.682556, 32.109943, 19.475840>,  <40.573200, 32.646004, 19.855686>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.682556, 32.109943, 19.475840> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.582542, 32.382420, 19.200603>,  <40.522533, 32.545906, 19.035461>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.582542, 32.382420, 19.200603>,  <40.682556, 32.109943, 19.475840>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.582542, 32.382420, 19.200603> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.787315, -0.270614, -0.553989,
		-0.563576, -0.680260, -0.468645,
		-0.250035, 0.681186, -0.688090,
		40.507530, 32.586777, 18.994177>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.973927, 31.828392, 18.898903>,  <40.682556, 32.109943, 19.475840>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.973927, 31.828392, 18.898903> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911724, 32.197002, 18.756575>,  <40.874405, 32.418167, 18.671179>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<40.911724, 32.197002, 18.756575>,  <40.973927, 31.828392, 18.898903>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<40.911724, 32.197002, 18.756575> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.834022, -0.070547, -0.547203,
		-0.529364, -0.381853, -0.757603,
		-0.155504, 0.921527, -0.355819,
		40.865074, 32.473461, 18.649830>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.109871, 31.790455, 18.151205>,  <40.973927, 31.828392, 18.898903>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.109871, 31.790455, 18.151205> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103466, 32.189796, 18.173235>,  <41.099625, 32.429401, 18.186453>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.103466, 32.189796, 18.173235>,  <41.109871, 31.790455, 18.151205>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.103466, 32.189796, 18.173235> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.700328, 0.050513, -0.712032,
		-0.713641, 0.027170, -0.699984,
		-0.016012, 0.998354, 0.055076,
		41.098663, 32.489304, 18.189758>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.869709, 32.069214, 17.421181>,  <41.109871, 31.790455, 18.151205>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.869709, 32.069214, 17.421181> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076641, 32.351501, 17.614811>,  <41.200798, 32.520874, 17.730989>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.076641, 32.351501, 17.614811>,  <40.869709, 32.069214, 17.421181>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.076641, 32.351501, 17.614811> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.630873, 0.067716, -0.772926,
		-0.578251, 0.705245, -0.410190,
		0.517326, 0.705723, 0.484076,
		41.231838, 32.563217, 17.760035>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.890869, 32.667625, 16.916183>,  <40.869709, 32.069214, 17.421181>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.890869, 32.667625, 16.916183> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.209908, 32.708584, 17.153957>,  <41.401333, 32.733158, 17.296621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.209908, 32.708584, 17.153957>,  <40.890869, 32.667625, 16.916183>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.209908, 32.708584, 17.153957> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.573900, 0.174534, -0.800110,
		-0.185679, 0.979312, 0.080441,
		0.797598, 0.102398, 0.594435,
		41.449188, 32.739304, 17.332287>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.272362, 33.211208, 16.639406>,  <40.890869, 32.667625, 16.916183>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.272362, 33.211208, 16.639406> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.532352, 33.015709, 16.872181>,  <41.688347, 32.898407, 17.011847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.532352, 33.015709, 16.872181>,  <41.272362, 33.211208, 16.639406>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.532352, 33.015709, 16.872181> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.663669, -0.007997, -0.747983,
		0.370233, 0.872386, 0.319172,
		0.649977, -0.488753, 0.581936,
		41.727345, 32.869083, 17.046762>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.886879, 33.570587, 16.554382>,  <41.272362, 33.211208, 16.639406>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.886879, 33.570587, 16.554382> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.000465, 33.221527, 16.713301>,  <42.068615, 33.012093, 16.808651>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.000465, 33.221527, 16.713301>,  <41.886879, 33.570587, 16.554382>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.000465, 33.221527, 16.713301> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.465085, -0.236989, -0.852955,
		0.838487, 0.426985, 0.338561,
		0.283964, -0.872651, 0.397297,
		42.085655, 32.959732, 16.832489>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.587578, 33.428986, 16.352806>,  <41.886879, 33.570587, 16.554382>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.587578, 33.428986, 16.352806> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465546, 33.058235, 16.440287>,  <42.392326, 32.835785, 16.492775>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.465546, 33.058235, 16.440287>,  <42.587578, 33.428986, 16.352806>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.465546, 33.058235, 16.440287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.586099, -0.363748, -0.724000,
		0.750609, -0.092697, 0.654212,
		-0.305081, -0.926874, 0.218703,
		42.374020, 32.780174, 16.505898>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.236233, 32.988567, 16.353893>,  <42.587578, 33.428986, 16.352806>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.236233, 32.988567, 16.353893> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.950619, 32.710396, 16.321547>,  <42.779251, 32.543495, 16.302137>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.950619, 32.710396, 16.321547>,  <43.236233, 32.988567, 16.353893>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.950619, 32.710396, 16.321547> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.557186, -0.494524, -0.667076,
		0.423909, -0.521374, 0.740588,
		-0.714034, -0.695425, -0.080869,
		42.736408, 32.501770, 16.297285>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.664761, 32.380440, 16.230396>,  <43.236233, 32.988567, 16.353893>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.664761, 32.380440, 16.230396> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.288376, 32.270245, 16.151705>,  <43.062546, 32.204128, 16.104490>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.288376, 32.270245, 16.151705>,  <43.664761, 32.380440, 16.230396>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.288376, 32.270245, 16.151705> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.337852, -0.727641, -0.596988,
		0.021317, -0.628206, 0.777755,
		-0.940958, -0.275492, -0.196729,
		43.006088, 32.187595, 16.092686>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.586140, 31.654572, 16.442982>,  <43.664761, 32.380440, 16.230396>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.586140, 31.654572, 16.442982> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.303635, 31.745422, 16.174772>,  <43.134132, 31.799932, 16.013847>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.303635, 31.745422, 16.174772>,  <43.586140, 31.654572, 16.442982>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.303635, 31.745422, 16.174772> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.095448, -0.907940, -0.408086,
		-0.701483, -0.352217, 0.619568,
		-0.706266, 0.227129, -0.670523,
		43.091755, 31.813560, 15.973616>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.118801, 31.113045, 16.405899>,  <43.586140, 31.654572, 16.442982>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.118801, 31.113045, 16.405899> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.050854, 31.284004, 16.050714>,  <43.010086, 31.386580, 15.837604>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.050854, 31.284004, 16.050714>,  <43.118801, 31.113045, 16.405899>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.050854, 31.284004, 16.050714> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.061055, -0.894761, -0.442353,
		-0.983574, -0.129355, 0.125894,
		-0.169865, 0.427400, -0.887961,
		42.999893, 31.412224, 15.784327>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.804829, 30.547941, 16.103029>,  <43.118801, 31.113045, 16.405899>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.804829, 30.547941, 16.103029> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.872215, 30.807390, 15.806138>,  <42.912647, 30.963060, 15.628003>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.872215, 30.807390, 15.806138>,  <42.804829, 30.547941, 16.103029>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.872215, 30.807390, 15.806138> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.159662, -0.725093, -0.669887,
		-0.972691, 0.231359, -0.018593,
		0.168466, 0.648624, -0.742230,
		42.922756, 31.001978, 15.583469>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.298706, 30.171797, 16.688538>,  <42.804829, 30.547941, 16.103029>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.298706, 30.171797, 16.688538> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.508652, 29.834749, 16.736729>,  <43.634621, 29.632521, 16.765642>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.508652, 29.834749, 16.736729>,  <43.298706, 30.171797, 16.688538>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.508652, 29.834749, 16.736729> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.704248, -0.350390, 0.617463,
		-0.478071, -0.408929, -0.777319,
		0.524864, -0.842617, 0.120477,
		43.666111, 29.581964, 16.772871>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.941113, 29.661493, 16.396336>,  <43.298706, 30.171797, 16.688538>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.941113, 29.661493, 16.396336> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.160324, 29.489126, 16.683104>,  <43.291851, 29.385706, 16.855164>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.160324, 29.489126, 16.683104>,  <42.941113, 29.661493, 16.396336>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.160324, 29.489126, 16.683104> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.827925, -0.401564, 0.391519,
		0.119178, -0.808120, -0.576835,
		0.548030, -0.430915, 0.716920,
		43.324734, 29.359852, 16.898180>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.489624, 29.072226, 16.515312>,  <42.941113, 29.661493, 16.396336>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.489624, 29.072226, 16.515312> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.738995, 29.102921, 16.826555>,  <42.888618, 29.121338, 17.013302>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.738995, 29.102921, 16.826555>,  <42.489624, 29.072226, 16.515312>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.738995, 29.102921, 16.826555> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.645047, -0.511938, 0.567304,
		0.441877, -0.855588, -0.269655,
		0.623425, 0.076738, 0.778108,
		42.926022, 29.125942, 17.059988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.471836, 28.401737, 16.771528>,  <42.489624, 29.072226, 16.515312>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.471836, 28.401737, 16.771528> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.603645, 28.653715, 17.052835>,  <42.682732, 28.804901, 17.221621>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.603645, 28.653715, 17.052835>,  <42.471836, 28.401737, 16.771528>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.603645, 28.653715, 17.052835> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.773481, -0.247037, 0.583695,
		0.541429, -0.736304, 0.405846,
		0.329518, 0.629943, 0.703270,
		42.702499, 28.842699, 17.263817>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.401657, 28.026264, 17.449898>,  <42.471836, 28.401737, 16.771528>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.401657, 28.026264, 17.449898> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428242, 28.417988, 17.526358>,  <42.444191, 28.653023, 17.572233>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.428242, 28.417988, 17.526358>,  <42.401657, 28.026264, 17.449898>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.428242, 28.417988, 17.526358> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.731918, -0.082352, 0.676398,
		0.678143, -0.184859, 0.711301,
		0.066462, 0.979309, 0.191148,
		42.448181, 28.711781, 17.583702>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.209221, 28.030703, 18.146870>,  <42.401657, 28.026264, 17.449898>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.209221, 28.030703, 18.146870> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.189240, 28.410360, 18.022528>,  <42.177250, 28.638155, 17.947922>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.189240, 28.410360, 18.022528>,  <42.209221, 28.030703, 18.146870>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.189240, 28.410360, 18.022528> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.806219, 0.145387, 0.573476,
		0.589505, 0.279268, 0.757954,
		-0.049956, 0.949143, -0.310857,
		42.174252, 28.695103, 17.929270>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.017590, 28.454189, 18.743998>,  <42.209221, 28.030703, 18.146870>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.017590, 28.454189, 18.743998> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.898643, 28.667871, 18.427467>,  <41.827274, 28.796082, 18.237549>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<41.898643, 28.667871, 18.427467>,  <42.017590, 28.454189, 18.743998>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<41.898643, 28.667871, 18.427467> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.804898, 0.305522, 0.508719,
		0.513528, 0.788214, 0.339128,
		-0.297369, 0.534205, -0.791326,
		41.809433, 28.828133, 18.190069>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.603687, 28.388872, 19.142342>,  <42.017590, 28.454189, 18.743998>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.603687, 28.388872, 19.142342> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.559395, 28.033087, 19.319695>,  <42.532818, 27.819614, 19.426107>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.559395, 28.033087, 19.319695>,  <42.603687, 28.388872, 19.142342>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.559395, 28.033087, 19.319695> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.282248, -0.455903, -0.844090,
		0.952929, 0.031676, 0.301533,
		-0.110732, -0.889466, 0.443384,
		42.526176, 27.766247, 19.452709>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.149681, 28.062952, 19.037090>,  <42.603687, 28.388872, 19.142342>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.149681, 28.062952, 19.037090> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937450, 27.736555, 19.128864>,  <42.810112, 27.540716, 19.183929>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.937450, 27.736555, 19.128864>,  <43.149681, 28.062952, 19.037090>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.937450, 27.736555, 19.128864> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.427327, -0.491264, -0.758980,
		0.732035, -0.304657, 0.609351,
		-0.530581, -0.815992, 0.229435,
		42.778275, 27.491758, 19.197695>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.651382, 27.452843, 19.061222>,  <43.149681, 28.062952, 19.037090>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.651382, 27.452843, 19.061222> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.294182, 27.280369, 19.009642>,  <43.079861, 27.176884, 18.978693>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.294182, 27.280369, 19.009642>,  <43.651382, 27.452843, 19.061222>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.294182, 27.280369, 19.009642> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.395303, -0.614508, -0.682727,
		0.215141, -0.660650, 0.719205,
		-0.893001, -0.431186, -0.128951,
		43.026283, 27.151012, 18.970957>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.802479, 26.687399, 19.092236>,  <43.651382, 27.452843, 19.061222>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.802479, 26.687399, 19.092236> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.445560, 26.722002, 18.915001>,  <43.231411, 26.742764, 18.808661>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.445560, 26.722002, 18.915001>,  <43.802479, 26.687399, 19.092236>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.445560, 26.722002, 18.915001> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.310382, -0.595158, -0.741249,
		-0.327830, -0.798939, 0.504206,
		-0.892295, 0.086507, -0.443087,
		43.177872, 26.747955, 18.782074>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<43.527626, 25.982513, 18.870096>,  <43.802479, 26.687399, 19.092236>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<43.527626, 25.982513, 18.870096> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.316792, 26.237640, 18.645468>,  <43.190289, 26.390717, 18.510691>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.316792, 26.237640, 18.645468>,  <43.527626, 25.982513, 18.870096>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.316792, 26.237640, 18.645468> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.180950, -0.561431, -0.807497,
		-0.830321, -0.527241, 0.180512,
		-0.527091, 0.637818, -0.561572,
		43.158665, 26.428986, 18.476995>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.995464, 25.564634, 18.465122>,  <43.527626, 25.982513, 18.870096>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.995464, 25.564634, 18.465122> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.031883, 25.911299, 18.268915>,  <43.053734, 26.119297, 18.151192>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<43.031883, 25.911299, 18.268915>,  <42.995464, 25.564634, 18.465122>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<43.031883, 25.911299, 18.268915> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.210616, -0.498178, -0.841107,
		-0.973320, -0.026732, -0.227890,
		0.091045, 0.866663, -0.490516,
		43.059196, 26.171297, 18.121759>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.722439, 25.400776, 17.801056>,  <42.995464, 25.564634, 18.465122>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.722439, 25.400776, 17.801056> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.876839, 25.768156, 17.766518>,  <42.969479, 25.988585, 17.745794>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.876839, 25.768156, 17.766518>,  <42.722439, 25.400776, 17.801056>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.876839, 25.768156, 17.766518> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.219595, -0.182388, -0.958391,
		-0.895982, 0.350976, -0.272088,
		0.385998, 0.918450, -0.086344,
		42.992638, 26.043692, 17.740614>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.408474, 25.657570, 17.119425>,  <42.722439, 25.400776, 17.801056>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.408474, 25.657570, 17.119425> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.752476, 25.837919, 17.215012>,  <42.958878, 25.946129, 17.272364>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.752476, 25.837919, 17.215012>,  <42.408474, 25.657570, 17.119425>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.752476, 25.837919, 17.215012> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.296965, -0.061388, -0.952913,
		-0.414974, 0.890474, -0.186688,
		0.860005, 0.450874, 0.238965,
		43.010479, 25.973181, 17.286701>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<42.562458, 26.228970, 16.578638>,  <42.408474, 25.657570, 17.119425>, 0.130000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<42.562458, 26.228970, 16.578638> 0.250000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910591, 26.135975, 16.752287>,  <43.119473, 26.080177, 16.856476>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
cylinder {
	<42.910591, 26.135975, 16.752287>,  <42.562458, 26.228970, 16.578638>, 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}

// particle -1
sphere {
	<42.910591, 26.135975, 16.752287> 0.100000
	pigment { color rgbt <0.56,0,1,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.450116, 0.017943, -0.892790,
		0.199772, 0.972434, 0.120263,
		0.870337, -0.232487, 0.434123,
		43.171692, 26.066229, 16.882524>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
// strand 8

// nucleotide -1

// particle -1
sphere {
	<36.250763, 33.076630, 29.941710> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.635551, 33.111801, 30.045156>,  <36.866425, 33.132904, 30.107224>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.635551, 33.111801, 30.045156>,  <36.250763, 33.076630, 29.941710>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.635551, 33.111801, 30.045156> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.270976, -0.426513, -0.862936,
		0.034429, 0.900198, -0.434118,
		0.961970, 0.087925, 0.258616,
		36.924141, 33.138180, 30.122742>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.630356, 33.395203, 29.361818>,  <36.250763, 33.076630, 29.941710>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.630356, 33.395203, 29.361818> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883533, 33.181053, 29.585520>,  <37.035439, 33.052563, 29.719740>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.883533, 33.181053, 29.585520>,  <36.630356, 33.395203, 29.361818>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.883533, 33.181053, 29.585520> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.362441, -0.433413, -0.825100,
		0.684122, 0.724936, -0.080284,
		0.632940, -0.535371, 0.559254,
		37.073414, 33.020443, 29.753296>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.112106, 33.399143, 28.867809>,  <36.630356, 33.395203, 29.361818>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.112106, 33.399143, 28.867809> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208206, 33.112373, 29.129589>,  <37.265865, 32.940311, 29.286657>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.208206, 33.112373, 29.129589>,  <37.112106, 33.399143, 28.867809>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.208206, 33.112373, 29.129589> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.434680, -0.523370, -0.732897,
		0.867949, 0.460553, 0.185893,
		0.240246, -0.716921, 0.654451,
		37.280281, 32.897297, 29.325924>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.752323, 33.237656, 28.698343>,  <37.112106, 33.399143, 28.867809>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.752323, 33.237656, 28.698343> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668823, 32.902985, 28.900887>,  <37.618721, 32.702183, 29.022411>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.668823, 32.902985, 28.900887>,  <37.752323, 33.237656, 28.698343>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.668823, 32.902985, 28.900887> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.431271, -0.543457, -0.720181,
		0.877740, 0.068038, 0.474281,
		-0.208752, -0.836675, 0.506357,
		37.606197, 32.651981, 29.052794>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.407764, 32.788452, 28.748528>,  <37.752323, 33.237656, 28.698343>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.407764, 32.788452, 28.748528> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103184, 32.538212, 28.816418>,  <37.920433, 32.388069, 28.857153>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.103184, 32.538212, 28.816418>,  <38.407764, 32.788452, 28.748528>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.103184, 32.538212, 28.816418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.340491, -0.608825, -0.716518,
		0.551589, -0.487807, 0.676605,
		-0.761456, -0.625601, 0.169727,
		37.874748, 32.350533, 28.867336>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.784149, 32.214764, 28.703451>,  <38.407764, 32.788452, 28.748528>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.784149, 32.214764, 28.703451> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406109, 32.090981, 28.661472>,  <38.179283, 32.016708, 28.636284>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.406109, 32.090981, 28.661472>,  <38.784149, 32.214764, 28.703451>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.406109, 32.090981, 28.661472> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287639, -0.635444, -0.716571,
		0.155062, -0.707421, 0.689573,
		-0.945103, -0.309462, -0.104949,
		38.122578, 31.998142, 28.629988>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.798943, 31.409969, 28.633959>,  <38.784149, 32.214764, 28.703451>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.798943, 31.409969, 28.633959> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441204, 31.518574, 28.491737>,  <38.226559, 31.583736, 28.406404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.441204, 31.518574, 28.491737>,  <38.798943, 31.409969, 28.633959>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.441204, 31.518574, 28.491737> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.093412, -0.663918, -0.741948,
		-0.437505, -0.696775, 0.568413,
		-0.894351, 0.271509, -0.355555,
		38.172897, 31.600027, 28.385071>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.480255, 30.782812, 28.365705>,  <38.798943, 31.409969, 28.633959>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.480255, 30.782812, 28.365705> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246712, 31.067684, 28.209801>,  <38.106586, 31.238607, 28.116259>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.246712, 31.067684, 28.209801>,  <38.480255, 30.782812, 28.365705>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.246712, 31.067684, 28.209801> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.030558, -0.460467, -0.887151,
		-0.811282, -0.529878, 0.247084,
		-0.583856, 0.712179, -0.389760,
		38.071556, 31.281338, 28.092873>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.944332, 30.442518, 28.018141>,  <38.480255, 30.782812, 28.365705>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.944332, 30.442518, 28.018141> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.983418, 30.790064, 27.824017>,  <38.006870, 30.998590, 27.707542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.983418, 30.790064, 27.824017>,  <37.944332, 30.442518, 28.018141>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.983418, 30.790064, 27.824017> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.088039, -0.478185, -0.873835,
		-0.991313, 0.128115, 0.029767,
		0.097717, 0.868864, -0.485310,
		38.012733, 31.050724, 27.678423>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.518230, 30.411882, 27.458950>,  <37.944332, 30.442518, 28.018141>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.518230, 30.411882, 27.458950> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798817, 30.683365, 27.371952>,  <37.967167, 30.846254, 27.319754>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.798817, 30.683365, 27.371952>,  <37.518230, 30.411882, 27.458950>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.798817, 30.683365, 27.371952> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.107394, -0.402342, -0.909169,
		-0.704566, 0.614393, -0.355118,
		0.701465, 0.678707, -0.217495,
		38.009254, 30.886976, 27.306704>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.292187, 30.758574, 26.930307>,  <37.518230, 30.411882, 27.458950>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.292187, 30.758574, 26.930307> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690647, 30.793346, 26.925798>,  <37.929722, 30.814211, 26.923094>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.690647, 30.793346, 26.925798>,  <37.292187, 30.758574, 26.930307>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.690647, 30.793346, 26.925798> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.029590, -0.454506, -0.890252,
		-0.082514, 0.886491, -0.455329,
		0.996150, 0.086932, -0.011272,
		37.989491, 30.819426, 26.922417>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.437523, 30.904015, 26.211849>,  <37.292187, 30.758574, 26.930307>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.437523, 30.904015, 26.211849> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789139, 30.787949, 26.363155>,  <38.000111, 30.718309, 26.453939>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.789139, 30.787949, 26.363155>,  <37.437523, 30.904015, 26.211849>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.789139, 30.787949, 26.363155> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.220957, -0.455106, -0.862587,
		0.422443, 0.841833, -0.335944,
		0.879045, -0.290165, 0.378266,
		38.052853, 30.700899, 26.476635>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.487823, 31.566666, 25.842375>,  <37.437523, 30.904015, 26.211849>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.487823, 31.566666, 25.842375> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317204, 31.559706, 25.480656>,  <37.214832, 31.555531, 25.263624>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.317204, 31.559706, 25.480656>,  <37.487823, 31.566666, 25.842375>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.317204, 31.559706, 25.480656> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.823353, 0.421299, 0.380260,
		0.374364, 0.906755, -0.194029,
		-0.426546, -0.017399, -0.904298,
		37.189240, 31.554485, 25.209366>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.237755, 32.173847, 25.669081>,  <37.487823, 31.566666, 25.842375>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.237755, 32.173847, 25.669081> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001030, 31.923836, 25.465475>,  <36.858994, 31.773829, 25.343311>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.001030, 31.923836, 25.465475>,  <37.237755, 32.173847, 25.669081>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.001030, 31.923836, 25.465475> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.776384, 0.611796, 0.151440,
		0.216760, 0.484816, -0.847330,
		-0.591814, -0.625027, -0.509016,
		36.823486, 31.736328, 25.312771>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.862839, 32.646317, 25.229013>,  <37.237755, 32.173847, 25.669081>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.862839, 32.646317, 25.229013> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661816, 32.301224, 25.251375>,  <36.541203, 32.094166, 25.264791>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.661816, 32.301224, 25.251375>,  <36.862839, 32.646317, 25.229013>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.661816, 32.301224, 25.251375> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.860631, 0.505380, 0.062492,
		-0.082166, -0.016706, -0.996479,
		-0.502557, -0.862735, 0.055903,
		36.511047, 32.042404, 25.268147>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.223423, 32.738041, 24.840542>,  <36.862839, 32.646317, 25.229013>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.223423, 32.738041, 24.840542> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159725, 32.410351, 25.060909>,  <36.121506, 32.213737, 25.193129>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.159725, 32.410351, 25.060909>,  <36.223423, 32.738041, 24.840542>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.159725, 32.410351, 25.060909> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.978377, 0.205563, 0.022872,
		-0.131986, -0.535363, -0.834246,
		-0.159245, -0.819226, 0.550918,
		36.111950, 32.164581, 25.226185>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.579605, 32.537251, 24.780632>,  <36.223423, 32.738041, 24.840542>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.579605, 32.537251, 24.780632> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647545, 32.352497, 25.128843>,  <35.688309, 32.241646, 25.337770>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.647545, 32.352497, 25.128843>,  <35.579605, 32.537251, 24.780632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.647545, 32.352497, 25.128843> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.925975, 0.227483, 0.301368,
		-0.337226, -0.857273, -0.389052,
		0.169852, -0.461881, 0.870526,
		35.698502, 32.213932, 25.390001>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.950733, 32.132763, 24.844933>,  <35.579605, 32.537251, 24.780632>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.950733, 32.132763, 24.844933> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109837, 32.175247, 25.209461>,  <35.205299, 32.200737, 25.428179>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.109837, 32.175247, 25.209461>,  <34.950733, 32.132763, 24.844933>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.109837, 32.175247, 25.209461> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.846622, 0.425275, 0.319956,
		-0.353579, -0.898810, 0.259080,
		0.397760, 0.106214, 0.911321,
		35.229164, 32.207111, 25.482857>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.481632, 32.039753, 25.296003>,  <34.950733, 32.132763, 24.844933>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.481632, 32.039753, 25.296003> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729778, 32.231220, 25.544525>,  <34.878666, 32.346100, 25.693638>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.729778, 32.231220, 25.544525>,  <34.481632, 32.039753, 25.296003>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.729778, 32.231220, 25.544525> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.783585, 0.412359, 0.464710,
		-0.033757, -0.775135, 0.630894,
		0.620368, 0.478672, 0.621303,
		34.915890, 32.374821, 25.730917>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.217640, 31.888760, 25.969212>,  <34.481632, 32.039753, 25.296003>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.217640, 31.888760, 25.969212> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435825, 32.222538, 26.000631>,  <34.566734, 32.422806, 26.019484>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.435825, 32.222538, 26.000631>,  <34.217640, 31.888760, 25.969212>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.435825, 32.222538, 26.000631> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.737616, 0.433427, 0.517748,
		0.397990, -0.340348, 0.851920,
		0.545460, 0.834448, 0.078547,
		34.599464, 32.472874, 26.024197>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.005352, 32.257084, 26.595037>,  <34.217640, 31.888760, 25.969212>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.005352, 32.257084, 26.595037> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201809, 32.558708, 26.420605>,  <34.319683, 32.739681, 26.315945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.201809, 32.558708, 26.420605>,  <34.005352, 32.257084, 26.595037>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.201809, 32.558708, 26.420605> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.709201, 0.636836, 0.302446,
		0.505775, 0.160725, 0.847561,
		0.491146, 0.754061, -0.436082,
		34.349152, 32.784927, 26.289780>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.046886, 32.811131, 27.120491>,  <34.005352, 32.257084, 26.595037>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.046886, 32.811131, 27.120491> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099785, 32.991524, 26.767418>,  <34.131523, 33.099758, 26.555574>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.099785, 32.991524, 26.767418>,  <34.046886, 32.811131, 27.120491>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.099785, 32.991524, 26.767418> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.660401, 0.704160, 0.260826,
		0.739177, 0.548429, 0.390952,
		0.132248, 0.450981, -0.882681,
		34.139458, 33.126820, 26.502613>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.140072, 33.469261, 27.337084>,  <34.046886, 32.811131, 27.120491>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.140072, 33.469261, 27.337084> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042671, 33.490616, 26.949711>,  <33.984230, 33.503429, 26.717287>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.042671, 33.490616, 26.949711>,  <34.140072, 33.469261, 27.337084>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.042671, 33.490616, 26.949711> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.470391, 0.866693, 0.166055,
		0.848198, 0.495976, -0.185925,
		-0.243499, 0.053390, -0.968431,
		33.969620, 33.506634, 26.659182>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.083183, 34.191689, 27.264688>,  <34.140072, 33.469261, 27.337084>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.083183, 34.191689, 27.264688> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901482, 34.046299, 26.939348>,  <33.792461, 33.959064, 26.744144>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.901482, 34.046299, 26.939348>,  <34.083183, 34.191689, 27.264688>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.901482, 34.046299, 26.939348> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.619692, 0.784832, -0.004628,
		0.640027, 0.501925, -0.581754,
		-0.454255, -0.363470, -0.813352,
		33.765205, 33.937260, 26.695343>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.038567, 34.861752, 26.809919>,  <34.083183, 34.191689, 27.264688>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.038567, 34.861752, 26.809919> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775284, 34.574421, 26.719790>,  <33.617313, 34.402023, 26.665712>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.775284, 34.574421, 26.719790>,  <34.038567, 34.861752, 26.809919>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.775284, 34.574421, 26.719790> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.750425, 0.649975, 0.119982,
		0.060267, 0.248060, -0.966868,
		-0.658203, -0.718331, -0.225322,
		33.577824, 34.358921, 26.652193>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.533474, 35.200123, 26.336016>,  <34.038567, 34.861752, 26.809919>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.533474, 35.200123, 26.336016> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354149, 34.864761, 26.460014>,  <33.246555, 34.663544, 26.534414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.354149, 34.864761, 26.460014>,  <33.533474, 35.200123, 26.336016>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.354149, 34.864761, 26.460014> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.845714, 0.510135, 0.156623,
		-0.289454, -0.191954, -0.937747,
		-0.448314, -0.838401, 0.309999,
		33.219654, 34.613239, 26.553015>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.477962, 35.874271, 26.739964>,  <33.533474, 35.200123, 26.336016>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.477962, 35.874271, 26.739964> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514652, 36.270550, 26.780176>,  <33.536667, 36.508316, 26.804304>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.514652, 36.270550, 26.780176>,  <33.477962, 35.874271, 26.739964>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.514652, 36.270550, 26.780176> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.287017, 0.070372, -0.955337,
		-0.953524, 0.116481, -0.277892,
		0.091723, 0.990697, 0.100534,
		33.542168, 36.567760, 26.810337>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<32.999756, 36.184975, 26.195597>,  <33.477962, 35.874271, 26.739964>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<32.999756, 36.184975, 26.195597> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317722, 36.400566, 26.307035>,  <33.508503, 36.529919, 26.373899>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.317722, 36.400566, 26.307035>,  <32.999756, 36.184975, 26.195597>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.317722, 36.400566, 26.307035> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.315949, 0.024281, -0.948465,
		-0.517963, 0.841972, -0.150987,
		0.794915, 0.538975, 0.278597,
		33.556198, 36.562260, 26.390615>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.147945, 36.786385, 25.690714>,  <32.999756, 36.184975, 26.195597>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.147945, 36.786385, 25.690714> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473938, 36.644005, 25.873627>,  <33.669533, 36.558575, 25.983376>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.473938, 36.644005, 25.873627>,  <33.147945, 36.786385, 25.690714>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.473938, 36.644005, 25.873627> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.399411, -0.226700, -0.888301,
		0.419858, 0.906590, -0.042585,
		0.814979, -0.355951, 0.457284,
		33.718433, 36.537220, 26.010811>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<33.696243, 37.002815, 25.260521>,  <33.147945, 36.786385, 25.690714>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<33.696243, 37.002815, 25.260521> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882881, 36.702404, 25.447392>,  <33.994865, 36.522160, 25.559513>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<33.882881, 36.702404, 25.447392>,  <33.696243, 37.002815, 25.260521>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<33.882881, 36.702404, 25.447392> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.601307, -0.118001, -0.790257,
		0.648630, 0.649643, 0.396538,
		0.466593, -0.751025, 0.467174,
		34.022858, 36.477097, 25.587543>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.392529, 37.088860, 25.207844>,  <33.696243, 37.002815, 25.260521>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.392529, 37.088860, 25.207844> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335590, 36.697323, 25.266640>,  <34.301430, 36.462402, 25.301918>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.335590, 36.697323, 25.266640>,  <34.392529, 37.088860, 25.207844>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.335590, 36.697323, 25.266640> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.544153, -0.201433, -0.814446,
		0.826823, -0.035944, 0.561312,
		-0.142341, -0.978843, 0.146990,
		34.292889, 36.403671, 25.310738>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.023056, 36.763271, 25.140676>,  <34.392529, 37.088860, 25.207844>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.023056, 36.763271, 25.140676> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765087, 36.463547, 25.080534>,  <34.610306, 36.283710, 25.044449>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.765087, 36.463547, 25.080534>,  <35.023056, 36.763271, 25.140676>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.765087, 36.463547, 25.080534> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.498540, -0.263363, -0.825892,
		0.579254, -0.607593, 0.543411,
		-0.644921, -0.749313, -0.150356,
		34.571609, 36.238754, 25.035427>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.418591, 36.196457, 25.041370>,  <35.023056, 36.763271, 25.140676>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.418591, 36.196457, 25.041370> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070255, 36.115929, 24.861988>,  <34.861256, 36.067612, 24.754358>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.070255, 36.115929, 24.861988>,  <35.418591, 36.196457, 25.041370>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.070255, 36.115929, 24.861988> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.490229, -0.288264, -0.822545,
		0.036321, -0.936149, 0.349723,
		-0.870837, -0.201320, -0.448457,
		34.809006, 36.055534, 24.727451>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.529057, 35.568867, 24.671349>,  <35.418591, 36.196457, 25.041370>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.529057, 35.568867, 24.671349> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175133, 35.663937, 24.511038>,  <34.962780, 35.720978, 24.414852>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.175133, 35.663937, 24.511038>,  <35.529057, 35.568867, 24.671349>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.175133, 35.663937, 24.511038> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.293996, -0.382528, -0.875922,
		-0.361490, -0.892852, 0.268590,
		-0.884811, 0.237673, -0.400775,
		34.909691, 35.735241, 24.390804>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.286682, 34.952030, 24.326143>,  <35.529057, 35.568867, 24.671349>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.286682, 34.952030, 24.326143> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089283, 35.259686, 24.163717>,  <34.970844, 35.444279, 24.066261>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.089283, 35.259686, 24.163717>,  <35.286682, 34.952030, 24.326143>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.089283, 35.259686, 24.163717> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.276422, -0.303969, -0.911698,
		-0.824653, -0.562164, -0.062599,
		-0.493496, 0.769138, -0.406064,
		34.941235, 35.490429, 24.041899>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.010303, 34.646915, 23.685900>,  <35.286682, 34.952030, 24.326143>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.010303, 34.646915, 23.685900> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.010391, 35.043190, 23.631433>,  <35.010445, 35.280956, 23.598753>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.010391, 35.043190, 23.631433>,  <35.010303, 34.646915, 23.685900>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.010391, 35.043190, 23.631433> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.288111, -0.130456, -0.948669,
		-0.957597, -0.039023, -0.285456,
		0.000220, 0.990686, -0.136167,
		35.010456, 35.340397, 23.590584>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.575184, 34.746548, 23.099327>,  <35.010303, 34.646915, 23.685900>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.575184, 34.746548, 23.099327> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814548, 35.063622, 23.145895>,  <34.958168, 35.253868, 23.173836>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.814548, 35.063622, 23.145895>,  <34.575184, 34.746548, 23.099327>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.814548, 35.063622, 23.145895> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.294058, -0.082134, -0.952252,
		-0.745276, 0.604070, -0.282246,
		0.598409, 0.792687, 0.116419,
		34.994072, 35.301426, 23.180820>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.450672, 35.012531, 22.474615>,  <34.575184, 34.746548, 23.099327>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.450672, 35.012531, 22.474615> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797333, 35.146973, 22.622101>,  <35.005329, 35.227638, 22.710592>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<34.797333, 35.146973, 22.622101>,  <34.450672, 35.012531, 22.474615>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<34.797333, 35.146973, 22.622101> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.469245, -0.298048, -0.831250,
		-0.169494, 0.893421, -0.416019,
		0.866649, 0.336107, 0.368716,
		35.057327, 35.247807, 22.732716>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<34.876160, 35.199116, 21.899036>,  <34.450672, 35.012531, 22.474615>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<34.876160, 35.199116, 21.899036> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145939, 35.180458, 22.193775>,  <35.307808, 35.169266, 22.370619>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.145939, 35.180458, 22.193775>,  <34.876160, 35.199116, 21.899036>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.145939, 35.180458, 22.193775> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.686997, -0.325954, -0.649453,
		0.270469, 0.944234, -0.187797,
		0.674450, -0.046641, 0.736846,
		35.348274, 35.166466, 22.414829>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<35.508007, 35.540028, 21.717609>,  <34.876160, 35.199116, 21.899036>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<35.508007, 35.540028, 21.717609> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617805, 35.272408, 21.993876>,  <35.683685, 35.111835, 22.159636>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<35.617805, 35.272408, 21.993876>,  <35.508007, 35.540028, 21.717609>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<35.617805, 35.272408, 21.993876> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.620063, -0.425823, -0.658936,
		0.734964, 0.609133, 0.297968,
		0.274498, -0.669053, 0.690665,
		35.700153, 35.071690, 22.201075>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.138950, 35.529682, 21.661055>,  <35.508007, 35.540028, 21.717609>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.138950, 35.529682, 21.661055> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081871, 35.197392, 21.876286>,  <36.047623, 34.998016, 22.005424>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.081871, 35.197392, 21.876286>,  <36.138950, 35.529682, 21.661055>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.081871, 35.197392, 21.876286> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.739394, -0.450871, -0.500011,
		0.657977, 0.326501, 0.678574,
		-0.142695, -0.830730, 0.538076,
		36.039062, 34.948174, 22.037708>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<36.842239, 35.339214, 21.841568>,  <36.138950, 35.529682, 21.661055>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<36.842239, 35.339214, 21.841568> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602528, 35.021366, 21.880445>,  <36.458698, 34.830658, 21.903772>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.602528, 35.021366, 21.880445>,  <36.842239, 35.339214, 21.841568>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.602528, 35.021366, 21.880445> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.642578, -0.549884, -0.533593,
		0.477447, -0.257318, 0.840138,
		-0.599281, -0.794617, 0.097194,
		36.422745, 34.782982, 21.909603>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.223343, 34.764019, 22.127737>,  <36.842239, 35.339214, 21.841568>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.223343, 34.764019, 22.127737> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920048, 34.597099, 21.927361>,  <36.738071, 34.496948, 21.807135>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<36.920048, 34.597099, 21.927361>,  <37.223343, 34.764019, 22.127737>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<36.920048, 34.597099, 21.927361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.638183, -0.632273, -0.439264,
		-0.133428, -0.652758, 0.745724,
		-0.758234, -0.417298, -0.500942,
		36.692577, 34.471909, 21.777079>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.577560, 34.071014, 21.987455>,  <37.223343, 34.764019, 22.127737>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.577560, 34.071014, 21.987455> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242401, 34.089951, 21.769949>,  <37.041306, 34.101315, 21.639446>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.242401, 34.089951, 21.769949>,  <37.577560, 34.071014, 21.987455>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.242401, 34.089951, 21.769949> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.394418, -0.636131, -0.663154,
		-0.377300, -0.770128, 0.514342,
		-0.837902, 0.047342, -0.543764,
		36.991032, 34.104153, 21.606819>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.249653, 33.415409, 21.931293>,  <37.577560, 34.071014, 21.987455>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.249653, 33.415409, 21.931293> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146984, 33.637230, 21.614664>,  <37.085381, 33.770325, 21.424686>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.146984, 33.637230, 21.614664>,  <37.249653, 33.415409, 21.931293>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.146984, 33.637230, 21.614664> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.626628, -0.528063, -0.573138,
		-0.735836, -0.643132, -0.211958,
		-0.256676, 0.554555, -0.791572,
		37.069981, 33.803596, 21.377192>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.483997, 33.016586, 21.331533>,  <37.249653, 33.415409, 21.931293>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.483997, 33.016586, 21.331533> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396233, 33.365665, 21.157061>,  <37.343575, 33.575111, 21.052378>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.396233, 33.365665, 21.157061>,  <37.483997, 33.016586, 21.331533>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.396233, 33.365665, 21.157061> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.569600, -0.248387, -0.783492,
		-0.792095, -0.420358, -0.442590,
		-0.219414, 0.872699, -0.436181,
		37.330410, 33.627476, 21.026207>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.562275, 32.862930, 20.704332>,  <37.483997, 33.016586, 21.331533>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.562275, 32.862930, 20.704332> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562267, 33.261013, 20.665201>,  <37.562263, 33.499863, 20.641722>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.562267, 33.261013, 20.665201>,  <37.562275, 32.862930, 20.704332>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.562267, 33.261013, 20.665201> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.567212, -0.080558, -0.819622,
		-0.823572, -0.055503, -0.564490,
		-0.000017, 0.995203, -0.097827,
		37.562263, 33.559574, 20.635853>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.253613, 33.101818, 20.018507>,  <37.562275, 32.862930, 20.704332>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.253613, 33.101818, 20.018507> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502605, 33.384510, 20.152998>,  <37.652000, 33.554127, 20.233692>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.502605, 33.384510, 20.152998>,  <37.253613, 33.101818, 20.018507>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.502605, 33.384510, 20.152998> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.561938, -0.104579, -0.820542,
		-0.544740, 0.699710, -0.462238,
		0.622482, 0.706731, 0.336225,
		37.689350, 33.596531, 20.253866>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.553490, 33.445015, 19.410404>,  <37.253613, 33.101818, 20.018507>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.553490, 33.445015, 19.410404> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797203, 33.540051, 19.713013>,  <37.943432, 33.597073, 19.894579>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<37.797203, 33.540051, 19.713013>,  <37.553490, 33.445015, 19.410404>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<37.797203, 33.540051, 19.713013> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.788661, -0.082413, -0.609280,
		-0.082413, 0.967862, -0.237593,
		0.609280, 0.237593, 0.756523,
		37.979988, 33.611328, 19.939970>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<37.980137, 33.984955, 19.158907>,  <37.553490, 33.445015, 19.410404>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<37.980137, 33.984955, 19.158907> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181717, 33.811504, 19.457706>,  <38.302666, 33.707436, 19.636986>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.181717, 33.811504, 19.457706>,  <37.980137, 33.984955, 19.158907>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.181717, 33.811504, 19.457706> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.782897, -0.135987, -0.607107,
		0.364838, 0.890774, 0.270952,
		0.503949, -0.433624, 0.746998,
		38.332901, 33.681416, 19.681807>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<38.618507, 34.077988, 18.915014>,  <37.980137, 33.984955, 19.158907>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<38.618507, 34.077988, 18.915014> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.678917, 33.817627, 19.212610>,  <38.715160, 33.661411, 19.391169>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<38.678917, 33.817627, 19.212610>,  <38.618507, 34.077988, 18.915014>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<38.678917, 33.817627, 19.212610> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.902074, -0.217069, -0.373018,
		0.404295, 0.727469, 0.554377,
		0.151021, -0.650899, 0.743992,
		38.724224, 33.622356, 19.435808>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.288868, 34.141315, 19.154266>,  <38.618507, 34.077988, 18.915014>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.288868, 34.141315, 19.154266> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191406, 33.774132, 19.279478>,  <39.132927, 33.553822, 19.354605>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.191406, 33.774132, 19.279478>,  <39.288868, 34.141315, 19.154266>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.191406, 33.774132, 19.279478> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.882017, -0.343954, -0.322090,
		0.403333, 0.197618, 0.893460,
		-0.243659, -0.917956, 0.313030,
		39.118309, 33.498745, 19.373386>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<39.886875, 34.002205, 19.507725>,  <39.288868, 34.141315, 19.154266>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<39.886875, 34.002205, 19.507725> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691097, 33.657112, 19.456905>,  <39.573631, 33.450058, 19.426414>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<39.691097, 33.657112, 19.456905>,  <39.886875, 34.002205, 19.507725>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<39.691097, 33.657112, 19.456905> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.861704, -0.456123, -0.222301,
		0.133836, -0.218282, 0.966665,
		-0.489442, -0.862731, -0.127049,
		39.544266, 33.398293, 19.418791>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.274117, 33.541153, 19.854931>,  <39.886875, 34.002205, 19.507725>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.274117, 33.541153, 19.854931> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068733, 33.347370, 19.571619>,  <39.945503, 33.231102, 19.401632>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.068733, 33.347370, 19.571619>,  <40.274117, 33.541153, 19.854931>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.068733, 33.347370, 19.571619> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <0.841452, -0.446112, -0.304864,
		-0.168280, -0.752521, 0.636706,
		-0.513459, -0.484455, -0.708282,
		39.914696, 33.202034, 19.359135>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.418396, 33.169891, 20.397945>,  <40.274117, 33.541153, 19.854931>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.418396, 33.169891, 20.397945> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.745392, 33.349922, 20.541689>,  <40.941589, 33.457939, 20.627935>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.745392, 33.349922, 20.541689>,  <40.418396, 33.169891, 20.397945>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.745392, 33.349922, 20.541689> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.536544, 0.368335, 0.759243,
		0.209352, -0.813487, 0.542596,
		0.817491, 0.450076, 0.359360,
		40.990639, 33.484947, 20.649496>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.353542, 32.990898, 21.138554>,  <40.418396, 33.169891, 20.397945>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.353542, 32.990898, 21.138554> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.630894, 33.279110, 21.135342>,  <40.797306, 33.452038, 21.133415>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.630894, 33.279110, 21.135342>,  <40.353542, 32.990898, 21.138554>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.630894, 33.279110, 21.135342> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.325930, 0.323548, 0.888305,
		0.642646, -0.613317, 0.459183,
		0.693380, 0.720527, -0.008029,
		40.838909, 33.495270, 21.132933>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<40.725708, 32.931248, 21.754503>,  <40.353542, 32.990898, 21.138554>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<40.725708, 32.931248, 21.754503> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.759434, 33.315205, 21.647541>,  <40.779671, 33.545578, 21.583363>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.759434, 33.315205, 21.647541>,  <40.725708, 32.931248, 21.754503>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.759434, 33.315205, 21.647541> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.260134, 0.280261, 0.924004,
		0.961884, -0.008346, 0.273330,
		0.084315, 0.959888, -0.267407,
		40.784729, 33.603172, 21.567318>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.197601, 33.382702, 22.267765>,  <40.725708, 32.931248, 21.754503>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.197601, 33.382702, 22.267765> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946262, 33.622822, 22.069847>,  <40.795460, 33.766891, 21.951097>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<40.946262, 33.622822, 22.069847>,  <41.197601, 33.382702, 22.267765>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<40.946262, 33.622822, 22.069847> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.266383, 0.431554, 0.861859,
		0.730900, 0.673355, -0.111259,
		-0.628351, 0.600295, -0.494794,
		40.757755, 33.802910, 21.921410>
	pigment { color rgbt <0,1,1,0> }
	no_shadow
}
cylinder {
	<41.429462, 34.088070, 22.548819>,  <41.197601, 33.382702, 22.267765>, 0.130000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// nucleotide -1

// particle -1
sphere {
	<41.429462, 34.088070, 22.548819> 0.250000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.063942, 34.138435, 22.394361>,  <40.844627, 34.168655, 22.301687>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
cylinder {
	<41.063942, 34.138435, 22.394361>,  <41.429462, 34.088070, 22.548819>, 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}

// particle -1
sphere {
	<41.063942, 34.138435, 22.394361> 0.100000
	pigment { color rgbt <0.647,0.165,0.165,0> }
	no_shadow
}
sphere {
	0, 1
	scale<0.080000,0.200000,0.300000>
	matrix <-0.221039, 0.643428, 0.732900,
		0.340740, 0.755080, -0.560134,
		-0.913804, 0.125917, -0.386144,
		40.789803, 34.176212, 22.278519>
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
